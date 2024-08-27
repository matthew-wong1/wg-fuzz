struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(any(vec3<bool>(true, select(all(vec4<bool>(false, true, false, true)), true, any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-519f + global0.x) > _wgslsmith_div_f32(1484f, global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1576f), _wgslsmith_f_op_f32(-1000f + 1529f))));
    let var_1 = ~_wgslsmith_div_vec4_u32(max(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u << (1u % 32u), 114794u, 4294967295u, 1u)), countOneBits(~select(vec4<u32>(0u, 6547u, 1u, 4294967295u), vec4<u32>(53937u, 56180u, 28531u, 2285u), vec4<bool>(true, false, true, var_0.a))));
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_1.x, select(~var_1.x, var_1.x & 4294967295u, true)), var_1.x ^ 4294967295u), ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(16363u, var_1.x), var_1.wz)));
    var_2 = var_1.xy;
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-307f * _wgslsmith_div_f32(110f, 739f)), _wgslsmith_f_op_f32(func_3()), -1904f, -326f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x, _wgslsmith_f_op_f32(-arg_1.c.x), global0.x))));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x - arg_1.c.x) + -487f) * arg_1.c.x), 1f, -1132f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(140f, 641f, -662f), _wgslsmith_div_vec3_f32(global0.xwz, global0.yxw)))))));
    var var_1 = Struct_4(arg_2, arg_2, vec3<i32>(1i, -1i, u_input.b.x | -_wgslsmith_sub_i32(9873i, 2147483647i)), u_input.c);
    let var_2 = Struct_1(abs(~arg_1.a), true, var_0.yx, 1u);
    let var_3 = arg_1;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: i32) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-189f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), -694f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -974f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1633f, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) * _wgslsmith_f_op_f32(-global0.x)), arg_0.c.x, 220f)))));
    let var_0 = 0i;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f + arg_0.c.x), _wgslsmith_f_op_f32(abs(-1025f)), -395f, arg_2));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(global0.x + -1554f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, 1730f, -437f, arg_2)))), arg_0.b & all(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c.x, -906f, arg_2, arg_2))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 1000f, -545f, arg_2), vec4<f32>(1190f, -619f, -1854f, global0.x)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1774f, arg_2, arg_0.c.x, global0.x), vec4<f32>(arg_0.c.x, 1000f, arg_2, -839f), vec4<bool>(true, true, true, arg_0.b))))))));
    let var_1 = true;
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = select(!(!(!select(vec4<bool>(true, false, arg_0.b, false), vec4<bool>(false, true, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_0.b, true)))), vec4<bool>(func_4(func_2(29922u, Struct_1(arg_0.a, arg_2.x, global0.yz, arg_0.a), Struct_2(arg_0.b)), -(~(-6882i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + arg_1) - arg_1), ~u_input.c), arg_0.b, select(true, arg_2.x & false, arg_0.b & arg_0.b) && arg_0.b, !(!arg_0.b | all(arg_2.yy))), true);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-218f - _wgslsmith_f_op_f32(step(global0.x, -1197f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - _wgslsmith_div_f32(-329f, _wgslsmith_f_op_f32(floor(-189f)))), -1284f));
    var var_1 = Struct_1(~4294967295u, arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(global0.yx)), _wgslsmith_f_op_vec2_f32(-arg_0.c))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global0.xy, vec2<f32>(701f, 1366f), vec2<bool>(false, false))), vec2<f32>(global0.x, 1135f), select(vec2<bool>(true, arg_0.b), vec2<bool>(var_0.x, arg_2.x), true))))), ~arg_0.a);
    var var_2 = vec3<u32>(arg_0.d, _wgslsmith_mult_u32(8674u, var_1.a), abs(abs(arg_0.a) ^ var_1.d)) << (vec3<u32>(~(~arg_0.a), (var_1.a >> (~4294967295u % 32u)) & _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_0.d), max(vec2<u32>(4294967295u, var_1.d), vec2<u32>(arg_0.a, 9244u))), 27853u) % vec3<u32>(32u));
    var_2 = ~vec3<u32>(var_2.x, ~(~_wgslsmith_mod_u32(0u, arg_0.a)), 64126u);
    return Struct_2(!select(all(arg_2.zx), var_1.b, any(!var_0)));
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> f32 {
    let var_0 = -(~countOneBits(~(~2147483647i)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-global0.x))), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1421f + 321f), _wgslsmith_div_f32(-723f, -1000f)))) - -565f), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * global0.x));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_div_f32(-1247f, _wgslsmith_f_op_f32(arg_1 + 1382f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-367f - arg_1))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, 470f, -1282f, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1056f, arg_1, -1484f, 994f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, func_2(select(12533u, 19601u, true), Struct_1(1162u, false, vec2<f32>(-808f, 1411f), 4294967295u), Struct_2(true)).c.x, _wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-var_1.x)))));
    var var_2 = countOneBits(reverseBits(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14818u, 30024u, 9981u, 1u), vec4<u32>(17838u, 10906u, 4294967295u, 1u)), _wgslsmith_div_u32(0u, 37772u), 1u, firstLeadingBit(37124u)))));
    var var_3 = global0.zw;
    return _wgslsmith_f_op_f32(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, _wgslsmith_f_op_f32(func_5(Struct_4(func_1(Struct_1(1u, true, global0.wz, 4294967295u), 387f, vec3<bool>(true, true, true)), func_1(Struct_1(1u, false, vec2<f32>(-1000f, global0.x), 1u), 992f, vec3<bool>(false, true, true)), _wgslsmith_add_vec3_i32(u_input.b.ywz, vec3<i32>(-11485i, u_input.a, u_input.a)), 35944i), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 170f))));
    var var_1 = Struct_4(func_1(Struct_1(26062u, all(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec2_f32(global0.yw + _wgslsmith_f_op_vec2_f32(global0.yw + vec2<f32>(global0.x, -427f))), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(35526u, 1u))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), vec3<bool>(_wgslsmith_f_op_f32(step(1347f, -1174f)) <= -607f, !(global0.x == global0.x), any(vec2<bool>(false, false)))), func_1(func_2(~(~52597u), Struct_1(_wgslsmith_div_u32(15671u, 47763u), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(31752u, 0u, 4294967295u), vec3<u32>(0u, 83998u, 4294967295u))), func_1(func_2(4294967295u, Struct_1(4294967295u, false, global0.xw, 1u), Struct_2(false)), global0.x, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(sign(global0.x))), global0.x), vec3<bool>(all(vec3<bool>(false, false, false)) & true, ~0i != -u_input.b.x, true)), ~firstTrailingBit(u_input.b.zxy), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mod_i32(~u_input.a, -_wgslsmith_div_i32(1i, 1i))));
    var var_2 = func_2(4294967295u, Struct_1(_wgslsmith_clamp_u32(~(~27778u), 0u, func_2(~45331u, func_2(117524u, Struct_1(0u, var_1.a.a, global0.wx, 0u), var_1.b), func_1(Struct_1(1u, true, vec2<f32>(-1032f, 416f), 1u), global0.x, vec3<bool>(var_1.a.a, false, var_1.b.a))).a), false, global0.xz, ~(~52557u) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10869u, 4294967295u, 19994u), ~vec4<u32>(92530u, 4294967295u, 1u, 1u))), func_1(Struct_1(17993u, !var_1.b.a, global0.wz, 0u), _wgslsmith_f_op_f32(f32(-1f) * -922f), select(!vec3<bool>(false, var_1.b.a, var_1.a.a), !select(vec3<bool>(var_1.b.a, var_1.a.a, var_1.b.a), vec3<bool>(true, var_1.a.a, false), vec3<bool>(true, false, var_1.a.a)), vec3<bool>(true, var_1.a.a, !var_1.b.a))));
    let var_3 = func_2(~(~0u & _wgslsmith_mult_u32(var_2.d, 0u)) & 63243u, Struct_1(_wgslsmith_add_u32(1u, ~42096u), var_2.b, vec2<f32>(-1715f, _wgslsmith_f_op_f32(-1000f - -115f)), ~26166u), var_1.a);
    let var_4 = func_2(var_3.a, Struct_1(var_3.a, true, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -108f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, var_3.c.x))), var_3.c)), ~4294967295u), var_1.b);
    let var_5 = vec2<bool>(false, all(!select(vec4<bool>(true, true, var_2.b, var_2.b), vec4<bool>(true, true, var_1.b.a, var_4.b), vec4<bool>(var_2.b, var_2.b, true, false))) | func_2(var_2.a, var_3, var_1.a).b);
    var_1 = Struct_4(Struct_2(var_3.b), func_1(Struct_1(var_2.a, any(vec4<bool>(true, true, true, true)), vec2<f32>(288f, _wgslsmith_f_op_f32(-var_3.c.x)), var_4.a), var_2.c.x, vec3<bool>(any(vec4<bool>(var_2.b, false, var_2.b, var_4.b)) == !var_5.x, var_3.b, var_4.b)), vec3<i32>(_wgslsmith_mod_i32(13908i, 8105i), _wgslsmith_dot_vec3_i32(vec3<i32>(~var_1.d, 16605i, var_1.c.x), select(vec3<i32>(u_input.b.x, var_1.c.x, var_1.d), vec3<i32>(u_input.c, u_input.b.x, 1i), false) | -vec3<i32>(var_1.c.x, 0i, -6929i)), -1i), -50587i);
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * 412f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-586f + 904f))))), ~1i);
}

