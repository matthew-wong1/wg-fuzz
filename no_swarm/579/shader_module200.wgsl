struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(vec4<u32>(4294967295u, arg_0, abs(1u & arg_0), 55908u), abs(~(arg_0 | ~36884u)));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    return u_input.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = Struct_1(min(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b, 7542u, 7590u, arg_0.a.x) ^ u_input.d, ~vec4<u32>(0u, u_input.d.x, u_input.a, u_input.b)), vec4<u32>(1u, _wgslsmith_mult_u32(arg_0.b, 44816u), ~68596u, 4294967295u)), select(~(~vec4<u32>(arg_0.a.x, u_input.a, arg_0.a.x, arg_0.a.x)), ~u_input.d, true)), ~1u);
    return firstLeadingBit(~(~u_input.b));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 11>();
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~(~arg_3.a), vec4<u32>(~12114u, 34152u & u_input.d.x, u_input.a, ~arg_3.b)), select(~abs(u_input.d), vec4<u32>(25964u, 1u, ~u_input.a, u_input.d.x), arg_0)), arg_3.b);
    let var_1 = Struct_1(vec4<u32>(9777u | _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.b), ~var_0.b), u_input.b, 0u ^ (u_input.b ^ min(1u, var_0.b)), func_4(global0[_wgslsmith_index_u32(min(~var_0.a.x, u_input.a >> (var_0.a.x % 32u)), 11u)], _wgslsmith_sub_i32(arg_2, func_3(u_input.b, arg_3)))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_3.b, 25700u, var_0.a.x, 72974u) >> (~arg_3.a % vec4<u32>(32u)), ~abs(var_0.a)), arg_3.a));
    global0 = array<Struct_1, 11>();
    var var_2 = Struct_1(vec4<u32>(var_1.a.x, 4294967295u, var_0.a.x, ~34215u), var_1.b);
    return ~var_0.b;
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_0 = global0[_wgslsmith_index_u32(25853u ^ ((func_2(select(false, true, false), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 1i), u_input.c.yyx), 0i, Struct_1(vec4<u32>(u_input.b, u_input.d.x, 9279u, 1u), 0u)) ^ ~_wgslsmith_sub_u32(u_input.d.x, u_input.a)) << (4294967295u % 32u)), 11u)];
    global0 = array<Struct_1, 11>();
    var var_1 = vec4<bool>(!(true & select(all(vec3<bool>(false, false, true)), false, all(vec3<bool>(true, true, true)))), countOneBits(abs(-2147483647i >> (var_0.b % 32u))) <= max(-(~u_input.c.x), -37164i), false, true);
    return StorageBuffer(~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.wz;
    global0 = array<Struct_1, 11>();
    let var_1 = Struct_1(abs(vec4<u32>(_wgslsmith_add_u32(42245u, u_input.b), _wgslsmith_add_u32(0u, u_input.a), 4294967295u, 15605u)) & u_input.d, ~(u_input.b << ((u_input.d.x >> ((u_input.b >> (u_input.a % 32u)) % 32u)) % 32u)));
    global0 = array<Struct_1, 11>();
    let var_2 = true;
    let x = u_input.a;
    s_output = func_1();
}

