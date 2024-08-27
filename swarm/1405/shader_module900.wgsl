struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 3> = array<f32, 3>(-2350f, -175f, -2321f);

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> i32 {
    global2 = Struct_1(u_input.a, !global2.b, _wgslsmith_mult_vec2_i32(firstLeadingBit(firstTrailingBit(vec2<i32>(u_input.b, global2.c.x))), -vec2<i32>(1i, global2.a.x)), global2.d, global2.e);
    let var_0 = !global2.e;
    var var_1 = ~(-(2147483647i >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(9251u, 0u, 19288u), vec3<u32>(4294967295u, 106927u, 15598u)), ~vec3<u32>(11009u, 42977u, 0u)) % 32u)));
    var var_2 = global2.d;
    global2 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, u_input.a.x, global2.a.x), countOneBits(-1i | u_input.b)), reverseBits(~global2.a.x)), true & (false | var_0.x), vec2<i32>(-2147483647i, global2.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1567f, var_2.x)), 706f, _wgslsmith_f_op_f32(abs(global2.d.x)))), vec2<bool>(all(!select(vec4<bool>(true, true, global2.b, var_0.x), vec4<bool>(global2.e.x, var_0.x, true, true), vec4<bool>(global2.b, false, true, global2.e.x))), global2.e.x));
    return ~(-_wgslsmith_div_i32(2147483647i, -global2.a.x ^ u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(49553u, ~21556u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(1i, 43714i, -2147483647i, -14211i)), ~(vec4<i32>(u_input.b, 59112i, -2147483647i, 69319i) >> (vec4<u32>(0u, 20141u, var_0.x, var_0.x) % vec4<u32>(32u)))), ~_wgslsmith_add_i32(abs(-1i), max(-18257i, u_input.b))), -vec2<i32>(-2147483647i, ~func_1()), vec3<i32>(-60974i, -u_input.a.x, -2147483647i));
}

