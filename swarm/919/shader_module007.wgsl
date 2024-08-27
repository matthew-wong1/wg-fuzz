struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: array<bool, 27> = array<bool, 27>(false, true, false, true, false, true, false, true, false, false, false, true, true, true, false, true, false, true, false, true, true, true, false, false, false, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec4<bool> {
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    let var_0 = firstTrailingBit(u_input.b);
    var var_1 = var_0.x;
    global1 = array<bool, 27>();
    return select(!vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.d, 4294967295u), 27u)], all(select(vec4<bool>(global1[_wgslsmith_index_u32(64777u, 27u)], false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(60879u, 27u)], false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], true, false, global1[_wgslsmith_index_u32(10549u, 27u)]))), global1[_wgslsmith_index_u32(47626u >> (0u % 32u), 27u)] || (true | global1[_wgslsmith_index_u32(72113u, 27u)]), true), vec4<bool>(false, global1[_wgslsmith_index_u32(~var_0.x, 27u)], all(vec4<bool>(true, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], false, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)])), true, true & global1[_wgslsmith_index_u32(88689u, 27u)])), false), false);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    let var_0 = vec4<bool>(any(!func_2().wy), !global1[_wgslsmith_index_u32(3489u, 27u)], false, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(arg_0.b >> (u_input.b.x % 32u))), 14527u), 27u)]);
    var var_1 = arg_0;
    let var_2 = Struct_1(~(u_input.d | 4294967295u) ^ _wgslsmith_clamp_u32(1u, var_1.a, _wgslsmith_sub_u32(~72731u, ~arg_0.a)), ~_wgslsmith_sub_u32(arg_0.b, select(32730u, 1u, global1[_wgslsmith_index_u32(83326u, 27u)]) & (4294967295u << (var_1.a % 32u))));
    var var_3 = 34994u;
    var_3 = ~var_2.b;
    return _wgslsmith_dot_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(1i, arg_1.x, 28043i, arg_1.x))), (-vec4<i32>(1i, -3365i, 2147483647i, -41252i) >> (u_input.b % vec4<u32>(32u))) & ~(-vec4<i32>(arg_1.x, arg_1.x, -1i, 0i))) >> (4294967295u % 32u);
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    var var_0 = (~26782u << (~_wgslsmith_dot_vec4_u32(~vec4<u32>(41700u, 13785u, u_input.d, 1u), vec4<u32>(u_input.b.x, 50766u, u_input.b.x, 68432u)) % 32u)) > 1u;
    var var_1 = u_input.b.x << (~u_input.d % 32u);
    global1 = array<bool, 27>();
    var var_2 = !select(arg_0, !select(!arg_0, select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(u_input.d, 27u)], arg_0.x), arg_0, arg_0), select(vec4<bool>(global1[_wgslsmith_index_u32(70320u, 27u)], true, global1[_wgslsmith_index_u32(12346u, 27u)], arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(38524u, 27u)], false, global1[_wgslsmith_index_u32(14923u, 27u)], arg_0.x), false)), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], true, false, arg_0.x), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], true, true, global1[_wgslsmith_index_u32(32972u, 27u)])), select(func_2(), arg_0, arg_0), vec4<bool>(all(vec2<bool>(arg_0.x, true)), u_input.d <= 30494u, true, false)));
    var_0 = !(!(0u != u_input.b.x));
    return StorageBuffer(u_input.b.x, ~(~u_input.d), ~reverseBits(min(~u_input.b, u_input.b)), vec3<i32>(~11749i, ~abs(19843i) & func_3(Struct_1(u_input.d, u_input.d), -vec2<i32>(-2147483647i, -1i)), 0i), 10553i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    let var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(countOneBits(u_input.b), ~vec4<u32>(50496u, 56051u, 1u, 0u)), u_input.d), u_input.c.x), 25180u);
    global0 = array<Struct_2, 11>();
    let var_1 = -13577i;
    let x = u_input.a;
    s_output = func_1(!vec4<bool>(global1[_wgslsmith_index_u32(max(~1u, var_0.a >> (var_0.b % 32u)), 27u)], !(u_input.d == 37070u), global1[_wgslsmith_index_u32(0u, 27u)], !(!global1[_wgslsmith_index_u32(var_0.a, 27u)])));
}

