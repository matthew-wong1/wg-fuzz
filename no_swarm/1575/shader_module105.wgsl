struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    return 0u;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = ~abs(4294967295u);
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x * 269f));
    let var_3 = Struct_2(-2147483647i, firstTrailingBit(vec4<u32>(var_0 >> (reverseBits(var_0) % 32u), var_0, ~38811u, 4294967295u)), vec3<i32>(i32(-1i) * -20161i, 0i, arg_0.x) >> (~vec3<u32>(17794u, select(var_0, 1u, arg_2.c.x), ~var_0) % vec3<u32>(32u)), _wgslsmith_f_op_f32(exp2(var_1.a.x)));
    return ~var_3.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(u_input.a.x, vec4<u32>(3568u, 1u, func_1(), ~(~max(24327u, 19505u))), vec3<i32>(1i, 1i, 1i), -276f);
    var var_1 = select(vec4<u32>(0u, ~(~_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(75923u, var_0.b.x, var_0.b.x, var_0.b.x))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~var_0.b.x, ~var_0.b.x), var_0.b.x), 71258u | (23343u | func_3(vec3<i32>(-92249i, var_0.a, 0i), false, Struct_1(vec4<f32>(-123f, var_0.d, -643f, 1083f), vec2<f32>(var_0.d, 425f), vec3<bool>(true, false, true), vec2<bool>(true, false), vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(var_0.d, 1000f, -2657f, var_0.d), vec2<f32>(var_0.d, var_0.d), vec3<bool>(true, true, false), vec2<bool>(true, false), vec4<bool>(true, false, true, false))))), abs(~vec4<u32>(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x), var_0.b.x, ~var_0.b.x, 1u | var_0.b.x)), 0u < _wgslsmith_div_u32(~var_0.b.x, _wgslsmith_sub_u32(min(var_0.b.x, var_0.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), var_0.b.wz))));
    let var_2 = vec3<u32>(~var_0.b.x, 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(var_0.b.x, 0u)), reverseBits(~var_0.b.yw)), firstLeadingBit(abs(_wgslsmith_mult_u32(30915u, var_0.b.x)))));
    var var_3 = vec2<i32>(~var_0.c.x, abs(var_0.c.x)) & var_0.c.zy;
    var_3 = firstLeadingBit(abs(var_0.c.zy));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.d * var_0.d), _wgslsmith_f_op_f32(-1343f - 1027f), -101f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, _wgslsmith_f_op_f32(-272f + var_0.d), 491f, var_0.d))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2167f, 1357f)))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-570f, var_0.d)))))), !select(vec3<bool>(true, false, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), false), !vec2<bool>(!any(vec4<bool>(true, false, false, true)), false), select(select(vec4<bool>(select(true, false, true), any(vec2<bool>(false, true)), any(vec3<bool>(false, false, true)), all(vec4<bool>(false, false, false, true))), vec4<bool>(false, true, true, true), vec4<bool>(-1284f < var_0.d, true, any(vec2<bool>(true, false)), true)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1();
    let var_1 = Struct_2(_wgslsmith_sub_i32(u_input.a.x | -37536i, u_input.a.x), firstTrailingBit(vec4<u32>(firstLeadingBit(0u), 1u, 1u, 0u) << (select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), true) % vec4<u32>(32u))), vec3<i32>(-1i, countOneBits(u_input.a.x), -36857i), 439f);
    let var_2 = 4294967295u;
    let var_3 = 4294967295u;
    var_0 = var_3;
    var var_4 = var_1.d;
    var var_5 = func_2();
    let var_6 = !(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2979i, -u_input.a.x, abs(u_input.a.x)), ~(-27042i)) >= -36451i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, -vec2<i32>(_wgslsmith_add_i32(1i, ~(-5997i)), 37550i), -var_1.a);
}

