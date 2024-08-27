struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<u32>, 2>;

var<private> global2: array<vec3<f32>, 11>;

var<private> global3: array<f32, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: vec4<u32>) -> i32 {
    var var_0 = 17347u;
    global0 = !(!(!(!vec4<bool>(global0.x, false, true, arg_0.d))));
    let var_1 = vec2<i32>(1715i, ~(~(-2147483647i)));
    let var_2 = u_input.d.x;
    global1 = array<vec3<u32>, 2>();
    return u_input.b | 1i;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    global2 = array<vec3<f32>, 11>();
    global1 = array<vec3<u32>, 2>();
    var var_0 = Struct_1(~select(arg_0.a, vec2<u32>(1756u, ~28483u), !vec2<bool>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(arg_0.c.xz)))), global2[_wgslsmith_index_u32(arg_0.a.x, 11u)], false);
    global1 = array<vec3<u32>, 2>();
    var var_1 = firstTrailingBit(~(~(~u_input.a.zx)) & arg_0.a);
    return firstTrailingBit(var_0.a);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    let var_0 = arg_2;
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(909f, 223f, _wgslsmith_f_op_f32(arg_2.b.x + var_1.b.x), _wgslsmith_f_op_f32(max(arg_2.c.x, -258f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(366f, 443f, 843f, 210f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(min(arg_0.c.x, var_0.c.x)), global3[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_f32(-var_1.b.x))))));
    var var_3 = var_0.d;
    let var_4 = !arg_3;
    return vec4<bool>(true, abs(-33515i) <= -abs(func_1(Struct_1(vec2<u32>(4294967295u, u_input.a.x), vec2<f32>(global3[_wgslsmith_index_u32(23534u, 15u)], -1633f), vec3<f32>(arg_0.b.x, 2419f, 1862f), var_1.d), 1i, vec4<u32>(arg_2.a.x, arg_1, 50000u, var_0.a.x), u_input.d)), var_0.d, !all(select(!vec4<bool>(var_1.d, arg_3, false, var_0.d), select(vec4<bool>(var_1.d, false, arg_0.d, true), vec4<bool>(false, var_4, true, true), vec4<bool>(false, true, false, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-vec3<i32>(reverseBits(-1i), func_1(Struct_1(u_input.a.yz, vec2<f32>(global3[_wgslsmith_index_u32(20500u, 15u)], -405f), vec3<f32>(-329f, global3[_wgslsmith_index_u32(u_input.d.x, 15u)], 192f), false), 44190i, vec4<u32>(u_input.d.x, u_input.e.x, u_input.e.x, u_input.d.x), u_input.d), -1i)) >> (((~select(vec3<u32>(u_input.a.x, u_input.d.x, 0u), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), false) >> (u_input.a % vec3<u32>(32u))) | (_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(713u, 3453u, 1u) | u_input.a) >> (global1[_wgslsmith_index_u32(73589u, 2u)] % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_1 = !select(!vec2<bool>(true, global0.x), select(!select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, true)), any(global0.xy)), vec2<bool>(global0.x, true)), true);
    global0 = select(func_3(Struct_1(~vec2<u32>(4294967295u, 4294967295u) << (func_2(Struct_1(u_input.e, vec2<f32>(-506f, -679f), global2[_wgslsmith_index_u32(u_input.d.x, 11u)], global0.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)]) + vec2<f32>(-1024f, global3[_wgslsmith_index_u32(u_input.a.x, 15u)])))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.e), vec2<u32>(u_input.d.x, 4294967295u)), 11u)], global0.x), 0u, Struct_1(max(vec2<u32>(u_input.e.x, 12116u), ~vec2<u32>(5076u, u_input.d.x)), vec2<f32>(_wgslsmith_f_op_f32(floor(-642f)), 425f), vec3<f32>(-2794f, global3[_wgslsmith_index_u32(u_input.e.x << (u_input.a.x % 32u), 15u)], global3[_wgslsmith_index_u32(1u, 15u)]), true), var_1.x), func_3(Struct_1(vec2<u32>(~u_input.d.x, 0u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, -1144f)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(333f, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(49315u, 15u)]), global2[_wgslsmith_index_u32(2501u, 11u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(u_input.e.x, 15u)]) - global2[_wgslsmith_index_u32(u_input.a.x, 11u)])), global3[_wgslsmith_index_u32(abs(11666u), 15u)] <= global3[_wgslsmith_index_u32(u_input.a.x, 15u)]), 25510u, Struct_1(abs(max(u_input.a.xx, u_input.d.xw)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], 1309f) + vec2<f32>(-229f, -338f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(527f, 665f)))), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~u_input.d.x, 11u)]), global0.x), !select(true, func_3(Struct_1(vec2<u32>(u_input.d.x, u_input.e.x), vec2<f32>(-655f, 335f), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], -222f), var_1.x), 3308u, Struct_1(vec2<u32>(u_input.e.x, u_input.d.x), vec2<f32>(global3[_wgslsmith_index_u32(u_input.e.x, 15u)], -1685f), global2[_wgslsmith_index_u32(1u, 11u)], false), false).x, true)), true);
    var var_2 = vec4<u32>(~u_input.e.x, u_input.e.x & ~(~52072u), _wgslsmith_dot_vec3_u32(abs(global1[_wgslsmith_index_u32(select(4294967295u, u_input.e.x, all(global0.xxz)), 2u)]), _wgslsmith_div_vec3_u32(~(~global1[_wgslsmith_index_u32(u_input.e.x, 2u)]), vec3<u32>(~u_input.a.x, u_input.d.x ^ u_input.d.x, func_2(Struct_1(u_input.a.xz, vec2<f32>(2596f, global3[_wgslsmith_index_u32(u_input.d.x, 15u)]), global2[_wgslsmith_index_u32(69890u, 11u)], false)).x))), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(~0u, _wgslsmith_mod_u32(u_input.d.x, 56u)), 21590u));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(32912u, 15u)])) + global3[_wgslsmith_index_u32(~var_2.x, 15u)])), _wgslsmith_f_op_f32(abs(1672f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(980f - -877f)))), _wgslsmith_f_op_f32(-1300f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_2.x, 15u)])) + global3[_wgslsmith_index_u32(1u, 15u)])));
    let var_4 = Struct_1(var_2.yz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.yw), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, global3[_wgslsmith_index_u32(var_2.x, 15u)]) - var_3.wy), _wgslsmith_f_op_vec2_f32(vec2<f32>(1925f, -488f) - vec2<f32>(global3[_wgslsmith_index_u32(1u, 15u)], -1038f))) + _wgslsmith_f_op_vec2_f32(-var_3.ww))), vec3<f32>(-540f, 416f, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(0u, 15u)]))), func_3(Struct_1(var_2.xx, _wgslsmith_f_op_vec2_f32(step(var_3.yw, _wgslsmith_f_op_vec2_f32(-var_3.yw))), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(1u, 11u)]), any(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(global0.x, global0.x, var_1.x, true), false))), ~(firstTrailingBit(u_input.d.x) << (var_2.x % 32u)), Struct_1(_wgslsmith_clamp_vec2_u32(u_input.e, select(vec2<u32>(0u, var_2.x), var_2.zw, global0.xw), ~vec2<u32>(39807u, 26834u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(847f, global3[_wgslsmith_index_u32(1u, 15u)]) - _wgslsmith_f_op_vec2_f32(exp2(var_3.ww))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -1036f, -1455f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, -354f, -697f), var_3.xxy, vec3<bool>(global0.x, false, global0.x)))), false), global0.x).x);
    let var_5 = !all(select(func_3(Struct_1(vec2<u32>(var_4.a.x, u_input.d.x), vec2<f32>(-1808f, var_4.c.x), vec3<f32>(447f, var_3.x, 319f), var_4.d), abs(var_2.x), var_4, false).yxz, select(vec3<bool>(var_1.x, global0.x, var_1.x), !vec3<bool>(global0.x, var_4.d, true), select(vec3<bool>(var_4.d, var_4.d, false), global0.wxx, global0.xxw)), any(!vec2<bool>(global0.x, true))));
    let var_6 = vec4<u32>(11770u, 0u, var_4.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, var_4.a.x, u_input.e.x, 0u), vec4<u32>(var_4.a.x, ~var_2.x, var_4.a.x, _wgslsmith_clamp_u32(var_2.x, 4692u, u_input.d.x))), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.d.yxy, vec3<u32>(var_4.a.x, 3916u, var_4.a.x)), 19009u | var_2.x), var_4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(var_6, vec4<u32>(0u, 78958u, min(var_4.a.x, ~u_input.e.x), ~u_input.e.x), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, var_6.x, u_input.e.x, var_4.a.x), vec4<u32>(var_2.x, var_4.a.x, 81476u, 3317u)))), ~(min(var_4.a, ~vec2<u32>(var_6.x, 0u)) | ~max(var_2.ww, u_input.a.yy)), ~_wgslsmith_mult_vec4_u32(u_input.d, _wgslsmith_add_vec4_u32(u_input.d, var_6)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, u_input.c >> (func_2(var_4).x % 32u), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -4671i), var_0.yz), 25697i), vec4<i32>(u_input.c, -(~var_0.x), -2147483647i, abs(_wgslsmith_mod_i32(var_0.x, var_0.x)))));
}

