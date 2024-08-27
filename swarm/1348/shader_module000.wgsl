struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> f32 {
    let var_0 = firstTrailingBit(1u);
    let var_1 = Struct_2(-87449i, 4294967295u, any(!vec3<bool>(select(arg_0.x, true, true), arg_0.x, true)), _wgslsmith_f_op_f32(734f * 1432f));
    let var_2 = false;
    var var_3 = vec4<bool>(true, true, all(vec2<bool>(max(var_1.b, u_input.a) < (var_1.b | var_0), var_1.c)), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), max(_wgslsmith_add_i32(var_1.a, u_input.b.x), min(u_input.b.x, 0i))) < (global0[_wgslsmith_index_u32(~u_input.c, 1u)] ^ global0[_wgslsmith_index_u32(~firstTrailingBit(1u), 1u)]));
    let var_4 = var_0 ^ var_0;
    return _wgslsmith_f_op_f32(floor(var_1.d));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(219f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, false, false), false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-442f, 1289f))))), vec4<bool>(false, true, false, true), vec4<u32>(~_wgslsmith_dot_vec2_u32(~u_input.d, reverseBits(vec2<u32>(u_input.d.x, 74655u))), u_input.c & u_input.d.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 12890u, u_input.a, 4294967295u), vec4<u32>(1u, 0u, u_input.d.x, u_input.a)), u_input.d.x), ~u_input.d.x), u_input.d.x, _wgslsmith_f_op_f32(-172f - 1f));
    var var_1 = var_0;
    global0 = array<i32, 1>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - var_1.e)), -779f), var_1.a));
    let var_3 = vec3<bool>(true, var_0.b.x, select(all(!vec2<bool>(var_1.b.x, true)), var_1.b.x, false));
    return var_0;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(5460i, u_input.b.x, u_input.b.x, 2878i))), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(38314u, 1u)], u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(arg_0.c.x, 1u)]) ^ vec4<i32>(u_input.b.x, 13340i, u_input.b.x, -2147483647i)), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4810u, 1u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(22392u, 1u)], -134i), vec4<i32>(2147483647i, 0i, 2147483647i, u_input.b.x))))), min(39419u, abs(reverseBits(arg_0.c.x ^ 4912u))), all(vec4<bool>(!arg_0.b.x | false, func_1(vec2<f32>(arg_0.e, arg_0.e)).b.x, arg_0.b.x, all(select(arg_0.b, vec4<bool>(true, arg_0.b.x, arg_0.b.x, true), arg_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), func_2().e)) - arg_0.e));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(296f, 1267f, true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3620f))) * -1096f), 1200f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(sign(1386f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(803f)) - 119f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(-var_0.d), any(arg_0.b.xzw))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.e + _wgslsmith_div_f32(1901f, -403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d, 850f))))))));
    var var_2 = select(-var_0.a, 1i, true && (_wgslsmith_f_op_f32(310f - var_0.d) >= 1633f)) | _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(global0[_wgslsmith_index_u32(34452u, 1u)], -8833i)), u_input.b.x | 73236i), -1i), vec2<i32>(global0[_wgslsmith_index_u32(~countOneBits(arg_0.c.x), 1u)], firstTrailingBit(reverseBits(u_input.b.x))));
    var_2 = -2147483647i;
    return -1205f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -12703i;
    global0 = array<i32, 1>();
    var var_1 = _wgslsmith_f_op_f32(trunc(1026f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(729f)), _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1118f, -1727f))))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-350f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-532f, 1060f), func_1(vec2<f32>(487f, -1000f)).b.x)) * 1000f)) + _wgslsmith_f_op_f32(-func_2().a));
    let var_3 = Struct_2(38537i, ~(~11012u), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-332f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f))), true)));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(105f, -418f, var_3.d) + vec3<f32>(var_3.d, -973f, var_3.d))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(265f)), _wgslsmith_f_op_f32(step(var_3.d, -816f)), var_3.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(169f, _wgslsmith_f_op_f32(f32(-1f) * -1204f), _wgslsmith_f_op_f32(sign(var_3.d))) + vec3<f32>(var_3.d, _wgslsmith_f_op_f32(f32(-1f) * -435f), var_3.d)), !vec3<bool>(true, any(select(vec3<bool>(false, var_3.c, var_3.c), vec3<bool>(var_3.c, var_3.c, var_3.c), vec3<bool>(var_3.c, true, true))), var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(0u >> (1u % 32u), ~(~var_3.b), ~firstLeadingBit(0u)), _wgslsmith_add_u32(~(var_3.b & ~var_3.b), reverseBits(1u)), _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.b, 19162u, u_input.a), vec3<u32>(59026u, 40251u, 38440u)), vec3<u32>(1u, var_3.b, 1u)), vec3<u32>(u_input.c >> (~var_3.b % 32u), _wgslsmith_mod_u32(u_input.d.x, 0u) | u_input.c, u_input.a)), ~vec2<u32>(func_1(_wgslsmith_f_op_vec2_f32(-var_4.yz)).d, max(u_input.a & 1518u, u_input.a << (4294967295u % 32u))), ~var_0);
}

