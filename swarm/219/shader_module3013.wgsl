struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = select(true, true | (global1.a.x & !global1.c), !all(vec2<bool>(!global1.a.x, global1.c)));
    global1 = Struct_1(select(vec2<bool>(var_0, true | var_0), global1.a, !var_0), i32(-1i) * -2147483647i, !(max(-u_input.b, 1i) < -20912i));
    let var_1 = global1.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, 1654f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2054f)))))));
    var var_2 = Struct_1(global1.a, global1.b, false);
    return any(!select(vec3<bool>(any(vec4<bool>(true, false, var_0, var_2.a.x)), true, all(vec4<bool>(false, false, var_2.a.x, var_0))), vec3<bool>(all(vec4<bool>(var_0, var_0, var_0, global1.c)), all(global1.a), true), vec3<bool>(u_input.c < u_input.a.x, all(vec3<bool>(false, false, var_0)), u_input.a.x <= 4294967295u)));
}

fn func_2() -> Struct_1 {
    var var_0 = global1.a;
    let var_1 = Struct_1(global1.a, u_input.b, any(select(vec4<bool>(any(vec3<bool>(false, global1.c, var_0.x)), var_0.x, global1.a.x, func_3()), vec4<bool>(global1.c, select(var_0.x, true, false), true, global1.a.x), vec4<bool>(false, func_3(), global1.a.x, var_0.x))));
    var_0 = select(select(!(!var_1.a), select(vec2<bool>(var_1.a.x, func_3()), vec2<bool>(true, true), true), true), vec2<bool>(any(select(vec2<bool>(var_0.x, true), select(vec2<bool>(false, var_1.a.x), vec2<bool>(var_0.x, var_0.x), false), var_1.a)), any(vec4<bool>(true, any(vec3<bool>(false, true, false)), u_input.b < var_1.b, !global1.c))), all(!(!vec3<bool>(var_0.x, global1.c, true))));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    global1 = func_2();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(664f, 2779f, -1763f, 1791f)), vec4<f32>(1f, 1f, 1f, 1f)))))));
    var var_1 = func_2();
    let var_2 = -1366f;
    let var_3 = Struct_1(!select(!vec2<bool>(arg_0.c, true), global1.a, vec2<bool>(true, !arg_0.a.x)), var_1.b, false);
    return var_2;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> StorageBuffer {
    global0 = arg_0.x;
    global0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_0 = -90882i;
    let var_1 = arg_1;
    return StorageBuffer(abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, 23040i << (0u % 32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(60739i, global1.b, -4371i, 1815i), vec4<i32>(-31319i, global1.b, -30599i, 2147483647i)))), -237f, ~countOneBits(min(firstTrailingBit(vec2<i32>(u_input.b, -1866i)), vec2<i32>(1i, arg_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, -9721i | -(_wgslsmith_sub_i32(global1.b, -1i) ^ 70721i), any(select(vec2<bool>(false, global1.a.x), vec2<bool>(global1.a.x, true), !global1.a)));
    var var_1 = -(~(~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(global1.b, 1i)), -vec2<i32>(-2147483647i, -2147483647i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1f)));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-424f, -2050f, _wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(var_0.a.x, global1.c), var_1.x, global1.a.x), Struct_1(vec2<bool>(false, true), var_0.b, global1.a.x), global1.c)), _wgslsmith_f_op_f32(-1339f - 1257f))))), func_2(), vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, 60971u), ~1u) << (u_input.c % 32u), _wgslsmith_mult_u32(1u, u_input.a.x), ~(~(~u_input.c))), Struct_1(!(!vec2<bool>(global1.a.x, false)), max(var_1.x, _wgslsmith_mult_i32(u_input.b | global1.b, abs(1i))), firstLeadingBit(var_0.b) < 1i));
}

