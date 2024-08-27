struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-753f, -521f) * vec2<f32>(1000f, -2110f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(366f, 1757f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-858f, -774f) + vec2<f32>(-1000f, 949f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1161f, 242f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(797f, -294f)))))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_0.x, arg_0.x), arg_0.x, arg_0.x, arg_0.x), ~(vec4<u32>(arg_0.x, arg_0.x, 261u, arg_0.x) << (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u) % vec4<u32>(32u)))), !(!(26599u < arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-275f + 2443f), _wgslsmith_f_op_f32(var_0.x + -308f))), 1f)), 0u, arg_0, 3856u, select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), true)), !select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), u_input.a < _wgslsmith_mult_i32(u_input.a, -2147483647i))));
    var_0 = var_1.a.c;
    var var_2 = Struct_3(var_1.a, ~34931u, ~(~var_1.c), firstLeadingBit(4294967295u), select(!(!var_1.e), !select(var_1.e, !var_1.e, var_1.a.b), true));
    var var_3 = Struct_2(_wgslsmith_div_vec4_i32(~(firstTrailingBit(vec4<i32>(u_input.a, -58457i, u_input.a, 16006i)) | vec4<i32>(65957i, 19370i, 0i, u_input.a)), -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, -31255i), vec4<i32>(0i, u_input.a, 2147483647i, u_input.a)))), 31615i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(752f - var_0.x))), false);
    return var_2.a.a;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec4_u32(~func_3(vec3<u32>(1u, 4294967295u, 0u)), func_3(vec3<u32>(32393u, 1u, 1u)) | ~vec4<u32>(70934u, 32351u, 43966u, 36249u)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), 1i != u_input.a)), _wgslsmith_div_vec2_f32(arg_0.xy, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(~10213u, reverseBits(~1u))), select(func_3(vec3<u32>(1u, 1u, 1u)).yzy << (_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, 4294967295u, 2832u), vec3<u32>(3193u, 2104u, 0u), vec3<bool>(false, false, true)), vec3<u32>(1u, 4294967295u, 26123u)) % vec3<u32>(32u)), ~vec3<u32>(_wgslsmith_add_u32(1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(41514u, 12647u, 17634u, 2535u), vec4<u32>(1u, 0u, 1u, 1u)), 1u), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(41258u, 1u, 4294967295u, 0u), vec4<u32>(17622u, 51404u, 1u, 0u))), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(7646u, 1u, 76177u), vec3<u32>(85244u, 1u, 22827u)), 12996u)), vec2<bool>(true, true));
    var var_1 = vec3<bool>((all(vec2<bool>(var_0.a.b, true)) == false) | (countOneBits(u_input.a >> (var_0.d % 32u)) > (u_input.a << (0u % 32u))), all(var_0.e), !(!var_0.a.b));
    var var_2 = _wgslsmith_f_op_f32(-1444f + 539f);
    var var_3 = select(select(select(vec4<bool>(all(var_1.yz), var_1.x, true, !var_1.x), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_1.x, false, false), vec4<bool>(false, false, var_1.x, var_0.a.b)), !vec4<bool>(var_1.x, false, true, false), all(var_1.zz)), select(select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(var_0.a.b, var_1.x, var_1.x, true), vec4<bool>(var_0.e.x, var_0.a.b, false, var_0.a.b)), select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.a.b, var_0.e.x, var_0.e.x, false), var_1.x))), !select(!vec4<bool>(var_1.x, var_0.a.b, true, true), select(vec4<bool>(var_0.e.x, false, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, var_0.a.b, false, var_0.e.x)), all(vec2<bool>(var_1.x, var_0.e.x))), !vec4<bool>(var_0.a.b, true, !var_0.e.x, var_0.a.b)), vec4<bool>(countOneBits(29206u) <= (var_0.c.x << (~var_0.d % 32u)), any(vec4<bool>(4294967295u != var_0.b, select(var_1.x, true, var_0.a.b), any(var_1.yx), true)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_1.x, var_0.a.b), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, true, true)), !vec3<bool>(var_0.e.x, var_1.x, false))), var_0.a.b), !any(select(!var_1.yz, vec2<bool>(var_1.x, false), var_1.zy)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(312f + _wgslsmith_f_op_f32(-var_0.a.c.x)), 386f, 813f)));
    return Struct_2(_wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), ~vec4<i32>(-31055i, -1i, u_input.a, -1122i), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), countOneBits(vec4<i32>(_wgslsmith_sub_i32(u_input.a, -4231i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 45016i)), u_input.a, ~u_input.a)), -max(-vec4<i32>(-14356i, u_input.a, 2147483647i, u_input.a), min(vec4<i32>(-24393i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, 20718i)))), ~(min(u_input.a, u_input.a) << ((firstLeadingBit(38880u) << (_wgslsmith_mult_u32(1u, var_0.b) % 32u)) % 32u)), -178f, true);
}

fn func_1() -> i32 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-614f, -1285f, -1498f) * vec3<f32>(-1000f, 245f, -482f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1314f, -369f) * vec3<f32>(-1125f, 117f, 910f)), any(vec2<bool>(true, true)))) + vec3<f32>(1363f, -910f, -734f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(565f)), _wgslsmith_f_op_f32(step(539f, -1166f)), _wgslsmith_div_f32(-1000f, -772f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-857f, var_0.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1777f)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(241f + _wgslsmith_f_op_f32(trunc(1339f))), _wgslsmith_f_op_f32(step(-2054f, 1066f))) * _wgslsmith_f_op_f32(-var_1.x));
    let var_3 = _wgslsmith_div_vec3_f32(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 1990f, 1005f)), _wgslsmith_div_vec3_f32(var_1, vec3<f32>(-172f, var_1.x, var_0.c)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1)))));
    var_2 = var_3.x;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(38135i, u_input.a, -u_input.a, firstLeadingBit(u_input.a));
    var_0 = firstLeadingBit(countOneBits(vec4<i32>(func_1(), ~(-26746i ^ u_input.a), var_0.x, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-752f, 129f, 1487f) + vec3<f32>(1059f, 675f, 256f))).b)));
    var_0 = max(-vec4<i32>(reverseBits(var_0.x), u_input.a, select(var_0.x, ~27005i, true), abs(func_2(vec3<f32>(-1268f, -903f, 634f)).a.x)), max(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, 0i, u_input.a, -9670i), abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.x, u_input.a, u_input.a), vec4<i32>(var_0.x, 2147483647i, 1i, 8130i)))), ~(~(~vec4<i32>(-19440i, u_input.a, -2147483647i, 26913i)))));
    var_0 = vec4<i32>(1i, -(~14159i), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 2147483647i, -33800i), vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i)), max(0i, 4418i)), -vec3<i32>(var_0.x, var_0.x, 2147483647i) << (~vec3<u32>(4294967295u, 98430u, 4294967295u) % vec3<u32>(32u)))), var_0.x);
    let var_1 = Struct_3(Struct_1(max(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(0u, 0u, 15318u, 3715u)), select(vec4<u32>(18764u, 1u, 4294967295u, 95518u), vec4<u32>(23289u, 0u, 138226u, 1u), vec4<bool>(false, false, false, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(17856u, 7564u, 22654u, 0u), vec4<u32>(1u, 57438u, 4294967295u, 34648u), vec4<u32>(7281u, 1832u, 4294967295u, 32293u)))), any(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-747f, _wgslsmith_f_op_f32(924f - -264f)))), ~(~1u), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 35696u), vec3<u32>(1u, 1u, 5496u)), firstLeadingBit(1u)), 1u, _wgslsmith_clamp_u32(27436u, ~24213u, firstLeadingBit(4294967295u))), firstTrailingBit(vec3<u32>(5747u, 40860u, 1u)) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 17488u, 34918u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u))), 37702u, select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(true, func_2(vec3<f32>(1060f, 589f, 1000f)).d), ~0u > _wgslsmith_clamp_u32(26551u, 2669u, 7298u)), true));
    var var_2 = ~(~vec4<u32>(~var_1.a.a.x, var_1.c.x, 56758u, 49201u));
    let var_3 = !vec4<bool>(all(select(select(vec4<bool>(true, false, var_1.e.x, var_1.e.x), vec4<bool>(var_1.a.b, var_1.e.x, var_1.a.b, var_1.a.b), vec4<bool>(var_1.e.x, true, false, var_1.e.x)), select(vec4<bool>(true, var_1.e.x, true, var_1.a.b), vec4<bool>(false, var_1.a.b, false, var_1.e.x), vec4<bool>(false, false, true, true)), var_1.a.b)), true, false, all(select(vec4<bool>(true, var_1.e.x, var_1.a.b, var_1.e.x), !vec4<bool>(var_1.a.b, false, false, var_1.e.x), var_1.e.x)));
    let var_4 = ~1u;
    var var_5 = Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u & var_2.x, 46560u, _wgslsmith_mod_u32(1u, 27368u), ~var_4), var_1.a.a ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(48234u, 4294967295u, var_4, 1u), var_1.a.a, var_1.a.a >> (vec4<u32>(var_1.c.x, 38200u, 4294967295u, var_2.x) % vec4<u32>(32u)))), any(!(!select(vec2<bool>(var_3.x, var_1.e.x), vec2<bool>(false, false), vec2<bool>(true, false)))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(-var_1.a.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_0.xx & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, var_0.x), var_0.yz))), vec4<u32>(0u, firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1293u, 4294967295u, 104054u), vec3<u32>(var_1.b, var_1.c.x, 63553u))), var_1.b, min(_wgslsmith_dot_vec3_u32(vec3<u32>(19440u, 21504u, 1u), ~var_2.yxz), 4294967295u & min(var_5.a.x, 10471u))), vec4<u32>(2591u, 25572u, var_2.x << (46784u % 32u), ~(~1u)) >> (func_3(reverseBits(var_5.a.xwy << (var_2.yxw % vec3<u32>(32u)))) % vec4<u32>(32u)), ~var_1.b, _wgslsmith_mod_i32(var_0.x, i32(-1i) * -24936i));
}

