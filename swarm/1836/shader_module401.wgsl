struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<vec3<u32>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1595f)));
    global1 = array<Struct_1, 22>();
    let var_1 = vec2<i32>(u_input.b.x, -53738i);
    var_0 = 1036f;
    let var_2 = _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(~(~_wgslsmith_mod_i32(var_1.x, u_input.b.x)), (_wgslsmith_mod_i32(-1812i, 2147483647i) & _wgslsmith_dot_vec2_i32(u_input.c.xz, var_1)) >> (_wgslsmith_div_u32(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), u_input.a.x) % 32u), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.d, 1i)), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(vec2<u32>(select(global0[_wgslsmith_index_u32(u_input.e, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], true), global0[_wgslsmith_index_u32(select(u_input.a.x, 1u, true), 16u)])), u_input.a), u_input.e, 1f, 4294967295u);
}

