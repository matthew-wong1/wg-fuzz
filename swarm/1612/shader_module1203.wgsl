struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_1);
    return 4294967295u ^ ~(reverseBits(u_input.a.x) ^ _wgslsmith_clamp_u32(var_0.a.b, arg_1.b, arg_1.b));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_1(vec2<f32>(-245f, _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(round(1000f)))), arg_2.b);
    var var_1 = var_0.a;
    var var_2 = Struct_2(var_0);
    let var_3 = var_2.a;
    var_2 = Struct_2(arg_2);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-731f, arg_0) + _wgslsmith_f_op_vec2_f32(arg_2.a - var_0.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1487f) + var_2.a.a)), ~(~16913u)));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1256f))) * -369f), ~u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-229f, _wgslsmith_div_f32(-153f, -689f)))), u_input.a.x), firstLeadingBit(~u_input.a.x) & func_2(_wgslsmith_f_op_f32(-400f + -1128f), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-101f, -122f) - vec2<f32>(399f, 939f)), select(u_input.a.x, 5353u, true))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(332f)) + -968f);
    return vec2<bool>(true, select(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    var_0 = select(func_1(), vec2<bool>(!(any(vec3<bool>(var_0.x, false, false)) & (-53342i >= u_input.c)), true), select(vec2<bool>(true, false), !select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), var_0.x), !vec2<bool>(var_0.x, false), true), false));
    let var_1 = firstLeadingBit(4294967295u);
    var var_2 = 1u;
    var_2 = min(~(~(~_wgslsmith_mult_u32(9782u, u_input.a.x))), max(_wgslsmith_mod_u32(930u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, var_1)))), ~1u));
    var var_3 = func_3(932f, 64628u, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 297f) * vec2<f32>(-1747f, 560f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(972f, 609f)))), var_1), firstTrailingBit(_wgslsmith_div_u32(0u, 8297u >> (var_1 % 32u)))).a;
    let var_4 = 10688u;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-764f, 938f, var_0.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1249f + 1000f), -171f))), func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2037f * 498f))), ~0u, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, var_3.a.x) * vec2<f32>(479f, -561f)), 10398u), 70112u).a), var_4, select(firstLeadingBit(~(~vec4<u32>(11126u, 56519u, var_4, var_4))), ~(~vec4<u32>(var_4, 25194u, 1u, 0u)) | firstTrailingBit(~vec4<u32>(28612u, 13280u, u_input.a.x, u_input.a.x)), vec4<bool>(true, true, var_0.x, all(vec3<bool>(var_0.x, true, var_0.x)))));
}

