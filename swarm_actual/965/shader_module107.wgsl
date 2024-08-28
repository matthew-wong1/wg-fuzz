struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: array<u32, 13>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 470i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i)), vec4<i32>(0i, -34366i, 0i, 1i) << (u_input.d % vec4<u32>(32u))) >> (vec4<u32>(min(reverseBits(1u), 1u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.c), 47355u), select(~u_input.c, max(0u, 1u), true), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(16538u, u_input.c), 13u)]) % vec4<u32>(32u)), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x));
}

