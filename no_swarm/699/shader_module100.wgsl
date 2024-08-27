struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, true);

var<private> global1: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    global1 = select(vec4<bool>(false, true, false, abs(0i) != abs(arg_0)), !select(vec4<bool>(select(false, global0.a, global0.a), false, any(global1.xz), true), vec4<bool>(global1.x, global1.x & false, true, true), vec4<bool>(true, all(vec3<bool>(false, global1.x, true)), global1.x, !global0.a)), any(global1.yz));
    let var_0 = 1u;
    var var_1 = Struct_2(var_0, Struct_1(global0.b, true), Struct_1(!all(vec4<bool>(global1.x, true, global0.b, global1.x)) & (any(vec4<bool>(global0.b, global1.x, false, false)) | true), _wgslsmith_f_op_f32(floor(-708f)) <= 1f));
    global1 = vec4<bool>(false, true, true, global1.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(400f))));
    return select(!(!select(vec4<bool>(global0.a, global1.x, var_1.c.b, global1.x), vec4<bool>(global1.x, true, false, false), true)), vec4<bool>(all(vec2<bool>(all(global1.xwy), any(global1.zw))), true, any(vec3<bool>(all(vec4<bool>(true, true, false, true)), true, 1i < u_input.a)), true), select(!select(select(vec4<bool>(var_1.c.b, global0.b, false, global0.a), vec4<bool>(false, false, false, false), global1.x), vec4<bool>(true, false, global1.x, false), vec4<bool>(true, global0.b, var_1.b.b, false)), vec4<bool>(all(!global1.xx), all(!vec4<bool>(global1.x, global0.a, global1.x, false)), true, !global0.a), false));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global0 = arg_0;
    global1 = !func_3(u_input.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(287f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f))), !all(!select(vec4<bool>(true, false, arg_0.b, arg_0.a), vec4<bool>(false, arg_0.b, arg_0.a, global0.a), false)));
    global1 = !func_3(11613i);
    let var_0 = arg_0;
    return vec3<i32>(abs(u_input.a), min(select(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a, (u_input.a | u_input.a) <= ~u_input.a), -58012i), -1i);
}

fn func_4(arg_0: vec3<i32>) -> vec3<f32> {
    var var_0 = Struct_1(!(_wgslsmith_add_i32(arg_0.x ^ 1i, abs(-3219i)) <= 2147483647i), true);
    let var_1 = reverseBits(_wgslsmith_div_u32(abs(~1u), firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 49512u), vec3<u32>(1u, 0u, 118608u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-886f, 1000f)));
    var var_3 = Struct_1(false, func_3(~(-2205i)).x);
    var_3 = Struct_1(true, _wgslsmith_add_i32(abs(2147483647i), u_input.a) <= reverseBits(12870i));
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(floor(-1284f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -2179f))), -607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) + var_2.x))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = ~vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(82430i, u_input.a), countOneBits(0i), 0i);
    let var_1 = Struct_1(true, true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(var_1))));
    let var_3 = Struct_1(false & !global0.a, false);
    global1 = select(vec4<bool>(true, !all(global1.wwz), false, abs(~var_0.x) > -(~u_input.a)), vec4<bool>(true, true, !global0.a, func_3(-2147483647i).x), true);
    return var_3;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = u_input.a;
    let var_1 = Struct_2(13754u, Struct_1(global1.x & true, true), Struct_1(true, true));
    let var_2 = var_1.b;
    var_0 = ~u_input.a;
    return Struct_2(0u, func_1(_wgslsmith_f_op_vec3_f32(func_4(firstTrailingBit(~vec3<i32>(u_input.a, u_input.a, 0i))))), Struct_1(false, (true | (u_input.a >= u_input.a)) | global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(630f)), _wgslsmith_f_op_f32(floor(-263f)), _wgslsmith_f_op_f32(max(-962f, -257f))))));
    var var_1 = Struct_2(1u, var_0.b, Struct_1(!global0.a && (true & (u_input.a <= 1i)), any(select(global1.zw, vec2<bool>(false, true), global1.yw))));
    global1 = func_3(u_input.a);
    global1 = !select(!(!vec4<bool>(global1.x, false, false, global1.x)), vec4<bool>(var_1.b.a, any(select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(true, true, false, false), vec4<bool>(global0.b, false, var_1.c.b, false))), true || global0.a, var_1.c.b), !vec4<bool>(var_1.b.a, false, any(vec4<bool>(var_0.c.b, global1.x, true, false)), var_1.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1764f + -341f) * _wgslsmith_f_op_f32(-1f))), ~_wgslsmith_div_u32(~func_5(Struct_1(true, global0.b)).a, var_1.a), countOneBits(select(u_input.a, u_input.a, var_1.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, -18649i), vec3<i32>(33032i, u_input.a, u_input.a)))).x)));
}

