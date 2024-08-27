struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec4<u32> {
    return ~firstLeadingBit(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 121348u, u_input.e, u_input.e), vec4<u32>(14869u, u_input.e, 14778u, u_input.e)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, u_input.e, 4294967295u, 50494u), vec4<u32>(u_input.e, 5196u, 27266u, 23796u), vec4<u32>(u_input.e, 145135u, 1u, u_input.e))));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_add_u32(96135u, u_input.e);
    var_0 = 28184u;
    var var_1 = vec3<bool>(!all(vec2<bool>(u_input.e <= u_input.e, true)), (0i >> (~u_input.e % 32u)) <= _wgslsmith_sub_i32(u_input.c, u_input.b), true);
    let var_2 = max(u_input.b, -_wgslsmith_add_i32(_wgslsmith_clamp_i32(countOneBits(54584i), -24002i, u_input.d), ~_wgslsmith_div_i32(u_input.d, 1i)));
    var var_3 = Struct_2(Struct_1(!(!vec3<bool>(var_1.x, true, var_1.x)), vec4<bool>(true || all(vec3<bool>(var_1.x, var_1.x, var_1.x)), false, all(select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), true)), !any(vec4<bool>(var_1.x, true, true, false))), select(vec2<u32>(_wgslsmith_add_u32(0u, 0u), 37126u), vec2<u32>(26597u, u_input.e), !var_1.x)), Struct_1(vec3<bool>(var_1.x, true, true), vec4<bool>(false, all(vec3<bool>(var_1.x, false, true)), any(vec3<bool>(true, true, true)), var_1.x), vec2<u32>(1u, firstLeadingBit(u_input.e))));
    return var_3.a.a.zz;
}

fn func_2() -> u32 {
    let var_0 = !select(select(vec4<bool>(true, true, any(vec2<bool>(false, true)), select(true, true, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), true), vec4<bool>(all(func_3()), true, false, all(vec3<bool>(true, true, false))), true || (~4294967295u > u_input.e));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1628f, -921f, 753f, 408f) + vec4<f32>(1672f, 1404f, 1637f, 1000f)) * vec4<f32>(-154f, 865f, 1733f, 290f)))))));
    var var_2 = 427f;
    let var_3 = !var_0.x;
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1640f), var_1.x, 1f == _wgslsmith_f_op_f32(min(1725f, var_1.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2395f * var_1.x), -291f), var_1.x);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.e, abs(u_input.e));
    var_0 = countOneBits(~countOneBits(~(~vec2<u32>(u_input.e, 4294967295u))));
    var_0 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(~u_input.e, ~1u), abs(firstTrailingBit(min(vec2<u32>(0u, 59536u), vec2<u32>(59967u, u_input.e)))));
    let var_1 = countOneBits(func_1()) >> ((countOneBits(vec4<u32>(~u_input.e, var_0.x, func_2(), var_0.x)) ^ vec4<u32>(_wgslsmith_div_u32(var_0.x, 0u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, u_input.e), 76361u), 72554u, _wgslsmith_add_u32(73197u, 1u))) % vec4<u32>(32u));
    let var_2 = Struct_2(Struct_1(vec3<bool>(false, 7248u == var_0.x, all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), vec2<u32>(~var_1.x, abs(_wgslsmith_add_u32(var_0.x, u_input.e)))), Struct_1(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), vec3<bool>(select(false, false, true), true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec2_u32(var_1.xw, var_1.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-822f, -1755f, _wgslsmith_f_op_f32(trunc(1015f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-794f, -1413f, 335f), vec3<f32>(-311f, -1343f, -173f), var_2.b.a)))))), _wgslsmith_f_op_f32(f32(-1f) * -1314f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1147f, -158f, 568f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1694f, -101f, _wgslsmith_f_op_f32(-631f - -1780f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 829f, -1184f)))), _wgslsmith_f_op_f32(-147f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-350f, -234f)) + 410f)));
}

