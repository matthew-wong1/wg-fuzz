struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = Struct_1(~u_input.a.x, _wgslsmith_clamp_vec4_u32(min(vec4<u32>(abs(96361u), select(1u, 49850u, false), 9229u, 1u), reverseBits(vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(~abs(27473u), max(1u, firstTrailingBit(1u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 78759u), _wgslsmith_clamp_u32(0u, 39101u, 63566u)), ~1u), abs(~abs(vec4<u32>(0u, 1u, 4294967295u, 123210u)))), _wgslsmith_dot_vec3_i32(~vec3<i32>(~(-44971i), -20728i, u_input.b.x), _wgslsmith_clamp_vec3_i32(select(u_input.a, firstTrailingBit(vec3<i32>(30880i, 1i, -231i)), vec3<bool>(false, false, false)), vec3<i32>(_wgslsmith_sub_i32(9149i, u_input.d), u_input.c, u_input.b.x), u_input.a)));
    let var_1 = Struct_3(Struct_2(~var_0.b.x | _wgslsmith_mod_u32(countOneBits(var_0.b.x), 116808u), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-53018i, 2147483647i), countOneBits(vec2<i32>(-1i, u_input.a.x))), ~var_0.c, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -26090i), u_input.a.xx), _wgslsmith_dot_vec4_i32(vec4<i32>(-3147i, var_0.c, 2147483647i, 26391i), vec4<i32>(2147483647i, var_0.a, u_input.d, var_0.a))), abs(_wgslsmith_div_i32(-1i, u_input.c))), abs(vec2<u32>(_wgslsmith_mod_u32(var_0.b.x, var_0.b.x), countOneBits(4294967295u))), u_input.b.x), u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-845f, 266f, 364f), vec3<f32>(-651f, -1588f, -1571f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -1139f, 1074f), vec3<f32>(308f, 112f, -236f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-815f, -433f, -500f), vec3<f32>(-829f, -1486f, 1828f), vec3<bool>(true, false, false))), select(true, false, false)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f) * 1534f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1172f)), 1820f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 691f, true)) * -752f))), countOneBits(19479u));
    var_0 = Struct_1(-8102i, (_wgslsmith_mult_vec4_u32(var_0.b, _wgslsmith_clamp_vec4_u32(var_0.b, vec4<u32>(4294967295u, 1u, 1u, 0u), var_0.b)) & vec4<u32>(var_0.b.x, 10092u, 0u, ~var_0.b.x)) >> (vec4<u32>(~abs(6305u), var_0.b.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(var_0.b), ~vec4<u32>(var_1.a.a, 63195u, var_0.b.x, 4294967295u)), var_0.b.x) % vec4<u32>(32u)), _wgslsmith_sub_i32(firstTrailingBit(abs(-1i)), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b)));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-679f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(120f + var_1.c.x))), max(var_1.a.a, var_0.b.x) == _wgslsmith_dot_vec3_u32(var_0.b.wwx, vec3<u32>(var_0.b.x, var_1.a.c.x, var_1.a.c.x)))), -229f, var_1.c.x, 231f), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-533f)))), -1022f)), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-366f)), var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(408f))))), var_1.c.x));
    var var_3 = var_1;
    return all(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = arg_2;
    let var_1 = vec2<bool>(false, !(!any(vec3<bool>(true, true, true))));
    var var_2 = vec4<bool>(all(!vec4<bool>(var_1.x, func_3(), var_1.x, false)), any(vec2<bool>(all(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, true))), all(!vec4<bool>(false, true, true, var_1.x)))), var_1.x, true);
    var_2 = vec4<bool>(!any(!var_2.zyw), !var_2.x, !(58449i <= _wgslsmith_clamp_i32(-arg_0.d, arg_0.b.x, -var_0)), var_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1362f - -258f)) * -1120f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2349f, -493f)))) * 1f);
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-417f, -1000f, 454f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(23030u, arg_0, vec2<u32>(4294967295u, 18583u), 37450i), vec3<u32>(1u, 33628u, 19660u), 12219i, 23717u)) * 1897f), _wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-919f, 1057f))))), vec3<f32>(-1533f, 2569f, -294f), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true))));
    let var_1 = Struct_2(0u, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(arg_0), -arg_0, abs(arg_0)), select(vec4<i32>(-2147483647i, -19922i, arg_0.x, arg_0.x), countOneBits(vec4<i32>(-42100i, 1i, 2147483647i, -1i)), false)) << ((firstTrailingBit(select(vec4<u32>(31797u, 24094u, 39955u, 1u), vec4<u32>(0u, 0u, 4294967295u, 0u), true)) & vec4<u32>(4294967295u, _wgslsmith_div_u32(0u, 9609u), 1u, 1u)) % vec4<u32>(32u)), ~(~firstTrailingBit(vec2<u32>(22764u, 39325u))) >> (_wgslsmith_sub_vec2_u32(reverseBits(select(vec2<u32>(1185u, 57747u), vec2<u32>(61804u, 0u), false)), select(select(vec2<u32>(58648u, 40881u), vec2<u32>(6351u, 62445u), vec2<bool>(true, true)), vec2<u32>(1u, 1u), select(vec2<bool>(true, true), vec2<bool>(false, false), true))) % vec2<u32>(32u)), _wgslsmith_add_i32(2147483647i, _wgslsmith_clamp_i32(~(arg_0.x ^ u_input.a.x), arg_0.x, abs(~(-1i)))));
    let var_2 = var_1.c;
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(sign(var_0.x)), true)) - var_0.x), var_0.x, _wgslsmith_div_f32(2310f, var_0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(2084f, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(564f, var_0.x, 1042f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(794f, 1509f, 719f) - vec3<f32>(250f, var_0.x, -657f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 173f), vec3<f32>(var_0.x, -289f, var_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 702f, var_0.x)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, 114f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), vec4<f32>(494f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_div_f32(var_0.x, 1392f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1172f, -2966f, var_0.x, 155f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 2081f, var_0.x) - vec4<f32>(845f, -902f, -1332f, 299f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(588f, var_0.x, var_0.x, -1463f)))));
    return _wgslsmith_f_op_f32(ceil(var_3.x));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> u32 {
    let var_0 = arg_1.a.b;
    let var_1 = Struct_1(arg_1.b, abs(_wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(41148u, arg_1.d, 1u, 4294967295u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(50064u, arg_1.a.a, 0u, arg_1.d), abs(vec4<u32>(33351u, 4294967295u, arg_1.d, 62400u)), abs(vec4<u32>(arg_1.a.a, 16774u, arg_1.a.c.x, 10883u))))), max(~_wgslsmith_mod_i32(reverseBits(u_input.b.x), 1i), var_0.x));
    let var_2 = !vec3<bool>(arg_1.c.x < _wgslsmith_f_op_f32(func_2(Struct_2(1u, vec4<i32>(arg_1.b, var_0.x, var_1.a, u_input.d), vec2<u32>(1u, var_1.b.x), var_0.x), _wgslsmith_sub_vec3_u32(var_1.b.ywx, vec3<u32>(53948u, arg_1.d, arg_1.a.c.x)), 1i, _wgslsmith_clamp_u32(1u, 8692u, var_1.b.x))), func_3(), true);
    var var_3 = select(select(!(!vec2<bool>(var_2.x, true)), vec2<bool>(true, false), !var_2.x), select(vec2<bool>(true, var_2.x), vec2<bool>(any(vec2<bool>(false, var_2.x)), _wgslsmith_add_u32(4294967295u, var_1.b.x) != _wgslsmith_sub_u32(var_1.b.x, 51117u)), var_0.x < ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 8188i, 0i), vec3<i32>(-13164i, arg_1.b, arg_2))), any(vec3<bool>(true, var_2.x, all(var_2.zx))));
    let var_4 = Struct_1(countOneBits(var_0.x), var_1.b, 66184i);
    return ~4294967295u;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(arg_0, max(-select(arg_3, vec4<i32>(u_input.d, -1i, u_input.a.x, 1i), vec4<bool>(false, arg_1, true, true)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, arg_3.x, 1i, 14860i), vec4<i32>(u_input.b.x, -80671i, arg_3.x, arg_3.x), vec4<i32>(arg_2, -22011i, -2147483647i, 1433i))), vec2<u32>(~4940u, arg_0), _wgslsmith_mult_i32(arg_3.x, 1i)), _wgslsmith_clamp_i32(2147483647i, ~arg_3.x, arg_3.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2161f, -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(arg_0, vec4<i32>(u_input.c, 0i, -10926i, arg_2), vec2<u32>(32847u, 1u), arg_2), vec3<u32>(14390u, arg_0, arg_0), -44404i, 4294967295u)))), _wgslsmith_f_op_f32(-264f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1160f, -1000f)))), -854f), ~_wgslsmith_div_u32(arg_0, func_4(_wgslsmith_f_op_f32(select(-1000f, -1127f, arg_1)), Struct_3(Struct_2(4294967295u, vec4<i32>(arg_3.x, 11719i, 2147483647i, arg_2), vec2<u32>(arg_0, 11432u), u_input.a.x), -1i, vec3<f32>(1000f, 430f, 1734f), 21594u), arg_3.x)));
    let var_1 = var_0.c.x;
    var var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(min(-arg_2, -arg_3.x), -select(-2147483647i, arg_2, arg_1)), arg_3.x), ~(firstTrailingBit(vec4<u32>(1u, 0u, arg_0, arg_0) << (vec4<u32>(8955u, 4294967295u, 1u, 29844u) % vec4<u32>(32u))) << (firstTrailingBit(~vec4<u32>(4294967295u, arg_0, 0u, var_0.d)) % vec4<u32>(32u))), _wgslsmith_mod_i32(68439i, i32(-1i) * -min(var_0.a.b.x, arg_2)));
    var_2 = Struct_1(abs(arg_2 | countOneBits(~0i)), vec4<u32>(~4294967295u, ~(~0u), ~20908u, ~var_2.b.x >> (firstTrailingBit(59619u) % 32u)), -2884i);
    var var_3 = true;
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-arg_2, 2147483647i), ~(~vec2<i32>(var_2.a, 15732i))), countOneBits(~max(1i, var_0.b))), ~var_2.b ^ (var_2.b ^ firstLeadingBit(~vec4<u32>(0u, 0u, var_2.b.x, 4294967295u))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.d, u_input.a.x, -61083i, 7677i))))), Struct_3(Struct_2(40556u, vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, 51309i), select(vec2<u32>(1u, 18364u), vec2<u32>(25255u, 16619u), true), _wgslsmith_add_i32(25448i, u_input.c)), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1803f, -246f, -761f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1869f, 1000f, 486f)))), firstTrailingBit(firstLeadingBit(18382u))), u_input.b.x), func_3(), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a.zx ^ vec2<i32>(u_input.c, u_input.d), -(~u_input.b)), u_input.a.x), vec4<i32>(u_input.d, 2147483647i, (i32(-1i) * -u_input.c) ^ select(max(u_input.a.x, 1i), countOneBits(-10822i), true), u_input.b.x));
    var var_1 = 152f;
    var var_2 = _wgslsmith_f_op_f32(853f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1936f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-577f + -1920f), -367f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(847f, -1056f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1409f), _wgslsmith_f_op_f32(select(-2892f, 1000f, false)))))));
    var_1 = _wgslsmith_f_op_f32(func_2(Struct_2(select(4294967295u, 1u, reverseBits(var_0.a) == -22384i), ~vec4<i32>(1i, -50227i >> (var_0.b.x % 32u), ~u_input.a.x, u_input.c), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), ~var_0.b.xy, countOneBits(var_0.b.xy))), u_input.c), ~_wgslsmith_add_vec3_u32(~var_0.b.wzw, var_0.b.xww), max(2147483647i, -u_input.a.x | _wgslsmith_div_i32(u_input.b.x, u_input.a.x)), ~var_0.b.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1001f * 336f), -1437f, _wgslsmith_f_op_f32(462f - -231f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-260f, -1101f, -491f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-391f, -1753f, -1800f) - vec3<f32>(153f, -379f, 678f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-287f, -1158f, -595f), vec3<f32>(-1008f, -436f, -231f), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 124f, 554f))))), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, true)));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -533f);
    var var_4 = 0u;
    let var_5 = firstTrailingBit(u_input.a ^ vec3<i32>(abs(i32(-1i) * -20923i), var_0.c, 12206i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(129f, 253f, var_3.x) - var_3)), vec3<f32>(_wgslsmith_f_op_f32(var_3.x + var_3.x), var_3.x, 402f), vec3<bool>(true, true, false | all(vec2<bool>(false, true))))), u_input.b.x, vec3<i32>(select(u_input.a.x, countOneBits(firstLeadingBit(3094i)), true), ~(~var_0.a), firstTrailingBit(var_0.c)));
}

