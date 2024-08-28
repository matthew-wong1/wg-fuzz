struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-170f, 1u);

var<private> global1: array<f32, 27> = array<f32, 27>(-980f, 1384f, -966f, 1000f, -393f, -890f, 674f, 1167f, 101f, 1551f, -306f, -762f, 435f, 483f, -678f, 910f, -1535f, -1843f, -1000f, 462f, -659f, -672f, 394f, -1379f, -846f, -429f, -721f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    return 4294967295u;
}

fn func_3() -> u32 {
    let var_0 = Struct_2(-405f, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, ~4294967295u, ~global0.b, 33098u), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global0.b, global0.b, 1u, global0.b)), vec4<u32>(4294967295u, 15265u, global0.b, global0.b))), ~(abs(1u) << (1u % 32u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(global0.b, 27u)])) - _wgslsmith_f_op_f32(-1f)), ~1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(74037u, 27u)]), _wgslsmith_f_op_f32(min(-1000f, -2619f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], 416f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(45808u, 27u)], global1[_wgslsmith_index_u32(global0.b, 27u)], global1[_wgslsmith_index_u32(global0.b, 27u)]))))), -38938i);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.x)))), (global0.b >> (~(~var_0.c.b) % 32u)) << (~firstTrailingBit(countOneBits(global0.b)) % 32u));
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -274f), 11953u);
    global1 = array<f32, 27>();
    global1 = array<f32, 27>();
    return _wgslsmith_add_u32(firstTrailingBit(min(1u, ~_wgslsmith_div_u32(4294967295u, global0.b))), _wgslsmith_mult_u32(global0.b, ~global0.b));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = max(_wgslsmith_clamp_u32(~0u, _wgslsmith_mod_u32(37912u, ~(~arg_1.b)), countOneBits(global0.b)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global0.b, arg_0), arg_0), vec2<u32>(countOneBits(72352u), func_3()), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, arg_1.b, 3839u), ~33013u)), _wgslsmith_mod_vec2_u32(firstLeadingBit(select(vec2<u32>(15600u, 9027u), vec2<u32>(34282u, 4294967295u), true)), vec2<u32>(arg_0, 2330u) << ((vec2<u32>(global0.b, 1u) << (vec2<u32>(global0.b, arg_0) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    var var_1 = any(!vec3<bool>(!all(vec4<bool>(false, false, true, false)), true, true));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - 206f) - 252f), vec2<u32>(global0.b, _wgslsmith_sub_u32(countOneBits(20101u), global0.b) & _wgslsmith_sub_u32(~arg_1.b, ~29685u)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global0.b, 27u)])) * _wgslsmith_f_op_f32(round(arg_1.a))), _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(-global0.a))))), ~1u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -322f))) - global0.a), global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1104f)), -reverseBits(~_wgslsmith_div_i32(26228i, -1651i)));
    let var_3 = 1992f;
    let var_4 = _wgslsmith_div_vec2_i32(abs(u_input.a.zz) | _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.e, -var_2.e), -vec2<i32>(-2147483647i, var_2.e), min(vec2<i32>(30709i, var_2.e), select(vec2<i32>(2147483647i, u_input.a.x), u_input.a.yx, false))), select(vec2<i32>(reverseBits(u_input.a.x), -1i), u_input.a.zy, select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true), vec2<bool>(true, false))));
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = ~abs(vec4<u32>(arg_0.c.b, 4294967295u, func_4(47008u, Struct_1(-891f, arg_0.c.b)).c.b, ~_wgslsmith_clamp_u32(arg_3, arg_2.c.b, arg_3)));
    global1 = array<f32, 27>();
    var var_1 = 13540u;
    var var_2 = 1i < _wgslsmith_add_i32(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, 1i, u_input.a.x, -16456i), vec4<i32>(arg_2.e, arg_0.e, arg_0.e, arg_0.e)), _wgslsmith_add_i32(-16558i, -arg_0.e)), select(1i, arg_0.e, false));
    var var_3 = 379f;
    return Struct_1(arg_2.d.x, ~countOneBits(_wgslsmith_add_u32(abs(0u), arg_3)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = !(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = func_5(func_4(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(376f, global0.a, arg_0.x)))), Struct_1(1026f, ~func_3())), Struct_1(arg_0.x, firstLeadingBit(0u)), Struct_2(862f, _wgslsmith_mult_vec2_u32(~(vec2<u32>(4294967295u, 1u) >> (vec2<u32>(global0.b, global0.b) % vec2<u32>(32u))), vec2<u32>(global0.b, 29551u) ^ vec2<u32>(1u, 1u)), func_4(_wgslsmith_sub_u32(global0.b, global0.b | 1870u), Struct_1(_wgslsmith_f_op_f32(max(-389f, global1[_wgslsmith_index_u32(10628u, 27u)])), _wgslsmith_mod_u32(50499u, 1u))).c, _wgslsmith_f_op_vec3_f32(func_4(global0.b, func_4(global0.b, Struct_1(global1[_wgslsmith_index_u32(0u, 27u)], global0.b)).c).d - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.xyw - arg_0.ywy), arg_0.xxz, vec3<bool>(false, true, false)))), u_input.a.x), ~(~global0.b));
    let var_2 = var_1;
    var var_3 = select(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32((vec4<u32>(4294967295u, var_2.b, 0u, var_2.b) >> (vec4<u32>(var_2.b, var_2.b, global0.b, 0u) % vec4<u32>(32u))) ^ abs(vec4<u32>(global0.b, global0.b, global0.b, 28117u)), abs(~vec4<u32>(0u, 0u, 4294967295u, 0u)), select(vec4<u32>(0u, 0u, 4294967295u, var_1.b), countOneBits(vec4<u32>(var_1.b, 0u, global0.b, global0.b)), var_0.x & true)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(global0.b, var_1.b, 511u, 1314u)), vec4<u32>(4294967295u, 69001u, 12418u, var_1.b) | (vec4<u32>(var_1.b, 0u, var_1.b, var_2.b) << (vec4<u32>(global0.b, var_2.b, 39885u, 39659u) % vec4<u32>(32u))))), ~min(countOneBits(vec4<u32>(var_2.b, 0u, 1u, 4294967295u) >> (vec4<u32>(0u, global0.b, 1u, 5695u) % vec4<u32>(32u))), vec4<u32>(0u, 76178u, var_1.b, ~0u)), any(var_0.zz));
    var_0 = select(vec4<bool>(true, !all(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x, false), select(select(select(!vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), var_0.x)), vec4<bool>(!var_0.x, true, true, !var_0.x), true), !vec4<bool>(var_0.x || var_0.x, var_3.x <= 0u, !var_0.x, !var_0.x), var_0.x), any(select(select(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), vec4<bool>(false, false, true, var_0.x), var_0.x), vec4<bool>(true, select(false, true, false), any(vec2<bool>(false, false)), false), !select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(false, false, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x)))));
    return func_4(global0.b, func_5(func_4(func_3(), Struct_1(_wgslsmith_f_op_f32(636f - -460f), func_4(1u, var_2).c.b)), var_2, Struct_2(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(arg_0.x - 234f)), var_3.yw, Struct_1(_wgslsmith_f_op_f32(-global0.a), ~22979u), _wgslsmith_f_op_vec3_f32(arg_0.yyz - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global0.b, 27u)], -1450f, global1[_wgslsmith_index_u32(global0.b, 27u)]) - arg_0.wwz)), -2147483647i), 4294967295u | ~global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(u_input.a.x, countOneBits(u_input.a.x), u_input.a.x, min(_wgslsmith_div_i32(-u_input.a.x, -11158i | u_input.a.x), u_input.a.x));
    var var_1 = func_1(vec4<f32>(1792f, 307f, 1488f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + global1[_wgslsmith_index_u32(global0.b, 27u)])))));
    global0 = Struct_1(var_1.d.x, var_1.c.b);
    var_1 = func_4(var_1.b.x, Struct_1(_wgslsmith_f_op_f32(sign(-1217f)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0.b, global0.b), vec3<u32>(0u, 34241u, 3822u)) ^ (firstTrailingBit(1u) << (46724u % 32u))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1628f))))));
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -965f, _wgslsmith_f_op_f32(f32(-1f) * -816f), 534f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(701f, 288f, var_1.d.x, 763f) + _wgslsmith_div_vec4_f32(vec4<f32>(1549f, 680f, -766f, var_1.a), vec4<f32>(global0.a, global1[_wgslsmith_index_u32(54599u, 27u)], -1140f, global0.a)))))).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, _wgslsmith_sub_i32(11794i, u_input.a.x) ^ -11770i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0.zzx, firstLeadingBit(vec3<i32>(1i, 22556i, 828i))), ~(-var_0.zxx)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-10837i, 0i, var_1.e, var_1.e) << (vec4<u32>(4294967295u, 67019u, global0.b, 0u) % vec4<u32>(32u)), max(vec4<i32>(var_0.x, var_1.e, 0i, -15269i), vec4<i32>(2147483647i, -2147483647i, var_0.x, var_1.e)))));
}

