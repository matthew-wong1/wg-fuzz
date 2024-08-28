struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(1u, 4294967295u, 1294u, 4294967295u, 5622u, 18929u, 1u, 1u, 0u, 49037u, 0u, 1u, 53213u, 28178u, 77120u, 4294967295u, 1u);

var<private> global1: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> u32 {
    global1 = min(u_input.a, u_input.a) << (~(~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 28857u, 0u, 9150u), u_input.a) >> ((u_input.a & vec4<u32>(arg_0, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 40545u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global1 = ~u_input.a;
    var var_0 = Struct_1(-1769f);
    global0 = array<u32, 17>();
    var var_1 = false;
    return 1u;
}

fn func_2() -> vec3<f32> {
    global1 = ~vec4<u32>(func_3(~_wgslsmith_mult_u32(global1.x, 30300u)), func_3(global0[_wgslsmith_index_u32(global1.x, 17u)]), reverseBits(u_input.a.x), ~(~0u));
    var var_0 = min(~abs(0u), ~(~global1.x));
    global1 = ~min(u_input.a, ~vec4<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(45287u, 17u)], 14489u), u_input.b, 13792u, _wgslsmith_sub_u32(u_input.b, 12667u)));
    let var_1 = -85359i;
    var_0 = 710u << (~u_input.a.x % 32u);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-737f * _wgslsmith_f_op_f32(f32(-1f) * -1273f))))), -1692f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -222f) + -427f));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = u_input.a;
    let var_1 = arg_1.xy;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_2());
    let var_3 = arg_2;
    let var_4 = abs(~_wgslsmith_sub_u32(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(103969u, 17u)], _wgslsmith_add_u32(var_0.x, 6462u)), countOneBits(var_0.x)));
    return var_4 >> (u_input.a.x % 32u);
}

fn func_4(arg_0: bool, arg_1: u32) -> StorageBuffer {
    let var_0 = Struct_1(1029f);
    global0 = array<u32, 17>();
    global1 = vec4<u32>(global1.x, global0[_wgslsmith_index_u32(~u_input.b, 17u)], _wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_1, 4294967295u), 1u) << (max(arg_1, ~(~43833u)) % 32u), _wgslsmith_add_u32(select(~arg_1 << (_wgslsmith_sub_u32(arg_1, global1.x) % 32u), u_input.a.x, arg_0 & arg_0), _wgslsmith_sub_u32(~u_input.a.x & ~11760u, ~reverseBits(1u))));
    var var_1 = min(select(25608u, global0[_wgslsmith_index_u32(global1.x, 17u)] & 56428u, arg_0) >> (~reverseBits(82679u) % 32u), _wgslsmith_clamp_u32((0u << (u_input.a.x % 32u)) << (_wgslsmith_add_u32(u_input.b, global1.x) % 32u), 1u, 38877u)) | ~(select(~global1.x, max(1u, u_input.a.x), select(true, true, true)) & global1.x);
    let var_2 = u_input.a.xw;
    return StorageBuffer(abs(reverseBits(u_input.a) | select(u_input.a, vec4<u32>(arg_1, global1.x, var_2.x, 54400u), vec4<bool>(true, true, arg_0, true))) & ~u_input.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-662f, var_0.a, 150f) - vec3<f32>(var_0.a, var_0.a, 877f)) + vec3<f32>(var_0.a, -445f, 1989f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    global1 = ~(~abs(max(vec4<u32>(0u, 4294967295u, 1u, 1u), u_input.a)));
    let x = u_input.a;
    s_output = func_4((all(vec3<bool>(true, false, false)) != true) || true, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x | u_input.a.x, func_1(-1424f, vec3<i32>(2147483647i, -17858i, -67555i), Struct_1(1611f))), 28075u) & _wgslsmith_clamp_u32(func_3(global1.x), countOneBits(_wgslsmith_add_u32(global1.x, 76454u)), _wgslsmith_mod_u32(u_input.b | global0[_wgslsmith_index_u32(global1.x, 17u)], ~global1.x)));
}

