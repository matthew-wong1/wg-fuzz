struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(43851u, 0u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(42634u, 1u, 45925u), vec3<u32>(4294967295u, 4294967295u, 34857u), vec3<u32>(30190u, 55466u, 4294967295u), vec3<u32>(4294967295u, 28217u, 3464u), vec3<u32>(1u, 1u, 60956u), vec3<u32>(27693u, 31322u, 18978u), vec3<u32>(31607u, 12123u, 33573u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(18579u, 4294967295u, 43842u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(19442u, 27737u, 49501u), vec3<u32>(6617u, 66168u, 49702u), vec3<u32>(94991u, 1u, 4294967295u), vec3<u32>(16912u, 0u, 99865u), vec3<u32>(4294967295u, 10053u, 0u), vec3<u32>(7066u, 4294967295u, 8240u), vec3<u32>(9884u, 19256u, 1u), vec3<u32>(4294967295u, 55769u, 1u), vec3<u32>(21670u, 53303u, 75290u), vec3<u32>(75742u, 15844u, 64925u), vec3<u32>(64836u, 49352u, 43879u), vec3<u32>(12862u, 0u, 48098u), vec3<u32>(68895u, 39837u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 68204u), vec3<u32>(28074u, 4294967295u, 0u), vec3<u32>(37315u, 0u, 3501u), vec3<u32>(4294967295u, 0u, 50677u));

var<private> global1: f32 = 667f;

var<private> global2: array<i32, 19> = array<i32, 19>(0i, 0i, i32(-2147483648), 0i, -25426i, -36656i, i32(-2147483648), -23327i, 2147483647i, 45574i, 1i, -13753i, -41864i, 14413i, 1i, 0i, 13738i, 1i, -20791i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> f32 {
    let var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1412f));
    var var_1 = var_0.x < _wgslsmith_f_op_f32(794f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))));
    var_1 = true;
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) + 484f))));
    let var_2 = _wgslsmith_f_op_f32(select(var_0.x, -635f, false));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(396f - var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))))), 1018f > var_2));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: f32) -> vec4<f32> {
    let var_0 = Struct_5(~(~firstLeadingBit(arg_0.a)), arg_0.d, vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c.x)) - _wgslsmith_f_op_f32(sign(744f))))), ~abs(~(~arg_0.d)));
    let var_1 = !(!select(vec4<bool>(true, arg_1.c, global2[_wgslsmith_index_u32(0u, 19u)] < arg_0.a.x, arg_1.c | arg_1.c), !select(vec4<bool>(false, arg_1.c, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, false, arg_1.c, true), vec4<bool>(true, arg_1.c, arg_1.c, true)), !(0u > var_0.b.x)));
    var var_2 = Struct_5(firstTrailingBit(vec3<i32>(countOneBits(arg_0.a.x), ~(-2147483647i), _wgslsmith_div_i32(~(-8261i), abs(4378i)))), vec4<u32>(~u_input.b, min(u_input.b, _wgslsmith_dot_vec4_u32(~var_0.d, reverseBits(arg_0.d))), var_0.d.x, 1u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-249f, arg_1.b.x) + vec2<f32>(-627f, 849f))))))), arg_0.b);
    global2 = array<i32, 19>();
    global2 = array<i32, 19>();
    return arg_1.b;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(~(-vec3<i32>(global2[_wgslsmith_index_u32(arg_0.d.x, 19u)], 4761i, -2147483647i)) >> (select(arg_0.b.yww, vec3<u32>(arg_0.b.x, u_input.b, 4294967295u), all(vec4<bool>(false, false, false, false))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.b.x, arg_0.c.x))) - arg_1.b)));
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.b.x * _wgslsmith_f_op_f32(min(-1101f, arg_0.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) + _wgslsmith_f_op_f32(max(arg_1.b.x, -727f))), var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), true), Struct_3(1760f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(435f, arg_1.b.x, var_0.a.b.x, -839f)))), -1i < ~(-arg_0.a.x)));
    let var_2 = min(7209i, var_0.a.a.x);
    var var_3 = _wgslsmith_f_op_f32(-730f + -707f);
    return Struct_3(688f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_1.b.b - vec4<f32>(arg_0.c.x, -930f, arg_0.c.x, 1075f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_5(vec3<i32>(2147483647i, -1i, arg_1.a.x), arg_0.b, var_1.b.b.ww, arg_0.b), var_1.a, _wgslsmith_f_op_f32(-arg_0.c.x))))) * _wgslsmith_f_op_vec4_f32(abs(var_1.a.b))), all(select(vec4<bool>(var_1.b.c, !var_1.a.c, true, true), vec4<bool>(false, var_1.a.c, var_1.b.c || var_1.b.c, true), var_1.a.c)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    let var_0 = 61204u;
    global1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_5(~max(abs(vec3<i32>(-35406i, u_input.a.x, 2556i)), vec3<i32>(-1870i, global2[_wgslsmith_index_u32(u_input.b, 19u)], u_input.a.x) ^ vec3<i32>(16721i, 0i, u_input.a.x)), select(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.b), _wgslsmith_add_u32(1u, var_0), 64091u, arg_2), ~vec4<u32>(u_input.b, u_input.c, 0u, 14680u), select(select(vec4<bool>(false, arg_0.c, false, true), vec4<bool>(false, arg_1.c, arg_1.c, arg_1.c), true), select(vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(false, false, arg_0.c, arg_1.c), vec4<bool>(true, arg_0.c, true, arg_1.c)), arg_1.c)), vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.b.x, arg_1.a)), -995f), vec4<u32>(1u & _wgslsmith_clamp_u32(8430u, 8211u, arg_2), arg_2 ^ 1u, 0u, ~arg_2)), func_2(Struct_5(-(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 19u)], -1i) | vec3<i32>(u_input.a.x, 21007i, u_input.a.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0), vec2<u32>(var_0, u_input.b)), var_0, 19456u, ~u_input.b), vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-arg_1.b.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 23760u, 0u, var_0), vec4<u32>(arg_2, 30044u, 4294967295u, 7999u), vec4<u32>(arg_2, var_0, var_0, u_input.b))), Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(~4294967295u, 19u)], 2147483647i, ~41412i), arg_0.b.yy)), arg_3.x)).x;
    var var_1 = u_input.b;
    var var_2 = Struct_2(Struct_1(-countOneBits(vec3<i32>(2147483647i, -55953i, global2[_wgslsmith_index_u32(var_0, 19u)])), _wgslsmith_f_op_vec2_f32(-arg_3)));
    var_2 = Struct_2(var_2.a);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(699f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 495f), _wgslsmith_f_op_f32(1229f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1003f, -308f)), _wgslsmith_f_op_f32(func_4(Struct_3(-1561f, vec4<f32>(1425f, -1228f, 714f, -1177f), false), func_2(Struct_5(vec3<i32>(global2[_wgslsmith_index_u32(0u, 19u)], u_input.a.x, -2147483647i), vec4<u32>(u_input.c, u_input.c, u_input.c, 44344u), vec2<f32>(-1000f, 600f), vec4<u32>(4294967295u, u_input.b, u_input.c, u_input.b)), Struct_1(vec3<i32>(62074i, u_input.a.x, u_input.a.x), vec2<f32>(130f, -1048f))), u_input.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-695f, 127f) * vec2<f32>(-979f, 1821f)))))));
    var var_0 = Struct_4(Struct_3(1376f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-842f * 861f), _wgslsmith_f_op_f32(min(2434f, 422f)), -848f, _wgslsmith_f_op_f32(f32(-1f) * -1719f))), true), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(154f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, 1093f, 614f, 980f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(171f, -1545f, -1192f, -334f) - vec4<f32>(374f, 518f, -796f, -1413f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1125f, 743f, -246f, -941f))))), !(_wgslsmith_add_u32(u_input.b, 110601u) != ~0u)));
    global0 = array<vec3<u32>, 30>();
    global2 = array<i32, 19>();
    var_0 = Struct_4(func_2(Struct_5(~firstLeadingBit(vec3<i32>(-1i, -2147483647i, 1i)), ~vec4<u32>(0u, u_input.c, u_input.b, u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.a.b.yw))), _wgslsmith_mult_vec4_u32(~vec4<u32>(67747u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.c, 87054u, u_input.b, u_input.b))), Struct_1(~vec3<i32>(65921i, u_input.a.x, 12098i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.b.zz, var_0.a.b.xz, vec2<bool>(var_0.a.c, true))) + vec2<f32>(var_0.a.b.x, 531f)))), var_0.a);
    var_0 = Struct_4(func_2(Struct_5(select(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], -1i, global2[_wgslsmith_index_u32(101172u, 19u)]), var_0.a.c) | ~vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.c, 19u)], global2[_wgslsmith_index_u32(u_input.b, 19u)]), abs(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.b)) ^ vec4<u32>(u_input.c, u_input.b, 1u, 1u), var_0.a.b.zw, select(vec4<u32>(u_input.b, u_input.c, 9493u, u_input.b), vec4<u32>(61387u, 40416u, 70731u, u_input.b), !vec4<bool>(true, var_0.b.c, var_0.b.c, var_0.a.c))), Struct_1(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-38934i, u_input.a.x, -21541i)), select(vec3<i32>(global2[_wgslsmith_index_u32(0u, 19u)], 8476i, 33573i), vec3<i32>(9466i, 8135i, global2[_wgslsmith_index_u32(55551u, 19u)]), vec3<bool>(var_0.a.c, false, var_0.b.c))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.a, var_0.b.a), vec2<f32>(1615f, 905f), false)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(582f - -528f), _wgslsmith_f_op_f32(-var_0.a.b.x))), var_0.b.b, all(!vec3<bool>(var_0.a.c, var_0.b.c, false))));
    var var_1 = vec2<i32>(select(global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(430u, u_input.c)), 19u)], u_input.a.x, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, ~(~0u), max(4294967295u, 65785u)), select(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(abs(1u), 30u)], vec3<u32>(u_input.b, 4379u, 12623u)), ~global0[_wgslsmith_index_u32(~u_input.c, 30u)], any(vec4<bool>(true, var_0.a.c, false, var_0.a.c)))), 19u)]);
    var_0 = Struct_4(var_0.a, var_0.a);
    global0 = array<vec3<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

