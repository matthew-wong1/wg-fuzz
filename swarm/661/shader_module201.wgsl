struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = vec2<f32>(arg_0.x, -1135f);
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(898f + -1000f), 1f)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - -2651f), arg_0.x, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(sign(arg_0.x)))));
    var var_1 = select(!vec2<bool>(true, !(u_input.a.x >= 0u)), vec2<bool>(all(vec2<bool>(true, true)), !(true & all(vec4<bool>(false, false, true, true)))), !((_wgslsmith_f_op_f32(round(-914f)) <= _wgslsmith_f_op_f32(max(arg_0.x, 1086f))) && (u_input.a.x >= 1u)));
    let var_2 = var_1.x == false;
    var_1 = !vec2<bool>(var_1.x, select(firstTrailingBit(-1i) <= _wgslsmith_div_i32(-5439i, -53855i), true, true));
    return firstTrailingBit(75627i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = min(arg_2, ~(~firstTrailingBit(-vec3<i32>(-5352i, -24246i, 1i))));
    var var_1 = -551f;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(~abs(0i), arg_0.c), arg_1.b.x);
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1575f + 211f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-537f, -995f)) + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f)) * _wgslsmith_f_op_f32(floor(-435f)))))));
    let var_3 = !all(vec2<bool>(!arg_0.a.x, false)) && (1u >= _wgslsmith_mod_u32(75149u, firstTrailingBit(arg_1.a.x)));
    return ~select(arg_2.yz, _wgslsmith_mult_vec2_i32(-(vec2<i32>(arg_2.x, arg_1.b.x) << (u_input.a % vec2<u32>(32u))), vec2<i32>(32600i, -1i)), vec2<bool>(var_3, false));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(~(~(-16813i)), ~1795i), -func_4(Struct_1(vec2<bool>(true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), func_3(vec4<f32>(-1105f, 883f, 224f, 1000f))), Struct_4(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 78669u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<i32>(-1i, -5188i, 15527i, 1i), true), -vec3<i32>(18717i, -1i, -18348i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2147483647i, 29638i), vec3<i32>(-19643i, 2147483647i, 23278i), vec3<i32>(-7519i, -1i, 2147483647i))));
    var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(select(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(29940i, -15918i, 50287i, -2147483647i), ~vec4<i32>(0i, -1i, 1i, 17178i)), true), countOneBits(14654i)), -min(-2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, -1i, -2147483647i), -2147483647i)));
    var var_1 = vec2<bool>(true, true);
    let var_2 = 59082u;
    let var_3 = Struct_3(vec4<u32>(firstLeadingBit(4294967295u), max(u_input.a.x, _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, 0u, 1u))), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, ~63206u), 1u), 0u), var_2 | abs(_wgslsmith_dot_vec2_u32(vec2<u32>(24508u, u_input.a.x), vec2<u32>(17032u, 4294967295u)) & var_2));
    return Struct_4(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_2, u_input.a.x << (0u % 32u), 1u), countOneBits(_wgslsmith_mod_vec4_u32(var_3.a, vec4<u32>(var_3.a.x, var_2, var_2, var_2)))), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(min(-38043i, 2147483647i), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -31729i)), 1i), vec4<i32>(1i, -1i << (var_3.b % 32u), _wgslsmith_sub_i32(-2147483647i, -51020i), i32(-1i) * -11699i))), !var_1.x);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(217f - 735f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(335f, 418f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-672f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2215f * -577f))))));
    let var_1 = _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(reverseBits(arg_0.b), ~(-arg_0.b)), arg_0.b);
    let var_2 = ~(0i | -arg_1.c);
    var var_3 = ~(-vec4<i32>(countOneBits(var_1) & _wgslsmith_mult_i32(var_2, 2147483647i), min(-var_2, func_3(vec4<f32>(690f, -1185f, var_0.x, var_0.x))), -(-2147483647i | arg_3), 11132i));
    var_3 = _wgslsmith_mult_vec4_i32(countOneBits(-_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.b, arg_0.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_0.b.x, var_3.x, var_1), arg_0.b, vec4<i32>(2147483647i, arg_3, -49020i, arg_1.c)))), max(arg_0.b, countOneBits(-arg_0.b)));
    return Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(15829u), ~arg_0.a.x), 65687u, _wgslsmith_clamp_u32(reverseBits(arg_1.e), ~69124u, ~arg_0.a.x), ~(~1u)), abs(func_2().a)), ~(-(~vec4<i32>(-1i, arg_3, var_2, arg_3))), false);
}

fn func_6(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(21771i, arg_3.x, arg_3.x), vec3<i32>(arg_3.x, arg_3.x, arg_3.x)) >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -24823i << (u_input.a.x % 32u), ~arg_2.b.x), arg_2.b.yyz)) ^ _wgslsmith_add_i32(arg_2.b.x, 1i & arg_3.x);
    var var_1 = ~arg_2.a.zy;
    var var_2 = (_wgslsmith_dot_vec2_u32(~arg_2.a.zw, vec2<u32>(~0u, 42798u)) | 69658u) ^ abs(~64834u);
    var_1 = vec2<u32>(~countOneBits(~arg_2.a.x), ~_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_clamp_u32(var_1.x, 1u, 4294967295u), 4294967295u)) ^ vec2<u32>(abs(58784u), ~(~(~u_input.a.x)));
    var_1 = ~arg_2.a.yy;
    return Struct_1(select(vec2<bool>(!arg_2.c, func_5(Struct_4(vec4<u32>(0u, 0u, var_1.x, 0u), vec4<i32>(-40885i, arg_2.b.x, 28836i, arg_3.x), true), Struct_2(arg_2.a, Struct_1(vec2<bool>(arg_2.c, arg_2.c), vec4<bool>(true, arg_2.c, false, true), -7228i), 0i, vec4<u32>(4294967295u, 0u, 0u, 1u), u_input.a.x), ~arg_2.a, var_0 | var_0).c), vec2<bool>(true || arg_2.c, !(arg_2.c | false)), select(select(vec2<bool>(arg_2.c, true), select(vec2<bool>(arg_2.c, false), vec2<bool>(arg_2.c, false), vec2<bool>(arg_2.c, arg_2.c)), false), !(!vec2<bool>(arg_2.c, true)), true)), vec4<bool>(false, !arg_2.c, arg_2.c, arg_2.c), func_4(Struct_1(select(!vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(true, true), true), select(!vec4<bool>(arg_2.c, false, arg_2.c, arg_2.c), vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), arg_1.x >= arg_1.x), _wgslsmith_mod_i32(arg_3.x, 68208i) << (~31741u % 32u)), Struct_4(vec4<u32>(u_input.a.x, 18715u, 0u, var_1.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, arg_2.a.x, 21255u, 58376u), arg_2.a, vec4<u32>(u_input.a.x, 1u, var_1.x, var_1.x)), vec4<i32>(abs(arg_1.x), 1i, -12673i, _wgslsmith_clamp_i32(var_0, 2147483647i, arg_2.b.x)), true), ~vec3<i32>(firstLeadingBit(arg_2.b.x), firstLeadingBit(arg_3.x), ~6112i)).x);
}

fn func_1() -> vec4<u32> {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u))), ~firstTrailingBit(4294967295u) ^ ~_wgslsmith_mult_u32(14954u, u_input.a.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, u_input.a.x)), vec2<u32>(12797u, ~0u))) | ~select(firstLeadingBit(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), ~(~vec3<u32>(u_input.a.x, 4294967295u, 25559u)), vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true));
    var var_1 = func_6(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(-1063f - 740f)), _wgslsmith_f_op_f32(floor(-1028f))))), vec3<i32>(-1i, -firstTrailingBit(-1i), -reverseBits(24852i)) ^ abs(~vec3<i32>(-26109i, -459i, 27924i)), func_5(func_2(), Struct_2(max(func_2().a, countOneBits(vec4<u32>(56021u, 146u, 27438u, u_input.a.x))), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, false), 48248i << (var_0.x % 32u)), 1i << (~u_input.a.x % 32u), ~(~vec4<u32>(0u, u_input.a.x, 36220u, u_input.a.x)), _wgslsmith_dot_vec2_u32(~var_0.yz, _wgslsmith_add_vec2_u32(var_0.xz, u_input.a))), reverseBits(~vec4<u32>(1u, u_input.a.x, 39507u, 12423u)) ^ vec4<u32>(var_0.x, _wgslsmith_mod_u32(27718u, 71407u), max(50869u, 68523u), var_0.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(-40074i, -1i), 0i)), vec2<i32>(-1i, _wgslsmith_mod_i32(~(i32(-1i) * -1i), func_5(func_5(Struct_4(vec4<u32>(44308u, 0u, var_0.x, 4294967295u), vec4<i32>(-2147483647i, 0i, 65594i, -1i), true), Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, var_0.x), Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, true, true), 9698i), -40995i, vec4<u32>(8195u, var_0.x, var_0.x, 1u), 46868u), vec4<u32>(var_0.x, 0u, 1u, 1u), -20946i), Struct_2(vec4<u32>(u_input.a.x, 582u, 49014u, 1u), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true), 2147483647i), 42457i, vec4<u32>(1u, u_input.a.x, u_input.a.x, var_0.x), 4745u), ~vec4<u32>(4294967295u, 26786u, 4294967295u, 1u), ~0i).b.x)));
    var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-782f, -550f, false))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(628f, -1331f)), _wgslsmith_div_f32(-246f, -617f))))), reverseBits(abs(firstLeadingBit(vec3<i32>(var_1.c, 34080i, var_1.c))) >> (func_5(func_5(Struct_4(vec4<u32>(u_input.a.x, 4294967295u, 41224u, var_0.x), vec4<i32>(var_1.c, var_1.c, 22178i, -48071i), false), Struct_2(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, var_0.x), Struct_1(var_1.a, vec4<bool>(false, var_1.a.x, var_1.b.x, true), var_1.c), var_1.c, vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), 6212u), vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, u_input.a.x), -1i), Struct_2(vec4<u32>(52346u, 24563u, u_input.a.x, var_0.x), Struct_1(var_1.a, vec4<bool>(var_1.a.x, var_1.b.x, var_1.a.x, true), var_1.c), -1i, vec4<u32>(4294967295u, 24935u, u_input.a.x, u_input.a.x), 51744u), vec4<u32>(var_0.x, 1u, 12657u, 11240u) | vec4<u32>(6905u, 47633u, var_0.x, u_input.a.x), var_1.c).a.wwz % vec3<u32>(32u))), Struct_4(func_5(func_5(func_5(Struct_4(vec4<u32>(var_0.x, 4294967295u, 0u, u_input.a.x), vec4<i32>(var_1.c, 2147483647i, -1i, var_1.c), var_1.a.x), Struct_2(vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u), Struct_1(var_1.a, vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.b.x), 4279i), var_1.c, vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), u_input.a.x), vec4<u32>(35933u, u_input.a.x, 45330u, var_0.x), var_1.c), Struct_2(vec4<u32>(0u, u_input.a.x, 17483u, 4294967295u), Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, var_1.a.x, var_1.b.x), -19057i), var_1.c, vec4<u32>(var_0.x, u_input.a.x, 1u, var_0.x), 1u), vec4<u32>(var_0.x, var_0.x, u_input.a.x, 63402u), 37172i), Struct_2(vec4<u32>(3099u, var_0.x, 57654u, var_0.x), Struct_1(var_1.b.zw, vec4<bool>(var_1.a.x, false, false, true), var_1.c), ~7167i, vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u) & vec4<u32>(1677u, u_input.a.x, 4294967295u, u_input.a.x), ~0u), vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~4294967295u, ~u_input.a.x, select(var_0.x, var_0.x, false)), var_1.c).a, vec4<i32>(var_1.c, -var_1.c, var_1.c >> (0u % 32u), _wgslsmith_mod_i32(var_1.c, var_1.c)) & (min(vec4<i32>(var_1.c, var_1.c, var_1.c, 2147483647i), vec4<i32>(-2147483647i, var_1.c, var_1.c, -21994i)) >> (func_5(Struct_4(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), vec4<i32>(0i, var_1.c, var_1.c, var_1.c), var_1.b.x), Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.x), Struct_1(vec2<bool>(true, false), vec4<bool>(var_1.b.x, var_1.b.x, false, true), 1i), var_1.c, vec4<u32>(var_0.x, u_input.a.x, var_0.x, var_0.x), var_0.x), vec4<u32>(1u, 0u, 94898u, var_0.x), -77971i).a % vec4<u32>(32u))), !all(var_1.b)), _wgslsmith_add_vec2_i32(func_2().b.yz, -_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c, var_1.c), vec2<i32>(2147483647i, -1i)) << (_wgslsmith_sub_vec2_u32(var_0.yz, ~var_0.zy) % vec2<u32>(32u))));
    let var_2 = Struct_1(vec2<bool>(var_1.a.x, !(true | (u_input.a.x != var_0.x))), vec4<bool>(func_6(_wgslsmith_div_f32(-1389f, _wgslsmith_f_op_f32(1298f - -1465f)), vec3<i32>(var_1.c, ~var_1.c, firstLeadingBit(var_1.c)), Struct_4(firstTrailingBit(vec4<u32>(1u, var_0.x, u_input.a.x, var_0.x)), firstTrailingBit(vec4<i32>(-5717i, 0i, var_1.c, var_1.c)), func_6(-238f, vec3<i32>(6169i, var_1.c, 0i), Struct_4(vec4<u32>(u_input.a.x, 2203u, var_0.x, var_0.x), vec4<i32>(-1i, var_1.c, var_1.c, var_1.c), var_1.b.x), vec2<i32>(1i, var_1.c)).a.x), vec2<i32>(func_5(Struct_4(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a.x), vec4<i32>(var_1.c, var_1.c, 4739i, var_1.c), var_1.b.x), Struct_2(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 74419u), Struct_1(vec2<bool>(true, false), var_1.b, 32864i), var_1.c, vec4<u32>(0u, u_input.a.x, 32678u, var_0.x), var_0.x), vec4<u32>(1u, u_input.a.x, 1u, 0u), var_1.c).b.x, _wgslsmith_mult_i32(var_1.c, 0i))).a.x, _wgslsmith_f_op_f32(abs(382f)) >= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1054f, -415f), _wgslsmith_f_op_f32(f32(-1f) * -954f))), any(select(vec4<bool>(var_1.b.x, true, var_1.b.x, true), select(vec4<bool>(var_1.a.x, true, var_1.b.x, var_1.a.x), var_1.b, var_1.b), var_1.a.x)), !var_1.a.x), -43137i);
    var var_3 = var_0;
    return vec4<u32>(27476u, u_input.a.x, firstTrailingBit(0u ^ var_3.x), 37042u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = -300f;
    let var_2 = Struct_3(~(~firstTrailingBit(vec4<u32>(41287u, 4294967295u, u_input.a.x, 4294967295u))) >> ((~func_1() << (~vec4<u32>(49080u, 41427u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a.x);
    let var_3 = var_2;
    let var_4 = func_1();
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(var_1, -1441f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(var_1, 271f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, var_1))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(820f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(ceil(2014f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 215f) - vec2<f32>(var_1, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 35140i, 32702i, 1i), vec4<i32>(var_0, 15395i, var_0, var_0) >> (vec4<u32>(var_2.a.x, u_input.a.x, var_2.b, 45258u) % vec4<u32>(32u))) ^ abs(vec4<i32>(-34484i, -35120i, 26074i, 682i))), vec3<i32>(_wgslsmith_mod_i32(-(~0i), _wgslsmith_add_i32(var_0, ~(-2147483647i))), 0i, var_0), u_input.a, ~(i32(-1i) * -abs(2147483647i)), -(-(vec2<i32>(var_0, -50010i) << (vec2<u32>(u_input.a.x, 42272u) % vec2<u32>(32u))) << (firstLeadingBit(~vec2<u32>(0u, var_4.x)) % vec2<u32>(32u))));
}

