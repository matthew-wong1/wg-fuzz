struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: array<bool, 12>;

var<private> global2: array<Struct_2, 26>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(1u ^ select(max(select(4294967295u, 19598u, global1[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_sub_u32(1u, 0u)), 1u, true));
    global2 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, ~_wgslsmith_dot_vec3_i32(u_input.c.zzy, vec3<i32>(23996i, -2147483647i, 494i)), -2147483647i, -_wgslsmith_add_i32(-u_input.c.x, _wgslsmith_mod_i32(1i, u_input.b))), 866f);
}

