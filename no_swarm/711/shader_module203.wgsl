struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_2(vec3<u32>(firstLeadingBit(u_input.c), u_input.b, ~(~(~1u))), u_input.b);
    return !(!any(vec3<bool>(true, true, true)) != true);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(!all(vec4<bool>(false, true, true, true)), true, !(false & func_3()));
    return Struct_1(4294967295u, u_input.c, !select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, var_0.x), var_0.x), !vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(true, false, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(false, var_0.x, true))), select(!vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(false, var_0.x, false)), true)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = func_2();
    let var_1 = Struct_2(~select(vec3<u32>(arg_1.b, 1u, ~67116u), arg_1.a, false), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_2.a, arg_1.a), 87699u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-917f)) * -1878f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) + 691f), _wgslsmith_f_op_f32(trunc(-1000f)), 1166f)));
    let var_3 = !arg_0;
    var_0 = Struct_1(4294967295u & arg_2.a.x, ~0u & abs(~_wgslsmith_dot_vec3_u32(arg_2.a, arg_1.a)), !(!vec3<bool>(u_input.a.x > u_input.a.x, all(vec3<bool>(var_3, var_3, var_0.c.x)), u_input.a.x > u_input.a.x)));
    return any(vec3<bool>(var_3, countOneBits(~u_input.a.x) >= -_wgslsmith_dot_vec3_i32(vec3<i32>(-11188i, u_input.a.x, -19929i), u_input.a.wyx), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = Struct_1(u_input.c, 0u, select(vec3<bool>(false, true, true), vec3<bool>(all(vec3<bool>(false, true, false)), true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), !vec3<bool>(func_1(false, Struct_2(vec3<u32>(u_input.b, u_input.c, 0u), u_input.b), Struct_2(vec3<u32>(0u, u_input.b, 3681u), 0u)), true, all(vec3<bool>(false, false, false)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-467f, 413f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1214f, 2122f) * vec2<f32>(162f, -530f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1508f)), _wgslsmith_f_op_f32(1393f - 113f)))))));
    var var_3 = !var_1.c.xx;
    var_1 = Struct_1(57410u, 37615u, var_1.c);
    var var_4 = _wgslsmith_add_u32(~(~55746u), _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(u_input.c, reverseBits(max(var_0, var_1.b)), ~select(u_input.c, 4294967295u, true))));
    let var_5 = _wgslsmith_div_vec2_f32(var_2, _wgslsmith_f_op_vec2_f32(abs(var_2)));
    let var_6 = ~(4294967295u << (var_1.a % 32u));
    var var_7 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1153f, -542f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(45839u), _wgslsmith_mult_u32(8719u, var_1.b), var_1.b, var_6), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-441f))));
}

