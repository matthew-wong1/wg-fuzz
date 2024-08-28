struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-803f, -753f)) + -399f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1277f * -805f), -683f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(847f - 401f), _wgslsmith_div_f32(-221f, 1462f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(502f * 649f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-842f, 375f, 744f, 1519f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, 1088f, -602f), vec4<f32>(var_0, 211f, 2206f, -547f), vec4<bool>(true, true, false, false))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, 585f, -1608f, 358f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(678f, var_0, var_0, 226f), vec4<f32>(1071f, -1557f, var_0, -1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1857f, var_0, var_0, -756f), vec4<f32>(1228f, 1518f, -687f, var_0), vec4<bool>(false, true, false, true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) - vec4<f32>(var_0, var_0, var_0, 285f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0, var_0, var_0))))));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1269f - -722f) - 324f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.x)))), var_1.x), vec4<bool>(true, !all(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, true))));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_2.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1725f, -628f, var_0, 451f) * var_1))))), vec4<bool>(any(select(var_2.b.zy, var_2.b.xw, var_2.b.x)) | false, true, all(!var_2.b.yzz), all(!select(var_2.b.wx, var_2.b.zz, true))));
    let var_3 = Struct_2(Struct_1(vec4<f32>(2419f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -178f))), -360f, 394f), var_2.b), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_2.a.x, var_1.x, -651f) * var_2.a)), !select(vec4<bool>(var_2.b.x, true, true, var_2.b.x), !var_2.b, var_2.b.x | true)), Struct_1(var_1, !select(select(vec4<bool>(var_2.b.x, var_2.b.x, false, false), var_2.b, var_2.b.x), vec4<bool>(false, var_2.b.x, true, false), false)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a) + var_1), var_2.b));
    return vec3<bool>(true, true, var_3.b.b.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_3.a.x);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var_1 = arg_3.a.x;
    var_1 = arg_3.a.x;
    var var_2 = u_input.a;
    return any(!select(select(arg_3.b.zyy, arg_3.b.www, func_3()), !vec3<bool>(true, arg_2, arg_2), arg_3.b.ywx));
}

fn func_1() -> Struct_1 {
    var var_0 = all(vec4<bool>(true, any(vec3<bool>(false, all(vec2<bool>(false, true)), false)), true, all(vec3<bool>(true, true, func_2(vec2<f32>(-1209f, -839f), -2147483647i, false, Struct_1(vec4<f32>(-1190f, -563f, 206f, -413f), vec4<bool>(false, true, false, false)))))));
    var var_1 = _wgslsmith_f_op_f32(ceil(660f));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1343f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -474f) - _wgslsmith_f_op_f32(305f - -784f)), -608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<bool>(true, true, all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true), 0u <= u_input.a.x)), false));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(var_2.a, var_2.a)))), var_2.a, true)), vec4<bool>(!all(select(var_2.b, var_2.b, vec4<bool>(var_2.b.x, true, false, var_2.b.x))), var_2.b.x, var_2.a.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)) * _wgslsmith_f_op_f32(ceil(var_2.a.x))), true));
    var_0 = select(true, true, !all(select(!var_2.b, select(vec4<bool>(var_3.b.x, true, true, var_2.b.x), vec4<bool>(false, var_3.b.x, var_3.b.x, var_2.b.x), false), select(var_2.b, var_2.b, var_3.b))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)), var_2.b);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = firstTrailingBit(min(u_input.a.x, _wgslsmith_div_u32(abs(arg_0), countOneBits(u_input.a.x))));
    var var_1 = all(arg_1.a.b) & arg_2.b.x;
    var_0 = ~51832u;
    let var_2 = _wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(abs(~(~vec4<u32>(63923u, u_input.a.x, 15046u, arg_0))), u_input.a));
    var var_3 = arg_2;
    return Struct_1(arg_2.a, !(!(!arg_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(1u, Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1212f), _wgslsmith_f_op_f32(floor(185f)), -778f, _wgslsmith_f_op_f32(f32(-1f) * -889f)), vec4<bool>(true, false, any(vec2<bool>(true, false)), any(vec4<bool>(false, false, true, false)))), func_1(), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(1209f)), _wgslsmith_f_op_f32(floor(-493f)), -788f, -451f), vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, true)), func_1()), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-752f, -544f, _wgslsmith_div_f32(-632f, 487f), _wgslsmith_f_op_f32(f32(-1f) * -614f))), select(vec4<bool>(true, func_2(vec2<f32>(679f, -171f), 0i, false, Struct_1(vec4<f32>(223f, -126f, -650f, -1000f), vec4<bool>(true, false, true, true))), true, true), vec4<bool>(true, true, true, true), 1i == _wgslsmith_clamp_i32(-18130i, -2017i, 20052i))), -firstTrailingBit(abs(reverseBits(vec3<i32>(61271i, 40838i, 2147483647i)))));
    var_0 = Struct_1(var_0.a, !var_0.b);
    var var_1 = func_4(~u_input.a.x, Struct_2(func_1(), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(var_0.a.x, 362f, -1105f, var_0.a.x)), vec4<f32>(var_0.a.x, 910f, -1712f, var_0.a.x)), !var_0.b), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(418f, var_0.a.x)), _wgslsmith_f_op_f32(206f - 1078f), -876f, var_0.a.x), var_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * _wgslsmith_f_op_vec4_f32(var_0.a - var_0.a)), vec4<bool>(!var_0.b.x, var_0.b.x || true, var_0.b.x == false, true))), func_4(u_input.a.x, Struct_2(func_1(), Struct_1(vec4<f32>(-534f, var_0.a.x, -1122f, var_0.a.x), !var_0.b), func_4(u_input.a.x, Struct_2(Struct_1(vec4<f32>(146f, var_0.a.x, -1432f, var_0.a.x), vec4<bool>(true, var_0.b.x, true, var_0.b.x)), Struct_1(var_0.a, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), Struct_1(var_0.a, var_0.b), Struct_1(vec4<f32>(778f, var_0.a.x, 1470f, -1000f), var_0.b)), func_1(), vec3<i32>(-1i, 2147483647i, -45197i)), Struct_1(vec4<f32>(531f, 760f, -457f, -558f), var_0.b)), func_4(1u, Struct_2(Struct_1(vec4<f32>(-762f, -1150f, var_0.a.x, var_0.a.x), vec4<bool>(var_0.b.x, false, true, var_0.b.x)), Struct_1(var_0.a, vec4<bool>(true, false, false, var_0.b.x)), func_1(), func_4(u_input.a.x, Struct_2(Struct_1(var_0.a, vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)), Struct_1(var_0.a, var_0.b), Struct_1(vec4<f32>(var_0.a.x, -629f, var_0.a.x, -278f), var_0.b), Struct_1(vec4<f32>(var_0.a.x, -668f, var_0.a.x, var_0.a.x), vec4<bool>(true, false, var_0.b.x, false))), Struct_1(var_0.a, var_0.b), vec3<i32>(-5125i, -7376i, -27831i))), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), ~vec3<i32>(-18604i, 0i, -2147483647i)), -vec3<i32>(~(-32940i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -35299i, -14146i), vec3<i32>(-39046i, -61568i, 17622i)), ~(-54000i))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(27771i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 8392i, -38043i), vec4<i32>(1358i, -1i, -2147483647i, -15571i))), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 35786i, 3599i), vec4<i32>(1i, 7896i, 10208i, 1i))), vec3<i32>(~max(2147483647i, 374i), _wgslsmith_sub_i32(-24900i, countOneBits(-60330i)), _wgslsmith_sub_i32(10289i << (u_input.a.x % 32u), ~2147483647i))));
    var var_2 = func_4(4294967295u, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, 1000f, var_0.a.x, var_1.a.x), vec4<f32>(-395f, 568f, var_1.a.x, var_1.a.x), vec4<bool>(false, var_0.b.x, var_1.b.x, var_0.b.x))) - var_0.a), !(!var_1.b)), func_4(countOneBits(u_input.a.x) ^ 1u, Struct_2(Struct_1(var_0.a, var_0.b), Struct_1(vec4<f32>(var_1.a.x, var_1.a.x, -1829f, 3036f), vec4<bool>(var_1.b.x, true, var_0.b.x, var_1.b.x)), func_1(), func_1()), func_1(), ~select(vec3<i32>(-21297i, 27984i, -38807i), vec3<i32>(0i, 34336i, 13039i), var_1.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a + var_1.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1903f, var_1.a.x, 1000f, var_0.a.x))), vec4<bool>(true, var_0.b.x, func_4(u_input.a.x, Struct_2(Struct_1(vec4<f32>(-1108f, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.b.x, var_1.b.x, false, var_0.b.x)), Struct_1(var_1.a, var_1.b), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, 1140f, 130f), vec4<bool>(true, false, false, true)), Struct_1(vec4<f32>(-200f, -1000f, -1151f, var_0.a.x), vec4<bool>(var_1.b.x, var_0.b.x, var_1.b.x, true))), Struct_1(var_1.a, vec4<bool>(var_1.b.x, true, var_0.b.x, true)), vec3<i32>(-2147483647i, 1i, 2147483647i)).b.x, any(var_0.b.zy))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_1.a, var_1.a))), func_1().b)), func_4(u_input.a.x, Struct_2(Struct_1(var_0.a, vec4<bool>(var_1.b.x, false, true, var_0.b.x)), Struct_1(var_1.a, !var_1.b), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a - var_1.a), vec4<bool>(false, false, var_0.b.x, var_0.b.x)), Struct_1(vec4<f32>(var_0.a.x, var_1.a.x, 499f, 747f), vec4<bool>(var_1.b.x, true, var_0.b.x, false))), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.a), vec4<f32>(-625f, var_1.a.x, 771f, -634f))), vec4<bool>(true, var_1.b.x, !var_0.b.x, var_1.b.x)), ~vec3<i32>(-8024i, 1i, min(-1i, -8275i))), ~(-_wgslsmith_div_vec3_i32(-vec3<i32>(-41040i, -1i, -11896i), ~vec3<i32>(37269i, 1i, 1i)))).a.x;
    var var_3 = func_4(4294967295u, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1.a)), _wgslsmith_f_op_vec4_f32(-var_0.a)), func_1().b), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), func_1().b), func_1(), Struct_1(var_0.a, var_0.b)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1664f, 183f, -478f, -1686f) + var_1.a)))), vec4<bool>(var_1.b.x, any(var_1.b.wwx) == false, all(select(var_0.b.yx, vec2<bool>(var_0.b.x, false), vec2<bool>(var_1.b.x, var_1.b.x))), any(vec2<bool>(true, var_0.b.x)))), abs(vec3<i32>(1i, 1i, 1i))).b.x;
    let var_4 = ~_wgslsmith_div_u32(~(~42394u), 24161u);
    let var_5 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(select(var_0.a.x, 354f, var_0.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.xz))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * -1178f), -369f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.yz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 128f) - var_0.a.xw))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~25976u, _wgslsmith_sub_u32(var_4, 14138u)), countOneBits(0u), var_4), var_4, 1u), 0i, vec4<i32>(min(~2147483647i, max(3298i, 2147483647i)), -52062i, (-1i >> (var_4 % 32u)) << (u_input.a.x % 32u), _wgslsmith_clamp_i32(~3235i, 89745i, select(-30604i, 0i, var_0.b.x))) & max(max(-vec4<i32>(-1i, 53032i, 90668i, -872i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(i32(-1i) * -2306i, i32(-1i) * -1i, 1i, 77086i)));
}

