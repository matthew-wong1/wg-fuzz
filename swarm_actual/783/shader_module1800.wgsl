struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: array<u32, 22>;

var<private> global2: f32;

var<private> global3: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1u, 1u, 18035u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 33773u), vec3<u32>(8229u, 41487u, 4294967295u), vec3<u32>(4294967295u, 89445u, 53181u), vec3<u32>(42065u, 55079u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(19698u, 4294967295u, 15008u));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(63424u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66492u, 22u)], 22u)], 22u)], 22u)], 1u), vec2<u32>(69086u, global1[_wgslsmith_index_u32(0u, 22u)])), ~vec2<u32>(1u, 4294967295u)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 22u)] >> (0u % 32u), global1[_wgslsmith_index_u32(44227u, 22u)]))), select(max(4294967295u, 4294967295u), 30675u, !all(vec3<bool>(true, true, true))));
    let var_1 = global0[_wgslsmith_index_u32(2147u, 30u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), -175f, 162f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -1099f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-690f)), var_1.x, true)), -1398f, var_1.x)));
    global0 = array<vec2<f32>, 30>();
    return u_input.a.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_4) -> bool {
    let var_0 = vec3<u32>(~68410u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(reverseBits(select(arg_1, ~117243u, select(true, false, true))), 22u)], _wgslsmith_mult_u32(arg_3.b.b, arg_3.b.b)), ~0u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1472f)))) - 189f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.c.a.x)), _wgslsmith_f_op_f32(-1356f + arg_2.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + arg_2.c.a.x)));
    let var_2 = Struct_4(-min(firstTrailingBit(func_3()), 1i), Struct_3(~_wgslsmith_div_vec2_i32(-u_input.a.ww, countOneBits(vec2<i32>(u_input.a.x, arg_3.a))), ~(~global1[_wgslsmith_index_u32(arg_1, 22u)]) | abs(firstTrailingBit(arg_1)), vec4<i32>(min(_wgslsmith_div_i32(u_input.a.x, 0i), 11791i | u_input.a.x), ~arg_3.a & _wgslsmith_clamp_i32(-28480i, u_input.a.x, arg_3.e.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b.c.x, arg_3.a) >> (arg_0.zx % vec2<u32>(32u)), ~vec2<i32>(-17245i, arg_3.a)), ~(~8998i)), arg_3.c, arg_3.e.e), arg_3.b.d, _wgslsmith_f_op_vec4_f32(arg_3.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-987f, arg_2.d, _wgslsmith_f_op_f32(min(112f, var_1)), _wgslsmith_f_op_f32(ceil(1395f))))), Struct_3(u_input.a.ww, _wgslsmith_mod_u32(1u, ~arg_1), countOneBits(~vec4<i32>(6266i, -40052i, -2147483647i, arg_3.e.c.x)), arg_2.c, _wgslsmith_f_op_vec4_f32(floor(arg_3.e.e))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
    global0 = array<vec2<f32>, 30>();
    return any(!(!(!(!vec2<bool>(true, var_2.e.d.e.x)))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_4(select(-2147483647i, arg_0, false), Struct_3(u_input.a.zy, ~(~(~42559u)), select(~u_input.a, -vec4<i32>(u_input.a.x, u_input.a.x, 1i, 0i) << (~vec4<u32>(1u, 4294967295u, 27584u, global1[_wgslsmith_index_u32(4294967295u, 22u)]) % vec4<u32>(32u)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, false, true))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1497f, 844f, 751f) - vec3<f32>(2254f, 384f, -1087f)), true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, -508f, -889f)))), true, vec2<bool>(true, func_2(global3[_wgslsmith_index_u32(4294967295u, 8u)], 4294967295u, Struct_2(true, vec2<f32>(-982f, -1605f), Struct_1(vec3<f32>(-136f, 688f, 1000f), true, vec3<f32>(159f, 966f, -175f), false, vec2<bool>(true, true)), -545f), Struct_4(-4419i, Struct_3(u_input.a.zz, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1364u, 22u)], 22u)], vec4<i32>(1i, 25274i, -1i, u_input.a.x), Struct_1(vec3<f32>(-1376f, -877f, 1056f), true, vec3<f32>(1265f, -226f, 1310f), true, vec2<bool>(true, false)), vec4<f32>(3160f, -579f, 304f, -452f)), Struct_1(vec3<f32>(-510f, -708f, -233f), true, vec3<f32>(-552f, -1922f, 949f), false, vec2<bool>(false, false)), vec4<f32>(-1000f, -519f, 792f, -114f), Struct_3(vec2<i32>(0i, 2147483647i), global1[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a, Struct_1(vec3<f32>(245f, -1554f, -478f), false, vec3<f32>(-1821f, -1476f, 1736f), false, vec2<bool>(false, false)), vec4<f32>(286f, -165f, -930f, -866f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2066f, 905f, 313f, -965f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1441f, -914f, 605f, -508f) + vec4<f32>(1394f, 1756f, 430f, -787f)) + vec4<f32>(442f, -431f, -1520f, -933f)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2220f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2107f - -792f) - _wgslsmith_f_op_f32(step(1000f, -159f))), 706f), -func_3() >= -1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-454f * 595f), _wgslsmith_f_op_f32(1254f * 811f), 2004f)), true, vec2<bool>(any(vec2<bool>(true, false)), !any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1968f, 1591f, -2097f, 1090f), vec4<f32>(-669f, -1555f, 792f, 644f), true)))) - vec4<f32>(1f, 1f, 1f, 1f)), Struct_3(u_input.a.xz, abs(68856u), u_input.a, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -536f, 294f))), vec3<f32>(1f, 1f, 1f))), true, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-159f, -1178f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, -1677f, 126f)))), select(true, false, true) || true, select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, true), true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(141f)) + 146f), _wgslsmith_div_f32(705f, _wgslsmith_f_op_f32(f32(-1f) * -383f)), _wgslsmith_f_op_f32(404f + -1743f), _wgslsmith_f_op_f32(abs(-458f)))));
    var var_1 = var_0;
    let var_2 = vec2<i32>(2955i, var_1.a);
    global0 = array<vec2<f32>, 30>();
    var var_3 = firstTrailingBit(-vec3<i32>(var_2.x, firstLeadingBit(var_2.x), _wgslsmith_dot_vec3_i32(var_1.e.c.yzy, abs(vec3<i32>(-2147483647i, 35414i, 13877i)))));
    return Struct_3(vec2<i32>(arg_0, (reverseBits(1i) >> (_wgslsmith_mod_u32(1u, var_0.b.b) % 32u)) | -1i), _wgslsmith_dot_vec4_u32(max(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(8965u, global1[_wgslsmith_index_u32(30246u, 22u)], var_0.b.b, 68124u), vec4<u32>(4294967295u, var_0.b.b, var_0.b.b, 33378u), vec4<u32>(var_0.b.b, 7978u, global1[_wgslsmith_index_u32(var_1.b.b, 22u)], 0u))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(19015u, 22u)], var_1.e.b, var_0.b.b, var_0.b.b)), vec4<u32>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(var_0.b.b, 22u)], var_1.b.b, 43889u), ~vec4<u32>(15006u, var_1.b.b, global1[_wgslsmith_index_u32(0u, 22u)], 0u))), vec4<u32>(abs(_wgslsmith_div_u32(var_0.e.b, var_0.e.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 65547u, 64793u), vec3<u32>(1u, global1[_wgslsmith_index_u32(var_0.b.b, 22u)], global1[_wgslsmith_index_u32(var_1.b.b, 22u)])), ~max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13022u, 22u)], 22u)], var_1.e.b), 1u)), reverseBits(-(u_input.a >> (vec4<u32>(var_0.e.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.e.b, 22u)], 22u)], 37493u, global1[_wgslsmith_index_u32(4294967295u, 22u)]) % vec4<u32>(32u)))) & min(abs(u_input.a), vec4<i32>(var_3.x, func_3(), var_1.e.a.x, u_input.a.x)), var_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 284f, 223f, var_0.c.c.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.e.x), var_0.b.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.e.x) - var_0.b.d.c.x), var_0.d.x)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> StorageBuffer {
    let var_0 = global3[_wgslsmith_index_u32(~10811u, 8u)];
    var var_1 = ~vec4<u32>(_wgslsmith_mod_u32(~arg_0.b.b ^ var_0.x, 0u), func_1(func_3()).b, min(func_1(_wgslsmith_dot_vec2_i32(u_input.a.xw, arg_0.b.a)).b, 4294967295u), abs(var_0.x));
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    let var_2 = Struct_3(~abs(-_wgslsmith_add_vec2_i32(vec2<i32>(-8715i, -2147483647i), arg_0.b.a)), 19503u, firstTrailingBit(~(arg_0.e.c << (max(vec4<u32>(arg_0.b.b, 0u, var_1.x, 21816u), vec4<u32>(var_1.x, arg_0.e.b, 24444u, 4294967295u)) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b.e.x, -238f, 591f))))), arg_0.e.d.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.c.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-340f, arg_0.c.c.x, -462f), arg_0.c.c))), arg_0.c.b, !vec2<bool>(!arg_0.e.d.b, !arg_0.e.d.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.e.e)), vec4<f32>(386f, _wgslsmith_f_op_f32(step(arg_1, arg_0.c.a.x)), 392f, -530f)))));
    return StorageBuffer(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 2147483647i, arg_0.b.a.x, -2147483647i), ~vec4<i32>(u_input.a.x, -2147483647i, 0i, 10581i)), -min(arg_3, ~arg_2.x), -((u_input.a.x >> (0u % 32u)) >> (0u % 32u)), _wgslsmith_dot_vec4_i32(func_1(_wgslsmith_add_i32(u_input.a.x, arg_3)).c, abs(u_input.a & vec4<i32>(arg_3, -2147483647i, 1i, 1i)))), -vec2<i32>(-1i, select(-57064i, _wgslsmith_dot_vec2_i32(arg_0.b.a, arg_0.e.a), true)), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_4(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, 16411i, u_input.a.x)), 0i), func_1(max(-1i, u_input.a.x) & ~(-5460i)), func_1(-47674i).d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-800f, 1319f, -2174f, 528f), vec4<f32>(2032f, 1000f, -1000f, -1000f))) + vec4<f32>(-168f, 422f, 131f, -1018f)))), func_1(-16226i)), _wgslsmith_f_op_f32(max(196f, -297f)), u_input.a.xwy, _wgslsmith_dot_vec4_i32(min(_wgslsmith_div_vec4_i32(max(u_input.a, vec4<i32>(u_input.a.x, 68959i, u_input.a.x, u_input.a.x)), u_input.a & u_input.a), _wgslsmith_sub_vec4_i32(select(vec4<i32>(0i, u_input.a.x, u_input.a.x, 5566i), vec4<i32>(u_input.a.x, u_input.a.x, 12586i, -26247i), false), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-60258i, 62962i, u_input.a.x, u_input.a.x)))), u_input.a));
}

