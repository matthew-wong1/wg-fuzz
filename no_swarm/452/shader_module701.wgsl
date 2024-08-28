struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(i32(-2147483648), 13419i, 2147483647i, 4881i), vec4<i32>(-1i, 25820i, 1i, 41892i), vec4<i32>(27180i, 42969i, -7041i, 0i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(-1i, -35067i, i32(-2147483648), 38490i), vec4<i32>(-1i, 0i, -1i, -20639i), vec4<i32>(0i, -18338i, -1i, -71676i), vec4<i32>(-21473i, i32(-2147483648), 1i, 0i), vec4<i32>(-7426i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 0i, 29931i, i32(-2147483648)), vec4<i32>(12926i, 33251i, i32(-2147483648), -13591i), vec4<i32>(3949i, -56392i, 32322i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, -39154i, -18242i), vec4<i32>(-1i, -9478i, 54256i, 13722i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec3<i32>) -> vec3<i32> {
    global0 = array<vec4<i32>, 14>();
    let var_0 = select(~select(global0[_wgslsmith_index_u32(40533u, 14u)], u_input.b, any(vec2<bool>(true, true))), _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(54117u, 14u)], u_input.b), 2431i >= -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(39920i, 0i, arg_0.x)), u_input.e.x));
    let var_1 = ~(vec4<u32>(abs(u_input.d), 82027u, ~firstTrailingBit(27775u), 21682u) | vec4<u32>(22733u, 26627u, ~(~9198u), u_input.d));
    var var_2 = _wgslsmith_mod_u32(var_1.x, ~u_input.a.x << (u_input.d % 32u));
    global0 = array<vec4<i32>, 14>();
    return _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(min(u_input.e, vec3<i32>(arg_0.x, 2147483647i, var_0.x)), -var_0.wyy), ~_wgslsmith_add_vec3_i32(vec3<i32>(1i, var_0.x >> (4294967295u % 32u), arg_0.x), _wgslsmith_add_vec3_i32(-var_0.xzx, ~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(u_input.e));
}

