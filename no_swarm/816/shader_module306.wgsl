struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -384f))), -146f);
    var_0 = arg_0.d.xx;
    let var_1 = arg_0.e.wxw;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-675f * _wgslsmith_f_op_f32(trunc(arg_0.d.x)))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), true)))));
    var_0 = arg_0.d.zx;
    return arg_0;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.d);
    let var_1 = _wgslsmith_mod_i32(arg_3 ^ _wgslsmith_mod_i32(-11762i, 1i), 14015i);
    var var_2 = arg_2.b;
    let var_3 = arg_2;
    var_2 = max(var_3.e >> ((var_3.b >> (vec4<u32>(~1u, reverseBits(var_3.c), ~21450u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_2.e.x, arg_2.e.x, var_2.x), arg_2.b), vec4<u32>(47856u, 0u, 4294967295u, u_input.a)), firstTrailingBit(~u_input.a), 19154u, 4294967295u));
    return var_0.x;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-850f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 321f)), _wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec4<i32>(0i, 2147483647i, 0i, -20638i), func_2(Struct_1(1363f, vec4<u32>(13500u, u_input.a, 35756u, u_input.a), u_input.a, vec3<f32>(-1389f, -450f, -255f), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-1i, 5251i)))), 1384f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1392f, 486f, 663f, -876f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-314f, -208f, 869f, 1657f))))));
    let var_1 = func_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1909f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(0u, u_input.a, 1u, u_input.a)), vec4<u32>(1u, 4294967295u, u_input.a >> (85522u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 2111u, 34179u), vec4<u32>(u_input.a, 11287u, u_input.a, 5391u)))), ~(~1u), _wgslsmith_f_op_vec3_f32(round(var_0.zwx)), ~((vec4<u32>(27388u, u_input.a, u_input.a, 10373u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) & (vec4<u32>(u_input.a, u_input.a, 24963u, u_input.a) ^ vec4<u32>(u_input.a, 1u, 25594u, 8490u)))));
    var var_2 = abs(2147483647i);
    let var_3 = Struct_1(var_1.a, var_1.e, ~min(~var_1.e.x, _wgslsmith_mod_u32(40583u, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.d * var_1.d)))))), select(var_1.e, vec4<u32>(firstLeadingBit(82081u) << (abs(u_input.a) % 32u), var_1.c, var_1.c, var_1.c), any(vec2<bool>(any(vec4<bool>(false, true, false, true)), true))));
    var var_4 = func_2(Struct_1(-448f, ~vec4<u32>(var_1.e.x, 1u, _wgslsmith_sub_u32(u_input.a, 37524u), 0u), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.c, min(0u, var_1.b.x)), _wgslsmith_add_u32(~var_1.e.x, max(4294967295u, u_input.a))), func_2(var_3).d, vec4<u32>(~71645u ^ select(var_3.e.x, 56793u, true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.x, 4294967295u), var_3.e.xw), func_2(var_3).b.x, func_2(var_1).e.x)));
    return func_2(func_2(func_2(var_3)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = !select(vec3<bool>(arg_1, true, all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true)))), vec3<bool>(u_input.a > _wgslsmith_mod_u32(arg_2.x, arg_2.x), true, all(vec3<bool>(false, true, arg_1))), select(vec3<bool>(all(vec2<bool>(false, false)), true, false), select(!vec3<bool>(false, arg_1, true), vec3<bool>(true, arg_1, arg_1), arg_1), !vec3<bool>(false, arg_1, arg_1)));
    var var_1 = Struct_1(arg_0.a, ~vec4<u32>(u_input.a, firstLeadingBit(arg_0.c), ~(~57861u), arg_2.x), arg_0.e.x, vec3<f32>(arg_0.a, _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), arg_0.a)), arg_0.a), vec4<u32>(u_input.a, min(~4294967295u, 1u), 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(62827u, u_input.a, u_input.a), arg_0.b.wyx), vec3<u32>(24075u >> (u_input.a % 32u), arg_2.x, 24153u))));
    var_1 = arg_0;
    var_1 = Struct_1(-781f, vec4<u32>(~4294967295u, var_1.c, min(_wgslsmith_dot_vec3_u32(vec3<u32>(83216u, arg_0.e.x, 4762u), ~var_1.b.zxx), var_1.b.x), u_input.a), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -1000f, _wgslsmith_f_op_f32(sign(-1944f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(arg_0.d, vec3<f32>(arg_0.a, arg_0.a, arg_0.d.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, -1000f, 727f) * _wgslsmith_f_op_vec3_f32(arg_0.d * vec3<f32>(var_1.d.x, -1202f, 503f))))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 30780u, arg_0.e.x), _wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(72298u, 59281u, var_1.c, u_input.a))), vec4<u32>(0u, ~(~1u), ~reverseBits(0u), arg_2.x)));
    var var_2 = 1101f;
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d.x, -472f, arg_1)))))), select(~vec4<u32>(1u, func_1().b.x, var_1.b.x | u_input.a, countOneBits(9670u)), var_1.e, !arg_1), firstTrailingBit(4294967295u), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.d.x))), func_1().a, 1f), _wgslsmith_mod_vec4_u32(~var_1.b, vec4<u32>(4294967295u, _wgslsmith_add_u32(0u & arg_0.b.x, reverseBits(34468u)), ~(var_1.b.x ^ 0u), abs(~61666u))));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_mod_vec4_u32(~arg_1.b, arg_1.b ^ ~vec4<u32>(u_input.a, 4294967295u, 0u, 0u)), _wgslsmith_clamp_u32(42359u, u_input.a, _wgslsmith_clamp_u32(firstTrailingBit(u_input.a), u_input.a, arg_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d.x, 469f, 1171f), vec3<f32>(arg_1.d.x, -1482f, arg_1.d.x)) - arg_1.d)), arg_1.e), false, ~func_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.d.x), arg_1.b, 4630u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, 775f)), vec4<u32>(21696u, 30774u, u_input.a, u_input.a))).b.yy);
    var var_1 = _wgslsmith_div_vec2_i32(-vec2<i32>(~(-2147483647i), min(0i, -1i)), firstTrailingBit(vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, -2952i, 2147483647i)), -vec3<i32>(-981i, -2147483647i, 82636i)))));
    var_0 = arg_1;
    var_1 = ~(-_wgslsmith_add_vec2_i32(~firstTrailingBit(vec2<i32>(2147483647i, 516i)), -(~vec2<i32>(-2147483647i, 2147483647i))));
    var_1 = select(vec2<i32>(abs(min(-var_1.x, countOneBits(var_1.x))), ~_wgslsmith_mult_i32(var_1.x, var_1.x) | _wgslsmith_div_i32(21404i ^ var_1.x, ~var_1.x)), -min(vec2<i32>(0i, 1i), max(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -63780i), vec2<i32>(18466i, -1i)), select(vec2<i32>(-1023i, var_1.x), vec2<i32>(var_1.x, var_1.x), vec2<bool>(false, false)))), !(!(!arg_0 & (false || arg_0))));
    return Struct_1(func_4(arg_1, arg_0, var_0.e.yz >> (func_1().e.zz % vec2<u32>(32u))).d.x, select(func_2(arg_1).b, vec4<u32>(_wgslsmith_clamp_u32(func_2(arg_1).b.x, 0u, func_2(Struct_1(var_0.d.x, var_0.b, arg_1.e.x, vec3<f32>(955f, -1249f, -886f), arg_1.b)).b.x), _wgslsmith_div_u32(arg_1.b.x, var_0.b.x), 1u, u_input.a), select(vec4<bool>(false | arg_0, false, false | arg_0, arg_0), !vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(false, arg_0, var_0.d.x <= 124f, arg_0))), reverseBits(firstTrailingBit(func_1().e.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -792f), arg_1.a) * vec3<f32>(arg_1.d.x, var_0.a, -1496f)), ~(~var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5((all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))) | true) & true, func_4(func_1(), any(vec4<bool>(true, true, false, true)), (select(vec2<u32>(u_input.a, 1u), vec2<u32>(65414u, 16967u), vec2<bool>(false, true)) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a))) | (~vec2<u32>(43193u, 4294967295u) | min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)))));
    var var_1 = var_0.e;
    var_1 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(var_1.x, func_4(Struct_1(var_0.a, var_0.e, var_0.c, var_0.d, var_0.b), true, ~var_1.xw).e.x, ~1u << (var_1.x % 32u), var_0.b.x), vec4<u32>(min(43527u, u_input.a) | ~var_0.c, _wgslsmith_dot_vec2_u32(var_1.yz, ~vec2<u32>(1u, u_input.a)), ~0u | (var_0.c & 0u), ~0u << ((46861u >> (u_input.a % 32u)) % 32u)), !all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), ~vec4<u32>(u_input.a, _wgslsmith_mult_u32(~4294967295u, ~var_0.c), ~(~u_input.a), abs(4294967295u | u_input.a)));
    var_1 = ~func_4(var_0, any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), ~(~(~var_1.zz))).b;
    var var_2 = _wgslsmith_div_vec2_i32(~vec2<i32>(1i, i32(-1i) * -13638i), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-15465i, 0i, 32126i, 0i), vec4<i32>(-547i, -39250i, 2147483647i, 61077i)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -58321i, 1i), vec4<i32>(2147483647i, -1i, -1i, 15079i))), -2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(~41192i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 39897i) << (vec2<u32>(u_input.a, 36987u) % vec2<u32>(32u))), vec2<i32>(firstTrailingBit(2147483647i), max(2147483647i, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_1().a))) * _wgslsmith_div_f32(var_0.a, -1150f)));
}

