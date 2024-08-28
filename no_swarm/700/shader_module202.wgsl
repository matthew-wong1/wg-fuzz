struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(25u, -1i, vec3<u32>(53246u, 78673u, 1u));

var<private> global2: array<u32, 3> = array<u32, 3>(4294967295u, 1u, 0u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<bool>) -> f32 {
    let var_0 = Struct_2(vec4<bool>(arg_0.a.x, any(select(arg_0.a, select(vec4<bool>(false, arg_2.x, true, false), vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), true), !arg_0.a)), false, true), Struct_1(global2[_wgslsmith_index_u32(65436u, 3u)], -12288i, firstTrailingBit(min(vec3<u32>(37391u, 4294967295u, global2[_wgslsmith_index_u32(u_input.d, 3u)]) >> (arg_1.c % vec3<u32>(32u)), vec3<u32>(0u, arg_0.b.c.x, u_input.c.x) ^ vec3<u32>(60136u, global0.c.x, arg_0.d.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c, arg_0.c)) - 1000f)), arg_0.c, reverseBits(~0u) > arg_1.a)), Struct_1(arg_1.a, -(2147483647i << (_wgslsmith_mod_u32(global0.a, global2[_wgslsmith_index_u32(33431u, 3u)]) % 32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a ^ 8964u, arg_1.c.x, firstLeadingBit(global1.a)), u_input.c)));
    global2 = array<u32, 3>();
    let var_1 = Struct_3(var_0, (75489u == max(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(var_0.d.a, 3u)], 16225u), vec2<u32>(arg_1.c.x, 1u)), global2[_wgslsmith_index_u32(arg_0.b.c.x, 3u)])) && (_wgslsmith_dot_vec4_i32(-vec4<i32>(-48888i, -20447i, 1i, global1.b), max(vec4<i32>(34288i, 5813i, 2147483647i, 31553i), vec4<i32>(global1.b, global1.b, -5483i, -10805i))) > _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 17676i, arg_0.b.b), vec4<i32>(1422i, -2147483647i, var_0.b.b, -52020i)), arg_0.d.b >> (1u % 32u))));
    let var_2 = Struct_2(!select(select(select(var_0.a, vec4<bool>(false, arg_2.x, false, true), true), var_0.a, all(vec3<bool>(arg_0.a.x, true, var_0.a.x))), !vec4<bool>(var_1.a.a.x, false, arg_0.a.x, true), vec4<bool>(all(vec4<bool>(arg_3.x, true, var_0.a.x, arg_2.x)), arg_0.a.x, true, false)), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.b.c, _wgslsmith_div_vec3_u32(~arg_0.b.c, _wgslsmith_mult_vec3_u32(var_1.a.d.c, global0.c))), 3u)], global1.b | ~(-41728i), arg_1.c << (abs(vec3<u32>(0u, u_input.d, 95037u)) % vec3<u32>(32u))), arg_0.c, arg_1);
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(404f - _wgslsmith_f_op_f32(f32(-1f) * -1303f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = min(~(-abs(arg_2.d.b)), 1i);
    var var_1 = 16176u;
    let var_2 = arg_1;
    var_1 = 1u;
    let var_3 = Struct_2(select(vec4<bool>(true, !arg_1.a.a.x, var_2.b, any(vec3<bool>(true, true, arg_2.a.x))), arg_2.a, !arg_2.a.x | all(vec3<bool>(false, var_2.a.a.x, var_2.b))), arg_2.d, _wgslsmith_f_op_f32(sign(arg_2.c)), Struct_1(~1u, max(~max(arg_1.a.d.b, -1831i), abs(-2147483647i)), min(_wgslsmith_sub_vec3_u32(~arg_0.c, abs(vec3<u32>(0u, var_2.a.d.a, u_input.c.x))), max(~global1.c, ~arg_1.a.b.c))));
    return vec3<f32>(_wgslsmith_div_f32(arg_2.c, var_2.a.c), -1193f, -891f);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(347f, 299f, -424f))))) - _wgslsmith_f_op_vec3_f32(func_4(Struct_1(global1.a, -global1.b, vec3<u32>(global0.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 1u)), Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(global0.a, u_input.b.x, vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], u_input.d, 47461u)), 826f, Struct_1(global1.a, -127i, vec3<u32>(global1.a, global1.a, 0u))), true), Struct_2(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), Struct_1(global1.a, global1.b, vec3<u32>(0u, 1u, 0u)), _wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(true, true, false, true), Struct_1(global2[_wgslsmith_index_u32(global1.c.x, 3u)], 25567i, vec3<u32>(44488u, global1.a, global2[_wgslsmith_index_u32(global1.a, 3u)])), -286f, Struct_1(u_input.d, -2147483647i, vec3<u32>(1u, 25388u, 4294967295u))), Struct_1(global2[_wgslsmith_index_u32(28367u, 3u)], -53384i, u_input.c), vec2<bool>(false, false), vec2<bool>(true, false))), Struct_1(global1.a, u_input.b.x, global1.c)))))));
    global2 = array<u32, 3>();
    let var_1 = vec3<f32>(_wgslsmith_div_f32(-517f, var_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - var_0.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - var_0.x))), -1477f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-811f, -270f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(true, true, true, false), Struct_1(global0.c.x, global1.b, vec3<u32>(8325u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.c.x, 3u)], 3u)], global1.a)), -525f, Struct_1(4294967295u, -13097i, global0.c)), Struct_1(global0.a, u_input.b.x, vec3<u32>(global2[_wgslsmith_index_u32(55068u, 3u)], global0.a, global1.a)), vec2<bool>(true, false), vec2<bool>(false, true))), -791f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -315f) * _wgslsmith_f_op_f32(abs(-1312f))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, 973f))))));
    let var_3 = Struct_2(vec4<bool>(select(true, u_input.b.x > 11812i, false), true, true, true), Struct_1(_wgslsmith_sub_u32(~1977u, _wgslsmith_add_u32(firstLeadingBit(global1.c.x), global0.a)), ~10180i, vec3<u32>(_wgslsmith_mult_u32(~global1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global0.a), vec2<u32>(u_input.a, 71077u))), ~(~0u), _wgslsmith_clamp_u32(u_input.c.x, 39445u, global2[_wgslsmith_index_u32(45332u, 3u)]))), 2647f, Struct_1(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, global0.c.x), u_input.a), 16642i, _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.d, global0.a, global0.a)), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(global0.c, vec3<u32>(22797u, global1.a, global2[_wgslsmith_index_u32(4294967295u, 3u)])), 0u))));
    return global0.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = ~(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global0.c.xz, global1.c.yy << (~arg_1 % vec2<u32>(32u))), 3u)]);
    let var_1 = max(global2[_wgslsmith_index_u32(firstLeadingBit(global0.a), 3u)], arg_1.x);
    let var_2 = vec3<bool>(any(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), !all(vec2<bool>(true, false)))), _wgslsmith_mod_u32(~(u_input.c.x << (4294967295u % 32u)), var_0) != ~_wgslsmith_dot_vec2_u32(~arg_1, vec2<u32>(33605u, global0.a)), true);
    let var_3 = var_2.xx;
    var var_4 = _wgslsmith_div_vec3_u32(global1.c, arg_0.c & _wgslsmith_mod_vec3_u32(~countOneBits(global1.c), ~(~vec3<u32>(u_input.d, 0u, 4294967295u))));
    return Struct_3(Struct_2(vec4<bool>(!var_2.x, all(vec3<bool>(true, var_2.x, var_3.x)) & any(vec3<bool>(false, true, true)), true, _wgslsmith_div_i32(arg_0.b, 0i) == _wgslsmith_add_i32(-16392i, global1.b)), Struct_1(select(_wgslsmith_mod_u32(45971u, 4294967295u), 4294967295u, true), -2147483647i, ~vec3<u32>(var_4.x, var_0, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(303f, 1806f) + _wgslsmith_f_op_f32(1426f - -666f))), Struct_1(~firstLeadingBit(1u), _wgslsmith_div_i32(~33674i, ~(-3958i)), ~global1.c)), true);
}

fn func_1() -> Struct_3 {
    let var_0 = countOneBits(select(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -9583i, -1i, global1.b), vec4<i32>(-2147483647i, u_input.b.x, global1.b, u_input.b.x)), -vec4<i32>(global0.b, -42758i, global0.b, 1i)), ~global0.b, -73750i), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -87619i, ~(-6628i)), select(vec3<i32>(82325i, -2147483647i, 2147483647i), vec3<i32>(-2147483647i, 24868i, 0i), vec3<bool>(false, true, false)) >> ((global1.c ^ u_input.c) % vec3<u32>(32u))), _wgslsmith_mod_u32(~global0.a, ~global0.c.x) <= select(u_input.a, global2[_wgslsmith_index_u32(~global1.c.x, 3u)], global2[_wgslsmith_index_u32(745u, 3u)] >= global1.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -396f)), 2134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(292f))), -472f)));
    var var_2 = _wgslsmith_div_f32(877f, var_1.x);
    global2 = array<u32, 3>();
    var var_3 = func_5(Struct_1(_wgslsmith_mod_u32(~global1.c.x, ~max(u_input.d, 4294967295u)), ~min(u_input.b.x, -27036i) ^ -2147483647i, ~global1.c), vec2<u32>(func_2(), u_input.d));
    return Struct_3(var_3.a, true);
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = Struct_2(!arg_2.a.a, arg_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.c)), arg_2.a.b);
    global2 = array<u32, 3>();
    var var_1 = firstTrailingBit(vec4<u32>(func_2(), 4294967295u, global1.a, 1u)) << (~_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a, 52977u, 51863u, 82313u) ^ ~vec4<u32>(0u, 0u, 15545u, 15212u), select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 37417u, var_0.b.c.x, u_input.a), vec4<u32>(0u, 0u, 1u, global0.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.a.b.a, 1u, 66059u, global0.c.x), vec4<u32>(var_0.b.a, arg_2.a.d.c.x, var_0.b.a, var_0.b.a)), arg_2.a.a.x)) % vec4<u32>(32u));
    global1 = Struct_1(arg_2.a.b.c.x ^ 49372u, var_0.d.b & (i32(-1i) * -(~global0.b)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(arg_2.a.b.c, max(global1.c, var_0.d.c | global0.c)), global0.c));
    global0 = Struct_1(0u, _wgslsmith_mod_i32(_wgslsmith_sub_i32(18871i, global1.b), -(global1.b ^ -16840i)), ~(vec3<u32>(max(4294967295u, 1u), 0u, arg_2.a.b.c.x) | select(vec3<u32>(global0.a, 49497u, 1u), ~u_input.c, true)));
    return (vec3<u32>(78127u, ~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_1.x, 4294967295u, var_1.x)), func_1().a.b.a) ^ vec3<u32>(func_5(Struct_1(var_1.x, u_input.b.x, vec3<u32>(var_1.x, 1u, global2[_wgslsmith_index_u32(var_1.x, 3u)])), var_0.b.c.yx).a.d.c.x, var_1.x, var_0.b.c.x)) & vec3<u32>(var_1.x, ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(20545u, var_0.b.c.x, 56009u)), vec3<u32>(global0.c.x, 21768u, arg_2.a.d.c.x)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(41860u), ~u_input.b.x, firstLeadingBit(_wgslsmith_mult_vec3_u32(func_6(max(global0.b, 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(249f, 981f, 1666f) + vec3<f32>(-330f, -858f, -1828f)), func_1()), abs(~vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], u_input.c.x, global2[_wgslsmith_index_u32(0u, 3u)])))));
    var_0 = func_5(Struct_1(global1.a, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1.b, global1.b), vec2<i32>(global1.b, -25358i)), ~u_input.b), var_0.b | func_1().a.d.b), global0.c), _wgslsmith_sub_vec2_u32(abs(global0.c.xz), vec2<u32>(_wgslsmith_add_u32(reverseBits(21923u), _wgslsmith_div_u32(global1.c.x, 4928u)), global2[_wgslsmith_index_u32(~1u | func_2(), 3u)]))).a.b;
    global1 = func_5(Struct_1(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_2() >> ((8862u | global2[_wgslsmith_index_u32(1u, 3u)]) % 32u), 3u)], 3u)], u_input.a, ~(~59324u)), ~(-var_0.b), ~(vec3<u32>(1u, 32845u, 1u) >> (func_6(global1.b, vec3<f32>(-303f, -693f, 199f), Struct_3(Struct_2(vec4<bool>(false, false, true, true), Struct_1(52997u, 9219i, vec3<u32>(global0.a, global1.c.x, 4294967295u)), -529f, Struct_1(13313u, 1i, vec3<u32>(4294967295u, global1.c.x, u_input.c.x))), false)) % vec3<u32>(32u)))), _wgslsmith_div_vec2_u32(vec2<u32>(~func_6(u_input.b.x, vec3<f32>(-591f, -881f, -712f), Struct_3(Struct_2(vec4<bool>(false, true, true, true), Struct_1(var_0.c.x, -22834i, global0.c), 1466f, Struct_1(17911u, u_input.b.x, global1.c)), true)).x, 4294967295u), firstTrailingBit(func_6(-2147483647i >> (var_0.c.x % 32u), vec3<f32>(537f, 478f, -464f), func_5(Struct_1(36875u, u_input.b.x, u_input.c), var_0.c.zy)).yy))).a.b;
    let var_1 = Struct_3(Struct_2(vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(var_0.b, 0i)) <= -2147483647i, any(vec4<bool>(false, false, true, false)), true), Struct_1(~1u, var_0.b, global1.c), -1043f, Struct_1(~var_0.a ^ countOneBits(u_input.d), global1.b, ~vec3<u32>(0u, 15452u, 42590u))), true);
    let var_2 = func_1();
    let var_3 = ~_wgslsmith_mod_vec3_u32(u_input.c, firstLeadingBit(abs(global0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mult_i32(var_2.a.d.b, -9795i) & reverseBits(-17627i)), abs(-2147483647i));
}

