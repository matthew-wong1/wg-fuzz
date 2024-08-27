struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 13>;

var<private> global3: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    return global1.x;
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = abs(vec2<i32>(arg_0, _wgslsmith_div_i32(_wgslsmith_div_i32(16012i, 1i), u_input.a.x) & 4378i));
    global2 = array<i32, 13>();
    global1 = ~(~vec4<u32>(~(~global1.x), _wgslsmith_clamp_u32(4294967295u, 0u, global1.x) ^ 20489u, global1.x, 54329u));
    let var_1 = vec2<f32>(593f, 2708f);
    global0 = Struct_1(!(!(!global0.a)));
    return global0.a.x;
}

fn func_1(arg_0: vec2<i32>) -> vec4<i32> {
    global1 = firstLeadingBit(~vec4<u32>(global1.x << (~8311u % 32u), func_2(), _wgslsmith_add_u32(global1.x >> (global1.x % 32u), 0u), global1.x));
    var var_0 = Struct_1(global0.a);
    global0 = Struct_1(select(!(!var_0.a), vec4<bool>(global1.x <= _wgslsmith_div_u32(4294967295u, global1.x), func_3(u_input.a.x), var_0.a.x, !(false && global0.a.x)), true));
    return vec4<i32>(abs(u_input.a.x), -30609i, -2147483647i, reverseBits(arg_0.x));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(!func_3(countOneBits(arg_0.x)), global0.a.x || true, false, global0.a.x & (0i < _wgslsmith_clamp_i32(0i, 21422i, global2[_wgslsmith_index_u32(global1.x, 13u)]))));
    let var_1 = Struct_1(vec4<bool>(!((40347u << (global1.x % 32u)) != 33777u), true, any(!(!global0.a.yw)), func_3(~(u_input.a.x & 7562i))));
    var var_2 = var_0.a;
    var var_3 = _wgslsmith_clamp_u32(4294967295u << (~4294967295u % 32u), select(~global1.x, 22411u, true), ~(~global1.x));
    global1 = vec4<u32>(global1.x, ~13806u, global1.x, 6175u);
    return var_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = ~(~abs(~(vec4<u32>(global1.x, global1.x, global1.x, global1.x) | vec4<u32>(65418u, 0u, 25013u, 1u))));
    var var_0 = _wgslsmith_div_u32(~global1.x, global1.x);
    global2 = array<i32, 13>();
    global1 = vec4<u32>(countOneBits(1u), 1u, global1.x & (4294967295u & _wgslsmith_dot_vec4_u32(~vec4<u32>(65215u, global1.x, global1.x, global1.x), min(vec4<u32>(global1.x, 15807u, global1.x, 77173u), vec4<u32>(global1.x, 4294967295u, 58051u, 51738u)))), 0u);
    var var_1 = _wgslsmith_clamp_i32(-u_input.a.x, 2853i, ~(~u_input.a.x));
    return Struct_1(vec4<bool>(arg_0.a.x, !arg_0.a.x, !any(!vec3<bool>(arg_0.a.x, false, arg_0.a.x)), select(func_4(~vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(global1.x, 13u)], -32276i, -4822i)).a.x, !(!arg_0.a.x), func_3(abs(u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_div_vec4_i32(func_1(_wgslsmith_add_vec2_i32(vec2<i32>(45926i, 0i), vec2<i32>(0i, u_input.a.x))), ~vec4<i32>(global2[_wgslsmith_index_u32(global1.x, 13u)], u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_1 = Struct_1(var_0.a);
    var var_2 = var_0;
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-898f))) - 977f))));
}

