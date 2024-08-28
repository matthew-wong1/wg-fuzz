struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_3,
    d: i32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1000f, 167f, -1157f), -2178f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<i32>) -> vec3<bool> {
    global0 = arg_0.d;
    var var_0 = _wgslsmith_f_op_f32(-arg_0.a.a);
    return vec3<bool>(true, !select(true, false, true), !(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(arg_0.a.c.x, 1u, 0u, u_input.c.x)) != abs(u_input.a.x)));
}

fn func_3() -> vec3<f32> {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -532f, global0.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-236f, -1025f, 1000f) - _wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(-481f, 181f, 1598f)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(186f, global0.a.x), _wgslsmith_f_op_f32(trunc(global0.a.x)), global0.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a), global0.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))))));
    var var_0 = Struct_4(vec2<i32>(1i, -firstLeadingBit(-1i)), vec3<u32>(47701u, u_input.a.x, u_input.a.x), Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(970f, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, global0.a.x))), vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, 77377u, 18521u), _wgslsmith_mult_u32(u_input.c.x, 273u))), Struct_1(-1648f, -534f, vec2<u32>(1u, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, -1843f, global0.a.x, 147f)), vec4<f32>(global0.a.x, -1125f, 590f, global0.b)))), -(2147483647i >> (_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a), ~u_input.a) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(507f - _wgslsmith_f_op_f32(trunc(747f))))), 677f, _wgslsmith_f_op_f32(-700f - _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(global0.a.x - -1629f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(847f))))));
    var var_1 = var_0.a;
    let var_2 = var_0.e.x;
    var var_3 = min(vec4<i32>(_wgslsmith_mod_i32(17906i, -1i), -1i, _wgslsmith_mult_i32(~(i32(-1i) * -24688i), -_wgslsmith_mult_i32(0i, -2147483647i)), reverseBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.x, var_1.x), abs(var_0.a.x)))), _wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.x, -56511i, -23509i, -2147483647i), vec4<i32>(16059i, var_1.x, 24894i, 2147483647i)), vec4<i32>(-58652i, -29359i, var_0.d, var_0.a.x) ^ vec4<i32>(11908i, -1i, -19214i, var_0.d), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_0.d, -2147483647i, -7532i), vec4<i32>(1i, var_0.a.x, -2147483647i, var_0.a.x))), vec4<i32>(48509i, var_0.d, ~var_0.d ^ var_0.d, _wgslsmith_add_i32(25988i, var_0.a.x))));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(405f, 1434f, -347f), var_0.e.wzz, select(true, func_1(Struct_5(var_0.c.a, Struct_4(vec2<i32>(var_1.x, var_3.x), vec3<u32>(u_input.b, u_input.c.x, u_input.b), var_0.c, 0i, var_0.c.c), var_0.c.a, Struct_2(vec3<f32>(145f, -1500f, 1851f), 346f)), abs(var_3.wx)).x, _wgslsmith_div_f32(var_0.e.x, 207f) > _wgslsmith_f_op_f32(-global0.a.x))))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 789f, global0.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1611f, arg_0)))), vec3<bool>(select(all(vec2<bool>(false, false)), select(true, false, false), true), true & all(vec3<bool>(false, true, false)), true || all(vec4<bool>(true, true, true, false))))), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f)) + _wgslsmith_f_op_f32(f32(-1f) * -796f))));
    let var_0 = vec2<bool>(all(vec4<bool>(false, select(all(vec4<bool>(true, true, true, true)), true, false), true, true)), any(vec4<bool>(all(vec4<bool>(true, true, false, true)), false, any(vec3<bool>(true, true, true)), true)) & true);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(ceil(arg_0)), ~vec2<u32>(abs(arg_2), 56833u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.b)), _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(min(1233f, global0.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_2, u_input.a.x), countOneBits(vec2<u32>(24345u, 30195u))), ~vec2<u32>(1u, arg_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b, global0.b, global0.a.x, global0.b))), vec4<f32>(-1456f, global0.a.x, 1210f, arg_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -176f) + vec4<f32>(arg_0, arg_0, 1328f, -1524f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -909f, global0.a.x, global0.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1696f, arg_0, 647f, global0.b)))))));
    let var_2 = !vec2<bool>(all(vec2<bool>(var_0.x, false)), (!var_0.x | (var_0.x & true)) | select(true && var_0.x, var_0.x, all(vec2<bool>(false, true))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1251f + arg_0)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(629f)), _wgslsmith_f_op_f32(1077f - -1618f)))) + global0.a.x);
    return Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b - -349f), _wgslsmith_f_op_f32(692f - var_1.b.a))) + -2665f));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec2<bool> {
    global0 = arg_1;
    var var_0 = countOneBits(vec4<u32>(31993u & u_input.c.x, u_input.b, 32688u, ~_wgslsmith_sub_u32(u_input.a.x, 1u))) & reverseBits(u_input.c);
    let var_1 = -1i;
    var var_2 = 19759i;
    var var_3 = _wgslsmith_mod_i32(abs(arg_0), -2147483647i);
    return !vec2<bool>(false, select(true, false, all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec3<bool>(false, true, any(func_1(Struct_5(Struct_1(981f, -1868f, u_input.c.zx), Struct_4(vec2<i32>(-39146i, 0i), u_input.c.yxx, Struct_3(Struct_1(493f, global0.a.x, u_input.a.yy), Struct_1(-171f, global0.a.x, u_input.a.xx), vec4<f32>(global0.a.x, global0.b, global0.b, global0.b)), 2147483647i, vec4<f32>(global0.b, global0.b, global0.b, global0.b)), Struct_1(global0.b, global0.b, u_input.c.xw), Struct_2(global0.a, -351f)), vec2<i32>(-2147483647i, -2147483647i)))));
    global0 = Struct_2(vec3<f32>(-1147f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -856f), global0.b), _wgslsmith_f_op_f32(f32(-1f) * -1021f));
    let var_1 = !func_4(_wgslsmith_div_i32(_wgslsmith_sub_i32(-63493i, 1970i) << (~u_input.a.x % 32u), 1i), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(430f)) - -1324f), min(u_input.c.x, 1u), _wgslsmith_mult_u32(u_input.c.x, ~u_input.a.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-881f)), global0.a.x, -1284f, -536f));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(round(174f)), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 7773u) << (vec2<u32>(u_input.a.x, 38695u) % vec2<u32>(32u)), ~u_input.c.ww));
    var var_4 = vec4<bool>(any(vec3<bool>(false, func_1(Struct_5(Struct_1(-974f, global0.a.x, vec2<u32>(2823u, 30347u)), Struct_4(vec2<i32>(32971i, 24901i), vec3<u32>(u_input.b, u_input.a.x, u_input.b), Struct_3(Struct_1(443f, -1026f, vec2<u32>(25509u, 46873u)), Struct_1(var_3.a, 1000f, vec2<u32>(var_3.c.x, 1u)), vec4<f32>(var_3.a, 946f, global0.b, global0.a.x)), -1i, vec4<f32>(1334f, var_2.x, var_2.x, 1951f)), Struct_1(var_3.a, var_3.a, vec2<u32>(var_3.c.x, 4294967295u)), Struct_2(var_2.yzz, 1394f)), countOneBits(vec2<i32>(-1i, -36293i))).x, true)), var_0, func_1(Struct_5(Struct_1(1f, _wgslsmith_div_f32(-555f, var_2.x), reverseBits(vec2<u32>(1u, u_input.c.x))), Struct_4(firstTrailingBit(vec2<i32>(40279i, 1i)), ~u_input.a, Struct_3(Struct_1(412f, -761f, var_3.c), Struct_1(-414f, 478f, var_3.c), vec4<f32>(var_3.b, -278f, var_3.b, 641f)), -7026i, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1345f, global0.a.x, 813f, var_2.x)))), Struct_1(-501f, _wgslsmith_f_op_f32(f32(-1f) * -755f), max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(13806u, u_input.a.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.xww), _wgslsmith_f_op_f32(select(-153f, global0.b, false)))), max(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_add_i32(26197i, 0i), 53752i))).x, any(vec4<bool>(!any(vec2<bool>(false, false)), true, false, true)));
    let var_5 = 4671u;
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-304f, -696f), _wgslsmith_f_op_f32(max(global0.b, var_2.x)), 744f, _wgslsmith_f_op_f32(min(global0.b, var_3.b))) - vec4<f32>(_wgslsmith_f_op_f32(abs(var_3.b)), _wgslsmith_f_op_f32(-global0.a.x), var_3.a, _wgslsmith_f_op_f32(-global0.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, var_2.x, var_3.a, 486f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(301f, 477f, -952f, -1000f), vec4<f32>(global0.b, var_3.b, 596f, 317f), var_4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b, var_2.x, -128f, -1809f), vec4<f32>(1000f, 214f, -298f, 433f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1000f, var_2.x, -535f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b, 134f, 603f, 617f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, var_3.a, global0.b, -709f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, 1364f, -1266f, var_3.a))))), vec4<f32>(var_2.x, 676f, _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(856f, global0.b, var_1.x)))), 281f), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(19146i, 39218i, -20885i), select(vec3<i32>(2147483647i, -13714i, -2147483647i), vec3<i32>(-26335i, 14792i, -1i), var_4.yzx), ~vec3<i32>(-8768i, 1i, -13937i)))), _wgslsmith_f_op_f32(f32(-1f) * -1697f));
}

