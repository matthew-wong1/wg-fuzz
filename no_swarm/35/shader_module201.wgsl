struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = true;
    var_0 = (_wgslsmith_clamp_i32(_wgslsmith_div_i32(i32(-1i) * -11770i, _wgslsmith_clamp_i32(u_input.b.x, -34095i, u_input.b.x)), u_input.b.x, u_input.b.x) > -u_input.b.x) & !(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, arg_3.b.b.x), vec3<u32>(4294967295u, 0u, 8152u)) < arg_0.c);
    var_0 = !any(select(!select(vec3<bool>(true, false, arg_3.a.a.x), vec3<bool>(true, arg_0.a.x, true), vec3<bool>(arg_2.b, false, false)), select(!vec3<bool>(arg_0.a.x, true, true), select(vec3<bool>(arg_2.b, arg_2.b, arg_3.b.a.x), vec3<bool>(arg_0.a.x, false, true), true), all(vec3<bool>(arg_0.a.x, true, true))), select(vec3<bool>(false, true, false), select(vec3<bool>(false, arg_0.a.x, arg_3.a.a.x), vec3<bool>(arg_3.b.a.x, arg_2.a.a.x, arg_3.b.a.x), vec3<bool>(arg_2.b, true, arg_0.a.x)), !vec3<bool>(false, true, arg_3.a.a.x))));
    var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_div_u32(arg_3.a.b.x, arg_2.a.b.x)), 15938u) >= (0u ^ _wgslsmith_mult_u32(arg_3.a.b.x, 50732u & max(u_input.a.x, 1u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2181f * 641f) - _wgslsmith_f_op_f32(arg_1 + -247f)))));
    return select(!select(select(vec2<bool>(arg_2.b, true), !arg_2.a.a, true), !vec2<bool>(arg_0.a.x, false), select(!vec2<bool>(arg_0.a.x, arg_3.b.a.x), !vec2<bool>(arg_2.a.a.x, true), select(vec2<bool>(false, arg_3.b.a.x), arg_0.a, arg_2.a.a))), select(select(select(!vec2<bool>(arg_2.a.a.x, true), select(arg_3.b.a, arg_0.a, false), select(arg_3.a.a, vec2<bool>(arg_3.a.a.x, true), true)), vec2<bool>(arg_0.c > arg_0.b.x, all(vec3<bool>(arg_2.b, false, arg_2.a.a.x))), true), select(vec2<bool>(any(vec4<bool>(false, arg_0.a.x, arg_2.a.a.x, false)), false), select(vec2<bool>(false, arg_2.b), select(arg_3.b.a, arg_2.a.a, false), arg_0.a), arg_3.b.a.x), arg_2.d < arg_3.b.b.x), arg_2.a.a);
}

fn func_2(arg_0: Struct_5) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(Struct_1(func_3(arg_0.b.a, arg_0.b.c, Struct_4(Struct_1(arg_0.b.a.a, arg_0.b.a.b, 12914u), arg_0.b.b, -1000f, 1u), Struct_2(Struct_1(arg_0.b.a.a, u_input.a, u_input.a.x), arg_0.b.a)), vec2<u32>(4294967295u, 52605u), 4294967295u), arg_0.b.a), select(!vec4<bool>(true, arg_0.b.a.a.x, arg_0.b.a.a.x | true, true), !(!(!vec4<bool>(arg_0.b.a.a.x, false, arg_0.b.b, true))), false), arg_0.b.a, Struct_1(select(vec2<bool>(true, any(vec4<bool>(false, arg_0.b.a.a.x, false, arg_0.b.b))), vec2<bool>(any(vec3<bool>(false, arg_0.b.b, arg_0.b.b)), arg_0.b.b), arg_0.b.a.a), vec2<u32>((u_input.a.x >> (arg_0.b.a.c % 32u)) << (~arg_0.b.d % 32u), 1u), 111941u & (arg_0.b.a.c | ~1231u)), _wgslsmith_f_op_f32(abs(701f)) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.b.c)))));
    var var_1 = u_input.a.x;
    return var_0.a;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-785f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 - 374f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0), !func_2(Struct_5(vec4<i32>(arg_2.x, u_input.b.x, arg_2.x, arg_2.x), Struct_4(Struct_1(arg_3.b.a, u_input.a, 4294967295u), arg_3.a.a.x, arg_0, 0u), u_input.b.x)).b.a.x))), -840f));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(arg_0 - arg_0)))), _wgslsmith_div_f32(-424f, _wgslsmith_f_op_f32(step(arg_0, arg_0))), !func_3(func_2(Struct_5(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, arg_2.x), Struct_4(Struct_1(arg_3.b.a, vec2<u32>(arg_3.a.b.x, u_input.a.x), arg_1.x), arg_3.a.a.x, arg_0, arg_3.b.c), 1i)).b, 1f, Struct_4(func_2(Struct_5(vec4<i32>(arg_2.x, 1534i, 0i, u_input.b.x), Struct_4(Struct_1(vec2<bool>(false, true), vec2<u32>(0u, arg_3.b.b.x), arg_3.a.b.x), true, 286f, 42029u), 2147483647i)).b, all(vec3<bool>(false, true, arg_3.a.a.x)), _wgslsmith_f_op_f32(-var_0), 16825u), Struct_2(func_2(Struct_5(vec4<i32>(arg_2.x, 0i, arg_2.x, arg_2.x), Struct_4(Struct_1(vec2<bool>(false, false), vec2<u32>(u_input.c.x, var_1), u_input.c.x), arg_3.b.a.x, 1332f, 62751u), arg_2.x)).a, arg_3.a)).x));
    let var_3 = Struct_5(u_input.b, Struct_4(Struct_1(!vec2<bool>(arg_3.b.a.x, arg_3.a.a.x), vec2<u32>(_wgslsmith_mod_u32(35580u, arg_1.x), abs(35975u)), 0u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(789f, 1080f, arg_3.b.a.x)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_0), -501f), arg_0, var_1), _wgslsmith_dot_vec4_i32(firstLeadingBit(-arg_2), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, -23363i, 2147483647i, -57033i), u_input.b)));
    var var_4 = Struct_3(arg_3, vec4<bool>(!var_3.b.a.a.x, !arg_3.a.a.x, false, all(!vec3<bool>(arg_3.b.a.x, var_3.b.b, var_3.b.b))), arg_3.b, func_2(var_3).b, true);
    return vec4<i32>(-19536i, arg_2.x ^ 1i, ~2147483647i, arg_2.x);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> vec4<bool> {
    var var_0 = Struct_5(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, 43029i, -2147483647i, u_input.b.x), func_4(arg_2.c, select(vec2<u32>(1u, 44138u), vec2<u32>(4294967295u, u_input.c.x), true), u_input.b, func_2(Struct_5(vec4<i32>(38574i, u_input.b.x, u_input.b.x, u_input.b.x), arg_2, 9373i)))), u_input.b), arg_2, u_input.b.x);
    var_0 = Struct_5(-(vec4<i32>(-1i) * -var_0.a), Struct_4(Struct_1(var_0.b.a.a, _wgslsmith_mult_vec2_u32(var_0.b.a.b, var_0.b.a.b << (u_input.a % vec2<u32>(32u))), 1u), !(!func_2(Struct_5(vec4<i32>(var_0.c, 2147483647i, 2648i, u_input.b.x), var_0.b, u_input.b.x)).a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(37853u, 1u), u_input.a) >> (arg_0 % 32u), ~_wgslsmith_sub_u32(var_0.b.d, var_0.b.d))), firstLeadingBit(i32(-1i) * -u_input.b.x));
    let var_1 = var_0.a.xwy;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(902f, 587f, arg_2.c), vec3<f32>(-1056f, -2039f, -363f), arg_1.b.a.x)) - vec3<f32>(493f, 452f, -340f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.c, 1546f, 497f), vec3<f32>(var_0.b.c, var_0.b.c, arg_2.c))))))));
    let var_3 = select(_wgslsmith_div_vec4_i32(select(vec4<i32>(~u_input.b.x, countOneBits(u_input.b.x), var_1.x, func_4(var_0.b.c, vec2<u32>(arg_1.a.b.x, 1u), u_input.b, Struct_2(arg_2.a, Struct_1(arg_1.b.a, var_0.b.a.b, 1u))).x), u_input.b, true), u_input.b), vec4<i32>(_wgslsmith_dot_vec4_i32(-var_0.a ^ u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 40977i, 1i, 38610i) | var_0.a, vec4<i32>(63832i, -1i, var_1.x, 0i))), -22721i, u_input.b.x, 1i), !func_3(Struct_1(!var_0.b.a.a, arg_2.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_2.a.b.x, var_0.b.d, arg_2.a.b.x), vec4<u32>(69028u, 0u, arg_1.b.c, arg_0))), var_0.b.c, Struct_4(func_2(Struct_5(vec4<i32>(u_input.b.x, u_input.b.x, 44762i, -19421i), var_0.b, 60963i)).b, true, _wgslsmith_f_op_f32(sign(arg_2.c)), u_input.c.x), func_2(Struct_5(u_input.b, arg_2, 5838i))).x);
    return vec4<bool>(select((333f != arg_2.c) || (true != arg_3), true, !(true != !arg_3)), any(!(!vec2<bool>(arg_3, var_0.b.a.a.x))), abs(41603i) == _wgslsmith_sub_i32(var_0.a.x | -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.x), var_3.xy) << (u_input.a.x % 32u)), arg_2.b != any(var_0.b.a.a));
}

fn func_5(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = Struct_5(countOneBits(~_wgslsmith_add_vec4_i32(abs(u_input.b), ~vec4<i32>(-32584i, -14568i, -15644i, u_input.b.x))), Struct_4(func_2(Struct_5(countOneBits(vec4<i32>(1i, u_input.b.x, u_input.b.x, 1i)), Struct_4(Struct_1(arg_0, u_input.a, u_input.a.x), false, -202f, 22463u), max(-1i, u_input.b.x))).a, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -158f))) - _wgslsmith_f_op_f32(max(-740f, -756f))), ~1u), -u_input.b.x);
    var_0 = Struct_5(select(firstLeadingBit(u_input.b), var_0.a, any(select(vec3<bool>(var_0.b.b, var_0.b.b, arg_0.x), select(vec3<bool>(var_0.b.a.a.x, var_0.b.a.a.x, true), vec3<bool>(var_0.b.b, var_0.b.b, false), true), vec3<bool>(arg_0.x, true, arg_0.x)))), var_0.b, _wgslsmith_clamp_i32(var_0.a.x, var_0.c, ~2147483647i | u_input.b.x));
    var var_1 = var_0.b;
    let var_2 = Struct_2(func_2(Struct_5(~u_input.b, var_0.b, select(1i, ~var_0.a.x, var_0.b.b))).a, Struct_1(var_0.b.a.a, vec2<u32>(var_1.d ^ u_input.c.x, ~65157u) ^ func_2(Struct_5(var_0.a, var_0.b, 1180i)).a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.b.d, var_0.b.a.c, ~53824u), vec3<u32>(~var_0.b.a.b.x, 0u, var_0.b.a.b.x))));
    let var_3 = 0u;
    return Struct_4(Struct_1(arg_0, func_2(Struct_5(u_input.b, var_0.b, firstLeadingBit(var_0.a.x))).b.b, u_input.a.x), any(!select(vec3<bool>(true, false, var_2.b.a.x), select(vec3<bool>(false, var_1.a.a.x, arg_0.x), vec3<bool>(true, var_2.a.a.x, false), var_0.b.b), var_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.c)))), var_2.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = 1u;
    let var_2 = func_5(select(vec2<bool>(all(func_1(u_input.a.x, Struct_2(Struct_1(vec2<bool>(var_0.x, var_0.x), u_input.a, 28760u), Struct_1(vec2<bool>(var_0.x, var_0.x), vec2<u32>(u_input.c.x, 66124u), u_input.c.x)), Struct_4(Struct_1(vec2<bool>(var_0.x, false), u_input.a, 35094u), var_0.x, -224f, 35742u), false)), !any(vec2<bool>(var_0.x, false))), vec2<bool>(var_0.x, all(vec2<bool>(true, var_0.x)) || !var_0.x), vec2<bool>(var_0.x, var_0.x)));
    let var_3 = 1u;
    let var_4 = Struct_5(~vec4<i32>(u_input.b.x | max(u_input.b.x, 0i), ~_wgslsmith_add_i32(u_input.b.x, -5224i), _wgslsmith_dot_vec3_i32(u_input.b.yxy & vec3<i32>(u_input.b.x, 60064i, 1i), u_input.b.zzz), u_input.b.x & firstTrailingBit(-17816i)), Struct_4(Struct_1(vec2<bool>(var_0.x, false), vec2<u32>(0u, min(7729u, u_input.a.x)), _wgslsmith_add_u32(~26679u, 381u)), !(_wgslsmith_add_i32(u_input.b.x, 1i) == 1i), -430f, ~var_3), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.c, 1890f, _wgslsmith_f_op_f32(-var_4.b.c)));
}

