struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(239f), Struct_2(-356f), Struct_2(421f), Struct_2(-373f), Struct_2(-245f), Struct_2(681f), Struct_2(-1747f), Struct_2(812f), Struct_2(-1000f), Struct_2(-894f), Struct_2(-1000f), Struct_2(2900f), Struct_2(-113f), Struct_2(617f), Struct_2(1027f), Struct_2(-199f), Struct_2(-174f), Struct_2(-279f), Struct_2(-292f), Struct_2(-251f), Struct_2(-1887f), Struct_2(1150f), Struct_2(1000f), Struct_2(1084f), Struct_2(-954f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = ~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(select(7783u, 70325u, false), reverseBits(65834u), firstTrailingBit(4294967295u)), vec3<u32>(countOneBits(4294967295u), ~49938u, ~0u)));
    var var_2 = Struct_2(-1000f);
    global0 = array<f32, 20>();
    var var_3 = global1[_wgslsmith_index_u32(var_1.x, 25u)];
    return ~var_1.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(2342u, ~(func_3(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 161f), _wgslsmith_f_op_f32(-1398f * -1000f)) >> (~_wgslsmith_div_u32(21877u, 16095u) % 32u)), _wgslsmith_mod_u32(firstLeadingBit(~4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 34772u, 0u), vec3<u32>(1u, 73773u, 1u))) ^ reverseBits(_wgslsmith_sub_u32(firstTrailingBit(27395u), ~0u)));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -911f))), -2414f))))));
    var var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(0u, 4294967295u, var_0.x)), vec3<u32>(0u, var_0.x, var_0.x) >> (vec3<u32>(0u, 0u, 88529u) % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_mult_u32(77507u, select(94197u, 0u, false)), 1u)) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, ~var_0.x, _wgslsmith_add_u32(4294967295u, var_0.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), ~vec3<u32>(var_0.x, var_0.x, 1u))), vec3<u32>(var_0.x, max(func_3(vec2<f32>(var_1, 492f), var_1), 31100u), var_0.x));
    let var_3 = countOneBits(_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, var_0.x, var_2.x), select(vec3<u32>(38299u, 1901u, var_2.x), vec3<u32>(1u, var_2.x, 35440u), vec3<bool>(false, true, false))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, var_0.x, 71162u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_2.x, 1836u), vec3<u32>(11226u, var_2.x, 1u), vec3<u32>(var_2.x, var_2.x, 8701u))) << (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 1u)), ~vec3<u32>(2391u, var_0.x, var_0.x)) % vec3<u32>(32u))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(139f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1)))), 337f)), 1385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(491f)) * 1154f)));
    return Struct_1(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, -27256i, u_input.a.x), arg_0.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-108f, -1000f, 502f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(656f, arg_2.a, 1630f) * vec3<f32>(arg_2.a, arg_2.a, global0[_wgslsmith_index_u32(7210u, 20u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(14067u, 20u)], -669f) - vec3<f32>(global0[_wgslsmith_index_u32(11922u, 20u)], arg_2.a, global0[_wgslsmith_index_u32(11151u, 20u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(3248u, 20u)], global0[_wgslsmith_index_u32(7328u, 20u)], arg_2.a))))))));
    return Struct_2(_wgslsmith_f_op_f32(min(-411f, global0[_wgslsmith_index_u32(17381u, 20u)])));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    global1 = array<Struct_2, 25>();
    let var_0 = func_4(func_2(func_2(Struct_1(u_input.a))), ~(~(vec4<i32>(-3147i, arg_2, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, arg_2, -1i, -1i))), func_4(func_2(Struct_1(vec2<i32>(-1i, u_input.a.x))), -vec4<i32>(-u_input.a.x, -27026i, _wgslsmith_clamp_i32(11646i, u_input.a.x, 30401i), 19370i), Struct_2(arg_0.a), ~(~vec4<i32>(arg_2, u_input.a.x, arg_2, arg_2) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), -(~(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_2))));
    global0 = array<f32, 20>();
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_mod_u32(1u, ~(~(~countOneBits(4294967295u))));
    return Struct_1(u_input.a);
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = -6741i;
    let var_1 = Struct_1(arg_2.a);
    let var_2 = func_2(func_2(func_5(Struct_2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)])), select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0)), -38585i)));
    let var_3 = arg_2.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 20u)] - _wgslsmith_f_op_f32(-func_4(var_1, -vec4<i32>(arg_2.a.x, var_2.a.x, -1i, 2147483647i), func_4(Struct_1(vec2<i32>(u_input.a.x, arg_2.a.x)), vec4<i32>(-6484i, 1i, 26211i, var_2.a.x), Struct_2(401f), vec4<i32>(arg_1, -2147483647i, arg_2.a.x, -76412i)), abs(vec4<i32>(var_3, arg_1, arg_1, u_input.a.x))).a)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(25230u, 20u)])), global0[_wgslsmith_index_u32(~5716u, 20u)]), global0[_wgslsmith_index_u32(~1u, 20u)])));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> vec4<i32> {
    global1 = array<Struct_2, 25>();
    global1 = array<Struct_2, 25>();
    global0 = array<f32, 20>();
    let var_0 = _wgslsmith_mod_vec4_i32(max(vec4<i32>(abs(10158i), -min(u_input.a.x, arg_3.a.x), 1i ^ abs(arg_3.a.x), -arg_3.a.x), max(vec4<i32>(arg_3.a.x, 0i, 6946i, u_input.a.x), ~vec4<i32>(1451i, -1i, u_input.a.x, 42285i)) & (vec4<i32>(-1i) * -vec4<i32>(1i, -31939i, u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec4_i32(abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.a.x, arg_3.a.x, 2147483647i, u_input.a.x), vec4<i32>(0i, arg_3.a.x, 0i, u_input.a.x))), ~(-select(vec4<i32>(arg_3.a.x, u_input.a.x, -41602i, 2147483647i), vec4<i32>(4248i, arg_3.a.x, -1i, arg_3.a.x), vec4<bool>(false, arg_2, false, arg_2)))));
    global0 = array<f32, 20>();
    return _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(arg_3.a.x, -15850i, -2147483647i, 22104i) << (vec4<u32>(50650u, 1u, 1u, 0u) % vec4<u32>(32u))), -var_0) ^ -(~(vec4<i32>(-2147483647i, 2147483647i, arg_3.a.x, arg_3.a.x) >> (~vec4<u32>(0u, 0u, 27898u, 20003u) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> vec4<u32> {
    let var_0 = (global0[_wgslsmith_index_u32(62351u, 20u)] > _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(abs(select(4294967295u, 0u, true)), 20u)]))) != true;
    global1 = array<Struct_2, 25>();
    let var_1 = ~(~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 85672u, 4294967295u))));
    var var_2 = func_7(func_6(var_0, abs(~(-4475i)) ^ firstTrailingBit(arg_0.x), func_5(func_4(func_2(Struct_1(vec2<i32>(u_input.a.x, 25817i))), _wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(arg_0.x, -1i, 14991i, arg_0.x)), global1[_wgslsmith_index_u32(~var_1.x, 25u)], firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0.x))), select(vec3<bool>(var_0, false, false), vec3<bool>(arg_1, arg_1, arg_1), true), 0i)), Struct_2(_wgslsmith_f_op_f32(abs(-816f))), arg_1, Struct_1(vec2<i32>(arg_0.x, abs(func_5(global1[_wgslsmith_index_u32(45545u, 25u)], vec3<bool>(var_0, true, arg_1), 2147483647i).a.x))));
    global1 = array<Struct_2, 25>();
    return ~firstLeadingBit(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 41774u, var_1.x, var_1.x), vec4<u32>(17401u, var_1.x, 67203u, var_1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x), vec4<u32>(var_1.x, var_1.x, 46163u, 28104u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 20>();
    var var_0 = false || all(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true));
    let var_1 = ~(~abs(~func_1(vec4<i32>(54236i, 1i, 52900i, 7782i), false)));
    var_0 = !(!any(vec3<bool>(true, true, true)));
    global1 = array<Struct_2, 25>();
    var_0 = any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 20u)]) >= 1625f));
    global0 = array<f32, 20>();
    var var_2 = select(select(select(vec2<bool>(70995u < var_1.x, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), any(vec2<bool>(true, true)))), vec2<bool>(true, select(global0[_wgslsmith_index_u32(var_1.x, 20u)] > _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 20u)], 708f), all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), all(vec4<bool>(true, false, false, true)))), vec2<bool>(any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))));
    var var_3 = global1[_wgslsmith_index_u32(~select(~(~_wgslsmith_add_u32(1u, 0u)), ~var_1.x, any(!(!vec4<bool>(true, true, var_2.x, var_2.x)))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(max(-u_input.a.x, -func_7(global1[_wgslsmith_index_u32(81337u, 25u)], Struct_2(-1000f), true, Struct_1(u_input.a)).x), u_input.a.x, min(2147483647i, ~(~8022i)), select(u_input.a.x & u_input.a.x, u_input.a.x, true) >> (~(~28610u) % 32u)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2808u, 20u)]), var_3.a, func_6(var_2.x, firstTrailingBit(-countOneBits(-1i)), func_5(global1[_wgslsmith_index_u32(abs(~var_1.x), 25u)], vec3<bool>(true, any(vec4<bool>(var_2.x, true, var_2.x, true)), u_input.a.x == u_input.a.x), 22830i)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a, 1004f)))));
}

