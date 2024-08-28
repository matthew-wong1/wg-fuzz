struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<bool, 19> = array<bool, 19>(false, false, true, false, false, false, false, true, true, true, true, false, false, true, false, true, true, false, true);

var<private> global2: bool;

var<private> global3: array<vec2<bool>, 25>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = ~(~vec2<u32>(select(u_input.b << (u_input.b % 32u), 0u, global1[_wgslsmith_index_u32(8901u, 19u)]), _wgslsmith_add_u32(4294967295u, u_input.b) & reverseBits(u_input.b)));
    var var_1 = ~arg_1.b;
    let var_2 = u_input.a;
    global3 = array<vec2<bool>, 25>();
    let var_3 = vec2<u32>(10888u, var_0.x);
    return !global3[_wgslsmith_index_u32(0u, 25u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = abs(reverseBits(-firstLeadingBit(arg_3.b)));
    var var_1 = -_wgslsmith_add_i32(-arg_1.b | (arg_3.b >> (1u % 32u)), arg_1.b) << ((countOneBits(countOneBits(59722u & u_input.b)) | u_input.b) % 32u);
    global0 = array<Struct_1, 18>();
    let var_2 = global1[_wgslsmith_index_u32(u_input.b, 19u)];
    let var_3 = arg_1;
    return vec4<bool>(true, all(!(!vec2<bool>(false, arg_1.a.x))), select(arg_3.a.x, !var_3.a.x, true), true);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = u_input.b;
    var var_1 = arg_1;
    global0 = array<Struct_1, 18>();
    let var_2 = ~1u;
    var var_3 = any(select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 19u)], true, global1[_wgslsmith_index_u32(var_1.x, 19u)])), !select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(arg_1.x, 19u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 19u)], global1[_wgslsmith_index_u32(var_2, 19u)], true, global1[_wgslsmith_index_u32(0u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], true, true), true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 19u)], false, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(arg_0.x, 19u)])), func_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(236f)), _wgslsmith_f_op_f32(219f - 1000f), _wgslsmith_f_op_f32(trunc(-788f)), -504f), Struct_1(!vec2<bool>(true, global1[_wgslsmith_index_u32(16665u, 19u)]), _wgslsmith_mult_i32(u_input.a.x, -11129i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1829f, -617f, -207f, 981f)), Struct_1(func_3(-1991f, global0[_wgslsmith_index_u32(arg_1.x, 18u)], vec4<f32>(1037f, -122f, -2168f, -576f)), u_input.a.x))));
    return _wgslsmith_mod_i32(u_input.a.x ^ u_input.a.x, -(i32(-1i) * -1i));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_1(select(!vec2<bool>(arg_2 & global1[_wgslsmith_index_u32(1u, 19u)], false), global3[_wgslsmith_index_u32(35733u, 25u)], !select(select(true, false, global1[_wgslsmith_index_u32(u_input.b, 19u)]), u_input.b == 1u, true)), ~(abs(abs(u_input.a.x)) ^ func_2(~vec4<u32>(u_input.b, u_input.b, 33303u, 43700u), vec2<u32>(u_input.b, u_input.b))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 18u)];
    var var_2 = _wgslsmith_f_op_f32(173f - _wgslsmith_f_op_f32(-arg_0.x));
    var var_3 = _wgslsmith_dot_vec4_i32(max(firstTrailingBit(vec4<i32>(1i, _wgslsmith_mod_i32(14310i, -29222i), ~(-15962i), i32(-1i) * -13828i)), vec4<i32>(1i, ~2147483647i, var_0.b, -(-25726i & u_input.a.x))), vec4<i32>(1i, firstLeadingBit(select(var_0.b, 4981i, false)), ~max(~u_input.a.x, ~var_0.b), 1i));
    let var_4 = select(arg_1.yy << (firstLeadingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 29170u))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(~abs(arg_1.yz), -vec2<i32>(2147483647i, arg_1.x)) ^ (-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, var_1.b), vec2<i32>(var_1.b, 68503i)) & reverseBits(~arg_1.yz)), select(!any(vec3<bool>(true, true, var_0.a.x)), any(!func_4(vec4<f32>(-327f, arg_0.x, arg_0.x, -1297f), global0[_wgslsmith_index_u32(4294967295u, 18u)], vec4<f32>(-1085f, 1106f, 1764f, arg_0.x), Struct_1(vec2<bool>(true, false), 1i))), true));
    return vec2<bool>(true, !func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0)) + arg_0), global0[_wgslsmith_index_u32(~60132u, 18u)], arg_0, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, 22023u, u_input.b)), 18u)]).x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = u_input.b;
    var var_1 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1572f)))), -1356f, -169f, _wgslsmith_div_f32(289f, _wgslsmith_f_op_f32(542f + -1113f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, 1000f, -1513f, -955f))), vec4<f32>(_wgslsmith_div_f32(-625f, 1000f), 1170f, 680f, -1157f)))), Struct_1(arg_0.a, _wgslsmith_div_i32(max(1i, ~arg_2.b), 1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1306f)))), 1f, _wgslsmith_f_op_f32(round(-416f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f + 141f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, -403f, 101f, -1212f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-860f, 370f, 1200f, -525f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-190f, 2322f, -218f, 1225f))), vec4<bool>(true, arg_2.a.x, false, arg_0.a.x))))), Struct_1(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1099f, 750f, -1544f, -295f), vec4<f32>(335f, 170f, -124f, -1009f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1345f, -1000f, -1000f, -1070f)))), _wgslsmith_div_vec3_i32(u_input.a, ~vec3<i32>(u_input.a.x, u_input.a.x, 0i)), arg_2.a.x), _wgslsmith_mult_i32(-(~0i), ~(i32(-1i) * -12406i))));
    var var_2 = var_0;
    let var_3 = _wgslsmith_div_i32(17072i, _wgslsmith_add_i32(-1152i, arg_1.b)) >> (~6524u % 32u);
    var var_4 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, 1353f, -298f, 2598f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(598f, -2094f, -326f, 1691f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, -486f, 1217f, 410f)))))), Struct_1(var_1.yx, -var_3 & countOneBits(~arg_1.b)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -523f, _wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_f_op_f32(-567f - -641f))))), Struct_1(arg_0.a, abs(_wgslsmith_sub_i32(max(var_3, u_input.a.x), 2147483647i)))).x;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(min(~(~1u), 0u), 25u)], u_input.a.x);
    let var_1 = func_5(Struct_1(func_1(vec4<f32>(305f, _wgslsmith_f_op_f32(f32(-1f) * -1233f), _wgslsmith_f_op_f32(round(389f)), _wgslsmith_f_op_f32(sign(993f))), countOneBits(vec3<i32>(2147483647i, 4672i, var_0.b)), true), 924i), global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 34503u, 6806u), vec3<u32>(2904u, 4294967295u, 4294967295u))))), 18u)], Struct_1(select(var_0.a, func_4(vec4<f32>(-104f, -392f, 165f, -1780f), global0[_wgslsmith_index_u32(u_input.b | u_input.b, 18u)], _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1000f, 213f, 598f))), Struct_1(vec2<bool>(false, true), 0i)).wx, true), u_input.a.x));
    global2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2193f, -338f, -156f)))) - vec4<f32>(1000f, -782f, -1589f, 1f))), Struct_1(var_0.a, _wgslsmith_div_i32(-2147483647i, -2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1443f - -785f) * _wgslsmith_f_op_f32(f32(-1f) * -1563f)), 1f)), Struct_1(vec2<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 19u)], var_0.a.x)), global1[_wgslsmith_index_u32((12706u ^ u_input.b) | 41246u, 19u)]), u_input.a.x)).x;
    global0 = array<Struct_1, 18>();
    var var_2 = select(!(!vec4<bool>(false, false, func_1(vec4<f32>(-310f, 790f, -1348f, 1192f), u_input.a, var_0.a.x).x, !global1[_wgslsmith_index_u32(4294967295u, 19u)])), vec4<bool>(true | (-44172i > _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, var_0.b))), any(vec3<bool>(true, true, true)), all(vec2<bool>(!global1[_wgslsmith_index_u32(u_input.b, 19u)], all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], true, var_0.a.x, false)))), false), all(vec3<bool>(true | var_0.a.x, global1[_wgslsmith_index_u32(reverseBits(select(u_input.b, u_input.b, false)), 19u)], true)));
    let var_3 = var_2.x;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1332f, 909f)), _wgslsmith_f_op_f32(f32(-1f) * -268f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -728f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1551f, 538f)) - 1088f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-877f, 253f, var_2.x)), _wgslsmith_f_op_f32(round(-865f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2020f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 527f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) - 154f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(269f)), _wgslsmith_f_op_f32(f32(-1f) * -261f), 18635u != u_input.b)))));
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(9403u, min(u_input.b, ~1u), _wgslsmith_mod_u32(u_input.b, ~1u)));
}

