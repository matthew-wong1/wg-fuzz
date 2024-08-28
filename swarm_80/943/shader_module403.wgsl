struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> f32 {
    var var_0 = -191f;
    var_0 = _wgslsmith_f_op_f32(abs(119f));
    return _wgslsmith_f_op_f32(f32(-1f) * -320f);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    let var_0 = vec3<i32>(-1i) * -arg_1.a.b.xyy;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_1.a.c.x - 558f), vec4<i32>(0i | -(8568i & u_input.c.x), 1i, -var_0.x, abs(2147483647i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a.a, -1035f, 1988f, _wgslsmith_f_op_f32(floor(arg_1.a.c.x))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.a, _wgslsmith_f_op_f32(trunc(-735f)), _wgslsmith_f_op_f32(1834f - arg_1.a.c.x), _wgslsmith_div_f32(arg_1.a.c.x, arg_1.a.c.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.c.x)), 1000f, _wgslsmith_f_op_f32(arg_1.a.c.x + arg_1.a.c.x), 777f))), !vec4<bool>(all(arg_0.zzy), all(arg_0.yyz), arg_0.x, all(vec3<bool>(arg_0.x, true, true))))));
    let var_2 = select(vec4<bool>(any(arg_0), arg_0.x, any(vec4<bool>(true, arg_0.x, arg_0.x, true == arg_0.x)), select(false, any(arg_0.zy), any(arg_0))), !vec4<bool>(true, any(!arg_0), true, !all(arg_0.xwz)), vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-144f, arg_1.a.c.x)) <= _wgslsmith_div_f32(var_1.a, 1000f), all(arg_0), !any(vec4<bool>(false, true, arg_0.x, true))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(var_1.a)), reverseBits(var_1.b) << (vec4<u32>(0u, ~(~u_input.b.x), ~12880u, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, arg_1.a.c.x, 898f, -1810f), arg_1.a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.c.x, arg_1.a.c.x, 1000f, var_1.c.x) * vec4<f32>(-296f, 1216f, arg_1.a.c.x, var_1.c.x)))) - _wgslsmith_f_op_vec4_f32(-var_1.c)), var_1.c, var_2.x)));
    var var_3 = arg_1;
    return ~(~((firstTrailingBit(arg_1.a.b.x) ^ -845i) << (43800u % 32u)));
}

fn func_1() -> vec2<u32> {
    var var_0 = 138195u;
    var_0 = u_input.b.x;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1032f + 367f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-617f + _wgslsmith_f_op_f32(max(964f, -368f))) * _wgslsmith_f_op_f32(3045f - _wgslsmith_f_op_f32(func_2())))), _wgslsmith_div_vec4_i32(vec4<i32>(-countOneBits(u_input.c.x), 1i | u_input.d, _wgslsmith_add_i32(u_input.a.x, -2147483647i) | 1i, u_input.c.x), vec4<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -18348i, u_input.d), vec3<i32>(-46412i, -17609i, 0i))), _wgslsmith_clamp_i32(1i, ~4012i, -4647i), min(_wgslsmith_sub_i32(u_input.d, -15515i), countOneBits(-1i)), _wgslsmith_clamp_i32(min(-1i, u_input.c.x), u_input.a.x, -1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(343f, -579f), _wgslsmith_f_op_f32(678f * -850f), _wgslsmith_f_op_f32(362f + 945f), _wgslsmith_f_op_f32(-555f * -1558f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, 806f, 1167f, 2102f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1370f + -373f), -1000f, _wgslsmith_f_op_f32(857f + 1545f), _wgslsmith_f_op_f32(select(450f, -251f, false))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - 158f), reverseBits(vec4<i32>(_wgslsmith_sub_i32(func_3(vec4<bool>(false, true, false, false), Struct_2(Struct_1(-631f, var_1.b, var_1.c))), _wgslsmith_dot_vec2_i32(vec2<i32>(36083i, -8127i), u_input.a)), u_input.d, firstLeadingBit(_wgslsmith_clamp_i32(var_1.b.x, 2147483647i, var_1.b.x)), firstTrailingBit(_wgslsmith_sub_i32(2147483647i, u_input.d)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(998f - 330f) - _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(trunc(var_1.a))) - 283f), 2651f, -780f));
    let var_3 = select(select(vec2<bool>(false, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(u_input.b.x < 20262u, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(any(vec2<bool>(true, true)), 797f > var_1.a)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), any(vec3<bool>(true, true, true)) | ((32343u | u_input.b.x) < u_input.b.x)));
    return ~u_input.b.xx ^ (vec2<u32>(countOneBits(max(7512u, u_input.b.x)), u_input.b.x) >> (vec2<u32>(countOneBits(45783u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~(~u_input.b.x)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(func_1(), u_input.b.zz), vec2<u32>(firstTrailingBit(u_input.b.x), firstTrailingBit(~_wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x))));
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(9278i, -1i, u_input.c.x), select(vec3<i32>(u_input.a.x, 1i, -11713i), vec3<i32>(u_input.a.x, -2147483647i, -31454i), vec3<bool>(true, false, true))), ~vec3<i32>(-2147483647i, 17974i, 36147i)), firstLeadingBit(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.c.x, 0i, 61922i))))), abs(_wgslsmith_mod_vec3_i32((vec3<i32>(u_input.d, -7538i, u_input.a.x) << (u_input.b % vec3<u32>(32u))) ^ -vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(5906i, 2105i), vec2<i32>(2147483647i, 2890i)), 20130i, 1i))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f - 1f)), countOneBits(vec4<i32>(reverseBits(-u_input.c.x), reverseBits(_wgslsmith_sub_i32(2147483647i, u_input.a.x)), -1i, ~(1i << (u_input.b.x % 32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, -1339f, -120f, 1450f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1119f, 874f, -1594f, -763f), vec4<f32>(1650f, 1634f, 603f, -1183f), vec4<bool>(false, true, true, true))))) + vec4<f32>(190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-395f, 340f))), 1090f, _wgslsmith_f_op_f32(func_2()))));
    var_0 = ~(-u_input.a.x);
    let var_3 = false == select(178f != _wgslsmith_f_op_f32(select(583f, -668f, var_2.a == -1205f)), select(true, !any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(trunc(186f)) > var_2.a), all(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<i32>(var_2.b.x, 0i), vec3<u32>(_wgslsmith_clamp_u32(~66086u, _wgslsmith_mult_u32(var_1.x, ~1u), u_input.b.x), ~28257u, ~(~4294967295u)), -1016f, 2044f);
}

