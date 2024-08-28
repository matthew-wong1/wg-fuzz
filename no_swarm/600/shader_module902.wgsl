struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~u_input.a), firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 1u, 46652u, 40124u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 1u, 5767u))) ^ vec4<u32>(0u, ~0u, 25324u, ~4294967295u)), firstLeadingBit(~(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(30941u, 24875u)) ^ ~(~vec2<u32>(19634u, u_input.a))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.d, -52157i), -16284i, -38255i, -10962i), abs(vec4<i32>(-2147483647i, u_input.b, u_input.d, -98658i)))));
}

