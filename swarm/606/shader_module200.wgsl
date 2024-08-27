struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<f32, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(~u_input.a, ~10071u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 16550u), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 75725u), vec3<bool>(arg_0, arg_0, true)))), reverseBits(9595u), _wgslsmith_sub_u32(~u_input.a, u_input.a), ~reverseBits(firstTrailingBit(1u))) & _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~min(vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<u32>(0u, 0u, u_input.a, 8324u)), vec4<u32>(~u_input.a, ~u_input.a, 0u, abs(u_input.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 44249u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 9932u, 4294967295u), vec4<u32>(27736u, u_input.a, 0u, 64833u), vec4<u32>(51375u, 4294967295u, 2314u, 32688u)))), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 27356u, 4294967295u), abs(vec3<u32>(u_input.a, 20011u, 4294967295u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(4294967295u, u_input.a, u_input.a)), 57890u, ~4294967295u));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -50431i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 1i), abs(vec2<i32>(1i, 1i)), -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, 2147483647i))) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.x, 36105u), var_0.xw) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(123f, global1[_wgslsmith_index_u32(1u, 10u)])))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 10u)], 164f)) - vec2<f32>(_wgslsmith_f_op_f32(select(-1354f, global1[_wgslsmith_index_u32(4294967295u, 10u)], true)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 10u)]))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(ceil(-389f)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(-778f, var_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-815f * 1000f)))))), _wgslsmith_f_op_f32(-var_2.x));
    return u_input.a;
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = min(_wgslsmith_sub_vec3_u32(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(53988u, 0u, u_input.a), vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(4294967295u, 102247u, u_input.a))), _wgslsmith_div_vec3_u32(abs(~vec3<u32>(u_input.a, u_input.a, 87621u)), vec3<u32>(u_input.a >> (4294967295u % 32u), ~17709u, u_input.a))), ~(~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)) ^ vec3<u32>(u_input.a, 57435u, _wgslsmith_mult_u32(u_input.a, u_input.a))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(11228u, 10u)])) + 649f);
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    global0 = -316f;
    return all(!vec3<bool>(true, func_3(false) == 36442u, true));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_1 {
    global1 = array<f32, 10>();
    var var_0 = Struct_1(~select(~4294967295u, 4294967295u, false));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0.a, 10u)])), global1[_wgslsmith_index_u32(1u, 10u)])));
    global1 = array<f32, 10>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)));
    return Struct_1(~(~_wgslsmith_add_u32(1u, 73533u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(true), reverseBits(7763u)), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.a), vec2<u32>(u_input.a, 31214u)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: u32) -> f32 {
    global1 = array<f32, 10>();
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 11414i, 1i), vec3<i32>(-42035i, -46801i, 3419i)), vec3<i32>(38343i, 0i, -2147483647i)) << (abs(vec3<u32>(19775u, arg_0.a, 8959u)) % vec3<u32>(32u)), -vec3<i32>(1i, 1i, 1i)), -firstLeadingBit(2147483647i));
    global0 = _wgslsmith_f_op_f32(abs(arg_2.b.x));
    global1 = array<f32, 10>();
    var_0 = 1i;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_2.b.x))))));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = vec3<bool>(true, false, false);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 10u)]), -1000f));
    let var_1 = _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, global1[_wgslsmith_index_u32(u_input.a, 10u)], -620f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1076f, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)]) * vec3<f32>(global1[_wgslsmith_index_u32(15354u, 10u)], -740f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4109u, 10u)], -1000f, global1[_wgslsmith_index_u32(u_input.a, 10u)]) * vec3<f32>(-2090f, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)])))), vec4<bool>(false, false, true, !func_2(vec3<f32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(110442u, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)])))), vec3<bool>(all(select(vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x))), 46815u <= u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1264f)) > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(92740u), 10u)])), Struct_3(Struct_1(_wgslsmith_div_u32(min(1u, 1312u), 4294967295u ^ u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 10u)])), -278f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 10u)], _wgslsmith_f_op_f32(step(574f, 219f))))), 38274u));
    let var_2 = Struct_3(Struct_1(u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(2720f)), _wgslsmith_f_op_f32(func_5(func_4(vec3<f32>(1741f, var_1, global1[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<bool>(var_0.x, false, var_0.x, false)), !vec3<bool>(var_0.x, var_0.x, true), Struct_3(Struct_1(1u), vec3<f32>(-166f, -1125f, 462f)), 22533u)), _wgslsmith_f_op_f32(f32(-1f) * -328f))));
    var var_3 = true;
    return -1i | arg_0.x;
}

fn func_6(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: f32) -> Struct_3 {
    let var_0 = arg_0;
    var var_1 = Struct_3(Struct_1(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 22511u, 17836u, u_input.a), vec4<u32>(72401u, arg_2.x, arg_2.x, 54441u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1121f), _wgslsmith_div_f32(arg_3, arg_3), -380f) + vec3<f32>(1401f, -1000f, -168f))));
    return Struct_3(Struct_1(4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 542f;
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~1u, 40853u, u_input.a & u_input.a), u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, 1140f)))))));
    let var_2 = func_6(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), abs(vec2<i32>(abs(reverseBits(0i)), func_1(vec4<i32>(65537i, -35356i, -1i, 1i)) ^ -14226i)), reverseBits(vec2<u32>(4294967295u, ~0u)), -1164f);
    var var_3 = vec3<bool>(true, true, !any(vec2<bool>(true, true)));
    var var_4 = select(~countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.a, var_1.a.a), vec2<u32>(1u, var_1.a.a))), countOneBits(~(~(~vec2<u32>(1u, 4294967295u)))), vec2<bool>(any(vec4<bool>(true, var_3.x & true, !var_3.x, any(vec3<bool>(false, var_3.x, false)))), true));
    var var_5 = 1u;
    var var_6 = vec4<bool>(!(countOneBits(var_2.a.a >> (40249u % 32u)) < var_2.a.a), all(vec4<bool>(all(select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, true, var_3.x, false), var_3.x)), true, !var_3.x, any(!vec4<bool>(var_3.x, var_3.x, false, var_3.x)))), var_3.x, (all(var_3.yz) & false) & !(!(!var_3.x)));
    var var_7 = Struct_1(0u ^ var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_sub_vec4_i32(vec4<i32>(28051i, -5094i, 1i, -47466i), vec4<i32>(54262i, 0i, -30364i, 14598i)), select(vec4<i32>(~5699i, -46510i, _wgslsmith_clamp_i32(-37832i, -14523i, 0i), i32(-1i) * -58230i), vec4<i32>(1i, 1i, 1i, 1i), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -569f, var_1.b.x)))), (_wgslsmith_clamp_i32(-1i, 2147483647i, -32124i) == -17508i) == true), var_1.a.a);
}

