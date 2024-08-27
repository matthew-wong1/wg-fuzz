struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(264f, 397f, false)), _wgslsmith_f_op_f32(round(429f)), _wgslsmith_div_f32(868f, 257f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1652f, -696f, 2081f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(432f, -1000f, 486f))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(314f)), -1381f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-657f - -582f), _wgslsmith_f_op_f32(f32(-1f) * -847f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-915f, 666f), _wgslsmith_f_op_f32(floor(-827f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-2270f, -426f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -905f), 508f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1487f, 180f, -1299f, -288f) - vec4<f32>(1000f, 970f, -1000f, -430f)))))))), ~firstTrailingBit(4183i));
    let var_1 = ~u_input.b.x;
    var var_2 = Struct_1(~vec4<i32>(var_0.d, 26989i ^ var_0.d, var_0.d, -16545i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a.yz, vec2<f32>(var_0.a.x, -1508f)) * var_0.c.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.a.xy, var_0.c.yy)) - _wgslsmith_f_op_vec2_f32(var_0.b.xz + var_0.b.wx)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, -1095f), var_0.b.wx), vec2<f32>(-1000f, -723f)))))));
    var_2 = Struct_1(vec4<i32>(min(_wgslsmith_div_i32(2147483647i, var_2.a.x), -51692i), 2147483647i, select(-1i, ~(-2147483647i), any(vec3<bool>(true, true, true))), reverseBits(-10162i)), _wgslsmith_f_op_vec2_f32(var_2.b * vec2<f32>(var_0.b.x, 997f)));
    let var_3 = var_0;
    return var_0.c;
}

fn func_2() -> vec3<bool> {
    let var_0 = -1i;
    let var_1 = firstTrailingBit(_wgslsmith_add_i32(max(var_0, 2770i), 15911i));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-939f, -1098f, 789f))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(942f, -674f, 121f), vec3<f32>(417f, -602f, 263f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-189f, -271f, -827f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(264f, -217f, -555f) + vec3<f32>(-2693f, 763f, -467f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-724f, -3331f, 588f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1239f, -1216f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(163f * 1309f) - _wgslsmith_f_op_f32(f32(-1f) * -1872f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(131f, -273f))), -205f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1146f, -1000f, -1154f)), _wgslsmith_f_op_vec4_f32(func_3())))), vec4<f32>(-1440f, _wgslsmith_f_op_f32(trunc(-1452f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1998f)) - -2245f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-427f - -657f))))), var_0);
    var var_3 = abs(~abs(-vec2<i32>(var_0, var_0) & -vec2<i32>(-29147i, -45489i)));
    let var_4 = var_2.b.x;
    return !vec3<bool>(true == ((0u | u_input.c) == _wgslsmith_dot_vec2_u32(vec2<u32>(9259u, u_input.a), u_input.b)), false, !(!all(vec3<bool>(false, false, true))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = select(vec4<bool>(all(func_2()), arg_0.x, true, true), !(!(!select(vec4<bool>(false, true, false, arg_0.x), vec4<bool>(false, false, arg_0.x, false), arg_0.x))), false);
    let var_1 = Struct_1(-vec4<i32>(_wgslsmith_mod_i32(arg_1.d & -43573i, -arg_1.d), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, 17780i), vec2<i32>(arg_1.d, arg_1.d) & vec2<i32>(arg_1.d, 23147i)), -(arg_1.d << (u_input.c % 32u)), arg_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x)))));
    let var_2 = var_0.x;
    let var_3 = arg_1.b;
    var_0 = !select(select(!select(vec4<bool>(var_0.x, arg_0.x, true, false), vec4<bool>(false, var_0.x, arg_0.x, true), vec4<bool>(var_0.x, arg_0.x, var_0.x, false)), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, var_0.x), !vec4<bool>(arg_0.x, var_0.x, true, true), arg_0.x | false), arg_0.x), select(!(!vec4<bool>(var_0.x, true, true, false)), !select(vec4<bool>(true, arg_0.x, var_0.x, arg_0.x), vec4<bool>(arg_0.x, var_0.x, var_0.x, var_0.x), false), all(select(var_0.zwy, vec3<bool>(arg_0.x, arg_0.x, true), false))), !vec4<bool>(false, select(var_0.x, true, true), true, true && arg_0.x));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(311f, -365f, 974f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1046f, 649f, 1000f, -865f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -174f), -116f, _wgslsmith_f_op_f32(floor(747f)), _wgslsmith_f_op_f32(520f + -1125f)), -39905i))));
    let var_1 = countOneBits(firstLeadingBit(~u_input.a));
    let var_2 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, _wgslsmith_sub_u32(var_1, ~0u), ~abs(9342u))), abs(vec3<u32>(1u, 0u, ~0u)));
    let var_3 = Struct_1(abs(vec4<i32>(_wgslsmith_sub_i32(-52658i, 0i), _wgslsmith_add_i32(53905i, -12661i), abs(-2147483647i), 0i)) | (_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1i, -2147483647i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, -16856i, 10988i))) << (vec4<u32>(~35144u, ~var_2.x, u_input.c, 2574u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 + -1538f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2346f, -1044f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1335f, 459f), vec2<f32>(-1155f, 558f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), false))));
    let var_4 = -2147483647i;
    var var_5 = true;
    let var_6 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-262f, 1027f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(869f * _wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-505f, 1113f, var_0, var_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_3.b.x, var_3.b.x, var_0) + vec4<f32>(var_0, 1339f, var_0, var_3.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.b.x)) * _wgslsmith_f_op_vec4_f32(func_3()).x), var_3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-113f)) * _wgslsmith_f_op_f32(select(var_0, 771f, false))), 138f), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), any(vec4<bool>(false, true, false, false))), vec4<bool>(any(vec4<bool>(false, false, false, false)), all(vec3<bool>(true, true, false)), select(false, true, true), true), vec4<bool>(u_input.b.x != var_2.x, true, true, all(vec2<bool>(false, true)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-969f)) + var_3.b.x))), max(_wgslsmith_sub_i32(16935i, var_3.a.x), ~(-firstLeadingBit(var_4))));
    var var_7 = func_2().yz;
    let var_8 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.b.x)), var_6.b.x) * _wgslsmith_f_op_vec3_f32(-var_6.b.ywx)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(586f, 1577f, 338f, -737f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-1235f, -1009f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1027f - 1118f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(-137f))))))), 3009i);
    let x = u_input.a;
    s_output = StorageBuffer(var_8.d, 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_8.c.yyw * var_6.a) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b.x, -566f, var_3.b.x), vec3<f32>(-1879f, var_3.b.x, var_0)))))));
}

