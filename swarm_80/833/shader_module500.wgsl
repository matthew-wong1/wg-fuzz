struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(250f, 363f, -308f, 1072f), vec4<f32>(-731f, -1353f, -1261f, -848f), vec4<f32>(515f, 433f, 1539f, -1147f), vec4<f32>(325f, -383f, 793f, 1131f), vec4<f32>(-582f, 1177f, -260f, -330f), vec4<f32>(-1200f, 316f, 694f, 427f), vec4<f32>(1000f, -1000f, -1000f, -542f), vec4<f32>(180f, -1947f, -240f, -147f), vec4<f32>(-505f, 776f, -403f, 1041f), vec4<f32>(917f, -1023f, 585f, 975f), vec4<f32>(-1000f, 120f, -571f, -1000f), vec4<f32>(-2190f, -503f, -260f, -586f), vec4<f32>(-119f, 147f, 926f, 219f), vec4<f32>(635f, 1676f, -811f, 861f), vec4<f32>(-427f, -284f, 580f, -245f), vec4<f32>(1619f, -1695f, 1006f, -1708f), vec4<f32>(-1727f, 1708f, -3155f, -1445f), vec4<f32>(-217f, -150f, 761f, 1418f), vec4<f32>(682f, 1056f, -875f, -127f), vec4<f32>(-895f, 682f, -704f, 1425f), vec4<f32>(720f, -308f, 1631f, 159f), vec4<f32>(183f, -847f, 1269f, 1432f), vec4<f32>(988f, 2646f, -1057f, -701f), vec4<f32>(361f, 1584f, -866f, 1355f), vec4<f32>(-2411f, -449f, -1000f, -701f), vec4<f32>(-597f, 1000f, 201f, -706f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(96187u, arg_2, 70856u), ~vec3<u32>(arg_2, 0u, u_input.b.x)), _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.a.x, 27717u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, _wgslsmith_div_f32(296f, 1000f), _wgslsmith_f_op_f32(max(1000f, 1074f)), -453f)), _wgslsmith_mult_vec2_u32(~(~u_input.b.xz), vec2<u32>(arg_2, _wgslsmith_mult_u32(u_input.a.x, u_input.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, -1750f, -896f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(175f, -772f, -1000f))))), Struct_1(13989u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 26u)], min(vec2<u32>(0u | arg_2, max(48902u, 43521u)), countOneBits(~u_input.b.wx)), vec3<f32>(1f, 1f, 1f)), ~u_input.b.x, abs(~_wgslsmith_dot_vec3_u32(u_input.b.yxx, vec3<u32>(0u, u_input.b.x, 40705u))), any(vec2<bool>(false, select(true, false, false))) | any(select(vec3<bool>(arg_3.x, false, arg_3.x), !arg_3, vec3<bool>(true, true, true))));
    var_0 = Struct_2(Struct_1(~(var_0.a.a | 0u) ^ 0u, var_0.a.b, ~abs(~vec2<u32>(arg_2, 23162u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(470f, _wgslsmith_f_op_f32(exp2(var_0.b.d.x)), _wgslsmith_f_op_f32(floor(var_0.a.d.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.b.zwy)))), var_0.b, ~u_input.a.x, reverseBits(arg_2), true);
    let var_1 = vec2<bool>(all(!(!vec4<bool>(var_0.e, false, true, true))), false);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f - 1000f)) + _wgslsmith_f_op_f32(var_0.a.b.x * -1547f)), _wgslsmith_f_op_f32(f32(-1f) * -1388f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-507f, 313f), _wgslsmith_f_op_f32(min(1074f, var_0.a.b.x)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b.b.x, -1810f)))), _wgslsmith_f_op_f32(-588f + var_0.a.d.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d.x) + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -2632f)))), var_0.a.b.x, 2098f, -944f)));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.d.x)) + var_0.b.d.x), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_2.x) - _wgslsmith_f_op_f32(var_0.b.b.x + _wgslsmith_f_op_f32(sign(-1638f)))), _wgslsmith_f_op_f32(step(var_2.x, 371f))));
    return ~1u;
}

fn func_2() -> Struct_2 {
    let var_0 = ~u_input.a.x | 3158u;
    var var_1 = Struct_3(Struct_2(Struct_1(func_3(u_input.c.zwz, u_input.c.xxy | vec3<i32>(u_input.c.x, -30870i, u_input.c.x), 4294967295u, select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), vec4<f32>(_wgslsmith_f_op_f32(-342f - -477f), _wgslsmith_f_op_f32(466f * 1000f), 2083f, _wgslsmith_f_op_f32(f32(-1f) * -2702f)), min(vec2<u32>(25258u, 4294967295u), vec2<u32>(41477u, var_0) >> (u_input.a % vec2<u32>(32u))), vec3<f32>(-1096f, _wgslsmith_f_op_f32(max(-520f, 790f)), _wgslsmith_f_op_f32(1115f * -844f))), Struct_1(firstLeadingBit(24900u) | ~var_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(var_0, 26u)], vec4<f32>(179f, -1173f, -2662f, -785f)), _wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(28542u, 26u)], vec4<f32>(-205f, -926f, -342f, 649f), vec4<bool>(true, true, false, false))), vec4<bool>(false, true, true, true))), countOneBits(u_input.b.zy << (vec2<u32>(30716u, var_0) % vec2<u32>(32u))), vec3<f32>(1f, 1f, 1f)), var_0, var_0, false), u_input.a.x, Struct_1((u_input.b.x ^ ~0u) & (_wgslsmith_sub_u32(22724u, u_input.b.x) ^ _wgslsmith_div_u32(u_input.b.x, u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f) - -454f), 1000f, _wgslsmith_f_op_f32(floor(-857f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-838f * -1151f) - _wgslsmith_div_f32(554f, 658f))), u_input.b.wy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-798f, -889f, 1415f))) + vec3<f32>(203f, 1872f, 1504f)))), _wgslsmith_f_op_f32(round(1f)));
    let var_2 = select(!vec2<bool>(var_1.a.e, any(vec4<bool>(false, true, var_1.a.e, true))), vec2<bool>(true, all(!(!vec3<bool>(false, var_1.a.e, var_1.a.e)))), 754f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.a.d.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.b.b.x * var_1.a.b.d.x)))));
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    return Struct_2(var_1.c, var_1.a.b, _wgslsmith_sub_u32(1u, var_1.b), ~_wgslsmith_dot_vec3_u32(select(firstLeadingBit(vec3<u32>(4294967295u, var_0, 0u)), u_input.b.zwz, var_1.a.e), abs(vec3<u32>(41324u, 74979u, var_0))), any(vec4<bool>(any(vec3<bool>(true, true, var_2.x)), var_1.a.e, all(vec3<bool>(var_2.x, var_2.x, false)), true)) && true);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = 0i;
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -275f))));
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = select(!select(select(vec3<bool>(arg_0.e, true, arg_0.e), !vec3<bool>(false, arg_0.e, true), vec3<bool>(arg_0.e, arg_0.e, true)), vec3<bool>(true, -2147483647i > arg_1.x, any(vec2<bool>(true, false))), true), !(!vec3<bool>(arg_0.b.b.x < arg_0.b.d.x, arg_1.x > -2147483647i, arg_0.e)), arg_0.e || !(!(!arg_0.e)));
    global0 = array<vec4<f32>, 26>();
    let var_1 = 1i;
    let var_2 = -749f;
    var var_3 = func_3(vec3<i32>(max(_wgslsmith_div_i32(1i, 17156i), _wgslsmith_dot_vec3_i32(select(u_input.c.zxz, vec3<i32>(arg_1.x, 18730i, -44890i), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<i32>(u_input.c.x, -53489i, 32069i) ^ u_input.c.xzw)), -60703i, ~abs(31738i) | abs(~var_1)), _wgslsmith_clamp_vec3_i32(arg_1.xxx, vec3<i32>(~_wgslsmith_dot_vec3_i32(arg_1.zzw, u_input.c.wwx), max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.zx), ~1i), abs(arg_1.x) | u_input.c.x), vec3<i32>(var_1, _wgslsmith_clamp_i32(var_1, _wgslsmith_add_i32(0i, arg_1.x), -1i), ~(~31705i))), countOneBits(~51369u), select(select(vec3<bool>(var_0.x, true, arg_0.e), vec3<bool>(true, all(var_0.xz), arg_0.e), true), !(!vec3<bool>(var_0.x, false, true)), arg_0.e));
    return Struct_3(arg_0, arg_2.c.x, arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(732f, 382f))) + arg_2.b.x), -403f));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = func_4(Struct_2(Struct_1(reverseBits(~arg_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-242f, 771f, arg_0.d, -423f) * global0[_wgslsmith_index_u32(54751u, 26u)])), reverseBits(arg_1.zz), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.b.xyx), vec3<f32>(1582f, arg_0.c.d.x, arg_0.d))), Struct_1(func_2().c ^ u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.c.d.x, -1329f)), _wgslsmith_f_op_f32(arg_0.c.d.x - -1000f), _wgslsmith_f_op_f32(arg_0.d - -1000f), -1000f), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1051f, arg_0.c.b.x, arg_0.d), vec3<f32>(arg_0.d, arg_0.d, -560f))) * _wgslsmith_f_op_vec3_f32(-arg_0.c.d))), 17053u, 1u, arg_0.a.e), u_input.c, arg_0.a.b, ~vec2<u32>(83945u, 4294967295u));
    var var_1 = 60749i;
    var_1 = u_input.c.x;
    var var_2 = 0u;
    var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 2147483647i), _wgslsmith_mod_vec2_i32(~firstTrailingBit(vec2<i32>(u_input.c.x, 68110i) >> (u_input.b.yx % vec2<u32>(32u))), firstTrailingBit(max(countOneBits(vec2<i32>(u_input.c.x, u_input.c.x)), -u_input.c.xx))));
    return Struct_3(func_2(), 1u, Struct_1(~4294967295u, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.d.x), _wgslsmith_div_f32(-469f, 1000f), -968f, arg_0.a.a.d.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.a.b), vec4<f32>(var_0.d, -152f, 491f, var_0.a.a.d.x)))), vec2<u32>(23639u, arg_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1763f, arg_0.c.d.x, 501f), vec3<f32>(-422f, -461f, 540f)))) + _wgslsmith_f_op_vec3_f32(arg_0.c.d + vec3<f32>(var_0.d, -1031f, arg_0.c.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1227f))), _wgslsmith_f_op_f32(1000f - -1432f)));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> vec2<bool> {
    global0 = array<vec4<f32>, 26>();
    let var_0 = u_input.b.yyw;
    global0 = array<vec4<f32>, 26>();
    let var_1 = func_5(arg_1, ~(~u_input.b.xyy));
    var var_2 = Struct_1(countOneBits(~_wgslsmith_mult_u32(1u, 1u)), _wgslsmith_f_op_vec4_f32(var_1.c.b * vec4<f32>(arg_1.d, var_1.d, _wgslsmith_f_op_f32(-func_2().b.b.x), _wgslsmith_f_op_f32(max(func_1(arg_1).a.d.x, _wgslsmith_f_op_f32(select(619f, var_1.a.b.d.x, true)))))), _wgslsmith_mod_vec2_u32(~(arg_1.c.c >> (vec2<u32>(40861u, 51950u) % vec2<u32>(32u))), vec2<u32>(var_0.x, ~(~1u))), var_1.a.b.d);
    return !(!vec2<bool>(all(select(vec2<bool>(arg_1.a.e, arg_1.a.e), vec2<bool>(var_1.a.e, arg_1.a.e), false)), func_4(func_1(var_1), u_input.c, Struct_1(30529u, global0[_wgslsmith_index_u32(4294967295u, 26u)], var_0.yx, vec3<f32>(515f, arg_1.c.d.x, 1513f)), var_2.c).a.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_6(0i, func_5(func_4(func_1(Struct_3(Struct_2(Struct_1(0u, vec4<f32>(-1267f, 978f, -501f, -347f), vec2<u32>(1u, 77140u), vec3<f32>(-793f, -576f, 728f)), Struct_1(32038u, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-500f, -660f, 114f)), u_input.a.x, u_input.b.x, true), u_input.a.x, Struct_1(1u, vec4<f32>(-1000f, 530f, 624f, 1546f), vec2<u32>(u_input.b.x, u_input.b.x), vec3<f32>(-1826f, 480f, 1559f)), 627f)), -vec4<i32>(-1i, u_input.c.x, u_input.c.x, 39191i), Struct_1(22124u, global0[_wgslsmith_index_u32(23761u, 26u)], u_input.a, vec3<f32>(305f, 1243f, 1123f)), u_input.b.yz & vec2<u32>(27590u, 2752u)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.wzx, vec3<u32>(u_input.b.x, u_input.b.x, 1u)), vec3<u32>(0u, u_input.a.x, u_input.b.x) ^ u_input.b.wyy)), ~_wgslsmith_mult_u32(u_input.a.x, 25890u) < 1u);
    let var_1 = Struct_4(vec4<bool>(true, func_2().e, u_input.b.x != ~u_input.a.x, 24221u > ~u_input.a.x), Struct_2(func_2().a, func_5(Struct_3(func_5(Struct_3(Struct_2(Struct_1(16126u, global0[_wgslsmith_index_u32(1u, 26u)], vec2<u32>(u_input.a.x, 55508u), vec3<f32>(300f, 1745f, -361f)), Struct_1(1u, vec4<f32>(1387f, -1115f, -845f, -158f), u_input.a, vec3<f32>(1402f, 1024f, 606f)), 46993u, 54149u, true), u_input.b.x, Struct_1(u_input.a.x, vec4<f32>(-381f, 1024f, -224f, -203f), vec2<u32>(86211u, 10279u), vec3<f32>(881f, -834f, 301f)), 1057f), vec3<u32>(u_input.b.x, 21599u, u_input.a.x)).a, 4294967295u, func_4(Struct_2(Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(6086u, 26u)], u_input.a, vec3<f32>(952f, -118f, -2156f)), Struct_1(19970u, vec4<f32>(-1175f, 323f, -271f, -935f), vec2<u32>(u_input.a.x, u_input.a.x), vec3<f32>(650f, 272f, 1008f)), u_input.b.x, 4294967295u, false), u_input.c, Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(1u, 26u)], u_input.a, vec3<f32>(-275f, -291f, -624f)), u_input.a).c, _wgslsmith_f_op_f32(abs(-455f))), (u_input.b.xwy >> (vec3<u32>(38461u, u_input.a.x, u_input.b.x) % vec3<u32>(32u))) | ~u_input.b.ywy).c, u_input.a.x, _wgslsmith_mult_u32(countOneBits(u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_sub_u32(u_input.b.x | 4294967295u, func_1(Struct_3(Struct_2(Struct_1(u_input.a.x, vec4<f32>(2298f, 243f, -596f, 682f), vec2<u32>(1u, 1u), vec3<f32>(783f, -156f, -2024f)), Struct_1(0u, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.b.zx, vec3<f32>(-579f, 561f, -500f)), 0u, 0u, var_0.x), u_input.a.x, Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(21502u, 26u)], vec2<u32>(u_input.b.x, u_input.b.x), vec3<f32>(-871f, 341f, -338f)), 718f)).a.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 40651u, u_input.a.x, u_input.a.x))) > _wgslsmith_mod_u32(~1u, func_4(Struct_2(Struct_1(u_input.b.x, vec4<f32>(-384f, 1480f, -1227f, -1224f), vec2<u32>(u_input.b.x, u_input.a.x), vec3<f32>(1348f, -982f, -858f)), Struct_1(5369u, vec4<f32>(-710f, 750f, 1886f, 200f), u_input.b.zw, vec3<f32>(-365f, 846f, -637f)), u_input.a.x, u_input.b.x, false), vec4<i32>(1i, -1i, 0i, 2147483647i), Struct_1(1u, vec4<f32>(1589f, -1540f, -732f, 1794f), u_input.b.yw, vec3<f32>(-1000f, 287f, -964f)), vec2<u32>(u_input.a.x, u_input.b.x)).c.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, _wgslsmith_f_op_f32(ceil(1807f)), _wgslsmith_div_f32(_wgslsmith_div_f32(727f, 1024f), _wgslsmith_f_op_f32(trunc(-1516f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_f_op_f32(f32(-1f) * -1545f), func_4(Struct_2(Struct_1(89857u, global0[_wgslsmith_index_u32(1u, 26u)], u_input.a, vec3<f32>(-1567f, -495f, 1240f)), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], vec2<u32>(u_input.a.x, 0u), vec3<f32>(487f, -116f, 2215f)), u_input.a.x, u_input.a.x, var_0.x), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x), Struct_1(42061u, global0[_wgslsmith_index_u32(7855u, 26u)], vec2<u32>(4294967295u, 62688u), vec3<f32>(1897f, -2537f, 692f)), u_input.b.xx).d))), true);
    var var_2 = Struct_2(var_1.b.a, Struct_1(~(_wgslsmith_clamp_u32(1u, u_input.a.x, 36906u) ^ var_1.b.c), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(-560f)), func_2().a.b.x, _wgslsmith_f_op_f32(sign(-527f)), _wgslsmith_f_op_f32(var_1.b.b.b.x * var_1.b.b.d.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(1883f * var_1.c.x), _wgslsmith_div_f32(var_1.c.x, var_1.b.b.b.x)))), _wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(var_1.b.a.c.x & u_input.b.x, 50285u)), vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.b.d.x), _wgslsmith_f_op_f32(ceil(-179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.b.d.x))))), u_input.a.x, 4294967295u, var_0.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(var_2.b.b.zz));
    let var_4 = vec4<u32>(var_2.d, func_4(Struct_2(Struct_1(var_1.b.c ^ var_2.a.a, vec4<f32>(-1000f, var_2.a.b.x, var_1.b.b.d.x, var_3.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b.c, u_input.b.x), vec2<u32>(var_1.b.a.a, 28418u), var_2.a.c), _wgslsmith_f_op_vec3_f32(round(var_1.c))), Struct_1(1u, _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), u_input.b.xx, _wgslsmith_f_op_vec3_f32(-var_1.c)), u_input.a.x, _wgslsmith_mult_u32(~var_2.a.a, _wgslsmith_sub_u32(var_2.b.a, var_2.b.a)), true), u_input.c, Struct_1(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.b.d.x, -462f, var_2.a.d.x, var_3.x), vec4<f32>(var_2.b.b.x, var_3.x, -1000f, 1570f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(455f, var_3.x, -2620f, -1000f))), vec2<u32>(var_1.b.a.c.x, reverseBits(var_2.a.c.x)), vec3<f32>(var_3.x, _wgslsmith_f_op_f32(var_2.a.b.x + -1603f), _wgslsmith_f_op_f32(-2457f + var_2.b.d.x))), func_1(func_4(var_1.b, u_input.c, Struct_1(var_1.b.c, vec4<f32>(1162f, -1000f, -1731f, -544f), var_2.a.c, var_1.c), vec2<u32>(50315u, 52662u))).b.c).c.c.x, ~var_1.b.a.c.x, select(var_1.b.c, 4294967295u, var_2.e));
    let var_5 = _wgslsmith_add_vec2_u32(vec2<u32>(~min(~var_4.x, 1u), reverseBits(select(var_4.x, 3349u, any(vec3<bool>(var_1.d, var_1.a.x, var_2.e))))), ~(~reverseBits(vec2<u32>(var_1.b.a.a, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, var_1.b.b.b.yz, _wgslsmith_f_op_f32(-func_4(var_1.b, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) >> (vec4<u32>(0u, var_5.x, u_input.b.x, 0u) % vec4<u32>(32u)), func_2().a, ~vec2<u32>(20519u, 4294967295u) ^ var_1.b.b.c).d), -1730f, ~_wgslsmith_sub_vec4_u32(vec4<u32>(1887u, 32467u, ~u_input.b.x, u_input.b.x), ~(~u_input.b)));
}

