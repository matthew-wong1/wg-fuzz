struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1000f, -100f, -1926f), vec3<f32>(771f, -1030f, -1073f), vec3<f32>(757f, 1000f, 283f), vec3<f32>(-342f, 755f, 564f), vec3<f32>(-656f, -387f, -1699f), vec3<f32>(1315f, 750f, -1434f), vec3<f32>(574f, 542f, 217f), vec3<f32>(-762f, -493f, 1500f));

var<private> global1: array<bool, 29> = array<bool, 29>(false, true, true, true, true, true, false, true, false, true, false, true, false, true, false, false, true, true, false, false, false, false, false, true, false, true, true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = arg_1;
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(0u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 8852u), u_input.b.x), 0u, u_input.a), _wgslsmith_add_vec4_u32(~vec4<u32>(33674u, 1u, 31914u, arg_0.x), vec4<u32>(1u, 54711u, arg_0.x, firstTrailingBit(min(u_input.b.x, u_input.a)))));
    global1 = array<bool, 29>();
    return _wgslsmith_add_u32(0u >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(25282u, u_input.b.x, arg_0.x, u_input.a) << (vec4<u32>(arg_0.x, 4294967295u, 0u, u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 46467u, 0u), vec4<u32>(18010u, 1u, 0u, u_input.a))) << (~(arg_0.x ^ 32147u) % 32u)) % 32u), ~_wgslsmith_sub_u32(max(_wgslsmith_clamp_u32(5494u, arg_0.x, 52751u), var_2), ~(~1u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * arg_3) - _wgslsmith_f_op_f32(f32(-1f) * -158f)), -1405f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), arg_3))));
    var var_1 = arg_2;
    var var_2 = ~(_wgslsmith_sub_u32(4294967295u, ~arg_2.x << (~4294967295u % 32u)) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(26601u, var_1.x), vec2<u32>(u_input.a, 8341u)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_1.x, 19388u, 0u), vec4<u32>(1u, 36777u, var_1.x, 2603u)), vec4<u32>(var_1.x, 33802u, 14798u, arg_2.x) & vec4<u32>(u_input.b.x, 2975u, u_input.b.x, 1u)) % 32u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_1.x, 8u)] - vec3<f32>(-993f, arg_3, arg_3))) * global0[_wgslsmith_index_u32(arg_2.x, 8u)]) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(0u, 8u)], vec3<f32>(arg_3, -295f, arg_3))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -1155f)) + _wgslsmith_f_op_f32(-arg_3)) * 1926f));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))), arg_3, 617f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_1.x, 8u)] * global0[_wgslsmith_index_u32(4294967295u, 8u)]))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-179f)))))));
    return _wgslsmith_mod_vec2_u32(u_input.b.xy, ~(arg_1 ^ countOneBits(vec2<u32>(0u, 0u))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<i32> {
    return firstTrailingBit(-vec2<i32>(-2147483647i << (u_input.b.x % 32u), _wgslsmith_div_i32(-35278i, 2147483647i)) << (func_3(select(vec3<bool>(true, global1[_wgslsmith_index_u32(19262u, 29u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)], true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], false, false)), u_input.a != u_input.a), ~vec2<u32>(4485u, u_input.b.x), u_input.b, -775f) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> bool {
    global0 = array<vec3<f32>, 8>();
    var var_0 = max(countOneBits(vec2<u32>(22857u & ~u_input.b.x, 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.yy))), vec2<u32>(u_input.b.x, u_input.b.x));
    global1 = array<bool, 29>();
    var var_1 = u_input.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(arg_1 + -971f), -187f, -1245f);
    return global1[_wgslsmith_index_u32(14450u, 29u)] && (arg_0.x != arg_0.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -198f))) * 1f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -547f), -725f, _wgslsmith_f_op_f32(f32(-1f) * -102f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1261f, -314f, 201f))))), _wgslsmith_f_op_f32(-968f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-587f, -555f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(221f + 439f) - _wgslsmith_f_op_f32(step(1209f, 139f))))));
    var_1 = Struct_1(var_1.a, var_1.b);
    global0 = array<vec3<f32>, 8>();
    global1 = array<bool, 29>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b, -445f, 515f))), _wgslsmith_f_op_vec3_f32(step(var_1.a, vec3<f32>(var_1.a.x, -439f, var_1.b))), vec3<bool>(false, arg_2, false)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2529f + -554f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(21823u, u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, func_1(u_input.b.xy, Struct_1(global0[_wgslsmith_index_u32(9305u, 8u)], -256f), -857f), _wgslsmith_div_u32(0u, 28397u))), ~u_input.a << (~1u % 32u));
    var var_1 = false;
    var var_2 = func_5(u_input.b, vec2<u32>(firstLeadingBit(13231u), var_0.x) & ~var_0.zy, func_4(_wgslsmith_sub_vec2_i32(-func_2(Struct_1(global0[_wgslsmith_index_u32(var_0.x, 8u)], -101f), Struct_1(vec3<f32>(169f, -967f, 790f), -604f), Struct_1(global0[_wgslsmith_index_u32(68946u, 8u)], -1101f), vec2<f32>(-392f, -358f)), vec2<i32>(1i, i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(590f * -1000f))))), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1578f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(354f * var_2.b) - var_2.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1240f + var_2.a.x)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, -244f, var_2.a.x) * global0[_wgslsmith_index_u32(var_0.x, 8u)]))))));
    global1 = array<bool, 29>();
    var var_4 = _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-879f, _wgslsmith_f_op_f32(-var_2.b)))));
    var var_5 = _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_0.x, 8661u), u_input.b), vec3<u32>(~52499u, 3008u, u_input.b.x)), ~var_0.xxx));
    let var_6 = -2357i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * -1037f) + 140f), _wgslsmith_f_op_f32(f32(-1f) * -1718f), 676f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_3.zz))), -min(abs(vec2<i32>(var_6, var_6)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.yy) % vec2<u32>(32u)), -vec2<i32>(16884i, 8845i)));
}

