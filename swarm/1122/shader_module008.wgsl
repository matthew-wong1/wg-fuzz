struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, true, false, false, true, true, true, false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    let var_0 = select(!vec4<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(12588u, 9u)], true, global0[_wgslsmith_index_u32(14701u, 9u)])), (global0[_wgslsmith_index_u32(u_input.a, 9u)] != global0[_wgslsmith_index_u32(u_input.a, 9u)]) || true, true, global0[_wgslsmith_index_u32(u_input.a, 9u)]), select(vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], false, global0[_wgslsmith_index_u32(arg_2, 9u)])) | (global0[_wgslsmith_index_u32(u_input.a, 9u)] && true), (false || global0[_wgslsmith_index_u32(u_input.a, 9u)]) || false, global0[_wgslsmith_index_u32(4294967295u, 9u)], !select(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(21352u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)])), vec4<bool>(false, false & global0[_wgslsmith_index_u32(~0u, 9u)], true, !global0[_wgslsmith_index_u32(u_input.a, 9u)]), select(vec4<bool>(true, true | global0[_wgslsmith_index_u32(arg_2, 9u)], global0[_wgslsmith_index_u32(reverseBits(2786u), 9u)], false), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2, 9u)], true, true), arg_2 < u_input.a), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2, 9u)], true, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<bool>(false, true, false, true), !vec4<bool>(global0[_wgslsmith_index_u32(14654u, 9u)], true, global0[_wgslsmith_index_u32(u_input.a, 9u)], true)))), select(vec4<bool>(arg_0 > 30984i, -497f <= arg_1.x, true, any(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_2, 9u)], true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(8393u, 9u)], true), false))), !select(!vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(arg_2, 9u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], true, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(68779u, 9u)], global0[_wgslsmith_index_u32(38877u, 9u)], false, false), false), !vec4<bool>(global0[_wgslsmith_index_u32(5041u, 9u)], false, global0[_wgslsmith_index_u32(97570u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)])), false));
    let var_1 = !var_0.xw;
    var var_2 = Struct_1(~(~(~arg_2) << (countOneBits(reverseBits(56433u)) % 32u)), vec4<u32>(78359u, countOneBits(_wgslsmith_mult_u32(8574u, ~u_input.a)), _wgslsmith_sub_u32(~(u_input.a << (8681u % 32u)), ~17942u), arg_2), 10762i, arg_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(-102f, arg_1.x, 982f, arg_1.x)) * arg_1))), _wgslsmith_f_op_vec4_f32(-arg_1), true)));
    global0 = array<bool, 9>();
    let var_3 = arg_1.x;
    return _wgslsmith_f_op_f32(-var_3);
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_1(64914u, countOneBits(~vec4<u32>(u_input.a, 0u, 60509u, 1u) & firstLeadingBit(select(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(70880u, 1u, u_input.a, u_input.a), global0[_wgslsmith_index_u32(0u, 9u)]))), abs(-2147483647i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(15379i, vec4<f32>(1752f, -1068f, -1407f, -855f), u_input.a)) + _wgslsmith_f_op_f32(trunc(221f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1526f)) * _wgslsmith_f_op_f32(ceil(145f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-930f)), 1f))), _wgslsmith_f_op_f32(f32(-1f) * -482f), -561f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-646f, 131f, -298f, 297f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(671f, 654f, 127f, -113f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-652f, 491f, -125f, 406f)))))), all(vec4<bool>(false, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], false)), true, global0[_wgslsmith_index_u32(1u, 9u)])))));
    global0 = array<bool, 9>();
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(u_input.a), 9u)];
    let var_2 = Struct_2(var_0, -(select(-vec3<i32>(var_0.c, -68018i, var_0.c), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, var_0.c, var_0.c), vec3<i32>(-44471i, 1i, var_0.c)), vec3<bool>(global0[_wgslsmith_index_u32(39792u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(37775u, 9u)])) ^ -vec3<i32>(var_0.c, var_0.c, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(_wgslsmith_sub_i32(-58517i, 0i), 12257i, -1955i < var_0.c), vec4<f32>(1f, -1764f, _wgslsmith_f_op_f32(-var_0.e.x), var_0.d.x), reverseBits(~4294967295u)))), vec3<i32>(~_wgslsmith_clamp_i32(-32998i, max(33091i, var_0.c), var_0.c), i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-10940i, var_0.c), vec2<i32>(11910i, 4974i)), countOneBits(var_0.c)));
    var var_3 = Struct_4(Struct_2(Struct_1(~u_input.a, countOneBits(vec4<u32>(var_2.a.a, var_2.a.b.x, var_2.a.b.x, var_0.b.x)) & var_0.b, _wgslsmith_dot_vec2_i32(~var_2.b.xy, vec2<i32>(var_0.c, 1i)), var_0.e, var_0.e), vec3<i32>((i32(-1i) * -9880i) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1888i), var_2.d.yz), max(var_2.b.x, 1i ^ var_0.c), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(countOneBits(var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, 437f, -892f, var_2.a.d.x) * vec4<f32>(var_0.e.x, -465f, -1740f, var_0.d.x)), var_2.a.b.x & var_0.b.x))), ~select(var_2.d, vec3<i32>(var_2.a.c, var_0.c, var_2.a.c), global0[_wgslsmith_index_u32(~27165u, 9u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.a.e.zy, vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_2.c + 1000f)), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(20686u, 9u)]))) + var_0.d.xy), _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec2_u32(~abs(var_0.b.ww), var_0.b.xy)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1568f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c * 598f) * var_0.d.x), 473f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(1286f, 1442f, global0[_wgslsmith_index_u32(var_0.b.x, 9u)])), 1000f, -1000f))))), Struct_1(max(~firstLeadingBit(var_0.a), (u_input.a | var_0.a) << (19312u % 32u)), ~vec4<u32>(22441u >> (var_0.a % 32u), ~0u, countOneBits(u_input.a), u_input.a), _wgslsmith_clamp_i32(var_2.a.c, var_2.b.x, var_0.c), var_0.d, _wgslsmith_f_op_vec4_f32(-var_0.e)));
    return vec4<u32>(min(firstLeadingBit(_wgslsmith_div_u32(var_0.b.x, u_input.a)), var_3.a.a.a) & _wgslsmith_sub_u32(46501u >> (~var_3.e.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.c, var_0.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 42491u, var_3.a.a.a, 26728u), var_2.a.b))), u_input.a, firstTrailingBit(firstTrailingBit(u_input.a)), ~var_2.a.b.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(Struct_1(27063u, vec4<u32>(u_input.a, max(u_input.a, u_input.a), 4294967295u | u_input.a, u_input.a ^ 39773u), -32345i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(189f, 201f, 1000f, -244f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(644f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(379f * arg_0.x), _wgslsmith_f_op_f32(-1994f - -730f))), -max(arg_1.yxw, arg_1.wzw), _wgslsmith_f_op_f32(ceil(-979f)), arg_1.zyz), arg_0, _wgslsmith_add_u32(u_input.a, _wgslsmith_clamp_u32(countOneBits(reverseBits(u_input.a)), _wgslsmith_mult_u32(~110027u, 1u), u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -645f, -2209f) * vec3<f32>(516f, -771f, 1068f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1000f, -1000f) - vec3<f32>(1010f, -1370f, arg_0.x))) + vec3<f32>(_wgslsmith_div_f32(1000f, arg_0.x), _wgslsmith_f_op_f32(round(-203f)), _wgslsmith_f_op_f32(-1701f + -421f)))), Struct_1(u_input.a, func_2(), arg_1.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(1u, 9u)])), 760f, 1000f, arg_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -857f, 1282f, arg_0.x)))), vec4<f32>(506f, _wgslsmith_f_op_f32(493f - -209f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -303f)));
    let var_1 = var_0.a.a;
    var var_2 = var_1.b;
    global0 = array<bool, 9>();
    var var_3 = _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.b.x | min(34384u, 4294967295u), u_input.a), vec2<u32>(u_input.a, ~6912u));
    return Struct_2(var_0.e, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_1.xww, var_0.a.d), _wgslsmith_dot_vec4_i32(arg_1 >> (vec4<u32>(17606u, var_0.c, var_2.x, var_1.b.x) % vec4<u32>(32u)), abs(arg_1))), arg_1.x, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(1000f - -1237f))), _wgslsmith_mod_vec3_i32(select(abs(arg_1.zyw), arg_1.zzw, !select(vec3<bool>(true, global0[_wgslsmith_index_u32(62277u, 9u)], global0[_wgslsmith_index_u32(94529u, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(var_2.x, 9u)], true), vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 9u)], true, true))), arg_1.zzz >> (vec3<u32>(_wgslsmith_add_u32(4294967295u, var_0.e.a), _wgslsmith_mod_u32(4294967295u, var_0.e.b.x), 1u) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = Struct_2(arg_0.e, arg_1 << (arg_2.a.b.xyy % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.e.x + arg_2.a.d.x) * _wgslsmith_div_f32(arg_0.d.x, arg_0.d.x))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.c)))), -arg_1);
    let var_1 = arg_0.a.a.b.xx;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, 843f, var_0.a.d.x) + _wgslsmith_f_op_vec3_f32(ceil(var_0.a.d.wwx))) + vec3<f32>(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.d.x, 203f) * vec2<f32>(arg_0.a.c, arg_2.c)), select(vec4<i32>(-26741i, arg_2.a.c, arg_3, arg_1.x), vec4<i32>(2147483647i, 33210i, arg_0.e.c, 16780i), global0[_wgslsmith_index_u32(var_0.a.b.x, 9u)])).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.x))), -1216f))));
    let var_3 = -1i;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var var_0 = vec4<u32>(4294967295u, 1u, 59756u, func_4(Struct_4(func_1(vec2<f32>(-1000f, -509f), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1780f, -1299f)))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(585f, -1192f, 1565f) - vec3<f32>(-559f, 527f, 834f))), Struct_1(0u ^ u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 42123u, u_input.a, u_input.a), vec4<u32>(21962u, 1u, u_input.a, 36333u)), 1i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(566f, 205f, 1503f, 2226f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, 228f, -277f, 573f)))), ~(~vec3<i32>(37933i, -15475i, -82429i)) & vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1608i, 0i, 6284i, -1i), vec4<i32>(24i, 13693i, 22664i, -44270i)), -19812i), Struct_2(Struct_1(_wgslsmith_div_u32(4294967295u, u_input.a), ~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), -79930i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, 161f, 274f, -1667f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(407f, 1560f, 728f, -1226f) + vec4<f32>(204f, -1685f, -654f, 830f))), vec3<i32>(_wgslsmith_add_i32(2147483647i, -16433i), abs(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 7207i, -1i), vec3<i32>(0i, 37950i, -2147483647i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-851f + 1343f))), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -19420i, -24400i) << (vec3<u32>(u_input.a, 1u, 0u) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))), firstTrailingBit(_wgslsmith_div_i32(abs(-21812i), _wgslsmith_div_i32(2147483647i, 12647i)))));
    global0 = array<bool, 9>();
    let var_1 = Struct_4(Struct_2(Struct_1(var_0.x, countOneBits(vec4<u32>(52780u, u_input.a, var_0.x, 1u) | vec4<u32>(var_0.x, 4294967295u, u_input.a, var_0.x)), ~max(2147483647i, -2147483647i), vec4<f32>(-1019f, _wgslsmith_f_op_f32(f32(-1f) * -1982f), _wgslsmith_f_op_f32(max(502f, 1030f)), -809f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(2366f, 883f, 184f, -1000f), vec4<f32>(484f, -616f, -1391f, 1000f))))), vec3<i32>(~2147483647i, -69997i, -47958i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(308f - 258f), _wgslsmith_div_f32(1124f, 1015f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(707f)))), -(~vec3<i32>(14319i, 1i, 10995i)) | select(firstTrailingBit(vec3<i32>(0i, 0i, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(287i, -1i, -1i), vec3<i32>(-2147483647i, -1i, -2147483647i), vec3<i32>(-1i, 0i, 2147483647i)), !global0[_wgslsmith_index_u32(79360u, 9u)])), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1147f, -1312f), _wgslsmith_div_vec2_f32(vec2<f32>(1518f, 625f), vec2<f32>(1259f, 1344f))))))), ~35286u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-604f + -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1157f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-650f * 567f) + 1f), -299f)), -382f), Struct_1(u_input.a, vec4<u32>(79517u, ~19165u, abs(4294967295u), _wgslsmith_mod_u32(4294967295u, u_input.a)) << (vec4<u32>(~u_input.a, _wgslsmith_add_u32(4294967295u, var_0.x), u_input.a, ~u_input.a) % vec4<u32>(32u)), 42148i, func_1(_wgslsmith_div_vec2_f32(vec2<f32>(548f, -900f), vec2<f32>(1975f, 1000f)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(0i, -2147483647i, 9398i, -11497i)), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, 0i, -49005i, 2147483647i))).a.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1620f, 294f, -1000f, -1319f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-269f, _wgslsmith_f_op_f32(-684f * var_1.a.c)) - -550f)));
}

