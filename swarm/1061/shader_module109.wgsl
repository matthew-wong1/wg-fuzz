struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> f32 {
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(59049u);
    global0 = array<vec4<bool>, 30>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-2147483647i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1158f, -1000f, 414f, -824f) - vec4<f32>(-1000f, -477f, 424f, -1143f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1839f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -1222f))))));
    let var_2 = arg_1;
    var_0 = Struct_1(~(49673u << (var_2.a % 32u)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = Struct_1(u_input.a.x);
    global0 = array<vec4<bool>, 30>();
    let var_1 = func_2(select(vec2<bool>(true, true), select(vec2<bool>(true, 1134f < arg_1), vec2<bool>(true, false), vec2<bool>(true, all(vec2<bool>(false, false)))), vec2<bool>(false, false || any(vec3<bool>(false, true, false)))), func_2(vec2<bool>(select(true, all(vec4<bool>(false, false, true, false)), true), true), arg_0, true), true);
    var var_2 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))), vec3<bool>(arg_1 > _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1)), false, !any(vec3<bool>(true, false, true))), false);
    let var_3 = -firstTrailingBit(~_wgslsmith_mod_i32(2147483647i, 1i) << (0u % 32u));
    return ~(~_wgslsmith_sub_u32(arg_0.a, ~u_input.a.x | (arg_0.a ^ var_1.a)));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<f32>, arg_3: u32) -> vec4<f32> {
    var var_0 = vec3<u32>(38704u, ~_wgslsmith_div_u32(1u, ~0u), 0u);
    var_0 = firstLeadingBit(~vec3<u32>(_wgslsmith_mod_u32(var_0.x >> (var_0.x % 32u), ~1u), firstTrailingBit(var_0.x), 4294967295u));
    global0 = array<vec4<bool>, 30>();
    return vec4<f32>(arg_2.x, 533f, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(ceil(167f))), _wgslsmith_f_op_f32(max(1702f, 1622f)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, arg_3 > arg_3)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(263f, -334f) + arg_1))))), func_4(func_2(vec2<bool>(true, true), Struct_1(5297u), true), _wgslsmith_f_op_f32(arg_1.x * arg_1.x)) << (select(_wgslsmith_clamp_u32(arg_3, arg_3, arg_3), ~arg_0, true) % 32u))));
    let var_1 = false;
    var var_2 = vec3<bool>(!(15705i == _wgslsmith_clamp_i32(40878i, -2147483647i, _wgslsmith_add_i32(0i, 4243i))), true, true);
    let var_3 = Struct_1(4294967295u);
    var var_4 = var_3;
    return select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0 & _wgslsmith_div_u32(~78248u, _wgslsmith_add_u32(1u, u_input.a.x)), ~13976u), 30u)], global0[_wgslsmith_index_u32(select(~(arg_3 >> (45899u % 32u)), _wgslsmith_mult_u32(abs(51046u), var_4.a), var_2.x), 30u)], vec4<bool>(var_2.x, 53056u < ~var_4.a, false, 31895u != (_wgslsmith_clamp_u32(arg_0, 13043u, 4294967295u) ^ 1u)));
}

fn func_6(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_vec2_i32(firstLeadingBit(min(vec2<i32>(0i, 5667i), vec2<i32>(-1i, 1i))) << (countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), firstTrailingBit(~vec2<i32>(5615i, -1i)) >> (~u_input.a % vec2<u32>(32u)), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -1i, -53936i), vec4<i32>(-1i, -2147483647i, -11530i, 1i)), -(-16317i >> (u_input.a.x % 32u)))));
    var var_1 = (true && any(select(arg_0.xzy, select(vec3<bool>(false, true, arg_0.x), arg_0.wzx, arg_0.www), all(vec3<bool>(false, arg_0.x, arg_0.x))))) & all(vec3<bool>(arg_0.x, !arg_0.x, arg_0.x));
    var var_2 = ~abs(vec2<u32>(8162u, ~u_input.a.x));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_5(vec2<bool>(true, arg_0.x), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-784f, 787f) * vec2<f32>(1000f, -253f))), 4294967295u ^ var_2.x)).x - 836f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f), -2000f), 1f, _wgslsmith_clamp_u32(1u, ~var_2.x, abs(0u)) >= u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-843f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) - _wgslsmith_f_op_f32(func_3(var_0.x, vec4<f32>(-275f, 1923f, -1559f, 442f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f)));
    var var_4 = 1u;
    return Struct_1(_wgslsmith_sub_u32(63545u, _wgslsmith_clamp_u32(u_input.a.x, 1949u, countOneBits(_wgslsmith_div_u32(17821u, u_input.a.x)))));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = u_input.a;
    var var_1 = arg_1;
    let var_2 = vec3<i32>(-_wgslsmith_dot_vec2_i32(-(vec2<i32>(-29162i, -6620i) << (vec2<u32>(var_1.a, 0u) % vec2<u32>(32u))), max(select(vec2<i32>(arg_3, -1i), vec2<i32>(arg_3, arg_3), false), vec2<i32>(arg_3, -2147483647i) >> (u_input.a % vec2<u32>(32u)))), -33016i, -9681i | -arg_3);
    let var_3 = ~(~max(vec4<u32>(1u, var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 1u, 1223u)), 105767u), max(~vec4<u32>(47981u, 87523u, 4294967295u, 0u), abs(vec4<u32>(arg_1.a, 4294967295u, 0u, var_1.a)))));
    let var_4 = 9742u;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -394f)))), arg_2) + -745f);
}

fn func_8(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    let var_0 = func_2(select(!arg_0.zz, select(select(select(vec2<bool>(true, true), arg_0.yx, arg_0.xz), select(vec2<bool>(arg_0.x, arg_0.x), arg_0.wy, true), vec2<bool>(arg_0.x, arg_0.x)), select(!arg_0.zw, arg_0.zx, arg_0.x), any(func_1(77966u, vec2<f32>(arg_1, arg_1), arg_1, u_input.a.x).wyx)), any(select(select(arg_0.wxx, arg_0.yyx, arg_0.x), !arg_0.zzw, arg_0.xxy))), func_6(arg_0), true);
    let var_1 = vec3<u32>(select(0u, ~select(62268u ^ var_0.a, 4294967295u, 1281f < arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 * arg_1), 459f, all(arg_0.xwx))) < 142f), min(43208u ^ var_0.a, _wgslsmith_div_u32(~u_input.a.x, 4294967295u)), 1u);
    global0 = array<vec4<bool>, 30>();
    let var_2 = ~vec3<u32>(4294967295u, var_0.a, ~(~u_input.a.x));
    let var_3 = arg_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1201f, arg_1, 2202f, 2031f)))), var_0, -886f, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 14903i, 1i, -2147483647i), vec4<i32>(30383i, 0i, 42166i, 25709i), vec4<i32>(2147483647i, 2147483647i, 50269i, 13059i))))) - arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_vec4_f32(func_5(vec2<bool>(false, true), true, vec2<f32>(arg_1, -376f), 1u)).x))) - 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.a.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_8(global0[_wgslsmith_index_u32(0u << (u_input.a.x % 32u), 30u)], _wgslsmith_f_op_f32(func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 299f, -506f, -2405f) - vec4<f32>(1061f, -891f, -175f, 535f))), func_6(func_1(var_0.a, vec2<f32>(-1090f, -1355f), -555f, 4294967295u)), 104f, -1i)), ~(~(~vec3<u32>(22800u, 1u, var_0.a))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(144f)))) - _wgslsmith_f_op_f32(func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(207f, -1110f, 734f, -468f), vec4<f32>(1000f, -579f, 1070f, -492f))), Struct_1(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f)), max(33067i, _wgslsmith_clamp_i32(1i, -68391i, -21176i))))));
    let var_2 = 29234u;
    var var_3 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(max(u_input.a, vec2<u32>(50962u, var_2))), ~(~u_input.a)), ~_wgslsmith_div_vec2_u32(~u_input.a, u_input.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(func_5(vec2<bool>(true, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f * var_1.x)))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec2_f32(-var_1), ~(4294967295u | reverseBits(var_0.a)) << (firstLeadingBit(~31991u >> ((var_2 & var_2) % 32u)) % 32u)));
    let var_5 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(var_4))));
    var_0 = func_2(vec2<bool>(true, true), Struct_1(0u), true);
    let var_6 = vec4<f32>(-221f, var_1.x, _wgslsmith_f_op_f32(max(var_5.x, -1139f)), _wgslsmith_f_op_f32(trunc(var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(countOneBits(1i >> (var_0.a % 32u)), 1i, 1i <= _wgslsmith_dot_vec2_i32(vec2<i32>(23318i, 21386i), vec2<i32>(1i, -1i)))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 13233i, -1i, -3557i), firstLeadingBit(vec4<i32>(0i, 14301i, 2147483647i, -31484i))), 32956i), 2147483647i), abs(select(~vec3<u32>(var_2, 1u, var_2), ~vec3<u32>(u_input.a.x, u_input.a.x, 97018u), true)));
}

