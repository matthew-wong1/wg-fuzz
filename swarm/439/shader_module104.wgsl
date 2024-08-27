struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(376f, 519f, 2087f, -205f)), Struct_1(vec4<f32>(1261f, 1842f, 1208f, -1000f)), Struct_1(vec4<f32>(-1000f, -1203f, -1271f, 1000f)), Struct_1(vec4<f32>(868f, -1296f, 445f, -916f)), Struct_1(vec4<f32>(575f, 1000f, 423f, -333f)), Struct_1(vec4<f32>(-1187f, -779f, 1000f, 1000f)), Struct_1(vec4<f32>(1130f, -532f, -1328f, 467f)), Struct_1(vec4<f32>(-164f, -892f, 1348f, -300f)), Struct_1(vec4<f32>(1024f, 1668f, 934f, -283f)), Struct_1(vec4<f32>(1645f, -1000f, -1000f, -1964f)), Struct_1(vec4<f32>(282f, 506f, -2222f, 212f)), Struct_1(vec4<f32>(816f, 229f, -738f, -886f)), Struct_1(vec4<f32>(-298f, -1000f, -876f, 121f)), Struct_1(vec4<f32>(2509f, -436f, 301f, 1644f)), Struct_1(vec4<f32>(-426f, 742f, -791f, 111f)), Struct_1(vec4<f32>(436f, -1000f, 1464f, 327f)), Struct_1(vec4<f32>(-1000f, -1321f, 287f, 2378f)), Struct_1(vec4<f32>(230f, -988f, -1349f, -1164f)), Struct_1(vec4<f32>(1218f, -2089f, -1953f, -997f)), Struct_1(vec4<f32>(722f, 1552f, 680f, -1000f)), Struct_1(vec4<f32>(-735f, -1131f, 1292f, -246f)), Struct_1(vec4<f32>(-1556f, -554f, 175f, -435f)), Struct_1(vec4<f32>(-2049f, -1122f, 1402f, 711f)), Struct_1(vec4<f32>(220f, 1000f, 1042f, -1206f)));

var<private> global1: array<i32, 21> = array<i32, 21>(i32(-2147483648), -1i, 1i, 33839i, 0i, 1477i, -1i, -4066i, -32150i, 2111i, 31788i, 13191i, -55346i, -46647i, 43929i, 2147483647i, -24916i, 4182i, -43243i, i32(-2147483648), -1i);

var<private> global2: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1036f)))));
    let var_1 = _wgslsmith_f_op_f32(1213f - -832f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(918f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-229f + var_1), _wgslsmith_f_op_f32(-var_1))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(263f))), -756f) + arg_0.a.yy) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1336f)) - _wgslsmith_f_op_vec2_f32(-var_2.a.yz)));
    var var_4 = Struct_1(var_2.a);
    return -vec4<i32>(-1i, 0i, global1[_wgslsmith_index_u32(countOneBits(~(~0u)), 21u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a.x, ~40231u), 21u)] & (i32(-1i) * -global1[_wgslsmith_index_u32(u_input.d.x, 21u)]));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_1, 24>();
    let var_0 = firstTrailingBit(max(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(73729u, 129894u, 1u), u_input.d), _wgslsmith_div_vec3_u32(vec3<u32>(30681u, u_input.b.x, u_input.a.x), u_input.b)), vec3<u32>(abs(u_input.d.x), u_input.d.x, u_input.d.x << (u_input.b.x % 32u))) & u_input.b);
    var var_1 = _wgslsmith_sub_vec4_u32(select(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, var_0.x), vec4<u32>(1u, 1u, var_0.x, u_input.c.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(89737u, 39464u, 36325u, var_0.x), vec4<u32>(var_0.x, 22307u, var_0.x, var_0.x)), vec4<u32>(10865u, u_input.d.x, var_0.x, 4294967295u) | vec4<u32>(var_0.x, 0u, 499u, 131149u), vec4<u32>(1395u, 0u, 57869u, 7914u)), select(select(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, true, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(true, true, true, false), vec4<bool>(arg_1.x, true, false, arg_1.x)), vec4<bool>(true, arg_1.x, false, true))) >> (~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 56287u, 26104u, u_input.a.x), vec4<u32>(77307u, var_0.x, var_0.x, 0u)), vec4<u32>(0u, var_0.x, 37324u, u_input.c.x)) % vec4<u32>(32u)), countOneBits(vec4<u32>(~(~var_0.x), ~var_0.x, 1u, 76206u)));
    let var_2 = vec2<bool>(false & arg_1.x, arg_1.x);
    global0 = array<Struct_1, 24>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-158f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(932f * _wgslsmith_div_f32(-1296f, _wgslsmith_f_op_f32(arg_0.a.x + -123f)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(global0[_wgslsmith_index_u32(u_input.b.x >> (~9904u % 32u), 24u)]);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(2071f, 802f, -761f, -639f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1505f, -568f, -1040f, -539f))))), vec2<bool>(true, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, ~u_input.d.x), 24u)], Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1229f, 1664f, -1000f, -1000f), vec4<f32>(1417f, -136f, 1267f, -551f))))))), _wgslsmith_f_op_f32(383f * 110f));
    global2 = var_1.x;
    var var_2 = vec2<i32>(max(~_wgslsmith_dot_vec4_i32(~var_0, select(var_0, var_0, true)), global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), -_wgslsmith_sub_i32(23256i, func_2(Struct_1(vec4<f32>(-1904f, var_1.x, 1090f, var_1.x))).x));
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2044f, 482f), vec2<f32>(var_1.x, 1519f), false)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-596f, 1257f)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1709f, _wgslsmith_f_op_f32(474f + var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), vec2<f32>(1243f, -139f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-457f, var_1.x) + vec2<f32>(-513f, var_1.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(494f, var_1.x)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1646f, 331f) - vec2<f32>(var_1.x, 1157f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, var_1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1368f, 152f))), all(vec3<bool>(true, false, false)))))));
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_mult_u32(~17853u, u_input.c.x), abs(u_input.d.x)), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(699f, 1363f))), -119f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-473f, -685f, true)), -1001f), 499f))));
    let var_1 = func_1();
    var var_2 = false;
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1285f * 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1711f + var_1.a.x) + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(var_1.a), vec2<bool>(true, false), var_1, var_1)), _wgslsmith_div_f32(-1464f, var_0.x))) + _wgslsmith_f_op_f32(-var_1.a.x)), 1000f, var_1.a.x));
    var var_4 = vec4<bool>(!any(vec3<bool>(true, true, true)), !any(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, true)), any(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true))));
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(-var_0)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 500f, var_3.a.x, 965f)))) - vec4<f32>(-473f, -1240f, _wgslsmith_f_op_f32(f32(-1f) * -236f), var_3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, ~global1[_wgslsmith_index_u32(0u, 21u)], -24578i), _wgslsmith_clamp_vec3_i32(-vec3<i32>(34995i, -68667i, global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), _wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], -1i, -1i), vec3<i32>(-45578i, 2147483647i, 2147483647i)), min(vec3<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], -33955i, 4618i), vec3<i32>(global1[_wgslsmith_index_u32(1u, 21u)], 1i, global1[_wgslsmith_index_u32(28847u, 21u)])))), vec3<i32>(-12573i | _wgslsmith_div_i32(global1[_wgslsmith_index_u32(28630u, 21u)], 1290i), ~global1[_wgslsmith_index_u32(u_input.d.x, 21u)] << ((u_input.a.x ^ 61989u) % 32u), abs(global1[_wgslsmith_index_u32(select(u_input.b.x, u_input.d.x, var_4.x), 21u)]))));
}

