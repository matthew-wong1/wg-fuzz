struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
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

var<private> global0: vec2<i32>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(1u, 2499u), vec2<bool>(false, false), false, true, vec4<f32>(1535f, -557f, 404f, -315f));

var<private> global2: array<bool, 11>;

var<private> global3: array<vec2<bool>, 1>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.e.x + global1.e.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1.e.x, 1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x + global1.e.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.e.x * -125f))), _wgslsmith_f_op_f32(abs(886f)));
    var var_1 = _wgslsmith_add_vec2_i32(-(vec2<i32>(-29322i, global0.x) | vec2<i32>(_wgslsmith_mod_i32(global0.x, u_input.e), -19336i)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -select(vec2<i32>(27846i, u_input.d), vec2<i32>(-1i, -2147483647i), vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], global1.c)), -firstLeadingBit(-vec2<i32>(-55138i, -2147483647i))));
    let var_2 = _wgslsmith_add_i32(global0.x, _wgslsmith_mult_i32(u_input.d, global0.x));
    var_1 = vec2<i32>(_wgslsmith_sub_i32(abs(abs(var_2)), ~_wgslsmith_clamp_i32(1i, var_2, 2147483647i)) | 10618i, ~(1i << (u_input.c.x % 32u)));
    let var_3 = select(-select(abs(vec2<i32>(u_input.e, 18061i)), max(~vec2<i32>(u_input.e, global0.x), ~vec2<i32>(0i, -1i)), select(!global1.b, vec2<bool>(false, true), !global2[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_div_vec2_i32(vec2<i32>(-14665i, ~var_1.x), abs(firstLeadingBit(firstTrailingBit(vec2<i32>(var_2, 0i))))), !select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 11u)], false), global3[_wgslsmith_index_u32(79265u, 1u)], true), select(global1.b, global1.b, global1.b), vec2<bool>(global2[_wgslsmith_index_u32(global1.a.x, 11u)], false)), vec2<bool>(global2[_wgslsmith_index_u32(32254u ^ global1.a.x, 11u)], !global2[_wgslsmith_index_u32(u_input.a, 11u)]), select(!global1.b, select(global3[_wgslsmith_index_u32(arg_0, 1u)], vec2<bool>(false, false), vec2<bool>(true, global1.b.x)), global1.e.x > global1.e.x)));
    return global0.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec2<u32> {
    global0 = arg_3.xx;
    let var_0 = reverseBits((max(func_3(4294967295u), u_input.e) | firstTrailingBit(arg_3.x)) << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, u_input.c.x) << (u_input.a % 32u), ~1u) % 32u));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(global1.a, min(min(vec2<u32>(0u, arg_1.a.x), vec2<u32>(u_input.b, 0u)), arg_1.a)), !vec2<bool>(any(vec4<bool>(arg_2.x, true, false, arg_1.b.x)), arg_0), true, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.e.x, global1.e.x), 1f), arg_1.e.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.e.x), -1778f, false)), global1.e.x)));
    let var_2 = ~vec3<u32>(0u, _wgslsmith_dot_vec4_u32(u_input.c, ~(vec4<u32>(4294967295u, 55345u, 12472u, 4294967295u) | vec4<u32>(1u, 15803u, global1.a.x, 93537u))), 14541u);
    global3 = array<vec2<bool>, 1>();
    return arg_1.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    var var_0 = abs((u_input.d & arg_0.x) << (20349u % 32u));
    global1 = Struct_1(u_input.c.wy ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), func_2(any(vec3<bool>(global2[_wgslsmith_index_u32(43954u, 11u)], arg_3, true)), Struct_1(global1.a, vec2<bool>(arg_3, global2[_wgslsmith_index_u32(u_input.a, 11u)]), false, true, vec4<f32>(global1.e.x, -796f, 753f, -1000f)), vec4<bool>(false, global1.d, global1.b.x, false), _wgslsmith_mult_vec3_i32(arg_0, arg_0))), !vec2<bool>(global1.e.x == _wgslsmith_f_op_f32(max(arg_1.x, 119f)), false), !select(true, _wgslsmith_f_op_f32(arg_1.x - arg_1.x) == _wgslsmith_f_op_f32(arg_1.x * 1000f), _wgslsmith_f_op_f32(-arg_1.x) < _wgslsmith_f_op_f32(arg_2.x * 2067f)), select(any(vec4<bool>(global2[_wgslsmith_index_u32(global1.a.x, 11u)], true, !arg_3, any(vec2<bool>(true, false)))), any(select(vec4<bool>(false, arg_3, arg_3, global1.c), vec4<bool>(false, false, global1.c, global2[_wgslsmith_index_u32(35357u, 11u)]), !vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(28231u, 11u)]))), any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], false))), arg_1);
    var var_1 = Struct_1(~vec2<u32>(~countOneBits(34724u), global1.a.x), vec2<bool>(!(select(false, global1.b.x, false) | !global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, 17407u), ~global1.a.x), 11u)]), any(select(select(global3[_wgslsmith_index_u32(31544u, 1u)], global1.b, vec2<bool>(false, true)), select(global3[_wgslsmith_index_u32(11113u, 1u)], vec2<bool>(true, true), true), vec2<bool>(false, true))) && !(~u_input.a > 24038u), !global2[_wgslsmith_index_u32((4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 49239u, 1u), vec3<u32>(u_input.a, 4294967295u, 63702u))) >> (u_input.b % 32u), 11u)], _wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), 1000f, _wgslsmith_f_op_f32(floor(global1.e.x)), _wgslsmith_f_op_f32(arg_1.x + global1.e.x)))));
    let var_2 = Struct_1(~(vec2<u32>(min(global1.a.x, var_1.a.x), _wgslsmith_clamp_u32(32675u, var_1.a.x, 49609u)) >> (vec2<u32>(~u_input.c.x, ~0u) % vec2<u32>(32u))), vec2<bool>(true, true), false, global1.b.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1117f, _wgslsmith_div_f32(757f, global1.e.x), _wgslsmith_f_op_f32(-1520f * _wgslsmith_f_op_f32(-arg_1.x)), 824f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, var_1.e.x, -2128f, _wgslsmith_f_op_f32(285f + 381f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e.x, -1196f, arg_2.x, -1299f), vec4<f32>(var_1.e.x, arg_2.x, -107f, -734f), true))), select(vec4<bool>(10792u >= global1.a.x, !global2[_wgslsmith_index_u32(global1.a.x, 11u)], !arg_3, false), vec4<bool>(true, select(var_1.c, false, global2[_wgslsmith_index_u32(u_input.a, 11u)]), select(global1.d, true, false), u_input.e >= arg_0.x), all(vec3<bool>(true, true, true))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, -1000f))))) - var_1.e.ww);
    return ~(~(~countOneBits(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 11>();
    global1 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~53577u, ~(~7679u)), vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(u_input.c.x), global1.a.x, _wgslsmith_sub_u32(1u, global1.a.x)), global1.a.x)), global3[_wgslsmith_index_u32(u_input.a, 1u)], !(abs(-global0.x) > _wgslsmith_mod_i32(~global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(1i, global0.x)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(97804u, min(global1.a.x | _wgslsmith_dot_vec2_u32(u_input.c.xy, global1.a), _wgslsmith_mult_u32(1u, ~u_input.b))), 11u)], global1.e);
    var var_0 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(1u, u_input.b), global1.a.x) << (~min(u_input.c.wx, vec2<u32>(0u, global1.a.x)) % vec2<u32>(32u)), vec2<u32>((u_input.a << (u_input.a % 32u)) ^ global1.a.x, func_1(-vec3<i32>(u_input.e, 2147483647i, global0.x), vec4<f32>(global1.e.x, global1.e.x, global1.e.x, 676f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, -582f, global1.e.x, 1847f) + vec4<f32>(-422f, global1.e.x, -461f, -237f)), false))), vec2<bool>(false, global1.b.x), true, global2[_wgslsmith_index_u32(func_1(vec3<i32>(-6583i & _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, -7138i), vec3<i32>(global0.x, 0i, global0.x)), _wgslsmith_sub_i32(~29358i, global0.x), ~(-u_input.e)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.e.x)), -396f, -826f, _wgslsmith_f_op_f32(abs(252f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(866f, global1.e.x, global1.e.x, 265f)))), false), 11u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1.e * global1.e))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.e.x, global1.e.x, 2007f, global1.e.x), global1.e)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(global1.e.x, global1.e.x)), global1.e.x, global1.e.x, global1.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, -862f, -1596f, 1000f) - global1.e) + vec4<f32>(global1.e.x, 851f, global1.e.x, global1.e.x))))));
    var var_1 = _wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(-1263f + _wgslsmith_f_op_f32(1017f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e.x), 491f))));
    global3 = array<vec2<bool>, 1>();
    let var_2 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(63573u, 4294967295u), reverseBits(global1.a.x)), ~vec2<u32>(0u, 1u)), min(firstTrailingBit(firstLeadingBit(vec2<u32>(18581u, global1.a.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, global1.a.x), global1.a) >> (abs(vec2<u32>(31564u, u_input.c.x)) % vec2<u32>(32u)))), !global3[_wgslsmith_index_u32(0u, 1u)], global1.c, global2[_wgslsmith_index_u32(u_input.b, 11u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global1.e))) - var_0.e), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global1.e.x, 1177f, global1.e.x, -1595f), global1.e))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, var_0.e.x, 1000f, var_0.e.x)))));
    let var_3 = reverseBits(vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(var_0.a.x), 30753u), 37333u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, var_2.a.x, 18143u, u_input.b), vec4<u32>(var_0.a.x, u_input.a, var_3.x, global1.a.x))));
}

