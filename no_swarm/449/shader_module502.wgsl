struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<f32, 31> = array<f32, 31>(-924f, 1272f, -1942f, 882f, -1656f, -1184f, 598f, 2390f, -1667f, -741f, 189f, 823f, -285f, 131f, -607f, 166f, 248f, -321f, -378f, -436f, 502f, -1063f, 1021f, -770f, -491f, 823f, -1927f, 449f, -674f, 942f, -1015f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(~1u, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1573f, global0[_wgslsmith_index_u32(4294967295u, 31u)])), global0[_wgslsmith_index_u32(1u, 31u)], false))), -2397f));
    var var_1 = firstTrailingBit(vec2<u32>(4294967295u, max(~119655u, countOneBits(1u)))) | _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(50166u, 5690u)), abs(~(~vec2<u32>(1u, 6880u))));
    var_1 = abs(select(~(~vec2<u32>(var_1.x, var_1.x)), vec2<u32>(_wgslsmith_mult_u32(var_1.x, var_1.x), var_1.x), arg_2.zz) & _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, var_1.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, 18234u))), ~(~vec2<u32>(var_1.x, 44366u))));
    var_1 = min(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, 1u))), _wgslsmith_mult_vec2_u32(vec2<u32>(min(4294967295u >> (var_1.x % 32u), 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 77143u, 69896u, 1u), ~vec4<u32>(1u, 64119u, var_1.x, 25601u))), ~(~vec2<u32>(var_1.x, 20492u))));
    let var_2 = Struct_1(false, any(select(arg_2, !arg_2, arg_2)));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(countOneBits(-29083i), u_input.a.x), ~u_input.a.x, 1i), -u_input.a.wyx);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: vec4<u32>) -> f32 {
    var var_0 = any(!select(vec2<bool>(all(vec2<bool>(true, false)), !arg_1), vec2<bool>(arg_1 || false, true), vec2<bool>(!arg_1, true)));
    let var_1 = arg_0;
    var var_2 = all(select(vec4<bool>(true, arg_1, false, true), !select(select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, false, true)), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, false, false, arg_1)), select(vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1))), all(vec2<bool>(true, all(vec4<bool>(false, true, arg_1, arg_1))))));
    var var_3 = select(select(select(vec2<bool>(u_input.a.x <= u_input.a.x, true), select(vec2<bool>(arg_1, arg_1), !vec2<bool>(false, arg_1), !vec2<bool>(arg_1, true)), false), !vec2<bool>(u_input.a.x < 1i, false), all(!(!vec3<bool>(true, true, arg_1)))), select(vec2<bool>(any(!vec3<bool>(true, arg_1, arg_1)), select(false, arg_1, false | arg_1)), select(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), arg_1), arg_1), select(vec2<bool>(true, arg_1), !vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1)), true), 46376u < ~(~arg_3.x)), !any(!vec3<bool>(arg_1, false, true)));
    var_2 = true;
    return _wgslsmith_div_f32(var_1.a.x, var_1.a.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    global0 = array<f32, 31>();
    return arg_1;
}

fn func_1() -> vec3<f32> {
    global0 = array<f32, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(1u, 31u)], 418f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(755f, global0[_wgslsmith_index_u32(26840u, 31u)]) + vec2<f32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(11982u, 31u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(56361u, 31u)]))))))));
    var var_1 = func_4(vec4<i32>(~func_2(_wgslsmith_f_op_f32(f32(-1f) * -642f), ~27149i, vec3<bool>(false, false, false)), ~_wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(0i, 1i), 0i), _wgslsmith_div_i32(u_input.a.x, firstLeadingBit(7111i) >> (_wgslsmith_div_u32(23260u, 4294967295u) % 32u)), -(~countOneBits(u_input.a.x))), Struct_1(all(vec3<bool>(true, select(false, true, false), true)), true), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(693f, var_0.x, global0[_wgslsmith_index_u32(106018u, 31u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -1287f, 1318f)))))), vec2<f32>(_wgslsmith_f_op_f32(min(-1374f, _wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(-649f, var_0.x, var_0.x)), all(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2231f, var_0.x, 649f)), firstLeadingBit(vec4<u32>(0u, 5523u, 4294967295u, 1u)))))), global0[_wgslsmith_index_u32(~(~4294967295u), 31u)]));
    var_1 = func_4(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), firstLeadingBit(firstLeadingBit(u_input.a.x)), -21067i, (1i ^ u_input.a.x) >> (4294967295u % 32u)) & (u_input.a & (~u_input.a ^ u_input.a)), func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(min(31388i, -96125i), -u_input.a.x, abs(-1i), _wgslsmith_div_i32(u_input.a.x, -1i)), vec4<i32>(countOneBits(30592i), u_input.a.x, 2147483647i & u_input.a.x, u_input.a.x), countOneBits(u_input.a) & ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), func_4(~vec4<i32>(12129i, 15482i, -1i, u_input.a.x), Struct_1(true, func_4(u_input.a, Struct_1(var_1.b, false), Struct_2(vec3<f32>(2683f, var_0.x, 1303f)), vec2<f32>(-364f, global0[_wgslsmith_index_u32(4294967295u, 31u)])).b), Struct_2(vec3<f32>(-286f, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1163f, 1186f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, 1000f)))))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -2864f, -402f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(2479u, 31u)], -670f, var_0.x), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], var_0.x))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-547f, global0[_wgslsmith_index_u32(4294967295u, 31u)]) + vec2<f32>(1255f, 1879f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(3621u, 31u)], -1128f) - vec2<f32>(-1572f, -1000f)))))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, var_0.x, 1038f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, 1808f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), true)))));
    let var_2 = vec2<bool>(true, true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(724f, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2302f, -457f, var_0.x)))))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-927f, -740f, var_0.x))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(min(-2041f, 380f)))))));
    let var_2 = func_4(_wgslsmith_div_vec4_i32(countOneBits(firstTrailingBit(u_input.a)), vec4<i32>(min(2147483647i, arg_1), _wgslsmith_clamp_i32(-35706i, arg_1, arg_1), ~(-24599i), i32(-1i) * -16065i)) ^ firstLeadingBit(~vec4<i32>(45165i, -35383i, arg_1, 0i)), func_4(vec4<i32>(-1i, u_input.a.x, 1i, _wgslsmith_div_i32(~1i, 1i)), Struct_1(true, !select(arg_2.x, arg_2.x, arg_2.x)), var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -345f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1027f, -920f)))))), var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-403f, _wgslsmith_f_op_f32(max(arg_0.a.x, 806f)))) - _wgslsmith_f_op_vec2_f32(-var_0.a.yx))).a;
    global0 = array<f32, 31>();
    let var_3 = Struct_1(false, arg_2.x);
    return var_3;
}

fn func_6(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    let var_0 = 1i;
    let var_1 = !(!arg_3.zx);
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(53617u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, 33615u, 31938u, 1u)), vec4<u32>(0u, 86848u, 0u, arg_1.x)), ~firstLeadingBit(vec4<u32>(arg_1.x, arg_1.x, 1u, 65813u))), ~13043u, ~46922u >> (max(firstLeadingBit(arg_1.x), arg_1.x) % 32u)), arg_1.x, arg_1.x);
    global0 = array<f32, 31>();
    let var_3 = Struct_1(var_1.x, !(true | all(arg_3.zzw)));
    return global0[_wgslsmith_index_u32(arg_1.x, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3084f, global0[_wgslsmith_index_u32(66224u, 31u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 31u)])))))));
    let var_1 = _wgslsmith_f_op_f32(func_6(max(countOneBits(~max(u_input.a, u_input.a)), u_input.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), ~vec2<u32>(~(~4294967295u), ~1u), func_5(Struct_2(_wgslsmith_f_op_vec3_f32(func_1())), u_input.a.x, select(vec4<bool>(any(vec4<bool>(true, false, true, false)), true, any(vec2<bool>(false, true)), false), vec4<bool>(true, false, -24094i < u_input.a.x, true), false)), !vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), !any(vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 9214u, 4294967295u), vec4<u32>(52885u, 31703u, 82728u, 1u)) < _wgslsmith_sub_u32(4294967295u, 1u))));
    let var_2 = ~u_input.a.zz;
    var var_3 = var_0;
    let var_4 = select(vec4<bool>(all(vec4<bool>(false, true, select(true, true, false), true)), true, true & any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), vec4<bool>(!func_5(Struct_2(vec3<f32>(var_3.x, 411f, -1000f)), var_2.x, vec4<bool>(false, false, false, true)).b, true, true, true), true), false);
    let var_5 = func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, var_0.x, global0[_wgslsmith_index_u32(firstTrailingBit(1u), 31u)]))), firstTrailingBit(var_2.x), !vec4<bool>(select(false, true, false), false, var_4.x, true));
    global0 = array<f32, 31>();
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-711f, _wgslsmith_f_op_f32(243f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_f_op_f32(abs(-1576f)), var_3.x) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(-682f, -295f)), _wgslsmith_f_op_f32(max(var_1, 836f)), _wgslsmith_f_op_f32(-819f - var_1), _wgslsmith_f_op_f32(round(var_1)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-646f, var_3.x, -604f, var_1), vec4<f32>(var_0.x, -1000f, var_0.x, 269f)))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-716f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_0.x + -871f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, 2895f, -758f, 489f))) * _wgslsmith_div_vec4_f32(vec4<f32>(1182f, var_1, var_0.x, 3075f), vec4<f32>(2444f, 336f, var_1, -1325f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

