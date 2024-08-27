struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(1012f, 225f), vec2<f32>(-366f, -507f), vec2<f32>(-1000f, -1107f), vec2<f32>(1070f, 237f), vec2<f32>(1063f, -228f), vec2<f32>(-1000f, -1171f), vec2<f32>(1606f, 472f), vec2<f32>(1403f, 379f), vec2<f32>(-464f, -336f), vec2<f32>(2075f, -614f), vec2<f32>(428f, -2277f), vec2<f32>(-1137f, 1135f), vec2<f32>(837f, 269f), vec2<f32>(-956f, -2337f), vec2<f32>(1334f, -183f), vec2<f32>(776f, 779f), vec2<f32>(-1148f, 414f), vec2<f32>(-639f, -304f), vec2<f32>(-205f, -705f), vec2<f32>(-1185f, 1177f), vec2<f32>(289f, 2215f), vec2<f32>(-1000f, 576f), vec2<f32>(705f, -944f), vec2<f32>(453f, -934f), vec2<f32>(779f, 349f), vec2<f32>(-1299f, 341f), vec2<f32>(144f, -1090f), vec2<f32>(-175f, 494f), vec2<f32>(245f, 1000f));

var<private> global1: array<bool, 10>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = ~1u;
    var var_1 = Struct_1(u_input.c, _wgslsmith_div_vec2_i32(~((vec2<i32>(7529i, u_input.d) & vec2<i32>(-2147483647i, u_input.d)) << (~u_input.e.zx % vec2<u32>(32u))), u_input.a), ~min(-u_input.c ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-4775i, u_input.c.x, u_input.a.x, 24714i), u_input.c), min(u_input.c, u_input.c >> (vec4<u32>(0u, 1u, var_0, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1, arg_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(359f, arg_1, arg_1)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1295f, arg_2, 231f))))) + vec3<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-698f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(380f, -331f)))));
    global1 = array<bool, 10>();
    var var_2 = Struct_1(~(-min(vec4<i32>(-21523i, 1i, -1i, u_input.a.x), u_input.c)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(71115u, u_input.e.x, u_input.e.x, 4294967295u), max(vec4<u32>(4294967295u, u_input.e.x, var_0, var_0), abs(vec4<u32>(1u, u_input.e.x, u_input.e.x, u_input.e.x))), vec4<u32>(53981u, u_input.e.x, 4294967295u, ~48108u)) % vec4<u32>(32u)), -countOneBits(-select(vec2<i32>(-11069i, -2147483647i), vec2<i32>(2147483647i, var_1.a.x), vec2<bool>(false, false))), -var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1635f, 287f, arg_2)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d))) + _wgslsmith_f_op_vec3_f32(-var_1.d)));
    let var_3 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(14395u, 10u)]), vec2<bool>(arg_0, true)), select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(true, false))), vec2<bool>(any(vec3<bool>(false, global1[_wgslsmith_index_u32(37582u, 10u)], arg_0)), false), false), vec2<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, 31630u), 10u)], arg_0), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(51455u, 10u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 10u)], false)), !vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-(vec4<i32>(u_input.d, 55908i, u_input.d, -23116i) & _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(0i, u_input.d, u_input.a.x, 0i))), vec2<i32>(-8340i, ~(-2147483647i << (u_input.b % 32u))), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.x, arg_0.x)), vec3<f32>(1294f, 1265f, -1027f), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 10u)]))) * vec3<f32>(_wgslsmith_f_op_f32(-1908f + -875f), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.x, -483f)), _wgslsmith_f_op_f32(round(arg_0.x))))), -1202f, Struct_1(-u_input.c, _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(~1i, countOneBits(u_input.d))), ~select(vec4<i32>(u_input.a.x, u_input.d, u_input.d, 63977i), ~vec4<i32>(u_input.d, u_input.d, 0i, -48184i), true), vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-1951f - -484f))));
    let var_1 = _wgslsmith_f_op_f32(select(arg_0.x, var_0.b, any(!select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], false, global1[_wgslsmith_index_u32(u_input.b, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(10326u, 10u)], global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(true, false, true, true)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 10u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 10u)], true)))));
    var var_2 = arg_0.x;
    var_2 = _wgslsmith_f_op_f32(-1117f * -629f);
    return Struct_2(Struct_1(~vec4<i32>(-9932i, u_input.d, -8257i, _wgslsmith_dot_vec4_i32(var_0.c.c, u_input.c)), vec2<i32>(-9134i, ~var_0.a.b.x), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(var_0.a.c, ~var_0.c.a), firstTrailingBit(-u_input.c)), var_0.a.d), _wgslsmith_f_op_f32(var_0.a.d.x + _wgslsmith_f_op_f32(round(399f))), Struct_1(vec4<i32>(-32100i, -(~2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 11257i, var_0.a.c.x), -vec3<i32>(0i, 40966i, var_0.a.b.x)), 1i << (u_input.b % 32u)), var_0.c.b, select(vec4<i32>(-2147483647i, countOneBits(15895i), 1i, ~u_input.a.x), -_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.d, 30905i, 0i, 0i)), true), var_0.a.d));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zz - global0[_wgslsmith_index_u32(firstTrailingBit(12726u), 29u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.e.x & u_input.b, 29u)]))));
    var var_1 = -2824i;
    let var_2 = global1[_wgslsmith_index_u32(~4294967295u >> (_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, ~106178u), select(abs(vec4<u32>(u_input.e.x, 345u, u_input.b, 0u)), firstLeadingBit(vec4<u32>(u_input.e.x, 4793u, u_input.b, 4294967295u)), true))) % 32u), 10u)];
    global0 = array<vec2<f32>, 29>();
    var_0 = Struct_2(Struct_1(~vec4<i32>(1i, abs(-1i), _wgslsmith_div_i32(37002i, var_0.a.c.x), reverseBits(0i)), vec2<i32>(u_input.a.x, var_0.a.c.x), select(vec4<i32>(6950i, u_input.c.x, -17209i, -u_input.c.x), func_2(global0[_wgslsmith_index_u32(~u_input.e.x, 29u)]).c.a, (u_input.b | 7033u) < _wgslsmith_add_u32(u_input.e.x, u_input.e.x)), vec3<f32>(var_0.a.d.x, arg_0.x, 162f)), _wgslsmith_f_op_f32(-var_0.c.d.x), Struct_1(~select(vec4<i32>(0i, u_input.c.x, var_0.c.a.x, 1i), _wgslsmith_mult_vec4_i32(u_input.c, u_input.c), select(vec4<bool>(global1[_wgslsmith_index_u32(34350u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(u_input.b, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(36129u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], true, true), vec4<bool>(false, false, false, true))), (abs(var_0.a.c.xz) | select(vec2<i32>(2147483647i, -17476i), u_input.a, global1[_wgslsmith_index_u32(u_input.e.x, 10u)])) & vec2<i32>(abs(0i), _wgslsmith_dot_vec2_i32(var_0.c.a.yz, vec2<i32>(u_input.c.x, 1i))), var_0.a.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), 589f, _wgslsmith_f_op_f32(-1386f * -1000f))));
    return func_2(global0[_wgslsmith_index_u32(~1u, 29u)]);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = -(~func_1(vec3<f32>(280f, -810f, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.b, 10u)], 1185f, arg_0.a.d.x)))).a.b);
    let var_1 = vec3<u32>(u_input.b, 1u, ~4294967295u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(7458u, min(_wgslsmith_add_u32(u_input.b, u_input.e.x), _wgslsmith_mod_u32(u_input.e.x, 12351u)), u_input.e.x), ~select(vec3<u32>(u_input.e.x, u_input.e.x, 62462u), vec3<u32>(u_input.b, u_input.e.x, u_input.b), vec3<bool>(false, false, global1[_wgslsmith_index_u32(49399u, 10u)]))) % vec3<u32>(32u));
    global0 = array<vec2<f32>, 29>();
    let var_2 = arg_0.a.b.x;
    return Struct_2(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(1678f * _wgslsmith_f_op_f32(-arg_0.c.d.x))) - 820f), func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -1000f, arg_0.b))))).a);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> Struct_2 {
    global1 = array<bool, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), arg_1.c.d.x, _wgslsmith_f_op_f32(min(arg_1.a.d.x, _wgslsmith_div_f32(arg_1.c.d.x, _wgslsmith_f_op_f32(arg_1.a.d.x + 1227f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(arg_1.a.d.x, 1000f)).a.d.x + _wgslsmith_f_op_f32(f32(-1f) * -388f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))));
    var var_1 = any(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, arg_3, global1[_wgslsmith_index_u32(arg_2, 10u)], false), vec4<bool>(true, arg_3, arg_3, global1[_wgslsmith_index_u32(1u, 10u)]), vec4<bool>(arg_3, arg_3, arg_3, arg_3)), vec4<bool>(all(vec2<bool>(false, false)), !global1[_wgslsmith_index_u32(2741u, 10u)], true, false)));
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_clamp_vec4_u32(~(~abs(vec4<u32>(1u, arg_2, 4294967295u, u_input.e.x))), ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b, u_input.e.x, arg_2, u_input.b)), ~vec4<u32>(1u, u_input.b, arg_2, arg_2) ^ vec4<u32>(arg_2, 15971u, u_input.e.x, 4294967295u)), ~vec4<u32>(15860u, ~u_input.e.x, 0u, abs(0u)));
    return func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-838f - var_0.x), _wgslsmith_f_op_f32(floor(arg_1.a.d.x))), _wgslsmith_div_f32(arg_1.b, func_1(vec3<f32>(var_0.x, var_0.x, var_0.x)).c.d.x)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec4<bool>) -> bool {
    var var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = !(~(~u_input.e.x << (u_input.e.x % 32u)) > u_input.e.x);
    var var_3 = select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e.x, u_input.b >> (34971u % 32u), 31200u) ^ u_input.e, ~(min(vec3<u32>(43208u, 12375u, 100711u), u_input.e) | select(u_input.e, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), arg_3.yww)), ~abs(~vec3<u32>(13975u, 1u, u_input.b))), u_input.e, true);
    var var_4 = -219f;
    return all(!(!select(vec3<bool>(var_2, arg_3.x, false), vec3<bool>(true, arg_3.x, true), vec3<bool>(true, var_2, arg_3.x)))) | true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 29>();
    let var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.d, -u_input.d, u_input.a.x), ~vec4<i32>(_wgslsmith_div_i32(u_input.c.x, -1i), u_input.d, u_input.a.x, firstTrailingBit(u_input.c.x)));
    let var_1 = 11305i;
    let var_2 = vec3<bool>(func_6(func_5(_wgslsmith_div_vec3_i32(-var_0.xxz, -u_input.c.xyz), func_4(func_1(vec3<f32>(-1921f, -142f, -1000f))), 1u, !global1[_wgslsmith_index_u32(u_input.b, 10u)] && global1[_wgslsmith_index_u32(u_input.b | 14611u, 10u)]), func_1(vec3<f32>(_wgslsmith_div_f32(723f, 530f), -597f, 1f)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], false, global1[_wgslsmith_index_u32(31133u, 10u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(29854u, 10u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], true)), !global1[_wgslsmith_index_u32(98069u, 10u)]), vec3<bool>(var_0.x <= var_1, true, any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(u_input.b, 10u)]))), any(vec2<bool>(global1[_wgslsmith_index_u32(44750u, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)]))), !vec4<bool>(var_0.x >= -25613i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, u_input.e.x), 10u)], all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], false, global1[_wgslsmith_index_u32(107609u, 10u)])), global1[_wgslsmith_index_u32(abs(u_input.e.x), 10u)])), true, any(!vec3<bool>(func_6(Struct_2(Struct_1(vec4<i32>(-1i, u_input.c.x, 60035i, u_input.d), u_input.a, vec4<i32>(var_1, var_1, u_input.d, var_1), vec3<f32>(-450f, -772f, 1000f)), 279f, Struct_1(var_0, u_input.c.zz, vec4<i32>(2147483647i, -1i, 1954i, -15804i), vec3<f32>(1000f, 586f, -739f))), Struct_2(Struct_1(u_input.c, var_0.xy, vec4<i32>(var_0.x, var_0.x, 32684i, -7682i), vec3<f32>(-519f, -1000f, 913f)), -1901f, Struct_1(u_input.c, vec2<i32>(-70203i, u_input.d), vec4<i32>(var_0.x, 25205i, 43125i, var_1), vec3<f32>(479f, 563f, 1298f))), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], false, global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(u_input.b, 10u)])), any(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 10u)], false)), global1[_wgslsmith_index_u32(31379u, 10u)])));
    global0 = array<vec2<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(264f, -136f, -320f) + vec3<f32>(-418f, 395f, -416f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1969f, -663f, -1000f))))).a.c.x, min(var_0.x, 19255i & u_input.c.x)));
}

