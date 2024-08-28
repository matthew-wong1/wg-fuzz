struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, false));

var<private> global2: array<bool, 5> = array<bool, 5>(true, true, true, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> bool {
    let var_0 = vec3<u32>(0u, 1u, ~firstTrailingBit(firstTrailingBit(~79508u)));
    global0 = vec4<bool>(arg_1.a.a.x, !arg_0.a.x, arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b)) * _wgslsmith_f_op_f32(min(532f, 1593f))) - _wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_div_f32(708f, 122f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b - 1000f)))));
    var var_1 = 14729u;
    global1 = Struct_1(arg_2.c.a);
    var var_2 = select(select(vec4<bool>(all(!vec4<bool>(true, global1.a.x, global0.x, global2[_wgslsmith_index_u32(var_0.x, 5u)])), any(select(global1.a.xx, vec2<bool>(arg_2.a.a.x, arg_1.a.a.x), false)), !(!arg_1.a.a.x), select(!arg_1.c.a.x, all(arg_1.a.a), select(true, false, true))), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 0u) >> (var_0.x % 32u), 5u)], !(var_0.x != var_0.x), !(-344f <= arg_2.b), all(arg_0.a.xy)), select(select(vec4<bool>(false, global0.x, true, arg_1.c.a.x), select(vec4<bool>(false, false, global1.a.x, arg_0.a.x), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(var_0.x, 5u)]), arg_1.a.a.x), vec4<bool>(global0.x, global0.x, true, global1.a.x)), !(!vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 5u)], global1.a.x, false, global0.x)), true)), !vec4<bool>(true, !all(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(var_0.x, 5u)])), !(u_input.a.x >= 1i), !all(vec3<bool>(false, arg_3, false))), arg_0.a.x);
    return any(arg_2.c.a);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = i32(-1i) * -42823i;
    var var_1 = Struct_2(Struct_1(vec3<bool>(_wgslsmith_div_i32(-2147483647i, 17117i) >= (-6045i ^ u_input.a.x), true, _wgslsmith_clamp_i32(u_input.a.x, 1i, u_input.a.x) != -15350i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f * 1954f)), Struct_1(vec3<bool>(!global1.a.x || !global1.a.x, global0.x, !func_3(Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(arg_2, 5u)], true, arg_0.x)), Struct_2(Struct_1(global0.yzx), 1065f, Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 5u)], global1.a.x, false))), Struct_2(Struct_1(vec3<bool>(arg_0.x, false, arg_0.x)), -1000f, Struct_1(vec3<bool>(global0.x, true, false))), false))));
    let var_2 = arg_0.x;
    var var_3 = u_input.a.x;
    let var_4 = Struct_2(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(664f * var_1.b) * _wgslsmith_f_op_f32(trunc(1108f)))), -116f), var_1.c);
    return Struct_2(var_1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.b))), var_1.c);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.a.x & 26087i, abs(2160i), -2147483647i, u_input.a.x)), u_input.a);
    global2 = array<bool, 5>();
    var var_1 = func_2(arg_0.a.a, vec3<u32>(1u, 1u, 1u), ~1u).a;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -2285f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1332f)) * _wgslsmith_f_op_f32(step(-667f, 600f))))))));
    var var_3 = min(((i32(-1i) * -2527i) >> (countOneBits(1u) % 32u)) ^ -select(-2147483647i, 2147483647i, false), 2147483647i >> (1u % 32u)) | u_input.a.x;
    return Struct_1(vec3<bool>(any(func_2(global0.zzz, _wgslsmith_sub_vec3_u32(vec3<u32>(109510u, 4294967295u, 25821u), vec3<u32>(6369u, 119651u, 1u)), 4294967295u).c.a.xz), true, select(true, !arg_0.c.a.x, var_1.a.x) & (-196f < _wgslsmith_f_op_f32(trunc(468f)))));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = Struct_2(func_4(func_2(!global0.zyw, ~vec3<u32>(43079u, 40838u, 119819u), firstLeadingBit(~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(247f))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -1495f), -822f)))), 311f, func_2(!vec3<bool>(!global1.a.x, select(false, global2[_wgslsmith_index_u32(26723u, 5u)], global1.a.x), true), vec3<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 1u, 33258u, 29682u), vec4<u32>(4294967295u, 24917u, 67400u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(4294967295u), ~4294967295u, ~40285u, ~48883u), vec4<u32>(1u, 1u, reverseBits(49473u), firstTrailingBit(42681u)))).c);
    var var_1 = Struct_1(!vec3<bool>(false, select(all(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(30914u, 5u)], true)), func_2(global1.a, vec3<u32>(82202u, 1u, 4294967295u), 0u).a.a.x, false), var_0.a.a.x));
    return ~abs(94110u);
}

fn func_5(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(arg_0, arg_0) << (arg_0.x % 32u), _wgslsmith_add_u32(~arg_0.x, arg_0.x));
    var var_1 = arg_2;
    var var_2 = Struct_2(Struct_1(!global1.a), arg_1, func_4(Struct_2(func_2(!vec3<bool>(true, global1.a.x, global1.a.x), arg_0.wyz, _wgslsmith_dot_vec2_u32(arg_0.zw, vec2<u32>(var_0, arg_0.x))).c, _wgslsmith_f_op_f32(round(-769f)), Struct_1(func_4(Struct_2(Struct_1(vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 5u)], true)), 1358f, Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(var_0, 5u)], global0.x, true))), 1000f).a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + var_1.x), _wgslsmith_f_op_f32(-arg_2.x)) - _wgslsmith_f_op_f32(max(102f, arg_1)))));
    let var_3 = firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32((i32(-1i) * -1i) << (~var_0 % 32u), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), min(u_input.a.x, 1i)), 23187i), firstTrailingBit(~(-20610i))));
    var var_4 = !vec2<bool>(true, any(vec2<bool>(global1.a.x, global0.x)));
    return Struct_1(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(vec4<u32>(~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 59941u), 0u), select(vec3<u32>(26821u, 4294967295u, 53288u), vec3<u32>(1u, 1u, 1u), global0.zxw)), select(max(func_1(2147483647i), ~4294967295u), 23423u, all(!vec4<bool>(true, false, true, global0.x))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 4712u, 4294967295u)), select(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(101758u, 1u, 1u), vec3<u32>(0u, 20925u, 0u), global1.a.x), global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) - 398f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-716f, -905f, 575f, 1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1457f, 991f, -162f, -971f)))))));
    var var_0 = func_2(vec3<bool>(global0.x, global1.a.x != true, global0.x), max(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 28090u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 20147u, 20983u), vec3<u32>(10519u, 49879u, 39264u))), 56446u, ~(~0u)), ~(~vec3<u32>(1u, 1u, 1u))), (select(0u, 1u, !global2[_wgslsmith_index_u32(37702u, 5u)]) | ~33613u) << (~4294967295u % 32u));
    var var_1 = _wgslsmith_f_op_f32(-281f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b)), -1000f)) + var_0.b));
    global0 = vec4<bool>(global0.x, !global1.a.x, !(!func_4(Struct_2(Struct_1(vec3<bool>(global1.a.x, false, true)), var_0.b, Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 5u)], global0.x))), -371f).a.x || true), func_2(vec3<bool>(var_0.a.a.x, false, !global0.x), firstTrailingBit(~max(vec3<u32>(4294967295u, 6923u, 52300u), vec3<u32>(1664u, 36580u, 1u))), ~reverseBits(1u)).c.a.x);
    let var_2 = true;
    var_0 = func_2(vec3<bool>(all(func_4(Struct_2(var_0.a, 930f, Struct_1(var_0.a.a)), -265f).a) && var_2, true, global0.x), min(firstLeadingBit(~countOneBits(vec3<u32>(4294967295u, 0u, 3836u))), min(~(~vec3<u32>(48410u, 0u, 87481u)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(61868u, 4294967295u, 4294967295u), vec3<u32>(40280u, 4294967295u, 21499u), var_2), vec3<u32>(0u, 4429u, 29643u), max(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(40401u, 4294967295u, 0u))))), _wgslsmith_sub_u32(~(2365u >> (1u % 32u)), firstTrailingBit(~abs(55076u))));
    var var_3 = select(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(22663u, 7394u, 0u), vec3<u32>(36754u, 40268u, 4294967295u), vec3<u32>(3527u, 58553u, 1816u)), vec3<u32>(1u, 1u, 1u), true)), ~vec3<u32>(1u, 1u, 1u)), vec3<u32>(58336u & (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 25569u, 0u), vec3<u32>(4294967295u, 11733u, 66312u)) ^ 52158u), 1u, reverseBits(func_1(u_input.a.x << (80673u % 32u)))), !func_4(Struct_2(Struct_1(global0.xww), 1621f, func_2(vec3<bool>(false, false, true), vec3<u32>(1u, 16439u, 8870u), 67092u).c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, 1644f))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_3.x, 21763u) ^ var_3.x, ~0u), select(~(~var_3.x), var_3.x, global1.a.x)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f) + -1756f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f - -773f))))));
}

