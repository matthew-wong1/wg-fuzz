struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    global0 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), false));
    let var_0 = 15773i;
    global0 = false;
    let var_1 = ~_wgslsmith_clamp_vec4_i32((_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 43384i, 2147483647i, u_input.a.x), vec4<i32>(-1i, 1i, -2147483647i, var_0)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) | vec4<i32>(countOneBits(415i), -var_0, _wgslsmith_sub_i32(2147483647i, 33470i), 2147483647i), -(_wgslsmith_sub_vec4_i32(vec4<i32>(-50856i, u_input.a.x, var_0, -950i), vec4<i32>(-2147483647i, 2147483647i, -10809i, 2147483647i)) >> (vec4<u32>(55648u, 34585u, 49500u, 0u) % vec4<u32>(32u))), ~(-vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, u_input.a.x) >> (~vec4<u32>(4294967295u, 8743u, 0u, 0u) % vec4<u32>(32u))));
    var var_2 = vec3<i32>(-1i, min(-33102i, 11999i), u_input.a.x);
    return !select(vec2<bool>(true, true), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), true), vec2<bool>(true, false));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    global0 = arg_1.x <= arg_1.x;
    let var_0 = 0u;
    var var_1 = vec3<u32>(~arg_1.x, ~44296u, 21679u);
    var var_2 = select(vec3<u32>(reverseBits(arg_1.x), arg_1.x, ~(~(~var_0))), arg_1.zzy, !vec3<bool>(arg_3.a.x <= u_input.a.x, true, true));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * arg_2), -462f, any(func_3())));
    return countOneBits(_wgslsmith_mod_i32(~arg_0.x, arg_3.a.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_add_vec2_i32(u_input.a.zx, vec2<i32>(4558i & arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(30372i, arg_1, arg_1, u_input.a.x) >> (vec4<u32>(1u, 0u, 45073u, 1u) % vec4<u32>(32u)), ~vec4<i32>(arg_1, 22556i, u_input.a.x, 41567i)))), Struct_3(arg_0.zx, _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, _wgslsmith_f_op_f32(sign(-2006f)), -455f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(125f, 533f, -1000f, arg_3.x)))))), Struct_1(_wgslsmith_add_vec2_i32(~u_input.a.zy, vec2<i32>(-2147483647i, u_input.a.x))), Struct_1(_wgslsmith_mult_vec2_i32(min(u_input.a.xx, vec2<i32>(-28322i, arg_1)), firstTrailingBit(vec2<i32>(0i, 46426i)))), Struct_1(-min(u_input.a.yx, vec2<i32>(1i, u_input.a.x)))));
    let var_1 = vec3<f32>(725f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x - _wgslsmith_f_op_f32(arg_3.x - arg_3.x))))), -611f);
    var_0 = Struct_4(vec2<i32>(u_input.a.x, 17839i), var_0.b);
    let var_2 = var_0.b;
    var var_3 = var_0.b;
    return Struct_3(vec2<bool>(all(var_0.b.a), func_3().x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b + vec4<f32>(162f, var_3.b.x, var_1.x, var_3.b.x)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(621f, arg_3.x, 858f, -711f) + var_2.b))))), var_2.d, var_0.b.d, var_2.e);
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = func_4(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), max(min(1i, max(arg_1.d.a.x, func_4(vec4<bool>(true, arg_1.a.x, false, true), -12277i, false, vec3<f32>(arg_0, arg_0, 750f)).d.a.x)), ~2147483647i), any(select(!vec3<bool>(arg_1.a.x, true, arg_1.a.x), select(!vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), !vec3<bool>(arg_1.a.x, true, true), !arg_1.a.x), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_1.a.x, false, false), vec3<bool>(true, arg_1.a.x, arg_1.a.x)), select(vec3<bool>(true, false, arg_1.a.x), vec3<bool>(false, false, false), vec3<bool>(arg_1.a.x, arg_1.a.x, false)), vec3<bool>(false, false, arg_1.a.x)))), arg_1.b.zyw).a.x;
    var var_1 = Struct_4(vec2<i32>(arg_1.e.a.x, u_input.a.x) | vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2675i, u_input.a.x, arg_1.e.a.x, -2147483647i), vec4<i32>(arg_1.d.a.x, arg_1.c.a.x, arg_1.c.a.x, 24570i))), 2147483647i), Struct_3(vec2<bool>(false, _wgslsmith_f_op_f32(min(arg_1.b.x, arg_0)) > -359f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -657f, -1906f, -415f), arg_1.b, vec4<bool>(false, var_0, false, true))) - _wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-275f, 1000f, arg_1.b.x, -249f) - arg_1.b), !vec4<bool>(arg_1.a.x, var_0, arg_1.a.x, var_0)))), arg_1.c, arg_1.d, func_4(!select(vec4<bool>(false, true, arg_1.a.x, true), vec4<bool>(false, true, false, var_0), vec4<bool>(var_0, var_0, var_0, true)), ~(-arg_1.c.a.x), arg_1.a.x || var_0, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1167f, arg_0, 347f)))).d));
    let var_2 = vec2<i32>(-(~(min(u_input.a.x, arg_1.d.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(32370u, 43226u, 4552u, 12674u), vec4<u32>(0u, 57916u, 40796u, 4294967295u)) % 32u))), var_1.b.e.a.x);
    var var_3 = arg_1.b.zzz;
    let var_4 = _wgslsmith_div_f32(-1167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-850f))));
    return Struct_2(~1u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec3<f32>) -> vec3<u32> {
    global0 = arg_0.x;
    var var_0 = func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(sign(arg_2.x)))), func_4(vec4<bool>(func_2(vec2<i32>(-2147483647i, arg_1.a.a.x), vec4<u32>(1u, 20085u, 4294967295u, 0u), arg_2.x, arg_1.a) < 25322i, arg_1.b, select(true, false, all(vec4<bool>(false, false, arg_0.x, arg_1.b))), false != func_3().x), min(max(2147483647i, arg_1.a.a.x), u_input.a.x), arg_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 2703f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1887f, arg_2.x, -1085f)))));
    var_0 = Struct_2(27294u);
    global0 = select(arg_1.b, true, !any(!vec4<bool>(true, true, arg_0.x, arg_1.b)));
    var var_1 = arg_1.a.a.x;
    return min(~(abs(vec3<u32>(var_0.a, var_0.a, 42314u)) & ~vec3<u32>(1u, var_0.a, var_0.a)), ~(~vec3<u32>(var_0.a, 0u, 14502u) | ~vec3<u32>(4294967295u, 42586u, 0u))) << (~countOneBits(min(vec3<u32>(55329u, var_0.a, var_0.a) ^ vec3<u32>(7642u, var_0.a, 125474u), reverseBits(vec3<u32>(var_0.a, var_0.a, 33857u)))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.a & abs(vec3<i32>(u_input.a.x, u_input.a.x, -10725i)), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, -u_input.a.x), u_input.a.x, u_input.a.x)) << (max(16319u ^ select(_wgslsmith_clamp_u32(86303u, 4294967295u, 0u), min(11860u, 42200u), u_input.a.x != u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(func_1(vec2<bool>(true, false), Struct_5(Struct_1(vec2<i32>(-7603i, u_input.a.x)), false), vec3<f32>(-699f, 1000f, -560f)), vec3<u32>(4294967295u, 7330u, 0u), ~vec3<u32>(0u, 13727u, 22545u)), ~vec3<u32>(4294967295u, 0u, 51246u))) % 32u);
    let var_1 = -1i;
    let var_2 = _wgslsmith_div_vec2_i32(abs(_wgslsmith_div_vec2_i32(countOneBits(u_input.a.yx), -u_input.a.yy)), ~abs(u_input.a.zy)) >> (vec2<u32>(19368u, 27368u) % vec2<u32>(32u));
    let var_3 = Struct_5(func_4(vec4<bool>(~39605i != var_0, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), true, true), -23751i, true, vec3<f32>(_wgslsmith_f_op_f32(step(-1243f, _wgslsmith_f_op_f32(ceil(-670f)))), _wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(sign(333f))))).d, select(13998i > func_4(vec4<bool>(true, true, true, true), firstTrailingBit(-2147483647i), func_3().x, vec3<f32>(147f, -2327f, -1934f)).d.a.x, func_1(vec2<bool>(false, true), Struct_5(Struct_1(vec2<i32>(u_input.a.x, var_1)), false), vec3<f32>(535f, -788f, -305f)).x <= func_5(_wgslsmith_f_op_f32(abs(-377f)), func_4(vec4<bool>(false, true, false, false), -2147483647i, false, vec3<f32>(1704f, 269f, -753f))).a, true));
    let var_4 = 112f;
    let var_5 = var_1;
    let var_6 = var_3;
    let var_7 = max(~reverseBits(vec4<i32>(var_0, -2206i, ~0i, abs(u_input.a.x))), (reverseBits(-vec4<i32>(-6639i, var_3.a.a.x, -1i, 32152i)) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(var_1, u_input.a.x, 0i, var_2.x), _wgslsmith_mult_vec4_i32(vec4<i32>(59677i, 1i, var_0, var_3.a.a.x), vec4<i32>(-34110i, 2147483647i, -24381i, var_6.a.a.x)))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    var var_8 = !func_3();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1247f, -325f, 916f, var_4))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, 293f, var_4, 2922f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, var_4, var_4)))))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1160f * var_4)));
}

