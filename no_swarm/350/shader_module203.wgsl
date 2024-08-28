struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(28413u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(12912u, 7959u), vec2<u32>(1u, 54820u), vec2<u32>(15881u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(72547u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(38033u, 4294967295u), vec2<u32>(8792u, 12120u), vec2<u32>(1u, 4294967295u), vec2<u32>(37153u, 47688u), vec2<u32>(0u, 1u), vec2<u32>(7320u, 67553u), vec2<u32>(23598u, 3942u), vec2<u32>(37737u, 34394u), vec2<u32>(42759u, 0u), vec2<u32>(23128u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 48653u), vec2<u32>(1u, 10447u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u));

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-489f, -437f, -229f), vec3<f32>(1247f, -721f, 1000f), vec3<f32>(734f, 572f, -1279f), vec3<f32>(272f, -1015f, 633f), vec3<f32>(-1599f, -1977f, -1000f), vec3<f32>(733f, 205f, -1000f), vec3<f32>(147f, 454f, 1000f), vec3<f32>(-246f, -1529f, -749f), vec3<f32>(-1992f, -590f, -1204f), vec3<f32>(-1085f, 761f, 556f), vec3<f32>(-2367f, -469f, -1161f), vec3<f32>(984f, 1438f, -294f), vec3<f32>(338f, 650f, 553f), vec3<f32>(-1000f, -531f, 377f), vec3<f32>(409f, 304f, -258f), vec3<f32>(1415f, -102f, 807f), vec3<f32>(-318f, -332f, 1119f), vec3<f32>(-601f, 1333f, 1819f), vec3<f32>(-194f, 1348f, -2671f), vec3<f32>(1000f, -240f, 1075f), vec3<f32>(-2430f, 2565f, 703f), vec3<f32>(1450f, -522f, 428f), vec3<f32>(-1732f, -515f, -720f), vec3<f32>(1000f, -1306f, 459f), vec3<f32>(-437f, -393f, 2423f));

var<private> global3: array<vec2<i32>, 10>;

var<private> global4: array<i32, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(79436u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_clamp_u32(78135u, 65386u, 35219u)), 1u), abs(~abs(0u)), ~(~(~u_input.e.x))), countOneBits(~(~vec3<i32>(1i, -1i, 1i)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(29942u, 0u, u_input.e.x), ~u_input.a.zxz) % vec3<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(0u, 22u)], ~u_input.c), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(u_input.b, 22u)] >> (1u % 32u), -u_input.c) ^ -1i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.e.x, 22u)], global4[_wgslsmith_index_u32(u_input.b, 22u)], u_input.c, 0i), vec4<i32>(2147483647i, global4[_wgslsmith_index_u32(u_input.b, 22u)], -2147483647i, 19902i)), _wgslsmith_sub_vec4_i32(vec4<i32>(43943i, -2147483647i, -9067i, u_input.c), vec4<i32>(-10517i, global4[_wgslsmith_index_u32(1u, 22u)], 29543i, 8028i))), -1i));
}

