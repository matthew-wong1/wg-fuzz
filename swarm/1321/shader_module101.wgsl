struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_5(select(select(vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), vec2<bool>(true, true), true), -487f, 28850u);
    var_0 = Struct_5(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1268f, 1f))), ~(~var_0.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(639f, var_0.b, 1000f)))))))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-373f, -702f, -676f))));
    var_0 = Struct_5(!(!var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1024f) * -590f), ~(~_wgslsmith_sub_u32(~var_0.c, ~var_0.c)));
    var_0 = Struct_5(var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-584f)))))), abs(~(~(~var_0.c))));
    return 262f;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_1.x));
    var var_1 = select(vec3<bool>(!(any(vec3<bool>(arg_0, arg_0, true)) && !arg_0), !all(!vec3<bool>(arg_0, arg_0, arg_0)), !any(!vec3<bool>(arg_0, false, arg_0))), select(vec3<bool>(arg_1.x < _wgslsmith_f_op_f32(f32(-1f) * -761f), arg_0, any(vec2<bool>(arg_0, false)) || arg_0), select(vec3<bool>(any(vec3<bool>(arg_0, false, arg_0)), arg_0, arg_0 || arg_0), !select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, true, arg_0)), 1u == _wgslsmith_dot_vec4_u32(vec4<u32>(640u, 0u, 1u, 40990u), vec4<u32>(17485u, 38204u, 86545u, 82746u))), u_input.a > -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 44616i))), !select(vec3<bool>(true, 978f != arg_1.x, all(vec2<bool>(arg_0, arg_0))), vec3<bool>(arg_0, 2147483647i < u_input.a, arg_1.x == 477f), arg_0));
    var var_2 = Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 958f)), _wgslsmith_f_op_f32(min(-148f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - -790f) * -1113f))), _wgslsmith_mult_vec3_u32(select(select(~vec3<u32>(6664u, 4217u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, var_1.x, arg_0)), ~vec3<u32>(15437u, 1u, 4294967295u), any(!vec3<bool>(var_1.x, false, var_1.x))), abs(min(vec3<u32>(0u, 26846u, 4294967295u), abs(vec3<u32>(1u, 1u, 69082u))))));
    var_2 = Struct_3((var_2.d.x | _wgslsmith_mod_u32(var_2.d.x, firstLeadingBit(var_2.d.x))) > var_2.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.x, 609f)))), _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.d.x, ~var_2.d.x, ~(~var_2.d.x)), _wgslsmith_mult_vec3_u32(var_2.d, vec3<u32>(var_2.d.x, 60829u, ~4294967295u))));
    let var_3 = arg_1.x;
    return Struct_3(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(-1181f - var_2.b))))), _wgslsmith_f_op_f32(-1617f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2140f + var_3))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 + var_3), _wgslsmith_f_op_f32(floor(836f))), var_2.d);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_i32(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(41145i, -1i, 9861i), select(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, arg_1.a)))), vec3<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(1i, u_input.a, 53883i) | vec3<i32>(u_input.a, u_input.a, u_input.a)), select(~vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.a, 1i, -2147483647i) << (vec3<u32>(67081u, 0u, arg_2) % vec3<u32>(32u)), select(vec3<bool>(false, true, arg_1.a), vec3<bool>(false, false, false), vec3<bool>(arg_1.a, true, false)))), _wgslsmith_mult_i32(select(u_input.a, -41920i, arg_1.a), u_input.a) >> (4294967295u % 32u), u_input.a));
    var_0 = ~vec3<i32>(var_0.x | firstTrailingBit(-var_0.x), _wgslsmith_clamp_i32(~var_0.x, u_input.a, u_input.a), u_input.a);
    var_0 = _wgslsmith_clamp_vec3_i32(-(abs(abs(vec3<i32>(26133i, 0i, -2147483647i))) & vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.a), var_0.yy), _wgslsmith_mult_i32(u_input.a, u_input.a))), _wgslsmith_div_vec3_i32(vec3<i32>(~_wgslsmith_div_i32(var_0.x, 2147483647i), firstLeadingBit(24956i), ~firstTrailingBit(39234i)), max(reverseBits(-vec3<i32>(-14203i, 12448i, var_0.x)), firstLeadingBit(vec3<i32>(1i, 6139i, u_input.a)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-12749i, abs(7785i), u_input.a), -vec3<i32>(-9669i, var_0.x, var_0.x) | vec3<i32>(-var_0.x, 15098i, u_input.a), -abs(vec3<i32>(-2147483647i, u_input.a, var_0.x)) << (~(~arg_1.d) % vec3<u32>(32u))));
    return Struct_1(abs(func_2(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))).d.xz), -1722i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = select(vec4<bool>(~_wgslsmith_sub_i32(6307i, arg_0.b) > _wgslsmith_sub_i32(arg_1.e, countOneBits(u_input.a)), true, ~select(11566i, 0i, true) != arg_1.e, any(vec2<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, true))))), select(vec4<bool>(true, _wgslsmith_sub_u32(1u, arg_1.d.a.x) >= _wgslsmith_sub_u32(120895u, arg_1.b), func_2(func_2(true, vec2<f32>(784f, arg_1.c.x)).a, _wgslsmith_f_op_vec2_f32(-arg_1.c)).a, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), any(vec4<bool>(false, false, true, ~20891i <= arg_0.b)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 116f) - _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(sign(-1252f))))));
    var var_2 = arg_0;
    let var_3 = reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_1.a, abs(vec3<i32>(1i, arg_0.b, 2147483647i)) >> (vec3<u32>(114228u, 1u, 107806u) % vec3<u32>(32u))), u_input.a, ~(-_wgslsmith_sub_i32(1i, 2147483647i)), 1i));
    var_2 = arg_0;
    return arg_1.d;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_5 {
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + -160f)), func_2(any(select(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_1.b)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.d.x, arg_1.d.x, 27627u, 26165u), vec4<u32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, 4294967295u) & vec4<u32>(109832u, arg_1.d.x, arg_1.d.x, 23392u)), ~reverseBits(1u))), Struct_2(vec3<i32>(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(39840i, -1i, -29648i), vec3<i32>(u_input.a, -19826i, u_input.a))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 54106i, 7376i), vec3<i32>(u_input.a, u_input.a, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -24829i, u_input.a), vec3<i32>(-9788i, u_input.a, u_input.a))), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 7491i), vec3<i32>(2147483647i, u_input.a, u_input.a)))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.x, 1u), ~arg_1.d.xz), 14123u | arg_1.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1290f, -1349f)))), Struct_1(arg_1.d.zx, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 10022i), vec4<i32>(33595i, 1i, -19571i, u_input.a)))), u_input.a >> (arg_1.d.x % 32u)), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.d.x, arg_1.d.x, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 42110u, arg_1.d.x, arg_1.d.x))), ~(~abs(vec4<u32>(arg_1.d.x, arg_1.d.x, 1u, arg_1.d.x)))));
    let var_1 = vec4<i32>(u_input.a, -(countOneBits(u_input.a) ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, var_0.b, 3730i), ~vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b))), abs(~(~1i)), _wgslsmith_div_i32(1i, -38795i));
    return Struct_5(select(vec2<bool>(true, 0u <= (arg_1.d.x | arg_1.d.x)), !arg_0.xz, arg_0.x), -933f, _wgslsmith_mod_u32(1u, var_0.a.x));
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: Struct_5, arg_3: Struct_5) -> vec2<bool> {
    let var_0 = Struct_3(func_2(arg_2.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.b, arg_2.b))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_2.b)))))).a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), arg_3.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1702f, 1000f), _wgslsmith_f_op_f32(select(-158f, arg_2.b, any(vec3<bool>(arg_2.a.x, false, arg_3.a.x)))), false)))), vec3<u32>(1u, 4294967295u, 6144u));
    let var_1 = var_0.d.xz;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1408f, _wgslsmith_f_op_f32(arg_2.b - arg_2.b), _wgslsmith_f_op_f32(-296f + _wgslsmith_f_op_f32(arg_3.b - 1955f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, arg_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, 558f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))), _wgslsmith_f_op_f32(func_2(false, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, arg_2.b)))).c - var_0.b))));
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(var_3.xw));
    return vec2<bool>(any(vec3<bool>(all(vec4<bool>(arg_2.a.x, false, arg_2.a.x, false)), all(vec3<bool>(true, arg_1, false)), ~122119u > firstLeadingBit(arg_3.c))), !(31188u <= func_5(Struct_1(var_1, u_input.a), Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.a), arg_2.c, vec2<f32>(var_2.x, var_3.x), Struct_1(var_1, u_input.a), u_input.a), 0u ^ var_1.x).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_6(~1u, false, func_1(vec3<bool>(true, true, -8978i <= u_input.a), Struct_3(false, -214f, _wgslsmith_f_op_f32(-621f * -719f), ~vec3<u32>(4294967295u, 0u, 1u))), Struct_5(vec2<bool>(true, true), 547f, ~min(0u, 143183u))), _wgslsmith_f_op_f32(f32(-1f) * -915f), 1u);
    let var_1 = vec3<i32>(~41234i, abs(~(~12574i << (func_5(Struct_1(vec2<u32>(var_0.c, 4294967295u), 0i), Struct_2(vec3<i32>(u_input.a, 0i, u_input.a), var_0.c, vec2<f32>(var_0.b, -504f), Struct_1(vec2<u32>(0u, 81435u), u_input.a), u_input.a), 0u).a.x % 32u))), func_4(_wgslsmith_f_op_f32(-646f + _wgslsmith_f_op_f32(-var_0.b)), Struct_3(var_0.a.x | var_0.a.x, _wgslsmith_f_op_f32(var_0.b * -1118f), _wgslsmith_f_op_f32(-var_0.b), countOneBits(vec3<u32>(var_0.c, var_0.c, var_0.c))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.c, 4294967295u, 0u), vec4<u32>(var_0.c, 37179u, 29467u, 1u))).b | u_input.a);
    var_0 = Struct_5(select(var_0.a, select(!var_0.a, var_0.a, !(!vec2<bool>(var_0.a.x, var_0.a.x))), !(!(!var_0.a))), var_0.b, 7810u);
    let var_2 = func_1(vec3<bool>(var_0.a.x, true, true), Struct_3(var_0.a.x, _wgslsmith_f_op_f32(537f + -2194f), var_0.b, ~reverseBits(func_2(false, vec2<f32>(var_0.b, var_0.b)).d)));
    var_0 = Struct_5(select(vec2<bool>(true, false), !(!func_6(var_0.c, true, Struct_5(var_0.a, 1576f, 0u), Struct_5(vec2<bool>(true, var_2.a.x), var_2.b, var_0.c))), vec2<bool>(false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), var_2.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_0.b, -1728f) - vec3<f32>(1000f, _wgslsmith_f_op_f32(step(541f, 819f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1255f))))));
    let var_4 = Struct_2(~(~(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 30281i, var_1.x))), 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-748f + var_2.b))))), func_5(Struct_1(vec2<u32>(func_5(Struct_1(vec2<u32>(35661u, 4294967295u), -5612i), Struct_2(vec3<i32>(-37106i, -42244i, u_input.a), var_0.c, vec2<f32>(var_2.b, var_0.b), Struct_1(vec2<u32>(var_2.c, var_2.c), u_input.a), var_1.x), 32514u).a.x, ~1u), func_4(_wgslsmith_f_op_f32(220f * 318f), Struct_3(true, -1867f, var_2.b, vec3<u32>(4294967295u, 102235u, var_0.c)), max(var_0.c, 31893u)).b), Struct_2(firstLeadingBit(vec3<i32>(-1i, 213i, 7188i)), var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b, 1558f), var_3.xy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-265f, 400f))), Struct_1(vec2<u32>(0u, var_0.c), 1i), var_1.x), 4294967295u), firstLeadingBit(_wgslsmith_add_i32(func_5(Struct_1(vec2<u32>(var_0.c, 0u), var_1.x), Struct_2(vec3<i32>(-19598i, var_1.x, -26654i), 0u, vec2<f32>(var_3.x, 772f), Struct_1(vec2<u32>(var_2.c, 0u), var_1.x), 1i), var_2.c >> (var_2.c % 32u)).b, _wgslsmith_add_i32(min(7344i, u_input.a), select(-29098i, 50641i, var_2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(170f, ~92704u);
}

