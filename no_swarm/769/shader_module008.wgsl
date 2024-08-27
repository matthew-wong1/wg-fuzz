struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<f32, 9> = array<f32, 9>(-803f, 927f, 257f, 606f, 220f, -1646f, 871f, 236f, 1786f);

var<private> global3: array<u32, 25> = array<u32, 25>(5719u, 7558u, 13667u, 0u, 1u, 4294967295u, 4294967295u, 30804u, 87085u, 5218u, 25128u, 45244u, 4294967295u, 0u, 1u, 9342u, 4294967295u, 31296u, 8917u, 0u, 1u, 14103u, 4294967295u, 1u, 36880u);

var<private> global4: array<f32, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn func_3(arg_0: i32) -> u32 {
    global3 = array<u32, 25>();
    return 1u;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global4 = array<f32, 16>();
    var var_0 = -1107f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1125f)) + -328f);
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b, 1u, 4294967295u, 12687u), vec4<u32>(28082u, 16672u, global3[_wgslsmith_index_u32(79919u, 25u)], global3[_wgslsmith_index_u32(91337u, 25u)]))) | vec4<u32>(17858u, _wgslsmith_mult_u32(arg_0.b, global3[_wgslsmith_index_u32(1u, 25u)]), global3[_wgslsmith_index_u32(reverseBits(arg_0.b), 25u)], arg_0.b), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(10578u, 25u)], arg_0.b, 6278u, 4294967295u), vec4<u32>(5676u, 4294967295u, global3[_wgslsmith_index_u32(41319u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)])) | (vec4<u32>(31746u, arg_0.b, arg_0.b, 30655u) & vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.b, 25u)], 25u)], 25u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26714u, 25u)], 25u)], 25u)], 25u)], arg_0.b)))), vec4<u32>((4294967295u >> (func_3(-2147483647i) % 32u)) & global3[_wgslsmith_index_u32(abs(countOneBits(global3[_wgslsmith_index_u32(4294967295u, 25u)])), 25u)], global3[_wgslsmith_index_u32(0u, 25u)] & arg_0.b, global3[_wgslsmith_index_u32(~abs(arg_0.b | arg_0.b), 25u)], 1u << (~(~arg_0.b) % 32u)));
    var var_3 = Struct_1(arg_0.a & all(vec2<bool>(!arg_0.a, !arg_0.a)), _wgslsmith_sub_u32(max(arg_0.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 0u, 0u, 0u), max(vec4<u32>(1u, arg_0.b, 0u, global3[_wgslsmith_index_u32(47058u, 25u)]), vec4<u32>(4294967295u, 36262u, 35767u, arg_0.b))), 25u)]), _wgslsmith_div_u32(~min(30665u, global3[_wgslsmith_index_u32(38455u, 25u)]), firstTrailingBit(firstTrailingBit(var_2.x)))), -14775i);
    return ~(~select(u_input.b.xxy, select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 41845i, 1i), vec3<i32>(arg_0.c, u_input.a, -10848i), vec3<i32>(7422i, u_input.b.x, arg_0.c)), u_input.b.yzz, true), vec3<bool>(!var_3.a, true, true && var_3.a)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> u32 {
    var var_0 = select(func_2(Struct_1(!(0u < global3[_wgslsmith_index_u32(99311u, 25u)]), ~(~41649u), 60874i)), u_input.b.zyy ^ _wgslsmith_clamp_vec3_i32(u_input.b.zwx, u_input.b.xxy, u_input.b.yyy), vec3<bool>(!(select(arg_1.x, false, arg_1.x) & false), false, all(!vec4<bool>(arg_1.x, true, arg_1.x, true))));
    let var_1 = global1[_wgslsmith_index_u32(114400u, 27u)];
    global2 = array<f32, 9>();
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-220f, global2[_wgslsmith_index_u32(14449u, 9u)]))))) != _wgslsmith_f_op_f32(min(-1930f, global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], var_1.b), 9u)])), true, true, false);
    var_0 = firstTrailingBit(abs(~vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(27030u, 9u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 9u)])) << (countOneBits(vec3<u32>(_wgslsmith_mod_u32(arg_0, var_1.b), 87784u, arg_0 ^ 22333u)) % vec3<u32>(32u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~((0u ^ global3[_wgslsmith_index_u32(85554u, 25u)]) ^ global3[_wgslsmith_index_u32(~(func_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(106023u, 25u)], 25u)], vec2<bool>(true, true)) ^ global3[_wgslsmith_index_u32(min(1u, 6313u), 25u)]), 25u)]), 27u)];
    global2 = array<f32, 9>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-112f, 933f), global4[_wgslsmith_index_u32(~(~var_0.b), 16u)])) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(2026u, 16u)])))));
    var var_2 = vec4<u32>(_wgslsmith_add_u32(var_0.b, ~var_0.b), 0u, max(var_0.b, var_0.b), ~0u);
    var var_3 = -265i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(select(u_input.b.x, 32292i, var_0.a), 2147483647i), -54578i);
}

