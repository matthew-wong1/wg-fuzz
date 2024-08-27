struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<i32>(-2109i, 1i), vec4<bool>(false, false, true, false), 9969i, -854f, 1389f), Struct_1(vec2<i32>(26870i, 8348i), vec4<bool>(false, true, false, true), -17836i, -167f, -891f), Struct_1(vec2<i32>(25873i, -23139i), vec4<bool>(true, false, true, false), 2549i, -560f, -2235f), Struct_1(vec2<i32>(-8208i, i32(-2147483648)), vec4<bool>(false, false, true, true), -9709i, -2042f, -298f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(true, true, false, false), 60351i, -923f, 717f), Struct_1(vec2<i32>(7650i, i32(-2147483648)), vec4<bool>(false, false, false, false), 16135i, -1350f, -102f), Struct_1(vec2<i32>(81706i, 1i), vec4<bool>(true, true, true, false), -14896i, 531f, -517f), Struct_1(vec2<i32>(4153i, -1i), vec4<bool>(true, true, true, true), -24680i, -406f, -148f), Struct_1(vec2<i32>(-1i, -48809i), vec4<bool>(true, true, true, true), 2147483647i, 1030f, 1057f), Struct_1(vec2<i32>(1i, -1526i), vec4<bool>(false, false, false, true), 0i, -518f, 439f), Struct_1(vec2<i32>(-1i, -33672i), vec4<bool>(false, false, true, true), 0i, 1045f, 118f), Struct_1(vec2<i32>(-4730i, 8613i), vec4<bool>(true, false, false, false), 1i, -616f, -620f), Struct_1(vec2<i32>(12910i, 1i), vec4<bool>(true, false, true, true), 0i, 1953f, 1523f));

var<private> global1: array<Struct_4, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec2<bool> {
    let var_0 = Struct_3(~(_wgslsmith_div_i32(-47750i ^ arg_0, -11020i) << (1u % 32u)), Struct_1(vec2<i32>(14012i, 2147483647i), !select(vec4<bool>(arg_1, false, arg_1, false), !vec4<bool>(false, arg_1, false, false), select(vec4<bool>(true, true, arg_1, true), vec4<bool>(true, arg_1, arg_1, arg_1), false)), reverseBits(-1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1414f), _wgslsmith_f_op_f32(880f - _wgslsmith_f_op_f32(min(1467f, -266f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1798f))))), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 52151u) >> (u_input.b.x % 32u), 82251u)), arg_1, Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(arg_0, arg_0)), select(vec2<i32>(-1i, 1754i), vec2<i32>(-2147483647i, 2147483647i), vec2<bool>(true, arg_1)), ~vec2<i32>(arg_0, 45558i)), vec2<i32>(1i, 1i)), !(!(!vec4<bool>(false, arg_1, false, arg_1))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0 ^ arg_0, arg_0, _wgslsmith_add_i32(arg_0, arg_0)), vec3<i32>(arg_0, -58562i, ~arg_0)), _wgslsmith_f_op_f32(-1680f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(528f))))), _wgslsmith_f_op_f32(ceil(-758f))));
    var var_1 = Struct_3(select(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, var_0.b.a.x, var_0.b.c), vec3<i32>(2147483647i, var_0.e.c, arg_0)), -arg_0, arg_0 >= 2147483647i), Struct_1(var_0.b.a << (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u)), !vec4<bool>(any(vec2<bool>(false, true)), false, var_0.b.d < 590f, true), _wgslsmith_mod_i32(arg_0, _wgslsmith_add_i32(~2147483647i, 1i)), var_0.e.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(174f, 153f, false)))))), _wgslsmith_sub_u32(24840u, abs(_wgslsmith_clamp_u32(countOneBits(23953u), 70810u, var_0.c))), !all(select(!var_0.e.b.yx, select(var_0.b.b.zw, vec2<bool>(true, false), vec2<bool>(arg_1, arg_1)), !vec2<bool>(arg_1, false))), var_0.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1439f, -130f, var_1.b.d, var_1.e.e) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.e, -1268f, -225f, var_0.b.d) * vec4<f32>(var_0.b.d, -723f, var_0.b.d, var_0.b.e)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-363f, -1000f, 967f, var_1.e.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1361f, var_1.e.d, var_0.b.e, -1000f)), !arg_1))))));
    global0 = array<Struct_1, 13>();
    var_1 = var_0;
    return vec2<bool>(false, false);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<i32>) -> u32 {
    let var_0 = !select(!select(!vec2<bool>(arg_1.x, arg_1.x), arg_0.b.xz, !arg_1.x), arg_1.zw, func_3(~(~11459i), arg_0.b.x));
    global1 = array<Struct_4, 30>();
    global0 = array<Struct_1, 13>();
    var var_1 = Struct_3(min(-17517i, _wgslsmith_dot_vec3_i32(vec3<i32>(-15251i, arg_0.a.x, firstLeadingBit(arg_0.c)), vec3<i32>(_wgslsmith_mult_i32(arg_0.c, -13388i), arg_0.a.x, 16092i >> (0u % 32u)))), global0[_wgslsmith_index_u32(u_input.c.x, 13u)], min(_wgslsmith_div_u32(u_input.b.x, ~(~1u)), 17093u), select(arg_0.b.x, arg_1.x, false), Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(~arg_2.yy, _wgslsmith_sub_vec2_i32(arg_0.a, arg_2.yx)), arg_0.c), arg_0.b, arg_0.a.x, _wgslsmith_f_op_f32(arg_0.d + -1228f), 1194f));
    var_1 = Struct_3(~reverseBits(2643i), arg_0, ~reverseBits(4294967295u), all(vec2<bool>(arg_0.b.x & var_0.x, any(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_1.x, true)))) | true, global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(~max(var_1.c, 41187u), u_input.a), var_1.c), 13u)]);
    return ~u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-185f, arg_0.e) + vec2<f32>(-1080f, arg_0.e))))))));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(-61666i, arg_0.a.x & firstLeadingBit(0i)), 1i | _wgslsmith_dot_vec2_i32(reverseBits(arg_0.a), vec2<i32>(arg_0.a.x, 0i) | vec2<i32>(2147483647i, arg_0.a.x))), select(vec4<bool>(!arg_1 && all(vec2<bool>(true, false)), true, all(!arg_0.b.xz), u_input.b.x != ~u_input.a), !arg_0.b, arg_1), arg_0.a.x, var_0.x, 447f);
    let var_2 = arg_0.a.x;
    let var_3 = ~(~(~select(arg_2, ~u_input.a, select(arg_0.b.x, var_1.b.x, var_1.b.x))));
    var var_4 = u_input.c.x;
    return Struct_2(Struct_1(vec2<i32>(_wgslsmith_clamp_i32(var_2, -9292i, var_1.c), _wgslsmith_clamp_i32(2147483647i, var_2, -1i)) | var_1.a, var_1.b, _wgslsmith_mult_i32(max(arg_0.a.x << (arg_2 % 32u), var_2 ^ 25765i), abs(min(15936i, var_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e + var_0.x)), arg_0.d), -1434f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1764f, _wgslsmith_f_op_f32(var_1.d * var_0.x), var_0.x) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, 458f, -868f) * vec3<f32>(var_1.d, -520f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.e * arg_0.e), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1339f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(774f, 1388f, arg_0.e)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1969f, arg_0.d, var_0.x))), vec3<f32>(arg_0.d, arg_0.d, arg_0.e), vec3<bool>(true, false, true))))))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(555f))))), Struct_1(vec2<i32>(i32(-1i) * -2147483647i, -_wgslsmith_mod_i32(var_2, 1i)), vec4<bool>(true, arg_0.b.x, var_2 >= ~var_1.a.x, !var_1.b.x), firstTrailingBit(25355i), -195f, -1239f));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    global1 = array<Struct_4, 30>();
    var var_0 = Struct_3(arg_0.a.a.x, func_4(Struct_1(min(arg_0.a.a, vec2<i32>(arg_0.e.c, 0i) & arg_0.a.a), !arg_0.a.b, 2147483647i, arg_0.b.x, _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(arg_1 - 682f)))), !arg_0.e.b.x, 1u).e, 30064u, arg_0.a.b.x, Struct_1(arg_0.a.a, !(!(!vec4<bool>(arg_0.e.b.x, false, arg_0.a.b.x, arg_0.e.b.x))), i32(-1i) * -arg_0.e.c, _wgslsmith_f_op_f32(abs(-581f)), _wgslsmith_f_op_f32(-1f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0.e.d, arg_1)) * arg_0.b)));
    var_0 = Struct_3(1i, arg_0.a, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(min(4294967295u, var_0.c), 1u | var_0.c), u_input.a)), true, arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1743f - -727f) - 446f)))));
    return func_4(var_0.b, true, ~_wgslsmith_div_u32(var_0.c, u_input.a));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = -929f;
    let var_1 = func_5(func_4(Struct_1(-(~vec2<i32>(-1i, 2147483647i)), select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, true), arg_0.x), select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), arg_0.x)), _wgslsmith_div_i32(firstLeadingBit(2147483647i), _wgslsmith_sub_i32(-80089i, 12141i)), 1712f, 1000f), true, _wgslsmith_div_u32(func_2(global0[_wgslsmith_index_u32(1u, 13u)], vec4<bool>(true, arg_0.x, true, arg_0.x), countOneBits(vec3<i32>(1i, 51944i, 0i))), 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1228f)) + _wgslsmith_f_op_f32(sign(1218f)))) + _wgslsmith_f_op_f32(min(-1499f, var_0))));
    global0 = array<Struct_1, 13>();
    let var_2 = vec4<u32>(0u, ~(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 45976u, 86126u), vec4<u32>(u_input.b.x, 6601u, 1u, 4294967295u)), abs(u_input.a)) << (max(4294967295u, ~u_input.b.x) % 32u)), _wgslsmith_mult_u32(firstLeadingBit(u_input.c.x) ^ 0u, ~func_2(func_5(Struct_2(global0[_wgslsmith_index_u32(44130u, 13u)], vec3<f32>(946f, var_0, var_1.b.x), vec3<f32>(2081f, var_0, -996f), var_1.e.e, Struct_1(vec2<i32>(43878i, -3889i), vec4<bool>(true, true, var_1.e.b.x, arg_0.x), var_1.a.c, 1370f, -2525f)), 597f).e, vec4<bool>(true, false, true, arg_0.x), vec3<i32>(-2147483647i, 36717i, var_1.e.a.x))), 80340u);
    global1 = array<Struct_4, 30>();
    return func_4(func_5(var_1, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2000f - var_0), _wgslsmith_div_f32(427f, -356f)), var_1.e.d))).e, all(func_4(Struct_1(~var_1.e.a, vec4<bool>(true, false, true, false), var_1.e.c, -477f, _wgslsmith_f_op_f32(f32(-1f) * -888f)), any(vec2<bool>(false, var_1.e.b.x)), firstLeadingBit(var_2.x)).a.b.xz), ~(~61070u)).e;
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    let var_0 = 1u;
    global1 = array<Struct_4, 30>();
    let var_1 = Struct_2(func_5(Struct_2(Struct_1(-vec2<i32>(arg_0.a, 2147483647i), func_1(arg_0.e.b.yy).b, ~1i, _wgslsmith_f_op_f32(-arg_0.e.e), func_1(vec2<bool>(true, arg_0.e.b.x)).e), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1746f, arg_0.e.d, 694f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1802f, arg_0.b.e, arg_0.e.e)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.e, arg_0.e.e, -166f) - vec3<f32>(arg_0.e.d, 484f, -508f)))), _wgslsmith_div_f32(arg_0.b.d, arg_0.e.d), func_5(Struct_2(arg_0.e, vec3<f32>(317f, arg_0.e.d, 1963f), vec3<f32>(-1000f, arg_0.b.d, -804f), -713f, Struct_1(arg_0.e.a, vec4<bool>(arg_0.e.b.x, arg_0.e.b.x, false, arg_0.e.b.x), arg_0.b.c, arg_0.e.d, 374f)), func_4(global0[_wgslsmith_index_u32(4707u, 13u)], false, 1u).c.x).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)) - func_1(!arg_0.e.b.wx).d)).e, vec3<f32>(-442f, arg_0.b.e, arg_0.e.d), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e.e, -1000f, arg_0.b.d), vec3<f32>(arg_0.e.e, -1064f, 548f)))))), -1593f, arg_0.e);
    return Struct_2(arg_0.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.b, vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.e.e)), var_1.d, -1472f))) + vec3<f32>(func_1(var_1.a.b.zz).e, func_1(func_1(vec2<bool>(var_1.a.b.x, false)).b.yx).e, 278f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.e), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x))), var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(592f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(u_input.b.x, ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), 13u)];
    global0 = array<Struct_1, 13>();
    var var_1 = global1[_wgslsmith_index_u32(0u, 30u)];
    var_1 = global1[_wgslsmith_index_u32(2956u, 30u)];
    let var_2 = func_6(Struct_3(_wgslsmith_clamp_i32(max(var_0.a.x, select(2147483647i, 43123i, var_0.b.x)), -firstTrailingBit(var_0.a.x), max(countOneBits(-44754i), var_1.a.a.c)), global0[_wgslsmith_index_u32(min(1u, ~abs(var_1.d.x)), 13u)], ~u_input.b.x, any(var_0.b), func_1(var_0.b.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.e)) + _wgslsmith_f_op_f32(-var_2.c.x)), ~_wgslsmith_div_vec4_u32(~max(vec4<u32>(var_1.c.c, var_1.c.c, 6948u, 80597u), vec4<u32>(1u, u_input.a, 4236u, 17297u)), vec4<u32>(~0u, 77138u, 4294967295u, _wgslsmith_mod_u32(0u, 39392u))), var_0.c, vec4<i32>(var_1.b.c << (min(~var_1.c.c, min(1u, 1u)) % 32u), var_0.c, var_1.a.a.c, -736i));
}

