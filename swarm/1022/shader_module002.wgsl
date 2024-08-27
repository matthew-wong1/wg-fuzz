struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = ~u_input.b.xy;
    let var_1 = Struct_5(select(vec4<bool>(select(true, true, u_input.b.x < arg_0.c.x), any(vec3<bool>(true, true, false)), true, true), vec4<bool>(true, true, select(u_input.c <= 26702i, true, true), true), true), Struct_4(Struct_2(arg_1.b.x, arg_0.a.b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1830f, arg_1.b.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(440f, -381f) + vec2<f32>(683f, 682f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a.b)))))), arg_0.c));
    var var_2 = 1u;
    var var_3 = (u_input.c & _wgslsmith_sub_i32(u_input.c, 1i)) << (firstLeadingBit(select(min(_wgslsmith_div_u32(arg_1.c.x, u_input.b.x), arg_0.c.x), 1u, all(!var_1.a))) % 32u);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -708f), -1218f, -650f, 357f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 561f, _wgslsmith_f_op_f32(541f + 370f), _wgslsmith_f_op_f32(var_1.b.b.x * var_1.b.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(500f, arg_0.b.x, var_1.b.a.b.x, -592f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-649f, arg_0.a.b.x, arg_0.a.a, arg_1.b.x), vec4<f32>(1000f, var_1.b.b.x, 226f, 1000f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_0.b.x, -1200f, var_1.b.a.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.b.x, 1000f, arg_1.a.a, -1411f) * vec4<f32>(-1147f, arg_1.a.b.x, arg_0.b.x, arg_1.b.x))))));
    return !vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.a))) <= var_1.b.b.x, var_1.a.x, !(var_1.b.a.a == var_4.x));
}

fn func_4(arg_0: vec3<bool>) -> f32 {
    let var_0 = 2147483647i;
    global0 = _wgslsmith_f_op_f32(round(-1475f));
    global0 = -1154f;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2251f)), _wgslsmith_f_op_f32(-262f + 816f))))))));
    let var_1 = arg_0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1229f * 549f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-401f)) + 852f), -603f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(776f)), _wgslsmith_f_op_f32(ceil(-710f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-735f, -654f, false))))))));
}

fn func_2() -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1048f), -129f)), -597f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) - 747f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1448f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1457f, 1000f)))))));
    let var_1 = (vec2<i32>(~u_input.c, ~(~u_input.c)) ^ firstTrailingBit(vec2<i32>(2147483647i, i32(-1i) * -1i))) | _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(max(vec2<i32>(-14563i, u_input.c) << (u_input.b.zy % vec2<u32>(32u)), vec2<i32>(-1i, 21623i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(20068i, 2147483647i))), firstTrailingBit(countOneBits(vec2<i32>(-39751i, 2147483647i))) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(44017u, 0u)), vec2<u32>(0u, 1u), vec2<u32>(26246u, 0u)) % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(select(func_3(Struct_4(Struct_2(var_0.x, vec2<f32>(-566f, 575f)), var_0, vec4<u32>(69887u, 1u, u_input.b.x, 1u)), Struct_4(Struct_2(1000f, var_0), var_0, vec4<u32>(70997u, 88505u, u_input.a.x, u_input.a.x))), select(func_3(Struct_4(Struct_2(var_0.x, var_0), vec2<f32>(var_0.x, var_0.x), vec4<u32>(u_input.b.x, 37974u, u_input.b.x, 41375u)), Struct_4(Struct_2(483f, var_0), var_0, vec4<u32>(44432u, u_input.a.x, u_input.a.x, u_input.b.x))), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false))), all(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1069f)) * _wgslsmith_f_op_f32(max(var_0.x, var_0.x)))))), false));
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2006f), vec2<f32>(589f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, -492f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-297f * 234f))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(-763f + var_0.x)))), vec4<u32>(23938u, u_input.b.x, firstLeadingBit(23427u), u_input.b.x ^ 5220u) | ((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b.x, u_input.b.x, 15352u, u_input.a.x)) | ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x)) >> ((firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 67289u)) ^ vec4<u32>(u_input.a.x, 1u, 15074u, u_input.a.x)) % vec4<u32>(32u))));
    global0 = _wgslsmith_div_f32(1000f, 1023f);
    return 646f;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = arg_2.b.x;
    var var_0 = Struct_4(arg_2, _wgslsmith_f_op_vec2_f32(-arg_2.b), ~vec4<u32>(u_input.b.x, u_input.b.x, _wgslsmith_add_u32(0u, u_input.a.x), 27423u));
    global0 = var_0.a.b.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.a)));
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(-1195f * var_0.b.x)))), _wgslsmith_f_op_vec2_f32(-var_0.a.b)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a)) * _wgslsmith_f_op_f32(trunc(1190f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-590f + arg_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b)))), abs(abs(~var_0.c)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_4(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + 166f) + _wgslsmith_f_op_f32(min(var_0.b.x, -300f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.b.x, arg_2.b.x))))));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = func_5(u_input.b, vec3<i32>(-13483i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(25976i, u_input.c, u_input.c, u_input.c)), vec4<i32>(0i, -25086i, u_input.c, u_input.c) | vec4<i32>(-21761i, 1i, u_input.c, u_input.c)), ~(-7703i) >> (_wgslsmith_add_u32(u_input.b.x, 979u) % 32u)) | vec3<i32>(14638i, select(u_input.c, 1i, arg_0.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 2925u, u_input.b.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 7390u, 1u)) % 32u), u_input.c), Struct_2(-2514f, vec2<f32>(_wgslsmith_f_op_f32(func_2()), -2299f)), 401f);
    let var_1 = all(vec3<bool>(any(func_3(Struct_4(Struct_2(var_0.a.x, var_0.a.zz), var_0.a.zy, vec4<u32>(u_input.a.x, u_input.a.x, 0u, 24129u)), Struct_4(Struct_2(var_0.a.x, vec2<f32>(var_0.a.x, 401f)), vec2<f32>(248f, var_0.a.x), vec4<u32>(u_input.b.x, 1u, 0u, u_input.a.x)))), 4294967295u < _wgslsmith_clamp_u32(~78923u, u_input.a.x, u_input.a.x), u_input.c < u_input.c));
    let var_2 = -_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(max(30841i, u_input.c), u_input.c), ~vec2<i32>(25910i, 32816i) << (u_input.a.yz % vec2<u32>(32u))), countOneBits(~(~vec2<i32>(2276i, 0i))), vec2<i32>(0i, ~(-7159i)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), var_0.a.yy);
    var_3 = Struct_2(-171f, func_5(~(~u_input.b) | u_input.b, _wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, 12943i, var_2.x), vec3<i32>(-33040i, -12717i, u_input.c))), vec3<i32>(var_2.x, i32(-1i) * -2147483647i, var_2.x)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2276f) - var_3.b.x), var_3.b), var_3.a).a.xy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_1(vec2<bool>(false, abs(u_input.c) > _wgslsmith_dot_vec4_i32(vec4<i32>(25556i, u_input.c, u_input.c, 31314i), vec4<i32>(u_input.c, -2147483647i, -1i, 1i)))));
    var var_0 = select(u_input.c, -11093i, false && !(-1i <= max(21620i, u_input.c)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-563f, 1750f)) - -222f) + _wgslsmith_f_op_f32(func_2()))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1092f * -1515f) - _wgslsmith_f_op_f32(f32(-1f) * -648f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(f32(-1f) * -807f))), _wgslsmith_div_f32(func_5(~u_input.b, -vec3<i32>(u_input.c, u_input.c, -2944i), Struct_2(-287f, vec2<f32>(-875f, -732f)), -339f).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1450f * 627f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * -1322f), func_5(~vec3<u32>(13484u, 1u, u_input.b.x), vec3<i32>(u_input.c, u_input.c, -273i), Struct_2(-720f, vec2<f32>(-865f, -971f)), _wgslsmith_f_op_f32(select(-657f, -581f, true))).a.x)));
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x) - var_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.zx + var_1.a.yy)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x * 828f), 1000f), var_1.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.zy) * _wgslsmith_f_op_vec2_f32(min(var_1.a.xx, var_1.a.zx))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-698f, var_1.a.x) + var_1.a.yz)))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(max(u_input.b.x, u_input.a.x), firstTrailingBit(u_input.a.x)), ~countOneBits(u_input.a.x)), ~1u, 65331u, _wgslsmith_add_u32(u_input.a.x, ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32((vec3<i32>(-1i, u_input.c, -24602i) ^ vec3<i32>(u_input.c, -16667i, u_input.c)) & vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<i32>(_wgslsmith_clamp_i32(1i, u_input.c, u_input.c), 29830i, u_input.c)), ~u_input.c, _wgslsmith_mult_i32(-1i << (_wgslsmith_mod_u32(var_2.c.x, 51964u) % 32u), -u_input.c)), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(round(var_1.a.x)), u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.a)) * var_1.a)));
}

