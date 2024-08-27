struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<f32>, 27>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> vec3<bool> {
    return !vec3<bool>(global0.x, true, global0.x);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global0 = vec2<bool>(all(!vec4<bool>(true, global0.x, true, false)), false);
    let var_0 = Struct_2(Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 61874u, u_input.a), vec3<u32>(u_input.a, 1797u, u_input.a)) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 52523u, 24525u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 0u)), u_input.a, u_input.a) % vec3<u32>(32u)), 51917i, !(!select(vec2<bool>(false, arg_0.x), arg_0.xx, global0.x))), !select(select(vec3<bool>(arg_0.x, arg_0.x, global0.x), !arg_0, select(arg_0, vec3<bool>(false, true, arg_0.x), vec3<bool>(global0.x, arg_0.x, true))), func_2(), global0.x));
    var var_1 = var_0.b;
    var var_2 = !var_0.b.x;
    let var_3 = -countOneBits(~firstLeadingBit(var_0.a.b));
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> i32 {
    var var_0 = arg_0.a.c.x;
    let var_1 = func_1(arg_0.b).a;
    var_0 = true;
    global1 = array<vec3<f32>, 27>();
    let var_2 = Struct_2(arg_0.a, arg_0.b);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 27>();
    var var_0 = vec2<bool>(global0.x, true);
    global0 = select(select(vec2<bool>(false, global0.x), vec2<bool>(true, true), select(!select(vec2<bool>(global0.x, var_0.x), vec2<bool>(var_0.x, false), var_0.x), select(vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), false), global0.x)), vec2<bool>(global0.x && true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, global0.x, false)), false)), vec2<bool>(true, true), true));
    let var_1 = vec4<i32>(_wgslsmith_div_i32(-41406i, -func_3(func_1(vec3<bool>(true, true, var_0.x)), 1i)), ~func_1(vec3<bool>(all(vec3<bool>(var_0.x, true, global0.x)), func_1(vec3<bool>(false, true, true)).a.c.x, var_0.x)).a.b, 1i, 4663i);
    let var_2 = -vec4<i32>(~_wgslsmith_mod_i32(var_1.x, firstLeadingBit(var_1.x)), ~(~(5057i >> (0u % 32u))), ~firstLeadingBit(-8468i), _wgslsmith_mod_i32(func_1(func_1(vec3<bool>(false, false, var_0.x)).b).a.b, 28043i));
    global1 = array<vec3<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec4<u32>(2260u, u_input.a & u_input.a, 1u, 0u)), ~(~_wgslsmith_mult_u32(~u_input.a, ~u_input.a)), 67687u, _wgslsmith_add_u32(select(1u, 5333u, !var_0.x), 4294967295u), 1u);
}

