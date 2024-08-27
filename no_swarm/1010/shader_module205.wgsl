struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, true, false, false, true, false, false, true, true, true, true, false, true, false, false, false);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(238f, 593f), 1000f, -222f, -630f, 673f);

var<private> global2: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> bool {
    var var_0 = 1812f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.x)))), 172f);
    let var_2 = 41604i;
    var var_3 = 1u;
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.c)), 1860f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * global3.a.x) * 375f))), _wgslsmith_div_f32(global3.d, global3.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.d))), _wgslsmith_f_op_f32(global1.c - global3.b), global1.c);
    return false;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = 107f;
    let var_1 = Struct_1(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c - var_0) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_2.b) * _wgslsmith_f_op_f32(floor(1307f)))))), arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))));
    var var_2 = 14911u;
    let var_3 = u_input.d;
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1778f, var_1.d) * var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + -837f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1227f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)))))), _wgslsmith_f_op_f32(-655f * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)));
    return vec4<i32>(select(-reverseBits(u_input.b.x), ~(-2147483647i), func_3(~u_input.c.x, u_input.b.zw) || true), _wgslsmith_dot_vec2_i32(vec2<i32>(-3432i, -18218i), _wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.d, 25200i) | u_input.b.wz, _wgslsmith_sub_vec2_i32(u_input.b.xw, vec2<i32>(u_input.d, var_3))), vec2<i32>(0i, var_3) << (u_input.c.wz % vec2<u32>(32u)))), 5068i, 104i);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1494f, _wgslsmith_f_op_f32(f32(-1f) * -545f))), vec3<f32>(arg_0.e, global3.a.x, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(round(global3.c))))));
    var var_1 = !select(!(!vec3<bool>(global0[_wgslsmith_index_u32(19393u, 17u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 17u)])), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(72487u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])), global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 2031u), 16u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(68403u, 17u)]));
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.a + vec2<f32>(922f, var_0.x)))) * vec2<f32>(global3.a.x, _wgslsmith_div_f32(global3.b, 1455f))))), -240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e) * _wgslsmith_f_op_f32(round(-1763f))))), 227f, _wgslsmith_f_op_f32(global1.b + 164f));
    var var_2 = -922f;
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global3.a - global1.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1.a)))))), _wgslsmith_f_op_f32(-global3.e), -1000f, 678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d))));
    return arg_1.x;
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(u_input.a, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, u_input.c.x, 81565u, 76012u), abs(u_input.c), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)], true)), _wgslsmith_sub_vec4_u32(~u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, u_input.c))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f - global1.c)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -176f)))))) * 1658f);
    let var_2 = !select(vec2<bool>(global0[_wgslsmith_index_u32(var_0, 17u)], any(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], false))), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], true), true);
    var var_3 = ~var_0;
    var var_4 = 1u;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.e) + global3.a))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-281f, _wgslsmith_div_f32(1473f, -805f))) + -431f) - -653f), global1.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.e))), global1.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b * global3.b), global3.d), global0[_wgslsmith_index_u32(u_input.a, 17u)])), -671f);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = select(vec4<i32>(-30295i, u_input.d ^ (u_input.d | 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(50192i, arg_2, -77982i), u_input.b.zzz), ~arg_2), -(~u_input.b), vec4<bool>(any(!vec2<bool>(arg_0, true)), global0[_wgslsmith_index_u32(26132u, 17u)], !(!arg_0), global0[_wgslsmith_index_u32(~u_input.a, 17u)])) << (vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x) % vec4<u32>(32u));
    let var_1 = global0[_wgslsmith_index_u32(~(~69785u), 17u)];
    var var_2 = abs(-(-var_0.x ^ ~_wgslsmith_mod_i32(arg_2, 1i)));
    global2 = array<vec3<bool>, 16>();
    let var_3 = !any(!vec4<bool>(all(vec4<bool>(false, false, arg_0, false)), any(vec3<bool>(true, true, false)), arg_0, !global0[_wgslsmith_index_u32(0u, 17u)]));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<f32>) -> f32 {
    global2 = array<vec3<bool>, 16>();
    global2 = array<vec3<bool>, 16>();
    let var_0 = arg_3.x;
    var var_1 = Struct_1(vec2<f32>(global3.a.x, global3.c), global1.e, arg_1.x, _wgslsmith_f_op_f32(ceil(-1084f)), -159f);
    var var_2 = func_6(!global0[_wgslsmith_index_u32(~arg_0, 17u)], func_5(-func_4(Struct_1(vec2<f32>(-1091f, arg_3.x), 934f, -1000f, -1311f, -628f), func_2(-1264f, vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(arg_0, 17u)]), Struct_1(vec2<f32>(-153f, arg_1.x), -195f, arg_1.x, global1.b, arg_1.x), arg_3.xy))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.d, arg_2), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b.x, 1i), min(arg_2 ^ u_input.d, -9662i), ~(~u_input.b.x)), u_input.b.x));
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_7(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = u_input.c.x >> (_wgslsmith_sub_u32(1u >> (0u % 32u), _wgslsmith_add_u32(86678u, _wgslsmith_sub_u32(u_input.c.x, 1u))) % 32u);
    let var_1 = vec2<i32>(_wgslsmith_div_i32(~(-64125i), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(arg_1.x, u_input.b.x), max(u_input.d, 6210i), ~79911i)), func_2(global3.c, !select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)], true, global0[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(12627u, 17u)]), global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(5775u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(57413u, 17u)], true, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(24716u, 17u)], true)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(7053u, 17u)], global0[_wgslsmith_index_u32(15364u, 17u)], false, false), true)), func_5(firstTrailingBit(_wgslsmith_mod_i32(61323i, -2147483647i))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(arg_3.a))))).x);
    var_0 = 0u;
    let var_2 = -910f;
    let var_3 = vec4<bool>(true, select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_sub_u32(67061u, 692u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, 32201u)), u_input.c.zw)), 17u)], global0[_wgslsmith_index_u32(17023u, 17u)], any(vec3<bool>(true, true, true))), !(!any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], false, false, global0[_wgslsmith_index_u32(9796u, 17u)]))) == any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(37468u, 17u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(73005u, 17u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], false, true)), vec3<bool>(global0[_wgslsmith_index_u32(37008u, 17u)], false, false), global0[_wgslsmith_index_u32(91852u, 17u)])), false);
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3.c, arg_2.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-462f, arg_3.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(423f, arg_2.x))))), arg_2.x, -937f, _wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1181f)) + 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.x;
    global3 = func_7(vec3<f32>(_wgslsmith_f_op_f32(func_1(firstLeadingBit(52513u), vec4<f32>(_wgslsmith_f_op_f32(-332f * 852f), _wgslsmith_div_f32(882f, 266f), _wgslsmith_f_op_f32(ceil(1876f)), _wgslsmith_f_op_f32(-global1.a.x)), u_input.d, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1873f, -820f, 958f))))), 345f, _wgslsmith_f_op_f32(-2085f - _wgslsmith_f_op_f32(func_1(~1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, global1.c, -101f, global3.b)), u_input.d, vec3<f32>(1963f, global1.e, global3.e))))), ~(~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-856f, -1353f, 1688f, 1275f), vec4<f32>(213f, 114f, global1.a.x, global1.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.e, 336f, global3.a.x, 906f))))) * vec4<f32>(global3.e, _wgslsmith_f_op_f32(global1.e - _wgslsmith_div_f32(1000f, global3.d)), _wgslsmith_f_op_f32(184f - _wgslsmith_f_op_f32(trunc(-443f))), global1.b)), func_6(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1.a))), func_5(reverseBits(u_input.b.x)).c, _wgslsmith_f_op_f32(f32(-1f) * -810f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -214f), global3.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.c))))), _wgslsmith_add_i32(~firstTrailingBit(8952i), -(~u_input.b.x))));
    global3 = func_5(-(~_wgslsmith_mult_i32(countOneBits(u_input.d), 2147483647i)));
    var var_1 = 0i;
    var_1 = 39514i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1604f) + global1.c))) - global3.d), ~min(u_input.c.wzz & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.c.x), vec3<u32>(10896u, 40259u, u_input.a)), u_input.c.yxz));
}

