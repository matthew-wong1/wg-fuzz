struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    return 1i;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_clamp_vec2_i32(u_input.e.wy, vec2<i32>(-func_2(Struct_3(arg_1.a.wzw), Struct_2(arg_0.a, vec2<f32>(arg_0.b.x, arg_1.c), arg_1, arg_0.c.a), arg_0.c), 14957i), ~firstTrailingBit(arg_1.a.yz));
    let var_2 = true;
    let var_3 = arg_1.c;
    let var_4 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.xzz, vec3<u32>(4294967295u, arg_1.d, 4294967295u)), ~0u)) >= abs(1u);
    return !vec4<bool>(all(vec3<bool>(var_2, true, var_4)), var_2, true, true);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = vec2<bool>(false, any(select(func_1(Struct_2(false, vec2<f32>(arg_0, -169f), Struct_1(u_input.e, u_input.c.yy, -2679f, 0u), vec4<i32>(0i, u_input.d.x, u_input.e.x, -37808i)), Struct_1(u_input.e, vec2<i32>(-2147483647i, -2147483647i), 432f, 1u)).xyx, select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), false), !vec3<bool>(true, arg_1, false), vec3<bool>(false, arg_1, arg_1)), func_1(Struct_2(arg_1, vec2<f32>(arg_0, arg_3), Struct_1(vec4<i32>(53446i, arg_2, 2147483647i, u_input.d.x), vec2<i32>(arg_2, arg_2), -197f, 35537u), vec4<i32>(u_input.c.x, arg_2, 1i, 1i)), Struct_1(vec4<i32>(12284i, u_input.d.x, 1i, u_input.d.x), vec2<i32>(9257i, 2147483647i), -2477f, 1u)).x)));
    var_0 = select(!vec2<bool>(arg_1 || !arg_1, true), !func_1(Struct_2(true, vec2<f32>(arg_3, -1422f), Struct_1(vec4<i32>(-18804i, -2147483647i, u_input.e.x, 2147483647i), vec2<i32>(arg_2, u_input.c.x), -542f, 4294967295u), -u_input.e), Struct_1(u_input.e, u_input.c.yy, 182f, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 31805u), u_input.b.xyy))).xy, !select(!vec2<bool>(var_0.x, false), select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(false, var_0.x), select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), var_0.x)), true));
    var var_1 = 727i;
    var_0 = !vec2<bool>(all(select(vec3<bool>(arg_1, var_0.x, false), func_1(Struct_2(false, vec2<f32>(arg_3, arg_0), Struct_1(u_input.e, vec2<i32>(-32555i, arg_2), arg_0, 40590u), u_input.e), Struct_1(u_input.e, u_input.c.xx, -169f, u_input.b.x)).wyy, true)), !var_0.x);
    var_0 = vec2<bool>(23668i <= -_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 1i, -20852i), -vec3<i32>(u_input.c.x, -35678i, -19593i)), var_0.x);
    return arg_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, firstTrailingBit(abs(-10181i))), u_input.d.x, min(firstTrailingBit(_wgslsmith_add_i32(2147483647i, u_input.c.x)), u_input.c.x), ~u_input.c.x), vec2<i32>(1i, _wgslsmith_mod_i32(-1i, select(u_input.d.x, u_input.c.x, true))) >> ((u_input.b.ww ^ vec2<u32>(~0u, 92077u & u_input.b.x)) % vec2<u32>(32u)), 921f, u_input.b.x);
    var var_1 = 53197i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f - arg_1.x)))), 671f, arg_1.x, arg_1.x);
    var var_3 = select(vec4<bool>(arg_0.x, arg_0.x, all(vec2<bool>(arg_0.x, !arg_0.x)), true), !func_1(Struct_2(true, _wgslsmith_f_op_vec2_f32(-var_2.wx), var_0, vec4<i32>(u_input.d.x, var_0.b.x, -1i, var_0.b.x)), Struct_1(min(u_input.e, var_0.a), vec2<i32>(9791i, 8112i), -1382f, ~u_input.a)), arg_0.x);
    let var_4 = Struct_3(_wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, u_input.d.x, 13347i), var_0.a.zzx, vec3<i32>(u_input.c.x, -21093i, 2147483647i))), vec3<i32>(var_0.a.x, u_input.c.x, var_0.b.x) & vec3<i32>(var_0.a.x, var_0.a.x, -33955i)) << (u_input.b.zzw % vec3<u32>(32u)));
    return vec3<f32>(arg_1.x, -1015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, var_0.c, true)) * _wgslsmith_f_op_f32(exp2(var_0.c))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-579f, var_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!func_1(Struct_2(false, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1272f, -999f))), Struct_1(vec4<i32>(u_input.c.x, 2147483647i, u_input.d.x, u_input.c.x), vec2<i32>(-10016i, -9128i), -1071f, 0u), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i)), Struct_1(u_input.e, u_input.c.xx ^ u_input.d.zy, _wgslsmith_f_op_f32(-863f - -781f), u_input.a)));
    var var_1 = u_input.b >> (~u_input.b % vec4<u32>(32u));
    var_1 = ~u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(func_3(-861f, false, _wgslsmith_sub_i32(-31046i, 27808i), _wgslsmith_f_op_f32(f32(-1f) * -935f)), true, (0u == var_1.x) | all(vec3<bool>(false, var_0, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-482f, -1555f)) - vec2<f32>(231f, -1588f))))));
    var var_3 = all(select(!(!func_1(Struct_2(true, var_2.zy, Struct_1(u_input.e, u_input.c.xy, var_2.x, 4294967295u), vec4<i32>(-27176i, u_input.e.x, 2147483647i, 52987i)), Struct_1(u_input.e, u_input.d.zz, var_2.x, 1u)).zzw), func_1(Struct_2(true, vec2<f32>(var_2.x, var_2.x), Struct_1(vec4<i32>(u_input.c.x, 2147483647i, 31311i, 1i), vec2<i32>(u_input.d.x, u_input.c.x), var_2.x, 1u), u_input.e), Struct_1(vec4<i32>(u_input.e.x, u_input.d.x, u_input.c.x, u_input.d.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(u_input.e.x, 0i)), 193f, 40624u)).wxz, vec3<bool>(all(vec2<bool>(true, var_0)), func_3(_wgslsmith_f_op_f32(1000f - var_2.x), false, _wgslsmith_clamp_i32(u_input.e.x, -1i, u_input.e.x), _wgslsmith_f_op_f32(-926f * -254f)), all(select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0))))));
    let var_4 = 0u;
    var var_5 = func_2(Struct_3(-_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(3478i, u_input.c.x, u_input.e.x)), abs(vec3<i32>(u_input.d.x, 59554i, u_input.e.x)))), Struct_2(any(select(func_1(Struct_2(var_0, var_2.zy, Struct_1(u_input.e, vec2<i32>(0i, 1i), var_2.x, 77208u), u_input.e), Struct_1(u_input.e, vec2<i32>(11456i, u_input.c.x), -854f, 1u)).zyx, vec3<bool>(true, var_0, true), !vec3<bool>(false, true, var_0))), _wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(false, !var_0, var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yy)))).zz, Struct_1(u_input.e | ~u_input.e, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.e.x), vec2<i32>(52755i, -3454i)), var_2.x, var_1.x), _wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.c.x, u_input.c.x, 42330i, -16574i) & u_input.e), vec4<i32>(-74842i, 2147483647i, u_input.e.x, u_input.c.x) & max(vec4<i32>(-1i, u_input.d.x, -2147483647i, 23768i), vec4<i32>(-1i, 13890i, 9248i, u_input.c.x)))), Struct_1(-u_input.e ^ select(vec4<i32>(u_input.e.x, u_input.d.x, 2147483647i, 1i), _wgslsmith_mult_vec4_i32(u_input.e, vec4<i32>(u_input.c.x, -1i, u_input.c.x, -14575i)), func_1(Struct_2(var_0, vec2<f32>(var_2.x, 714f), Struct_1(u_input.e, u_input.c.xz, var_2.x, 81714u), vec4<i32>(0i, u_input.e.x, -20410i, u_input.e.x)), Struct_1(vec4<i32>(-10444i, u_input.d.x, u_input.d.x, u_input.d.x), u_input.e.zz, 846f, 57219u))), -reverseBits(vec2<i32>(u_input.d.x, u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1900f * -284f)))), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.x), var_1.wz), var_4, abs(20359u), _wgslsmith_dot_vec2_u32(u_input.b.xz, var_1.yw))), vec2<u32>(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(17467u, var_1.x), ~u_input.b.x, var_1.x)), max(_wgslsmith_dot_vec3_u32(var_1.xxw, u_input.b.wyz) << (u_input.b.x % 32u), _wgslsmith_mod_u32(~u_input.b.x, countOneBits(1525u)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-477f, _wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(true, true, var_0), vec2<f32>(190f, var_2.x))).x))), var_2.yy)), ~vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(u_input.e), vec4<i32>(u_input.e.x, -1i, u_input.c.x, u_input.d.x)), -11809i, -1731i), ~(-20433i));
}

