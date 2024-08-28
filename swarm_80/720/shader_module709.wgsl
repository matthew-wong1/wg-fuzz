struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(363f, 2147483647i, -321i)), Struct_2(Struct_1(343f, 25056i, 1i)), Struct_2(Struct_1(2186f, 2147483647i, -2882i)), Struct_2(Struct_1(1050f, 86739i, -11526i)), Struct_2(Struct_1(1573f, 1i, -45586i)), Struct_2(Struct_1(492f, 25254i, 1i)), Struct_2(Struct_1(-122f, -1i, -2490i)), Struct_2(Struct_1(334f, 0i, -1i)), Struct_2(Struct_1(178f, 0i, -43926i)), Struct_2(Struct_1(-1720f, 0i, 2147483647i)), Struct_2(Struct_1(-446f, 68078i, 1i)), Struct_2(Struct_1(417f, -1i, -9735i)), Struct_2(Struct_1(-1257f, -1i, i32(-2147483648))), Struct_2(Struct_1(-954f, -1i, 0i)), Struct_2(Struct_1(101f, -1i, 2147483647i)), Struct_2(Struct_1(-421f, 12671i, 0i)), Struct_2(Struct_1(-1555f, 2359i, -1i)), Struct_2(Struct_1(-104f, -61667i, 2147483647i)), Struct_2(Struct_1(1000f, 36020i, -15770i)), Struct_2(Struct_1(-1152f, 0i, 1i)), Struct_2(Struct_1(370f, 0i, -1i)), Struct_2(Struct_1(-384f, i32(-2147483648), 22232i)), Struct_2(Struct_1(196f, i32(-2147483648), 1i)), Struct_2(Struct_1(-166f, 1650i, 0i)), Struct_2(Struct_1(399f, i32(-2147483648), 2147483647i)), Struct_2(Struct_1(1000f, 1i, -1i)), Struct_2(Struct_1(356f, 1i, -19449i)), Struct_2(Struct_1(2069f, 2147483647i, 2147483647i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    let var_0 = select(!(~(~u_input.a.x) != 4294967295u), true, !any(vec2<bool>(true, true)));
    let var_1 = var_0;
    let var_2 = ~vec4<u32>(53904u, ~(~arg_3), u_input.a.x, arg_3) ^ ~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_3, 30902u), vec4<u32>(16172u, 0u, 4294967295u, 0u)) << ((vec4<u32>(u_input.a.x, 0u, arg_3, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, arg_3, 0u)) % vec4<u32>(32u)));
    global0 = _wgslsmith_clamp_i32(abs(~6425i & arg_2.x), _wgslsmith_add_i32(max(select(arg_0.c, arg_2.x, var_0), arg_2.x), arg_0.c), _wgslsmith_mult_i32(0i, arg_2.x)) << ((u_input.a.x ^ var_2.x) % 32u);
    global1 = array<Struct_2, 28>();
    return 34783i;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1175f), _wgslsmith_f_op_f32(f32(-1f) * -606f)))))));
    global0 = _wgslsmith_clamp_i32(-2147483647i, -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -34287i, -15660i, 43316i), vec4<i32>(-2147483647i, 13332i, 4377i, 2147483647i)), func_2(Struct_1(var_0.x, 2147483647i, -2147483647i), _wgslsmith_f_op_f32(-var_0.x), vec3<i32>(28337i, 0i, -20042i), 0u)), -_wgslsmith_sub_i32(-(~(-1i)), ~1i));
    let var_1 = _wgslsmith_mult_vec2_u32(select(~u_input.a, ~firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), !(!any(vec3<bool>(true, true, true)))), ~vec2<u32>(firstTrailingBit(~29298u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 1u, abs(71970u))));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(1122f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-930f * var_0.x) + var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2077f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_3 = vec2<f32>(var_2.x, -1330f);
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(7560u, _wgslsmith_mult_u32(select(countOneBits(u_input.a.x), reverseBits(u_input.a.x), any(vec2<bool>(true, true))), u_input.a.x ^ _wgslsmith_add_u32(74295u, 43565u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, reverseBits(~u_input.a.x)), abs(vec2<u32>(35688u, firstTrailingBit(var_1.x)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> vec2<bool> {
    global0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(func_2(Struct_1(-1888f, 2147483647i, 20845i), -482f, vec3<i32>(17962i, -2147483647i, -1i), 0u), ~2147483647i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, 9848i), vec3<i32>(-2147483647i, 1i, 12148i))), vec2<i32>(firstLeadingBit(-64464i), 1i));
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), ~8878u), 1u, (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) | abs(u_input.a.x)) <= max(func_3(), 1552u)), (~47939u | _wgslsmith_clamp_u32(1u, ~u_input.a.x, u_input.a.x | 61696u)) >> (u_input.a.x % 32u)), 28u)];
    var var_1 = any(select(vec2<bool>(false, false), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), !all(vec2<bool>(true, false))), _wgslsmith_div_u32(u_input.a.x, u_input.a.x) == abs(_wgslsmith_div_u32(43633u, 26502u))));
    var_1 = !(any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, true), false)) && true);
    let var_2 = Struct_2(var_0.a);
    return select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, true, false, false)) && true)), !vec2<bool>(all(vec2<bool>(true, false)), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, all(func_1(vec3<f32>(306f, 373f, -522f), 842f)), !func_1(vec3<f32>(1069f, 674f, 937f), -1503f).x), select(vec4<bool>(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-144f, -1000f, -413f), vec3<f32>(-769f, -1816f, -432f)), _wgslsmith_f_op_f32(1174f - 386f)).x, true & func_1(vec3<f32>(549f, -1000f, -166f), 271f).x, any(vec2<bool>(false, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), vec4<bool>(!all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), true, false), !any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -816f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 592f)) + _wgslsmith_f_op_f32(floor(319f))) - 1f)), 57516i, ~(-13324i));
    let var_2 = abs(~select(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), countOneBits(vec3<u32>(0u, 4294967295u, u_input.a.x)), false));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2642f, var_1.a, 757f, var_1.a), vec4<f32>(var_1.a, 2920f, 163f, 1282f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, -600f, 654f, var_1.a), vec4<f32>(465f, 1311f, 436f, var_1.a)), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x))), vec4<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(var_1.a - 943f), _wgslsmith_f_op_f32(var_1.a + var_1.a)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-299f, var_1.a, var_1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-739f, var_1.a, var_1.a, var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, var_1.a, -579f, var_1.a)), !vec4<bool>(false, true, var_0.x, true))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(1000f * -1534f), 1f, var_1.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(543f, 600f, 740f, -1182f) - vec4<f32>(1319f, var_1.a, var_1.a, -2312f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(196f, var_1.a, var_1.a, var_1.a) - vec4<f32>(var_1.a, var_1.a, 815f, var_1.a))))))))));
    let var_4 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x))), 1329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, 519f), _wgslsmith_f_op_f32(var_1.a + var_1.a)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_1.a)))));
    var var_5 = _wgslsmith_mod_vec3_i32(select(_wgslsmith_add_vec3_i32(abs(countOneBits(vec3<i32>(-1i, var_1.b, var_1.b))), _wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, -33558i, 2147483647i), vec3<i32>(var_1.c, 36446i, -1i))), vec3<i32>(~var_1.c, _wgslsmith_sub_i32(-var_1.c, ~var_1.b), ~reverseBits(var_1.b)), select(select(var_0.zxz, !vec3<bool>(false, var_0.x, true), var_0.x), vec3<bool>(!var_0.x, any(vec2<bool>(var_0.x, true)), all(var_0.xyz)), true)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.b, 2147483647i), ~vec2<i32>(var_1.c, 43950i)), var_1.b << (var_2.x % 32u)), firstLeadingBit(var_1.b), ~0i));
    var var_6 = Struct_2(Struct_1(1071f, 2147483647i, var_5.x));
    var var_7 = select(select(vec4<bool>(true, all(select(vec3<bool>(true, var_0.x, true), var_0.xyy, var_0.zzx)), !var_0.x, var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), !var_0.x), var_4.x < var_4.x), vec4<bool>(((var_5.x != var_5.x) || (var_6.a.a <= var_6.a.a)) & !var_0.x, 560f != var_4.x, true, all(!select(vec2<bool>(false, var_0.x), var_0.ww, var_0.ww))), any(select(!vec4<bool>(true, false, true, var_0.x), select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x)), vec4<bool>(true, var_0.x, var_0.x, true), !var_0.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9493u, max(0u, 1u), 1u), firstTrailingBit(var_2)), 11252u, ~0u));
}

