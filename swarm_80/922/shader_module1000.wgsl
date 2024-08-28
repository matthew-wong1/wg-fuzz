struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: i32;

var<private> global2: array<u32, 14> = array<u32, 14>(43808u, 0u, 4294967295u, 16518u, 0u, 51093u, 4988u, 1u, 1u, 0u, 83174u, 4294967295u, 4294967295u, 0u);

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-549f, 520f, 991f), 1424f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool) -> vec4<f32> {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_0, -1200f)), _wgslsmith_f_op_f32(f32(-1f) * -616f), global3.b))), _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-879f))))));
    var var_1 = vec3<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_0.b * 1507f), any(vec2<bool>(arg_2, arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-387f)))), _wgslsmith_f_op_f32(max(253f, _wgslsmith_f_op_f32(trunc(274f)))));
    global0 = array<i32, 13>();
    return vec4<f32>(_wgslsmith_f_op_f32(step(1682f, -283f)), _wgslsmith_f_op_f32(ceil(var_0.a.x)), global3.b, var_0.b);
}

fn func_4(arg_0: vec4<f32>) -> bool {
    global2 = array<u32, 14>();
    let var_0 = countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], reverseBits(select(abs(u_input.a), _wgslsmith_mod_u32(45320u, u_input.a), select(true, false, false))), countOneBits(global2[_wgslsmith_index_u32(1494u, 14u)]), u_input.a));
    global0 = array<i32, 13>();
    var var_1 = all(!select(vec3<bool>(false, all(vec4<bool>(true, false, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -1000f < _wgslsmith_f_op_f32(max(global3.a.x, 596f))));
    var var_2 = vec2<f32>(-158f, global3.b);
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(133f * _wgslsmith_f_op_f32(global3.b - 978f)))));
    var var_1 = any(select(vec3<bool>(func_4(_wgslsmith_f_op_vec4_f32(func_3(-1000f, false, true))), !(!arg_1), arg_1), select(!vec3<bool>(false, arg_1, false), !select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, true, false), vec3<bool>(true, false, arg_1)), true && arg_1), !(!arg_1) && arg_1));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_0.x, 109f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1415f, var_0, global3.a.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec4_f32(func_3(arg_0.x, arg_1, true)).wzx, arg_0, all(vec4<bool>(arg_1, true, arg_1, arg_1))))))), _wgslsmith_f_op_f32(select(1276f, _wgslsmith_f_op_vec4_f32(func_3(-1356f, arg_1, any(vec3<bool>(false, arg_1, arg_1)))).x, true)));
    let var_2 = u_input.b;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.a.x, -718f, arg_0.x), vec3<f32>(var_0, -682f, arg_0.x)))))), arg_0.x);
    return var_3;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~countOneBits(vec2<u32>(~1u, ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(26304u, 14u)], 94319u)));
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(-vec2<i32>(u_input.b, 0i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(32352u, var_0.x), vec2<u32>(0u, 32951u)) % vec2<u32>(32u)), firstTrailingBit(arg_0.xy) & arg_0.zy, select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true)), select(vec2<i32>(-u_input.b, -12018i), abs(select(arg_0.ww, arg_0.zw, true)), vec2<bool>(true, true))), ~(-arg_0.zy));
    global0 = array<i32, 13>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, _wgslsmith_div_f32(arg_3.a.x, arg_1.a.x), _wgslsmith_f_op_f32(-arg_2.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.b)), -1000f, true)), arg_2.b, 1f)), -2682f);
    var var_2 = ~reverseBits(reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(41071u, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)], 4294967295u), vec3<u32>(var_0.x, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<u32>(1u, global2[_wgslsmith_index_u32(var_0.x, 14u)], u_input.a))));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = !(!(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))));
    var var_1 = func_5(select((reverseBits(vec4<i32>(2147483647i, 0i, u_input.b, -249i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(-7872i, 4775i, 34741i, global0[_wgslsmith_index_u32(1313u, 13u)]), vec4<i32>(37138i, 2147483647i, -21057i, global0[_wgslsmith_index_u32(4294967295u, 13u)]))) | -_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(16275u, 13u)], 3781i, 1i), vec4<i32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(1u, 13u)], u_input.b)), -vec4<i32>(_wgslsmith_mod_i32(0i, -58248i), ~(-25617i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 32355i, 0i), vec3<i32>(u_input.b, u_input.b, -2147483647i)), global0[_wgslsmith_index_u32(min(77083u, 0u), 13u)]), !var_0.x | !var_0.x), func_2(_wgslsmith_f_op_vec3_f32(select(func_5(vec4<i32>(u_input.b, -774i, -1i, u_input.b), Struct_1(global3.a, global3.b), func_2(vec3<f32>(arg_0.b, 470f, arg_1.b), true), func_5(vec4<i32>(global0[_wgslsmith_index_u32(63461u, 13u)], 96601i, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 13u)]), Struct_1(vec3<f32>(-109f, 100f, 366f), arg_1.b), arg_2, Struct_1(arg_1.a, -1075f))).a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -889f), _wgslsmith_f_op_f32(arg_0.b * arg_0.a.x), _wgslsmith_f_op_f32(-global3.b)), true)), !var_0.x), func_5(countOneBits(max(vec4<i32>(97939i, global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(15729u, 13u)], 0i), vec4<i32>(9240i, u_input.b, 31704i, 42690i)) | (vec4<i32>(u_input.b, u_input.b, u_input.b, 44220i) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], -26162i, 0i, u_input.b))), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(752f, arg_1.b, 899f)), _wgslsmith_f_op_vec3_f32(-arg_2.a), !var_0.x)), var_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a - _wgslsmith_f_op_vec3_f32(arg_2.a - arg_0.a)), -896f), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(arg_1.a.x, arg_1.b, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-650f * arg_2.b)))), Struct_1(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))));
    return _wgslsmith_f_op_f32(f32(-1f) * -2235f);
}

fn func_7(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_1 {
    global0 = array<i32, 13>();
    global3 = Struct_1(_wgslsmith_div_vec3_f32(global3.a, _wgslsmith_f_op_vec3_f32(global3.a + vec3<f32>(arg_2, -116f, arg_1))), arg_2);
    global2 = array<u32, 14>();
    let var_0 = (_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, global0[_wgslsmith_index_u32(65314u, 13u)]), min(vec4<i32>(global0[_wgslsmith_index_u32(45378u, 13u)], 38300i, -1i, global0[_wgslsmith_index_u32(1u, 13u)]), vec4<i32>(0i, global0[_wgslsmith_index_u32(1u, 13u)], -2147483647i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 13u)]))), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a & 4294967295u, 14u)], 13u)] & ~global0[_wgslsmith_index_u32(u_input.a, 13u)]) | global0[_wgslsmith_index_u32(~43770u, 13u)]) & reverseBits(-1i);
    global2 = array<u32, 14>();
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(global3.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1148f, 1074f))))))), all(vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: vec3<f32>) -> vec3<f32> {
    var var_0 = func_7(_wgslsmith_f_op_f32(ceil(2743f)), _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(20442u, 13u)], 0i, 1i), vec4<i32>(0i, -19053i, 2147483647i, -2147483647i)), func_2(vec3<f32>(587f, -277f, arg_0.x), false), Struct_1(global3.a, arg_0.x), Struct_1(global3.a, 924f)), Struct_1(_wgslsmith_f_op_vec3_f32(select(global3.a, vec3<f32>(global3.b, global3.b, -702f), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(global3.b + global3.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, global3.b, arg_0.x) - global3.a), _wgslsmith_f_op_f32(1042f - -1616f)), 4294967295u))));
    global0 = array<i32, 13>();
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((vec2<u32>(global2[_wgslsmith_index_u32(8949u, 14u)], u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) ^ vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)]), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], u_input.a)), 13u)], global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a) ^ max(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)]), 13u)] ^ reverseBits(abs(32607i))), abs(u_input.b), _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), global0[_wgslsmith_index_u32(reverseBits(u_input.a), 13u)], abs(-2147483647i)), _wgslsmith_sub_vec3_i32(min(vec3<i32>(-39478i, 0i, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -1i, -22951i), vec3<i32>(-37876i, -1i, global0[_wgslsmith_index_u32(75954u, 13u)]), vec3<i32>(u_input.b, 18423i, u_input.b))), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, 34067i, 2147483647i)), min(vec3<i32>(u_input.b, 20643i, u_input.b), vec3<i32>(-28030i, 1i, global0[_wgslsmith_index_u32(u_input.a, 13u)]))))));
    let var_2 = var_1.yz;
    global2 = array<u32, 14>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(var_0.a.x, arg_0.x, 807f)) + _wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(-193f, 315f, global3.a.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-185f, 1030f, -750f), vec3<f32>(global3.a.x, var_0.a.x, -2631f))))) - vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b, -438f), global3.a.x)), global3.b)) * var_0.a);
}

fn func_8(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true), vec2<bool>(true, all(vec2<bool>(true, false))), true)) | true;
    global0 = array<i32, 13>();
    global3 = func_5(firstTrailingBit(select(countOneBits(select(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], -1i), vec4<i32>(u_input.b, 2147483647i, global0[_wgslsmith_index_u32(arg_1, 13u)], 0i), vec4<bool>(false, true, true, true))), _wgslsmith_div_vec4_i32(~vec4<i32>(-42547i, 74179i, u_input.b, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50880u, 14u)], 13u)]), min(vec4<i32>(global0[_wgslsmith_index_u32(1u, 13u)], u_input.b, u_input.b, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29833u, 14u)], 13u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], -15049i, global0[_wgslsmith_index_u32(15736u, 13u)], -36834i))), all(vec2<bool>(true, true)))), func_7(_wgslsmith_f_op_f32(func_2(global3.a, all(vec3<bool>(false, false, true))).a.x * arg_0.a.x), _wgslsmith_f_op_f32(select(global3.a.x, _wgslsmith_div_f32(global3.b, 508f), true)), arg_0.b), arg_0, arg_0);
    let var_1 = select(-_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~max(1u, arg_1), 13u)], -1i, u_input.b), -20770i, all(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))));
    var_0 = all(vec2<bool>(true, true));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 14>();
    var var_0 = func_8(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.a.x, global3.b, global3.b), _wgslsmith_f_op_vec3_f32(-global3.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(global3.a))))), -683f), 4294967295u);
    var var_1 = func_5(vec4<i32>(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global2[_wgslsmith_index_u32(0u, 14u)]), vec2<u32>(1u, 4294967295u) ^ vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 14u)], 1u)), 13u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 13u)], u_input.b, global0[_wgslsmith_index_u32(u_input.a, 13u)], -1i) << (~vec4<u32>(4294967295u, 23148u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)]) % vec4<u32>(32u)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], 1i, global0[_wgslsmith_index_u32(u_input.a, 13u)], 4470i)), ~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)] & u_input.a, 13u)], -select(0i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11479u, 14u)], 13u)], false)), func_8(func_2(_wgslsmith_f_op_vec3_f32(-global3.a), !func_4(vec4<f32>(-245f, 433f, -1008f, global3.b))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(min(4294967295u, 4294967295u), _wgslsmith_div_u32(1u, 5053u)), 1u), 14u)]), func_7(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, -550f, -444f, 1847f))), false)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_8(Struct_1(vec3<f32>(global3.b, 421f, 1232f), global3.b), 45060u).a.x)), func_7(var_0.a.x, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1537f)).b), func_8(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a))), var_0.a.x), min(_wgslsmith_add_u32(~u_input.a, 1u), (u_input.a ^ 7115u) << (1u % 32u))));
    let var_2 = func_2(vec3<f32>(_wgslsmith_div_f32(-505f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b - 264f) * _wgslsmith_f_op_f32(step(-912f, var_1.a.x)))), _wgslsmith_f_op_f32(-func_8(func_2(global3.a, true), 25836u).b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), -923f))), all(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))));
    global2 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-20651i, global0[_wgslsmith_index_u32(1u, 13u)], -1i, 1i), vec4<i32>(-46663i, 47074i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 13u)])), global0[_wgslsmith_index_u32(32178u, 13u)] >> (select(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], true) % 32u)) | -_wgslsmith_add_i32(8439i, u_input.b | u_input.b), min(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 14u)], 4294967295u, 81068u) | vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30503u, 14u)], 14u)], 42394u, 65172u), ~vec4<u32>(global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], 14u)], 14u)], 4294967295u, u_input.a)), ~4294967295u), -266f, vec2<u32>(_wgslsmith_clamp_u32(~5290u, 1u, global2[_wgslsmith_index_u32(35101u, 14u)]) | ~4294967295u, global2[_wgslsmith_index_u32(~(~u_input.a), 14u)] ^ 73073u));
}

