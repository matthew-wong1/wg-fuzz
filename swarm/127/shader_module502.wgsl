struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = vec2<bool>(!arg_1, !arg_1);
    let var_1 = -_wgslsmith_sub_vec4_i32(~vec4<i32>(15260i, u_input.e, u_input.e, ~(-8866i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.e, u_input.d.x, u_input.d.x, u_input.e), firstTrailingBit(-vec4<i32>(55098i, -15471i, u_input.e, 1i))));
    return -669f;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_3(u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(139f, 720f, 996f, 1391f) + vec4<f32>(-1989f, 1000f, 988f, -1432f)), vec4<f32>(-1000f, 691f, 1243f, -2021f), !vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(541f, -645f) + _wgslsmith_f_op_f32(539f + -1968f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-191f, -214f)))))), arg_1.xx);
    let var_1 = var_0;
    let var_2 = var_0.b;
    let var_3 = var_0;
    var var_4 = Struct_2(722f, !(!all(select(vec4<bool>(true, var_1.d.x, true, var_0.d.x), vec4<bool>(var_0.d.x, true, false, false), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1270f, var_1.c.a, 2555f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-275f, var_0.b.x, var_0.c.a) * _wgslsmith_f_op_vec3_f32(var_3.b.xxx * vec3<f32>(-1249f, 167f, -136f))))) + vec3<f32>(-1326f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, var_0.b.x)), _wgslsmith_f_op_f32(-1379f * var_3.c.a))));
    return select(!select(select(!vec4<bool>(true, true, false, var_1.d.x), select(vec4<bool>(true, var_3.d.x, arg_1.x, arg_1.x), vec4<bool>(var_0.d.x, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(var_3.d.x, arg_1.x, false, true), vec4<bool>(true, arg_1.x, true, true), var_3.d.x)), select(select(vec4<bool>(true, false, var_1.d.x, var_0.d.x), vec4<bool>(var_0.d.x, false, var_4.b, var_1.d.x), vec4<bool>(arg_1.x, var_3.d.x, true, var_4.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, var_3.d.x), vec4<bool>(var_1.d.x, arg_1.x, true, true)), vec4<bool>(true, true, var_3.d.x, arg_1.x)), true), !vec4<bool>(true, var_0.d.x, true, var_1.b.x != _wgslsmith_f_op_f32(-var_0.b.x)), vec4<bool>(!var_0.d.x, var_3.d.x, true, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.d.x, true, false), var_4.b))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_4) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-arg_3.a), vec4<bool>(true, true, arg_2.b, true));
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_2.c.x));
    var var_2 = Struct_2(497f, ~(~min(u_input.b, u_input.a)) >= ~u_input.c.x, _wgslsmith_f_op_vec3_f32(min(arg_1.b.xww, vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), 2040f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a)))))));
    var_2 = Struct_2(arg_3.a, (arg_2.a <= _wgslsmith_f_op_f32(round(arg_1.c.a))) || select(true, true, _wgslsmith_div_f32(-1453f, 911f) != _wgslsmith_f_op_f32(var_2.a + -752f)), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a + 1627f), _wgslsmith_f_op_f32(ceil(889f))));
    var var_3 = 0u;
    return arg_3;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1254f, -712f)) - _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-479f - 556f) + _wgslsmith_f_op_f32(142f + -465f))))));
    var var_1 = func_4(_wgslsmith_div_f32(1066f, -274f), Struct_3(0i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0 * 149f), 1000f, -801f, _wgslsmith_f_op_f32(round(var_0))) * vec4<f32>(_wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(var_0 * 466f), _wgslsmith_f_op_f32(func_2(u_input.c.x, true)), 396f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))), vec2<bool>(true, 1u >= reverseBits(u_input.b))), Struct_2(var_0, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1039f, var_0, var_0), vec3<f32>(var_0, 1811f, -300f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(275f, var_0, 1016f), vec3<f32>(-384f, var_0, -589f)))))), Struct_4(-666f, func_3(select(_wgslsmith_div_vec3_i32(vec3<i32>(-45267i, u_input.d.x, 15259i), vec3<i32>(u_input.e, -38710i, u_input.e)), reverseBits(vec3<i32>(1i, -2839i, -2147483647i)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_2 = Struct_4(776f, func_4(-616f, Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(63265i, u_input.e, u_input.e) << (u_input.c.wzz % vec3<u32>(32u)), vec3<i32>(10873i, u_input.d.x, -2827i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -2410f, 765f, var_1.a) - vec4<f32>(686f, -168f, var_0, var_1.a)), vec4<f32>(2204f, var_0, 696f, -329f)), Struct_1(_wgslsmith_div_f32(var_0, -964f)), vec2<bool>(var_1.b.x | false, var_1.b.x)), Struct_2(-1494f, false, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, var_0)))))), func_4(1113f, Struct_3(22834i & u_input.e, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, -1578f, 520f, var_1.a), vec4<f32>(1325f, -225f, var_0, 958f), var_1.b.x)), Struct_1(1095f), vec2<bool>(var_1.b.x, true)), Struct_2(_wgslsmith_f_op_f32(sign(-2725f)), false || var_1.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(648f, var_0, var_0))), Struct_4(-199f, func_3(vec3<i32>(u_input.d.x, u_input.e, u_input.d.x), var_1.b.yyx)))).b);
    var var_3 = 2147483647i;
    var var_4 = 3877i;
    return Struct_3(u_input.e, vec4<f32>(742f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.a)))), -1000f, -906f), Struct_1(var_2.a), select(vec2<bool>(func_4(var_0, Struct_3(3456i, vec4<f32>(-1253f, var_1.a, var_0, var_0), Struct_1(var_0), vec2<bool>(var_1.b.x, var_2.b.x)), Struct_2(685f, var_1.b.x, vec3<f32>(-247f, -1120f, 817f)), Struct_4(var_2.a, var_2.b)).b.x, true), var_1.b.wy, !(!var_2.b.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.c, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, 9179u, 1u), u_input.c) >> ((vec4<u32>(u_input.a, 0u, 4294967295u, 4294967295u) >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.b, u_input.c.x, u_input.a, 59355u)) << (u_input.c % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1302f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-825f, -125f)))))));
    let var_2 = func_1();
    let var_3 = true;
    var_1 = Struct_1(var_2.b.x);
    var_1 = func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec2<u32>(0u, abs(u_input.a)) | vec2<u32>(u_input.a ^ max(u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(u_input.c.xxy, ~u_input.c.zzz)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, u_input.b, u_input.a), ~u_input.c.xzy), u_input.a, ~2200u), ~abs(~u_input.c.ywx));
}

