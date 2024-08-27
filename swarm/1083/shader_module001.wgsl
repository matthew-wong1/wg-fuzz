struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(abs(vec2<u32>(firstTrailingBit(arg_0.a & arg_0.e), ~22469u)));
    var var_1 = arg_0.b.zy;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1518f, 1250f, 1400f, arg_0.d) * vec4<f32>(1988f, -1000f, -2476f, 173f)))));
    var_0 = vec2<u32>(46107u, abs(firstTrailingBit(4294967295u)));
    let var_3 = ~firstTrailingBit(max(vec3<u32>(~4294967295u, arg_0.a, ~63590u), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, arg_0.e, 50409u), ~vec3<u32>(1u, 0u, var_0.x))));
    return select(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.x, ~0u), firstLeadingBit(var_3)), (true & any(vec2<bool>(true, false))) | all(select(select(vec4<bool>(false, arg_0.b.x, false, var_1.x), vec4<bool>(arg_0.b.x, true, false, false), vec4<bool>(arg_0.b.x, var_1.x, false, false)), select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(arg_0.b.x, arg_0.b.x, var_1.x, true), var_1.x), !vec4<bool>(arg_0.b.x, var_1.x, arg_0.b.x, arg_0.b.x))));
}

fn func_4(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = Struct_1(arg_1, !(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), -1366f, -1435f, _wgslsmith_mult_u32(arg_1, ~_wgslsmith_add_u32(arg_1, arg_1)) << (arg_1 % 32u));
    var var_1 = vec2<i32>(-_wgslsmith_div_i32(u_input.a, -45734i), abs(_wgslsmith_mod_i32(u_input.a, -2147483647i)));
    var var_2 = !(!vec2<bool>(any(select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(true, false, var_0.b.x))), !(var_0.b.x && false)));
    let var_3 = Struct_1(~0u, !vec3<bool>(any(!vec4<bool>(var_2.x, true, true, true)), any(select(vec4<bool>(var_0.b.x, false, var_2.x, var_2.x), vec4<bool>(var_0.b.x, var_2.x, var_0.b.x, var_2.x), vec4<bool>(true, false, false, var_2.x))), var_2.x), _wgslsmith_f_op_f32(601f - _wgslsmith_f_op_f32(-361f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.d)))))), _wgslsmith_f_op_f32(floor(var_0.d)), min(~max(arg_1, var_0.a), ~arg_1 | abs(arg_1)));
    var var_4 = var_3;
    return 10563u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_sub_u32(~61540u, _wgslsmith_add_u32(~4294967295u, reverseBits(arg_0.e)));
    var_0 = reverseBits(func_4(arg_1.d, select(func_3(Struct_1(29374u, vec3<bool>(false, arg_0.b.x, false), arg_0.c, -954f, arg_0.e)), abs(~21679u), true)));
    let var_1 = Struct_1(~abs(arg_1.a), vec3<bool>(arg_1.b.x, true, all(vec2<bool>(arg_1.b.x, arg_0.b.x)) | all(!vec3<bool>(arg_1.b.x, false, arg_1.b.x))), arg_1.c, arg_1.c, ~_wgslsmith_mult_u32(countOneBits(arg_0.e), arg_1.e));
    let var_2 = Struct_1(9822u, select(select(arg_1.b, select(select(vec3<bool>(arg_0.b.x, false, arg_1.b.x), vec3<bool>(true, var_1.b.x, false), arg_0.b), vec3<bool>(false, false, arg_0.b.x), vec3<bool>(true, arg_0.b.x, true)), arg_1.b.x), var_1.b, var_1.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d))))), arg_0.c, (4294967295u ^ arg_0.e) ^ 1u);
    var_0 = arg_0.e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.d)) - _wgslsmith_div_f32(1083f, -480f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_add_u32(22608u, 0u), vec3<bool>(false, all(vec3<bool>(arg_0.b.x, true, false)), all(vec3<bool>(arg_0.b.x, arg_0.b.x, false))), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f + 800f)), _wgslsmith_mult_u32(~arg_0.e, arg_0.e) << (arg_0.a % 32u)), arg_0));
    var_0 = arg_1.x;
    var var_1 = -749f;
    var var_2 = Struct_1(28727u, arg_0.b, _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-229f + _wgslsmith_f_op_f32(f32(-1f) * -1119f)), ~_wgslsmith_clamp_u32(firstTrailingBit(arg_2), 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 7215u, arg_0.a, 17058u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2, arg_2, 62788u, 34376u), vec4<u32>(arg_2, 25652u, arg_2, 19004u)))));
    let var_3 = var_2.e;
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(~firstLeadingBit(-1i), abs(~1i), arg_2), -vec3<i32>(0i, -arg_2, u_input.a)), -reverseBits(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, arg_2, 0i)), countOneBits(vec3<i32>(18168i, u_input.a, arg_2)))), func_1(func_1(func_1(Struct_1(14756u, vec3<bool>(false, arg_1.b.x, arg_1.b.x), -465f, arg_3.d, arg_1.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -384f) - vec2<f32>(307f, arg_0)), countOneBits(arg_1.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3.c, 1006f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_1.c) - vec2<f32>(321f, 699f)))), 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_3.c)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1460f, arg_1.d) - vec2<f32>(arg_3.c, -1562f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, 1748f)))), func_3(func_1(arg_1, vec2<f32>(439f, 721f), _wgslsmith_mult_u32(arg_3.e, arg_3.e)))).b);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 * 1000f), _wgslsmith_f_op_f32(max(346f, _wgslsmith_f_op_f32(f32(-1f) * -170f))), _wgslsmith_div_f32(272f, 1278f), -192f));
    let var_2 = ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 55665u, arg_1.e, arg_1.a) << (vec4<u32>(4294967295u, 4646u, arg_1.e, arg_1.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(54590u, arg_1.e, 26513u, 1u), vec4<u32>(88913u, 56510u, 4294967295u, 1836u))), 4294967295u), arg_3.a);
    var var_3 = func_1(arg_1, vec2<f32>(_wgslsmith_f_op_f32(step(632f, arg_1.d)), arg_0), var_2.x);
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0))))), -2462f)), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-1000f * arg_3.d))))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(822f - 545f))), Struct_1(_wgslsmith_mult_u32(0u, 1u), vec3<bool>(true, false, false), 500f, _wgslsmith_f_op_f32(round(749f)), 4294967295u), 1i, func_1(Struct_1(32787u, vec3<bool>(false, true, true), -739f, -1131f, 0u), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-999f, 1007f), vec2<f32>(-511f, 903f))), 1u)), ~0u), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -1240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f - _wgslsmith_f_op_f32(f32(-1f) * -182f)) - -1000f)), ~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(60848u, 23687u, 96951u, 7300u), vec4<u32>(0u, 0u, 8636u, 4294967295u), vec4<bool>(false, false, false, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(16087u, 133757u, 1u, 4294967295u))));
    var var_1 = abs(i32(-1i) * -1i);
    var var_2 = Struct_1(_wgslsmith_mult_u32(9444u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e, var_0.e), ~vec2<u32>(11211u, var_0.e))), vec3<bool>(all(!var_0.b) || !all(var_0.b), all(vec4<bool>(true, false, false, true)) && true, false), var_0.d, _wgslsmith_f_op_f32(-var_0.c), func_1(func_1(func_1(Struct_1(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, true), -1000f, var_0.c, var_0.a), vec2<f32>(var_0.c, var_0.d), 0u), vec2<f32>(var_0.d, var_0.c), 28006u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1280f, 991f), vec2<f32>(-1368f, var_0.d), true)))), firstLeadingBit(min(4294967295u, 3768u))).a ^ ((_wgslsmith_add_u32(var_0.e, 1u) & ~46220u) << ((max(var_0.e, 1u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(32812u, var_0.e, 0u, var_0.e), vec4<u32>(var_0.e, var_0.a, 4294967295u, 33903u)) % 32u)) % 32u)));
    var_2 = func_1(func_1(Struct_1(var_2.e, select(select(var_0.b, var_2.b, vec3<bool>(false, var_2.b.x, false)), var_2.b, !var_0.b.x), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(max(558f, var_2.c))), var_0.d, func_1(Struct_1(var_2.e, vec3<bool>(false, var_0.b.x, var_0.b.x), var_2.d, 1000f, var_0.e), vec2<f32>(var_2.d, 2020f), 1u).a << (0u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d, 1346f)) * _wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_mod_u32(var_2.e, var_2.a) ^ ~1u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1235f, -1000f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 542f) - vec2<f32>(var_2.c, var_0.c)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.d, 623f), vec2<f32>(var_0.d, var_0.d))))))), ~(~var_2.e));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(101f, _wgslsmith_f_op_f32(f32(-1f) * -759f)), -124f)));
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-207f * _wgslsmith_f_op_f32(abs(var_2.d)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(func_1(Struct_1(19864u, var_2.b, -646f, var_2.c, var_2.a), vec2<f32>(var_0.d, 665f), 4294967295u).d)))) * _wgslsmith_f_op_f32(func_2(Struct_1(~56842u, !var_0.b, _wgslsmith_div_f32(-386f, var_2.d), _wgslsmith_f_op_f32(f32(-1f) * -1564f), 643u), func_1(func_1(Struct_1(var_0.e, var_0.b, var_3.x, -1000f, var_2.a), vec2<f32>(1055f, -197f), var_2.a), _wgslsmith_div_vec2_f32(vec2<f32>(-112f, var_3.x), vec2<f32>(1068f, var_2.c)), 1u)))));
    var var_4 = _wgslsmith_div_vec4_u32(firstLeadingBit(max(select(vec4<u32>(1u, 0u, 91448u, var_0.e), vec4<u32>(53776u, 28827u, 1u, var_0.a), vec4<bool>(var_2.b.x, var_2.b.x, var_0.b.x, var_0.b.x)), vec4<u32>(var_2.a, 1u, var_0.a, 18681u))) ^ vec4<u32>(1u, ~func_1(Struct_1(var_2.a, vec3<bool>(var_0.b.x, var_2.b.x, false), -904f, var_2.c, var_0.a), vec2<f32>(var_0.c, -567f), var_2.e).e, ~var_2.a >> (~34708u % 32u), var_2.a), abs(~vec4<u32>(var_0.a, 74880u, 44035u, ~1u)));
    var var_5 = _wgslsmith_mod_vec2_u32(select(_wgslsmith_clamp_vec2_u32(var_4.yw, var_4.wx, ~(~var_4.xw)), ~var_4.zz, var_0.b.x), vec2<u32>(30407u, var_0.e >> (var_0.e % 32u)));
    var_1 = ~(i32(-1i) * -u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.zy, ~func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2072f))), Struct_1(var_4.x, var_2.b, var_3.x, var_2.d, _wgslsmith_dot_vec4_u32(vec4<u32>(21869u, var_0.e, 0u, var_0.e), vec4<u32>(var_0.a, 1952u, 4294967295u, 1u))), -(i32(-1i) * -4407i), Struct_1(4294967295u, select(var_0.b, var_2.b, vec3<bool>(var_2.b.x, true, var_2.b.x)), -747f, _wgslsmith_f_op_f32(trunc(var_3.x)), ~var_2.e)), ~select((vec4<i32>(33438i, 1i, 35032i, 1i) & vec4<i32>(-6260i, u_input.a, 1i, u_input.a)) ^ ~vec4<i32>(u_input.a, -19953i, u_input.a, 15875i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 1i, -1i, 2147483647i), vec4<i32>(-1i, 2147483647i, u_input.a, -1i)) << (~vec4<u32>(var_4.x, 48933u, var_4.x, var_5.x) % vec4<u32>(32u)), !vec4<bool>(true, var_2.b.x, var_2.b.x, var_0.b.x)), vec3<i32>(u_input.a | u_input.a, (_wgslsmith_mod_i32(-2147483647i, 1i) << (0u % 32u)) & u_input.a, 1i), min(abs(~vec4<i32>(-35592i, 37579i, -25153i, u_input.a)) & select(~vec4<i32>(-25960i, 30847i, 2147483647i, -1i), -vec4<i32>(u_input.a, -1i, u_input.a, 1i), u_input.a >= u_input.a), ~vec4<i32>(u_input.a, u_input.a, 36895i, -2147483647i)));
}

