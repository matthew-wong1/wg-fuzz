struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<f32>(-322f, 283f, -1774f), vec2<u32>(61553u, 13044u)), Struct_1(vec3<f32>(-939f, 316f, 608f), vec2<u32>(20648u, 25875u)), Struct_1(vec3<f32>(-1383f, 396f, -280f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<f32>(-2699f, 401f, 516f), vec2<u32>(0u, 66583u)), Struct_1(vec3<f32>(494f, 817f, 1598f), vec2<u32>(1360u, 25898u)), Struct_1(vec3<f32>(-1352f, 651f, 636f), vec2<u32>(111104u, 4294967295u)), Struct_1(vec3<f32>(-489f, -2327f, -1833f), vec2<u32>(6111u, 45911u)), Struct_1(vec3<f32>(-207f, 1752f, -1440f), vec2<u32>(1u, 1u)), Struct_1(vec3<f32>(751f, 234f, 517f), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<f32>(-2042f, -1274f, 235f), vec2<u32>(5427u, 18231u)), Struct_1(vec3<f32>(-127f, 277f, 1594f), vec2<u32>(28283u, 1u)), Struct_1(vec3<f32>(-637f, 1245f, -1313f), vec2<u32>(18238u, 17497u)), Struct_1(vec3<f32>(-492f, -767f, -1900f), vec2<u32>(1u, 10628u)), Struct_1(vec3<f32>(2346f, 252f, -1468f), vec2<u32>(1u, 1u)), Struct_1(vec3<f32>(-1483f, -1016f, 1780f), vec2<u32>(4294967295u, 54871u)), Struct_1(vec3<f32>(-227f, 454f, -548f), vec2<u32>(60702u, 8082u)), Struct_1(vec3<f32>(406f, 468f, -2034f), vec2<u32>(4294967295u, 11943u)), Struct_1(vec3<f32>(1055f, 562f, 362f), vec2<u32>(4294967295u, 23495u)), Struct_1(vec3<f32>(722f, 1131f, -1651f), vec2<u32>(0u, 0u)), Struct_1(vec3<f32>(-1884f, 1826f, 1000f), vec2<u32>(4294967295u, 58073u)), Struct_1(vec3<f32>(1290f, -156f, 856f), vec2<u32>(45461u, 1u)), Struct_1(vec3<f32>(-420f, -1305f, -163f), vec2<u32>(0u, 0u)), Struct_1(vec3<f32>(636f, 368f, 1529f), vec2<u32>(6139u, 1u)));

var<private> global1: bool = true;

var<private> global2: i32 = -44489i;

var<private> global3: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-826f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(918f + 759f), _wgslsmith_f_op_f32(select(-1469f, 733f, true)), global3.x))), _wgslsmith_f_op_f32(sign(939f)), global3.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, 197f)))) - _wgslsmith_f_op_f32(trunc(630f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(3931f))))));
    global0 = array<Struct_1, 23>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f * 800f), 133f, -392f)), ~arg_0.zx), vec3<u32>(firstTrailingBit(arg_0.x), 34197u, arg_0.x), 2147483647i, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u >> (arg_0.x % 32u), arg_0.x) | abs(arg_0.x), 23u)]);
    return false & all(vec3<bool>(global3.x, 4294967295u < ~arg_0.x, any(vec4<bool>(global3.x, true, global3.x, true))));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    var var_0 = vec3<bool>(arg_0 < -_wgslsmith_mult_i32(-u_input.a.x, arg_0), func_3(vec4<u32>(min(~4294967295u, ~4294967295u), 9706u, ~min(4294967295u, 0u), 2123u)), false);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(707f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1017f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -958f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(260f + -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1564f, 1000f))), -189f);
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(0u, 23u)], reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(26348u, 0u, 35348u), max(vec3<u32>(44979u, 0u, 29338u), vec3<u32>(2822u, 1u, 22158u)))), u_input.a.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-716f * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1248f) * -1023f)), vec2<u32>(~1u, 4294967295u)));
    var var_3 = Struct_4(var_2.d.a.x, -2032f);
    global3 = select(arg_1.yw, var_0.xx, ~var_2.b.x <= ~var_2.d.b.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -410f);
}

fn func_1() -> Struct_3 {
    global1 = true;
    let var_0 = vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 65513i, u_input.a.x, u_input.a.x) >> (vec4<u32>(4294967295u, 2071u, 0u, 135646u) % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.a.x, 0i, 2147483647i, -2147483647i))) ^ ~u_input.a.x, _wgslsmith_add_i32(~1i, -1i & _wgslsmith_sub_i32(_wgslsmith_mult_i32(104120i, u_input.a.x), u_input.a.x)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(790f + -1000f), _wgslsmith_f_op_f32(select(-1254f, -768f, global3.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-2147483647i, vec4<bool>(global3.x, false, true, global3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1658f)) - _wgslsmith_f_op_f32(f32(-1f) * -163f)) + _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(664f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) - _wgslsmith_f_op_f32(max(1595f, 533f))))), abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 33567u, 68959u, 32518u), vec4<u32>(33603u, 0u, 63238u, 0u)), ~1u) ^ reverseBits(vec2<u32>(0u, 9621u))));
    global3 = select(!vec2<bool>(global3.x, var_1.b.x <= var_1.b.x), !select(select(vec2<bool>(false, false), select(vec2<bool>(global3.x, true), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x)), vec2<bool>(global3.x, false)), select(vec2<bool>(false, global3.x), select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(true, global3.x)), vec2<bool>(false, true)), select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, true), vec2<bool>(false, global3.x))), func_3(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_1.b.x, 23275u, var_1.b.x, var_1.b.x), vec4<u32>(var_1.b.x, 4294967295u, 4294967295u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(39464u, 4294967295u, var_1.b.x, 4294967295u), vec4<u32>(39874u, 4294967295u, 21477u, var_1.b.x)))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(113f, -222f) * vec2<f32>(-364f, _wgslsmith_f_op_f32(step(var_1.a.x, 359f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -675f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(abs(612f))))));
    return Struct_3(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.b.x, var_1.b.x >> (var_1.b.x % 32u)), var_1.b.x | 4294967295u), 1u, var_1.b.x << (var_1.b.x % 32u), 4294967295u));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = select(vec2<bool>(!global3.x, global3.x), arg_3.zy, 26131i >= (-(~28427i) | ~arg_2.x));
    return func_1();
}

fn func_5(arg_0: Struct_3) -> f32 {
    var var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(857f)) * _wgslsmith_f_op_f32(-2167f + -1000f)), 808f, _wgslsmith_f_op_f32(select(1046f, -877f, !global3.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-859f, 640f, 1213f) + vec3<f32>(-1048f, -397f, 103f)))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(404f + -159f), -810f, var_1.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(632f, var_1.x, var_1.x) - vec3<f32>(-732f, var_1.x, 1125f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, -358f, -1000f)))))));
    global2 = _wgslsmith_dot_vec4_i32(~(-(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -19115i)) << (vec4<u32>(4294967295u, arg_0.a.x, 0u, arg_0.a.x) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_mult_i32(-2147483647i >> (arg_0.a.x % 32u), i32(-1i) * -u_input.a.x), -1i, reverseBits(-1i), min(-24821i, -2147483647i)));
    let var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-549f - -478f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-742f * var_1.x)))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = -arg_2 ^ min(_wgslsmith_mod_i32(~arg_2, -(~u_input.a.x)), ~u_input.a.x);
    var var_1 = vec4<u32>(1u, arg_0.a.x >> (firstTrailingBit(_wgslsmith_mult_u32(arg_0.a.x, 1u)) % 32u), ~(~(~_wgslsmith_add_u32(1u, arg_1.a.x))), firstTrailingBit(arg_0.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, arg_3)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, arg_3, -1637f, arg_3))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, arg_3, arg_3, -1335f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, 2200f, arg_3, 378f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, 609f, arg_3, -204f)))), vec4<f32>(arg_3, -1000f, arg_3, arg_3))), !(!vec4<bool>(!global3.x, global3.x != true, global3.x, global3.x))));
    let var_3 = select(!vec3<bool>(!all(vec4<bool>(true, false, false, true)), !(global3.x && global3.x), any(select(vec2<bool>(false, global3.x), vec2<bool>(true, global3.x), vec2<bool>(true, global3.x)))), select(!vec3<bool>(true, func_3(vec4<u32>(4631u, 1u, 14467u, 9080u)), global3.x), vec3<bool>(!global3.x && global3.x, all(vec4<bool>(true, true, true, false)), any(!vec2<bool>(global3.x, global3.x))), !vec3<bool>(global3.x, global3.x, global3.x)), true);
    let var_4 = vec3<f32>(-1695f, var_2.x, _wgslsmith_f_op_f32(round(1734f)));
    return Struct_1(_wgslsmith_div_vec3_f32(var_4, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1808f, -1712f, arg_3) + var_2.yww), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, arg_3))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1213f, 536f, var_2.x)) * _wgslsmith_f_op_vec3_f32(max(var_2.yyy, vec3<f32>(arg_3, 277f, -1000f)))))), max(vec2<u32>(1u, max(arg_0.a.x, ~arg_1.a.x)), min(select(func_4(4294967295u, Struct_3(vec4<u32>(arg_0.a.x, var_1.x, arg_1.a.x, 7298u)), u_input.a.xy, vec4<bool>(true, false, true, true)).a.xz, vec2<u32>(42808u, arg_0.a.x), var_3.x), var_1.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_6(Struct_3((_wgslsmith_clamp_vec4_u32(vec4<u32>(53492u, 63132u, 4294967295u, 13084u), vec4<u32>(7454u, 0u, 0u, 0u), vec4<u32>(9496u, 18873u, 1u, 14337u)) << (vec4<u32>(37080u, 31032u, 1u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), Struct_3(vec4<u32>(1u, 1u, 1u, 1u)), -3022i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(4988u, func_1(), ~u_input.a.zx, vec4<bool>(global3.x, global3.x, global3.x, true)))) - -156f));
    global0 = array<Struct_1, 23>();
    let var_2 = all(vec3<bool>(all(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(true, true, global3.x), vec3<bool>(true, true, global3.x))) && all(!vec4<bool>(false, false, global3.x, global3.x)), func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, 18982u, var_1.b.x), vec4<u32>(var_1.b.x, var_1.b.x, 28789u, var_1.b.x)) >> (vec4<u32>(var_1.b.x, 1u, 47640u, 4853u) % vec4<u32>(32u))), true));
    let var_3 = firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, ~(_wgslsmith_clamp_i32(var_0, 2812i, var_0) >> (~1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.b.x, _wgslsmith_mod_u32(~_wgslsmith_add_u32(42095u, var_1.b.x), min(15009u, 0u)), var_1.b.x));
}

