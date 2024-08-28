struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<i32>(21170i, 24751i), vec4<bool>(false, false, true, false), vec3<i32>(i32(-2147483648), -14795i, -13825i), -676f), Struct_1(vec2<i32>(1i, 21729i), vec4<bool>(false, true, true, false), vec3<i32>(1i, i32(-2147483648), 1i), 720f), Struct_1(vec2<i32>(-6096i, -37516i), vec4<bool>(true, true, false, false), vec3<i32>(0i, 29553i, 24380i), -1424f), Struct_1(vec2<i32>(0i, 11824i), vec4<bool>(false, true, false, true), vec3<i32>(2147483647i, -1i, -9303i), -875f), Struct_1(vec2<i32>(0i, -43071i), vec4<bool>(false, true, false, false), vec3<i32>(0i, -1i, -33069i), -736f), Struct_1(vec2<i32>(17209i, -35482i), vec4<bool>(false, true, true, false), vec3<i32>(-1i, 31291i, -1i), 386f), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<bool>(true, true, false, false), vec3<i32>(1i, 1i, 2147483647i), -125f), Struct_1(vec2<i32>(48205i, 53528i), vec4<bool>(false, true, false, false), vec3<i32>(0i, 0i, -3216i), 1467f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, true, false, false), vec3<i32>(36639i, 21039i, -23657i), 1000f), Struct_1(vec2<i32>(1i, -1i), vec4<bool>(false, true, false, false), vec3<i32>(25986i, 2147483647i, i32(-2147483648)), -1021f), Struct_1(vec2<i32>(2147483647i, -37021i), vec4<bool>(false, true, true, true), vec3<i32>(-16189i, -29574i, 21174i), 115f), Struct_1(vec2<i32>(13422i, -1i), vec4<bool>(true, false, false, true), vec3<i32>(92362i, 25026i, 14201i), -420f), Struct_1(vec2<i32>(33262i, 1i), vec4<bool>(true, true, false, true), vec3<i32>(-12969i, 47967i, 39708i), 119f), Struct_1(vec2<i32>(9457i, 0i), vec4<bool>(false, false, false, false), vec3<i32>(-32931i, -38400i, 2147483647i), -967f), Struct_1(vec2<i32>(-6714i, -1i), vec4<bool>(true, false, false, true), vec3<i32>(2147483647i, 2147483647i, 3774i), 588f), Struct_1(vec2<i32>(18474i, 9043i), vec4<bool>(false, true, false, true), vec3<i32>(-1i, -20526i, 6638i), 1493f), Struct_1(vec2<i32>(1i, 8546i), vec4<bool>(true, false, true, false), vec3<i32>(15639i, 2147483647i, 0i), 1709f), Struct_1(vec2<i32>(2147483647i, -6023i), vec4<bool>(false, false, true, true), vec3<i32>(-1i, 2679i, -1038i), -540f), Struct_1(vec2<i32>(-14293i, 0i), vec4<bool>(true, false, false, false), vec3<i32>(0i, i32(-2147483648), -19176i), -106f), Struct_1(vec2<i32>(0i, 0i), vec4<bool>(true, false, false, false), vec3<i32>(0i, 14560i, 0i), 783f), Struct_1(vec2<i32>(-1i, 1i), vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), -48371i, 1i), -589f), Struct_1(vec2<i32>(1i, 10261i), vec4<bool>(true, true, true, false), vec3<i32>(2147483647i, -7496i, 35581i), 166f), Struct_1(vec2<i32>(1i, 1i), vec4<bool>(true, false, true, false), vec3<i32>(i32(-2147483648), 0i, -22856i), 314f), Struct_1(vec2<i32>(-1i, 18730i), vec4<bool>(false, true, false, true), vec3<i32>(1i, -1i, 33069i), -1274f), Struct_1(vec2<i32>(-14099i, 2147483647i), vec4<bool>(false, true, false, false), vec3<i32>(-1i, 0i, 2147483647i), -658f), Struct_1(vec2<i32>(2147483647i, 9185i), vec4<bool>(true, true, false, false), vec3<i32>(16029i, 2147483647i, 58854i), -1224f), Struct_1(vec2<i32>(-70111i, -49844i), vec4<bool>(false, true, true, true), vec3<i32>(0i, 0i, 2147483647i), -1572f), Struct_1(vec2<i32>(i32(-2147483648), 38697i), vec4<bool>(true, true, false, false), vec3<i32>(2147483647i, -3782i, 2147483647i), 1025f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, true, false, false), vec3<i32>(42311i, 0i, -6257i), 499f), Struct_1(vec2<i32>(1i, 1i), vec4<bool>(false, true, true, false), vec3<i32>(0i, 2147483647i, -24264i), 551f), Struct_1(vec2<i32>(16928i, 0i), vec4<bool>(true, true, true, false), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), 180f));

var<private> global2: array<bool, 17> = array<bool, 17>(true, true, false, true, true, false, true, false, false, false, false, true, true, true, true, true, false);

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<i32>(0i, 67569i), vec4<bool>(false, true, true, false), vec3<i32>(55699i, i32(-2147483648), -37087i), 494f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    global1 = array<Struct_1, 31>();
    let var_0 = ~(~(u_input.a.x & (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 74998u), vec4<u32>(u_input.b.x, u_input.b.x, 4854u, 0u)) & 1u)));
    global3 = array<Struct_1, 1>();
    var var_1 = ~(vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, -30290i)), -vec2<i32>(32642i, -58800i)), ~(-2147483647i)) & (~vec2<i32>(1i, 1i) << (u_input.b % vec2<u32>(32u))));
    var var_2 = !vec2<bool>(arg_0.x, true);
    return select(vec4<bool>(any(vec3<bool>(true, select(true, global2[_wgslsmith_index_u32(u_input.b.x, 17u)], true), arg_0.x)), true, false, !select(var_2.x, global0.a, false)), vec4<bool>(arg_0.x, false, true, true), select(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, global0.a), vec4<bool>(false, true, false, global0.a), all(vec4<bool>(global0.a, true, false, global2[_wgslsmith_index_u32(var_0, 17u)]))), select(vec4<bool>(true, !arg_0.x, false, !arg_0.x), vec4<bool>(false, false, !var_2.x, !global0.a), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(true, true, global0.a, global0.a)), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], global2[_wgslsmith_index_u32(var_0, 17u)], arg_0.x, true), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 17u)], var_2.x, arg_0.x), vec4<bool>(true, false, var_2.x, true)), vec4<bool>(global2[_wgslsmith_index_u32(0u, 17u)], false, global2[_wgslsmith_index_u32(0u, 17u)], false))), select(vec4<bool>(global2[_wgslsmith_index_u32(~u_input.b.x, 17u)], true, true, var_2.x), vec4<bool>(!global2[_wgslsmith_index_u32(4294967295u, 17u)], any(vec4<bool>(true, arg_0.x, global0.a, global0.a)), true, global0.a), vec4<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(var_0, 17u)], arg_0.x, false, var_2.x)), false, any(vec3<bool>(false, arg_0.x, var_2.x)), false))));
}

fn func_2() -> u32 {
    let var_0 = vec4<bool>(false || global0.a, true | (_wgslsmith_mult_u32(u_input.a.x, 126550u) <= 4294967295u), false, any(func_3(select(vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<bool>(false, true), false))) & !global2[_wgslsmith_index_u32(~(~4294967295u), 17u)]);
    var var_1 = !(_wgslsmith_div_f32(_wgslsmith_div_f32(-1489f, _wgslsmith_f_op_f32(sign(-503f))), _wgslsmith_f_op_f32(min(-1049f, _wgslsmith_f_op_f32(floor(541f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-914f, _wgslsmith_f_op_f32(f32(-1f) * -1411f)))));
    let var_2 = abs(reverseBits(vec4<u32>(u_input.b.x, 0u, countOneBits(u_input.a.x), ~11783u) & abs(~vec4<u32>(u_input.b.x, 566u, u_input.a.x, 39341u))));
    global2 = array<bool, 17>();
    return ~1u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, u_input.b.x, 44830u), firstTrailingBit(arg_1) & min(arg_1, 1u)), 95596u), ~vec3<u32>(abs(4294967295u), ~25767u, _wgslsmith_div_u32(arg_1, 43318u) ^ _wgslsmith_sub_u32(4294967295u, 4294967295u)), ~min(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(93233u, u_input.a.x, u_input.b.x), vec3<u32>(arg_1, arg_1, u_input.b.x), vec3<u32>(49506u, arg_1, u_input.a.x))), vec3<u32>(u_input.a.x, max(31440u, arg_1), arg_1)));
    let var_1 = 4294967295u;
    global0 = arg_3;
    var var_2 = select(~1u, ~(_wgslsmith_dot_vec2_u32(var_0.xz, ~u_input.a) << (4294967295u % 32u)), true);
    global2 = array<bool, 17>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.d, arg_2.d))), 988f, arg_2.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_2.d, arg_2.d))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.d + 519f), -1352f, -1571f, _wgslsmith_f_op_f32(min(-1645f, arg_2.d))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.d, arg_2.d, arg_2.d, 426f))))), vec4<f32>(arg_2.d, -958f, 960f, arg_2.d));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1662f + _wgslsmith_div_f32(-350f, 1f)), 1808f)));
    global2 = array<bool, 17>();
    var var_1 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(arg_2, firstTrailingBit(arg_2)) << (arg_1.yw % vec2<u32>(32u))), vec2<i32>(countOneBits(1i), arg_2));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -237f))), 248f, 656f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(318f, 194f, -122f) + vec3<f32>(-300f, 1000f, var_0)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-690f, -750f, -1415f)))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(787f, var_2.x, var_0, var_2.x)))))))) + _wgslsmith_f_op_vec4_f32(func_4(any(select(vec2<bool>(arg_0.a, true), select(vec2<bool>(true, true), vec2<bool>(false, global0.a), false), vec2<bool>(false, true))), ~_wgslsmith_add_u32(arg_1.x, 16550u) ^ func_2(), Struct_1(firstLeadingBit(vec2<i32>(arg_2, -39307i)), !(!vec4<bool>(false, global0.a, false, false)), vec3<i32>(arg_2, abs(-8032i), arg_2), var_0), arg_0)));
}

fn func_5(arg_0: vec4<f32>) -> f32 {
    var var_0 = !(!global0.a);
    var var_1 = -2147483647i | min(0i ^ (-20608i >> ((u_input.a.x | u_input.a.x) % 32u)), (~1i << (_wgslsmith_div_u32(u_input.a.x, u_input.b.x) % 32u)) << (u_input.a.x % 32u));
    let var_2 = vec4<i32>(0i, ~(-28410i), -max(_wgslsmith_add_i32(2147483647i, -1i), 1i), _wgslsmith_add_i32(-2147483647i, 40278i)) >> (~firstTrailingBit(~(~vec4<u32>(33466u, u_input.a.x, 117762u, u_input.a.x))) % vec4<u32>(32u));
    var var_3 = _wgslsmith_add_vec3_u32(reverseBits(~(~vec3<u32>(4294967295u, 1u, 4294967295u))) << (_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 0u, 2156u), vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x)))) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~vec3<u32>(46873u, u_input.a.x, u_input.a.x), ~abs(vec3<u32>(u_input.b.x, u_input.b.x, 23193u) | vec3<u32>(4294967295u, 59799u, u_input.a.x))));
    global0 = Struct_2(true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(392f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, 1882f, 1000f, -680f))) + _wgslsmith_f_op_vec4_f32(func_1(Struct_2(global0.a), ~vec4<u32>(25011u, u_input.a.x, 26281u, u_input.b.x), 1745i))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(466f, 1000f, -412f, 161f) + vec4<f32>(1000f, 1000f, 108f, -335f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(125f, -237f, 1948f, 241f), vec4<f32>(701f, -567f, -492f, 1428f), true)))))));
    var var_1 = Struct_2(global0.a);
    var var_2 = min(_wgslsmith_sub_u32(~u_input.a.x, 119902u), u_input.a.x);
    let var_3 = Struct_2(true && !((u_input.a.x & 85830u) <= 1u));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-943f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(var_3, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 13285u, u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.a.x, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 44232u, u_input.b.x)), 3334i)).x), -1025f)));
    let var_5 = global3[_wgslsmith_index_u32(u_input.a.x, 1u)];
    var var_6 = var_5.d;
    let var_7 = func_3(var_5.b.yy).x;
    var var_8 = !var_5.b.zwz;
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), ~((_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b.x, 100u, 0u)) ^ vec3<u32>(u_input.b.x, 51628u, 4294967295u)) & ~(~vec3<u32>(4294967295u, 1u, 77113u))), ~vec2<u32>(min(u_input.b.x, u_input.a.x) >> (1u % 32u), ~u_input.a.x));
}

