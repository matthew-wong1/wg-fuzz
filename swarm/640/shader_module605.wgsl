struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<i32, 14>;

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(455f, -823f, -1000f, -1767f), vec4<f32>(375f, 1056f, 349f, 148f), vec4<f32>(-445f, -295f, -1760f, 747f), vec4<f32>(3129f, -2167f, -798f, -1478f), vec4<f32>(-1250f, -1097f, 443f, -1000f), vec4<f32>(-406f, 684f, -1154f, -748f), vec4<f32>(127f, 1690f, -845f, -2187f), vec4<f32>(561f, -988f, -776f, -745f), vec4<f32>(474f, -463f, -746f, 1000f), vec4<f32>(-1919f, -738f, -344f, 296f), vec4<f32>(185f, -602f, -458f, 455f), vec4<f32>(1674f, -710f, -945f, -908f), vec4<f32>(-611f, -799f, 165f, 465f), vec4<f32>(-1505f, -2341f, -1311f, -481f), vec4<f32>(388f, -1000f, -1658f, -505f), vec4<f32>(-1549f, 905f, -2388f, -562f), vec4<f32>(-1006f, 2002f, -655f, 1748f), vec4<f32>(211f, -448f, 769f, 131f), vec4<f32>(-437f, -1024f, 886f, 341f), vec4<f32>(1231f, 880f, 972f, -1287f), vec4<f32>(-374f, -979f, -268f, 426f), vec4<f32>(1160f, 1157f, 269f, -219f), vec4<f32>(519f, -1543f, -240f, -687f), vec4<f32>(137f, 358f, 737f, -488f), vec4<f32>(166f, -2454f, 603f, -1684f), vec4<f32>(-345f, 508f, -416f, -971f), vec4<f32>(-1371f, 661f, 715f, 449f), vec4<f32>(-3168f, -1000f, 269f, -789f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> Struct_1 {
    return Struct_1(false, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 28>();
    let var_0 = Struct_3(154f, u_input.b.x, func_1());
    var var_1 = ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-3667i, global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]) << (u_input.a % vec4<u32>(32u)), -vec4<i32>(var_0.c.b, var_0.c.b, -48244i, u_input.d))) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(62218u >> (0u % 32u), select(u_input.b.x, var_0.b, var_0.c.a), 1u, firstLeadingBit(86657u)), vec4<u32>(21673u, 15478u, _wgslsmith_dot_vec3_u32(u_input.b.xwx >> (u_input.b.xxx % vec3<u32>(32u)), u_input.a.ywz << (vec3<u32>(85537u, 0u, 1u) % vec3<u32>(32u))), 16333u >> (_wgslsmith_add_u32(98337u, var_0.b) % 32u)), vec4<u32>(abs(1u), countOneBits(0u) >> (0u % 32u), var_0.b, ~4294967295u)) % vec4<u32>(32u));
    global1 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~(~vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 14u)]))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -countOneBits(vec4<i32>(var_0.c.b, 5079i, var_0.c.b, var_0.c.b)), select(countOneBits(vec4<i32>(-47202i, -61134i, var_0.c.b, -6647i)), vec4<i32>(1i, -2147483647i, u_input.d, 0i) | vec4<i32>(-2147483647i, -40923i, global1[_wgslsmith_index_u32(var_0.b, 14u)], 2147483647i), false) ^ vec4<i32>(var_0.c.b, -2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(var_1.x, 18199i, u_input.d)), _wgslsmith_mod_i32(33897i, 2147483647i))), u_input.a.x ^ u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1662f)) * -1000f), ~(u_input.c & var_1.xyw));
}

