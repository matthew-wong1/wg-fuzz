struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec4<f32> {
    var var_0 = abs(~4294967295u) != ~arg_1.a;
    let var_1 = select(firstTrailingBit(max(~vec3<u32>(37199u, 4294967295u, arg_1.a) << (~vec3<u32>(arg_0.a, 4294967295u, 1u) % vec3<u32>(32u)), vec3<u32>(min(46084u, arg_0.a), reverseBits(4294967295u), firstTrailingBit(arg_1.a)))), firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(5561u, arg_0.a, 4812u), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(13428u, arg_1.a, u_input.a.x)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true), vec3<bool>(_wgslsmith_f_op_f32(min(arg_2, arg_2)) < _wgslsmith_div_f32(arg_2, arg_2), select(all(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, false, false, true)), true), (arg_1.a | 5686u) > reverseBits(u_input.a.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(777f, arg_2, -810f, arg_2))))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, arg_2) * vec4<f32>(1000f, -415f, -1428f, arg_2)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-567f - arg_2), _wgslsmith_f_op_f32(-232f + -385f), _wgslsmith_f_op_f32(f32(-1f) * -976f), arg_2) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1366f, -680f, 2657f, -1000f)))))));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = vec4<i32>(-1i, max(_wgslsmith_add_i32(0i, ~1264i), _wgslsmith_dot_vec2_i32(vec2<i32>(16587i, 20105i), abs(vec2<i32>(-34127i, 1i)))) & ~2147483647i, -(~max(1i, 9699i)), ~(~(-13870i)));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-486f + 1268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x - -913f), 1508f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(435f, 1010f, _wgslsmith_div_f32(1690f, -1014f), _wgslsmith_f_op_f32(239f + -1111f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(4294967295u, vec2<i32>(var_0.x, 13407i)), Struct_2(u_input.a.x, vec2<i32>(1i, var_0.x)), arg_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(2223f)), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1859f), 123f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-523f, -708f, -1342f, -1000f), vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_0.x)))), false)), var_0.xz, ~var_0.x);
    var var_2 = true;
    var_0 = vec4<i32>(abs((~var_1.c.x ^ ~1i) << (~select(1u, 0u, true) % 32u)), firstLeadingBit(var_1.c.x), var_1.d, select(reverseBits(68185i), 1i, all(vec4<bool>(var_1.b.x < -327f, true, true, any(vec2<bool>(true, true))))));
    let var_3 = min(31790u, ~u_input.a.x ^ u_input.a.x);
    return 1u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = 104f;
    var var_1 = var_0;
    let var_2 = arg_3.x;
    let var_3 = Struct_2(_wgslsmith_clamp_u32(u_input.a.x ^ arg_2.x, arg_1, u_input.a.x), firstTrailingBit(~(vec2<i32>(4915i, var_2) ^ vec2<i32>(0i, var_2))) ^ firstTrailingBit(~arg_3.yx << (max(vec2<u32>(26987u, u_input.a.x), vec2<u32>(1u, 51539u)) % vec2<u32>(32u))));
    var var_4 = arg_3.www;
    return Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(24046u, countOneBits(arg_0), 1u), vec3<u32>(max(62755u, 40741u), ~(~var_3.a), max(0u, ~u_input.a.x))), vec2<i32>(_wgslsmith_dot_vec3_i32(select(arg_3.zwx, _wgslsmith_mult_vec3_i32(arg_3.xww, arg_3.xzz), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), arg_3.zzw), arg_3.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_2(u_input.a.x, vec2<i32>(-4437i ^ arg_0.b.x, _wgslsmith_mod_i32(arg_0.b.x >> (0u % 32u), firstTrailingBit(arg_0.b.x)) << (u_input.a.x % 32u)));
    var var_1 = 495f;
    var_0 = arg_0;
    var_1 = 2004f;
    let var_2 = func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(3763u, ~(~0u)), u_input.a), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-324f, 434f, 572f) - vec3<f32>(1441f, 339f, -1333f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1354f, 1001f, -1070f)))), vec3<f32>(-393f, -1462f, _wgslsmith_div_f32(-617f, -273f)))), vec2<u32>(~_wgslsmith_mod_u32(30994u, min(arg_2, arg_2)), 4294967295u), abs(vec4<i32>(abs(-2147483647i) & var_0.b.x, -35472i, _wgslsmith_div_i32(~1i, ~arg_0.b.x), firstTrailingBit(arg_0.b.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 0u, u_input.a.x, 1u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u)) % 32u))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-155f, -241f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(693f, -701f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1511f)))) - vec2<f32>(-911f, -910f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1722f, -429f, 130f, 563f), vec4<f32>(-528f, -1043f, -866f, -490f))), _wgslsmith_div_vec4_f32(vec4<f32>(-178f, -1765f, -1419f, -1823f), vec4<f32>(-969f, 1303f, 1812f, 257f)), !arg_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(339f * 178f), _wgslsmith_f_op_f32(f32(-1f) * -525f), _wgslsmith_f_op_f32(517f - 532f), _wgslsmith_f_op_f32(round(-566f)))))), countOneBits(firstLeadingBit(_wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.b.x, 92980i), _wgslsmith_div_vec2_i32(var_0.b, vec2<i32>(arg_0.b.x, 1i))))), var_2.b.x);
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = func_1(Struct_2(select(~arg_0, firstTrailingBit(27737u), any(vec4<bool>(true, true, true, true))), -_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_1.c.x, arg_1.d), -arg_1.c)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, false, false, all(vec4<bool>(false, false, true, true))), -1554f < _wgslsmith_div_f32(1718f, arg_1.a.x)), vec4<bool>(true, _wgslsmith_mult_i32(arg_1.d, arg_1.c.x) > max(-26182i, arg_1.d), true, all(vec3<bool>(true, false, false))), true), _wgslsmith_mod_u32(_wgslsmith_mult_u32(73371u, u_input.a.x) ^ select(arg_0, _wgslsmith_div_u32(36936u, 1u), true), ~_wgslsmith_mod_u32(max(35750u, arg_0), _wgslsmith_mod_u32(55097u, 17901u))));
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x)), u_input.a.x, min(71137u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 2900u, arg_0, 0u)) >> (~vec4<u32>(u_input.a.x, arg_0, 1u, arg_0) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, 1u, arg_0), firstLeadingBit(arg_0), _wgslsmith_clamp_u32(37794u, 42665u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 75748u, u_input.a.x), vec3<u32>(122758u, 0u, 44275u))), 1u, 19858u), vec4<u32>(_wgslsmith_div_u32(func_4(u_input.a.x & u_input.a.x, u_input.a.x, ~vec2<u32>(0u, u_input.a.x), abs(vec4<i32>(-12691i, var_0.d, arg_1.c.x, -59373i))).a, ~min(u_input.a.x, u_input.a.x)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, u_input.a.x), vec4<u32>(0u, arg_0, 4294967295u, 19892u))) & 20296u, u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 30240u, ~69509u), abs(52908u))));
    let var_2 = ~abs(1u);
    var_0 = arg_1;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) + arg_1.a) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - arg_1.b.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(132f, arg_1.b.x, arg_1.b.x, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), arg_1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(arg_1.a.x - 1393f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_1.b)))))), max(var_0.c, arg_1.c), abs(~(~var_0.c.x)));
    return ~u_input.a.x ^ _wgslsmith_clamp_u32(40870u, ~var_2, select(var_1, var_2, var_2 != ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1468f);
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -326f);
    let var_3 = ~_wgslsmith_add_i32(5528i, -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, -2147483647i))) << (func_5(_wgslsmith_add_u32(~u_input.a.x, min(1u, 64485u)), func_1(Struct_2(80899u, min(vec2<i32>(-848i, -4901i), vec2<i32>(0i, -1i))), select(!vec4<bool>(false, true, var_1, var_1), !vec4<bool>(true, var_1, var_1, false), var_1), ~_wgslsmith_sub_u32(u_input.a.x, 17874u))) % 32u);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_div_f32(662f, var_2)) - var_2), _wgslsmith_f_op_f32(var_2 - -844f), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(-var_2)))));
    var_0 = -822f;
    var var_5 = func_1(func_4(7175u, u_input.a.x, ~u_input.a ^ ~u_input.a, vec4<i32>(_wgslsmith_add_i32(~(-3870i), -18788i), var_3, -1i, abs(~(-21761i)))), !vec4<bool>(true, true, var_1, true), 1u);
    var var_6 = func_1(func_4(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 26598u), u_input.a), vec2<u32>(u_input.a.x, 1u))), _wgslsmith_add_u32(37908u, _wgslsmith_dot_vec3_u32(vec3<u32>(39937u, 32354u, 0u), abs(vec3<u32>(u_input.a.x, u_input.a.x, 1u)))), u_input.a, select(-vec4<i32>(var_3, var_3, 0i, -1i), -vec4<i32>(-2147483647i, var_5.d, 13532i, 0i), !vec4<bool>(var_1, var_1, true, var_1)) & _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-13227i, var_3, 1i, var_5.d), vec4<i32>(2802i, -32728i, 1i, 1i)), -vec4<i32>(-6521i, 1i, var_5.c.x, var_5.d))), !(!vec4<bool>(var_1, var_1, true, var_1)), ~select(~(~1u), 66658u, _wgslsmith_f_op_f32(-1000f * 1053f) < _wgslsmith_f_op_f32(-161f - var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) | ~vec3<u32>(u_input.a.x, 1u, 0u), firstLeadingBit(~vec3<u32>(u_input.a.x, 58143u, 36096u))) & select(~vec3<u32>(49341u, u_input.a.x, 3097u), vec3<u32>(countOneBits(4294967295u), 0u ^ u_input.a.x, ~60765u), -2147483647i == var_5.c.x), var_5.b.x, 0i, vec2<u32>(countOneBits(reverseBits(93968u)), u_input.a.x >> (_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 48948u), 55626u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_5.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_6.b))), false))));
}

