struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, 11087u, vec2<u32>(30541u, 1u), vec2<f32>(-1249f, -621f)), Struct_1(true, 4294967295u, vec2<u32>(36190u, 1u), vec2<f32>(172f, 943f)), Struct_1(false, 1u, vec2<u32>(4294967295u, 47999u), vec2<f32>(-1330f, 1977f)), Struct_1(false, 4294967295u, vec2<u32>(1u, 1u), vec2<f32>(-656f, 398f)), Struct_1(true, 4294967295u, vec2<u32>(0u, 14976u), vec2<f32>(-1452f, -106f)), Struct_1(false, 16053u, vec2<u32>(0u, 4294967295u), vec2<f32>(-1927f, 218f)), Struct_1(true, 4458u, vec2<u32>(81740u, 23930u), vec2<f32>(-1751f, 733f)), Struct_1(false, 26380u, vec2<u32>(1u, 0u), vec2<f32>(-1437f, 1000f)), Struct_1(false, 0u, vec2<u32>(0u, 0u), vec2<f32>(480f, -629f)), Struct_1(true, 4708u, vec2<u32>(16980u, 0u), vec2<f32>(-183f, 341f)), Struct_1(false, 21596u, vec2<u32>(4294967295u, 1u), vec2<f32>(-882f, -1314f)), Struct_1(true, 23835u, vec2<u32>(79u, 1u), vec2<f32>(-668f, 1176f)), Struct_1(true, 11842u, vec2<u32>(36766u, 1u), vec2<f32>(444f, -1270f)), Struct_1(false, 1u, vec2<u32>(7454u, 44405u), vec2<f32>(-412f, 850f)), Struct_1(true, 0u, vec2<u32>(81983u, 4294967295u), vec2<f32>(576f, -304f)), Struct_1(false, 7267u, vec2<u32>(0u, 0u), vec2<f32>(-2157f, 1120f)), Struct_1(true, 0u, vec2<u32>(4294967295u, 34115u), vec2<f32>(-260f, 243f)), Struct_1(false, 23007u, vec2<u32>(2527u, 0u), vec2<f32>(1865f, -507f)), Struct_1(false, 4294967295u, vec2<u32>(83471u, 4294967295u), vec2<f32>(-341f, 187f)), Struct_1(true, 0u, vec2<u32>(48461u, 4294967295u), vec2<f32>(-762f, 729f)), Struct_1(false, 1u, vec2<u32>(9355u, 12892u), vec2<f32>(1272f, 1637f)), Struct_1(true, 45587u, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(308f, 586f)), Struct_1(false, 115441u, vec2<u32>(62925u, 1316u), vec2<f32>(-2397f, 529f)), Struct_1(true, 54511u, vec2<u32>(50772u, 27949u), vec2<f32>(-473f, 453f)), Struct_1(true, 14618u, vec2<u32>(100844u, 22164u), vec2<f32>(-1980f, 227f)), Struct_1(true, 1u, vec2<u32>(4294967295u, 64083u), vec2<f32>(1719f, 783f)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> bool {
    global1 = array<Struct_1, 26>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 26u)];
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(108948u, ~1u, u_input.d)), u_input.c) ^ var_0.b;
    var var_2 = var_0.a;
    var_1 = 6483u;
    return var_0.a;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: bool) -> f32 {
    global0 = array<i32, 3>();
    var var_0 = -(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(143861u, 3u)], 17730i, u_input.b.x, 0i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 3u)], -37486i, 0i, u_input.b.x) << (vec4<u32>(u_input.d, 38351u, 3618u, 59013u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 8500i, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec4<i32>(0i, 23191i, 9760i, global0[_wgslsmith_index_u32(65831u, 3u)]))), -vec4<i32>(global0[_wgslsmith_index_u32(0u, 3u)], u_input.b.x, u_input.e, global0[_wgslsmith_index_u32(u_input.c.x, 3u)]) & (vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], 52199i, -2147483647i, 1i) & vec4<i32>(-52137i, 1i, -1i, u_input.b.x))) | -2147483647i);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(170f, _wgslsmith_f_op_f32(-759f + 2057f), true)), 1f, _wgslsmith_f_op_f32(-875f + _wgslsmith_f_op_f32(f32(-1f) * -850f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-714f, -2488f)) + 1888f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -204f, -771f, 572f) * vec4<f32>(-1000f, 155f, -1186f, 324f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, 381f, -603f, -697f) * vec4<f32>(-364f, -245f, -718f, 1772f)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(498f * var_1.x))) <= var_1.x, reverseBits(4294967295u), ~u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2400f, 1640f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-444f, -997f)), _wgslsmith_f_op_f32(sign(-1022f)))))));
    var var_3 = global1[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_add_u32(45554u, var_2.b)), 26u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + 442f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(true, arg_0.b, _wgslsmith_sub_vec2_u32(select(_wgslsmith_mult_vec2_u32(arg_1.c, vec2<u32>(4294967295u, arg_1.b)), vec2<u32>(27362u, 56980u), vec2<bool>(false, arg_1.a)), vec2<u32>(u_input.a.x, ~arg_1.c.x)) & arg_3.c, _wgslsmith_f_op_vec2_f32(select(arg_0.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, 985f)) + arg_0.d))), select(vec2<bool>(any(vec3<bool>(arg_3.a, arg_3.a, false)), all(vec2<bool>(arg_3.a, false))), select(!vec2<bool>(true, arg_0.a), select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_1.a, false), vec2<bool>(false, arg_3.a)), arg_0.a), vec2<bool>(true, arg_0.a != true)))));
    var var_1 = ~arg_3.c;
    let var_2 = 86960u;
    let var_3 = !arg_0.a;
    global0 = array<i32, 3>();
    return any(!vec4<bool>(false, !arg_0.a, arg_0.a, var_3));
}

fn func_2(arg_0: u32) -> StorageBuffer {
    var var_0 = Struct_1(func_4(Struct_1(false, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, arg_0, 99376u, arg_0), ~vec4<u32>(1u, u_input.d, 0u, 2769u)), ~(~vec2<u32>(4294967295u, 5799u)), vec2<f32>(-246f, _wgslsmith_f_op_f32(f32(-1f) * -1360f))), global1[_wgslsmith_index_u32(31053u, 26u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, true, true)), _wgslsmith_div_f32(154f, -225f)), global1[_wgslsmith_index_u32(~(max(arg_0, 0u) | 72641u), 26u)]), arg_0, _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.zx, max(vec2<u32>(u_input.c.x, arg_0), u_input.a) >> (~u_input.c.zy % vec2<u32>(32u)), max(vec2<u32>(64403u, 10008u), max(u_input.c.yy, u_input.a))), max(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(0u, 9882u)) ^ ~vec2<u32>(arg_0, arg_0), reverseBits(~u_input.c.zx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-566f, 586f), _wgslsmith_div_f32(-1292f, 1000f)) + vec2<f32>(_wgslsmith_f_op_f32(-798f + 749f), _wgslsmith_f_op_f32(f32(-1f) * -578f)))));
    var var_1 = Struct_1(true, ~var_0.b | 24040u, _wgslsmith_sub_vec2_u32(vec2<u32>(~firstTrailingBit(arg_0), countOneBits(u_input.a.x)), vec2<u32>(~u_input.d, _wgslsmith_mod_u32(61910u, var_0.c.x)) & vec2<u32>(var_0.b, ~1u)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), 250f));
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    global0 = array<i32, 3>();
    return StorageBuffer(vec3<i32>(~(-31897i), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-1i, global0[_wgslsmith_index_u32(7798u, 3u)], u_input.e)), vec3<i32>(~(-20317i), i32(-1i) * -7754i, 11866i)), 26244i), vec2<i32>(~(-21982i | global0[_wgslsmith_index_u32(arg_0, 3u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.c.x, var_0.c.x, u_input.c.x), vec4<u32>(var_0.b, var_0.b, 0u, 1u)) ^ abs(0u), 3u)]) ^ vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 3u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec4<u32>(max(4770u, max(u_input.c.x, u_input.a.x) << (~u_input.a.x % 32u)), u_input.d, 37879u, ~u_input.a.x), ~vec4<u32>(93397u, ~u_input.c.x, max(u_input.d, u_input.a.x), ~u_input.a.x));
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 26u)];
    var var_2 = ~(~vec3<i32>(i32(-1i) * -14145i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -11711i, global0[_wgslsmith_index_u32(u_input.c.x, 3u)], 2147483647i), vec4<i32>(u_input.b.x, -5524i, 2147483647i, global0[_wgslsmith_index_u32(15621u, 3u)])), _wgslsmith_div_i32(u_input.b.x, -51623i)), -_wgslsmith_mod_i32(2147483647i, 2147483647i)));
    var_2 = vec3<i32>(select(_wgslsmith_add_i32(-4776i ^ (var_2.x & var_2.x), -_wgslsmith_sub_i32(-2983i, u_input.b.x)), -1i, var_1.a), -18766i, var_2.x);
    let var_3 = -(~(-var_2.x));
    let var_4 = func_1() || true;
    let var_5 = _wgslsmith_sub_i32(~(~(-35371i)), -9049i);
    let x = u_input.a;
    s_output = func_2(u_input.a.x);
}

