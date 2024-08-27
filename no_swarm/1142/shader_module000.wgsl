struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 21870u, 91064u, 32621u);

var<private> global1: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(Struct_4(false, vec3<f32>(1363f, -671f, 1222f))), Struct_5(Struct_4(false, vec3<f32>(357f, 258f, 2282f))), Struct_5(Struct_4(true, vec3<f32>(-1598f, 291f, 1237f))), Struct_5(Struct_4(true, vec3<f32>(-1911f, -449f, -668f))), Struct_5(Struct_4(false, vec3<f32>(1472f, -1131f, -342f))), Struct_5(Struct_4(true, vec3<f32>(583f, 2957f, 1044f))), Struct_5(Struct_4(true, vec3<f32>(1117f, -1918f, -109f))), Struct_5(Struct_4(false, vec3<f32>(-2241f, -821f, -1000f))), Struct_5(Struct_4(true, vec3<f32>(-309f, -1000f, 841f))), Struct_5(Struct_4(true, vec3<f32>(2596f, -1583f, -720f))), Struct_5(Struct_4(false, vec3<f32>(551f, 705f, 759f))), Struct_5(Struct_4(true, vec3<f32>(1242f, 638f, 381f))), Struct_5(Struct_4(true, vec3<f32>(-113f, 276f, -789f))), Struct_5(Struct_4(true, vec3<f32>(1252f, -1000f, 1468f))), Struct_5(Struct_4(true, vec3<f32>(-1137f, -1710f, -851f))), Struct_5(Struct_4(false, vec3<f32>(-926f, 925f, -289f))), Struct_5(Struct_4(true, vec3<f32>(278f, 1368f, 138f))), Struct_5(Struct_4(true, vec3<f32>(-264f, 329f, -2318f))), Struct_5(Struct_4(true, vec3<f32>(-2051f, -342f, 679f))), Struct_5(Struct_4(true, vec3<f32>(1385f, 214f, -383f))), Struct_5(Struct_4(true, vec3<f32>(-1129f, 539f, 1333f))), Struct_5(Struct_4(false, vec3<f32>(1229f, 572f, -418f))));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = reverseBits(-4004i);
    let var_1 = arg_0.a.x;
    let var_2 = Struct_3(vec4<f32>(672f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, -693f, var_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-122f, -1000f)))), -1083f, _wgslsmith_f_op_f32(step(arg_0.b, -579f))), Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.b)), _wgslsmith_f_op_f32(-1372f + arg_0.b), _wgslsmith_f_op_f32(floor(arg_0.b)), -1347f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-299f, 1069f, -342f, arg_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.b, arg_0.b, 1120f) - vec4<f32>(289f, -592f, 649f, arg_0.b))))), arg_0, select(vec2<bool>(all(vec3<bool>(var_1, var_1, var_1)), u_input.a.x == 1i), arg_0.a, vec2<bool>(true, false | arg_0.a.x)), (_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 7323i, -4293i), vec4<i32>(-33012i, u_input.a.x, -21057i, u_input.a.x)) << (arg_0.c % 32u)) ^ 1i));
    var_0 = countOneBits(-(firstTrailingBit(_wgslsmith_clamp_i32(-10610i, var_2.b.d, 44607i)) >> (select(~890u, _wgslsmith_mod_u32(45775u, 36271u), all(vec4<bool>(true, arg_0.a.x, var_2.b.b.a.x, var_2.b.c.x))) % 32u)));
    var var_3 = var_2.b;
    return max(vec4<u32>(arg_0.c >> (_wgslsmith_dot_vec2_u32(select(global0.yz, vec2<u32>(var_3.b.c, 12008u), var_2.b.c), vec2<u32>(arg_0.c, 8709u)) % 32u), ~var_2.b.b.c, 96580u, 0u), _wgslsmith_sub_vec4_u32((~vec4<u32>(var_3.b.c, 4294967295u, 0u, var_3.b.c) | abs(vec4<u32>(4294967295u, 4294967295u, var_3.b.c, 59088u))) | _wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.b.b.c, 0u, global0.x, 9873u), ~vec4<u32>(13922u, 1u, arg_0.c, 4294967295u)), vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(1u, 1u)), var_3.b.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.b.c, 25311u, 0u, global0.x), vec4<u32>(arg_0.c, var_3.b.c, 4294967295u, var_2.b.b.c)), ~var_2.b.b.c ^ global0.x)));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    global0 = func_3(Struct_1(vec2<bool>(arg_0.x, all(vec3<bool>(true, true, false)) | true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f + -194f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -254f)) - _wgslsmith_f_op_f32(f32(-1f) * -113f))), ~global0.x));
    global1 = array<Struct_5, 22>();
    var var_0 = vec2<i32>(36487i, ~u_input.a.x);
    var var_1 = vec4<u32>(abs(4294967295u), ~(~17422u), global0.x, ~4294967295u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(731f, 1000f, -338f, 1219f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(726f, -1171f, -968f, -405f), vec4<f32>(-184f, 833f, -2547f, 1446f), arg_0.x))))));
    return firstTrailingBit(-37098i);
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    var var_0 = ~(-24755i);
    let var_1 = -(-vec3<i32>(-u_input.a.x, func_2(vec4<bool>(arg_1.a.a, false, true, arg_1.a.a)), 64859i) << (global0.xww % vec3<u32>(32u)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-288f - 1454f), _wgslsmith_div_f32(753f, arg_1.a.b.x), -602f, _wgslsmith_f_op_f32(-961f * arg_3.x)))), Struct_1(select(!vec2<bool>(arg_1.a.a, false), select(select(vec2<bool>(true, arg_1.a.a), vec2<bool>(arg_1.a.a, true), vec2<bool>(true, false)), !vec2<bool>(true, arg_1.a.a), select(true, arg_1.a.a, arg_1.a.a)), !(!vec2<bool>(arg_1.a.a, arg_1.a.a))), _wgslsmith_f_op_f32(arg_1.a.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.b.x)) * arg_2)), 40825u), !select(vec2<bool>(arg_1.a.a, false), !(!vec2<bool>(arg_1.a.a, arg_1.a.a)), true), var_1.x);
    var_0 = i32(-1i) * -u_input.a.x;
    global0 = vec4<u32>(1u | (abs(arg_0) | ~(~10930u)), ~27763u, 27763u, ~((_wgslsmith_div_u32(arg_0, var_2.b.c) << (~3321u % 32u)) >> (0u % 32u)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(384f)), 519f));
}

fn func_4(arg_0: f32) -> vec2<bool> {
    global1 = array<Struct_5, 22>();
    var var_0 = ~global0.x;
    global1 = array<Struct_5, 22>();
    var var_1 = Struct_4(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -218f, 685f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(758f, arg_0, arg_0)))))) - vec3<f32>(-434f, arg_0, arg_0)));
    var_0 = reverseBits(72341u);
    return select(!(!vec2<bool>(var_1.a, var_1.a)), !(!vec2<bool>(true, all(vec2<bool>(var_1.a, false)))), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 22>();
    let var_0 = select(vec2<bool>(true, true), !func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global0.x, global1[_wgslsmith_index_u32(global0.x, 22u)], 1252f, vec4<f32>(-1783f, -1616f, 863f, -2204f))), _wgslsmith_f_op_f32(ceil(-468f)))), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-635f, 446f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1894f - -524f))))).x);
    let var_1 = all(!select(vec4<bool>(false & var_0.x, all(vec2<bool>(false, var_0.x)), var_0.x, global0.x == 4294967295u), vec4<bool>(var_0.x, var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), true), true));
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(var_2, ~u_input.a.x, 36505i) >> (min(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(5026u, 4294967295u, 1u)), global0.zxz), vec3<u32>(_wgslsmith_clamp_u32(0u, 5019u, 0u), 6002u, global0.x >> (global0.x % 32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(global0.x, global1[_wgslsmith_index_u32(57306u, 22u)], _wgslsmith_f_op_f32(select(-815f, -1417f, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1519f, 350f, 601f, -582f) + vec4<f32>(-1844f, -148f, 769f, 403f)))), 1000f, -856f, 205f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(424f, -139f, 1440f, -1136f))))), vec2<u32>(~firstTrailingBit(4294967295u) << (global0.x % 32u), countOneBits(abs(global0.x)) & ~countOneBits(global0.x)));
}

