struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(i32(-2147483648), i32(-2147483648), Struct_2(vec4<u32>(0u, 137u, 4294967295u, 70619u), Struct_1(vec2<i32>(24650i, -24979i), vec4<f32>(-2200f, 268f, 197f, 1157f)), vec2<f32>(-242f, -218f)), vec3<i32>(-7506i, 2147483647i, 30895i), Struct_4(0u, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(-861f, 1423f, 1031f, 1109f)))), Struct_5(26292i, -7724i, Struct_2(vec4<u32>(21703u, 4294967295u, 67270u, 88046u), Struct_1(vec2<i32>(-1i, 10491i), vec4<f32>(-800f, -1519f, 800f, 1876f)), vec2<f32>(2052f, -1238f)), vec3<i32>(0i, 19708i, 2147483647i), Struct_4(1u, Struct_1(vec2<i32>(39148i, i32(-2147483648)), vec4<f32>(1394f, 247f, -1000f, 569f)))), Struct_5(606i, -54899i, Struct_2(vec4<u32>(80856u, 1u, 1u, 3875u), Struct_1(vec2<i32>(0i, -1i), vec4<f32>(1230f, 1313f, -740f, -462f)), vec2<f32>(-591f, 855f)), vec3<i32>(1i, -1i, 5i), Struct_4(38575u, Struct_1(vec2<i32>(47632i, -25149i), vec4<f32>(1234f, -1677f, -1777f, -114f)))), Struct_5(0i, 2147483647i, Struct_2(vec4<u32>(0u, 0u, 23243u, 4294967295u), Struct_1(vec2<i32>(-53809i, 0i), vec4<f32>(-1000f, 1057f, -211f, -333f)), vec2<f32>(-191f, -1000f)), vec3<i32>(0i, -24223i, i32(-2147483648)), Struct_4(4294967295u, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(-925f, -894f, 1212f, 1157f)))));

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec4<i32>(13066i, -38817i, 42939i, 0i), 1u, vec3<f32>(1648f, -1132f, -2292f), -1i), Struct_3(vec4<i32>(15117i, 5426i, -1i, 13213i), 5034u, vec3<f32>(583f, 351f, -432f), 2147483647i));

var<private> global2: vec2<f32>;

var<private> global3: array<vec4<bool>, 24>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 912f, 219f, 183f) + vec4<f32>(1362f, 1002f, global2.x, -1668f))))))));
    global2 = _wgslsmith_f_op_vec2_f32(var_0.wy - var_0.yy);
    var var_1 = Struct_4(~u_input.e, Struct_1(max(u_input.c.zx, -u_input.c.xy), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(var_0 + var_0)))))));
    global3 = array<vec4<bool>, 24>();
    var var_2 = Struct_2(~u_input.d, var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1793f - -2018f), -1220f)))));
    return _wgslsmith_clamp_i32(~var_1.b.a.x, -_wgslsmith_div_i32(_wgslsmith_div_i32(~28372i, min(u_input.b, -1i)), _wgslsmith_clamp_i32(var_1.b.a.x, var_2.b.a.x, -42792i) & select(-2147483647i, 0i, true)), _wgslsmith_mod_i32(~firstLeadingBit(reverseBits(var_1.b.a.x)), var_2.b.a.x));
}

fn func_2() -> Struct_5 {
    var var_0 = abs(u_input.c.yz);
    var_0 = vec2<i32>(60759i & func_3(14087u), var_0.x) << (~select(~reverseBits(u_input.a.xy), vec2<u32>(min(24095u, 4294967295u), _wgslsmith_mult_u32(u_input.d.x, u_input.a.x)), vec2<bool>(select(true, false, true), true)) % vec2<u32>(32u));
    global0 = array<Struct_5, 4>();
    var var_1 = Struct_3(~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 0i, -2147483647i, var_0.x)), select(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, var_0.x), vec4<i32>(u_input.c.x, -2147483647i, u_input.b, 3053i), true)), _wgslsmith_sub_vec4_i32(vec4<i32>(48375i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, 1i, u_input.c.x, var_0.x) << (u_input.d % vec4<u32>(32u)))), u_input.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, -264f, 211f), vec3<f32>(global2.x, global2.x, global2.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global2.x, 416f), vec3<f32>(-127f, global2.x, 532f), vec3<bool>(false, false, false)))), (var_0.x | 61802i) != ~1284i)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(272f, global2.x, -191f), _wgslsmith_f_op_vec3_f32(vec3<f32>(769f, -504f, global2.x) + vec3<f32>(global2.x, global2.x, global2.x)), true)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-424f, 1009f, global2.x) + vec3<f32>(-240f, global2.x, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global2.x, global2.x), vec3<f32>(1000f, global2.x, global2.x))))), 0i);
    var_1 = global1[_wgslsmith_index_u32(~(~var_1.b), 2u)];
    return global0[_wgslsmith_index_u32(~firstTrailingBit(var_1.b) << (~(~(~1u)) % 32u), 4u)];
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    var var_0 = !(!(arg_1.b.x <= arg_2));
    var_0 = all(!global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.d.x) | 4294967295u, 24u)]);
    var var_1 = func_2();
    global3 = array<vec4<bool>, 24>();
    var var_2 = _wgslsmith_f_op_f32(min(-145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(493f, var_1.c.b.b.x)) + var_1.e.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(exp2(global2.x)) >= _wgslsmith_f_op_f32(floor(arg_2)))))));
    return Struct_3(~(-(vec4<i32>(1i, 0i, -2147483647i, 0i) >> (abs(vec4<u32>(var_1.e.a, u_input.e, u_input.d.x, var_1.e.a)) % vec4<u32>(32u)))), ~(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.e, 1u)), ~vec3<u32>(37496u, var_1.e.a, var_1.e.a)) & (u_input.e << (func_2().e.a % 32u))), vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(134f, global2.x) * _wgslsmith_f_op_f32(global2.x - arg_0)) * arg_2), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(677f, arg_2))), 1492f))), 34075i);
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, ~u_input.a.x, 0u));
    var var_1 = Struct_1(vec2<i32>(11673i, -1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 528f, global2.x, 2702f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c.x, global2.x, 1850f, 752f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-791f, global2.x, -1068f, arg_0.c.x), vec4<f32>(-1237f, 2275f, arg_0.c.x, arg_0.c.x))))), select(vec4<bool>(1i < arg_0.d, false, false, true), select(!global3[_wgslsmith_index_u32(u_input.d.x, 24u)], vec4<bool>(false, true, true, true), select(global3[_wgslsmith_index_u32(arg_0.b, 24u)], vec4<bool>(true, true, false, false), false)), vec4<bool>(true, true, any(global3[_wgslsmith_index_u32(arg_0.b, 24u)]), true)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(207f * var_1.b.x))));
    return _wgslsmith_f_op_f32(abs(-1026f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1(580f, Struct_1(vec2<i32>(u_input.b, 4111i), vec4<f32>(1134f, 633f, 749f, 895f)), -1310f))), _wgslsmith_div_f32(global2.x, global2.x))));
    let var_0 = min(vec2<u32>(~func_2().e.a, 25012u), vec2<u32>(55473u, u_input.d.x << (1u % 32u)));
    var var_1 = func_2().c;
    let var_2 = _wgslsmith_clamp_i32(u_input.b, u_input.c.x, firstTrailingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global2.x));
}

