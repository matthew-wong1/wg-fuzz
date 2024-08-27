struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32> = vec2<i32>(-68797i, 10890i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec3<u32> {
    let var_0 = Struct_2(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, false), arg_1 > arg_1), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), 2147483647i, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, global1.x == global1.x, any(vec4<bool>(false, false, true, false)))), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, false))), _wgslsmith_clamp_i32(u_input.a, -33690i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -23441i, 22038i, u_input.a), vec4<i32>(-1i, -315i, -2211i, global1.x))) >= 1i), vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1046f, -676f) * _wgslsmith_f_op_f32(trunc(1386f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) + arg_1)), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), -1000f), vec2<bool>(true, true))));
    global1 = vec2<i32>(-2147483647i, u_input.a & 1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, arg_1, 1002f), vec4<f32>(1089f, -1597f, arg_1, 160f), true)), vec4<f32>(arg_1, -279f, arg_1, var_1.x))) * vec4<f32>(var_1.x, arg_1, -303f, _wgslsmith_f_op_f32(abs(-843f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, arg_1, -565f, 1714f)))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1), var_1.x, -305f, _wgslsmith_f_op_f32(-arg_1));
    return vec3<u32>(~5372u, 8480u, arg_0);
}

fn func_4(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = 20784u;
    let var_1 = Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(178f, 641f))) * _wgslsmith_f_op_f32(-1596f + 990f)), 297f), true, false == (27235u >= (arg_0.x | ~var_0)));
    global1 = ~(~vec2<i32>(49120i, _wgslsmith_sub_i32(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -10326i), vec2<i32>(u_input.a, u_input.a)))));
    var var_2 = 1601f;
    let var_3 = _wgslsmith_mod_i32(1i, -1i);
    return _wgslsmith_mod_vec2_i32(abs(vec2<i32>(reverseBits(0i), global1.x)), -(~(-(~vec2<i32>(var_3, 26061i)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = -799f;
    global1 = min(func_4(func_3(21063u, arg_1.a.x)), vec2<i32>(1i, 73586i & ~global1.x));
    var var_1 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(2147483647i, -global1.x), u_input.a), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, global1.x), vec2<i32>(global1.x, u_input.a))));
    let var_2 = -(~var_1.x);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * -1818f))));
    return Struct_3(_wgslsmith_f_op_f32(sign(var_3)) > var_3);
}

fn func_1(arg_0: f32, arg_1: u32) -> bool {
    var var_0 = func_2(min(33528u, 22974u), Struct_1(vec3<f32>(-682f, _wgslsmith_f_op_f32(round(arg_0)), arg_0), true, !any(vec3<bool>(true, true, true))), !vec2<bool>(_wgslsmith_add_u32(arg_1, arg_1) != ~0u, true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(927f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))) + arg_0) - _wgslsmith_f_op_f32(sign(-739f)));
    global0 = 1f;
    global1 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, -u_input.a), max((~vec2<i32>(u_input.a, global1.x) | vec2<i32>(u_input.a, -20296i)) >> ((vec2<u32>(4294967295u, arg_1) ^ (vec2<u32>(arg_1, arg_1) ^ vec2<u32>(34450u, 1u))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, ~(-1i)), ~vec2<i32>(global1.x, u_input.a), _wgslsmith_div_vec2_i32(select(vec2<i32>(-1i, 5381i), vec2<i32>(-2147483647i, -2147483647i), vec2<bool>(var_0.a, false)), vec2<i32>(1i, 1i)))), reverseBits((vec2<i32>(-1i) * -vec2<i32>(1i, global1.x)) << (vec2<u32>(~arg_1, arg_1 >> (arg_1 % 32u)) % vec2<u32>(32u))));
    let var_2 = func_4(~_wgslsmith_mod_vec3_u32(vec3<u32>(select(0u, 1u, true), ~arg_1, 20381u), ~vec3<u32>(arg_1, 4294967295u, 2668u))).x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~firstTrailingBit(~vec3<u32>(1u, 4294967295u, 0u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) - -850f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1053f, -1688f)))), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1428f + -307f), _wgslsmith_div_f32(-886f, -923f))), ~1u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1457f, -493f, 902f))))));
}

