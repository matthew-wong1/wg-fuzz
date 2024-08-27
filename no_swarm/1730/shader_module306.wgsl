struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 23624u, 26435u);

var<private> global1: array<i32, 7> = array<i32, 7>(-24894i, 2147483647i, 0i, -1i, i32(-2147483648), -58940i, -1i);

var<private> global2: bool;

var<private> global3: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true));

var<private> global4: vec3<f32> = vec3<f32>(-1220f, 1000f, 1573f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, global0.x), 7u)], -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d.x, u_input.d.x, 18380i, global1[_wgslsmith_index_u32(global0.x, 7u)]), vec4<i32>(-7253i, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(u_input.b.x, 7u)], 1i) >> (vec4<u32>(global0.x, 1u, u_input.c.x, 1u) % vec4<u32>(32u)), vec4<i32>(1i, -2147483647i, -2147483647i, u_input.d.x) >> (vec4<u32>(4294967295u, 36772u, 102929u, 43499u) % vec4<u32>(32u))), abs(-vec4<i32>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(39537u, 7u)], -1i, global1[_wgslsmith_index_u32(1u, 7u)]))));
    var var_1 = 64282u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(~(~vec3<i32>(-1i, -79619i, -13804i) | ~vec3<i32>(u_input.d.x, 0i, 2147483647i)), ~vec3<i32>(0i, global1[_wgslsmith_index_u32(55775u, 7u)], var_0)), u_input.d.x, _wgslsmith_div_u32(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 52227u, 4294967295u), u_input.b), ~25075u, false), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x ^ 11289u, ~u_input.e), 87213u)));
}

