struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: array<bool, 28>;

var<private> global1: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(226f, 1906f, 412f, 1000f), vec4<f32>(-157f, 2027f, -830f, -461f), vec4<f32>(-979f, -798f, 1101f, 1000f), vec4<f32>(-1433f, -1776f, 385f, -1916f), vec4<f32>(1329f, -1696f, 1139f, 1000f), vec4<f32>(219f, -1000f, 545f, -798f), vec4<f32>(-1273f, 1339f, 782f, -2453f), vec4<f32>(113f, 1000f, 1049f, -996f), vec4<f32>(2034f, 219f, 1226f, 414f), vec4<f32>(-823f, 105f, 151f, -1634f), vec4<f32>(575f, -1000f, -358f, 500f), vec4<f32>(-1281f, 2177f, 209f, 955f), vec4<f32>(151f, 893f, -208f, 574f), vec4<f32>(876f, 1691f, -1490f, 603f), vec4<f32>(189f, -714f, -1000f, -198f), vec4<f32>(1095f, 347f, 295f, -932f), vec4<f32>(-435f, 381f, -464f, 918f), vec4<f32>(-158f, -120f, -995f, 1000f), vec4<f32>(-1000f, 846f, -461f, 692f), vec4<f32>(-358f, -512f, -189f, 415f), vec4<f32>(1098f, 2061f, 1000f, 2618f), vec4<f32>(1892f, -1382f, 1382f, 694f), vec4<f32>(1067f, -752f, 615f, -286f), vec4<f32>(-435f, -1635f, -1020f, 110f), vec4<f32>(-817f, 1455f, 341f, 597f), vec4<f32>(740f, 588f, -757f, -646f), vec4<f32>(196f, 631f, 2053f, 106f), vec4<f32>(1000f, -2292f, 143f, 350f), vec4<f32>(891f, -1344f, -595f, -1445f), vec4<f32>(-1892f, -784f, -529f, 623f), vec4<f32>(-1000f, 1030f, 1000f, -146f), vec4<f32>(-477f, 208f, 892f, 599f));

var<private> global2: vec3<u32> = vec3<u32>(8522u, 44450u, 0u);

var<private> global3: Struct_2;

var<private> global4: Struct_5 = Struct_5(vec4<u32>(0u, 81736u, 0u, 4294967295u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> i32 {
    global2 = reverseBits(global4.a.yzw);
    global2 = ~global4.a.xzw;
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_div_f32(421f, -1000f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(432f, arg_2) + vec2<f32>(arg_0.e, arg_0.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.e, -1367f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(562f, -459f), vec2<f32>(979f, arg_0.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1253f))))));
    let var_2 = Struct_4(!arg_0.a, _wgslsmith_sub_vec3_u32(~global4.a.xxw, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), u_input.b), firstTrailingBit(13668u)), 4294967295u, reverseBits(1u))), vec4<u32>(4294967295u, 7751u, firstTrailingBit(~(~4294967295u)), 63152u));
    return u_input.c;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: f32) -> vec4<u32> {
    global0 = array<bool, 28>();
    global3 = Struct_2(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], true != any(vec2<bool>(false, true)), true || (global0[_wgslsmith_index_u32(0u, 28u)] | global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), -1i, Struct_1(all(select(!vec2<bool>(false, global3.d), global3.a.xx, vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-606f, -561f) - -872f), ~func_3(global3.c, true, 1355f), ~abs(u_input.a.yz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.e, _wgslsmith_f_op_f32(-global3.c.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-201f, -1000f))))), all(vec3<bool>(global3.c.a, any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global4.a.x, 28u)])), all(select(vec2<bool>(false, true), vec2<bool>(true, false), global3.a.zy)))), 1836f);
    let var_0 = !vec4<bool>(true, 1i == firstTrailingBit(2147483647i), false, 29835u > _wgslsmith_mod_u32(~u_input.b.x, ~u_input.b.x));
    var var_1 = ~abs(vec4<i32>(-1i) * -(~vec4<i32>(arg_1, 2147483647i, -2147483647i, arg_1)));
    global3 = Struct_2(select(select(vec3<bool>(var_0.x || global0[_wgslsmith_index_u32(1u, 28u)], false, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 28u)], true), _wgslsmith_clamp_u32(1u, global4.a.x, 1u) != _wgslsmith_add_u32(0u, 4294967295u)), !(!select(var_0.wwx, var_0.wyz, vec3<bool>(var_0.x, true, true))), true), -10261i, Struct_1(global3.a.x, 752f, firstLeadingBit(~(-var_1.x)), -_wgslsmith_mod_vec2_i32(arg_0, _wgslsmith_div_vec2_i32(vec2<i32>(1i, -21237i), var_1.xz)), 1f), select(!global3.d, !(any(vec2<bool>(var_0.x, true)) == false), true), 1675f);
    return ~vec4<u32>(~_wgslsmith_add_u32(firstLeadingBit(31967u), firstLeadingBit(0u)), ~global2.x, _wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(u_input.b.x, arg_2.x, 6803u)), 4294967295u);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = select(!arg_3.a.zx, arg_3.a.xy, 1f >= global3.c.e);
    let var_1 = -1i >> (abs(0u) % 32u);
    global3 = arg_3;
    let var_2 = -440f;
    let var_3 = Struct_5(vec4<u32>(0u, ~reverseBits(41678u), arg_2.x, ~firstLeadingBit(arg_0.c.x | global2.x)));
    return arg_3;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = global3.c;
    global3 = func_4(Struct_4(global3.d, ~min(~vec3<u32>(u_input.b.x, 1u, 48619u), ~u_input.b), func_2(vec2<i32>(min(var_0.d.x, global3.c.c), max(0i, -9161i)), abs(~(-42203i)), ~_wgslsmith_mod_vec2_u32(global2.xy, u_input.b.xy), -808f)), select(global2.xz, ~(~select(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(39256u, 58878u), true)), !select(vec2<bool>(false, false), vec2<bool>(arg_1, global3.a.x), false)), firstLeadingBit(select(vec4<u32>(6457u, u_input.b.x, ~u_input.b.x, _wgslsmith_sub_u32(global4.a.x, 25038u)), vec4<u32>(~arg_0.x, 1u, ~1u, 1u), !(false || var_0.a))), Struct_2(select(vec3<bool>(var_0.a, !global0[_wgslsmith_index_u32(global2.x, 28u)], 0u > arg_0.x), !(!vec3<bool>(var_0.a, false, global3.d)), all(!global3.a.zx)), -43885i, global3.c, select(true, true, arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.b)))) - global3.c.e)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, var_0.e)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, 1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-726f, var_0.e))))));
    let var_2 = Struct_3(Struct_2(global3.a, -42294i, func_4(Struct_4(false, global4.a.zzy, global4.a), ~select(arg_0, vec2<u32>(4294967295u, 46427u), false), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 55507u), global4.a) << (global4.a % vec4<u32>(32u)), func_4(Struct_4(var_0.a, vec3<u32>(1u, arg_0.x, arg_0.x), vec4<u32>(global4.a.x, 788u, 14104u, arg_0.x)), func_2(vec2<i32>(-1i, global3.b), -1i, arg_0, var_1.x).ww, global4.a, func_4(Struct_4(false, global4.a.yzx, global4.a), vec2<u32>(76974u, global2.x), global4.a, Struct_2(global3.a, 1i, Struct_1(arg_2.x, 225f, u_input.c, u_input.a.zx, var_1.x), false, 1320f)))).c, all(func_4(Struct_4(true, u_input.b, vec4<u32>(global4.a.x, 4294967295u, 420u, 0u)), vec2<u32>(46105u, arg_0.x), vec4<u32>(1u, 12393u, global2.x, arg_0.x) ^ global4.a, func_4(Struct_4(global0[_wgslsmith_index_u32(14693u, 28u)], global4.a.wzy, global4.a), arg_0, global4.a, Struct_2(vec3<bool>(global3.d, false, false), 2147483647i, Struct_1(arg_2.x, 647f, u_input.a.x, global3.c.d, global3.e), false, global3.c.e))).a), _wgslsmith_f_op_f32(global3.e * _wgslsmith_f_op_f32(1000f * var_0.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e, var_1.x, global3.c.b)))))), Struct_2(!vec3<bool>(false, any(global3.a), any(vec4<bool>(arg_2.x, false, arg_2.x, var_0.a))), _wgslsmith_sub_i32(0i, global3.c.c), global3.c, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e + var_0.e), global3.e))), global4.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1720f, 616f)) + global3.c.b)), global3.c.b));
    var var_3 = 25657i;
    return func_4(Struct_4((~0u <= var_2.d) & (!global3.a.x & false), max(global4.a.wxx, vec3<u32>(~u_input.b.x, u_input.b.x, 4294967295u)), reverseBits(vec4<u32>(abs(23578u), ~var_2.d, u_input.b.x | global2.x, abs(arg_0.x)))), firstTrailingBit((vec2<u32>(0u, 7713u) & _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, global4.a.x), global4.a.zx)) | ~reverseBits(global4.a.yw)), ~global4.a, func_4(Struct_4(all(!var_2.a.a), u_input.b, ~global4.a), vec2<u32>(1u, ~(~global4.a.x)), firstLeadingBit(reverseBits(vec4<u32>(u_input.b.x, 45583u, global4.a.x, var_2.d))), Struct_2(global3.a, ~0i, var_2.a.c, any(vec4<bool>(true, arg_2.x, true, false)), var_1.x))).c;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_4) -> vec2<i32> {
    global1 = array<vec4<f32>, 32>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -839f), func_1(firstLeadingBit(global4.a.zy), global3.a.x, vec2<bool>(true, arg_3.a)).b)))) - func_1(_wgslsmith_mult_vec2_u32(~arg_3.c.xz, vec2<u32>(~u_input.b.x, 1u)), true, !select(select(vec2<bool>(false, arg_0), global3.a.yy, global3.a.x), !global3.a.yz, vec2<bool>(global3.a.x, arg_2.a))).b);
    var var_1 = any(vec4<bool>((0i < ~global3.b) != arg_3.a, true, global0[_wgslsmith_index_u32(0u, 28u)], func_4(arg_3, ~func_2(u_input.a.yx, arg_2.c, u_input.b.yy, arg_1.x).xw, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 30044u, 7732u), ~global4.a), func_4(Struct_4(true, arg_3.b, arg_3.c), global2.xx, vec4<u32>(4294967295u, 14047u, global4.a.x, u_input.b.x), Struct_2(global3.a, arg_2.c, arg_2, arg_0, global3.c.e))).a.x));
    let var_2 = func_1(global2.yx, true, select(!global3.a.xy, func_4(Struct_4(arg_0, ~arg_3.c.yxy, ~vec4<u32>(arg_3.c.x, 15978u, global4.a.x, arg_3.c.x)), countOneBits(~vec2<u32>(31017u, global4.a.x)), ~vec4<u32>(global4.a.x, arg_3.c.x, 1u, 4294967295u), Struct_2(global3.a, max(-9372i, -38114i), Struct_1(false, global3.e, 1i, vec2<i32>(global3.b, 0i), arg_2.b), true, _wgslsmith_f_op_f32(-arg_1.x))).a.xx, _wgslsmith_f_op_f32(exp2(arg_2.b)) < -1000f));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -729f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + arg_1.x) * global3.c.b) + global3.e)), _wgslsmith_f_op_f32(f32(-1f) * -1374f));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_5(global3.d, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.c.b, global3.c.b, _wgslsmith_div_f32(-486f, global3.c.b)))), func_1(~_wgslsmith_mult_vec2_u32(global4.a.yx, u_input.b.zx), !(true & global0[_wgslsmith_index_u32(global2.x, 28u)]), select(select(global3.a.xz, vec2<bool>(global3.a.x, global0[_wgslsmith_index_u32(0u, 28u)]), global3.a.x), global3.a.zz, true)), Struct_4(true, ~(~global4.a.xxw), vec4<u32>(global4.a.x, global4.a.x, global2.x, global2.x) & global4.a)), vec2<i32>(global3.b, _wgslsmith_add_i32(-global3.c.d.x, -1i)));
    global2 = u_input.b;
    let var_1 = global3.a.zy;
    global1 = array<vec4<f32>, 32>();
    let var_2 = Struct_3(func_4(Struct_4(!func_4(Struct_4(global0[_wgslsmith_index_u32(global2.x, 28u)], vec3<u32>(1u, 36301u, 1u), vec4<u32>(4294967295u, 64782u, 4294967295u, 36679u)), vec2<u32>(3832u, u_input.b.x), global4.a, Struct_2(global3.a, var_0.x, Struct_1(true, 1509f, 6300i, vec2<i32>(global3.c.c, 14688i), global3.e), true, 476f)).d, vec3<u32>(~global4.a.x, 0u, u_input.b.x), ~(global4.a & vec4<u32>(1u, 44512u, 4294967295u, global2.x))), max(global2.zz, global4.a.yx << (_wgslsmith_mult_vec2_u32(u_input.b.zy, vec2<u32>(7175u, 24533u)) % vec2<u32>(32u))), global4.a, func_4(Struct_4(true, _wgslsmith_add_vec3_u32(u_input.b, u_input.b), _wgslsmith_div_vec4_u32(global4.a, global4.a)), select(vec2<u32>(global4.a.x, u_input.b.x), vec2<u32>(35741u, global2.x), global3.a.xz), ~global4.a, func_4(Struct_4(true, u_input.b, global4.a), u_input.b.yz, vec4<u32>(49459u, global4.a.x, 4294967295u, global2.x), func_4(Struct_4(true, vec3<u32>(global4.a.x, u_input.b.x, 0u), vec4<u32>(0u, global2.x, 1785u, 40108u)), vec2<u32>(46246u, global4.a.x), global4.a, Struct_2(vec3<bool>(var_1.x, true, global3.d), u_input.c, Struct_1(false, global3.e, 55230i, vec2<i32>(global3.c.d.x, u_input.a.x), 360f), false, 1229f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(576f, 331f, 533f))))) - vec3<f32>(-619f, global3.e, func_1(global4.a.zy, global3.c.a, global3.a.xx).b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(716f, 183f, global3.e), vec3<f32>(global3.c.b, -218f, global3.e)))))), -(~1i) != func_1(~global2.zz, any(global3.a.xy), vec2<bool>(global3.d, global3.d)).c)), func_4(Struct_4(false, vec3<u32>(max(1u, u_input.b.x), global2.x >> (1u % 32u), ~10114u), _wgslsmith_mod_vec4_u32(global4.a, min(vec4<u32>(1u, global4.a.x, global4.a.x, global4.a.x), global4.a))), vec2<u32>(abs(global2.x << (global2.x % 32u)), u_input.b.x), ~(max(global4.a, global4.a) >> (~vec4<u32>(global2.x, u_input.b.x, 0u, 14500u) % vec4<u32>(32u))), Struct_2(vec3<bool>(true, true, true), func_5(all(global3.a.xz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, global3.e, 1114f)), global3.c, Struct_4(global3.a.x, u_input.b, vec4<u32>(67346u, 20818u, u_input.b.x, global4.a.x))).x, func_1(select(u_input.b.xx, global4.a.xy, false), global3.a.x, !global3.a.xz), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f), _wgslsmith_f_op_f32(-global3.e)))), 4294967295u, func_1(u_input.b.yx ^ vec2<u32>(u_input.b.x, 2916u | u_input.b.x), var_1.x, vec2<bool>(func_1(vec2<u32>(u_input.b.x, global2.x), var_1.x, vec2<bool>(false, false)).e == -991f, true)).b);
    global2 = vec3<u32>(37339u, u_input.b.x, u_input.b.x);
    let var_3 = Struct_4(global0[_wgslsmith_index_u32(62648u, 28u)], firstTrailingBit(min(abs(vec3<u32>(4294967295u, 0u, 5362u) << (vec3<u32>(global2.x, 1u, global2.x) % vec3<u32>(32u))), global4.a.zwx)), vec4<u32>(~1u, global2.x, ~var_2.d, firstLeadingBit(min(~90003u, global4.a.x))));
    global4 = Struct_5(min(~_wgslsmith_add_vec4_u32(func_2(u_input.a.zz, 2147483647i, vec2<u32>(15825u, var_3.c.x), -851f), global4.a | var_3.c), global4.a));
    let x = u_input.a;
    s_output = StorageBuffer(~select(firstTrailingBit(max(vec4<i32>(39546i, var_2.a.b, -1i, var_0.x), vec4<i32>(-2147483647i, var_2.a.c.d.x, 0i, u_input.c))), vec4<i32>(~(-15036i), -2147483647i, reverseBits(u_input.c), _wgslsmith_mult_i32(0i, -34025i)), var_2.a.c.a));
}

