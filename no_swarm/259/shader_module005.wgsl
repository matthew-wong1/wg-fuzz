struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 5>();
    let var_0 = 1i < _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 0i, u_input.c.x, 21758i), select(-vec4<i32>(23300i, u_input.d, -12217i, -2147483647i), vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 2147483647i), vec4<bool>(true, true, true, true))), ~130i, 0i);
    global0 = array<Struct_4, 5>();
    global0 = array<Struct_4, 5>();
    global0 = array<Struct_4, 5>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~var_1.c.a.c, var_1.c.a.d.zw), ~((var_1.a.c >> (var_1.a.d.wz % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(var_1.b.xw, var_1.a.d.yw) % vec2<u32>(32u)))));
}

