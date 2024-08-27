struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

var<private> global2: array<u32, 10> = array<u32, 10>(0u, 4294967295u, 8171u, 4294967295u, 40414u, 4294967295u, 41713u, 1u, 30825u, 0u);

var<private> global3: array<u32, 28>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 28>();
    global1 = array<vec3<bool>, 4>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-921f + -130f) + -946f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f + -662f) + -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, -1000f, -600f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, -202f, 1283f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1058f, 482f, 888f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-820f, -718f, -1912f)))))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global1 = array<vec3<bool>, 4>();
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~(u_input.c & vec4<i32>(u_input.c.x, 1i, u_input.d.x, 2147483647i)), vec4<i32>(u_input.c.x, -42394i << (u_input.e % 32u), -15891i, u_input.a), u_input.c), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, u_input.c.x, -53447i), -u_input.c), vec4<i32>(41959i, u_input.a | u_input.d.x, u_input.a, min(-32812i, 1i))), vec4<i32>(_wgslsmith_sub_i32(-29093i, 0i), ~u_input.d.x, 1i, _wgslsmith_mult_i32(u_input.d.x, -1i))), vec4<i32>(36067i, -2147483647i, 17218i, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-17556i & u_input.c.x, var_2.x));
}

