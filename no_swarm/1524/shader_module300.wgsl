struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = arg_1.b;
    var_0 = arg_1.a;
    var_0 = arg_3;
    let var_1 = arg_1;
    var_0 = Struct_2(arg_1.c.d.x, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1799f - arg_3.b.a)), _wgslsmith_f_op_f32(-734f * arg_1.b.c.c.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(arg_1.b.b.a - 1071f), _wgslsmith_div_f32(arg_1.e.a, 349f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1103f, 524f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, arg_3.b.c.x, arg_1.b.c.a))))), var_0.c.d, var_0.a), arg_1.a.c);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.b - arg_3.c.b));
}

fn func_2() -> Struct_3 {
    let var_0 = abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, u_input.a), (~u_input.a ^ -u_input.a) >> (~4294967295u % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-309f, -2743f, 168f, 1087f) * vec4<f32>(733f, 2337f, 1000f, -2366f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, 697f, 304f, -562f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1307f, -1000f, 1678f, 621f) - vec4<f32>(1110f, -164f, 1288f, -1476f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(593f, 362f, 1827f, -609f))))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2371f)))), _wgslsmith_f_op_f32(max(1f, -435f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-770f)), -751f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -921f)))))));
    let var_2 = Struct_4(Struct_3(Struct_2(false, Struct_1(-1128f, vec3<f32>(var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-500f, 853f, 422f)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), all(vec4<bool>(false, false, false, false))), Struct_1(_wgslsmith_div_f32(-2549f, var_1.x), var_1.wwx, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_1.x, var_1.x))), vec3<bool>(false, false, true), true)), Struct_2(true, Struct_1(-2073f, vec3<f32>(var_1.x, 156f, var_1.x), _wgslsmith_f_op_vec3_f32(min(var_1.yzy, vec3<f32>(-1148f, 143f, var_1.x))), vec3<bool>(true, true, true), true), Struct_1(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec3_f32(abs(var_1.wxw)), _wgslsmith_f_op_vec3_f32(-var_1.yyw), vec3<bool>(false, false, false), true)), Struct_1(-535f, var_1.wwx, var_1.xzz, !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true), Struct_2(false, Struct_1(var_1.x, _wgslsmith_f_op_vec3_f32(-var_1.wxw), var_1.yyw, vec3<bool>(false, true, true), true), Struct_1(var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 1270f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 1520f), var_1.zzx), vec3<bool>(false, true, false), any(vec4<bool>(true, true, true, false)))), Struct_1(_wgslsmith_f_op_f32(-957f * var_1.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), 1146f, var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wyz)), vec3<bool>(all(vec4<bool>(false, true, true, true)), true, var_1.x < var_1.x), true)), -1166f);
    var var_3 = var_2.a;
    return Struct_3(Struct_2(var_3.c.d.x || true, Struct_1(1795f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1509f, -531f, var_2.a.b.c.a), vec3<f32>(-273f, var_2.a.b.c.c.x, var_3.c.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 378f, var_1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -544f, 401f))), vec3<bool>(var_3.c.e & var_3.a.c.d.x, !var_2.a.e.d.x, true), any(vec4<bool>(var_3.e.d.x, false, true, false))), Struct_1(var_2.a.c.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.b.c)), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -11532i, u_input.a, var_0), vec4<i32>(-23722i, 0i, -4211i, u_input.a)), Struct_3(Struct_2(true, Struct_1(var_1.x, vec3<f32>(var_3.a.b.b.x, var_3.e.a, var_3.d.c.b.x), var_3.c.b, var_2.a.d.c.d, false), var_3.d.b), var_3.d, Struct_1(-465f, var_3.b.c.c, vec3<f32>(var_2.a.c.c.x, var_3.b.c.b.x, 1630f), vec3<bool>(var_3.e.d.x, true, false), true), var_2.a.d, var_3.d.c), abs(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_2(false, var_3.b.c, Struct_1(-568f, vec3<f32>(var_3.d.c.c.x, 1015f, var_1.x), vec3<f32>(var_2.b, var_2.a.a.c.a, 1000f), var_2.a.c.d, false)))), select(vec3<bool>(true, var_2.a.a.a, false), select(vec3<bool>(false, var_3.c.d.x, var_2.a.e.e), var_3.e.d, vec3<bool>(var_3.c.d.x, true, false)), true), true)), var_2.a.a, var_3.a.b, Struct_2(true || var_3.e.e, Struct_1(-1123f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(982f, var_1.x, -204f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -1283f, -230f) - var_1.www))), vec3<f32>(868f, -181f, 334f), var_3.a.c.d, select(true, false || var_2.a.a.b.e, true)), var_2.a.b.c), Struct_1(_wgslsmith_f_op_f32(-var_1.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1319f - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.d.c.c.x, 687f) - _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(-1310f - _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(var_2.a.e.b)))) + var_1.wzw), vec3<bool>(any(!vec4<bool>(var_2.a.b.a, true, false, var_3.e.e)), !(var_0 < u_input.a), false), _wgslsmith_f_op_vec3_f32(func_3(-22775i, Struct_3(var_2.a.d, Struct_2(var_3.b.b.d.x, var_3.e, Struct_1(-447f, vec3<f32>(var_3.a.c.c.x, var_1.x, 384f), var_1.ywz, vec3<bool>(true, true, false), var_2.a.e.d.x)), Struct_1(var_3.e.c.x, vec3<f32>(var_3.b.c.a, var_1.x, 211f), var_3.e.b, vec3<bool>(true, false, var_2.a.c.d.x), true), var_3.b, var_2.a.a.c), ~vec3<u32>(0u, 0u, 9537u), var_3.d)).x <= 963f));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    var var_0 = arg_0.a.c.d;
    var var_1 = arg_0.a;
    var_1 = Struct_2(!(arg_0.c.d.x || var_0.x), arg_0.d.b, Struct_1(_wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.a & 2147483647i, func_2(), ~vec3<u32>(0u, 0u, 4294967295u), Struct_2(false, var_1.c, arg_0.a.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.x, var_1.c.c.x, var_1.b.c.x))), var_1.c.b, vec3<bool>(true, true, true), !(!select(true, true, false))));
    var_0 = vec3<bool>(true, arg_0.c.e, !var_0.x);
    return Struct_4(arg_0, _wgslsmith_f_op_f32(min(var_1.c.a, 1097f)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_4(func_4(func_4(arg_1.a).a).a, _wgslsmith_f_op_f32(-arg_1.a.d.c.b.x));
    var_0 = Struct_4(func_4(func_2()).a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1809f, arg_1.b))));
    var var_1 = func_4(arg_1.a).a.d;
    let var_2 = firstLeadingBit(reverseBits(abs(-8155i)));
    let var_3 = arg_1.a.a;
    return ~u_input.a;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(550f, -415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), -710f))));
    var var_2 = vec3<i32>(-_wgslsmith_mod_i32(19095i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, 1i, 101i), vec3<i32>(2147483647i, u_input.a, u_input.a))), u_input.a, func_5(~firstTrailingBit(vec4<u32>(24747u, 28534u, arg_0, 0u)), func_4(func_2())));
    let var_3 = vec2<u32>(~abs(var_0), _wgslsmith_mod_u32(1981u, ~arg_0));
    let var_4 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, _wgslsmith_sub_i32(u_input.a, 2272i) >> (arg_0 % 32u)), var_2.xy);
    return Struct_2((true || arg_1) || arg_1, Struct_1(-570f, vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x), _wgslsmith_f_op_vec3_f32(exp2(var_1.zzy)), vec3<bool>(true, false, arg_1), false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, -1212f, 141f)))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), 1f, var_1.x), vec3<bool>(!arg_1, arg_1, true), arg_1));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = vec2<bool>(!(!(arg_1.a <= 871f) & ((arg_2 & arg_2) | true)), true);
    var var_1 = select(abs(u_input.a), u_input.a, all(vec4<bool>(false, true, _wgslsmith_f_op_f32(-arg_0.b.c.x) == _wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_add_i32(u_input.a, u_input.a) == ~u_input.a)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(1u, any(vec3<bool>(true, true, true)) & true), func_1(~20364u, true).b, true);
    var_0 = Struct_2(var_0.b.e, Struct_1(_wgslsmith_f_op_f32(-var_0.c.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x * var_0.b.b.x)), _wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(round(func_2().c.c.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.a, Struct_3(Struct_2(true, Struct_1(var_0.c.c.x, vec3<f32>(248f, var_0.c.c.x, -1000f), vec3<f32>(1532f, -170f, -1000f), vec3<bool>(var_0.c.e, false, var_0.b.e), var_0.a), Struct_1(-3213f, var_0.c.c, vec3<f32>(-784f, var_0.c.b.x, var_0.b.a), vec3<bool>(true, var_0.a, true), false)), Struct_2(var_0.a, var_0.b, var_0.b), Struct_1(266f, var_0.c.b, vec3<f32>(var_0.b.b.x, var_0.b.b.x, 795f), vec3<bool>(true, var_0.b.d.x, true), true), Struct_2(true, Struct_1(-1206f, vec3<f32>(191f, -255f, -269f), var_0.b.b, vec3<bool>(true, var_0.c.e, true), var_0.a), var_0.b), var_0.c), vec3<u32>(1031u, 39343u, 30061u), Struct_2(var_0.c.d.x, Struct_1(var_0.b.c.x, vec3<f32>(var_0.b.b.x, var_0.b.c.x, 888f), var_0.c.b, var_0.b.d, true), var_0.c))), var_0.c.c))), var_0.b.d, func_4(func_2()).a.b.b.d.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) + 2162f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.b), var_0.c.c))), vec3<f32>(161f, -174f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(-var_0.b.c.x)))), !(!var_0.b.d), all(func_4(func_2()).a.e.d)));
    let var_1 = Struct_4(func_2(), _wgslsmith_f_op_f32(-877f * 1240f));
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(60218u, 48848u), vec2<u32>(19211u, 27257u), vec2<u32>(4294967295u, 0u)), select(max(vec2<u32>(4294967295u, 10977u), vec2<u32>(0u, 46078u)), ~vec2<u32>(1u, 4294967295u), !var_0.b.d.zy)), _wgslsmith_sub_u32(firstTrailingBit(~1u), firstTrailingBit(1u)), _wgslsmith_mult_u32(55079u, min(_wgslsmith_mod_u32(9533u, 1240u), ~24976u))), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(1u, 1u, 1u)))));
    var var_3 = abs(min(var_2.yx, vec2<u32>(~(35581u ^ var_2.x), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(55158u, var_2.x, var_2.x)), ~vec3<u32>(var_2.x, var_2.x, var_2.x)))));
    var var_4 = func_6(func_1(_wgslsmith_dot_vec2_u32(var_2.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(73626u, var_2.x), var_2.xx) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, var_2.x), var_2.xx)), true), Struct_1(_wgslsmith_f_op_f32(-var_1.a.a.b.c.x), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -476f))), func_2().e.a), _wgslsmith_f_op_vec3_f32(select(var_0.c.c, _wgslsmith_div_vec3_f32(var_1.a.b.b.b, _wgslsmith_f_op_vec3_f32(step(var_0.b.b, var_1.a.c.b))), var_1.a.b.b.e)), !(!vec3<bool>(true, false, var_0.a)), any(select(!vec4<bool>(var_0.b.e, var_1.a.e.d.x, false, var_1.a.a.a), vec4<bool>(var_1.a.b.a, var_1.a.a.a, var_1.a.e.e, true), select(vec4<bool>(false, true, var_0.a, var_0.b.d.x), vec4<bool>(var_1.a.b.b.d.x, false, false, false), true)))), any(vec4<bool>(true, var_0.c.e, var_0.c.d.x, true)) || func_4(var_1.a).a.d.c.d.x).c;
    let var_5 = var_4.e;
    var var_6 = _wgslsmith_mult_u32(90359u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 18080u, 4294967295u), vec3<u32>(0u, 4294967295u, var_2.x)), vec3<u32>(firstLeadingBit(var_3.x), reverseBits(1u), 4294967295u))) << ((var_2.x & _wgslsmith_add_u32(~firstTrailingBit(var_2.x), ~(~1u))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(abs(var_2.x & 53013u), _wgslsmith_add_u32(23928u, var_2.x) >> (15880u % 32u), ~abs(1u), min(var_2.x, _wgslsmith_div_u32(var_2.x, 1u))), var_0.c.c.xx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(686f * _wgslsmith_f_op_f32(round(-1807f))), _wgslsmith_f_op_f32(f32(-1f) * -617f)) - var_1.a.d.b.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_3(var_1.a.d, var_1.a.d, Struct_1(var_0.c.c.x, vec3<f32>(-1892f, 342f, -240f), var_0.b.b, var_4.d, var_1.a.d.c.d.x), Struct_2(var_0.c.e, Struct_1(749f, var_0.b.b, vec3<f32>(var_0.c.c.x, var_4.c.x, 410f), vec3<bool>(var_4.e, var_1.a.e.d.x, var_0.b.e), var_4.d.x), var_1.a.b.b), var_0.b)).a.c.a + _wgslsmith_f_op_f32(-var_0.c.a)), _wgslsmith_f_op_f32(-609f + _wgslsmith_f_op_f32(f32(-1f) * -451f))));
}

