struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(54889u, 4294967295u, 4294967295u), vec3<u32>(49309u, 1u, 37816u), vec3<u32>(1u, 56652u, 22799u), vec3<u32>(0u, 1u, 20670u), vec3<u32>(4294967295u, 12992u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 29817u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 106716u, 4294967295u), vec3<u32>(39836u, 1320u, 42258u));

var<private> global1: array<f32, 24> = array<f32, 24>(-1544f, 1298f, -857f, 358f, 1189f, 912f, -887f, -2452f, 1000f, 1175f, 1386f, -858f, 400f, -800f, 453f, 373f, 874f, -1891f, 1000f, -2271f, -149f, -1939f, 1688f, 133f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = ~reverseBits(abs(~(u_input.c | u_input.c)));
    let var_1 = Struct_2(4294967295u);
    let var_2 = ~97727u;
    var var_3 = var_1;
    let var_4 = vec2<bool>(false, true);
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.c), ~0u), ~1u), var_2);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = vec2<u32>(~min(2855u, ~0u), ~(arg_0.a ^ select(arg_3.a, firstTrailingBit(u_input.c), true)));
    let var_1 = Struct_2(_wgslsmith_div_u32(arg_3.a, 31253u));
    let var_2 = Struct_2(21483u);
    var_0 = ~select(_wgslsmith_div_vec2_u32(~(vec2<u32>(arg_3.a, u_input.c) ^ vec2<u32>(u_input.c, 131058u)), ~vec2<u32>(41698u, 1u) << (abs(vec2<u32>(arg_3.a, arg_0.a)) % vec2<u32>(32u))), vec2<u32>(4294967295u, 12952u), true);
    var var_3 = arg_0;
    return StorageBuffer(4294967295u, _wgslsmith_mult_i32(arg_2.x << (func_2(abs(vec4<i32>(-19074i, arg_1, arg_1, u_input.a.x))) % 32u), ~0i), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(39887u, 10u)], ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.c), 10u)]), ~min(_wgslsmith_add_vec3_u32(vec3<u32>(5094u, 84426u, 40311u), global0[_wgslsmith_index_u32(0u, 10u)]), global0[_wgslsmith_index_u32(1u, 10u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 10>();
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    var var_0 = ~4294967295u >> (firstTrailingBit(abs(~u_input.c) | 72807u) % 32u);
    let x = u_input.a;
    s_output = func_1(Struct_2(~u_input.c), u_input.b, -(-u_input.a | u_input.a), Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 26603u, u_input.c, 9392u), abs(vec4<u32>(33032u, 17540u, 51981u, u_input.c))) & _wgslsmith_div_u32(u_input.c, 42703u)));
}

