struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_3 {
    global0 = -2147483647i;
    let var_0 = 1i;
    var var_1 = _wgslsmith_div_vec2_f32(global1.a.a.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.a.d, -1182f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-global1.a.a.zz);
    var_1 = global1.a.a.yy;
    return Struct_3(global1.a);
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_3(global1.a);
    var var_1 = select(abs(firstLeadingBit(vec2<u32>(min(0u, u_input.b.x), reverseBits(30935u)))), abs(vec2<u32>(7056u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.e.x, u_input.a.x) | vec3<u32>(1u, u_input.b.x, 4294967295u), abs(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))))), vec2<bool>(all(select(vec4<bool>(true, true, true, global1.a.b), !vec4<bool>(false, false, global1.a.b, false), global1.a.b)), !(!var_0.a.b && false)));
    var var_2 = Struct_2(Struct_1(global1.a.a, false, 708f, global1.a.d, abs(vec4<i32>(-27585i, firstLeadingBit(-1i), -global1.a.e.x, global1.a.e.x))), _wgslsmith_mult_i32(~(~u_input.d.x) | ~(u_input.d.x >> (var_1.x % 32u)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(16642i, u_input.d.x)) & max(u_input.d.ww, vec2<i32>(u_input.d.x, var_0.a.e.x)), global1.a.e.ww)), func_2().a);
    global0 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(var_2.c.e, vec4<i32>(global1.a.e.x, -9971i, -2147483647i, 1i)), vec4<i32>(var_2.c.e.x, var_2.c.e.x, i32(-1i) * -2147483647i, u_input.d.x)), -59966i);
    var_1 = abs(countOneBits(abs(~u_input.e >> (vec2<u32>(26175u, 14404u) % vec2<u32>(32u)))));
    return !select(!(!select(vec4<bool>(arg_0, true, false, true), vec4<bool>(false, global1.a.b, var_2.c.b, var_2.c.b), var_0.a.b)), select(select(select(vec4<bool>(var_2.c.b, var_2.a.b, global1.a.b, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, global1.a.b)), !vec4<bool>(var_0.a.b, global1.a.b, var_0.a.b, false), !vec4<bool>(var_2.a.b, false, true, false)), !(!vec4<bool>(var_0.a.b, var_2.a.b, var_0.a.b, var_0.a.b)), !var_2.a.b | (var_1.x < u_input.e.x)), true);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: u32, arg_3: i32) -> vec4<bool> {
    let var_0 = global1.a.d;
    global1 = func_2();
    let var_1 = global1.a.b;
    global0 = 0i;
    global1 = func_2();
    return func_3(func_2().a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(!select(func_1(0i, vec4<bool>(true, false, global1.a.b, true), u_input.e.x, 2147483647i), vec4<bool>(false, true, global1.a.b, global1.a.b), vec4<bool>(global1.a.b, true, global1.a.b, global1.a.b)));
    var var_1 = global1.a;
    var var_2 = -1i;
    var var_3 = Struct_2(Struct_1(global1.a.a, true, var_1.d, -1929f, global1.a.e), -(~abs(0i)), func_2().a);
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(min(u_input.c, vec2<u32>(u_input.b.x, u_input.c.x)), ~u_input.a.yz)));
}

