struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 2147483647i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = 698f;
    var var_1 = Struct_1(firstLeadingBit(vec4<u32>(6564u, _wgslsmith_sub_u32(37627u, 32337u), abs(~57132u), 1u)));
    var_1 = Struct_1(~var_1.a);
    global0 = array<bool, 2>();
    var var_2 = Struct_3(vec4<u32>(var_1.a.x, 23198u, _wgslsmith_dot_vec2_u32(var_1.a.zy, ~var_1.a.xw) ^ (1u & _wgslsmith_mod_u32(var_1.a.x, var_1.a.x)), 4294967295u), vec2<u32>(abs(_wgslsmith_clamp_u32(~1u, 13660u, 1u)), var_1.a.x), 1u != var_1.a.x, any(vec2<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 2u)], global0[_wgslsmith_index_u32(4294967295u | var_1.a.x, 2u)])) & !(!global0[_wgslsmith_index_u32(0u, 2u)]), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f * -450f)), var_1.a.x, !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a.x, min(41809u, 1u)), 2u)], global1.x, true));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(-var_0)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.e.a + 342f), _wgslsmith_f_op_f32(step(var_2.e.a, 331f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-100f + var_0))))));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global1 = vec4<i32>(-90456i, u_input.a.x, (-global1.x & -u_input.b.x) | (2147483647i >> (arg_0.a.x % 32u)), global1.x) << (vec4<u32>(~1u, _wgslsmith_add_u32(4294967295u, min(arg_0.a.x, arg_0.a.x & arg_0.a.x)), _wgslsmith_div_u32(firstTrailingBit(1u), arg_0.a.x), 63934u) % vec4<u32>(32u));
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()));
    var var_2 = Struct_2(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)), select(0u, min(arg_0.a.x, ~arg_0.a.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.a.x >> (12333u % 32u), _wgslsmith_sub_u32(25871u, arg_0.a.x), reverseBits(1u)), 2u)] & !global0[_wgslsmith_index_u32(~arg_0.a.x, 2u)]), any(select(vec3<bool>(false || global0[_wgslsmith_index_u32(arg_0.a.x, 2u)], true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.x, 2u)] && global0[_wgslsmith_index_u32(arg_0.a.x, 2u)], any(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], true, false))), !select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 2u)], global0[_wgslsmith_index_u32(9882u, 2u)], true), vec3<bool>(global0[_wgslsmith_index_u32(61228u, 2u)], true, global0[_wgslsmith_index_u32(arg_0.a.x, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 2u)], true, false)))), global1.x, true);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_div_f32(-359f, -2484f)) + _wgslsmith_f_op_vec2_f32(func_3()))));
    return min(max(vec4<i32>(~(-2147483647i), _wgslsmith_clamp_i32(u_input.b.x, var_0.x, 0i), abs(0i), ~var_2.d) << (arg_0.a % vec4<u32>(32u)), vec4<i32>(u_input.a.x & u_input.a.x, var_2.d ^ -5528i, var_2.d, -2147483647i) | vec4<i32>(26663i, -66380i, 1i, _wgslsmith_mod_i32(u_input.a.x, 0i))), _wgslsmith_clamp_vec4_i32(-u_input.b, _wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, global1.x, global1.x), u_input.b), -u_input.b, countOneBits(min(vec4<i32>(var_2.d, 2147483647i, 21176i, 0i), vec4<i32>(2147483647i, 5330i, u_input.a.x, -10800i)))), u_input.b));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    global1 = _wgslsmith_mod_vec4_i32(func_2(Struct_1(arg_2.a)), func_2(Struct_1(arg_2.a)));
    global0 = array<bool, 2>();
    let var_0 = Struct_3(select(arg_2.a, _wgslsmith_add_vec4_u32(arg_2.a, ~arg_2.a | vec4<u32>(49012u, arg_2.a.x, arg_2.a.x, arg_2.a.x)), !select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a.x, 2u)], false, true, global0[_wgslsmith_index_u32(arg_2.a.x, 2u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(107381u, 2u)], global0[_wgslsmith_index_u32(arg_2.a.x, 2u)], false, global0[_wgslsmith_index_u32(arg_2.a.x, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a.x, 2u)], global0[_wgslsmith_index_u32(arg_2.a.x, 2u)], global0[_wgslsmith_index_u32(30752u, 2u)], false), vec4<bool>(global0[_wgslsmith_index_u32(12812u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(arg_2.a.x, 2u)])), !global0[_wgslsmith_index_u32(0u, 2u)])), arg_2.a.wx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1713f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f))) < _wgslsmith_f_op_f32(exp2(arg_0.x)), false || !(-293f != arg_0.x), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - 448f))), -1102f)), 46454u, any(vec4<bool>(global0[_wgslsmith_index_u32(25492u, 2u)] & global0[_wgslsmith_index_u32(arg_2.a.x, 2u)], true, true, global0[_wgslsmith_index_u32(~arg_2.a.x, 2u)])), global1.x, true));
    let var_1 = any(select(!select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(2417u, 2u)]), vec2<bool>(var_0.e.e, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, var_0.c), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)]), vec2<bool>(var_0.e.c, global0[_wgslsmith_index_u32(4294967295u, 2u)]))), !vec2<bool>(true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.e.b, 2u)], true, false))), global0[_wgslsmith_index_u32(~0u, 2u)]));
    global0 = array<bool, 2>();
    return ~arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(4294967295u, 4294967295u, 16234u), vec3<u32>(0u, 10155u, 24576u), vec3<bool>(false, false, false))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(53639u, 96610u))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~0u, ~0u, ~20011u), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 22550u, 0u, 14696u), vec4<u32>(1461u, 1u, 4294967295u, 1u))), 54701u, ~0u));
    var var_1 = select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, select(~82472u, 47362u, true)), 2u)]), !vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, func_1(vec4<f32>(1610f, 623f, -731f, -742f), u_input.b, Struct_1(vec4<u32>(31442u, 28914u, var_0.x, var_0.x)))), 2u)], all(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)])), var_0.x < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, 29598u, 32849u), vec4<u32>(1521u, 27551u, var_0.x, 55209u))), !vec3<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 2u)], true, global0[_wgslsmith_index_u32(var_0.x, 2u)])), -1i > u_input.a.x, false));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(705f)), _wgslsmith_f_op_f32(f32(-1f) * -471f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2714f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-702f, 830f)), _wgslsmith_f_op_f32(1137f * 1646f)))))));
    let var_4 = vec3<f32>(1111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-374f, -142f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f * -1392f))))), -431f);
    var var_5 = select(vec2<bool>(global0[_wgslsmith_index_u32(~1u, 2u)], true), !select(vec2<bool>(false & global0[_wgslsmith_index_u32(var_0.x, 2u)], true), vec2<bool>(false || var_1.x, var_1.x), true), !select(var_1.yx, var_1.zy, global0[_wgslsmith_index_u32(func_1(vec4<f32>(var_4.x, 739f, -381f, var_4.x), var_2, Struct_1(vec4<u32>(59132u, var_0.x, var_0.x, 29502u))) & ~54576u, 2u)]));
    let var_6 = Struct_1(max(~(firstLeadingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 17540u)) ^ (vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x) & vec4<u32>(73617u, 23787u, var_0.x, var_0.x))), (vec4<u32>(var_0.x, 15412u, var_0.x, var_0.x) ^ ~vec4<u32>(0u, 53121u, 1u, var_0.x)) & ~vec4<u32>(var_0.x, 4294967295u, 10533u, 39467u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1544f, 465f, 103f, var_4.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, var_4.x, var_4.x, 620f)))))), _wgslsmith_mod_u32(var_0.x, 46858u));
}

