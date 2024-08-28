struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(48845i, 25295i), vec2<i32>(2147483647i, 33596i), vec2<i32>(1i, -2292i), vec2<i32>(i32(-2147483648), 3204i), vec2<i32>(21482i, -17590i), vec2<i32>(-8554i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, -41681i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), -36369i), vec2<i32>(-23017i, 2147483647i));

var<private> global1: array<Struct_3, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<bool> {
    return select(!(!vec3<bool>(false, u_input.a != -2147483647i, true)), vec3<bool>(true, false, true), true);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> u32 {
    global1 = array<Struct_3, 17>();
    global1 = array<Struct_3, 17>();
    let var_0 = -arg_1.c.b.x;
    global1 = array<Struct_3, 17>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_1.e);
    return arg_1.b.x;
}

fn func_1() -> u32 {
    let var_0 = !func_2();
    var var_1 = Struct_4(Struct_1(vec4<u32>(4294967295u, u_input.b.x, 24093u, ~(33859u & u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f)), _wgslsmith_f_op_f32(-289f - -1148f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-313f, 2046f) * 1237f))), u_input.a, reverseBits(vec3<u32>(4294967295u, func_3(u_input.b.x, Struct_3(false, u_input.b, Struct_2(true, vec2<i32>(9684i, 23649i), false), Struct_2(false, vec2<i32>(u_input.a, u_input.a), var_0.x), vec4<f32>(-675f, -473f, -1601f, -198f))), 15961u)));
    global0 = array<vec2<i32>, 11>();
    let var_2 = -u_input.a;
    let var_3 = var_1.b;
    return _wgslsmith_div_u32(var_1.a.a.x, var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(u_input.b.x | _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x << (u_input.b.x % 32u)), countOneBits(_wgslsmith_sub_u32(1u, 0u)) | u_input.b.x), 1u, (u_input.b.x & ~1u) ^ ~max(firstTrailingBit(1u), 22996u));
    let var_1 = Struct_1(vec4<u32>(func_1(), 1u, u_input.b.x, 0u));
    global0 = array<vec2<i32>, 11>();
    let var_2 = max(abs(~(~vec4<u32>(u_input.b.x, 4294967295u, 62498u, var_1.a.x))), reverseBits(~abs(~var_1.a)));
    global0 = array<vec2<i32>, 11>();
    global0 = array<vec2<i32>, 11>();
    var var_3 = countOneBits(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_2.x, var_0.x), _wgslsmith_add_u32(7386u, var_1.a.x)), ~(~0u)));
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, u_input.a, -18152i, u_input.a), 593f, 1i & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(28263i, -53647i, u_input.a)) | vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(0i, -1i, u_input.a) & ~vec3<i32>(-4141i, -12954i, 2147483647i)), ~vec2<i32>(u_input.a, u_input.a));
}

