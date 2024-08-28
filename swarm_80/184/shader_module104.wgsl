struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-73138i, -15616i);

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-570f, 384f), vec2<f32>(-940f, -1067f), vec2<f32>(1049f, 671f), vec2<f32>(-657f, -923f), vec2<f32>(-1212f, 705f), vec2<f32>(-269f, -1823f), vec2<f32>(-104f, -516f), vec2<f32>(-2011f, 280f), vec2<f32>(1969f, 1000f), vec2<f32>(-269f, -793f), vec2<f32>(-638f, -1009f), vec2<f32>(-174f, 1642f), vec2<f32>(-289f, 252f), vec2<f32>(594f, -1116f), vec2<f32>(1164f, -192f), vec2<f32>(-966f, -1163f), vec2<f32>(479f, 276f), vec2<f32>(-1992f, -505f), vec2<f32>(-107f, 830f), vec2<f32>(-1000f, 317f), vec2<f32>(2204f, 923f), vec2<f32>(312f, 366f), vec2<f32>(1031f, 1454f), vec2<f32>(-983f, -1732f), vec2<f32>(1698f, -416f));

var<private> global2: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec4<u32>(48380u, 20311u, 0u, 0u), Struct_1(vec2<f32>(-120f, -1724f), vec2<bool>(true, true), 0i, vec4<i32>(31022i, 50705i, -1i, 0i))), Struct_4(vec4<u32>(42638u, 13626u, 0u, 4294967295u), Struct_1(vec2<f32>(-223f, -1004f), vec2<bool>(false, false), 8972i, vec4<i32>(1i, 1708i, 1i, 1i))), Struct_4(vec4<u32>(77743u, 39739u, 1u, 1u), Struct_1(vec2<f32>(-709f, -392f), vec2<bool>(true, true), 2948i, vec4<i32>(-1i, 0i, 0i, -32885i))), Struct_4(vec4<u32>(4294967295u, 1u, 45185u, 54037u), Struct_1(vec2<f32>(-1214f, -153f), vec2<bool>(true, false), 35154i, vec4<i32>(2147483647i, i32(-2147483648), -8861i, 76818i))), Struct_4(vec4<u32>(12598u, 0u, 25217u, 122192u), Struct_1(vec2<f32>(-1682f, -1016f), vec2<bool>(true, true), 1i, vec4<i32>(14246i, 13830i, 11832i, -1i))), Struct_4(vec4<u32>(31842u, 35451u, 4294967295u, 0u), Struct_1(vec2<f32>(-1000f, -807f), vec2<bool>(false, true), i32(-2147483648), vec4<i32>(2147483647i, 1i, -62272i, -12634i))), Struct_4(vec4<u32>(4294967295u, 0u, 62476u, 4294967295u), Struct_1(vec2<f32>(-1000f, -252f), vec2<bool>(false, false), 0i, vec4<i32>(30317i, 1i, 1i, -1i))), Struct_4(vec4<u32>(42342u, 1u, 59042u, 24391u), Struct_1(vec2<f32>(-1528f, -935f), vec2<bool>(true, true), 33489i, vec4<i32>(5888i, 2147483647i, 0i, -9533i))), Struct_4(vec4<u32>(5937u, 75999u, 1u, 0u), Struct_1(vec2<f32>(1144f, -467f), vec2<bool>(true, false), 13917i, vec4<i32>(2147483647i, 29306i, 39690i, 22906i))), Struct_4(vec4<u32>(39881u, 74341u, 4294967295u, 128u), Struct_1(vec2<f32>(-639f, -416f), vec2<bool>(false, false), -12222i, vec4<i32>(17838i, -41657i, -1i, -52181i))), Struct_4(vec4<u32>(0u, 27317u, 55032u, 1u), Struct_1(vec2<f32>(520f, -1544f), vec2<bool>(true, true), 2147483647i, vec4<i32>(25529i, 0i, 24099i, 38494i))));

var<private> global3: array<i32, 5> = array<i32, 5>(2147483647i, i32(-2147483648), -1i, -1i, -24519i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec2<f32> {
    global2 = array<Struct_4, 11>();
    global1 = array<vec2<f32>, 25>();
    var var_0 = arg_3.x;
    var var_1 = ~arg_3.xzy;
    let var_2 = global2[_wgslsmith_index_u32(select(1u, arg_1.x, true), 11u)];
    return vec2<f32>(1000f, var_2.b.a.x);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_2);
    var var_1 = Struct_3(min(u_input.a.yy, u_input.a.yy), arg_1.x, any(arg_1));
    let var_2 = Struct_4(~vec4<u32>(1u, u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(21151u, 15678u, 1u, var_1.a.x), vec4<u32>(21564u, 72334u, 47237u, 9109u)), ~vec4<u32>(77764u, 0u, 4294967295u, 4294967295u)), abs(_wgslsmith_add_u32(1u, 89905u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_1.yzx, vec2<u32>(1u, 117674u), Struct_3(vec2<u32>(1u, 1u), false, false), vec4<i32>(global0.x, global0.x, global0.x, 0i))))), vec2<bool>(true, true), -max(~2147483647i, global3[_wgslsmith_index_u32(min(u_input.a.x, var_1.a.x), 5u)]), abs(vec4<i32>(reverseBits(80162i), global0.x, -28052i, _wgslsmith_clamp_i32(28437i, 12073i, global3[_wgslsmith_index_u32(u_input.a.x, 5u)])))));
    let var_3 = -32881i;
    var var_4 = !arg_1;
    return any(!select(arg_1, select(select(arg_1, vec4<bool>(arg_1.x, var_1.c, false, arg_0), var_1.b), select(arg_1, vec4<bool>(true, var_1.b, var_2.b.b.x, false), arg_0), arg_1), !(!arg_1.x)));
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) * _wgslsmith_div_f32(-1521f, 703f)), -188f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(u_input.a.x, 25u)])) + _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.a.x, 25u)] - vec2<f32>(231f, -362f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(799f, 650f), vec2<f32>(-1158f, 2000f), true)))), vec2<bool>(true, false), global0.x, -vec4<i32>(~_wgslsmith_add_i32(-1i, -15491i), firstLeadingBit(-2147483647i), _wgslsmith_div_i32(-global3[_wgslsmith_index_u32(4294967295u, 5u)], max(global3[_wgslsmith_index_u32(4294967295u, 5u)], 0i)), 35230i));
    let var_1 = vec3<bool>(false, true, func_2(var_0.b.x, select(select(select(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), vec4<bool>(var_0.b.x, false, false, var_0.b.x), false), vec4<bool>(true, false, var_0.b.x, var_0.b.x), 2147483647i != var_0.c), vec4<bool>(!var_0.b.x, any(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b.x, !var_0.b.x), vec4<bool>(all(vec3<bool>(var_0.b.x, true, false)), select(var_0.b.x, var_0.b.x, true), !var_0.b.x, var_0.b.x | false)), _wgslsmith_f_op_f32(abs(1346f))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 583f) + vec2<f32>(var_0.a.x, -1653f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1052f)), true))))), !select(var_0.b, select(!var_1.xz, var_1.xx, true), vec2<bool>(true, var_0.b.x)), 1i, -(~max(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, var_0.c, 28430i), vec4<i32>(0i, -17171i, -19144i, global3[_wgslsmith_index_u32(u_input.a.x, 5u)])), countOneBits(vec4<i32>(1i, var_0.c, -1i, 35194i)))));
    var var_3 = u_input.a.xz;
    let var_4 = vec2<bool>(!(true & var_2.b.x), all(select(var_1, !vec3<bool>(var_0.b.x, false, true), true)));
    return Struct_5(-countOneBits(-40431i), u_input.a.x, Struct_2(!any(var_1.xx), u_input.a, 299f), var_2.a.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec4<i32>) -> i32 {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(arg_1.c.a, all(!select(vec3<bool>(true, arg_1.c.a, arg_1.c.a), vec3<bool>(arg_1.c.a, false, arg_1.c.a), vec3<bool>(arg_1.c.a, arg_1.c.a, arg_1.c.a))), !(!(!arg_1.c.a))), !vec3<bool>(!any(vec3<bool>(true, false, true)), arg_1.c.a, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1462f, 1000f, arg_0.x), arg_0));
    var var_2 = func_1().c;
    let var_3 = Struct_2(true, u_input.a, _wgslsmith_f_op_f32(455f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(arg_0.x + 612f))))));
    global2 = array<Struct_4, 11>();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(select(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(879f, -1000f, 940f), vec3<f32>(848f, 774f, 326f), vec3<bool>(false, true, true)))), func_1(), _wgslsmith_div_vec4_i32(vec4<i32>(20484i, global0.x, global0.x, 0i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 8653u) % vec4<u32>(32u)), min(vec4<i32>(2147483647i, global0.x, -1i, 74743i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -1i, global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -1i)))), -41199i, !(func_1().c.a | false)), global3[_wgslsmith_index_u32(u_input.a.x, 5u)]);
    let var_0 = vec3<u32>(53928u, reverseBits(u_input.a.x), u_input.a.x);
    global3 = array<i32, 5>();
    global3 = array<i32, 5>();
    let var_1 = reverseBits(11433u);
    var var_2 = Struct_5(i32(-1i) * -2147483647i, 1u, func_1().c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-914f, _wgslsmith_f_op_f32(3391f * 281f), u_input.a.x <= 14605u)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1142f, 367f)))), _wgslsmith_f_op_f32(trunc(1000f))));
    var_2 = Struct_5(1i, var_1, var_2.c, var_2.d);
    let var_3 = Struct_4(vec4<u32>(var_1 | (4294967295u << (var_2.b % 32u)), var_2.c.b.x, var_0.x, ~11436u & _wgslsmith_mult_u32(~0u, ~var_2.c.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(0u, 25u)] + vec2<f32>(-492f, -381f)))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.d, 1121f), vec2<f32>(807f, 633f)))), vec2<bool>(false, false), i32(-1i) * -2147483647i, vec4<i32>(0i, ~(~global0.x), ~abs(global3[_wgslsmith_index_u32(1u, 5u)]), global0.x)));
    global3 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1531f))), _wgslsmith_f_op_f32(f32(-1f) * -799f), true)), _wgslsmith_f_op_f32(-var_3.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(var_3.b.b.x, var_3.b.b.x, var_2.c.a), _wgslsmith_clamp_vec2_u32(var_3.a.wz, vec2<u32>(80959u, u_input.a.x), var_2.c.b.zz), Struct_3(vec2<u32>(57482u, 4294967295u), false, false), ~vec4<i32>(7825i, var_3.b.c, var_2.a, global0.x))).x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a.x)), _wgslsmith_f_op_f32(var_3.b.a.x + _wgslsmith_f_op_f32(max(575f, -1911f))), var_3.b.a.x)), 4294967295u, u_input.a.x, u_input.a.x);
}

