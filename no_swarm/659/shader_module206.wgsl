struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, true, true, true, true, true, true, false, false, false, false, false, false, true, false, false, true, true);

var<private> global1: array<i32, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1;
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    return select(vec3<bool>(!(!all(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 18u)]))), true, any(select(vec2<bool>(false, arg_0), vec2<bool>(var_0.a, arg_1.a), vec2<bool>(var_0.a, true))) && ((global0[_wgslsmith_index_u32(arg_1.b, 18u)] || false) | all(vec2<bool>(false, var_0.a)))), select(vec3<bool>(!(var_0.c <= var_0.c), var_0.a, var_0.a), vec3<bool>(true, !(!global0[_wgslsmith_index_u32(22732u, 18u)]), !(!arg_1.a)), vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.b, 18u)], arg_0, false, arg_1.a)), (64427u | arg_1.b) >= var_0.b, global0[_wgslsmith_index_u32(~(30208u & var_0.b), 18u)])), select(!select(!vec3<bool>(false, arg_0, global0[_wgslsmith_index_u32(var_0.b, 18u)]), !vec3<bool>(false, arg_1.a, arg_0), vec3<bool>(var_0.a, arg_0, arg_0)), select(select(!vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, var_0.a), any(vec3<bool>(arg_1.a, arg_0, true))), vec3<bool>(true, all(vec2<bool>(var_0.a, true)), global0[_wgslsmith_index_u32(4294967295u, 18u)]), arg_1.a), max(~arg_1.b, 4294967295u) <= _wgslsmith_div_u32(min(arg_1.b, 48759u), ~var_0.b)));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = ~(~u_input.c) ^ vec4<u32>(select(_wgslsmith_dot_vec2_u32(~u_input.c.zy, vec2<u32>(arg_3.b, 54984u)), u_input.c.x, global0[_wgslsmith_index_u32(~19373u, 18u)]), 41464u, u_input.c.x, _wgslsmith_mult_u32(~arg_3.b, abs(reverseBits(arg_3.b))));
    var var_1 = firstLeadingBit((u_input.c.wz >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 21323u), vec2<u32>(31430u, 50724u)) % vec2<u32>(32u))) | vec2<u32>(1303u, 1u));
    let var_2 = arg_3;
    global1 = array<i32, 14>();
    return max(~_wgslsmith_dot_vec4_u32(~(u_input.c | vec4<u32>(u_input.c.x, var_2.b, 48727u, 20570u)), abs(vec4<u32>(arg_3.b, var_1.x, 46500u, var_1.x))), ~min(var_0.x, var_0.x));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<i32> {
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    return u_input.d;
}

fn func_2() -> vec4<i32> {
    return _wgslsmith_div_vec4_i32(select(firstTrailingBit(-vec4<i32>(-1i, -2173i, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], 60832i)), u_input.d, !vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(18918u, 18u)], false)), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(35255u, 18u)])), false, true)), func_5(i32(-1i) * -2147483647i, Struct_1(!any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 18u)])), ~u_input.c.x, 600f), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, ~42108u), 18u)], func_4(_wgslsmith_div_i32(41554i, -1741i), func_3(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], Struct_1(true, u_input.c.x, -729f)), min(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], u_input.b.x, -71853i), vec4<i32>(-2147483647i, u_input.d.x, global1[_wgslsmith_index_u32(0u, 14u)], u_input.b.x)), Struct_1(global0[_wgslsmith_index_u32(1u, 18u)], u_input.c.x, -311f)), 1753f), -_wgslsmith_div_vec3_i32(reverseBits(u_input.a), u_input.b << (vec3<u32>(12639u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<i32> {
    global1 = array<i32, 14>();
    var var_0 = ~u_input.a;
    let var_1 = u_input.c | u_input.c;
    var var_2 = arg_1;
    let var_3 = arg_1;
    return min(min(-u_input.d, func_2() ^ _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.d.x, 2147483647i, global1[_wgslsmith_index_u32(1u, 14u)]), vec4<i32>(-2147483647i, arg_0.x, 0i, 1562i)), vec4<i32>(-28767i, var_0.x, global1[_wgslsmith_index_u32(var_2.b, 14u)], 2147483647i))), _wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(~(-1i), 1i, _wgslsmith_dot_vec2_i32(arg_0, var_0.yx), 0i | _wgslsmith_mult_i32(arg_0.x, 19183i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~firstTrailingBit(u_input.c.x), ~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x)) ^ firstLeadingBit(114839u), 18u)], _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c) & max(~1u, ~u_input.c.x), _wgslsmith_f_op_f32(round(218f)));
    global0 = array<bool, 18>();
    let var_1 = var_0;
    let var_2 = max(0u, ~_wgslsmith_sub_u32(var_1.b, ~0u));
    var var_3 = Struct_1(any(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.b, 18u)], var_1.a, true), vec3<bool>(!var_0.a, !var_0.a, var_0.a), select(vec3<bool>(false, var_0.a, var_1.a), vec3<bool>(var_0.a, true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.b, 18u)], var_0.a, global0[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec3<bool>(false, var_0.a, false), vec3<bool>(false, var_0.a, true))))), var_0.b, _wgslsmith_f_op_f32(-var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(u_input.a.yx, var_1));
}

