struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> i32 {
    return u_input.b.x;
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(ceil(470f));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: f32) -> vec3<i32> {
    let var_0 = Struct_3(arg_0.b.a << (vec4<u32>(~0u, ~(~arg_2), 0u, 1u) % vec4<u32>(32u)), arg_0.b.b);
    return firstTrailingBit(-arg_0.b.a.yww);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(-abs(firstLeadingBit(vec4<i32>(-1i, u_input.d.x, 2488i, 7617i))), vec4<i32>(u_input.b.x, func_1(), 0i, 1i));
    var_0 = -u_input.b.x;
    var var_1 = Struct_2(!vec3<bool>(true, !(44647u > u_input.c), !(u_input.b.x != -1i)), false, Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, u_input.b.x <= (-10097i >> (u_input.a.x % 32u)), !any(vec3<bool>(false, false, true))), _wgslsmith_div_i32(~24577i, ~0i), 931f));
    let var_2 = !vec2<bool>(true, var_1.a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-789f, Struct_4(vec3<f32>(1016f, 658f, 535f), Struct_3(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), Struct_1(var_1.c.a, var_1.c.a, -1i, var_1.c.d)), Struct_2(var_1.a, true, var_1.c)), vec2<i32>(1i, 1i)))), var_1.c.d)));
    var var_4 = _wgslsmith_dot_vec3_i32(~u_input.b, _wgslsmith_add_vec3_i32(func_3(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.d, -1000f, 1865f)), Struct_3(vec4<i32>(-60305i, 2147483647i, var_1.c.c, 0i), var_1.c), Struct_2(vec3<bool>(true, var_1.a.x, var_1.c.b.x), false, var_1.c)), false, u_input.a.x, -877f), ~u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_i32(~select(6654i, -11837i, var_2.x), 13815i), _wgslsmith_add_i32(-var_1.c.c, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xy, u_input.b.zx), vec2<i32>(1i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x))));
}

