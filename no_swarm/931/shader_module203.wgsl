struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, true, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> i32 {
    global1 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(27392u, 4u)], _wgslsmith_mult_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(u_input.a | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)]), 4u)], 4u)], _wgslsmith_add_u32(u_input.a & 1u, _wgslsmith_mod_u32(0u, 1u))), firstLeadingBit(1u))), 4u)], 1u)];
    var var_0 = -941f;
    var var_1 = arg_1;
    return (_wgslsmith_mult_i32(_wgslsmith_mult_i32(26515i, max(arg_0, 2147483647i)), -17494i) & 1i) << (87376u % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<i32>) -> u32 {
    let var_0 = vec4<bool>(true && !(!(!arg_2.x)), arg_0.b, arg_2.x, abs(func_3(2147483647i, vec4<f32>(-883f, 1474f, 223f, 708f)) | arg_0.c.x) >= firstLeadingBit(i32(-1i) * -18033i));
    var var_1 = !all(vec4<bool>(any(vec4<bool>(var_0.x, arg_1, var_0.x, true)), arg_0.b, any(!global2[_wgslsmith_index_u32(u_input.a, 1u)]), true));
    let var_2 = vec4<bool>(true & arg_1, -20975i >= ~(~arg_0.c.x), true, arg_0.b);
    global0 = array<u32, 4>();
    let var_3 = Struct_2(Struct_1(firstLeadingBit(vec2<u32>(4959u, 58007u))));
    return u_input.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    let var_0 = arg_1.a;
    let var_1 = any(arg_0.xwx);
    let var_2 = reverseBits(abs(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, -52125i, 0i, 2147483647i), vec4<i32>(78678i, 1i, 2147483647i, 2147483647i)) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, -15265i, -21237i), vec4<i32>(-1i, -39113i, 1i, -8066i), vec4<i32>(2147483647i, 50888i, 34879i, -2147483647i))));
    global0 = array<u32, 4>();
    var var_3 = ~firstTrailingBit(select(vec3<u32>(68661u << (u_input.a % 32u), func_2(Struct_3(var_2.www, var_1, vec2<i32>(1i, -1i)), true, vec2<bool>(global1.x, false), vec2<i32>(var_2.x, var_2.x)), var_0.a.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(54655u, 0u, global0[_wgslsmith_index_u32(var_0.a.x, 4u)]), ~vec3<u32>(arg_1.a.a.x, 0u, 0u)), !var_1));
    return any(vec4<bool>(arg_0.x, all(vec2<bool>(global1.x, global1.x)), all(select(vec2<bool>(global1.x, false), vec2<bool>(var_1, true), vec2<bool>(global1.x, true))), any(vec4<bool>(false, false, global1.x, false)))) | any(select(!vec4<bool>(arg_0.x, true, true, var_1), vec4<bool>(any(vec2<bool>(false, false)), !arg_0.x, true, global1.x), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 1>();
    global1 = vec3<bool>(all(select(global2[_wgslsmith_index_u32(abs(u_input.a ^ u_input.a), 1u)], vec3<bool>(func_1(vec4<bool>(false, true, true, true), Struct_2(Struct_1(vec2<u32>(65277u, 0u)))), global1.x | false, all(global1.zy)), global1.x)), any(vec2<bool>(any(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 4u)] >> (global0[_wgslsmith_index_u32(45598u, 4u)] % 32u), 4u)], 1u)]), global1.x)), (u_input.a <= (~u_input.a >> (global0[_wgslsmith_index_u32(~97866u, 4u)] % 32u))) || !global1.x);
    global0 = array<u32, 4>();
    let var_0 = global1.yx;
    global0 = array<u32, 4>();
    let var_1 = 1u;
    var var_2 = _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(2147483647i, -_wgslsmith_mult_i32(-65488i, abs(10367i))));
    var var_3 = Struct_1(~max(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1, 4294967295u), vec2<u32>(var_1, global0[_wgslsmith_index_u32(0u, 4u)])), ~vec2<u32>(0u, 0u), vec2<u32>(0u, 0u)), reverseBits(~vec2<u32>(40258u, u_input.a))));
    var_2 = _wgslsmith_clamp_i32(50126i, -1i, -abs(21922i) ^ _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(75487i, 56527i), vec2<i32>(-55879i, 2147483647i)), vec2<i32>(41160i, 1i)), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(22678u, abs(select(vec3<u32>(1u, 16963u, u_input.a) | vec3<u32>(global0[_wgslsmith_index_u32(var_3.a.x, 4u)], 20138u, 1u), firstLeadingBit(vec3<u32>(u_input.a, 63178u, var_1)), false)) ^ ~(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6506u, 4u)], 4u)], 76258u) & ~vec3<u32>(4294967295u, 0u, 58754u)));
}

