struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false, vec4<i32>(-15379i, -73047i, -1i, -850i), vec4<f32>(-412f, 2596f, -183f, -774f), vec4<u32>(1u, 0u, 32685u, 59032u)), Struct_1(false, vec4<i32>(18968i, -5315i, 56579i, -32499i), vec4<f32>(1000f, 425f, -460f, 584f), vec4<u32>(8736u, 1u, 24904u, 19173u)), Struct_1(false, vec4<i32>(1i, i32(-2147483648), 71779i, 1i), vec4<f32>(796f, -2422f, -1613f, 602f), vec4<u32>(23850u, 101783u, 1u, 5266u)), Struct_1(false, vec4<i32>(53505i, -1i, 1i, 2147483647i), vec4<f32>(-405f, 1000f, -348f, -1000f), vec4<u32>(70163u, 34186u, 1u, 33871u)), Struct_1(false, vec4<i32>(-89944i, -1i, 0i, 0i), vec4<f32>(2206f, -1039f, 1670f, 151f), vec4<u32>(0u, 0u, 10172u, 12523u)), Struct_1(true, vec4<i32>(30658i, i32(-2147483648), -2233i, -3272i), vec4<f32>(168f, 1313f, -1268f, -239f), vec4<u32>(47695u, 65433u, 5240u, 13989u)), Struct_1(true, vec4<i32>(0i, -43888i, i32(-2147483648), -31287i), vec4<f32>(-221f, -500f, -293f, -552f), vec4<u32>(1u, 0u, 96623u, 101210u)), Struct_1(true, vec4<i32>(-3143i, i32(-2147483648), 15531i, i32(-2147483648)), vec4<f32>(307f, -2191f, 1074f, 436f), vec4<u32>(4294967295u, 0u, 15671u, 68321u)), Struct_1(true, vec4<i32>(19538i, -37568i, 2147483647i, 52801i), vec4<f32>(-345f, -864f, 393f, 1707f), vec4<u32>(63604u, 78568u, 1u, 38980u)), Struct_1(true, vec4<i32>(-33473i, 44654i, -1i, 1i), vec4<f32>(153f, -1655f, -1583f, -324f), vec4<u32>(0u, 32235u, 2013u, 0u)), Struct_1(false, vec4<i32>(-11680i, i32(-2147483648), 1i, -23817i), vec4<f32>(-784f, -269f, 568f, 999f), vec4<u32>(4294967295u, 1u, 0u, 67362u)), Struct_1(false, vec4<i32>(5917i, -18043i, -33421i, 14101i), vec4<f32>(-1000f, -765f, 113f, -1000f), vec4<u32>(58679u, 0u, 0u, 1u)), Struct_1(true, vec4<i32>(2147483647i, -80928i, -2161i, 1i), vec4<f32>(-1463f, -1000f, 728f, -928f), vec4<u32>(29243u, 54363u, 4294967295u, 0u)), Struct_1(true, vec4<i32>(1i, 0i, i32(-2147483648), 48233i), vec4<f32>(-1006f, -575f, 210f, 1513f), vec4<u32>(51344u, 0u, 4294967295u, 28709u)), Struct_1(true, vec4<i32>(73172i, 38260i, 2147483647i, -39667i), vec4<f32>(-2904f, 408f, 1310f, -724f), vec4<u32>(4294967295u, 0u, 1u, 1u)), Struct_1(true, vec4<i32>(i32(-2147483648), 2147483647i, -1i, 119i), vec4<f32>(496f, 814f, 1000f, 295f), vec4<u32>(43622u, 20545u, 0u, 47182u)), Struct_1(false, vec4<i32>(7025i, -3412i, 1i, -1i), vec4<f32>(316f, -605f, -1292f, 1000f), vec4<u32>(1u, 29447u, 1u, 0u)), Struct_1(true, vec4<i32>(47157i, 0i, 2147483647i, 2147483647i), vec4<f32>(-670f, -1000f, 598f, 1242f), vec4<u32>(40437u, 2982u, 0u, 1u)), Struct_1(true, vec4<i32>(18129i, 1i, 61529i, 46345i), vec4<f32>(-447f, -521f, -294f, 898f), vec4<u32>(4747u, 0u, 1u, 30785u)), Struct_1(false, vec4<i32>(2147483647i, -41419i, -24305i, 2147483647i), vec4<f32>(2223f, 1000f, 293f, 1000f), vec4<u32>(1u, 1u, 0u, 0u)), Struct_1(true, vec4<i32>(-1i, 0i, -37265i, 2147483647i), vec4<f32>(470f, 423f, -803f, -1573f), vec4<u32>(0u, 4294967295u, 24181u, 4294967295u)));

var<private> global1: Struct_1 = Struct_1(false, vec4<i32>(2147483647i, 29146i, -25962i, -49024i), vec4<f32>(-1025f, -732f, -766f, -800f), vec4<u32>(47733u, 4294967295u, 0u, 13122u));

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<Struct_1, 3>;

var<private> global4: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = select(false, arg_0.a, (countOneBits(2147483647i) <= (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, 37729i, arg_0.b.x, arg_0.b.x), vec4<i32>(-12322i, -5064i, 40499i, global1.b.x)) & abs(-46779i))) | true);
    global2 = array<Struct_1, 19>();
    global2 = array<Struct_1, 19>();
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(4294967295u, 3u)], Struct_1(global1.a, _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, -1i, -29574i, global1.b.x)) & ~vec4<i32>(21534i, u_input.a, 2147483647i, u_input.a), global1.b), arg_0.c, global1.d));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(select(u_input.b, 0u & arg_0.d.x, !((arg_0.a || global1.a) && !var_1.b.a)), 21u)], global0[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(u_input.b, ~11500u, 4294967295u), ~_wgslsmith_mult_u32(arg_0.d.x, reverseBits(1u)), false), 21u)]);
    return global1.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global4 = array<vec3<bool>, 15>();
    global0 = array<Struct_1, 21>();
    var var_0 = false;
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(arg_3.d.x, 21u)], Struct_1(arg_0.b.a, arg_0.a.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(arg_0.b.c)))), _wgslsmith_f_op_vec4_f32(-arg_3.c))), arg_1.d));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(464f, _wgslsmith_f_op_f32(-arg_0.a.c.x))) + arg_3.c.xx) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.c.xz))));
    return Struct_1(arg_0.a.a, ~reverseBits(vec4<i32>(reverseBits(1i), firstLeadingBit(u_input.a), 1i, _wgslsmith_clamp_i32(55666i, var_1.b.b.x, arg_3.b.x))), vec4<f32>(-1199f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2437f)) * arg_2.c.x), arg_0.b.c.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(false, global1.b, arg_2.c, vec4<u32>(73198u, 1u, 0u, 4294967295u)))) + 189f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -1000f)) + -1000f)), var_1.b.d);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_2(Struct_2(global3[_wgslsmith_index_u32(arg_2.d.x, 3u)], global3[_wgslsmith_index_u32(~0u >> (u_input.b % 32u), 3u)]), global0[_wgslsmith_index_u32(abs(4294967295u >> (arg_2.d.x % 32u)), 21u)], Struct_1(true, _wgslsmith_clamp_vec4_i32(min(vec4<i32>(-2147483647i, 55319i, 22172i, global1.b.x), arg_2.b), global1.b << (vec4<u32>(u_input.b, 105415u, u_input.b, global1.d.x) % vec4<u32>(32u)), vec4<i32>(16961i, 1089i, 2147483647i, -2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.c.x, -761f, arg_2.c.x, global1.c.x), vec4<f32>(-600f, -1805f, arg_2.c.x, -747f)))), vec4<u32>(_wgslsmith_add_u32(44803u, arg_0), _wgslsmith_dot_vec2_u32(arg_2.d.yz, arg_2.d.wy), global1.d.x, 0u)), arg_2), Struct_1(true, ~(-vec4<i32>(arg_2.b.x, arg_2.b.x, 20647i, 29951i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(539f, global1.c.x, -1057f, -130f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, arg_2.c.x, -1819f, arg_2.c.x)))), ~abs(~global1.d)));
    var var_1 = arg_2.c.yy;
    var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.c.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), func_2(Struct_2(var_0.a, Struct_1(false, arg_2.b, vec4<f32>(var_0.a.c.x, var_1.x, arg_2.c.x, -1356f), var_0.a.d)), global2[_wgslsmith_index_u32(arg_0, 19u)], global2[_wgslsmith_index_u32(60079u, 19u)], Struct_1(global1.a, vec4<i32>(-2147483647i, var_0.a.b.x, global1.b.x, -37115i), vec4<f32>(-156f, var_0.b.c.x, -833f, var_1.x), var_0.a.d)).c.x)), _wgslsmith_div_f32(930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)))), 843f);
    var var_2 = arg_2;
    var var_3 = firstLeadingBit(-1i);
    return func_2(var_0, Struct_1(any(select(select(vec3<bool>(true, true, arg_1), vec3<bool>(var_0.b.a, arg_1, var_0.b.a), true), vec3<bool>(global1.a, arg_1, false), !global4[_wgslsmith_index_u32(var_0.a.d.x, 15u)])), countOneBits(var_0.b.b), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 182f, -338f, -2877f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, 107f, var_2.c.x, -238f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global1.c)))), ~(firstLeadingBit(vec4<u32>(u_input.b, 5544u, 28629u, 5416u)) ^ countOneBits(arg_2.d))), global3[_wgslsmith_index_u32(var_2.d.x, 3u)], func_2(var_0, global3[_wgslsmith_index_u32(1u, 3u)], func_2(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 20410u), 19u)], var_0.a), func_2(Struct_2(arg_2, global2[_wgslsmith_index_u32(0u, 19u)]), func_2(var_0, global2[_wgslsmith_index_u32(arg_0, 19u)], arg_2, arg_2), Struct_1(true, vec4<i32>(1i, 20009i, u_input.a, u_input.a), var_0.b.c, vec4<u32>(arg_0, 106388u, var_2.d.x, arg_2.d.x)), Struct_1(var_0.a.a, vec4<i32>(u_input.a, 2147483647i, var_0.a.b.x, var_2.b.x), global1.c, global1.d)), Struct_1(any(vec2<bool>(true, var_0.a.a)), arg_2.b >> (global1.d % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(arg_2.c, global1.c)), ~vec4<u32>(1u, 39741u, arg_2.d.x, arg_2.d.x)), func_2(var_0, Struct_1(false, vec4<i32>(u_input.a, var_0.a.b.x, -36094i, -10970i), arg_2.c, var_0.b.d), Struct_1(arg_2.a, vec4<i32>(arg_2.b.x, -148i, 18817i, 22327i), vec4<f32>(507f, var_2.c.x, 1396f, 956f), var_2.d), global3[_wgslsmith_index_u32(4294967295u, 3u)])), Struct_1(arg_2.a & true, ~(~global1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.x, -1260f, var_0.b.c.x, var_1.x), vec4<f32>(806f, arg_2.c.x, var_0.a.c.x, 220f))), _wgslsmith_div_vec4_u32(arg_2.d, select(vec4<u32>(global1.d.x, var_2.d.x, 0u, 4294967295u), arg_2.d, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    let var_0 = func_1(28472u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x + global1.c.x) - global1.c.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c.x))), global0[_wgslsmith_index_u32(global1.d.x, 21u)]);
    global3 = array<Struct_1, 3>();
    global3 = array<Struct_1, 3>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.d.x), vec2<u32>(var_0.d.x, 0u)), global1.d.x) ^ _wgslsmith_mult_u32(var_0.d.x, 0u)), 1u), 21u)];
    var_1 = Struct_1(false, vec4<i32>(_wgslsmith_div_i32(-(i32(-1i) * -43267i), abs(u_input.a)), 2147483647i << ((~64809u & (var_1.d.x | 1u)) % 32u), -select(~0i, -1i, true), -39784i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.c)) - var_1.c), global1.d & var_1.d);
    var var_2 = var_1.b.x;
    let var_3 = global1.d.xx;
    var var_4 = func_1(_wgslsmith_clamp_u32(var_3.x, _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_0.d.x, 4294967295u, 4294967295u) ^ var_1.d.wxz), ~vec3<u32>(0u, var_3.x, 0u)), ~47283u), _wgslsmith_f_op_f32(func_3(Struct_1(func_1(u_input.b, global1.a, global3[_wgslsmith_index_u32(var_0.d.x, 3u)]).a, ~var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -1009f, var_0.c.x, global1.c.x)), ~vec4<u32>(12599u, 0u, 1u, var_1.d.x)))) == global1.c.x, var_0).a;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<u32>(_wgslsmith_add_u32(1u, 0u), 1u & global1.d.x, _wgslsmith_div_u32(var_1.d.x, 12189u), func_1(0u, var_0.a, Struct_1(var_0.a, var_1.b, global1.c, global1.d)).d.x), var_0.d, !select(select(vec4<bool>(true, var_0.a, false, false), vec4<bool>(false, true, var_0.a, true), var_1.a), select(vec4<bool>(var_0.a, false, var_0.a, global1.a), vec4<bool>(false, var_1.a, var_0.a, false), true), !var_1.a)));
}

