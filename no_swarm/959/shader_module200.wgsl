struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<f32, 32> = array<f32, 32>(663f, 653f, -1337f, 1793f, 1002f, 1075f, 390f, -302f, 695f, 373f, 590f, 538f, -705f, -650f, -386f, -1355f, -1868f, 847f, -586f, 404f, 698f, 981f, 303f, 817f, -2197f, -935f, -1845f, -912f, 875f, 602f, 1000f, 425f);

var<private> global2: vec2<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 939i;
    let var_1 = true;
    var_0 = -_wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(countOneBits(1i), 2147483647i));
    global1 = array<f32, 32>();
    var var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec2_i32(u_input.a.yw, u_input.a.ww, u_input.a.wx)), u_input.c.x, _wgslsmith_add_vec3_i32(firstTrailingBit(u_input.a.zxz), abs(u_input.a.xyx)) >> (firstLeadingBit(vec3<u32>(~4294967295u, ~0u, _wgslsmith_mult_u32(0u, u_input.b.x))) % vec3<u32>(32u)));
}

