struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<i32>(298i, 2147483647i, i32(-2147483648)), vec4<f32>(1218f, -295f, 978f, -756f)), Struct_2(vec3<i32>(-19503i, 2683i, i32(-2147483648)), vec4<f32>(-507f, -360f, -1258f, -287f)), Struct_2(vec3<i32>(0i, 2147483647i, -25328i), vec4<f32>(1772f, -981f, -1915f, 1000f)), Struct_2(vec3<i32>(i32(-2147483648), 0i, -1i), vec4<f32>(178f, 700f, -1000f, 559f)), Struct_2(vec3<i32>(0i, 67743i, -10014i), vec4<f32>(-526f, -180f, -1000f, -1383f)), Struct_2(vec3<i32>(45195i, 1i, -6532i), vec4<f32>(-1161f, -1000f, -479f, -1355f)), Struct_2(vec3<i32>(-8456i, 2147483647i, -43930i), vec4<f32>(-1000f, -281f, 500f, 1194f)), Struct_2(vec3<i32>(38316i, -41272i, i32(-2147483648)), vec4<f32>(-822f, 300f, -590f, 692f)), Struct_2(vec3<i32>(13752i, 2147483647i, -1i), vec4<f32>(1376f, 854f, -685f, 973f)), Struct_2(vec3<i32>(-16174i, 39472i, -11008i), vec4<f32>(-2644f, -1462f, 812f, -1257f)), Struct_2(vec3<i32>(-103993i, 52947i, 1i), vec4<f32>(311f, 866f, 1435f, -229f)), Struct_2(vec3<i32>(0i, -41971i, i32(-2147483648)), vec4<f32>(171f, -1944f, -276f, 1128f)), Struct_2(vec3<i32>(14017i, 2147483647i, 0i), vec4<f32>(-1000f, 1194f, -436f, 495f)), Struct_2(vec3<i32>(2147483647i, -86109i, 1i), vec4<f32>(1008f, -1166f, 1929f, -1669f)), Struct_2(vec3<i32>(2147483647i, 36477i, 22172i), vec4<f32>(-1169f, -1967f, -209f, -356f)), Struct_2(vec3<i32>(1i, 3030i, -1i), vec4<f32>(-702f, 999f, 631f, -2192f)), Struct_2(vec3<i32>(-1i, 0i, i32(-2147483648)), vec4<f32>(1000f, 576f, -1635f, 1887f)), Struct_2(vec3<i32>(28462i, 0i, -3041i), vec4<f32>(1277f, 1000f, -537f, -361f)), Struct_2(vec3<i32>(-3128i, -29360i, -64968i), vec4<f32>(-194f, -785f, 473f, 2089f)), Struct_2(vec3<i32>(1i, 86858i, 42970i), vec4<f32>(219f, 1138f, -306f, -304f)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec4<f32>(-1429f, 1362f, 1249f, 345f)), Struct_2(vec3<i32>(-1i, 25017i, -21752i), vec4<f32>(-623f, 1057f, -1000f, 1225f)), Struct_2(vec3<i32>(2147483647i, 2147483647i, 1i), vec4<f32>(1000f, -1337f, -1436f, -521f)), Struct_2(vec3<i32>(-39125i, 1i, -1i), vec4<f32>(-1000f, 878f, 1407f, 1409f)), Struct_2(vec3<i32>(21250i, 0i, 1i), vec4<f32>(-1097f, -1024f, 214f, -1033f)));

var<private> global1: vec2<i32>;

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(vec3<i32>(-1i, -20323i, 1i), vec4<f32>(2079f, 518f, -543f, 1876f));

var<private> global4: vec2<f32> = vec2<f32>(606f, -514f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(u_input.a << (max(26022u, u_input.d.x) % 32u), global2.b);
    global4 = var_0.b.yw;
    var var_1 = global2.b.x;
    var var_2 = var_0.b;
    global1 = _wgslsmith_add_vec2_i32(u_input.c, global3.a.zz);
    return 68644i;
}

fn func_2() -> Struct_2 {
    global1 = _wgslsmith_sub_vec2_i32(abs(select(_wgslsmith_add_vec2_i32(-vec2<i32>(global3.a.x, global3.a.x), global2.a.zx), ~_wgslsmith_sub_vec2_i32(u_input.c, global3.a.yx), true || any(vec4<bool>(false, false, false, false)))), global2.a.xz);
    let var_0 = Struct_1(func_3(), global3.b);
    let var_1 = Struct_2(select(-vec3<i32>(select(-1i, -25591i, false), ~0i, 1i), abs(vec3<i32>(0i, 38939i, abs(-29337i))), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1514f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-294f, global2.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1613f))));
    var var_2 = var_0;
    global1 = ~countOneBits(vec2<i32>(-21463i, _wgslsmith_div_i32(firstTrailingBit(0i), _wgslsmith_mod_i32(66446i, var_0.a))));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec2<f32> {
    let var_0 = arg_1;
    let var_1 = u_input.e;
    global3 = Struct_2(vec3<i32>(-2147483647i, _wgslsmith_div_i32(~9842i, -1i) << ((~21u ^ (77699u >> (u_input.e.x % 32u))) % 32u), global2.a.x), vec4<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.b.x * 484f))), _wgslsmith_f_op_f32(ceil(-410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.b.x * global2.b.x), _wgslsmith_f_op_f32(max(global3.b.x, 130f)))))));
    global4 = global3.b.xw;
    let var_2 = Struct_1(abs(_wgslsmith_dot_vec2_i32(min(vec2<i32>(global2.a.x, global2.a.x), global2.a.zz), vec2<i32>(global2.a.x, u_input.c.x) ^ vec2<i32>(2147483647i, 12803i))) | -u_input.a, global2.b);
    return _wgslsmith_f_op_vec2_f32(-global2.b.yw);
}

fn func_1() -> i32 {
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(global2.b.x, func_2(), !(global3.b.x >= -1939f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2().b.wx + _wgslsmith_f_op_vec2_f32(global3.b.xx + vec2<f32>(-873f, global2.b.x)))) + global2.b.wy));
    var var_0 = Struct_1(-global3.a.x, global2.b);
    var var_1 = global4.x;
    global4 = vec2<f32>(1005f, _wgslsmith_f_op_f32(sign(global3.b.x)));
    let var_2 = func_2();
    return var_2.a.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = func_2();
    global3 = global0[_wgslsmith_index_u32(57321u, 25u)];
    let var_1 = vec4<bool>(all(vec3<bool>(u_input.e.x >= 1u, 2147483647i > _wgslsmith_dot_vec4_i32(vec4<i32>(-9401i, 4902i, 1i, 2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, 36740i, 2147483647i)), !all(vec2<bool>(true, false)))), 1342f > _wgslsmith_f_op_f32(arg_0.x - 1139f), true, !(true & all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var var_2 = _wgslsmith_div_vec3_i32(-((_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, u_input.c.x, global3.a.x), vec3<i32>(arg_2.x, 15127i, 14539i)) << (u_input.b % vec3<u32>(32u))) >> ((u_input.e >> (~u_input.d.ywz % vec3<u32>(32u))) % vec3<u32>(32u))), select(((global3.a | vec3<i32>(global2.a.x, global1.x, 19149i)) << (max(u_input.d.xzy, vec3<u32>(u_input.b.x, arg_1.x, arg_1.x)) % vec3<u32>(32u))) ^ ((vec3<i32>(global1.x, global2.a.x, -1i) << (vec3<u32>(1u, u_input.d.x, 8057u) % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_i32(vec3<i32>(global3.a.x, 11219i, global3.a.x), vec3<i32>(var_0.a.x, u_input.a, 4956i), global3.a)), -firstLeadingBit(var_0.a), select(var_1.wxz, var_1.ywx, true)));
    var var_3 = Struct_1(u_input.c.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-325f * var_0.b.x), _wgslsmith_f_op_f32(1626f + global3.b.x))), arg_0.x, arg_0.x, var_0.b.x));
    return global0[_wgslsmith_index_u32(arg_1.x, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(firstLeadingBit(countOneBits(_wgslsmith_mod_vec2_u32(u_input.d.zz, u_input.b.zy) >> (~u_input.e.yx % vec2<u32>(32u)))), ~firstLeadingBit(vec2<u32>(firstLeadingBit(70249u), _wgslsmith_dot_vec4_u32(vec4<u32>(763u, u_input.b.x, u_input.d.x, 38111u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.d.x)))));
    global2 = func_5(_wgslsmith_f_op_vec2_f32(select(global2.b.yy, _wgslsmith_div_vec2_f32(vec2<f32>(-250f, global2.b.x), vec2<f32>(_wgslsmith_f_op_f32(-global3.b.x), -1342f)), all(vec4<bool>(true, true, true, true)))), vec2<u32>(1262u, ~21627u), -max(vec2<i32>(global1.x, func_1()), global3.a.yx));
    let var_1 = vec4<bool>(all(vec2<bool>(true, true)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), vec3<bool>(true, false, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true))), any(vec2<bool>(true, true)), true && (585f <= func_5(vec2<f32>(global3.b.x, 1000f), u_input.b.zx, -global2.a.xx).b.x));
    let var_2 = Struct_1(1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-560f, global2.b.x, 218f, -721f) - global3.b))) - global3.b)));
    var var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, ~(-global3.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(31577i, u_input.c.x), global3.a.yy) & -42666i, 2147483647i), _wgslsmith_mod_vec4_i32(~vec4<i32>(global1.x, global2.a.x, 8294i, var_2.a), ~vec4<i32>(-44575i, global3.a.x, 6052i, var_2.a)) ^ max(vec4<i32>(global3.a.x, -1926i, 21552i, global3.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1776i, global1.x, 11854i), vec4<i32>(-14910i, 2147483647i, global3.a.x, global2.a.x)))), reverseBits(vec4<i32>(10789i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, global1.x, -16225i, u_input.a), vec4<i32>(-2147483647i, global1.x, u_input.a, -2147483647i)), vec4<i32>(47162i, global1.x, global2.a.x, -12400i)), ~(global3.a.x << (u_input.d.x % 32u)), abs(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1160f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.b.x, global4.x)) + _wgslsmith_f_op_f32(round(-620f)))) * _wgslsmith_f_op_vec2_f32(sign(var_2.b.wx))), _wgslsmith_add_vec2_i32(var_3.xy, func_2().a.yx));
}

