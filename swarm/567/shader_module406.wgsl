struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(6479i, 0i);

var<private> global1: array<i32, 3> = array<i32, 3>(56337i, -1i, 1i);

var<private> global2: array<f32, 30> = array<f32, 30>(186f, 1010f, 1494f, -925f, 478f, -654f, -452f, 343f, 146f, -1317f, -1247f, 333f, 1875f, -1224f, -1389f, 115f, -968f, -1086f, 249f, -682f, 480f, 928f, -1000f, 261f, -575f, 123f, -1000f, -1106f, -148f, -603f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_mult_u32(42001u, 6941u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(672f * -249f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1293f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0, 30u)]))))));
    let var_2 = 9001i;
    global2 = array<f32, 30>();
    var var_3 = -521f;
    return 1u;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32) -> Struct_1 {
    global0 = array<i32, 2>();
    let var_0 = Struct_1(abs(countOneBits(~vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_2, 2u)], -7306i, global0[_wgslsmith_index_u32(arg_0, 2u)]))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_0, 1u, arg_0), vec4<u32>(1u, arg_0, arg_0, arg_2))), _wgslsmith_div_vec4_u32(vec4<u32>(29789u, arg_0, ~15787u, ~24312u), vec4<u32>(arg_2, 54172u, 1u, arg_2 << (1u % 32u)))), 30u)]);
    global1 = array<i32, 3>();
    var var_1 = _wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 1u, 53019u, _wgslsmith_dot_vec4_u32(vec4<u32>(22774u, 0u, 92697u, arg_2), vec4<u32>(arg_0, 12534u, 0u, arg_0))), select(vec4<u32>(arg_0, 28491u, arg_2, arg_0) ^ vec4<u32>(1431u, 58205u, arg_0, arg_2), max(vec4<u32>(arg_2, arg_2, 12794u, arg_0), vec4<u32>(0u, 48408u, 2958u, arg_0)), 7114u == arg_0))), ~vec4<u32>(102915u, 0u, arg_0, _wgslsmith_mult_u32(func_2(vec2<i32>(global0[_wgslsmith_index_u32(1173u, 2u)], u_input.a), arg_1), arg_0)));
    var_1 = countOneBits(vec4<u32>(var_1.x >> (~select(12056u, var_1.x, true) % 32u), var_1.x, ~(~(37679u << (arg_0 % 32u))), 65402u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1u, true, 0u);
    global2 = array<f32, 30>();
    let var_1 = var_0;
    var var_2 = var_0.a.x;
    global2 = array<f32, 30>();
    let var_3 = abs(firstTrailingBit(-var_0.a.wx));
    global0 = array<i32, 2>();
    let var_4 = vec4<i32>(-1i) * -vec4<i32>(-abs(u_input.a), _wgslsmith_mod_i32(6794i, var_0.a.x) << (1u % 32u), ~global1[_wgslsmith_index_u32(min(4294967295u, 60702u), 3u)], var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(576f, -54080i);
}

