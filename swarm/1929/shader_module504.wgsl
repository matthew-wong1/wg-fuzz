struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<u32, 10> = array<u32, 10>(38904u, 28021u, 27112u, 72243u, 3997u, 0u, 1u, 685u, 0u, 1u);

var<private> global2: array<vec4<i32>, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> bool {
    let var_0 = false;
    global1 = array<u32, 10>();
    let var_1 = arg_3.x;
    var var_2 = Struct_3(~(~(~13645u)));
    var_2 = arg_1;
    return ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, 267f))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1621f, -1000f))) && all(vec4<bool>(all(vec4<bool>(var_1, false, true, var_0)), !var_1, true, arg_3.x))) != (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))) == -358f);
}

fn func_2() -> i32 {
    var var_0 = Struct_3(countOneBits(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 10u)], _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33548u, 10u)], 10u)], 1u))), 10u)]));
    let var_1 = var_0.a;
    let var_2 = any(!select(vec4<bool>(select(false, true, false), true, func_3(Struct_2(517f, vec4<u32>(global1[_wgslsmith_index_u32(var_0.a, 10u)], 4294967295u, var_0.a, var_0.a), vec2<i32>(global0.x, 2062i)), Struct_3(var_0.a), global1[_wgslsmith_index_u32(18880u, 10u)], vec3<bool>(true, true, true)), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, u_input.b.x >= global0.x, true), vec4<bool>(true, true, true, true)));
    return global0.x;
}

fn func_1() -> i32 {
    var var_0 = !any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)));
    var var_1 = Struct_1(select(vec2<i32>(func_2(), 5819i), global0.zx, select(vec2<bool>(true, true), vec2<bool>(true, func_3(Struct_2(637f, vec4<u32>(global1[_wgslsmith_index_u32(17553u, 10u)], 22372u, 72699u, 4294967295u), u_input.b.yx), Struct_3(global1[_wgslsmith_index_u32(62209u, 10u)]), 12767u, vec3<bool>(false, true, true))), vec2<bool>(global1[_wgslsmith_index_u32(0u, 10u)] >= 1u, true))), false, global0.yx & (global0.yz >> (abs(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)])) % vec2<u32>(32u))));
    global0 = -(~vec3<i32>(~u_input.b.x, -2147483647i, func_2()));
    let var_2 = Struct_1(max(select(vec2<i32>(-1i, -25039i), vec2<i32>(u_input.a.x, -2147483647i), !var_1.b), abs(u_input.b.zx)) | _wgslsmith_div_vec2_i32(select(vec2<i32>(29415i, var_1.a.x), vec2<i32>(-1i, u_input.b.x), select(vec2<bool>(var_1.b, true), vec2<bool>(true, false), vec2<bool>(var_1.b, var_1.b))), firstLeadingBit(u_input.a.yx)), true, var_1.c);
    var var_3 = vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(-u_input.b.x, var_2.a.x)), _wgslsmith_dot_vec3_i32(u_input.a.wxx, vec3<i32>(19736i, ~(-2147483647i) >> (_wgslsmith_clamp_u32(0u, 4294967295u, global1[_wgslsmith_index_u32(0u, 10u)]) % 32u), abs(-33186i >> (global1[_wgslsmith_index_u32(1u, 10u)] % 32u)))), -47175i | (1i >> (_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18546u, 10u)], 10u)], 1u) % 32u)), i32(-1i) * -18331i);
    return -28992i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    var var_0 = -(~(-(global0.x | _wgslsmith_div_i32(global0.x, -15273i))));
    var var_1 = false;
    var_0 = func_1();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-520f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(sign(-559f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-267f - -688f)))))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], 0u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18024u, 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 1u)), vec4<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 10u)], 37121u)), vec4<u32>(firstLeadingBit(~65609u), _wgslsmith_dot_vec2_u32(vec2<u32>(22370u, 2010u), ~vec2<u32>(40705u, 93780u)), 4790u, ~45226u | global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(20056u, 10u)], 10u)])), ~vec2<i32>(-global0.x, 2147483647i));
    var_1 = !((min(_wgslsmith_add_u32(var_2.b.x, global1[_wgslsmith_index_u32(71501u, 10u)]), countOneBits(48222u)) | _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(58140u, 10u)], var_2.b.x, 0u)) != max(firstTrailingBit(95480u), _wgslsmith_clamp_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15346u, 10u)], 10u)]), 45688u, var_2.b.x | 54771u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(~max(vec3<u32>(global1[_wgslsmith_index_u32(var_2.b.x, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.b.x, 10u)], 10u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18392u, 10u)], 10u)], global1[_wgslsmith_index_u32(21184u, 10u)], 1u)), var_2.b.xzz >> (_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.b.x, 10u)], 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(var_2.b.x, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), vec3<u32>(60047u, 4294967295u, 0u)) % vec3<u32>(32u))), u_input.a.wwy & abs(u_input.b.xxy ^ -u_input.b.xyw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a)) - vec2<f32>(-1446f, var_2.a)), vec2<f32>(_wgslsmith_div_f32(-977f, var_2.a), _wgslsmith_f_op_f32(-var_2.a)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, -450f) - vec2<f32>(var_2.a, var_2.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, -995f), vec2<f32>(270f, 2305f))))));
}

