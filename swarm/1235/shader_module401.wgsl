struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: f32 = 607f;

var<private> global2: array<Struct_2, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: i32, arg_3: Struct_5) -> vec3<i32> {
    let var_0 = -vec4<i32>(countOneBits(1i), -arg_1.c, max(firstLeadingBit(arg_1.a.x), -2147483647i) << (u_input.a.x % 32u), abs(36916i));
    global1 = _wgslsmith_f_op_f32(sign(arg_3.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, _wgslsmith_f_op_f32(sign(-1386f)), _wgslsmith_f_op_f32(-arg_3.a)));
    var var_2 = Struct_1(countOneBits(_wgslsmith_div_vec2_i32(~arg_1.a, var_0.yw)), vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3.a)), -482f, _wgslsmith_f_op_f32(trunc(var_1.x))), arg_2, vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, -arg_2) << (select(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~28681u, true) % 32u), arg_2, arg_2, select(arg_2, _wgslsmith_mult_i32(arg_2, _wgslsmith_add_i32(arg_2, var_0.x)), false)));
    let var_3 = Struct_3(arg_1.b.a);
    return vec3<i32>(var_0.x, _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(abs(vec3<i32>(arg_2, -10296i, arg_2)), ~vec3<i32>(arg_1.c, -39366i, arg_2)), ~(~_wgslsmith_div_vec3_i32(var_0.xwy, vec3<i32>(-2147483647i, 1i, 1i)))), 0i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = !select(vec3<bool>(true, true, any(select(vec3<bool>(false, true, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(arg_0.a, false, arg_0.a)))), vec3<bool>(!arg_0.a, arg_0.a, arg_0.a), (min(4728i, arg_3.x) != (3098i << (u_input.a.x % 32u))) | arg_0.a);
    var var_1 = arg_3.x;
    var var_2 = var_0.x;
    var var_3 = !(!((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 51208u, 16248u, 0u), vec4<u32>(37802u, u_input.a.x, 19295u, u_input.a.x)) > 1u) & false));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1.b)), _wgslsmith_f_op_vec3_f32(max(arg_1.b, vec3<f32>(arg_2.b.x, -1237f, -1204f))))))) * _wgslsmith_f_op_vec3_f32(step(arg_2.b, arg_1.b)));
}

fn func_5(arg_0: vec3<f32>) -> u32 {
    global2 = array<Struct_2, 22>();
    global0 = array<vec2<i32>, 3>();
    var var_0 = reverseBits(1i) >> (select(~(~u_input.a.x), 0u, true) % 32u);
    let var_1 = global2[_wgslsmith_index_u32(countOneBits(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, 16365u), vec4<u32>(78355u, u_input.a.x, u_input.a.x, u_input.a.x)) | countOneBits(u_input.a.x))) << (~u_input.a.x % 32u), 22u)];
    let var_2 = vec2<f32>(var_1.e, 670f);
    return ~_wgslsmith_mult_u32(26620u, _wgslsmith_mult_u32(u_input.a.x, (18824u & u_input.a.x) << (~u_input.a.x % 32u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, -496f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xy * arg_0.xz) * _wgslsmith_f_op_vec2_f32(-arg_0.zx))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(-1759f * -1136f), -341f)))));
    let var_1 = Struct_2(~func_5(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(true), Struct_1(global0[_wgslsmith_index_u32(1u, 3u)], arg_0, -1i, vec4<i32>(-1i, -1i, -1558i, -9006i)), Struct_1(global0[_wgslsmith_index_u32(33706u, 3u)], arg_0, 13466i, vec4<i32>(68103i, -6789i, -26081i, -1i)), func_3(false, Struct_4(vec2<i32>(25705i, -16838i), Struct_3(true), -44830i), 1i, Struct_5(790f))))), 2147483647i, vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(max(u_input.a, u_input.a), _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, u_input.a.x))), _wgslsmith_clamp_u32(1u, countOneBits(20793u), u_input.a.x)), u_input.a.x, 27366u, _wgslsmith_sub_u32(~(~0u), ~4294967295u)), !vec2<bool>(all(select(vec4<bool>(false, arg_1.a, true, false), vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a))), arg_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, 313f)))));
    return arg_1.a;
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    let var_0 = arg_2.c.zw;
    let var_1 = Struct_4(_wgslsmith_mod_vec2_i32(func_3(false, Struct_4(_wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(94301u, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)]), Struct_3(arg_2.d.x), ~(-40774i)), _wgslsmith_dot_vec3_i32(vec3<i32>(84774i, arg_2.b, arg_2.b), vec3<i32>(arg_2.b, -1i, 2147483647i) >> (vec3<u32>(arg_0, 1u, var_0.x) % vec3<u32>(32u))), Struct_5(-506f)).yy, -global0[_wgslsmith_index_u32(reverseBits(0u), 3u)]), Struct_3(false), arg_2.b);
    global1 = _wgslsmith_f_op_vec3_f32(func_4(Struct_3(!(~65137u < _wgslsmith_add_u32(44156u, arg_2.a))), Struct_1(var_1.a & func_3(true, Struct_4(var_1.a, Struct_3(arg_3), arg_2.b), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(arg_0, 3u)], global0[_wgslsmith_index_u32(63004u, 3u)]), Struct_5(arg_2.e)).yx, vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.e)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.e, arg_2.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e), 387f)), ~11789i, vec4<i32>(arg_2.b, var_1.c, -1i ^ -arg_2.b, -2147483647i)), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~var_0.x), var_0.x), 3u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(var_1.b, Struct_1(global0[_wgslsmith_index_u32(1u, 3u)], vec3<f32>(-760f, arg_2.e, -232f), -1i, vec4<i32>(var_1.a.x, -1i, -48629i, arg_2.b)), Struct_1(global0[_wgslsmith_index_u32(var_0.x, 3u)], vec3<f32>(-1333f, arg_2.e, 293f), var_1.c, vec4<i32>(arg_2.b, var_1.c, -2147483647i, var_1.a.x)), vec3<i32>(var_1.c, var_1.c, arg_2.b))) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1678f, 1375f), vec3<f32>(arg_2.e, -1041f, 859f)))), arg_2.b, min(vec4<i32>(var_1.c & arg_2.b, 1i, 32315i, select(var_1.a.x, arg_2.b, var_1.b.a)), max(vec4<i32>(arg_2.b, arg_2.b, 2147483647i, 0i), vec4<i32>(arg_2.b, arg_2.b, -1i, arg_2.b)) >> (~arg_2.c % vec4<u32>(32u)))), ~vec3<i32>(_wgslsmith_mod_i32(arg_2.b, var_1.a.x), firstLeadingBit(_wgslsmith_sub_i32(var_1.a.x, 1i)), reverseBits(_wgslsmith_div_i32(arg_2.b, 0i))))).x;
    global2 = array<Struct_2, 22>();
    global2 = array<Struct_2, 22>();
    return Struct_4(select(_wgslsmith_div_vec2_i32(countOneBits(global0[_wgslsmith_index_u32(42724u, 3u)]), _wgslsmith_clamp_vec2_i32(var_1.a, vec2<i32>(-2147483647i, var_1.c), vec2<i32>(arg_2.b, var_1.c))), var_1.a, arg_2.d) | global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~var_0.x), 3u)], Struct_3(!(!(!arg_3))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -6025i, arg_2.b) | vec3<i32>(var_1.a.x, arg_2.b, var_1.a.x), ~vec3<i32>(var_1.c, arg_2.b, var_1.a.x), ~vec3<i32>(-55512i, 2147483647i, 1i)) & vec3<i32>(_wgslsmith_sub_i32(arg_2.b, -68463i), _wgslsmith_sub_i32(var_1.c, 1i), _wgslsmith_add_i32(arg_2.b, -20413i)), vec3<i32>(17820i, var_1.a.x, var_1.c)));
}

fn func_7(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: Struct_4) -> vec3<f32> {
    var var_0 = ~(~42824i);
    global1 = _wgslsmith_f_op_f32(trunc(-1497f));
    let var_1 = arg_0.yx;
    var var_2 = vec2<bool>(arg_3.b.a, false);
    let var_3 = vec2<i32>(-1i) * -select(-(arg_3.a & vec2<i32>(arg_3.c, -2147483647i)), vec2<i32>(max(2147483647i, 3799i), reverseBits(2147483647i)), vec2<bool>(!arg_1.x, arg_1.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_2.a, arg_2.a) - vec3<f32>(-907f, arg_2.a, 733f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a, 113f, 1000f), vec3<f32>(arg_2.a, arg_2.a, -778f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1414f, 896f, arg_2.a) + vec3<f32>(arg_2.a, -219f, 1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a, -508f, arg_2.a), vec3<f32>(146f, 1364f, -2629f), var_2.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a, -108f, arg_2.a), vec3<f32>(arg_2.a, arg_2.a, 1456f), true)))))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_1(vec2<i32>(abs(_wgslsmith_mult_i32(firstTrailingBit(-1i), countOneBits(arg_0))), 23987i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_7(arg_3.wzy, !arg_1.d, Struct_5(arg_1.e), func_6(u_input.a.x, all(vec3<bool>(arg_2.x, false, arg_1.d.x)), Struct_2(0u, -1i, vec4<u32>(4294967295u, 40532u, arg_3.x, 34854u), vec2<bool>(arg_2.x, true), -888f), func_2(vec3<f32>(419f, arg_1.e, arg_1.e), Struct_3(arg_2.x))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-193f)), _wgslsmith_f_op_f32(arg_1.e + 600f), 404f))), ~(arg_0 << ((4294967295u & _wgslsmith_sub_u32(4294967295u, arg_1.a)) % 32u)), -vec4<i32>(1i, arg_1.b, -arg_1.b, arg_0));
    var var_1 = var_0.b.x;
    var var_2 = arg_1.e;
    let var_3 = !(arg_1.d.x || arg_2.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(var_0.b * var_0.b);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(select(var_0.b.x, 174f, var_3)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1412f, _wgslsmith_f_op_f32(1125f + 351f), _wgslsmith_f_op_f32(-var_4.x), var_4.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(select(max(u_input.a.x, select(u_input.a.x ^ u_input.a.x, 36151u, true)), u_input.a.x, true || (any(vec2<bool>(false, true)) && true)), abs(_wgslsmith_add_u32(63868u << (1u % 32u), _wgslsmith_mult_u32(28938u, u_input.a.x))) ^ _wgslsmith_add_u32(firstLeadingBit(1u), ~78991u), ~(~(1u | _wgslsmith_add_u32(u_input.a.x, 0u))), u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1(countOneBits(_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i << (var_0.x % 32u), 7932i), -_wgslsmith_div_i32(1i, 1i), -10452i)), global2[_wgslsmith_index_u32(var_0.x, 22u)], !vec2<bool>(!all(vec3<bool>(false, true, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-23586i, 0i, 5448i), vec3<i32>(20988i, 0i, -43766i)) >= 0i), abs(~vec4<u32>(0u, 70161u, 0u, var_0.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, 29839u) & vec4<u32>(u_input.a.x, 0u, 1u, var_0.x), vec4<u32>(54548u, u_input.a.x, 1u, u_input.a.x)) % vec4<u32>(32u)))));
    global2 = array<Struct_2, 22>();
    let var_2 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, 244f)), var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))))));
    var var_3 = ~abs(_wgslsmith_sub_i32(~1i, _wgslsmith_sub_i32(-57637i, -1i))) | _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(i32(-1i) * -20441i, -7687i, i32(-1i) * -2147483647i, 1i)), firstTrailingBit(select(vec4<i32>(-43358i, -1i, 16396i, 86537i), vec4<i32>(37079i, -2147483647i, -1i, -2147483647i), false) << (var_0 % vec4<u32>(32u))));
    global0 = array<vec2<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(1498f)), 48815u, func_3(max(var_0.x | var_0.x, 1u) > 1u, Struct_4(countOneBits(~vec2<i32>(-2147483647i, 1i)), Struct_3(all(vec2<bool>(false, true))), -(0i >> (var_0.x % 32u))), ~_wgslsmith_mult_i32(-29098i, i32(-1i) * -6457i), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -1059f)))).x);
}

