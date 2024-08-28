struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 27816u);

var<private> global1: array<f32, 18> = array<f32, 18>(853f, 689f, 415f, -1197f, 796f, 235f, -871f, 329f, -889f, -1000f, 983f, -2212f, -297f, 707f, -770f, -622f, -1218f, -1000f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(20237u, _wgslsmith_dot_vec2_u32(vec2<u32>(26828u, 4294967295u), vec2<u32>(u_input.a.x, 1u)), 1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~u_input.a.yz, u_input.a.zz), global0.x >> (_wgslsmith_clamp_u32(4294967295u, 60900u, 9849u) % 32u))), ~(vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), 1u, select(0u, arg_2, true), 4294967295u) << (reverseBits(abs(vec4<u32>(8374u, 4294967295u, global0.x, 44169u))) % vec4<u32>(32u))));
    global1 = array<f32, 18>();
    global0 = vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(7076u, 4294967295u)), u_input.a.yz)), _wgslsmith_sub_u32(countOneBits(_wgslsmith_clamp_u32(global0.x, _wgslsmith_mod_u32(48924u, u_input.a.x), ~98402u)), _wgslsmith_div_u32(min(global0.x >> (var_0.x % 32u), ~34111u), ~37936u)));
    var var_1 = Struct_3(arg_0.a);
    let var_2 = 1624f;
    return var_0;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<u32>) -> StorageBuffer {
    let var_0 = 37687u;
    var var_1 = abs(u_input.d.yx);
    global0 = u_input.a.zz;
    var var_2 = Struct_3(!select(827f != _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 18u)])), 15956u >= var_0, arg_0.x));
    var_1 = countOneBits(u_input.b.xw);
    return StorageBuffer(u_input.d.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(vec4<bool>(!(4294967295u <= _wgslsmith_div_u32(u_input.a.x, global0.x)), true, true, true), 0u << (~abs(global0.x) % 32u), firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(15163u, global0.x, 0u, 4294967295u), func_1(Struct_1(true, 1i), Struct_2(0i, vec3<f32>(1365f, -1484f, -1000f), Struct_1(true, u_input.d.x)), 0u))));
}

