struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_1(1784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(760f))))));
    var var_1 = ~(~max(~vec3<u32>(7468u, arg_1, arg_1), vec3<u32>(13873u, _wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_add_u32(0u, arg_2.x))));
    var_1 = arg_2;
    var var_2 = arg_2.x;
    var_1 = vec3<u32>(arg_1 ^ 56226u, 123494u, ~_wgslsmith_mod_u32(29982u, var_1.x));
    return -1i;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: i32) -> vec3<i32> {
    var var_0 = Struct_2(arg_0, _wgslsmith_add_vec3_i32(min(~(~u_input.b.xwy), -u_input.b.xxw), _wgslsmith_sub_vec3_i32(min(countOneBits(u_input.b.wwx), -u_input.b.yyz), countOneBits(reverseBits(vec3<i32>(u_input.b.x, u_input.a, -1i))))));
    let var_1 = any(vec4<bool>(false, !all(vec4<bool>(true, true, true, var_0.a)), true, all(vec4<bool>(!var_0.a, false, any(vec2<bool>(var_0.a, true)), any(vec4<bool>(arg_0, var_0.a, var_0.a, arg_0))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1233f)))));
    var var_3 = Struct_1(var_2.b, _wgslsmith_f_op_f32(ceil(576f)));
    let var_4 = -1i;
    return vec3<i32>(-1i, ~31352i | (i32(-1i) * -arg_2), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -u_input.b.yxx, var_0.b), vec3<i32>(-1i, -var_0.b.x, -var_4) | ~vec3<i32>(var_0.b.x, 1i, 0i)));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(firstLeadingBit(arg_2), -u_input.a, _wgslsmith_mult_i32(-13438i, arg_2)), func_4(false, 19568u, _wgslsmith_mod_i32(arg_2, arg_2), func_3(false, arg_0, vec3<u32>(1u, arg_1.x, 10018u)) ^ 18436i)) <= arg_2;
    let var_1 = min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, arg_0, max(15856u, 6467u)), abs(vec3<u32>(4294967295u, arg_0, 4294967295u)), vec3<u32>(~0u, _wgslsmith_sub_u32(4294967295u, 33569u), ~11634u)), firstLeadingBit(vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 27980u, arg_1.x), vec3<u32>(arg_1.x, arg_0, 1u))), ~4294967295u, 1u)));
    var var_2 = u_input.b.x;
    let var_3 = -210f;
    var var_4 = -115f;
    return Struct_1(2037f, var_3);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = vec2<bool>(true, all(arg_0));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), var_1.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.b) + vec2<f32>(1529f, arg_1.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 1060f) + vec2<f32>(arg_1.b, -902f)))))));
    var_1 = func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(12077u, 0u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(66950u, 49013u))), vec2<u32>(~_wgslsmith_div_u32(0u, 1u), ~firstTrailingBit(72u))), ~_wgslsmith_sub_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(75109u, 0u), vec2<u32>(0u, 1u))), min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), 0i);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -808f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(var_2)), var_2)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 2057f, var_2.x, -1921f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -773f, -477f, var_3.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1533f, _wgslsmith_div_f32(var_2.x, -982f), -901f, -984f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, -1000f, arg_1.b, -2264f)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(arg_1 || false, vec3<i32>(~1i, u_input.b.x, -31941i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2344f) + 1235f)))), -560f);
    let var_2 = true;
    let var_3 = ~abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, 4294967295u, 90937u, 12444u), vec4<u32>(16440u, 20320u, 39305u, 113252u)), ~vec4<u32>(98737u, 75961u, 1u, 7618u)), vec4<u32>(4294967295u, abs(57611u), 4294967295u, _wgslsmith_mod_u32(1u, 10784u))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(step(-861f, 2625f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-973f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b, arg_0.x)) * _wgslsmith_div_f32(787f, -708f)), !(!var_2)))));
    return Struct_1(arg_3.x, -650f);
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_5(vec2<bool>(true, true), func_2(1u, ~vec2<u32>(2280u, 65609u), u_input.a << (4294967295u % 32u)))))), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), any(vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1158f, _wgslsmith_f_op_f32(-374f + arg_0), _wgslsmith_f_op_f32(select(arg_0, arg_0, false)), 2116f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, arg_0, -677f), vec4<f32>(318f, arg_0, -1425f, arg_0))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 497f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + arg_0), -751f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-407f)) + 395f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.b, arg_0), _wgslsmith_f_op_vec4_f32(func_5(vec2<bool>(true, false), Struct_1(-972f, var_0.a))).x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(890f, arg_0), vec2<f32>(arg_0, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1186f, var_0.a) + vec2<f32>(818f, var_0.b))))));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-1004f, -809f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(-func_2(90565u, vec2<u32>(0u, 123236u), -43495i).a)))));
    let var_2 = !vec3<bool>(false && (u_input.a <= u_input.a), _wgslsmith_f_op_f32(533f + _wgslsmith_f_op_f32(-190f - var_0.a)) < arg_0, var_1.x >= -1000f);
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(480f, arg_0, 1149f), vec3<f32>(-1987f, 1441f, arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_1.x, -536f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_1.x, 462f)), false & var_2.x)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1320f, var_1.x))), -278f, arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(279f, var_0.b, 234f))))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1330f, _wgslsmith_div_f32(362f, 1000f));
    let var_1 = var_0;
    var var_2 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(var_1.a >= 1121f)), !vec4<bool>(true, true | (51644i >= u_input.a), any(vec2<bool>(true, true)), func_1(-1271f)), !vec4<bool>(func_1(_wgslsmith_f_op_f32(-997f + var_1.a)), !all(vec2<bool>(false, false)), _wgslsmith_mult_i32(37354i, u_input.a) <= 0i, false));
    var_2 = vec4<bool>(var_2.x, !((0i == abs(u_input.a)) && !var_2.x), var_2.x, all(!(!vec4<bool>(var_2.x, var_2.x, false, var_2.x))));
    var_2 = vec4<bool>(false, false, var_2.x, true);
    var var_3 = _wgslsmith_div_i32(u_input.b.x, u_input.b.x);
    var var_4 = Struct_2(true, _wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.b.ywy) << (~(~vec3<u32>(4294967295u, 40366u, 1u)) % vec3<u32>(32u)), ~(u_input.b.xzz ^ u_input.b.yzy)));
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(var_4.b.xx), vec2<i32>(firstTrailingBit(var_4.b.x), u_input.b.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -644f))), firstTrailingBit(min(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(11824u, 36835u)), vec2<u32>(82795u, 0u)), ~(~0u))), min(4294967295u, 28586u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -751f), var_0.b, _wgslsmith_f_op_f32(round(-1878f)))))));
}

