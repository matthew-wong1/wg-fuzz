struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = false;
    var_0 = true;
    let var_1 = Struct_1(reverseBits(firstLeadingBit(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(1u, 1u, 1u)))), countOneBits(abs(~vec2<u32>(1u, 1u))), ~vec3<u32>(countOneBits(select(9754u, 32681u, true)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 24724u), vec3<u32>(34049u, 0u, 26660u)), ~80928u), true);
    var_0 = true;
    var_0 = any(vec2<bool>(true, false)) & all(vec4<bool>(all(!vec3<bool>(var_1.d, true, var_1.d)), var_1.d, var_1.d, any(vec4<bool>(false, var_1.d, var_1.d, false))));
    return -286f;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = vec3<f32>(-953f, 352f, _wgslsmith_f_op_f32(func_3()));
    var var_1 = arg_0.x;
    let var_2 = vec3<f32>(689f, _wgslsmith_f_op_f32(func_3()), var_0.x);
    var_1 = arg_0.x;
    var var_3 = ~abs(_wgslsmith_mod_u32(arg_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, arg_1.c.x, 0u), vec3<u32>(54459u, 13977u, 0u)))) >> ((firstTrailingBit(_wgslsmith_add_u32(reverseBits(arg_1.c.x), 71862u)) & 1u) % 32u);
    return _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(56692u, arg_1.c.x, 4294967295u, 53130u), vec4<u32>(arg_1.c.x, arg_1.c.x, 1u, arg_1.c.x)))), arg_1.c.x);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 71867u, 59247u, 1u), vec4<u32>(27818u, 0u, 4294967295u, 4294967295u)), 1u)), 1u, 18355u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~4294967295u, reverseBits(18160u), func_2(arg_1, Struct_2(2610i, true, vec4<u32>(13988u, 40875u, 4479u, 36389u)))))), ~vec4<u32>(1u, 1u, 1u, 1u));
    return Struct_4(!(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(false, false, true, false), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_2.a))))), -1103f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-237f, arg_2.a)))), _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(1206f * 796f)))));
    let var_1 = true;
    return ~(abs(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 39100u, 1u), ~1u, select(31065u, 45598u, true))) & vec3<u32>(~(~2609u), _wgslsmith_add_u32(1u, max(0u, 1u)), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, false, true);
    var var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), ~63137u), countOneBits(0u) << (1u % 32u)), 1u), ~vec2<u32>(1u, ~_wgslsmith_mod_u32(10100u, 4294967295u)), select(func_4(!(!vec4<bool>(var_0, var_0, false, false)), func_1(_wgslsmith_mult_i32(-39671i, u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -914f))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(88043u, 0u, 71942u), vec3<u32>(39619u, 4294967295u, 1u))), abs(0u), ~(~4294967295u)), true), var_0);
    let var_2 = -51405i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.a, 23668u), var_1.c.x), -1776f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1144f, -975f) - vec2<f32>(-433f, -890f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2415f), _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1929f, 1525f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1782f, -1074f), vec2<f32>(-987f, -424f)))))));
}

