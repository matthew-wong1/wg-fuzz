struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, true, false, false);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    let var_0 = ~(abs(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)), select(vec3<u32>(4294967295u, 1u, 103874u), vec3<u32>(34315u, 23077u, u_input.b), false))) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.b), ~abs(vec3<u32>(1u, 0u, 0u)), vec3<u32>(u_input.b, u_input.b, 1u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(~(vec3<i32>(10550i, 19166i, u_input.a) ^ vec3<i32>(1i, 0i, 0i)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(70801i, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(-4245i, u_input.a, u_input.a)), -vec3<i32>(24251i, 2948i, -19395i))) << (var_0 % vec3<u32>(32u)), -u_input.a);
}

