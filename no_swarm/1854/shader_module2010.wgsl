struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<f32> {
    let var_0 = !arg_1.wwx;
    let var_1 = arg_0;
    var var_2 = var_1;
    var_2 = Struct_1(arg_1);
    let var_3 = -firstLeadingBit(20413i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i) & vec3<i32>(_wgslsmith_clamp_i32(0i, 9466i, 0i), 1i, 1i), reverseBits(max(firstTrailingBit(vec3<i32>(0i, -2408i, -2147483647i)), vec3<i32>(2147483647i, 2147483647i, 24831i))));
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(341f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-664f))))), vec2<f32>(_wgslsmith_f_op_f32(select(-832f, _wgslsmith_f_op_f32(-1494f - -617f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(150f, 1457f)) + _wgslsmith_div_f32(1789f, 335f)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: f32) -> vec3<bool> {
    var var_0 = vec2<f32>(312f, arg_3);
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3, _wgslsmith_f_op_f32(step(var_0.x, -1228f))))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec4<bool>(true, true, arg_1.x, true)), vec4<bool>(arg_1.x, 4294967295u > u_input.b, true, true), Struct_1(arg_1), vec4<u32>(u_input.a.x >> (arg_0.x % 32u), 43548u, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1475f)))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(exp2(arg_3))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1048f) * vec2<f32>(arg_3, -1235f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, -1000f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1190f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(547f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(609f)), var_0.x)), true))));
    let var_1 = Struct_1(select(select(!select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), arg_1, arg_1.x), arg_1, any(vec3<bool>(arg_1.x, arg_1.x, false))), vec4<bool>(true, !arg_1.x, any(vec3<bool>(arg_1.x, false, arg_1.x)), any(!vec3<bool>(true, true, arg_1.x))), all(!vec3<bool>(arg_1.x, true, true))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + var_0.x) - _wgslsmith_f_op_f32(-var_0.x)), var_0.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -854f), vec2<f32>(-1360f, arg_3)), vec2<f32>(-154f, -1422f))))));
    return vec3<bool>((!var_1.a.x | arg_1.x) & (4294967295u != _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(27752u, arg_0.x)), _wgslsmith_mod_vec2_u32(arg_0.zw, vec2<u32>(arg_0.x, 0u)))), false, var_1.a.x);
}

fn func_1() -> f32 {
    var var_0 = select(!select(func_2(vec4<u32>(u_input.b, 39406u, u_input.b, 1u), vec4<bool>(false, false, true, false), _wgslsmith_mod_vec4_i32(vec4<i32>(-11732i, -67765i, -61267i, -1i), vec4<i32>(2147483647i, -2563i, -38156i, 2147483647i)), -619f), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), func_2(vec4<u32>(39955u, u_input.b, u_input.a.x, 21397u), vec4<bool>(true, false, true, true), vec4<i32>(-32734i, -26743i, 1i, 25529i), -649f), false)), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), func_2(vec4<u32>(0u, 0u, 4294967295u, u_input.a.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), vec4<i32>(45118i, -34004i, -18597i, 5586i), _wgslsmith_f_op_f32(-1155f - -1000f)), select(true, all(vec4<bool>(true, true, false, false)), true)), func_2(abs(~vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 10731u)), vec4<bool>(true, true, true, true), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, -1721i), vec4<i32>(-24901i, -1i, -32594i, 27570i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(true, false, false, true)), vec4<u32>(92956u, 0u, u_input.a.x, 87234u))).x)))), vec3<bool>(all(vec2<bool>(any(vec2<bool>(true, false)), true)), !any(vec2<bool>(true, true)), func_2(countOneBits(vec4<u32>(33825u, 0u, u_input.b, 96577u)), vec4<bool>(true, false, false, true), max(vec4<i32>(-57303i, -1i, -1i, 1074i), vec4<i32>(-24109i, 2147483647i, -14700i, 62539i)), _wgslsmith_f_op_f32(-308f + 1646f)).x == any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)))));
    var var_1 = select(vec4<bool>(true, !(!(!var_0.x)), var_0.x, true), select(!vec4<bool>(false, var_0.x, false || var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, true), select(select(select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !vec4<bool>(false, true, var_0.x, var_0.x), select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x)), !(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)), any(!vec3<bool>(var_0.x, false, true)))), !any(var_0.zx));
    var var_2 = vec4<i32>(1i, -max(1i, ~13090i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_add_i32(-1i, 13006i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-49140i, -2147483647i)), 36562i) >> (~vec4<u32>(u_input.b, 22112u, u_input.b, 0u) % vec4<u32>(32u)), select(vec4<i32>(2281i << (u_input.b % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 36601i, -1i), vec3<i32>(-29002i, -2147483647i, 0i)), i32(-1i) * -1i, -1i), vec4<i32>(i32(-1i) * -1i, firstTrailingBit(0i), firstTrailingBit(0i), -74217i), true)), max(9217i, -2147483647i));
    var_0 = vec3<bool>(!(min(var_2.x | var_2.x, 1i) < 17652i), (firstLeadingBit(~u_input.a.x) <= firstTrailingBit(_wgslsmith_mult_u32(u_input.b, 3286u))) & var_0.x, reverseBits(-1i) > (3928i & -_wgslsmith_add_i32(var_2.x, 19847i)));
    var_2 = firstTrailingBit(vec4<i32>(abs(_wgslsmith_clamp_i32(var_2.x, -1i, i32(-1i) * -18275i)), firstTrailingBit(reverseBits(firstLeadingBit(1i))), -39182i, _wgslsmith_sub_i32(var_2.x, 1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1186f))));
}

fn func_4(arg_0: f32) -> vec2<i32> {
    var var_0 = vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(-1i, min(firstTrailingBit(78748i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 6276i), vec2<i32>(22682i, 2147483647i))))), 0i);
    let var_1 = vec3<bool>(!all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), true)), true, 0u < u_input.b);
    let var_2 = _wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(abs(0i & ~var_0.x), var_0.x));
    var_0 = ~(-countOneBits(vec2<i32>(var_0.x | 23500i, var_2 << (1u % 32u))));
    var var_3 = ~vec2<i32>(_wgslsmith_mod_i32(-1i, var_0.x), ~2147483647i);
    return vec2<i32>(_wgslsmith_sub_i32(1i, var_3.x), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), vec2<i32>(min(0i, 1i << (u_input.b % 32u)), 1i), func_2(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, 4294967295u, u_input.b, 20268u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 28104u), false), vec4<u32>(78582u, 1u, 0u, 6326u), ~vec4<u32>(4294967295u, u_input.b, 0u, u_input.b)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), ~abs(vec4<i32>(-1i, -2147483647i, -61593i, 1i)), _wgslsmith_f_op_f32(abs(419f))).yy);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(401f * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(min(-1813f, _wgslsmith_f_op_f32(-907f - -890f))), _wgslsmith_f_op_f32(max(-1000f, -887f)), -2286f))));
    var var_2 = ~(~_wgslsmith_sub_u32(21488u ^ ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, countOneBits(vec2<u32>(4294967295u, 641u)))));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, var_1.x, 165f, var_1.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(176f, var_1.x, -815f, -472f) - vec4<f32>(921f, var_1.x, var_1.x, 1334f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1114f, var_1.x, var_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-557f - 117f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(ceil(-191f)), _wgslsmith_f_op_f32(max(var_1.x, var_1.x))), select(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), false, (u_input.b & u_input.b) <= (u_input.a.x >> (u_input.a.x % 32u)))))));
    var var_3 = _wgslsmith_sub_i32(i32(-1i) * -2147483647i, -_wgslsmith_clamp_i32(-(i32(-1i) * -2147483647i), max(select(var_0.x, var_0.x, false), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(2147483647i, -13463i, var_0.x))), countOneBits(~(-1661i))));
    var var_4 = Struct_1(!(!vec4<bool>(false, 38861i == var_0.x, true, var_0.x < -33742i)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1000f, var_1.x, 699f), vec4<f32>(var_1.x, var_1.x, -1836f, var_1.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1183f, 348f, 1539f, var_1.x) * vec4<f32>(var_1.x, 787f, var_1.x, var_1.x)))), select(select(var_4.a, vec4<bool>(var_4.a.x, false, var_4.a.x, var_4.a.x), vec4<bool>(true, true, true, false)), !var_4.a, select(var_4.a, var_4.a, false))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-415f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x * 185f))), var_1.x, _wgslsmith_f_op_f32(-444f * var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 0i, var_0.x), vec3<i32>(12171i, var_0.x, -60899i), vec3<i32>(2147483647i, var_0.x, var_0.x))) << (vec3<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.b), _wgslsmith_mult_u32(101012u >> (u_input.b % 32u), ~12122u), 0u) % vec3<u32>(32u)), abs(firstTrailingBit(~vec3<i32>(var_0.x, var_0.x, -1i) | abs(vec3<i32>(33151i, var_0.x, -1i)))));
}

