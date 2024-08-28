struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<u32, 11>;

var<private> global2: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_0;
    global1 = array<u32, 11>();
    let var_1 = arg_0;
    var var_2 = Struct_1(~abs(~(0i << (u_input.b % 32u))));
    var var_3 = _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(~0u, 4294967295u)), global0.xz);
    return vec4<u32>(0u, ~min(_wgslsmith_div_u32(global0.x ^ 6343u, reverseBits(4294967295u)), _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(var_3.x, global0.x))), _wgslsmith_div_u32(~_wgslsmith_div_u32(42803u, u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(61784u, 30413u, u_input.a.x), ~0u, ~0u)) ^ max(global1[_wgslsmith_index_u32(16864u >> (firstTrailingBit(22116u) % 32u), 11u)], 393u), 47175u);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    global2 = var_0.a;
    var var_1 = !vec3<bool>(arg_0 & false, all(vec2<bool>(true, true)), !(!all(vec4<bool>(arg_0, arg_0, arg_0, false))));
    var_0 = Struct_1(_wgslsmith_mult_i32(0i, firstLeadingBit(i32(-1i) * -1i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) + _wgslsmith_f_op_f32(exp2(arg_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1244f * arg_1) * 921f)), arg_1));
    return any(vec4<bool>(var_1.x, var_1.x, var_1.x, !all(vec4<bool>(arg_0, false, var_1.x, arg_0)) && any(select(vec4<bool>(var_1.x, true, arg_0, true), vec4<bool>(true, arg_0, false, false), vec4<bool>(true, false, true, var_1.x)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    var var_0 = vec3<u32>(~(~(~24641u)), max(arg_0.x, ~_wgslsmith_mult_u32(1u, max(0u, global1[_wgslsmith_index_u32(35703u, 11u)]))), ~u_input.a.x);
    global1 = array<u32, 11>();
    var var_1 = arg_2;
    var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(~11084u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 11u)], 11u)]) | reverseBits(~1u), 4294967295u), ~vec3<u32>(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, 1u), 11u)], max(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.xyw, global0.xxx), 11u)], select(1u, 4294967295u, true)), 1u));
    let var_2 = ~firstTrailingBit(vec4<u32>(arg_0.x, ~(~36789u), 38279u, _wgslsmith_mod_u32(418u, var_0.x ^ 66491u)));
    return abs(arg_3.x);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-252f, _wgslsmith_f_op_f32(trunc(1f))))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(514f - 160f) * -423f)))));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), -(vec2<i32>(-1i) * -vec2<i32>(29929i, 2147483647i))));
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(max(firstLeadingBit(vec4<u32>(0u, global1[_wgslsmith_index_u32(13906u, 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 11u)], 11u)], global1[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 1u, global0.x), vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(u_input.b, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)]))), ~func_2(var_1, Struct_1(var_1.a))), vec4<u32>(0u, _wgslsmith_mult_u32(21446u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 11u)], 11u)]), global0.x, 1u | global0.x) >> (~vec4<u32>(0u, 26667u, 4294967295u, 6813u) % vec4<u32>(32u))), max(vec4<u32>(u_input.a.x, u_input.b, _wgslsmith_mod_u32(~68945u, global0.x), 1u), vec4<u32>(global0.x, global0.x, abs(0u), 1u)));
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(var_1.a << (firstTrailingBit(~u_input.b) % 32u), 1i, 1i), -2147483647i, func_4(vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], ~_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(58430u, 11u)])), all(vec2<bool>(80119u != global0.x, func_3(false, 1000f, 15430i, var_1))), var_1, min(~abs(vec3<i32>(var_1.a, var_1.a, var_1.a)), reverseBits(-vec3<i32>(var_1.a, 65519i, var_1.a)))));
    global2 = var_2.x;
    return false;
}

fn func_5(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = Struct_1(2147483647i);
    var var_2 = Struct_1(var_1.a);
    var var_3 = Struct_1(var_2.a);
    let var_4 = ~(~u_input.b);
    return Struct_1(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(vec2<bool>(true, func_1() | true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), !vec2<bool>(false, any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-765f)))))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, -1427f)), -394f));
    let var_2 = var_0;
    let var_3 = var_0;
    global0 = _wgslsmith_sub_vec4_u32(~(~(~(~vec4<u32>(22049u, global0.x, 1u, 1u)))), vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, global1[_wgslsmith_index_u32(0u, 11u)], global0.x), vec4<u32>(2982u, 1u, 25810u, 4294967295u)), global1[_wgslsmith_index_u32(global0.x, 11u)], u_input.a.x), global0.x, ~global1[_wgslsmith_index_u32(u_input.b, 11u)], 37976u));
    let var_4 = all(select(vec4<bool>(true, true, _wgslsmith_mod_u32(30948u, global0.x) != u_input.a.x, false), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false))));
    let var_5 = func_5(!(!select(select(vec2<bool>(true, false), vec2<bool>(var_4, var_4), vec2<bool>(true, false)), vec2<bool>(var_4, false), false | var_4)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1f, -887f, !var_4))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), 21726u, ~(_wgslsmith_div_vec2_i32(~vec2<i32>(-1i, -27824i), _wgslsmith_div_vec2_i32(vec2<i32>(var_3.a, 1i), vec2<i32>(0i, 1i))) << (~firstLeadingBit(u_input.a) % vec2<u32>(32u))));
}

