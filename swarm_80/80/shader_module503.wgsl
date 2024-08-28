struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 70861i;

var<private> global1: vec3<f32> = vec3<f32>(-1000f, 1589f, 670f);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(4294967295u, vec4<f32>(982f, -1577f, -417f, -101f)), Struct_1(54986u, vec4<f32>(-1030f, 846f, 1232f, 1253f)), Struct_1(36716u, vec4<f32>(-200f, 219f, -258f, -697f)), Struct_1(1u, vec4<f32>(-1264f, 2111f, -1000f, 1000f)), Struct_1(16721u, vec4<f32>(-1244f, 1295f, 1050f, 1013f)), Struct_1(4294967295u, vec4<f32>(-1624f, 408f, -213f, 920f)), Struct_1(24423u, vec4<f32>(902f, 1000f, -232f, -256f)), Struct_1(49715u, vec4<f32>(-1695f, 127f, -634f, 1116f)), Struct_1(2889u, vec4<f32>(-1082f, 1000f, -391f, 1092f)), Struct_1(4294967295u, vec4<f32>(192f, -1212f, 370f, -792f)), Struct_1(55084u, vec4<f32>(-909f, -898f, -443f, 1022f)), Struct_1(73967u, vec4<f32>(729f, -632f, 424f, -1066f)), Struct_1(23824u, vec4<f32>(-1032f, 1727f, -2031f, 1000f)), Struct_1(4294967295u, vec4<f32>(-1338f, 1364f, 305f, -630f)), Struct_1(1u, vec4<f32>(-285f, -369f, -466f, -1267f)), Struct_1(42368u, vec4<f32>(-1209f, 537f, -1000f, -202f)), Struct_1(0u, vec4<f32>(194f, -432f, 726f, 120f)), Struct_1(1u, vec4<f32>(836f, 339f, -2344f, 780f)), Struct_1(51980u, vec4<f32>(647f, -1239f, -1000f, -414f)), Struct_1(13040u, vec4<f32>(-540f, 2168f, -231f, -1514f)), Struct_1(55907u, vec4<f32>(134f, 358f, 1127f, -2276f)), Struct_1(40386u, vec4<f32>(-122f, 997f, -1000f, -1000f)), Struct_1(1u, vec4<f32>(905f, -2723f, -2191f, 2096f)), Struct_1(0u, vec4<f32>(542f, -1537f, 290f, 864f)), Struct_1(0u, vec4<f32>(1027f, 128f, 242f, -431f)), Struct_1(1u, vec4<f32>(-1234f, 1546f, -1113f, -822f)), Struct_1(0u, vec4<f32>(939f, 398f, -1836f, -912f)), Struct_1(6844u, vec4<f32>(-406f, -444f, -1041f, 1610f)), Struct_1(24886u, vec4<f32>(-432f, -340f, 1000f, 1092f)));

var<private> global3: array<bool, 21> = array<bool, 21>(false, false, false, true, true, true, false, true, true, false, true, false, false, false, false, false, false, false, true, true, true);

var<private> global4: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = select(!vec3<bool>(global3[_wgslsmith_index_u32(~u_input.a.x, 21u)], firstTrailingBit(31109u) > u_input.a.x, true), !(!select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global3[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(26568u, 21u)]), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], true, false))), arg_2.c.b.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1304f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1480f - global1.x), -152f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(1222f - arg_2.c.b.x)))), arg_2.c.b.x)));
    var var_2 = arg_2.a.yz;
    let var_3 = arg_2;
    var_2 = vec2<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.a.x, 53414u), u_input.a.x)) ^ (max(_wgslsmith_sub_vec2_u32(abs(u_input.a.zy), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_2.x), u_input.a.xy)), abs(u_input.a.yz) >> (vec2<u32>(var_2.x, 160u) % vec2<u32>(32u))) >> (var_3.a.xy % vec2<u32>(32u)));
    return countOneBits(select(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, var_3.a.x, var_2.x), var_3.a.xzx), abs(895u), false));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = -401f;
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(1u >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(firstLeadingBit(u_input.a.x), 0u, 0u)), (18870u & min(u_input.a.x, ~0u)) | _wgslsmith_div_u32(u_input.a.x, u_input.a.x >> (countOneBits(63408u) % 32u)), ~u_input.a.x, u_input.a.x);
    var var_2 = Struct_2(abs(var_1), 4013u, Struct_1(~_wgslsmith_mod_u32(func_3(41985i, vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_2(vec4<u32>(10533u, u_input.a.x, 4294967295u, var_1.x), 12886u, Struct_1(21097u, vec4<f32>(1464f, -230f, arg_0, -909f)))), min(u_input.a.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -1145f, 727f) + vec4<f32>(var_0, 193f, 1322f, global1.x))))))));
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(20828u, var_1.x), ~abs(u_input.a.x));
    var var_4 = !vec4<bool>(global3[_wgslsmith_index_u32(var_1.x, 21u)], abs(firstLeadingBit(u_input.b)) == firstTrailingBit(-u_input.b), global3[_wgslsmith_index_u32(func_3(u_input.b, vec3<i32>(u_input.b, u_input.b, countOneBits(-1i)), Struct_2(vec4<u32>(27529u, var_1.x, var_3.x, 2304u), ~4294967295u, global2[_wgslsmith_index_u32(13349u, 29u)])), 21u)], false);
    return var_1.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    global1 = arg_2.b.ywz;
    var var_0 = Struct_2(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_2.a, u_input.a.x, 1u, 14103u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_2.a, arg_2.a), vec4<u32>(30374u, 1u, u_input.a.x, 10903u)), ~arg_2.a, 54424u, max(101859u, 14570u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 44107u, 4294967295u) ^ max(vec4<u32>(u_input.a.x, 78878u, 0u, 48940u), vec4<u32>(0u, 4294967295u, 34404u, u_input.a.x)), vec4<u32>(33601u, u_input.a.x, 49498u, 1u) | _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.a, 4294967295u, 35088u, 27893u), vec4<u32>(arg_2.a, 11914u, 73790u, 0u)))), ~1u, arg_2);
    global4 = ~(~arg_1);
    global3 = array<bool, 21>();
    var var_1 = ~vec3<u32>(~(~select(16763u, 1u, global3[_wgslsmith_index_u32(u_input.a.x, 21u)])), ~(~func_2(-358f)), abs(firstTrailingBit(76846u)));
    return Struct_2(var_0.a, var_1.x, Struct_1(12591u, var_0.c.b));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = Struct_4(func_1(arg_1.a.b.wxz, ~(-arg_2), func_1(arg_3.c.b.wxz, -76774i, arg_3.c, select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_1.d.x, true), arg_1.d.x)).c, vec3<bool>(all(select(vec3<bool>(global3[_wgslsmith_index_u32(20691u, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)], false), vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 21u)], false), arg_1.d.x)), arg_1.b.x > arg_2, !global3[_wgslsmith_index_u32(4294967295u, 21u)])), u_input.a);
    var var_1 = var_0.a;
    var var_2 = arg_1.c;
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(-var_1.c.b.xwy), u_input.b, arg_1.a, vec3<bool>(!any(!vec3<bool>(true, arg_1.d.x, global3[_wgslsmith_index_u32(1u, 21u)])), true && select(arg_1.b.x < arg_1.b.x, global3[_wgslsmith_index_u32(arg_1.a.a, 21u)] & global3[_wgslsmith_index_u32(4294967295u, 21u)], false), all(select(select(vec4<bool>(global3[_wgslsmith_index_u32(arg_3.b, 21u)], true, true, true), vec4<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 21u)], false), vec4<bool>(arg_1.d.x, true, arg_1.d.x, true)), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 21u)], true, false, global3[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a.x, 21u)], true)))));
    var_0 = Struct_4(arg_3, _wgslsmith_mult_vec3_u32(arg_3.a.wyy, max(var_0.b, vec3<u32>(1u, arg_3.a.x << (4294967295u % 32u), ~1u))));
    return -_wgslsmith_sub_vec3_i32(min(~vec3<i32>(arg_1.b.x, arg_2, u_input.b), _wgslsmith_mult_vec3_i32(max(arg_1.b, vec3<i32>(arg_1.b.x, arg_1.b.x, -21656i)), -arg_1.b)), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1096f - -258f))), 1191f, _wgslsmith_f_op_f32(f32(-1f) * -1558f))));
    let var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(func_4(-1223f, Struct_3(Struct_1(15542u, vec4<f32>(global1.x, global1.x, global1.x, -548f)), vec3<i32>(21057i, 1i, u_input.b), u_input.a.x, vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], global3[_wgslsmith_index_u32(1u, 21u)])), u_input.b, func_1(vec3<f32>(global1.x, 883f, global1.x), u_input.b, global2[_wgslsmith_index_u32(59544u, 29u)], vec3<bool>(false, false, true))), vec3<i32>(u_input.b, -2147483647i, 0i))) | ~firstLeadingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, u_input.b, 22258i), vec3<i32>(0i, u_input.b, u_input.b)));
    var var_1 = vec4<bool>(select(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], global3[_wgslsmith_index_u32(~u_input.a.x, 21u)] && true, global3[_wgslsmith_index_u32(u_input.a.x, 21u)]) || all(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 21u)], true, true)), any(!select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 21u)]), global3[_wgslsmith_index_u32(u_input.a.x, 21u)])) && global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 16359u), 21u)], _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(var_0.x, -1i, 0i, var_0.x))), -max(vec4<i32>(0i, 1i, -1i, u_input.b), vec4<i32>(1i, 1i, 2147483647i, 2147483647i))) <= var_0.x, global3[_wgslsmith_index_u32(~14037u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 43791u, u_input.a.x, ~0u), ~vec4<u32>(7823u, u_input.a.x, 0u, u_input.a.x)), 21u)]);
    let var_2 = func_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-899f + _wgslsmith_f_op_f32(global1.x * 919f)))), -365f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2109f + 709f)))), abs(-firstLeadingBit(~u_input.b)), global2[_wgslsmith_index_u32(~u_input.a.x, 29u)], var_1.wzy).c;
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.xz, vec2<f32>(global1.x, 451f)), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(global1.x, -1689f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-247f, _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, func_1(_wgslsmith_f_op_vec3_f32(step(var_2.b.zzy, vec3<f32>(308f, global1.x, global1.x))), _wgslsmith_clamp_i32(u_input.b, 0i, var_0.x), Struct_1(u_input.a.x, vec4<f32>(314f, -397f, -628f, var_2.b.x)), vec3<bool>(false, var_1.x, true)).b, abs(~14081u), max(func_2(global1.x), u_input.a.x)), _wgslsmith_add_vec4_u32(~(vec4<u32>(var_2.a, var_2.a, 42191u, 0u) << (vec4<u32>(60715u, 0u, 1500u, 0u) % vec4<u32>(32u))), func_1(_wgslsmith_f_op_vec3_f32(var_2.b.zwx + var_2.b.wwx), _wgslsmith_add_i32(-1604i, u_input.b), func_1(var_2.b.zyz, var_0.x, Struct_1(u_input.a.x, var_2.b), vec3<bool>(global3[_wgslsmith_index_u32(19931u, 21u)], true, true)).c, !vec3<bool>(global3[_wgslsmith_index_u32(70081u, 21u)], false, true)).a)), var_0.x, _wgslsmith_f_op_vec3_f32(var_2.b.xzy + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_3.x, -1468f))));
}

