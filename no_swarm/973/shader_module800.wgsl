struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec4_u32(reverseBits(u_input.b), abs(~(vec4<u32>(u_input.b.x, 22069u, 95134u, 23657u) | u_input.b)));
    global0 = array<vec3<u32>, 12>();
    global0 = array<vec3<u32>, 12>();
    global0 = array<vec3<u32>, 12>();
    var var_1 = max(vec3<i32>(68057i, -1i, 22035i), ~vec3<i32>(reverseBits(1i), firstTrailingBit(u_input.c), ~reverseBits(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(-2147483647i, var_1.x)), -(~386i), ~var_1.x, -u_input.c), ~(~(-vec4<i32>(22333i, -29905i, 1i, u_input.c)))), u_input.c, ~vec2<u32>((u_input.b.x ^ 0u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(51035u, 25406u), vec2<u32>(u_input.a.x, u_input.b.x)) % 32u), ~firstLeadingBit(u_input.a.x)));
}

