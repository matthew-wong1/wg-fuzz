struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(2147483647i, 20678i, 0i));

var<private> global1: array<f32, 26> = array<f32, 26>(1288f, 653f, -662f, -227f, 753f, -441f, 1163f, 1627f, 1854f, -606f, -129f, -164f, 1299f, 1120f, -1104f, -659f, 1599f, -1116f, 2781f, -1433f, 806f, -1373f, -1302f, -837f, -987f, 660f);

var<private> global2: vec4<i32> = vec4<i32>(-7409i, -20569i, 2147483647i, i32(-2147483648));

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -(~_wgslsmith_mod_vec4_i32(vec4<i32>(-4194i, 1i, global0.a.x, global2.x) ^ vec4<i32>(global2.x, global0.a.x, global2.x, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.x, -43050i, global2.x, -1i), vec4<i32>(-2825i, 22622i, -59399i, global0.a.x), vec4<i32>(-74482i, 0i, -2147483647i, -41869i)))) ^ ~firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -1i, global0.a.x, -34302i), vec4<i32>(-2147483647i, 2147483647i, -1i, 8401i)), vec4<i32>(35013i, -36479i, 95717i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, vec2<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)), 26u)])), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-969f, -1790f), 715f))), -59401i);
}

