struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, any(vec3<bool>(true, true, true)), true, !select(true, true, true));
    var var_1 = !vec4<bool>(any(!(!var_0.ww)), true, true, any(vec2<bool>(false, true)) || all(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, false), var_0.x)));
    var_1 = !(!vec4<bool>(var_1.x, true, true, var_0.x));
    var_1 = !(!var_0);
    var_1 = vec4<bool>(true, var_0.x, u_input.a != _wgslsmith_add_i32(firstLeadingBit(1i), _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(u_input.a, 0i))), !var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(440f, vec2<u32>(1u, 1u), min(abs(~1u), firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 14452u, 16758u), vec3<u32>(1u, 75395u, 1u)), firstTrailingBit(vec3<u32>(34568u, 15453u, 0u))))), 2844u, 1i);
}

