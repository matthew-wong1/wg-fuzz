struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(393f, 536f), vec2<f32>(-1771f, -1933f), vec2<f32>(1062f, -1125f), vec2<f32>(1288f, 1000f), vec2<f32>(-385f, -683f), vec2<f32>(1529f, 294f), vec2<f32>(1273f, -130f), vec2<f32>(-1000f, 972f), vec2<f32>(-451f, 2876f), vec2<f32>(-704f, -600f), vec2<f32>(-2020f, -1066f), vec2<f32>(-221f, -1179f), vec2<f32>(943f, 111f), vec2<f32>(-411f, 892f), vec2<f32>(892f, -977f), vec2<f32>(754f, -636f), vec2<f32>(222f, 394f), vec2<f32>(-661f, 223f), vec2<f32>(-270f, 934f), vec2<f32>(-419f, -1000f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1088f)), _wgslsmith_f_op_f32(f32(-1f) * -540f)));
    let var_0 = _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(-(~u_input.a), ~(-48697i), firstTrailingBit(countOneBits(u_input.a))), u_input.a);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-204f, -1000f, arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-620f + -166f))), -1000f)));
    global1 = array<vec2<f32>, 20>();
    global1 = array<vec2<f32>, 20>();
    return -725i;
}

fn func_3() -> u32 {
    var var_0 = select(min(~firstTrailingBit(~vec3<u32>(u_input.b, 68606u, u_input.b)), ~(vec3<u32>(56342u, 1u, 0u) << (~vec3<u32>(u_input.b, u_input.b, 54752u) % vec3<u32>(32u)))), max(~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))), ~(~(vec3<u32>(95314u, 102969u, 20956u) << (vec3<u32>(u_input.b, u_input.b, 27068u) % vec3<u32>(32u))))), vec3<bool>(false, false, false));
    var_0 = vec3<u32>(~_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(~u_input.b, 4294967295u)), firstLeadingBit(var_0.x) >> (22839u % 32u), u_input.b ^ u_input.b);
    var var_1 = u_input.a & ~(-((i32(-1i) * -22278i) & min(u_input.a, 5680i)));
    let var_2 = Struct_1(u_input.a, vec4<bool>((_wgslsmith_clamp_i32(0i, u_input.a, -17095i) < _wgslsmith_mod_i32(-6069i, -2147483647i)) && true, all(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false))), true, false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f + 546f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(891f))), -213f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.xy);
    var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(abs(var_0.xz << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), var_2.d << (vec2<u32>(var_2.d.x, 4294967295u) % vec2<u32>(32u))), ~max(~257u, _wgslsmith_mod_u32(1u, var_2.d.x)), 4294967295u) | ~vec3<u32>(var_2.d.x, ~(~var_2.d.x), var_2.d.x);
    return ~(~firstLeadingBit(select(var_2.d.x, var_0.x, var_2.b.x))) << (_wgslsmith_div_u32(var_0.x, 10201u) % 32u);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_1(-2147483647i, vec4<bool>(any(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, false)), true, (func_3() << (u_input.b % 32u)) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 19022u, 1u), vec4<u32>(1u, u_input.b, 4294967295u, 17531u)), true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(2237f - -1120f), _wgslsmith_f_op_f32(850f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -337f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 142f, -258f)), vec3<f32>(212f, 489f, 1000f)), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(784f, -403f, -111f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(993f, 587f, 482f)), vec3<bool>(false, false, true))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1586f, -650f, 1235f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1551f, 541f, -336f) - vec3<f32>(-933f, -1191f, -1186f)))))), reverseBits(abs(vec2<u32>(1u, 83398u))));
    let var_1 = select(var_0.b.wx, !select(vec2<bool>(var_0.c.x >= var_0.c.x, all(var_0.b)), var_0.b.wx, var_0.b.x), !(!vec2<bool>(all(vec4<bool>(true, true, var_0.b.x, true)), var_0.b.x | var_0.b.x)));
    var var_2 = Struct_1(var_0.a, select(vec4<bool>(var_1.x | var_1.x, !(true | var_1.x), all(vec3<bool>(true, var_1.x, true)), false), !select(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(false, var_0.b.x, false, false), var_0.b.x | var_1.x), select(select(vec4<bool>(var_0.b.x, false, var_0.b.x, var_1.x), select(var_0.b, vec4<bool>(var_0.b.x, var_1.x, false, true), vec4<bool>(false, var_0.b.x, true, var_1.x)), !vec4<bool>(var_0.b.x, true, true, var_0.b.x)), var_0.b, select(any(vec3<bool>(false, true, false)), var_0.c.x == var_0.c.x, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1036f + -1687f), _wgslsmith_f_op_f32(766f * var_0.c.x), _wgslsmith_div_f32(113f, -233f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.c)))) - _wgslsmith_f_op_vec3_f32(select(var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)))), true))), abs(vec2<u32>(~(~u_input.b), var_0.d.x)));
    var var_3 = var_0.a;
    return _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17121i | var_0.a, 1i, var_0.a), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_0.a, -499i), vec3<i32>(var_2.a, var_2.a, var_0.a))), -var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(22294u & (~(u_input.b >> (1u % 32u)) >> (0u % 32u)), !vec2<bool>((u_input.b & 9805u) != 1u, true), _wgslsmith_f_op_f32(f32(-1f) * -186f), func_2(firstLeadingBit(func_1(firstLeadingBit(vec3<u32>(0u, u_input.b, u_input.b)), u_input.a < u_input.a))));
    let var_1 = min(countOneBits(reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 6640u), reverseBits(vec2<u32>(4646u, var_0.a))))), abs(~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_0.a), vec2<u32>(22427u, u_input.b), vec2<u32>(u_input.b, 1u)), ~vec2<u32>(1u, 33058u), ~vec2<u32>(var_0.a, u_input.b))));
    var var_2 = select(select(!(!select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(false, false, true, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, false))), vec4<bool>(any(vec4<bool>(true, false, var_0.b.x, var_0.b.x)) || false, !var_0.b.x, (var_0.d << (var_1.x % 32u)) >= u_input.a, all(select(vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, false, false)))), vec4<bool>(!any(vec2<bool>(true, var_0.b.x)), true, true, true)), !select(vec4<bool>(any(vec3<bool>(true, var_0.b.x, false)), var_0.b.x, !var_0.b.x, u_input.b != u_input.b), select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), select(vec4<bool>(var_0.b.x, false, false, false), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), vec4<bool>(false, true, var_0.b.x, var_0.b.x)), true), true || any(vec3<bool>(var_0.b.x, var_0.b.x, true))), any(vec2<bool>(true, any(!vec3<bool>(false, var_0.b.x, true)))));
    var var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a), max(-vec2<i32>(u_input.a, -1i), vec2<i32>(_wgslsmith_mult_i32(var_0.d, var_0.d), _wgslsmith_mod_i32(-1i, u_input.a))) | reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-7213i, -46362i) ^ vec2<i32>(var_0.d, u_input.a), ~vec2<i32>(var_0.d, var_0.d))), -(~(~(~vec2<i32>(var_0.d, var_0.d)))));
    var var_4 = Struct_1(-24234i, vec4<bool>(!var_2.x, false, var_0.b.x, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.c) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, var_0.c, var_0.c), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1393f, 1000f, var_0.c), vec3<f32>(1903f, var_0.c, -495f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1921f, var_0.c, var_0.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, -1801f))))), var_1);
    var var_5 = !select(var_4.b.x, !any(var_4.b), all(select(var_0.b, !vec2<bool>(var_2.x, false), select(vec2<bool>(false, var_0.b.x), vec2<bool>(false, var_0.b.x), false))));
    var var_6 = ~(~countOneBits(1u));
    let var_7 = Struct_1(-func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, -2147483647i, 0i), vec3<i32>(2147483647i, 2147483647i, var_0.d))) | (~(-var_0.d) ^ func_2(_wgslsmith_mult_i32(var_0.d, 50330i))), var_4.b, _wgslsmith_div_vec3_f32(var_4.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(sign(var_4.c.x)), var_4.c.x))), var_1);
    var var_8 = -firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(-1i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_7.a, u_input.a), vec2<i32>(0i, -2190i)), abs(~32598i)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec4_i32(~(-vec4<i32>(var_3.x, -37938i, -1i, 0i)), vec4<i32>(var_0.d, func_2(var_8.x), abs(50219i), abs(43815i))));
}

