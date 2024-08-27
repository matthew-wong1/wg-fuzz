struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(50362i, 2147483647i, i32(-2147483648), 41829i), -27457i);

var<private> global1: array<u32, 13>;

var<private> global2: array<f32, 32> = array<f32, 32>(-1343f, 275f, 126f, 813f, -1070f, 470f, 368f, 333f, -1109f, 313f, -1179f, -782f, 504f, 493f, 1334f, -2142f, -1417f, -202f, -579f, 704f, 1804f, 1354f, 814f, -180f, 390f, -1561f, -263f, 765f, -445f, 323f, -1000f, -2395f);

var<private> global3: vec3<f32>;

var<private> global4: array<bool, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> vec3<f32> {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, -514f, global2[_wgslsmith_index_u32(58822u, 32u)]), vec3<f32>(global2[_wgslsmith_index_u32(47010u, 32u)], -489f, global3.x), vec3<bool>(global4[_wgslsmith_index_u32(arg_2, 21u)], global4[_wgslsmith_index_u32(arg_2, 21u)], false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 32u)], 1425f, global2[_wgslsmith_index_u32(arg_2, 32u)]))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, global3.x, 1321f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 971f, 735f)))))));
    global0 = Struct_1(~select(min(~vec4<i32>(global0.a.x, 20723i, global0.a.x, global0.b), vec4<i32>(global0.b, global0.b, 17628i, global0.a.x) ^ vec4<i32>(-1i, global0.a.x, global0.b, 2147483647i)), vec4<i32>(-global0.b, abs(global0.a.x), _wgslsmith_clamp_i32(global0.a.x, 17239i, 1i), ~global0.a.x), !vec4<bool>(global4[_wgslsmith_index_u32(0u, 21u)], global4[_wgslsmith_index_u32(arg_1.x, 21u)], false, global4[_wgslsmith_index_u32(4294967295u, 21u)])), 0i);
    global3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, global3.x, 761f), vec3<f32>(global2[_wgslsmith_index_u32(23073u, 32u)], global2[_wgslsmith_index_u32(arg_1.x, 32u)], 638f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(876f, global2[_wgslsmith_index_u32(arg_0, 32u)], global3.x))))))));
    var var_0 = vec2<i32>(~global0.b, ~(~firstTrailingBit(global0.b))) ^ ~vec2<i32>(1i, -(0i & global0.b));
    var_0 = global0.a.wx;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1718f, global2[_wgslsmith_index_u32(85256u, 32u)]) - vec3<f32>(global2[_wgslsmith_index_u32(2004u, 32u)], 2093f, global3.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2209f, global2[_wgslsmith_index_u32(109362u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 32u)], -597f, global2[_wgslsmith_index_u32(u_input.a, 32u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(922f, -567f, global3.x)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 408f, global3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, global3.x, -688f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global3.x, global3.x, true)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 32u)]), -727f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1392f, 510f, -666f))))));
}

fn func_2() -> f32 {
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2158f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6204u, 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)])), 32u)]), global2[_wgslsmith_index_u32(39704u, 32u)]) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(465f, -1038f, global3.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], -1150f, global2[_wgslsmith_index_u32(u_input.a, 32u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1024f, 702f, 2217f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-498f, global2[_wgslsmith_index_u32(16384u, 32u)], 1617f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], global2[_wgslsmith_index_u32(63981u, 32u)], -1779f)))) * _wgslsmith_f_op_vec3_f32(func_3(~4294967295u, min(vec4<u32>(4294967295u, u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 61699u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 13u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 0u)), 20209u))))));
    let var_0 = select(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(global0.a.x, 0i), _wgslsmith_mult_i32(global0.a.x, global0.b), global0.a.x << (48709u % 32u), global0.b), vec4<i32>(-1i) * -global0.a), -_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b, global0.b, global0.b, -36699i) << (vec4<u32>(35503u, 0u, 30374u, 2952u) % vec4<u32>(32u)), ~global0.a)), ~vec4<i32>(abs(60972i), global0.b, global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(10448i, -1i, global0.b) | vec3<i32>(global0.a.x, -51282i, -2147483647i), vec3<i32>(global0.b, global0.b, global0.a.x))), select(!vec4<bool>(true, true, select(false, global4[_wgslsmith_index_u32(1u, 21u)], false), true), vec4<bool>(true, true, true, true), true));
    let var_1 = vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43750u, 13u)], 13u)] | u_input.b.x, u_input.a)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_clamp_u32(115569u, u_input.b.x, u_input.b.x)), firstTrailingBit(u_input.a))), 32u)], _wgslsmith_f_op_f32(trunc(-1494f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3756f + global3.x)) + 1118f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-281f, global3.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1287f + _wgslsmith_f_op_f32(f32(-1f) * -810f)))));
    let var_2 = Struct_2(_wgslsmith_mult_u32(4294967295u, firstLeadingBit(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), u_input.b.xx), max(vec2<u32>(43113u, u_input.a), u_input.b.yx)))), Struct_1(vec4<i32>(global0.a.x, select(global0.a.x ^ var_0.x, global0.a.x | -1i, select(global4[_wgslsmith_index_u32(50545u, 21u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 13u)], 21u)], global4[_wgslsmith_index_u32(0u, 21u)])), ~(global0.b << (u_input.b.x % 32u)), _wgslsmith_add_i32(reverseBits(var_0.x), var_0.x)), -global0.b), ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(-32241i, var_0.x), 3265i) << (u_input.a % 32u));
    let var_3 = Struct_2(_wgslsmith_sub_u32(var_2.a, ~(~u_input.a)), var_2.b, -17203i);
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(81866u, 32u)], _wgslsmith_f_op_f32(f32(-1f) * -3299f)), 285f, any(select(select(select(vec3<bool>(false, true, global4[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(global4[_wgslsmith_index_u32(46450u, 21u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.a, 13u)], 13u)], 21u)], true), true), vec3<bool>(false, false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31109u, 13u)], 21u)]), true), vec3<bool>(false, all(vec3<bool>(false, true, global4[_wgslsmith_index_u32(1u, 21u)])), false), true))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2521f);
    var var_1 = _wgslsmith_f_op_f32(func_2());
    let var_2 = !select(arg_0.yzy, vec3<bool>(false, any(!arg_0.zyy), all(select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(0u, 21u)], arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x), arg_0))), all(!(!vec4<bool>(global4[_wgslsmith_index_u32(29172u, 21u)], true, false, true))));
    let var_3 = ~min(_wgslsmith_mult_i32(0i, ~0i), min(_wgslsmith_clamp_i32(67026i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, 1i), global0.a.zw), _wgslsmith_sub_i32(global0.b, 2147483647i)), _wgslsmith_add_i32(firstTrailingBit(global0.a.x), _wgslsmith_sub_i32(global0.a.x, 0i))));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(select(-1000f, 1152f, all(arg_0.yzx))), _wgslsmith_f_op_f32(select(-556f, -1204f, true)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a, 32u)])), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 32u)]))), _wgslsmith_f_op_f32(-var_0), 272f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21572u, 13u)], 32u)])), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 32u)]), -1000f, 1262f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, arg_1, 1000f, global2[_wgslsmith_index_u32(u_input.b.x, 32u)]))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-377f, 472f, -100f, 821f), vec4<f32>(529f, 111f, 237f, arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2079f, 974f, arg_1, -2096f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, var_0, 329f, -1221f), vec4<f32>(-265f, 926f, var_0, arg_1))))))), -101f == arg_1));
    return firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.a));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = vec2<u32>(57208u, u_input.a);
    global1 = array<u32, 13>();
    var var_1 = false;
    global2 = array<f32, 32>();
    global0 = arg_3.b;
    return all(select(!vec3<bool>(all(vec4<bool>(false, true, global4[_wgslsmith_index_u32(4294967295u, 21u)], false)), true, true), !select(vec3<bool>(false, global4[_wgslsmith_index_u32(arg_3.a, 21u)], global4[_wgslsmith_index_u32(28498u, 21u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(arg_3.a, 21u)], true), !vec3<bool>(true, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 21u)], global4[_wgslsmith_index_u32(arg_3.a, 21u)])), false != global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(58550u, 4294967295u), 21u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32((44169u << (~u_input.a % 32u)) | _wgslsmith_mult_u32(~78680u, _wgslsmith_add_u32(u_input.a, 0u)), 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(~0u, 13u)], max(59064u << (u_input.b.x % 32u), ~0u)), _wgslsmith_mod_u32(~(~4294967295u), 23942u)), 13u)], 4294967295u, ~u_input.b.x);
    var var_1 = -global0.a;
    var var_2 = Struct_2(4294967295u, Struct_1(countOneBits(vec4<i32>(10479i, ~(-18690i), countOneBits(-74879i), global0.a.x)), ~19885i), var_1.x);
    var var_3 = func_4(global2[_wgslsmith_index_u32(func_1(vec4<bool>(true, !global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 13u)] & u_input.a, 21u)], global4[_wgslsmith_index_u32(var_0.x, 21u)], global4[_wgslsmith_index_u32(var_0.x | 93676u, 21u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.xw, var_0.zy), 32u)]))))), 32u)], global2[_wgslsmith_index_u32(0u, 32u)], reverseBits(select(-(global0.b | var_1.x), var_2.b.a.x, !(!global4[_wgslsmith_index_u32(1u, 21u)]))), Struct_2(1u, var_2.b, -2147483647i));
    global0 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.zyw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * -3450f)), global3.x);
}

