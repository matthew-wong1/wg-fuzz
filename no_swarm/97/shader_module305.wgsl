struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = Struct_4(arg_1.a, arg_1.b.b.a.x, 1980i, select(29204u, 23347u, !(arg_1.b.b.c.x & arg_1.b.b.b)) >> (~firstTrailingBit(~44090u) % 32u), min(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(55241u, 20200u), vec2<u32>(40065u, 0u), vec2<u32>(80863u, 42777u)), firstTrailingBit(vec2<u32>(1u, 1u)))) | _wgslsmith_sub_vec2_u32(~vec2<u32>(10550u, 4294967295u) << (countOneBits(vec2<u32>(0u, 26913u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(12983u, 7031u), vec2<u32>(1u, 1u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(544f, -593f, arg_1.b.a, arg_1.b.b.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.a, arg_1.b.a, 104f, arg_1.b.b.a.x) * vec4<f32>(arg_1.b.a, arg_1.b.a, arg_1.b.b.a.x, 2205f))) + vec4<f32>(_wgslsmith_div_f32(1073f, 177f), 2663f, _wgslsmith_f_op_f32(max(arg_1.b.b.a.x, arg_1.b.b.a.x)), _wgslsmith_f_op_f32(-arg_1.b.b.a.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b.a.x, arg_1.b.a, 887f, -496f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-290f, 434f, 328f, -1000f) - vec4<f32>(arg_1.b.a, -1000f, -1000f, 357f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.b.a, var_0.b, arg_1.b.b.a.x) * vec4<f32>(1616f, 808f, arg_1.b.b.a.x, var_0.b)))))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(min(var_0.b, 250f)))), !any(vec4<bool>(true, true, false, true)))) + _wgslsmith_f_op_f32(f32(-1f) * -1821f)), arg_1.b.b);
    var var_3 = -1i;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(670f - -255f), -324f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-412f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)))), var_2.b.a.x, var_1.x, var_0.b);
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), arg_1.b.b.a.x, 370f);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-617f - _wgslsmith_f_op_f32(select(-2243f, arg_0, true))), 785f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(arg_0 * 1000f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(33623i, -2147483647i), Struct_3(arg_2.a, Struct_2(-522f, Struct_1(vec3<f32>(arg_2.b, -230f, arg_2.b), true, vec2<bool>(true, false)))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(349f, arg_0, arg_0))))) * vec3<f32>(_wgslsmith_f_op_f32(1000f - arg_0), arg_0, _wgslsmith_f_op_vec3_f32(func_3(-(~vec2<i32>(0i, arg_2.a.x)), Struct_3(~vec4<i32>(arg_1, 6811i, arg_3.x, arg_1), Struct_2(arg_0, Struct_1(vec3<f32>(arg_2.b, 1441f, 1344f), false, vec2<bool>(true, false)))))).x));
    let var_1 = any(select(!vec3<bool>(select(false, false, false), true, true), vec3<bool>(-364f != _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(-1i, arg_1), Struct_3(vec4<i32>(arg_3.x, u_input.a.x, -2147483647i, 1i), Struct_2(var_0.x, Struct_1(var_0, true, vec2<bool>(false, false)))))).x, true, select(true, arg_2.b != 581f, true)), vec3<bool>(true, true, true)));
    let var_2 = arg_2.a.yy;
    let var_3 = var_0.x;
    return Struct_3(-vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-4052i, arg_3.x, arg_2.c, arg_3.x), arg_2.a), _wgslsmith_mod_i32(-2147483647i, ~12340i), arg_3.x, _wgslsmith_div_i32(u_input.a.x, -1i) << (_wgslsmith_clamp_u32(arg_2.e.x, 12011u, 20647u) % 32u)), Struct_2(_wgslsmith_f_op_f32(-1376f + arg_0), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-119f, -848f, 948f), var_0, vec3<bool>(true, var_1, true))), true, vec2<bool>(false & var_1, true || var_1))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: vec4<i32>) -> i32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(313f, _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(0i, 2147483647i), arg_2)).x) * 2227f), 2147483647i, Struct_4(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.x, arg_2.a.x, -16738i, 51971i), arg_3, arg_3), arg_3) << (min(vec4<u32>(arg_0, arg_0, arg_0, arg_0), select(vec4<u32>(0u, arg_0, 0u, 1u), vec4<u32>(arg_0, 1u, arg_0, 55690u), false)) % vec4<u32>(32u)), arg_2.b.a, _wgslsmith_div_i32(u_input.a.x, arg_2.a.x), 56917u, vec2<u32>(arg_0, _wgslsmith_clamp_u32(~4294967295u, ~arg_0, _wgslsmith_clamp_u32(arg_0, arg_0, 2616u)))), arg_3.xxw >> (vec3<u32>(1u, _wgslsmith_mod_u32(arg_0, 0u), arg_0) % vec3<u32>(32u))).b.b;
    var var_1 = any(select(select(select(vec4<bool>(true, arg_1, arg_1, false), !vec4<bool>(var_0.c.x, arg_2.b.b.c.x, false, var_0.c.x), select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(arg_1, false, var_0.c.x, arg_2.b.b.c.x), true)), select(select(vec4<bool>(arg_2.b.b.c.x, true, true, true), vec4<bool>(var_0.c.x, true, var_0.c.x, arg_1), true), vec4<bool>(true, true, false, false), !var_0.c.x), select(vec4<bool>(arg_1, true, var_0.c.x, var_0.b), vec4<bool>(true, arg_1, true, false), select(vec4<bool>(arg_1, false, var_0.c.x, var_0.c.x), vec4<bool>(arg_2.b.b.c.x, arg_1, true, arg_1), arg_2.b.b.c.x))), !vec4<bool>(all(vec4<bool>(false, false, arg_1, true)), true, 1000f != arg_2.b.b.a.x, !var_0.c.x), arg_2.b.b.c.x));
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b.a.x) - arg_2.b.a), -_wgslsmith_clamp_i32(reverseBits(arg_3.x) | arg_2.a.x, arg_2.a.x, 28498i), Struct_4(~(~vec4<i32>(arg_2.a.x, arg_3.x, arg_2.a.x, 43687i)), arg_2.b.b.a.x, 53517i, arg_0, vec2<u32>(arg_0, reverseBits(arg_0 | 15460u))), arg_2.a.ywy & vec3<i32>(~_wgslsmith_sub_i32(-2147483647i, arg_2.a.x), ~(-arg_3.x), countOneBits(-21464i))).b.b.a.x;
    return func_2(-1019f, u_input.a.x, Struct_4(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(722f * _wgslsmith_f_op_f32(-1301f + arg_2.b.b.a.x)) * _wgslsmith_div_f32(arg_2.b.a, arg_2.b.b.a.x)), ~_wgslsmith_mult_i32(reverseBits(2147483647i), arg_3.x << (arg_0 % 32u)), 38063u, vec2<u32>(1u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 22304u, 32189u), vec4<u32>(97888u, arg_0, arg_0, arg_0)), 1u))), abs(vec3<i32>(-65943i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a), u_input.a.x)) & (_wgslsmith_clamp_vec3_i32(arg_3.zzz, arg_3.www ^ arg_3.xzw, arg_2.a.wzx << (vec3<u32>(arg_0, arg_0, 56388u) % vec3<u32>(32u))) | ~(-vec3<i32>(-36576i, 2147483647i, arg_2.a.x)))).a.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>) -> Struct_4 {
    return Struct_4(vec4<i32>(-countOneBits(~u_input.a.x), _wgslsmith_mult_i32(-1i, -_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), arg_0.x, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(183f, 1000f)))))), 16098i, min(_wgslsmith_sub_u32(reverseBits(min(arg_1.x, arg_1.x)), 83837u), ~countOneBits(arg_1.x)), ~arg_1.xz);
}

fn func_1() -> vec4<bool> {
    var var_0 = true != any(select(vec4<bool>(select(true, true, false), true, true, false), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(false, false, true, false), all(vec4<bool>(true, false, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)));
    var_0 = any(vec2<bool>(false, true));
    var var_1 = func_5(~vec4<i32>(func_4(_wgslsmith_sub_u32(24472u, 21757u), true, func_2(-1688f, 0i, Struct_4(vec4<i32>(u_input.a.x, 11138i, u_input.a.x, u_input.a.x), -799f, u_input.a.x, 1u, vec2<u32>(0u, 0u)), vec3<i32>(-21149i, -10861i, 27170i)), vec4<i32>(-31866i, u_input.a.x, 7580i, u_input.a.x)), 1i, -u_input.a.x ^ abs(16811i), 4233i), vec3<u32>(27213u, 19928u << (1u % 32u), _wgslsmith_sub_u32(43822u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(5836u, 1u, 4294967295u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1010f, var_1.b, var_1.b, -1471f) * vec4<f32>(-955f, 626f, var_1.b, var_1.b))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, 1299f, 157f, -111f), vec4<f32>(271f, -1304f, 536f, 124f), vec4<bool>(false, true, true, false)))))));
    let var_3 = ~9449i;
    return !vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1479f)), _wgslsmith_f_op_f32(-241f - var_1.b)) >= var_2.x, any(vec2<bool>(true, true)), true, true || all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, 38614i, u_input.a.x), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 1i, u_input.a.x, -2147483647i), countOneBits(vec4<i32>(-41738i, u_input.a.x, u_input.a.x, u_input.a.x))) | ((_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -26722i, -2147483647i), vec4<i32>(64750i, 13690i, u_input.a.x, 2147483647i)) ^ select(vec4<i32>(u_input.a.x, -21134i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 26169i), vec4<bool>(false, false, true, false))) | -(~vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(131f)), _wgslsmith_f_op_f32(f32(-1f) * -1738f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1507f, -687f)), _wgslsmith_f_op_f32(f32(-1f) * -379f))))), ~40722i, ~0u, ~abs(vec2<u32>(0u, ~38911u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), false, !(!vec2<bool>(true, 1315f > var_0.b)));
    var var_2 = select(select(!(!vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.b)), func_1(), func_1()), vec4<bool>(true, var_1.b, var_1.c.x, !(~72810u <= (var_0.d | var_0.d))), var_1.b);
    var var_3 = var_1.c.x;
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(abs(20752u), vec4<i32>(u_input.a.x, u_input.a.x, -1i, var_0.a.x), var_0.c);
}

