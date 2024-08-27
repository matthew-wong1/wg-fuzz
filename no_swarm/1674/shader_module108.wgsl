struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(28521u, vec3<bool>(false, false, true), true, vec2<bool>(false, true), vec3<f32>(1253f, 817f, -978f)), Struct_1(3643u, vec3<bool>(false, false, false), false, vec2<bool>(false, true), vec3<f32>(-272f, -1000f, -118f)), Struct_1(65559u, vec3<bool>(true, true, false), false, vec2<bool>(false, false), vec3<f32>(124f, 971f, -363f)), Struct_1(4294967295u, vec3<bool>(true, true, true), true, vec2<bool>(false, true), vec3<f32>(-571f, -1000f, 1014f)), Struct_1(52415u, vec3<bool>(true, false, true), false, vec2<bool>(false, false), vec3<f32>(-589f, -1475f, -914f)), Struct_1(19031u, vec3<bool>(true, false, true), false, vec2<bool>(false, true), vec3<f32>(409f, 2373f, -930f)), Struct_1(1u, vec3<bool>(true, true, true), false, vec2<bool>(true, true), vec3<f32>(1202f, -1765f, -391f)), Struct_1(0u, vec3<bool>(false, false, false), false, vec2<bool>(true, true), vec3<f32>(430f, 1039f, 626f)), Struct_1(43510u, vec3<bool>(true, false, true), true, vec2<bool>(false, true), vec3<f32>(547f, -735f, -1489f)), Struct_1(4294967295u, vec3<bool>(false, false, true), false, vec2<bool>(false, true), vec3<f32>(179f, -1727f, 1430f)), Struct_1(1u, vec3<bool>(false, true, false), false, vec2<bool>(false, true), vec3<f32>(212f, 458f, -1608f)), Struct_1(43246u, vec3<bool>(true, true, true), true, vec2<bool>(true, false), vec3<f32>(-250f, -1246f, 1599f)), Struct_1(36607u, vec3<bool>(false, false, false), true, vec2<bool>(true, false), vec3<f32>(-879f, 1751f, -2074f)), Struct_1(0u, vec3<bool>(true, false, true), false, vec2<bool>(false, false), vec3<f32>(-1387f, -1351f, -1460f)), Struct_1(108175u, vec3<bool>(true, false, false), false, vec2<bool>(false, true), vec3<f32>(1000f, 1558f, 1566f)), Struct_1(54404u, vec3<bool>(false, true, true), true, vec2<bool>(true, true), vec3<f32>(1664f, 761f, -987f)), Struct_1(2463u, vec3<bool>(false, false, true), false, vec2<bool>(false, false), vec3<f32>(677f, -295f, -261f)), Struct_1(1u, vec3<bool>(true, false, false), true, vec2<bool>(true, false), vec3<f32>(409f, 804f, -898f)), Struct_1(24860u, vec3<bool>(false, false, false), false, vec2<bool>(true, true), vec3<f32>(-1000f, 163f, -1005f)), Struct_1(53967u, vec3<bool>(true, true, false), true, vec2<bool>(true, false), vec3<f32>(-1000f, 728f, 1000f)), Struct_1(15072u, vec3<bool>(true, true, true), true, vec2<bool>(true, true), vec3<f32>(-433f, -888f, 2940f)), Struct_1(105205u, vec3<bool>(false, true, false), true, vec2<bool>(true, true), vec3<f32>(-1000f, 201f, 460f)), Struct_1(12891u, vec3<bool>(false, false, false), false, vec2<bool>(false, true), vec3<f32>(381f, 1510f, -159f)), Struct_1(0u, vec3<bool>(true, true, true), false, vec2<bool>(true, false), vec3<f32>(-283f, 692f, -1034f)), Struct_1(0u, vec3<bool>(false, true, true), true, vec2<bool>(false, true), vec3<f32>(1278f, 1030f, 587f)), Struct_1(4405u, vec3<bool>(true, false, false), false, vec2<bool>(true, true), vec3<f32>(316f, 491f, -684f)), Struct_1(1u, vec3<bool>(true, false, false), false, vec2<bool>(false, false), vec3<f32>(188f, -827f, 1066f)), Struct_1(40753u, vec3<bool>(true, true, false), true, vec2<bool>(false, false), vec3<f32>(119f, 135f, -1004f)), Struct_1(57834u, vec3<bool>(false, true, true), true, vec2<bool>(false, false), vec3<f32>(-345f, -1077f, -375f)), Struct_1(4294967295u, vec3<bool>(false, true, false), false, vec2<bool>(true, true), vec3<f32>(-1553f, -2557f, -1000f)));

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<f32>, 32>;

var<private> global3: bool = true;

var<private> global4: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    global0 = array<Struct_1, 30>();
    global2 = array<vec4<f32>, 32>();
    global4 = array<vec3<bool>, 27>();
    global2 = array<vec4<f32>, 32>();
    let var_0 = !(true || all(vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f + global1.x)));
}

fn func_2() -> bool {
    global3 = 338f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(667f, global1.x, false)));
    global2 = array<vec4<f32>, 32>();
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), global1.x), vec4<f32>(_wgslsmith_div_f32(-319f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + _wgslsmith_f_op_f32(func_3(u_input.a, vec4<f32>(-141f, global1.x, global1.x, -295f), 17982u, vec2<f32>(global1.x, global1.x))))), global1.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1808f, global1.x) * -139f))));
    var var_0 = Struct_2(true, global0[_wgslsmith_index_u32(reverseBits(abs(30020u)), 30u)], global0[_wgslsmith_index_u32(select(min(1u, select(27077u, firstTrailingBit(4294967295u), global1.x < global1.x)), ~(~_wgslsmith_mod_u32(35601u, 17853u)), false && !(u_input.a < 861i)), 30u)], Struct_1(~19353u, !global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(49133u, 0u), vec2<u32>(73343u, 2104u)), 27u)], !(any(vec2<bool>(true, true)) == false), !select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1219f, global1.x) - vec3<f32>(global1.x, -405f, -1353f)))))));
    let var_1 = _wgslsmith_dot_vec2_u32(firstLeadingBit(firstTrailingBit(abs(~vec2<u32>(var_0.d.a, 4294967295u)))), vec2<u32>(~_wgslsmith_mult_u32(abs(var_0.b.a), ~var_0.d.a), _wgslsmith_sub_u32(select(0u, 4294967295u, true), 1u) >> (var_0.c.a % 32u)));
    return _wgslsmith_div_u32(~(~(~101197u)), ~firstTrailingBit(var_1)) >= 1u;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> u32 {
    global3 = all(vec4<bool>(func_2() | (abs(u_input.a) < ~u_input.a), true, all(!(!vec4<bool>(true, true, false, arg_0.b.d.x))), arg_0.c.c));
    var var_0 = firstLeadingBit(abs(~vec4<i32>(-u_input.a, 1i, 0i, -u_input.a)));
    global1 = _wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(1u, 32u)]));
    let var_1 = !(!vec4<bool>(_wgslsmith_mod_u32(49570u, arg_0.c.a) < min(arg_2, arg_2), !(81590u < arg_2), !any(vec4<bool>(true, arg_0.d.d.x, arg_0.b.b.x, arg_0.a)), !arg_0.b.d.x));
    let var_2 = Struct_1(~(_wgslsmith_div_u32(1u, arg_0.b.a) | select(21254u, arg_0.b.a, !var_1.x)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(~46533u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(32483u, 33226u, arg_0.c.a), vec3<u32>(74013u, 1u, arg_2))), arg_0.b.a), 27u)], true, !select(!vec2<bool>(var_1.x, false), !arg_0.d.b.xz, select(true, arg_0.b.b.x && false, true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.e.x), _wgslsmith_f_op_f32(130f - arg_0.d.e.x))), global1.x))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(53405u, 41564u), ~54379u)), select(global4[_wgslsmith_index_u32(0u, 27u)], vec3<bool>(all(vec3<bool>(true, false, true)), false, (global1.x >= global1.x) && true), vec3<bool>(all(vec3<bool>(true, true, true)), func_1(Struct_2(true, Struct_1(14254u, vec3<bool>(true, true, false), true, vec2<bool>(false, false), global1.xzx), global0[_wgslsmith_index_u32(35412u, 30u)], Struct_1(1u, global4[_wgslsmith_index_u32(7879u, 27u)], false, vec2<bool>(true, true), global1.xwx)), global1.x, 4294967295u) >= 55802u, all(vec4<bool>(false, true, false, false)))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)) || ((20522u | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 65516u), vec2<u32>(3258u, 1u))) >= ~(~18770u)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), global1.x), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_3(u_input.a, vec4<f32>(global1.x, global1.x, global1.x, -110f), 1u, global1.zw)), _wgslsmith_f_op_f32(step(-530f, global1.x))), global1.yzy))));
    global4 = array<vec3<bool>, 27>();
    let var_1 = Struct_2(var_0.b.x, global0[_wgslsmith_index_u32(var_0.a | _wgslsmith_add_u32(var_0.a, 5271u), 30u)], var_0, var_0);
    var var_2 = 1i;
    let var_3 = ~_wgslsmith_clamp_u32(4294967295u, countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a, var_1.d.a, 88800u, var_0.a), ~vec4<u32>(var_1.b.a, 22187u, var_0.a, var_1.c.a))), _wgslsmith_clamp_u32(3486u, ~(~var_1.d.a), countOneBits(~var_1.c.a)));
    global1 = vec4<f32>(-1929f, -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * var_1.d.e.x), _wgslsmith_f_op_f32(floor(-986f))))), var_0.e.x);
    global0 = array<Struct_1, 30>();
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, -470f, global1.x, 772f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(368f, 1657f)) - vec2<f32>(-345f, -1265f)) + var_0.e.zx)));
}

