struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> bool {
    var var_0 = i32(-1i) * -43887i;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-716f - 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f)))), vec3<bool>(arg_0.x, all(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))) | arg_0.x, true));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.x, var_1.a.x, -245f))))))), var_1.b);
    let var_2 = var_1.a.x;
    var var_3 = !select(vec4<bool>(_wgslsmith_f_op_f32(947f - -1256f) == _wgslsmith_f_op_f32(-var_1.a.x), var_1.b.x, any(vec3<bool>(arg_0.x, false, var_1.b.x)) | (var_1.a.x != var_1.a.x), true), select(!vec4<bool>(arg_0.x, false, false, var_1.b.x), vec4<bool>(false, false, true || arg_0.x, any(vec3<bool>(var_1.b.x, false, arg_0.x))), vec4<bool>(!var_1.b.x, true, true, arg_0.x)), !(!(!vec4<bool>(arg_0.x, true, true, true))));
    return !(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(74757u, 10607u), 1u) <= _wgslsmith_sub_u32(~_wgslsmith_div_u32(52384u, 1u), 4294967295u >> (u_input.a.x % 32u)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(-(~(~vec4<i32>(1i, 1i, 2147483647i, 2147483647i))));
    var var_1 = 1u;
    var var_2 = any(!select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), func_3(vec2<bool>(true, true), var_0.a.x)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_3 = countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, firstLeadingBit(u_input.a.x), reverseBits(0u)), vec3<u32>(39319u, ~1u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), ~vec3<u32>(49768u, 874u, ~4294967295u)));
    var var_4 = select(var_0.a, select(var_0.a, max(var_0.a ^ var_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_0.a.x, -15539i) | vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), select(vec4<i32>(31539i, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a, true))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), true | all(vec2<bool>(true, false)))), !all(vec2<bool>(true, true)));
    return Struct_4(vec4<bool>(all(vec2<bool>(true, true)), !all(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), !(!any(vec2<bool>(true, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -406f), -717f, _wgslsmith_f_op_f32(select(-268f, 1000f, false))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(959f, 889f, -296f), vec3<f32>(288f, 1421f, -257f))))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), false), true)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_3 {
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = true;
    var var_1 = func_4(Struct_3(vec4<i32>(_wgslsmith_clamp_i32(-3896i ^ arg_2, -22566i >> (0u % 32u), 0i), arg_0.a.x, arg_2, countOneBits(2147483647i | arg_2)), arg_0.b), Struct_4(select(vec4<bool>(101317i == arg_2, arg_0.a.x != arg_0.a.x, arg_0.b.x, arg_0.b.x), select(select(vec4<bool>(arg_0.b.x, true, arg_1, false), vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_1, false, arg_1, true)), vec4<bool>(false, false, true, arg_0.b.x), false), !arg_0.b.x), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, 1186f, 776f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(436f, -1070f, -748f))), !vec3<bool>(arg_1, arg_1, arg_0.b.x)), any(!vec4<bool>(arg_1, false, arg_0.b.x, arg_1)) | true), func_2(), select(firstLeadingBit(arg_0.a.xyw), arg_0.a.ywy & arg_0.a.wyx, (73524u > (u_input.a.x | u_input.a.x)) || any(vec2<bool>(arg_0.b.x, arg_1))));
    var_0 = any(select(vec4<bool>(all(select(var_1.b, arg_0.b, vec3<bool>(false, var_1.b.x, true))), true, true, all(!arg_0.b)), vec4<bool>(true, !arg_0.b.x, !arg_0.b.x, !(!arg_1)), vec4<bool>(false, arg_1, func_2().b.b.x, false)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1653f), _wgslsmith_div_f32(198f, -737f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2210f - 587f)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(681f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1384f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(991f - -1806f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-437f, -198f)) + _wgslsmith_f_op_f32(func_1(Struct_3(vec4<i32>(-2147483647i, 15095i, 68732i, -19312i), vec3<bool>(false, false, true)), true, 0i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(157f - 1331f)) - -1000f), _wgslsmith_f_op_f32(835f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1078f, 426f) * -749f))), vec2<u32>(min(73821u, 27938u), ~0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(min(u_input.a, u_input.a), max(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, 17594u))), ~u_input.a.x >> (~29320u % 32u)) >> ((0u << (abs(~u_input.a.x) % 32u)) % 32u), u_input.a.x, (~vec4<u32>(12210u, u_input.a.x, 47775u, 103743u) | countOneBits(~vec4<u32>(0u, 12717u, u_input.a.x, u_input.a.x))) | vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(22429u, 50174u, u_input.a.x)), u_input.a.x, ~(~u_input.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(6277u, 0u) ^ vec2<u32>(u_input.a.x, u_input.a.x))));
}

