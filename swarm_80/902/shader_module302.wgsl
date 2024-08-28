struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = arg_1.c;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1157f);
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(arg_0.x, 0u), firstLeadingBit(select(arg_2.d.x, 19991u, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))))), ~1u);
    let var_3 = Struct_1(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) + _wgslsmith_f_op_f32(step(1115f, arg_2.c))), _wgslsmith_f_op_f32(f32(-1f) * -542f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.x + arg_1.c), _wgslsmith_f_op_f32(select(var_1, arg_2.b.x, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.x, -303f, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1)))), -950f, firstLeadingBit(~(var_2.xx << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))), arg_2.e);
    var_0 = arg_1.c;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1839f * -2440f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(var_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.c))));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(arg_3.a, arg_3.a))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.x, 769f, 618f))), _wgslsmith_f_op_vec3_f32(arg_3.a - vec3<f32>(2190f, arg_3.b.x, 393f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 * _wgslsmith_f_op_vec2_f32(abs(arg_2))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1042f, 144f), _wgslsmith_f_op_vec2_f32(step(arg_3.a.yz, arg_2))))), arg_2.x, vec2<u32>(arg_3.d.x | _wgslsmith_dot_vec4_u32(select(vec4<u32>(15825u, 1u, 8349u, u_input.a), vec4<u32>(u_input.a, arg_3.d.x, 17617u, arg_3.d.x), vec4<bool>(false, arg_1.x, true, false)), ~vec4<u32>(4294967295u, arg_3.d.x, u_input.a, 4294967295u)), u_input.a), abs(i32(-1i) * -1432i));
    var var_1 = -1i < _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0, -(~var_0.e)), u_input.c);
    var var_2 = countOneBits(vec3<u32>(~(~4294967295u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 50849u), arg_3.d) ^ _wgslsmith_div_u32(47759u, var_0.d.x)), 0u));
    var var_3 = select(vec4<bool>(true, all(!select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x))), select(true, false, arg_1.x), true), select(!(!select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, true), false)), select(select(select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x)), !vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, true, arg_1.x)), vec4<bool>(true, arg_1.x, false, all(vec3<bool>(false, arg_1.x, false))), arg_1.x != true), select(all(vec2<bool>(arg_1.x, arg_1.x)), true, true)), !select(!select(vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(false, true, arg_1.x, false), arg_1.x), select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), !vec4<bool>(true, false, arg_1.x, arg_1.x), false), arg_1.x));
    var_3 = !vec4<bool>(true, true, false, false & select(!var_3.x, any(vec3<bool>(false, true, var_3.x)), true & arg_1.x));
    return ~abs(_wgslsmith_sub_u32(firstTrailingBit(~var_2.x), 1u));
}

fn func_2() -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(-1047f)), ~func_4(_wgslsmith_clamp_i32(36728i, u_input.c, 1i) << (1u % 32u), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(func_3(~vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(vec3<f32>(-858f, 700f, 368f), vec2<f32>(-667f, -450f), -641f, vec2<u32>(u_input.a, u_input.a), u_input.b.x), Struct_1(vec3<f32>(1400f, -1000f, -1253f), vec2<f32>(997f, -1169f), -459f, vec2<u32>(u_input.a, 18515u), 1442i))), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1295f, -1543f, 1494f), vec3<f32>(488f, -537f, 143f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-198f, 647f), vec2<f32>(884f, 1517f))), -1000f, vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), 2147483647i)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(1525f)), 1f, -829f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(234f, _wgslsmith_f_op_f32(select(1742f, -1000f, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1349f, -552f)))), 621f, _wgslsmith_mult_vec2_u32(select(abs(vec2<u32>(3294u, 0u)), vec2<u32>(u_input.a, u_input.a), true), ~vec2<u32>(u_input.a, 60123u)), ~reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.c), u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(846f, -1152f, _wgslsmith_f_op_f32(round(945f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-274f, -1210f, -737f), vec3<f32>(1504f, 606f, 712f))) - vec3<f32>(-1144f, -873f, 1787f)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(377f, -2860f)), 2648f)), -371f), -334f, firstLeadingBit(_wgslsmith_add_vec2_u32(abs(vec2<u32>(11665u, u_input.a)), ~vec2<u32>(84185u, 12362u))), 0i));
    let var_1 = Struct_2(-282f, var_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.c, _wgslsmith_f_op_f32(-var_0.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f)), var_0.a)));
    var var_2 = Struct_1(var_0.c.a, _wgslsmith_f_op_vec2_f32(sign(var_1.b.b)), 233f, vec2<u32>(func_4(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.c.e, 26244i), -2147483647i), vec2<bool>(true, true), vec2<f32>(-1000f, var_1.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(abs(var_0.c.a)), _wgslsmith_f_op_vec2_f32(var_1.b.a.zx - vec2<f32>(184f, 132f)), -168f, vec2<u32>(u_input.a, 1u), ~(-1i))), 14898u), firstTrailingBit(-1i));
    let var_3 = u_input.b.x;
    var_2 = var_0.d;
    return all(vec3<bool>(false, true, !(any(vec2<bool>(true, false)) || false)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(all(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, false, true)), true, any(vec4<bool>(false, true, false, false))), vec4<bool>(false, func_2(), select(1i > u_input.b.x, false, true), !(arg_0.d.d.x >= u_input.a)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.d.b.x, -672f) * arg_0.d.a) - vec3<f32>(arg_0.a, 1139f, arg_0.d.a.x)) + _wgslsmith_f_op_vec3_f32(-arg_0.d.a)) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(360f + arg_0.c.c))), -856f, _wgslsmith_f_op_f32(f32(-1f) * -230f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-364f, arg_0.c.b.x, arg_0.d.b.x) - _wgslsmith_f_op_vec3_f32(select(arg_0.c.a, vec3<f32>(1101f, -1024f, 127f), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.a.x, 356f, arg_0.a), vec3<f32>(arg_0.a, -426f, 402f), vec3<bool>(false, var_0.x, true)))), vec3<f32>(_wgslsmith_f_op_f32(min(-251f, _wgslsmith_f_op_f32(max(787f, -245f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-252f * 353f), _wgslsmith_f_op_f32(round(arg_0.c.a.x)), var_0.x)), _wgslsmith_f_op_f32(-arg_0.c.a.x))));
    var var_2 = arg_0;
    var var_3 = vec3<i32>(_wgslsmith_div_i32(select(1i, -_wgslsmith_add_i32(2147483647i, var_2.c.e), false && all(vec2<bool>(var_0.x, true))), reverseBits(arg_0.c.e)), firstLeadingBit(0i), ~var_2.c.e);
    var_3 = ~vec3<i32>(1i, 1i, arg_1.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1924f, var_1.x))))), vec2<f32>(-203f, -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214f * _wgslsmith_f_op_f32(-var_1.x)) + 1997f), _wgslsmith_f_op_f32(round(1653f)))), _wgslsmith_div_vec2_u32(arg_0.c.d, arg_0.c.d), arg_1.x);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = vec2<i32>(u_input.b.x, u_input.b.x);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(u_input.a, u_input.a, 93498u), arg_1.b, arg_1.b)).x))), ~(~_wgslsmith_add_u32(~4294967295u, 1u)), func_1(Struct_3(-577f, func_1(Struct_3(arg_0, 1u, arg_1.b, Struct_1(vec3<f32>(arg_1.b.a.x, 1109f, arg_0), arg_1.b.a.yx, arg_1.a, arg_1.b.d, var_0.x)), -vec2<i32>(-1i, 13968i)).d.x, arg_1.b, func_1(Struct_3(-195f, 4294967295u, Struct_1(arg_1.c.yyz, arg_1.c.zz, arg_0, arg_1.b.d, -19046i), arg_1.b), vec2<i32>(var_0.x, 44276i))), vec2<i32>(~_wgslsmith_add_i32(arg_1.b.e, -2147483647i), i32(-1i) * -1i)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(317f, 1000f)), -553f, -1572f)), arg_1.c.zx, arg_0, countOneBits(vec2<u32>(arg_1.b.d.x, abs(84188u))), _wgslsmith_div_i32(abs(arg_1.b.e), ~(~var_0.x))));
    var_0 = _wgslsmith_clamp_vec2_i32(u_input.b.yz | u_input.b.xx, u_input.b.xy, abs(~u_input.b.zz));
    var_0 = vec2<i32>(-2147483647i, var_1.c.e);
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.c * -847f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(~vec4<u32>(4294967295u, 20116u, u_input.a, u_input.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-171f + _wgslsmith_f_op_f32(abs(-697f))), Struct_2(-1908f, func_1(Struct_3(-777f, u_input.a, Struct_1(vec3<f32>(299f, -563f, -1801f), vec2<f32>(-1023f, -340f), 333f, vec2<u32>(var_0.x, var_0.x), 52277i), Struct_1(vec3<f32>(582f, 1373f, -739f), vec2<f32>(204f, 673f), 159f, var_0.xx, u_input.b.x)), u_input.b.yz), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1730f, -300f, 2551f), vec4<f32>(627f, 1094f, 1000f, -1436f), true))))), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-164f, 1650f))), Struct_2(_wgslsmith_div_f32(-1309f, -253f), func_1(Struct_3(-480f, 1u, Struct_1(vec3<f32>(-128f, -261f, 1705f), vec2<f32>(-357f, -118f), 1461f, vec2<u32>(var_0.x, 2553u), u_input.c), Struct_1(vec3<f32>(243f, 1000f, -1173f), vec2<f32>(-180f, 791f), -411f, vec2<u32>(u_input.a, u_input.a), -1219i)), vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1031f, 809f, 501f, -483f), vec4<f32>(253f, -2971f, 553f, 1803f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-851f))))))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), var_1.x)), 1000f, -1270f), func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(var_1.x, Struct_2(-159f, Struct_1(vec3<f32>(var_1.x, var_1.x, -856f), var_1.zy, var_1.x, vec2<u32>(1u, u_input.a), 0i), vec4<f32>(var_1.x, var_1.x, var_1.x, 193f))))), _wgslsmith_clamp_u32(u_input.a, u_input.a, func_4(u_input.b.x, vec2<bool>(true, true), var_1.yz, Struct_1(vec3<f32>(var_1.x, -1000f, var_1.x), var_1.xy, var_1.x, var_0.yw, -1i))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(361f, var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(abs(var_1.yy)), _wgslsmith_div_f32(-117f, 542f), var_0.xx, 8027i), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, var_1.x, -399f))), var_1.zz, _wgslsmith_f_op_f32(var_1.x * var_1.x), select(var_0.zw, var_0.zy, vec2<bool>(true, true)), ~u_input.b.x)), abs(vec2<i32>(u_input.c, -40692i)) | _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, -53031i)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.b.x), u_input.b.xy))).a.xz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1208f - var_1.x) - 1546f))), vec2<u32>(~(~u_input.a), var_0.x), i32(-1i) * -u_input.c);
    var var_3 = -1363f;
    var_1 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, ~(-firstTrailingBit(-1i << (u_input.a % 32u))), ~(-func_1(Struct_3(var_2.a.x, u_input.a, var_2, var_2), u_input.b.yz).e) >> (u_input.a % 32u), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(-635f))));
}

