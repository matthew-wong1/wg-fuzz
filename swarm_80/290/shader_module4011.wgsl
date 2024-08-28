struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(1i, 24979i), vec2<i32>(-28106i, -1677i), vec2<i32>(19234i, -25667i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-27914i, 1i), vec2<i32>(15959i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(22280i, 28836i), vec2<i32>(18921i, -29343i), vec2<i32>(-7649i, 2147483647i), vec2<i32>(i32(-2147483648), 48611i), vec2<i32>(-7648i, 1i), vec2<i32>(-1i, 2147483647i));

var<private> global2: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(global2.c.c.yy, global1[_wgslsmith_index_u32(22371u, 14u)]);
    var var_1 = 3928i;
    var_1 = global0.a.c.x;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(firstTrailingBit(~0u), _wgslsmith_mult_u32(min(_wgslsmith_mod_u32(7259u, 1u), 1u), 1u), ~12181u), ~_wgslsmith_sub_u32(3068u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(28121u, 60212u), vec2<u32>(0u, 5873u)), firstLeadingBit(1u))));
    var var_3 = min(_wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 35602u, var_2), vec3<u32>(var_2, var_2, var_2), vec3<u32>(1u, 55546u, var_2)) & vec3<u32>(53573u, var_2, 5747u)), _wgslsmith_add_vec3_u32(abs(~vec3<u32>(72565u, 16842u, var_2)), vec3<u32>(1u << (var_2 % 32u), ~var_2, var_2 ^ 50450u))), ~(~vec3<u32>(var_2, var_2, 18333u) << (abs(vec3<u32>(1u, var_2, 33692u)) % vec3<u32>(32u))) | vec3<u32>(var_2, ~(~1u), var_2));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(0i, var_0.x), min(global0.a.c.x, 1i), _wgslsmith_mult_i32(var_0.x, global0.a.c.x), 1i), -(~(vec4<i32>(-2147483647i, var_0.x, global0.c, 1i) | vec4<i32>(global2.d.c.x, global2.a, u_input.a, global2.a)))));
}

