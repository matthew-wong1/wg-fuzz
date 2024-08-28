struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec3<f32>(1866f, 1191f, 391f), vec2<f32>(264f, -787f), -1i, Struct_1(true, vec3<i32>(35507i, -1i, 24476i), vec3<bool>(true, true, true), vec4<i32>(0i, -1i, 1i, 2147483647i), false)), Struct_2(vec3<f32>(1112f, -725f, 548f), vec2<f32>(2549f, -352f), 0i, Struct_1(false, vec3<i32>(i32(-2147483648), 34391i, -32259i), vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), 3635i, -13062i, 2147483647i), false)), Struct_2(vec3<f32>(1000f, 1000f, 1629f), vec2<f32>(370f, -998f), -47062i, Struct_1(true, vec3<i32>(4495i, 1i, 503i), vec3<bool>(true, false, false), vec4<i32>(2147483647i, -2538i, -6469i, -1i), true)), Struct_2(vec3<f32>(218f, 163f, -544f), vec2<f32>(-658f, 874f), -1i, Struct_1(false, vec3<i32>(-28560i, 0i, -1i), vec3<bool>(false, false, false), vec4<i32>(13085i, -1870i, -421i, 36706i), false)), Struct_2(vec3<f32>(274f, 495f, 1568f), vec2<f32>(1416f, 702f), -46221i, Struct_1(true, vec3<i32>(0i, 31829i, 17882i), vec3<bool>(true, true, false), vec4<i32>(0i, i32(-2147483648), -18827i, -7719i), true)), Struct_2(vec3<f32>(-699f, -1545f, 398f), vec2<f32>(1149f, -477f), 32486i, Struct_1(false, vec3<i32>(49534i, 0i, i32(-2147483648)), vec3<bool>(true, false, false), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -5478i), true)), Struct_2(vec3<f32>(-854f, 524f, -1000f), vec2<f32>(216f, 355f), 2147483647i, Struct_1(true, vec3<i32>(44198i, -25156i, 0i), vec3<bool>(false, true, false), vec4<i32>(-36127i, 0i, i32(-2147483648), 8737i), true)), Struct_2(vec3<f32>(-1353f, -2323f, -340f), vec2<f32>(2045f, -1000f), 60291i, Struct_1(false, vec3<i32>(1i, i32(-2147483648), 77548i), vec3<bool>(false, true, true), vec4<i32>(-39821i, -14900i, -48063i, 6635i), true)), Struct_2(vec3<f32>(780f, 308f, -615f), vec2<f32>(351f, 609f), i32(-2147483648), Struct_1(true, vec3<i32>(i32(-2147483648), 1556i, -1i), vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i), false)), Struct_2(vec3<f32>(945f, 479f, 677f), vec2<f32>(1000f, 436f), 55745i, Struct_1(false, vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<bool>(false, false, true), vec4<i32>(1i, -3045i, -4575i, i32(-2147483648)), false)), Struct_2(vec3<f32>(722f, 392f, 1147f), vec2<f32>(-1866f, 324f), -49444i, Struct_1(true, vec3<i32>(5091i, 28150i, -17669i), vec3<bool>(true, true, false), vec4<i32>(-1i, 23356i, -1i, 1i), false)), Struct_2(vec3<f32>(-1000f, 1000f, 1969f), vec2<f32>(514f, -1711f), i32(-2147483648), Struct_1(true, vec3<i32>(0i, 1i, 0i), vec3<bool>(false, false, true), vec4<i32>(18852i, 4461i, 1i, 10071i), false)), Struct_2(vec3<f32>(1602f, 981f, 510f), vec2<f32>(102f, -1191f), 0i, Struct_1(true, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<bool>(true, false, true), vec4<i32>(6521i, i32(-2147483648), 1i, 19597i), false)), Struct_2(vec3<f32>(1276f, -1187f, 518f), vec2<f32>(-1189f, 1452f), 2147483647i, Struct_1(false, vec3<i32>(-1i, 2147483647i, -1i), vec3<bool>(false, true, true), vec4<i32>(2147483647i, i32(-2147483648), 1i, 2147483647i), true)), Struct_2(vec3<f32>(-605f, 1000f, 409f), vec2<f32>(1000f, 969f), -31157i, Struct_1(true, vec3<i32>(2231i, -1i, 1i), vec3<bool>(false, false, true), vec4<i32>(-27628i, i32(-2147483648), 482i, 9665i), false)), Struct_2(vec3<f32>(-182f, 853f, -344f), vec2<f32>(-684f, 289f), 9629i, Struct_1(true, vec3<i32>(15394i, -13153i, 250i), vec3<bool>(false, false, true), vec4<i32>(621i, 2147483647i, 17472i, -45686i), true)), Struct_2(vec3<f32>(-301f, 1107f, 1247f), vec2<f32>(-794f, -622f), 2147483647i, Struct_1(false, vec3<i32>(-43602i, -1i, -1i), vec3<bool>(false, false, false), vec4<i32>(-1i, -37807i, -55641i, 1i), true)), Struct_2(vec3<f32>(399f, 105f, -866f), vec2<f32>(1216f, -1437f), -1834i, Struct_1(true, vec3<i32>(-25273i, 0i, 1i), vec3<bool>(true, false, true), vec4<i32>(1i, i32(-2147483648), 1i, i32(-2147483648)), false)), Struct_2(vec3<f32>(-229f, -1291f, -294f), vec2<f32>(-258f, -704f), i32(-2147483648), Struct_1(false, vec3<i32>(2147483647i, -1i, 43648i), vec3<bool>(false, true, true), vec4<i32>(29523i, 0i, -1i, 43430i), true)), Struct_2(vec3<f32>(1063f, -328f, -980f), vec2<f32>(-792f, 196f), 1i, Struct_1(true, vec3<i32>(-1i, -18832i, 19904i), vec3<bool>(false, false, true), vec4<i32>(-44269i, i32(-2147483648), 65015i, -23524i), false)), Struct_2(vec3<f32>(106f, -174f, -848f), vec2<f32>(-722f, -683f), -1i, Struct_1(false, vec3<i32>(-13841i, 43200i, i32(-2147483648)), vec3<bool>(true, true, true), vec4<i32>(9027i, -16701i, 2147483647i, 7301i), false)), Struct_2(vec3<f32>(217f, 639f, 686f), vec2<f32>(886f, -1115f), -36024i, Struct_1(true, vec3<i32>(38144i, -1i, 34120i), vec3<bool>(false, true, true), vec4<i32>(1i, 41031i, 1i, -1i), true)), Struct_2(vec3<f32>(-828f, 410f, 408f), vec2<f32>(-687f, 1000f), -31050i, Struct_1(false, vec3<i32>(0i, -11546i, -53126i), vec3<bool>(true, false, false), vec4<i32>(32192i, i32(-2147483648), -20445i, i32(-2147483648)), true)));

var<private> global1: array<Struct_1, 31>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_2, 23>();
    var var_0 = vec3<i32>(5593i, 2449i, max(firstTrailingBit(_wgslsmith_sub_i32(u_input.a, -39527i)), arg_0));
    let var_1 = !(!select(select(!vec4<bool>(arg_3.d.a, false, true, true), !vec4<bool>(true, global2.e, true, arg_3.d.a), !vec4<bool>(true, global2.e, true, true)), select(select(vec4<bool>(true, global2.a, global2.e, false), vec4<bool>(arg_3.d.e, true, arg_3.d.a, arg_1.x), global2.c.x), !vec4<bool>(true, global2.e, arg_1.x, false), arg_2.x < arg_2.x), arg_3.d.c.x));
    var_0 = ~((_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.b.x, 24499i, arg_0), global2.d.ywz), _wgslsmith_div_vec3_i32(vec3<i32>(global2.d.x, arg_0, 25235i), vec3<i32>(-13969i, arg_0, -1i))) & _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_3.c, 23032i, var_0.x), vec3<i32>(u_input.a, 36437i, arg_0))) ^ min(global2.b, vec3<i32>(_wgslsmith_dot_vec2_i32(arg_3.d.d.yy, arg_3.d.b.zz), abs(-17778i), _wgslsmith_add_i32(global2.b.x, 1i))));
    let var_2 = select(all(vec2<bool>(all(vec4<bool>(global2.a, arg_1.x, var_1.x, global2.a)), !arg_3.d.c.x)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_3.b.x, _wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1077f), -838f, false))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-645f, -958f, true))));
    return abs(abs(arg_2.x));
}

fn func_2(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 23u)];
    var var_1 = _wgslsmith_mult_u32(~1u, ~(func_3(14168i, select(vec2<bool>(false, var_0.d.c.x), global2.c.xz, vec2<bool>(true, global2.e)), vec2<u32>(4294967295u, arg_0) << (u_input.b % vec2<u32>(32u)), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 23u)]) ^ min(~71670u, u_input.b.x << (1u % 32u))));
    var var_2 = !global2.c.zy;
    var_1 = _wgslsmith_mod_u32(~17276u, _wgslsmith_sub_u32(arg_0, _wgslsmith_div_u32(~4294967295u, countOneBits(arg_0))) & reverseBits(0u));
    var var_3 = global2.c;
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~33207u, 23u)];
    global0 = array<Struct_2, 23>();
    let var_1 = false;
    var var_2 = arg_0.c;
    let var_3 = vec3<f32>(var_0.b.x, var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(~u_input.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.a.x)))))))));
    return firstTrailingBit(~select(0u, firstLeadingBit(~0u), all(select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_0.d.a, false, false, var_1), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(!(~(~0u) <= _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4811u, u_input.b.x, u_input.b.x), vec4<u32>(51467u, 49820u, 0u, u_input.b.x))), firstTrailingBit(-(vec3<i32>(-1i) * -vec3<i32>(global2.d.x, global2.b.x, -1i))), vec3<bool>(false & all(vec3<bool>(global2.a, global2.e, true)), any(select(global2.c.xz, global2.c.zz, !vec2<bool>(global2.c.x, true))), false == (any(vec3<bool>(true, false, global2.c.x)) | (true | global2.c.x))), global2.d, ~4294967295u != func_1(global1[_wgslsmith_index_u32(41574u, 31u)], -vec4<i32>(13766i, -2147483647i, u_input.a, global2.d.x) | vec4<i32>(6536i, -20221i, global2.d.x, 50176i), _wgslsmith_div_i32(1i, 1i)));
    var var_0 = Struct_3(-vec2<i32>(_wgslsmith_dot_vec4_i32(global2.d, global2.d), ~global2.d.x) >> (~(~_wgslsmith_add_vec2_u32(vec2<u32>(29954u, u_input.b.x), u_input.b)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1340f, -121f, 123f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1240f, 872f, -1416f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-695f, -181f, -708f), vec3<f32>(-1083f, -1067f, 516f)))))), Struct_1(-21971i >= firstLeadingBit(_wgslsmith_div_i32(global2.b.x, -3499i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a & global2.d.x, _wgslsmith_sub_i32(global2.b.x, -2147483647i), -1i), abs(select(global2.d.xwz, vec3<i32>(-1i, -10055i, 2147483647i), global2.e)), min(abs(global2.b), vec3<i32>(64007i, u_input.a, global2.b.x))), select(!vec3<bool>(false, global2.c.x, false), select(!vec3<bool>(global2.a, true, true), vec3<bool>(global2.e, true, false), select(vec3<bool>(global2.a, global2.a, false), vec3<bool>(true, global2.e, global2.e), global2.e)), true), global2.d, true), global2.e, global1[_wgslsmith_index_u32(~func_3(global2.d.x, global2.c.xx, countOneBits(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(33581u, 4294967295u))), Struct_2(vec3<f32>(-1000f, 830f, 107f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-204f, 256f))), _wgslsmith_div_i32(-56650i, u_input.a), global1[_wgslsmith_index_u32(max(u_input.b.x, 21911u), 31u)])), 31u)]);
    var var_1 = vec2<u32>(~u_input.b.x, u_input.b.x & (_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x << (1u % 32u)) << (firstTrailingBit(78046u | u_input.b.x) % 32u)));
    var_0 = Struct_3(countOneBits(_wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(global2.b.xx, vec2<i32>(global2.d.x, 1i))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 7962i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mult_i32(var_0.c.d.x, u_input.a)))), var_0.b, var_0.e, all(select(!global2.c.xz, select(!global2.c.yy, !vec2<bool>(false, global2.a), select(global2.c.zy, var_0.e.c.xz, vec2<bool>(var_0.d, global2.e))), true)), Struct_1(true, ~(~min(vec3<i32>(-2147483647i, 24299i, 11803i), global2.d.wxz)), global2.c, ~var_0.e.d | vec4<i32>(_wgslsmith_sub_i32(-436i, -1i), u_input.a | 34347i, 2147483647i, 43407i), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<i32>(~max(var_0.a.x ^ 2147483647i, reverseBits(2147483647i)), -45135i), global2.b.x);
}

