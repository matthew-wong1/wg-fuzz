struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = vec2<bool>(false, global0.x | arg_1.a.x);
    var var_1 = u_input.b.x;
    let var_2 = arg_1;
    var_1 = 18477u;
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(_wgslsmith_sub_i32(var_2.b, 1i), ~var_2.b), _wgslsmith_mod_vec2_i32(u_input.c.xz, u_input.d.zx)), u_input.c.zw), var_2.b, -arg_1.b & _wgslsmith_mod_i32(firstLeadingBit(-2147483647i), u_input.a));
    return any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, true, false, arg_1.a.x)), select(vec4<bool>(var_0.x, arg_1.a.x, true, true), select(vec4<bool>(true, var_2.a.x, var_2.a.x, arg_0), vec4<bool>(false, arg_2.x, global0.x, global0.x), vec4<bool>(false, false, false, false)), !vec4<bool>(false, global0.x, global0.x, true)), select(select(vec4<bool>(true, arg_1.a.x, var_0.x, true), vec4<bool>(arg_1.a.x, false, false, true), vec4<bool>(true, false, true, global0.x)), vec4<bool>(var_0.x, false, false, true), var_2.a.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(select(vec3<bool>(func_3(false, Struct_1(vec3<bool>(false, arg_2, arg_2), u_input.a, vec2<f32>(973f, arg_1), vec2<f32>(242f, arg_1), vec3<f32>(arg_1, arg_1, 1558f)), vec3<bool>(true, true, true)) && any(vec2<bool>(true, true)), true, true), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, arg_2), false), vec3<bool>(arg_2, arg_2, true), all(vec4<bool>(arg_2, true, global0.x, false))), any(vec2<bool>(true, arg_2 | false))), -53237i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1406f, -127f), vec2<f32>(-1502f, _wgslsmith_div_f32(arg_1, -538f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, -119f)))), 830f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, -623f, arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) + vec3<f32>(arg_1, 270f, -110f))))))));
    let var_1 = Struct_1(select(!vec3<bool>(var_0.b == var_0.b, arg_2, arg_2), !(!select(var_0.a, var_0.a, true)), _wgslsmith_mod_i32(_wgslsmith_add_i32(41277i, -2147483647i), u_input.d.x) >= -u_input.d.x), 2147483647i, var_0.c, var_0.c, vec3<f32>(491f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -973f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.c.x, -679f, true)))), all(select(vec4<bool>(true, global0.x, false, arg_2), vec4<bool>(false, true, var_0.a.x, global0.x), var_0.a.x))))));
    return var_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> bool {
    global0 = func_2(vec2<u32>(~u_input.b.x, 4085u), _wgslsmith_div_f32(-829f, _wgslsmith_f_op_f32(-arg_2.e.x)), global0.x).a;
    var var_0 = true;
    var var_1 = func_2(u_input.b, arg_1, all(arg_0) && false);
    var var_2 = arg_2;
    var_2 = func_2(countOneBits(min((u_input.b & vec2<u32>(30214u, u_input.b.x)) ^ ~vec2<u32>(0u, 0u), u_input.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -307f), arg_2.c.x)), true);
    return true;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    global0 = vec3<bool>(!any(vec4<bool>(global0.x || global0.x, true, true, true | global0.x)), select(func_4(select(vec4<bool>(global0.x, false, global0.x, false), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), global0.x), global0.x), _wgslsmith_f_op_f32(1000f - -1249f), func_2(u_input.b ^ vec2<u32>(u_input.b.x, arg_1.x), 262f, !global0.x)), true, any(!vec2<bool>(global0.x, global0.x))), false);
    var var_0 = Struct_1(vec3<bool>(false, all(vec3<bool>(func_2(vec2<u32>(4294967295u, 54943u), 937f, global0.x).a.x, global0.x || false, global0.x)), global0.x), _wgslsmith_dot_vec2_i32(u_input.d.wz, u_input.c.zz) | countOneBits(arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1266f, 1554f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(902f, 400f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(406f + -521f))), 273f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-458f, 1000f) - vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1437f, 1000f, -3418f), vec3<f32>(410f, 3029f, -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2751f, -460f) - vec3<f32>(507f, -172f, 1138f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1085f, -336f, -380f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.e)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_2(~u_input.b, var_1.x, var_0.b <= -1i).e, var_0.e)) + vec3<f32>(-1036f, _wgslsmith_f_op_f32(min(var_0.d.x, var_1.x)), var_1.x));
    var var_2 = vec4<i32>(u_input.a, _wgslsmith_mult_i32(-17098i, 0i), -1i, 46579i ^ _wgslsmith_add_i32(-_wgslsmith_div_i32(24696i, arg_0), -1i));
    return -362f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, -137f, 265f, -1000f)), vec4<f32>(1498f, 1168f, 225f, -646f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1185f, 533f, 1106f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(398f, -1000f, -136f, -329f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(-2147483647i, vec4<u32>(4294967295u, u_input.b.x, 4u, 4294967295u))), _wgslsmith_f_op_f32(step(-1296f, -969f)), 191f, _wgslsmith_f_op_f32(1062f * 1444f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-558f, -1000f, 1345f, 1000f)), vec4<f32>(_wgslsmith_div_f32(1000f, -1285f), _wgslsmith_div_f32(578f, -1153f), 685f, -981f)))));
    global0 = select(func_2(~u_input.b, var_0.x, !func_2(vec2<u32>(2634u, u_input.b.x) | vec2<u32>(0u, u_input.b.x), _wgslsmith_f_op_f32(871f * -451f), all(vec3<bool>(false, true, global0.x))).a.x).a, !vec3<bool>(global0.x, global0.x, false), true);
    let var_1 = global0.xz;
    let var_2 = func_2(vec2<u32>(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), abs(u_input.b.x)) ^ abs(~vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(func_1(-1i, vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~u_input.b.x, u_input.b.x, u_input.b.x))), any(global0.zz));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(797f, var_0.x, var_2.e.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -1688f, -1119f, 189f))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(var_2.e.x + var_0.x), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f)), _wgslsmith_f_op_f32(-145f + func_2(u_input.b, var_0.x, false).c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(383f, var_0.x)))), select(select(vec4<bool>(false, var_2.a.x, true, global0.x), !vec4<bool>(true, true, true, var_2.a.x), var_2.b <= 44981i), select(select(vec4<bool>(false, true, true, true), vec4<bool>(global0.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(true, global0.x, false, false)), !vec4<bool>(var_2.a.x, true, global0.x, var_2.a.x), true), var_1.x)))));
    var var_3 = func_2(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(func_2(u_input.b, var_2.d.x, global0.x).c.x, _wgslsmith_f_op_f32(f32(-1f) * -338f)))) + 274f), any(vec3<bool>(var_2.a.x, true, true)));
    var var_4 = func_2(u_input.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1191f, _wgslsmith_f_op_f32(var_2.c.x - var_3.e.x)))))), any(vec4<bool>(all(!var_2.a), 420f < _wgslsmith_f_op_f32(select(632f, var_0.x, true)), !(!var_3.a.x), var_1.x)));
    global0 = !vec3<bool>(!(true == !global0.x), !var_3.a.x, false);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(7063u ^ reverseBits(u_input.b.x ^ 1u), _wgslsmith_clamp_u32(104035u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(41305u, 0u)), ~77371u)), _wgslsmith_mod_u32(65420u, _wgslsmith_add_u32(~4294967295u, abs(~u_input.b.x))));
}

