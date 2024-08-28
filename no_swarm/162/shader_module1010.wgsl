struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec2<f32> {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    let var_1 = select(true, all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true)) && any(vec3<bool>(true, true, true)), true);
    var var_2 = (firstTrailingBit(vec3<u32>(arg_1.x, ~0u, _wgslsmith_mult_u32(arg_1.x, arg_1.x))) | ~max(countOneBits(arg_1.wyz), arg_1.zyx)) & arg_1.wwz;
    let var_3 = vec2<u32>(~22888u, ~var_2.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 110f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1361f), _wgslsmith_f_op_f32(945f + 1167f))), !select(select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)), vec2<bool>(var_1, var_1), var_1 | var_1))));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(u_input.b.x, vec4<u32>(92288u, 16363u, 62253u, 8784u)))))))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-507f, _wgslsmith_f_op_f32(ceil(-210f)))), 974f, var_0.x)));
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(1i, vec4<u32>(arg_0, arg_0, arg_0, arg_0))).x), _wgslsmith_div_u32(firstTrailingBit(arg_0), firstTrailingBit(arg_0))), !(_wgslsmith_div_f32(var_2.x, -1000f) < -513f), _wgslsmith_f_op_f32(abs(var_1.x)), Struct_1(var_1.x, arg_0)));
    var var_4 = ~abs(~(_wgslsmith_div_u32(1u, arg_0) << (54314u % 32u)));
    return vec2<bool>(all(!(!vec3<bool>(false, true, var_3.a.b))), !(!(u_input.a.x > u_input.a.x)));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec4<bool>(false, any(func_2(5408u)), true, true);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(525f, _wgslsmith_f_op_f32(-1091f * _wgslsmith_f_op_f32(floor(arg_0.a))), !(1u >= arg_0.b))), 4294967295u), !(!(!any(var_0.yxz))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.a, -154f)), arg_0.a)))), Struct_1(-1729f, max(20060u, ~(~arg_0.b))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1223f, var_1.a.a) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-835f, -1234f), vec2<f32>(arg_0.a, var_1.d.a), var_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, -928f) + vec2<f32>(var_1.c, -1195f))))))));
    var var_3 = all(var_0);
    let var_4 = arg_0.a;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_4), ~_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(arg_0.b, var_1.a.b), arg_0.b)), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_4)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * -886f)))), Struct_1(arg_0.a, 7074u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(-2721f, ~abs(~40157u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, var_0.c, all(!vec3<bool>(var_0.b, false, var_0.b)))));
    let var_2 = firstLeadingBit(vec2<i32>(~u_input.a.x, u_input.a.x));
    let var_3 = Struct_1(-2256f, ~(~(~531u >> (~4294967295u % 32u))));
    var var_4 = !(false | all(select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, var_0.b, var_0.b), true))) | var_0.b;
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -907f)), 28450u);
    let var_6 = all(vec4<bool>(var_0.b, !var_0.b, select(select(u_input.a.x, var_2.x, var_0.b), -2835i, true) >= min(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-4313i, 64539i), vec2<i32>(18371i, var_2.x))), var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i >> (_wgslsmith_mod_u32(~var_5.b, var_0.d.b << (10170u % 32u)) % 32u)), 2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -2040f));
}

