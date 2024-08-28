struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<f32>(-1238f, -216f, 348f), vec4<bool>(false, true, false, false)), Struct_1(vec3<f32>(-254f, 149f, -360f), vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(-309f, -600f, 1000f), vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(708f, 1470f, -1224f), vec4<bool>(true, false, true, false)), Struct_1(vec3<f32>(-162f, -1287f, -622f), vec4<bool>(false, true, true, true)), Struct_1(vec3<f32>(365f, 283f, -608f), vec4<bool>(true, true, false, false)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> i32 {
    global3 = array<Struct_1, 6>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = ~abs(~(~u_input.c));
    let var_1 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b.x), u_input.c)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 48261u, var_0.x), vec4<u32>(0u, u_input.c.x, 5708u, var_0.x)) << (23528u % 32u), var_0.x, reverseBits(30454u))) << (min(17220u, abs(u_input.d) ^ 19628u) % 32u);
    return abs(-2147483647i);
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<u32> {
    let var_0 = any(global2.b);
    var var_1 = min(~(-2147483647i), u_input.e.x);
    var var_2 = global2.b;
    var_1 = u_input.e.x ^ ~func_2();
    var var_3 = Struct_1(global2.a, !(!select(!vec4<bool>(global2.b.x, var_2.x, false, var_2.x), global2.b, global2.b)));
    return vec3<u32>(u_input.d >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 1u), 1u) % 32u), u_input.d, ~u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_mult_i32(u_input.a.x, max(25311i, u_input.a.x)) == 15156i) && !(!global2.b.x);
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x << (0u % 32u), min(u_input.b.x, 0u), ~0u) << (u_input.c % vec3<u32>(32u)), ~func_1(914f, global2.a.x) << (~(~u_input.c) % vec3<u32>(32u))), 6u)];
    global0 = array<Struct_1, 7>();
    global3 = array<Struct_1, 6>();
    let var_2 = u_input.c.x;
    var var_3 = _wgslsmith_div_u32(4294967295u & ~_wgslsmith_mult_u32(0u ^ u_input.b.x, ~1u), abs(u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, vec4<u32>(var_2, (4294967295u << (~var_2 % 32u)) | 57782u, var_2, ~(max(var_2, u_input.b.x) << (80586u % 32u))));
}

