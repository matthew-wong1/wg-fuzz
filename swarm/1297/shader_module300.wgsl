struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(-u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(619f, -402f, -342f, _wgslsmith_f_op_f32(f32(-1f) * -874f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 623f, 2856f, 1029f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(461f, 727f, 121f, 215f) - vec4<f32>(123f, -172f, -2253f, -433f)))))), Struct_1(vec4<i32>(~(~u_input.b), abs(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.b, 2147483647i))), u_input.b, abs(~(-18237i))), select(vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), false), select(vec4<bool>(true, false, all(vec4<bool>(true, true, false, false)), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), any(vec3<bool>(true, true, true)))), false);
    let var_1 = Struct_3(true, var_0.c, true, ~firstTrailingBit(vec4<u32>(1u, ~4294967295u, 4294967295u, 0u)));
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * 700f))), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -391f))), var_0.b.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)));
    var_3 = var_0.b;
    return _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.a, min(firstTrailingBit(var_2), u_input.b), 1i), -max(firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, u_input.b)), ~(i32(-1i) * -1i)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_3(!all(vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(_wgslsmith_mod_i32(~u_input.a.x, 32646i), select(u_input.a.x, 2147483647i, false), min(max(u_input.b, u_input.a.x), func_3()), select(min(u_input.b, u_input.b), 1i, true)), select(vec4<bool>(true, true, true, all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false)), true)), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))), vec4<u32>(4294967295u, _wgslsmith_mod_u32(1u, 1u), 4294967295u, 9991u));
    var var_1 = ~abs(0u);
    let var_2 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 + 862f), _wgslsmith_f_op_f32(step(arg_0, arg_0)))), _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(-164f, arg_0)))), arg_0, 529f);
    var_0 = Struct_3(false, var_0.b, true, vec4<u32>(var_0.d.x, _wgslsmith_mod_u32(~var_0.d.x, 10317u >> (1u % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~var_0.d, var_0.d), var_0.d), abs(firstTrailingBit(firstTrailingBit(var_0.d.x)))));
    var var_3 = var_0.b;
    return Struct_3(select(true, true, ~var_0.d.x < max(_wgslsmith_dot_vec3_u32(var_0.d.yxx, var_0.d.xwy), firstTrailingBit(20783u))), var_0.b, var_3.c.x, ~(~var_0.d) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(1477u, 1u, 0u, 0u), vec4<u32>(var_0.d.x, var_0.d.x, 0u, var_0.d.x)) & (select(var_0.d, vec4<u32>(var_0.d.x, 4294967295u, 104905u, 1u), false) ^ var_0.d)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    var var_0 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))) < arg_2, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))))).b.c.x, !(!(!(!arg_0.a))));
    let var_1 = arg_0.c;
    var_0 = false;
    return Struct_2(~(-2147483647i) | (_wgslsmith_mult_i32(arg_1.b.a.x << (4294967295u % 32u), arg_0.b.a.x & 1i) << (firstLeadingBit(select(arg_0.d.x, arg_0.d.x, arg_1.a)) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-472f, -893f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, arg_2)) + -602f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), -617f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) * _wgslsmith_f_op_f32(select(893f, -1000f, arg_1.a))))), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f), -830f) + _wgslsmith_f_op_f32(sign(-157f)))).b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))) <= _wgslsmith_f_op_f32(arg_2 * -2134f));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = arg_0.c;
    var var_1 = arg_1.d.x;
    let var_2 = _wgslsmith_div_i32(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, u_input.a.x), _wgslsmith_mod_i32(var_0.a.x, -3005i)), var_0.a.x) != ~abs(func_3());
    var_1 = _wgslsmith_add_u32(arg_1.d.x, ~max(_wgslsmith_add_u32(arg_1.d.x, arg_1.d.x), _wgslsmith_mult_u32(arg_1.d.x, arg_1.d.x)) << (0u % 32u));
    let var_3 = arg_1;
    return ~(~(vec3<u32>(arg_1.d.x, 0u, 1u) & arg_1.d.yzw) ^ vec3<u32>(min(arg_1.d.x, arg_1.d.x) << (~arg_1.d.x % 32u), ~select(arg_1.d.x, arg_1.d.x, var_0.c.x), 1619u));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = max(~(~(~1058u)), _wgslsmith_dot_vec3_u32(func_5(func_4(Struct_3(false, Struct_1(vec4<i32>(-2147483647i, 1i, -75707i, 0i), vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(false, true, false, arg_0.x)), true, vec4<u32>(37056u, 21857u, 6220u, 20873u)), func_2(-429f), _wgslsmith_f_op_f32(f32(-1f) * -399f)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -993f))), countOneBits(abs(vec3<u32>(1u, 1u, 1u)))));
    var var_1 = vec4<bool>(arg_0.x, true, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1383f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(912f, -2362f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f - _wgslsmith_f_op_f32(round(1615f)))));
    let var_2 = vec3<i32>(1i, 1i, _wgslsmith_mod_i32(-13248i, u_input.a.x ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, u_input.b), _wgslsmith_mult_i32(-1i, u_input.a.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(func_4(func_2(757f), Struct_3(arg_0.x, Struct_1(vec4<i32>(var_2.x, u_input.b, -2147483647i, 1i), vec4<bool>(true, var_1.x, false, arg_0.x), vec4<bool>(arg_0.x, true, true, true)), true, vec4<u32>(var_0, var_0, var_0, 29407u)), _wgslsmith_f_op_f32(-1646f - -523f)).b.x, -510f, func_4(func_2(743f), Struct_3(arg_0.x, Struct_1(vec4<i32>(u_input.b, u_input.b, var_2.x, 0i), vec4<bool>(arg_0.x, true, false, false), vec4<bool>(true, var_1.x, var_1.x, true)), true, vec4<u32>(var_0, 0u, 14818u, 18725u)), 1129f).b.x, -888f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-905f, -830f, -1000f, -393f)))))), func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f))), Struct_3(true, Struct_1(vec4<i32>(var_2.x, var_2.x, 7275i, 0i), func_4(Struct_3(arg_0.x, Struct_1(vec4<i32>(u_input.b, var_2.x, var_2.x, -2147483647i), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), arg_0.x, vec4<u32>(var_0, 57878u, 88513u, 68u)), Struct_3(true, Struct_1(vec4<i32>(-1i, var_2.x, 31690i, u_input.a.x), vec4<bool>(var_1.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, var_1.x, arg_0.x)), false, vec4<u32>(var_0, 0u, var_0, 32742u)), 510f).c.b, vec4<bool>(arg_0.x, true, true, var_1.x)), true == !arg_0.x, vec4<u32>(18542u, 4294967295u, var_0, ~25058u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-500f, _wgslsmith_f_op_f32(trunc(1441f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)))).b, vec4<bool>(true, true, any(vec2<bool>(true, true)), true)));
    var_1 = vec4<bool>(true, all(vec2<bool>(false, arg_0.x || all(vec2<bool>(var_1.x, false)))), select(all(vec3<bool>(false, var_1.x, true)), false, false), var_1.x);
    return u_input.b;
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = ~vec2<i32>(~arg_1.b.a.x, abs(-_wgslsmith_mod_i32(1i, -1i)));
    var var_1 = -arg_1.b.a;
    var_1 = _wgslsmith_add_vec4_i32(func_4(arg_1, func_2(_wgslsmith_f_op_f32(select(arg_3.x, 2092f, arg_1.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_4(arg_1, Struct_3(true, Struct_1(arg_1.b.a, vec4<bool>(false, true, arg_1.b.c.x, false), arg_1.b.b), true, arg_1.d), 543f).b.x)))).c.a, reverseBits(vec4<i32>(_wgslsmith_div_i32(reverseBits(-1i), _wgslsmith_mult_i32(1i, -1i)), var_1.x, firstTrailingBit(var_1.x), min(arg_1.b.a.x, var_1.x) | abs(arg_1.b.a.x))));
    var_1 = arg_1.b.a >> (select(firstTrailingBit(max(vec4<u32>(arg_0, 11492u, 40294u, 5556u), vec4<u32>(24394u, 41169u, arg_1.d.x, arg_2.x))), ~countOneBits(vec4<u32>(13399u, 0u, 37939u, arg_2.x)), select(func_4(Struct_3(arg_1.b.c.x, Struct_1(arg_1.b.a, vec4<bool>(true, true, true, arg_1.b.b.x), arg_1.b.c), arg_1.a, arg_1.d), func_2(755f), _wgslsmith_f_op_f32(ceil(arg_3.x))).c.c, arg_1.b.c, !select(vec4<bool>(true, arg_1.b.c.x, false, false), arg_1.b.c, arg_1.b.b))) % vec4<u32>(32u));
    var_1 = -vec4<i32>(2147483647i, -_wgslsmith_mult_i32(var_1.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_div_i32(8640i, max(u_input.a.x, 4381i) & abs(-19804i)), 0i);
    return Struct_2(var_0.x | func_3(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(999f, 340f, arg_3.x, 274f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(605f, -204f, -1318f, arg_3.x)))), vec4<f32>(484f, _wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1091f, 260f) - 1868f), 366f)), Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 1i, 61581i, u_input.b), min(arg_1.b.a, arg_1.b.a)), arg_1.b.a), arg_1.b.c, arg_1.b.c), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(1u, Struct_3(all(vec2<bool>(any(vec2<bool>(false, true)), false)), Struct_1(vec4<i32>(min(u_input.b, -1i), func_1(vec2<bool>(true, true)), func_2(338f).b.a.x, u_input.b), !func_4(Struct_3(true, Struct_1(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), true, vec4<u32>(1u, 242u, 0u, 97366u)), Struct_3(false, Struct_1(vec4<i32>(u_input.b, -1i, u_input.a.x, -1i), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), false, vec4<u32>(18653u, 107435u, 54166u, 4294967295u)), 1576f).c.b, vec4<bool>(true, true, true, true)), !(!(u_input.b != u_input.b)), vec4<u32>(0u, abs(57124u), ~1u, ~func_5(Struct_2(-1i, vec4<f32>(-1000f, 1640f, -1598f, 1771f), Struct_1(vec4<i32>(u_input.a.x, -1138i, -1i, u_input.a.x), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), true), Struct_3(false, Struct_1(vec4<i32>(32701i, u_input.a.x, 27955i, u_input.a.x), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), false, vec4<u32>(98697u, 4294967295u, 0u, 4294967295u))).x)), vec3<u32>(~_wgslsmith_mult_u32(0u, 4294967295u), ~_wgslsmith_add_u32(87088u, 5445u), _wgslsmith_sub_u32(1u, 1u)) << ((_wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, 0u, 31433u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u))) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 3332u, 0u), vec3<u32>(1u, 53080u, 21453u), vec3<u32>(1u, 4294967295u, 33672u))) % vec3<u32>(32u)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(select(405f, _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(722f, -716f)), true))));
    var_0 = func_6(29510u, func_2(_wgslsmith_f_op_f32(f32(-1f) * -943f)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(44958u, 1u, 1u), vec3<u32>(77775u, 43148u, 32396u), vec3<u32>(1u, 1u, 1u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), var_0.b.zwx);
    var var_1 = _wgslsmith_clamp_u32(1u, 1u, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(5056u, 49244u, 4343u), vec3<u32>(1u, 55728u, 4294967295u))) >> (_wgslsmith_mult_u32(~abs(4294967295u), 82828u >> (_wgslsmith_clamp_u32(0u, 4294967295u, 0u) % 32u)) % 32u));
    var_1 = ~reverseBits(4294967295u);
    let var_2 = func_2(1599f);
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-472f)), 311f, -1296f, func_4(var_2, Struct_3(true, var_2.b, true, var_2.d), var_0.b.x).b.x) * vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.x)), var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -476f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1373f, _wgslsmith_f_op_f32(-var_0.b.x), -177f, 868f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(717f, 106f, 1928f, var_0.b.x) + vec4<f32>(var_0.b.x, 1000f, 768f, var_0.b.x)))), vec4<bool>(any(var_2.b.c.zyx), true, true == select(true, false, true), func_4(func_2(-1000f), Struct_3(false, var_0.c, false, var_2.d), _wgslsmith_f_op_f32(round(var_0.b.x))).d))), Struct_1(vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(0i, var_0.a), func_4(Struct_3(var_2.c, Struct_1(vec4<i32>(u_input.b, var_0.c.a.x, var_2.b.a.x, -4270i), vec4<bool>(var_0.c.b.x, true, var_2.c, false), var_2.b.b), var_0.c.b.x, var_2.d), var_2, _wgslsmith_f_op_f32(var_0.b.x * -624f)).a, var_2.b.a.x), vec4<bool>(any(!vec2<bool>(var_2.b.c.x, var_0.d)), !(!var_2.c), any(vec3<bool>(true, true, var_0.d)), var_2.a), vec4<bool>(false, true | any(var_0.c.c.xy), true, !var_2.a)), true);
    let var_3 = var_0.b;
    var_1 = var_2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.x, func_5(func_6(var_2.d.x, Struct_3(var_0.c.c.x, func_4(Struct_3(true, Struct_1(var_0.c.a, var_0.c.c, var_2.b.b), var_2.a, var_2.d), Struct_3(var_0.c.b.x, var_2.b, true, var_2.d), 1638f).c, select(var_2.a, var_2.a, true), ~vec4<u32>(89176u, var_2.d.x, var_2.d.x, 27276u)), var_2.d.xyz, _wgslsmith_div_vec3_f32(vec3<f32>(456f, -730f, var_0.b.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, -288f, 1406f), var_3.wxz)))), func_2(-1000f)));
}

