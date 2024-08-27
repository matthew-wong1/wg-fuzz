struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(vec3<bool>(!arg_1.x, true, 60937u >= (arg_0.b.b & 67214u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.c.b)), arg_0.d.c.c, arg_3.c.d, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(arg_3.b.yz, vec2<u32>(0u, 4294967295u)), ~arg_3.b.yz) | arg_3.a.e), arg_3.a.d.wyz, Struct_1(arg_0.d.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.a.b.x, arg_0.d.c.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.b.x, arg_3.c.b.x))))), !vec4<bool>(any(vec4<bool>(false, true, arg_3.a.a.x, false)), true, arg_0.d.c.c.x, true), firstTrailingBit(~_wgslsmith_sub_vec4_u32(arg_3.a.d, arg_0.d.a.d)), firstTrailingBit(select(_wgslsmith_add_vec2_u32(arg_3.b.yx, vec2<u32>(1u, arg_3.a.e.x)), vec2<u32>(u_input.c, 6640u), all(arg_3.a.a.yx)))), arg_1);
    var var_1 = Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(arg_2.x, -28903i, 28596i, arg_2.x)), vec4<i32>(abs(2147483647i), ~1i, i32(-1i) * -2147483647i, arg_0.a.a)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(firstTrailingBit(-5283i), _wgslsmith_div_i32(arg_2.x, u_input.d.x), min(-2147483647i, 29073i)), -9138i)), ~61290u);
    var_1 = Struct_2(-1i, ~29745u);
    let var_2 = arg_0.e;
    let var_3 = _wgslsmith_mult_i32(var_1.a, abs(~(-1i) | arg_2.x) << (abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 29294u, 0u, arg_0.a.b), ~vec4<u32>(1u, 9042u, var_1.b, arg_0.d.b.x))) % 32u));
    return arg_0.d.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_5 {
    let var_0 = Struct_3(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1265f, -1113f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(339f, -1000f), vec2<f32>(-1072f, 1000f)))), select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec3<bool>(true, false, true))))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), any(vec4<bool>(true, true, false, false))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 93410u, 0u, 4294967295u), vec4<u32>(0u, 10106u, 4310u, u_input.a), vec4<u32>(907u, 1u, 1u, 7610u)) ^ firstTrailingBit(vec4<u32>(u_input.a, 17277u, 4294967295u, u_input.c))), vec2<u32>(~u_input.a, ~max(31186u, 0u))), func_3(Struct_5(Struct_2(arg_1, 4294967295u), Struct_2(-2147483647i, u_input.e), any(vec4<bool>(false, true, false, false)), Struct_3(Struct_1(vec3<bool>(true, false, false), vec2<f32>(1008f, -560f), vec4<bool>(true, false, false, true), vec4<u32>(u_input.b, u_input.c, u_input.a, u_input.e), vec2<u32>(63157u, 1u)), vec3<u32>(u_input.b, 14340u, u_input.e), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-595f, -752f), vec4<bool>(true, false, true, false), vec4<u32>(u_input.c, 54124u, 44467u, u_input.c), vec2<u32>(u_input.e, 1u)), vec3<bool>(true, false, true)), reverseBits(-1i)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), u_input.d.xy & select(vec2<i32>(33433i, 13230i), vec2<i32>(0i, arg_1), true), Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<f32>(-711f, -1127f), vec4<bool>(false, false, false, false), vec4<u32>(u_input.a, u_input.e, u_input.e, u_input.e), vec2<u32>(4294967295u, u_input.b)), ~vec3<u32>(0u, 1u, u_input.b), Struct_1(vec3<bool>(true, false, false), vec2<f32>(-749f, 380f), vec4<bool>(true, true, false, false), vec4<u32>(12580u, 0u, 37294u, 16792u), vec2<u32>(u_input.b, u_input.b)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))) >> (vec3<u32>(30472u, u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 21730u, u_input.c), vec3<u32>(76580u, 0u, u_input.b)), max(vec3<u32>(105807u, u_input.c, 95050u), vec3<u32>(u_input.c, u_input.a, u_input.a)))) % vec3<u32>(32u)), Struct_1(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(445f, -601f), vec2<f32>(1333f, -226f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(703f, 1225f) * vec2<f32>(-1000f, -158f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-921f, 708f)))))), vec4<bool>(true & (u_input.e <= u_input.a), any(vec3<bool>(true, true, true)), true, true), ~(~vec4<u32>(17006u, 62349u, u_input.e, u_input.c)), countOneBits(max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 62196u), vec2<u32>(22993u, 0u)), vec2<u32>(u_input.c, 11601u)))), select(vec3<bool>(true, !any(vec4<bool>(false, false, false, true)), !any(vec4<bool>(true, false, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), 4294967295u < u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(any(vec2<bool>(true, false)), any(vec2<bool>(false, true)), true))));
    let var_1 = select(vec2<bool>(any(select(var_0.d.yz, !var_0.d.zy, all(var_0.a.c.yz))), _wgslsmith_mod_i32(~0i, reverseBits(arg_0.x)) > _wgslsmith_sub_i32(arg_0.x ^ -2147483647i, ~arg_0.x)), !var_0.d.xx, any(vec4<bool>(-arg_0.x < -1i, ~1u >= firstTrailingBit(1u), var_0.a.a.x, true)));
    let var_2 = Struct_2(arg_1, _wgslsmith_div_u32(func_3(Struct_5(Struct_2(arg_0.x, u_input.c), Struct_2(-2147483647i, u_input.b), true, Struct_3(Struct_1(var_0.a.a, vec2<f32>(var_0.c.b.x, var_0.c.b.x), var_0.c.c, vec4<u32>(75620u, u_input.b, var_0.a.d.x, 21008u), var_0.c.e), var_0.c.d.wzy, var_0.a, vec3<bool>(var_1.x, var_0.d.x, var_0.d.x)), 57761i), select(vec3<bool>(var_0.a.a.x, true, var_1.x), var_0.a.c.wzw, true), arg_0.xy, var_0).x, select(u_input.e, u_input.a, true)) >> (u_input.e % 32u));
    var var_3 = var_0.c.e.x;
    var var_4 = vec2<i32>(abs(2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a | 0i, -1i, -21354i), -(~vec3<i32>(arg_1, -2147483647i, -31023i))));
    return Struct_5(var_2, Struct_2(max(0i, arg_0.x), u_input.c), false, var_0, 11852i);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = vec2<bool>(true, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))));
    let var_1 = func_2(~_wgslsmith_add_vec4_i32(u_input.d, max(vec4<i32>(arg_0.x, 29664i, -16115i, -2147483647i) | u_input.d, vec4<i32>(arg_0.x, arg_0.x, 2147483647i, arg_0.x))), firstLeadingBit(2147483647i));
    let var_2 = var_1.d.d.x;
    let var_3 = _wgslsmith_dot_vec2_i32(u_input.d.ww, vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, abs(u_input.d.x), arg_0.x), -29137i));
    let var_4 = false;
    return any(!var_1.d.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>((_wgslsmith_f_op_f32(sign(1000f)) != _wgslsmith_f_op_f32(round(-385f))) || true, !(!func_1(vec3<i32>(-16722i, u_input.d.x, 48500i), u_input.c))), vec2<bool>(false, true), any(vec2<bool>(true, true)));
    var var_1 = vec2<bool>(false, true);
    let var_2 = !all(select(select(vec4<bool>(true, var_0.x, var_0.x, var_1.x), !vec4<bool>(true, true, true, var_1.x), !var_0.x), select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, var_0.x, true, true), any(vec2<bool>(var_1.x, true))), !vec4<bool>(var_0.x, false, true, true)));
    let var_3 = countOneBits(min(_wgslsmith_mod_vec4_i32(u_input.d, abs(vec4<i32>(-13292i, u_input.d.x, -28220i, u_input.d.x))), vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, 1i), i32(-1i) * -2147483647i, ~15793i, 0i))) >> (vec4<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 40902u), vec2<u32>(u_input.b, 4294967295u)) & 0u), ~(~u_input.a | u_input.b), select(1u, u_input.c, false), u_input.c) % vec4<u32>(32u));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-709f, -434f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-865f)))) + -1352f));
    let var_5 = _wgslsmith_f_op_f32(271f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1755f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f) + _wgslsmith_f_op_f32(f32(-1f) * -267f)))));
    var var_6 = -abs(_wgslsmith_div_vec2_i32(firstLeadingBit(countOneBits(var_3.zw)), vec2<i32>(~u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, var_3.x), u_input.d))));
    var var_7 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_5, 376f)), _wgslsmith_f_op_f32(select(var_5, var_5, var_1.x)), _wgslsmith_div_f32(668f, var_5))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_5, -480f, var_5)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5, var_5, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(427f, 789f, var_5) * vec3<f32>(var_5, -1521f, var_5)), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-27332i, _wgslsmith_div_f32(-275f, 624f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(330f, _wgslsmith_f_op_f32(floor(-2579f)), var_7.x, _wgslsmith_f_op_f32(trunc(1144f)))), u_input.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, 1955f, -454f, var_5)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(366f, var_5, 560f, var_5), vec4<f32>(-929f, var_7.x, var_7.x, 1360f)))) - vec4<f32>(1415f, var_5, var_5, -1000f)));
}

