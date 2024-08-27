struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(926f, -233f), vec2<f32>(1000f, 489f), vec2<f32>(1383f, 156f), vec2<f32>(-987f, -845f), vec2<f32>(851f, -1076f), vec2<f32>(-572f, 533f), vec2<f32>(-161f, -550f), vec2<f32>(2610f, -504f), vec2<f32>(-749f, 275f), vec2<f32>(-116f, -457f), vec2<f32>(1414f, 808f), vec2<f32>(-2201f, -118f), vec2<f32>(-1000f, -298f), vec2<f32>(1875f, 1147f), vec2<f32>(-580f, 368f), vec2<f32>(206f, -952f), vec2<f32>(534f, -1000f), vec2<f32>(1114f, 1108f), vec2<f32>(709f, -1000f), vec2<f32>(344f, -705f), vec2<f32>(468f, 642f), vec2<f32>(1051f, 127f), vec2<f32>(403f, 625f), vec2<f32>(-1108f, -293f), vec2<f32>(343f, 738f), vec2<f32>(1612f, -931f), vec2<f32>(749f, 527f), vec2<f32>(-432f, -259f), vec2<f32>(1420f, -668f), vec2<f32>(693f, 662f), vec2<f32>(-1401f, -448f), vec2<f32>(-2485f, -871f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(571f - 1420f), _wgslsmith_f_op_f32(f32(-1f) * -1129f), 1f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1474f, 915f, 1006f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, -608f, 1000f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))))), vec3<f32>(_wgslsmith_div_f32(377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-638f, 704f)))), 1027f, 301f), select(!vec3<bool>(u_input.a > u_input.b.x, true, true), vec3<bool>(firstTrailingBit(arg_0.b) >= arg_0.a.x, true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), !(!(u_input.c.x != 0u)))));
    var var_1 = Struct_2(arg_0, var_0.x, arg_0);
    global0 = array<vec2<f32>, 32>();
    var var_2 = Struct_2(Struct_1(vec3<i32>(-41i, arg_0.a.x, -1i), -1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), var_1.b)), var_0.x)), var_1.a);
    global0 = array<vec2<f32>, 32>();
    return _wgslsmith_f_op_f32(f32(-1f) * -401f);
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> f32 {
    var var_0 = arg_0.a;
    let var_1 = arg_0.c;
    let var_2 = arg_0.a.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(196f - 741f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.e)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2580f + arg_1)), -1000f)));
    var var_4 = Struct_3(!arg_0.a, 63664u & ~(~1u << (u_input.c.x % 32u)), select(~(~4294967295u), u_input.b.x, var_0.x), arg_0.e.a.zz, arg_0.e);
    return var_3.x;
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<f32>, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(vec3<bool>(false, true, false), 47468u, u_input.b.x, vec2<i32>(16650i, -2147483647i), Struct_1(vec3<i32>(57257i, -10266i, 0i), 28345i)), _wgslsmith_div_f32(664f, 1213f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(704f + 663f)), -831f));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f * -2870f))), -587f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * -839f), 1000f)), var_0.x, var_0.x), !vec3<bool>(true, any(vec2<bool>(false, true)), ~18573u <= ~u_input.a)));
    var var_2 = true;
    var_2 = var_1.x < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) - -517f)));
    return Struct_1(-vec3<i32>(1i, 1i, 1i), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 32>();
    var var_0 = Struct_4(Struct_3(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), _wgslsmith_clamp_u32(1u, ~(~12870u), 1u), u_input.b.x, vec2<i32>(1i, ~2147483647i), func_1()), false, Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-1i, -2147483647i, 18968i)), firstTrailingBit(max(-2147483647i, -2147483647i))), -341f, Struct_1(countOneBits(vec3<i32>(1i, 1i, 1i)), ~0i)), func_1());
    var var_1 = any(vec3<bool>(_wgslsmith_mod_u32(~5706u, ~1u) != (~0u | ~u_input.a), select(var_0.a.a.x, var_0.a.a.x, true), !(!(!var_0.a.a.x))));
    var_0 = Struct_4(var_0.a, false, Struct_2(func_1(), _wgslsmith_f_op_f32(-var_0.c.b), var_0.c.c), var_0.a.e);
    global0 = array<vec2<f32>, 32>();
    var_0 = Struct_4(Struct_3(var_0.a.a, 0u, ~var_0.a.b, var_0.d.a.zx, func_1()), !all(vec4<bool>(var_0.c.b < 898f, var_0.a.a.x && var_0.b, var_0.a.b > 4294967295u, false | var_0.a.a.x)), Struct_2(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-230f, var_0.c.b))), Struct_1(func_1().a, var_0.c.c.b)), func_1());
    global0 = array<vec2<f32>, 32>();
    var_0 = Struct_4(var_0.a, var_0.a.a.x, var_0.c, var_0.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.b, _wgslsmith_f_op_f32(-var_0.c.b), -2049f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b, -166f, 683f) * vec3<f32>(var_0.c.b, var_0.c.b, -1199f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.b, -1518f, var_0.c.b), vec3<f32>(994f, var_0.c.b, var_0.c.b)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(351f, var_0.c.b, var_0.c.b))))))), vec2<f32>(var_0.c.b, _wgslsmith_f_op_f32(907f + -2092f)), -719f, 2147483647i & min(3938i, _wgslsmith_sub_i32(var_0.a.d.x, firstTrailingBit(19122i))), var_0.a.b);
}

