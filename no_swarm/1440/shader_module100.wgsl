struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    var var_0 = _wgslsmith_mod_vec4_u32(select(abs(firstTrailingBit(min(vec4<u32>(u_input.b, u_input.b, 0u, 9835u), vec4<u32>(0u, 1u, 1u, 5603u)))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(38973u, 39469u, u_input.b, 16383u), vec4<u32>(0u, 1u, 0u, u_input.b)), arg_3.b), min(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(u_input.b, 1u, 70108u, u_input.b)), vec4<u32>(firstTrailingBit(33291u), _wgslsmith_add_u32(u_input.b, u_input.b), 12421u, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 34869u, u_input.b) | (vec4<u32>(0u, 6615u, 0u, 38935u) | vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u) ^ vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)))));
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(23335i, ~u_input.a.x, arg_3.a), u_input.a));
    var var_2 = select(select(!vec4<bool>(arg_3.b & false, arg_3.b, true, !arg_3.b), vec4<bool>(false, true, any(vec2<bool>(false, arg_3.b)) && (arg_3.b && arg_3.b), arg_3.b), select(!vec4<bool>(false, arg_3.b, arg_3.b, true), !select(vec4<bool>(arg_3.b, arg_3.b, arg_3.b, true), vec4<bool>(true, arg_3.b, arg_3.b, arg_3.b), vec4<bool>(arg_3.b, false, arg_3.b, true)), arg_3.b)), select(vec4<bool>(arg_3.b, all(vec2<bool>(true, false)), true, true), vec4<bool>(any(!vec2<bool>(arg_3.b, true)), arg_3.b, arg_3.b, false), !vec4<bool>(arg_3.b, any(vec4<bool>(false, arg_3.b, arg_3.b, arg_3.b)), arg_3.b, true)), arg_3.b);
    return countOneBits(vec4<u32>(_wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec3_u32(var_0.www, vec3<u32>(23578u, 2823u, 35163u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 1u, 6736u), ~(~vec3<u32>(0u, 0u, u_input.b))), u_input.b | u_input.b, 32310u));
}

fn func_2() -> bool {
    var var_0 = ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(32192u, u_input.b, u_input.b, u_input.b)) ^ ~vec4<u32>(15181u, 67373u, 4294967295u, 0u), vec4<u32>(abs(~22109u), u_input.b, _wgslsmith_mult_u32(reverseBits(u_input.b), u_input.b), ~u_input.b));
    let var_1 = Struct_3(Struct_2(-(~abs(vec3<i32>(-51800i, 1i, u_input.a.x)))));
    var_0 = ~(~(_wgslsmith_div_vec4_u32(~vec4<u32>(14932u, var_0.x, 1u, var_0.x), vec4<u32>(1u, var_0.x, 36970u, 81956u)) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, var_0.x), vec4<u32>(var_0.x, 14989u, u_input.b, 1u), vec4<u32>(0u, u_input.b, 18880u, 32319u)) & func_3(vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 11u)], global0[_wgslsmith_index_u32(61221u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], -940f), global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], Struct_1(var_1.a.a.x, false, u_input.a.yz))) % vec4<u32>(32u))));
    var var_2 = Struct_3(Struct_2(var_1.a.a >> (func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1535f, global0[_wgslsmith_index_u32(var_0.x, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)])), -805f, _wgslsmith_f_op_f32(-1074f - -865f), Struct_1(3392i, false, vec2<i32>(var_1.a.a.x, -15682i))).zyw % vec3<u32>(32u))));
    let var_3 = vec3<i32>(-1i) * -(~_wgslsmith_sub_vec3_i32(select(var_2.a.a, vec3<i32>(11227i, 16689i, u_input.a.x), vec3<bool>(true, true, false)), ~u_input.a));
    return !(!((firstTrailingBit(54716u) >= max(u_input.b, 56711u)) == true));
}

fn func_1() -> f32 {
    var var_0 = firstTrailingBit(min(max(~(-u_input.a), u_input.a), ~u_input.a));
    let var_1 = Struct_2(reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(-1i, var_0.x, -2147483647i)), u_input.a << (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u))), u_input.a.x, -56626i)));
    global0 = array<f32, 11>();
    let var_2 = _wgslsmith_f_op_f32(abs(2388f));
    let var_3 = select(!(!vec3<bool>(any(vec2<bool>(true, true)), true, true)), select(vec3<bool>(any(vec3<bool>(true, true, true)), false, func_2()), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true)), vec3<bool>(true, true, true));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(14384u, u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(0u, 1u))), 11u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(31303u, 11u)]))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = !select(!vec2<bool>(arg_2.b, arg_2.b), select(vec2<bool>(arg_2.b, true), !select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(false, false), arg_2.b), select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, arg_2.b))), select(select(select(vec2<bool>(false, arg_2.b), vec2<bool>(arg_2.b, false), true), vec2<bool>(arg_2.b, false), all(vec4<bool>(arg_2.b, true, true, false))), !vec2<bool>(arg_2.b, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(arg_2.b, arg_2.b)), vec2<bool>(arg_2.b, false), all(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 609f, var_0.x) * vec3<f32>(-1737f, global0[_wgslsmith_index_u32(1u, 11u)], -245f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(19795u, 11u)], -365f), vec3<f32>(var_0.x, 2035f, -1495f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(var_0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * -577f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 11u)], -378f)) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x)), 1799f)))));
    global0 = array<f32, 11>();
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return Struct_2(countOneBits(~reverseBits(u_input.a | u_input.a)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    var var_0 = _wgslsmith_f_op_f32(abs(183f)) >= _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(60653u, 11u)])))));
    global0 = array<f32, 11>();
    return func_4(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1082f * 872f))))), 270f), 0i & -(-1i | _wgslsmith_sub_i32(arg_3, -2147483647i)), Struct_1(arg_0.a.x, false, -select(vec2<i32>(-1i, arg_0.a.x), select(vec2<i32>(0i, u_input.a.x), vec2<i32>(0i, 50185i), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(u_input.a), vec2<u32>(~((u_input.b | u_input.b) >> (_wgslsmith_sub_u32(u_input.b, u_input.b) % 32u)), 12373u), func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -216f))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, 72132u), 11u)]), -u_input.a.x, Struct_1(-196i, false, u_input.a.yz)), u_input.a.x);
    var var_1 = Struct_2(_wgslsmith_mult_vec3_i32(-u_input.a, countOneBits(var_0.a >> (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u)))) >> (firstLeadingBit(max(vec3<u32>(1u, u_input.b, u_input.b), abs(vec3<u32>(1u, 48629u, 49052u)))) % vec3<u32>(32u)));
    var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1215f, 253f, global0[_wgslsmith_index_u32(u_input.b, 11u)]) * vec3<f32>(global0[_wgslsmith_index_u32(1u, 11u)], -1322f, global0[_wgslsmith_index_u32(u_input.b, 11u)])))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1213f, global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(46499u, 11u)]), vec3<f32>(-1481f, global0[_wgslsmith_index_u32(3974u, 11u)], 1526f), vec3<bool>(true, false, true))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(41594u, 11u)], 1351f))))), _wgslsmith_mod_i32(abs(var_0.a.x), u_input.a.x) | u_input.a.x, Struct_1(1i, false, vec2<i32>(firstTrailingBit(u_input.a.x ^ u_input.a.x), 0i)));
    var var_2 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1281f, -839f, -1000f), vec3<f32>(752f, -227f, -379f)))))), _wgslsmith_sub_i32(i32(-1i) * -u_input.a.x, 2147483647i), Struct_1(-24746i, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), -(~vec2<i32>(-17771i, u_input.a.x)))));
    var var_3 = Struct_3(var_2.a);
    let var_4 = max(u_input.b, 0u);
    var var_5 = Struct_2(vec3<i32>(0i, 0i, -7976i));
    let var_6 = func_5(func_5(func_5(var_0, vec2<u32>(firstTrailingBit(var_4), reverseBits(15078u)), Struct_2(var_5.a & vec3<i32>(var_0.a.x, 24172i, var_1.a.x)), ~(-21490i) >> (var_4 % 32u)), ~(~vec2<u32>(u_input.b, 7930u)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], -1000f, 413f) * vec3<f32>(-1140f, -895f, -1274f))), 2147483647i, Struct_1(-74551i, true, -vec2<i32>(var_2.a.a.x, -1i))), 19201i), max(abs(func_3(vec4<f32>(global0[_wgslsmith_index_u32(var_4, 11u)], global0[_wgslsmith_index_u32(var_4, 11u)], 657f, 1044f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 11u)] + global0[_wgslsmith_index_u32(70056u, 11u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_4, 11u)]), Struct_1(var_1.a.x, false, vec2<i32>(9668i, var_5.a.x))).yz), min(select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(var_4, 60148u)), vec2<u32>(u_input.b, 0u), false), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_4, u_input.b), ~vec2<u32>(0u, var_4)))), var_3.a, -9955i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

