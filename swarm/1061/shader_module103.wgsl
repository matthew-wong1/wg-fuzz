struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(908f, -1000f, 193f), vec3<f32>(-238f, -1167f, 1000f), vec3<f32>(-1772f, -507f, -1088f), vec3<f32>(703f, 1795f, -2360f), vec3<f32>(-1510f, 640f, -525f), vec3<f32>(-1166f, -281f, -443f), vec3<f32>(-1042f, -866f, 667f), vec3<f32>(-541f, -1558f, -2071f), vec3<f32>(589f, -1000f, -675f), vec3<f32>(793f, 185f, 393f), vec3<f32>(772f, -425f, -970f), vec3<f32>(-1138f, -972f, 773f), vec3<f32>(-1461f, -648f, 635f), vec3<f32>(531f, 418f, -1313f), vec3<f32>(1397f, -1000f, 555f), vec3<f32>(536f, 1020f, -934f), vec3<f32>(176f, -183f, -1195f), vec3<f32>(-644f, -410f, -664f), vec3<f32>(807f, 2326f, -861f), vec3<f32>(1083f, 1504f, 279f), vec3<f32>(-1103f, -675f, -1389f), vec3<f32>(-1003f, -845f, -1000f), vec3<f32>(-674f, 692f, -373f), vec3<f32>(168f, -1000f, 1138f));

var<private> global1: Struct_2;

var<private> global2: array<u32, 24>;

var<private> global3: f32 = -699f;

var<private> global4: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(i32(-2147483648), -3486i), vec2<i32>(2147483647i, 50173i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-17200i, 26162i), vec2<i32>(-1i, 46455i), vec2<i32>(-1313i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-22621i, 1i), vec2<i32>(-14656i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(56143i, -61521i), vec2<i32>(-3715i, 1i), vec2<i32>(30555i, i32(-2147483648)), vec2<i32>(19712i, -21575i), vec2<i32>(-18287i, -30316i), vec2<i32>(1367i, 0i), vec2<i32>(-33466i, 52170i), vec2<i32>(-17438i, 0i), vec2<i32>(26463i, -1i), vec2<i32>(8102i, 1i), vec2<i32>(1i, -13418i), vec2<i32>(2147483647i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec2<bool>(true, true);
    global1 = Struct_2(global1.a, Struct_1(i32(-1i) * -1i, arg_1.b), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(abs(_wgslsmith_mult_vec2_i32(global4[_wgslsmith_index_u32(4294967295u, 22u)], vec2<i32>(global1.b.a, arg_1.a))), min(u_input.a & vec2<i32>(global1.b.a, 36741i), u_input.a ^ vec2<i32>(37936i, 0i))), (vec2<i32>(-1i, 6361i) | vec2<i32>(arg_1.a, -1i)) ^ firstLeadingBit(~vec2<i32>(-1i, 0i))));
    let var_1 = select(select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x)), !vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, true, true)), select(!vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(false, false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), !vec3<bool>(var_0.x, var_0.x, true), !var_0.x)), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x), true)), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, false), vec3<bool>(false, var_0.x, false)), select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(var_0.x, false, false)), vec3<bool>(false, all(vec3<bool>(false, var_0.x, false)), var_0.x)), select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(var_0.x, false, arg_1.a >= -1i), !(var_0.x || true))), vec3<bool>(var_0.x, !(!(var_0.x || false)), !(!var_0.x)), !vec3<bool>(global1.a.x == -1000f, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, var_0.x, true), true)), 39452i >= -global1.b.a));
    global0 = array<vec3<f32>, 24>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f + -536f), 1345f) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.b.x, _wgslsmith_div_f32(566f, arg_1.b.x))))), Struct_1(min(-2147483647i, global1.b.a), vec2<f32>(-707f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.x)))), max(vec2<i32>(u_input.a.x, 3765i), u_input.a) | _wgslsmith_mult_vec2_i32(global4[_wgslsmith_index_u32(~147u, 22u)], global1.c));
    return arg_1.b.x;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = 1i;
    global0 = array<vec3<f32>, 24>();
    var var_1 = global1.b;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.x, 531f))) - _wgslsmith_f_op_f32(min(var_1.b.x, 1f))), global1.a.x)), 682f);
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.x, 991f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.b.x)), var_1.b.x)), 1682f));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0, global2[_wgslsmith_index_u32(arg_0, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), global1.b))))), var_1.b.x), Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global1.b.a, global1.c.x), var_1.a), var_1.b), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(-2147483647i), var_1.a), select(vec2<i32>(49621i, -58102i), _wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(global1.c.x, global1.c.x)), vec2<bool>(true, true))), global4[_wgslsmith_index_u32(59779u, 22u)]));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = array<u32, 24>();
    global1 = func_2(~_wgslsmith_div_u32(u_input.c.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c & u_input.c, u_input.c), 24u)]));
    let var_0 = func_2(~global2[_wgslsmith_index_u32((~u_input.b ^ ~1u) & u_input.c.x, 24u)]);
    let var_1 = func_2(~(~countOneBits(~103074u))).b;
    let var_2 = select((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) >= _wgslsmith_f_op_f32(trunc(var_1.b.x))) & (all(vec2<bool>(true, true)) | !all(vec2<bool>(true, false))), select(false, false, !all(vec4<bool>(false, false, true, false))), false);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, 121f) - -127f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.b.x - global1.a.x), 586f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x), true)) - _wgslsmith_f_op_f32(func_1(global1.b))), !any(vec4<bool>(true, true, true, true)))), -1809f);
    let var_1 = vec2<bool>(false, abs(u_input.d) > -1i);
    let var_2 = abs(-1i);
    global0 = array<vec3<f32>, 24>();
    let var_3 = func_2(43391u);
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(var_3.b.b * vec2<f32>(2213f, -1000f)), Struct_1(var_3.b.a & -var_2, _wgslsmith_f_op_vec2_f32(-global1.a)), countOneBits(vec2<i32>(_wgslsmith_div_i32(-6575i, -9066i), 4734i)));
    var var_5 = select(vec4<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 24u)], 0u), vec2<u32>(u_input.b, u_input.c.x)), 24u)] ^ 119193u, _wgslsmith_add_u32(42245u, global2[_wgslsmith_index_u32(u_input.c.x, 24u)]), 0u, 1u), ~vec4<u32>(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)]), 2351u, ~_wgslsmith_clamp_u32(37385u, 71172u, u_input.b), u_input.c.x), !(!vec4<bool>(select(var_1.x, var_1.x, true), var_1.x, true, select(false, var_1.x, true))));
    global2 = array<u32, 24>();
    let var_6 = reverseBits(global2[_wgslsmith_index_u32(1u, 24u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(reverseBits(var_3.c), vec2<i32>(_wgslsmith_sub_i32(-2147483647i, select(global1.c.x, u_input.d, var_1.x)), var_3.c.x)), _wgslsmith_f_op_f32(var_0.x * -1766f));
}

