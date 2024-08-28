struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
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

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec4<bool>, 32>;

var<private> global2: array<vec4<f32>, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> u32 {
    global1 = array<vec4<bool>, 32>();
    global0 = array<Struct_1, 18>();
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.d.xwz, vec3<u32>(abs(arg_3.a), 41194u, 1u)), -1554f, true);
    var var_1 = arg_3.a << (_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, arg_1), select(reverseBits(50868u), ~4294967295u, arg_3.c))) % 32u);
    global1 = array<vec4<bool>, 32>();
    return ~4294967295u;
}

fn func_1() -> u32 {
    var var_0 = firstTrailingBit(32289u << (~_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, func_2(-2052f, 4294967295u, 32995i, global0[_wgslsmith_index_u32(4294967295u, 18u)])) % 32u));
    let var_1 = Struct_1(u_input.a.x, -418f, true);
    let var_2 = global0[_wgslsmith_index_u32(u_input.c.x, 18u)];
    global2 = array<vec4<f32>, 4>();
    var_0 = ~49430u;
    return ~(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(min(vec3<u32>(0u, func_1(), u_input.a.x), vec3<u32>(4294967295u, ~52460u, u_input.c.x)) ^ _wgslsmith_add_vec3_u32(u_input.d.yyz, _wgslsmith_mod_vec3_u32(~u_input.d.xyy, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, u_input.c.x), vec3<u32>(u_input.a.x, u_input.a.x, 3568u)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), var_0.zx) >> (_wgslsmith_div_vec2_u32(~var_0.xy, vec2<u32>(u_input.c.x, var_0.x)) % vec2<u32>(32u))), var_0.zy), 18u)];
    global0 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~select(u_input.b.x, -1i, false)));
}

