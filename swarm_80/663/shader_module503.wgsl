struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(16654u), 4294967295u, ~(~1u)), ~(vec3<u32>(30735u, _wgslsmith_sub_u32(48974u, 23586u), select(4294967295u, 31829u, global0[_wgslsmith_index_u32(1u, 31u)])) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    global0 = array<bool, 31>();
    let var_1 = Struct_2(-_wgslsmith_div_vec2_i32(~vec2<i32>(-68429i, u_input.d.x), _wgslsmith_mult_vec2_i32(u_input.b.zy, _wgslsmith_sub_vec2_i32(u_input.c.xy, vec2<i32>(75361i, u_input.a)))), Struct_1(u_input.c.x));
    let var_2 = vec2<u32>(select(countOneBits(_wgslsmith_sub_u32(~1u, ~var_0.x)), ~_wgslsmith_mult_u32(var_0.x, 1023u) & 48251u, !any(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)]))), _wgslsmith_div_u32(firstTrailingBit(64293u), min(~var_0.x ^ 39951u, ~select(17471u, 4294967295u, true))));
    let var_3 = ~var_0.x;
    global0 = array<bool, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3));
}

