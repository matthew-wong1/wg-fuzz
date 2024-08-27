struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(4294967295u, vec2<bool>(false, true), false, vec4<i32>(2147483647i, -36010i, 13773i, 2147483647i), 0u), Struct_1(96922u, vec2<bool>(true, true), false, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 1i), 48844u), Struct_1(1u, vec2<bool>(true, true), false, vec4<i32>(0i, -54654i, 2147483647i, i32(-2147483648)), 36419u), Struct_1(1u, vec2<bool>(true, false), false, vec4<i32>(10597i, 38794i, 2147483647i, -45273i), 1u), Struct_1(55642u, vec2<bool>(false, false), false, vec4<i32>(2147483647i, -17632i, 0i, 2147483647i), 2819u), Struct_1(1u, vec2<bool>(true, true), true, vec4<i32>(20356i, -35651i, 7125i, 0i), 13564u), Struct_1(4294967295u, vec2<bool>(true, false), false, vec4<i32>(2147483647i, i32(-2147483648), 0i, 1i), 49512u), Struct_1(40520u, vec2<bool>(false, true), true, vec4<i32>(-53407i, 48345i, 0i, 30866i), 42536u), Struct_1(0u, vec2<bool>(true, false), false, vec4<i32>(63024i, 0i, 85942i, 2147483647i), 1929u), Struct_1(32189u, vec2<bool>(false, false), false, vec4<i32>(-58439i, 2147483647i, -16015i, 1i), 3078u), Struct_1(21547u, vec2<bool>(true, false), false, vec4<i32>(7765i, -8354i, 905i, -6317i), 1u), Struct_1(0u, vec2<bool>(true, false), true, vec4<i32>(-1i, -10563i, -110911i, 21394i), 1u), Struct_1(29979u, vec2<bool>(false, true), false, vec4<i32>(-22674i, 17961i, -7114i, 2147483647i), 4294967295u), Struct_1(37136u, vec2<bool>(false, true), false, vec4<i32>(32050i, 4999i, 2147483647i, 1i), 0u), Struct_1(4294967295u, vec2<bool>(false, false), false, vec4<i32>(-2072i, 47146i, -1i, i32(-2147483648)), 22272u), Struct_1(4294967295u, vec2<bool>(true, true), true, vec4<i32>(2147483647i, 2147483647i, 2147483647i, -18337i), 17650u), Struct_1(132992u, vec2<bool>(false, true), true, vec4<i32>(-1i, i32(-2147483648), -17034i, 4290i), 1242u), Struct_1(13682u, vec2<bool>(false, false), true, vec4<i32>(38913i, 0i, -1i, 0i), 26771u));

var<private> global3: array<i32, 19>;

var<private> global4: array<bool, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = ~global0.x;
    global1 = 2147483647i;
    global4 = array<bool, 1>();
    let var_1 = global0.x;
    var var_2 = !(!select(vec2<bool>(true, true), select(!vec2<bool>(global4[_wgslsmith_index_u32(global0.x, 1u)], true), select(vec2<bool>(false, true), vec2<bool>(global4[_wgslsmith_index_u32(35477u, 1u)], true), vec2<bool>(false, true)), select(vec2<bool>(global4[_wgslsmith_index_u32(global0.x, 1u)], global4[_wgslsmith_index_u32(10648u, 1u)]), vec2<bool>(false, true), true)), vec2<bool>(false, true)));
    return 1121i;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(654f, arg_2) - _wgslsmith_f_op_vec2_f32(vec2<f32>(306f, 694f) + vec2<f32>(944f, -102f)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 * -319f), -468f, !arg_1))))));
    var var_1 = vec2<i32>(13039i, global3[_wgslsmith_index_u32(~(~(~(global0.x << (4294967295u % 32u)))), 19u)]);
    let var_2 = Struct_1(global0.x, vec2<bool>(!(_wgslsmith_add_i32(-10831i, global3[_wgslsmith_index_u32(4294967295u, 19u)]) >= 66634i), true), select(true, arg_2 == _wgslsmith_f_op_f32(f32(-1f) * -2645f), true), vec4<i32>(_wgslsmith_sub_i32(~min(u_input.a.x, 2147483647i), -2147483647i), -var_1.x, global3[_wgslsmith_index_u32(21453u, 19u)], global3[_wgslsmith_index_u32(24166u, 19u)]), global0.x);
    let var_3 = vec4<i32>(3889i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(4294967295u, var_2.a, true), 89983u), 19u)], u_input.a.x, min(-var_1.x, -3895i));
    let var_4 = Struct_2(362f, 1i, 0u, vec3<i32>(u_input.a.x, ~func_3(var_2.c), ~min(var_2.d.x, -63274i)) | vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, var_3.x >> (global0.x % 32u), _wgslsmith_mod_i32(var_3.x, var_3.x)), 1i, 56594i), var_2.b);
    return max(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(101864u & _wgslsmith_mod_u32(global0.x, var_2.e), 19u)], ~_wgslsmith_div_i32(var_1.x, u_input.a.x)), vec2<i32>(var_2.d.x, 0i), select(var_3.zw, vec2<i32>(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_sub_i32(var_1.x, -62955i)), !(!var_4.e))), vec2<i32>(var_1.x, firstTrailingBit(35029i)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(ceil(1755f)), _wgslsmith_dot_vec2_i32(~(~(~u_input.a)), func_2(!select(vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 1u)], global4[_wgslsmith_index_u32(90977u, 1u)], true), vec3<bool>(global4[_wgslsmith_index_u32(global0.x, 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<bool>(false, true, global4[_wgslsmith_index_u32(1u, 1u)])), any(vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 1u)], false, global4[_wgslsmith_index_u32(arg_0.x, 1u)])) | !global4[_wgslsmith_index_u32(1u, 1u)], -1427f)), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(0u, 4294967295u, arg_0.x, arg_0.x)), min(~_wgslsmith_mult_vec4_u32(vec4<u32>(43143u, 4294967295u, 1u, 32391u), vec4<u32>(0u, 22691u, arg_0.x, 1u)), firstTrailingBit(vec4<u32>(global0.x, global0.x, global0.x, arg_0.x)))), firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(1i, global3[_wgslsmith_index_u32(global0.x, 19u)], u_input.a.x)), 48776i, -_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), vec2<bool>(true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(vec3<u32>(_wgslsmith_add_u32(1u, global0.x) >> (4294967295u % 32u), 1u, reverseBits(global0.x))));
    let var_1 = global2[_wgslsmith_index_u32(1u, 18u)];
    let var_2 = !var_1.b;
    let var_3 = var_1.a | 44645u;
    var var_4 = -var_0.d.yy;
    global0 = vec2<u32>(_wgslsmith_add_u32(abs(~4294967295u), ~4294967295u | (var_1.e ^ var_1.e)), ~(~17315u) & _wgslsmith_mult_u32(reverseBits(var_3), ~var_1.a)) >> (~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(var_3, 942u)), select(vec2<u32>(4294967295u, global0.x), vec2<u32>(var_1.e, 4294967295u), true)), (vec2<u32>(4294967295u, var_0.c) >> (vec2<u32>(1u, var_3) % vec2<u32>(32u))) ^ ~vec2<u32>(var_3, var_1.e)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec2<u32>(max(27903u, ~(~4294967295u)), 20468u), _wgslsmith_f_op_f32(-2283f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2347f, -105f))));
}

