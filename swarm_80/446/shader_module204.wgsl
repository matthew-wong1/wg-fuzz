struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-466f, 1130f, 452f, -1101f, -327f, 788f, 474f, 1243f, 240f, 331f, 1236f, -483f, -698f, -927f, -703f, 1684f, 1386f, -1141f, -121f, -465f, -1486f);

var<private> global1: array<vec4<bool>, 4>;

var<private> global2: Struct_4;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: f32, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 260f, global0[_wgslsmith_index_u32(17578u, 21u)], arg_2)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_div_f32(471f, 187f), -1598f, _wgslsmith_f_op_f32(abs(1378f))))));
    global1 = array<vec4<bool>, 4>();
    global1 = array<vec4<bool>, 4>();
    var var_1 = Struct_1(!arg_1, firstTrailingBit(~_wgslsmith_clamp_u32(~10215u, _wgslsmith_sub_u32(4294967295u, 56118u), abs(65077u))), u_input.d.zx >> (vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 7311u), vec2<u32>(1u, 7651u), vec2<u32>(32637u, 4294967295u)), vec2<u32>(0u, 8923u)), 1u) % vec2<u32>(32u)), !(!select(select(global1[_wgslsmith_index_u32(56093u, 4u)], vec4<bool>(arg_1, arg_1, arg_0.x, arg_1), false), select(global1[_wgslsmith_index_u32(33175u, 4u)], global1[_wgslsmith_index_u32(7488u, 4u)], true), global1[_wgslsmith_index_u32(~41013u, 4u)])));
    var var_2 = Struct_1(false, ~(~30526u), ~vec2<i32>(_wgslsmith_mod_i32(2147483647i, var_1.c.x), ~(-40720i)) << (vec2<u32>(_wgslsmith_clamp_u32(var_1.b, _wgslsmith_div_u32(0u, 4294967295u), 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.b, 4294967295u, 48367u), ~vec3<u32>(var_1.b, var_1.b, 51714u))) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(var_1.b, 4u)]);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(min(firstTrailingBit(~vec2<u32>(44225u, var_2.b)), ~(vec2<u32>(27921u, 33712u) & vec2<u32>(4294967295u, var_1.b))), _wgslsmith_div_vec2_u32(vec2<u32>(~var_2.b, var_1.b), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.b, var_2.b) | vec2<u32>(var_1.b, var_1.b), firstTrailingBit(vec2<u32>(var_1.b, var_1.b))))), vec2<u32>(~_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(4294967295u, var_2.b)), abs(1u)));
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    let var_0 = Struct_2(u_input.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(func_3(arg_0, false, global2.a.x, Struct_4(global2.a)), countOneBits(4294967295u), 1u, ~5400u), (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 35389u, 137043u, 1976u), vec4<u32>(21438u, 1u, 4294967295u, 19009u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 71453u)) & vec4<u32>(0u, 15946u, 48567u, 0u)) & abs(select(vec4<u32>(1u, 67254u, 47495u, 1u), vec4<u32>(4294967295u, 4294967295u, 25919u, 24475u), vec4<bool>(false, false, arg_0.x, false))), ~(~vec4<u32>(1u, 1u, 1u, 0u))), Struct_1(arg_0.x, max(_wgslsmith_sub_u32(46249u, 1u), _wgslsmith_div_u32(23631u >> (1u % 32u), max(52225u, 21167u))), ~_wgslsmith_div_vec2_i32(u_input.d.zx, reverseBits(u_input.d.yz)), !(!vec4<bool>(false, true, arg_0.x, arg_0.x))), !(!(!arg_0.xz)), vec4<f32>(_wgslsmith_f_op_f32(trunc(855f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 21u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1199f)) - global0[_wgslsmith_index_u32(1886u, 21u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(372f))))));
    global1 = array<vec4<bool>, 4>();
    let var_1 = Struct_3(select(!select(arg_0.xx, arg_0.zz, arg_0.x), vec2<bool>(arg_0.x, all(arg_0)), !(!(var_0.c.c.x > u_input.b))), var_0.c.b, var_0.c.d.zwy);
    let var_2 = _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(abs(-1i), ~(-2147483647i))), vec2<i32>(_wgslsmith_sub_i32(-1i, max(u_input.a, var_0.a.x | u_input.a)), i32(-1i) * -32610i));
    global2 = Struct_4(global2.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(select(vec3<bool>(arg_0.x, true, false), select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x), vec3<bool>(true, true, false)), select(vec3<bool>(arg_0.x, arg_0.x, false), !vec3<bool>(arg_0.x, false, true), vec3<bool>(false, arg_0.x, arg_0.x)), !vec3<bool>(arg_0.x, false, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(65410u, 21u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + _wgslsmith_f_op_f32(-global2.a.x))) + _wgslsmith_f_op_f32(-arg_1)));
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.a, global2.a))));
    global1 = array<vec4<bool>, 4>();
    var var_1 = Struct_3(!vec2<bool>(-418f >= _wgslsmith_f_op_f32(ceil(arg_1)), !(u_input.a < u_input.c)), 1u, select(select(!select(vec3<bool>(arg_0.x, true, false), vec3<bool>(arg_0.x, true, arg_0.x), false), !(!vec3<bool>(arg_0.x, arg_0.x, true)), select(!vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, true), select(vec3<bool>(true, false, false), vec3<bool>(arg_0.x, true, true), vec3<bool>(true, arg_0.x, false)))), select(select(!vec3<bool>(false, false, arg_0.x), !vec3<bool>(true, arg_0.x, arg_0.x), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, arg_0.x), true), select(vec3<bool>(false, true, arg_0.x), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, false)), vec3<bool>(false, arg_0.x, false))), select(vec3<bool>(any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), u_input.a == u_input.d.x, true == arg_0.x), !(!vec3<bool>(arg_0.x, true, arg_0.x)), !arg_0.x)));
    var var_2 = Struct_2(vec3<i32>(~2147483647i, -1i, -u_input.c), vec4<u32>(var_1.b, 4294967295u, 34576u, abs(min(var_1.b, var_1.b) >> (var_1.b % 32u))), Struct_1(false, _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.b, _wgslsmith_mult_u32(var_1.b, 4294967295u)), ~(var_1.b >> (var_1.b % 32u)), abs(~var_1.b)), vec2<i32>(-1i) * -(vec2<i32>(29531i, -1i) << (vec2<u32>(var_1.b, var_1.b) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(1u, 4u)]), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, var_0)), _wgslsmith_f_op_f32(step(-228f, arg_1)), true)), false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), global2.a.x, _wgslsmith_f_op_f32(sign(-1240f)), _wgslsmith_f_op_f32(arg_1 - -1557f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.x, -1000f, arg_2, 724f)))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    var var_0 = global0[_wgslsmith_index_u32(57768u, 21u)];
    var var_1 = Struct_3(!vec2<bool>(!func_1(vec2<bool>(false, true), global2.a.x, -635f), true), 1u, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true && (u_input.c >= -1i), true), true && (1u > firstTrailingBit(2734u))));
    var var_2 = vec4<bool>(true, false, (!any(vec3<bool>(false, true, var_1.a.x)) && ((34832u >> (0u % 32u)) <= var_1.b)) != var_1.c.x, var_1.a.x);
    var_0 = global0[_wgslsmith_index_u32(reverseBits(var_1.b), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1.b, 21u)], -274f, global0[_wgslsmith_index_u32(0u, 21u)]) + vec3<f32>(579f, -1000f, global0[_wgslsmith_index_u32(var_1.b, 21u)]))))));
}

