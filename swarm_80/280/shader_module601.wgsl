struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(705f, 323f);

var<private> global1: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> bool {
    var var_0 = all(select(select(!vec3<bool>(arg_2, true, true), !vec3<bool>(arg_2, true, arg_2), true), select(!vec3<bool>(arg_2, false, false), select(vec3<bool>(true, true, true), vec3<bool>(arg_2, false, arg_2), false), vec3<bool>(arg_2, arg_2, arg_2)), !select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, false, true)))) || any(vec3<bool>(!(false != arg_2), any(select(vec3<bool>(true, false, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, false))), all(vec3<bool>(true, arg_2, arg_2))));
    var var_1 = Struct_1(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(493f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-658f + 307f)), _wgslsmith_f_op_f32(step(-328f, _wgslsmith_f_op_f32(-global0.x))), true))), _wgslsmith_f_op_f32(floor(630f)), vec4<bool>(arg_2, false, arg_2 && false, arg_2), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(211f, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-878f))))) - 694f));
    global0 = var_1.a.zy;
    var var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_1.a.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, _wgslsmith_f_op_f32(round(global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.b)), -2142f))), var_1.a.x)));
    return ~(~(arg_0.a << ((19259u | arg_0.a) % 32u))) != select(~_wgslsmith_dot_vec2_u32(u_input.b ^ u_input.b, u_input.b & u_input.b), u_input.c, arg_0.a <= u_input.b.x);
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    return 24269i;
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = -211f > global0.x;
    let var_1 = Struct_3(4294967295u, vec4<i32>(arg_1.b.d >> (~1u % 32u), arg_1.b.d, max(41484i, _wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.b.d, arg_0), max(2147483647i, 35326i))), reverseBits(1i)));
    global0 = vec2<f32>(-1250f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.e * global0.x), 1f));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b - arg_1.b.a.x)), _wgslsmith_f_op_f32(abs(-2733f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.e), _wgslsmith_f_op_f32(arg_1.b.b * 544f)), _wgslsmith_f_op_vec2_f32(arg_1.b.a.zy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_1.b.e))))))));
    global1 = 14924i | var_1.b.x;
    return !select(arg_1.b.c, !arg_1.b.c, vec4<bool>(false, all(select(vec3<bool>(arg_1.b.c.x, false, var_0), vec3<bool>(arg_1.b.c.x, true, arg_1.b.c.x), arg_1.b.c.zyz)), !arg_1.b.c.x, !arg_1.b.c.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: f32) -> bool {
    let var_0 = func_5(func_4(select(arg_0, select(!vec4<bool>(false, false, false, arg_1.x), !arg_0, all(vec3<bool>(false, true, arg_0.x))), vec4<bool>(func_3(Struct_3(30776u, vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.d), true), true, true, u_input.d >= u_input.d))), Struct_2(vec4<u32>(u_input.a, 44867u, u_input.a, ~u_input.a) ^ abs(vec4<u32>(4294967295u, 1867u, u_input.c, u_input.a) & vec4<u32>(46027u, 4294967295u, u_input.c, u_input.b.x)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1140f, arg_2, 453f) - vec3<f32>(arg_2, global0.x, -1355f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-642f, global0.x, 1470f))), _wgslsmith_f_op_f32(-global0.x), !select(arg_0, arg_0, arg_0.x), _wgslsmith_div_i32(u_input.d, 0i), 1000f)));
    return u_input.d <= 2147483647i;
}

fn func_6(arg_0: vec4<bool>) -> vec2<f32> {
    global1 = u_input.d;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, -993f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(606f, global0.x)))))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -971f))))))));
    var var_0 = -(select(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d, -1i, -1i), firstLeadingBit(vec3<i32>(u_input.d, -2147483647i, u_input.d))), ~(~vec3<i32>(-1i, 30981i, u_input.d)), false) & (vec3<i32>(35378i ^ u_input.d, u_input.d, u_input.d) | -vec3<i32>(0i, 1i, u_input.d)));
    let var_1 = vec2<bool>(!(!arg_0.x && (!arg_0.x & !arg_0.x)), select(561f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -845f)), true, false));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, global0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, 635f), vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -820f)))))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(292f, -1101f));
}

fn func_1() -> bool {
    let var_0 = -1055f;
    var var_1 = abs(vec4<i32>(u_input.d, 0i, countOneBits(1i) & _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d, 1i), u_input.d), u_input.d ^ u_input.d));
    global1 = -2147483647i;
    global0 = _wgslsmith_f_op_vec2_f32(func_6(!vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), !all(vec4<bool>(true, false, false, false)), func_2(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), vec2<bool>(true, true), global0.x), true)));
    var var_2 = Struct_5(Struct_3(u_input.a, vec4<i32>(4117i, -2147483647i, _wgslsmith_div_i32(u_input.d, 1i), firstLeadingBit(i32(-1i) * -33594i))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(global0.x, _wgslsmith_f_op_f32(step(385f, global0.x)), _wgslsmith_f_op_f32(172f * _wgslsmith_f_op_f32(ceil(-458f)))), _wgslsmith_f_op_f32(-global0.x), vec4<bool>(true, func_1(), true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), u_input.d, global0.x);
    let var_1 = Struct_2(abs(~vec4<u32>(abs(1u), ~11311u, firstTrailingBit(88306u), u_input.c)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_0.a, var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-global0.x))), select(!vec4<bool>(var_0.c.x, false, true, var_0.c.x), !(!vec4<bool>(true, var_0.c.x, true, var_0.c.x)), vec4<bool>(true, var_0.c.x | var_0.c.x, var_0.c.x, true)), ~(-(~0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(142f - global0.x))))));
    global1 = countOneBits(max(1i >> (var_1.a.x % 32u), ~u_input.d));
    var var_2 = ~(var_1.a | vec4<u32>(1u, var_1.a.x, 20853u, 1u));
    var var_3 = Struct_5(Struct_3(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, var_1.a.x, u_input.b.x), vec4<u32>(u_input.c, var_1.a.x, 0u, 103947u)), 35885u ^ var_1.a.x, true), ((vec4<i32>(var_1.b.d, -1i, var_0.d, var_1.b.d) << (vec4<u32>(u_input.b.x, 2174u, var_2.x, u_input.b.x) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.d, 2147483647i, var_1.b.d, -39918i), vec4<i32>(-32907i, var_0.d, -13889i, var_0.d))) >> (firstLeadingBit(firstLeadingBit(var_1.a)) % vec4<u32>(32u))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - 352f))))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1246f))))) > _wgslsmith_div_f32(-1251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b.a.x - var_0.e))) + _wgslsmith_f_op_f32(round(594f))));
    var var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_dot_vec4_i32(~var_3.a.b, select(var_3.a.b, vec4<i32>(var_1.b.d, var_3.a.b.x, u_input.d, var_5.d), vec4<bool>(var_5.c.x, var_5.c.x, var_5.c.x, false))), ~(~2147483647i ^ ~u_input.d), -_wgslsmith_add_i32(0i, var_0.d) ^ countOneBits(-1i)), _wgslsmith_dot_vec3_i32(-var_3.a.b.xyy, var_3.a.b.ywy));
}

