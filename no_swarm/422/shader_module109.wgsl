struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global2: array<u32, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> vec4<bool> {
    let var_0 = Struct_1(18005u);
    let var_1 = abs(firstLeadingBit(vec2<i32>(~u_input.a, -16802i) ^ -_wgslsmith_div_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-36436i, arg_3))));
    return !vec4<bool>(arg_2.x, arg_3 != var_1.x, arg_2.x, true);
}

fn func_2() -> bool {
    var var_0 = Struct_1(66885u);
    let var_1 = false;
    global2 = array<u32, 13>();
    var var_2 = _wgslsmith_div_i32(-2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-15850i, -1i)), -vec2<i32>(u_input.a, 0i))));
    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-43190i, ~u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(1739i, u_input.a), vec2<i32>(u_input.a, u_input.a)))), abs(vec2<i32>(18130i, u_input.a) ^ vec2<i32>(u_input.a, u_input.a)) | firstTrailingBit(vec2<i32>(u_input.a, u_input.a))) > u_input.a;
    return all(!select(func_3(Struct_1(43064u), Struct_1(0u), select(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], true), -5932i), vec4<bool>(false | var_1, false, var_1 & false, true), all(vec3<bool>(var_1, var_1, false))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: bool) -> vec3<f32> {
    global0 = 1f;
    global2 = array<u32, 13>();
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(select(~global2[_wgslsmith_index_u32(4294967295u, 13u)], select(u_input.b.x, 34356u, false), arg_2), 13u)], _wgslsmith_dot_vec4_u32(abs(u_input.b) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, 0u), u_input.b) % vec4<u32>(32u)), abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global2[_wgslsmith_index_u32(0u, 13u)]) | vec4<u32>(global2[_wgslsmith_index_u32(1u, 13u)], u_input.b.x, u_input.b.x, u_input.b.x)))), ~(global2[_wgslsmith_index_u32(~1u, 13u)] >> (~_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(u_input.b.x, 13u)]) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x << (36264u % 32u), 11373u), ~firstTrailingBit(~vec2<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], 0u))));
    var var_1 = ~(~countOneBits(u_input.b.xy));
    var var_2 = Struct_1(0u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-846f, arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-504f, -425f), arg_1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_0 - arg_1.x), -774f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    global1 = array<vec2<bool>, 19>();
    return Struct_1(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(u_input.b.x, 19034u | u_input.b.x), u_input.b.x, u_input.b.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.a;
    global1 = array<vec2<bool>, 19>();
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(473f, _wgslsmith_f_op_f32(-1331f * -226f), func_2()))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2203f, -1642f)), vec2<f32>(765f, -1177f), select(global1[_wgslsmith_index_u32(arg_1.a, 19u)], global1[_wgslsmith_index_u32(51464u, 19u)], false))))), true)), reverseBits(arg_0.wwx), -460f);
    var var_2 = select(false, func_3(func_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-382f, 1053f, 523f), vec3<f32>(1f, 1f, 1f))), -countOneBits(vec3<i32>(arg_0.x, u_input.a, 2147483647i)), -526f), Struct_1(abs(~arg_1.a)), !global1[_wgslsmith_index_u32(25221u, 19u)], u_input.a).x, all(vec3<bool>(true, true, true)));
    let var_3 = func_3(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-804f, 672f, -123f), vec3<f32>(676f, 1170f, 230f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-904f, -887f, 228f), vec3<f32>(-2119f, 970f, -674f)))))), -arg_0.wzw, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(901f + 392f)))))), arg_1, global1[_wgslsmith_index_u32(~(~abs(var_1.a)), 19u)], -2147483647i).wxy;
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2));
    let var_1 = func_5(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-333f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2, 358f)))), 496f), vec3<i32>(u_input.a, _wgslsmith_mult_i32(firstLeadingBit(i32(-1i) * -1i), u_input.a), 43262i), arg_2);
    var var_2 = func_5(vec3<f32>(783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1881f))), _wgslsmith_f_op_f32(1310f * arg_2)), abs(vec3<i32>(~22897i, ~2147483647i, -2147483647i) & vec3<i32>(firstTrailingBit(0i), -u_input.a, countOneBits(1i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1139f, 312f)));
    global2 = array<u32, 13>();
    global1 = array<vec2<bool>, 19>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-594f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1363f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1113f * -1490f), _wgslsmith_f_op_f32(trunc(318f)), all(vec4<bool>(true, true, true, true))))) * _wgslsmith_f_op_f32(floor(598f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_6(Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 13u)] >> (94413u % 32u), 13u)]), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)] ^ 58127u, 0u), _wgslsmith_f_op_f32(sign(-1796f)), func_1(-vec4<i32>(-2147483647i, 0i, u_input.a, 24924i), Struct_1(64793u)))))) - var_0.x);
    var var_1 = !vec3<bool>(true, any(vec3<bool>(true, true, true)), true);
    let var_2 = -2147483647i;
    var var_3 = func_1(vec4<i32>(i32(-1i) * -var_2, -u_input.a, var_2, -21330i), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(995f, -210f, var_0.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 370f, var_0.x), vec3<f32>(708f, -672f, -143f)))), vec3<i32>(u_input.a, 1i, u_input.a), -1935f));
    var_3 = func_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-36121i, 5246i, u_input.a, 6408i), max(vec4<i32>(2147483647i, 6614i, -43489i, u_input.a), vec4<i32>(var_2, -1557i, u_input.a, var_2))), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_2, u_input.a, 16170i), vec4<i32>(0i, var_2, 1i, var_2))) | _wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_2, var_2, -1i, 1i), vec4<i32>(-7681i, 0i, var_2, 27556i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, -1i, u_input.a, 52480i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2, u_input.a, 0i, -59675i), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), -vec4<i32>(var_2, 7378i, u_input.a, u_input.a))), Struct_1(~var_3.a));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_div_vec4_i32(vec4<i32>(-27069i, 0i, var_2, 2147483647i), vec4<i32>(12920i, var_2, -13329i, var_2))) & _wgslsmith_sub_vec4_i32(select(vec4<i32>(0i, -39690i, -2147483647i, u_input.a) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(-4331i, 1i, var_2, -2147483647i), !vec4<bool>(var_1.x, var_1.x, false, false)), -vec4<i32>(53489i, 2147483647i, 2147483647i, 34365i) & vec4<i32>(var_2, var_2, 42007i, 5078i)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_div_i32(u_input.a, u_input.a)), _wgslsmith_sub_vec2_i32((vec2<i32>(0i, u_input.a) | vec2<i32>(var_2, 0i)) & (vec2<i32>(-9058i, -56368i) & vec2<i32>(2147483647i, var_2)), ~select(vec2<i32>(var_2, var_2), vec2<i32>(0i, u_input.a), vec2<bool>(var_1.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(462f, var_0.x, -1425f, 247f), vec4<f32>(var_4.x, 228f, -814f, 580f), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1397f, var_4.x, var_0.x, 1000f))), select(var_1.x, var_1.x, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(108f, var_0.x, 541f, 1532f)))));
}

