struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1013f)), _wgslsmith_f_op_f32(f32(-1f) * -1415f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1923f - 603f), _wgslsmith_f_op_f32(step(1113f, 1535f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1164f, 728f))), 1572f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-372f, -552f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(724f)), _wgslsmith_f_op_f32(813f + -1627f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f + -996f)))));
    let var_1 = false;
    let var_2 = 1u;
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(var_0.xxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), var_0.ywz), var_0.xzw)))), _wgslsmith_sub_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.a, -1i, -17952i)), vec3<i32>(-1i) * -(~vec3<i32>(15661i, u_input.a, -1i))), _wgslsmith_f_op_f32(1f + var_0.x), !(all(vec2<bool>(false, true)) & false), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-963f * _wgslsmith_f_op_f32(897f * var_0.x)))));
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(1000f, var_3.a.x, var_0.x)))))))), vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), 0i, -2147483647i), -1949f, any(!(!vec3<bool>(false, var_3.d, false))), var_3.c);
    return vec3<i32>(abs(_wgslsmith_dot_vec2_i32(abs(var_3.b.yy), var_3.b.zy)), max(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_3.b.yy, vec2<i32>(0i, 13908i)), var_3.b.x, _wgslsmith_dot_vec3_i32(var_3.b, vec3<i32>(var_3.b.x, -1i, 0i))), ~u_input.a), reverseBits(~(-60523i))) | (select(~(-var_3.b), vec3<i32>(0i & u_input.a, var_3.b.x, firstTrailingBit(16450i)), !(var_1 | var_3.d)) ^ abs(select(var_3.b, vec3<i32>(var_3.b.x, var_3.b.x, var_3.b.x), false)));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_1(vec3<f32>(-1283f, 321f, 723f), func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(117f))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2139f, 1027f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-825f)) - 2445f)))), true, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(101f * 432f)))))));
    var_0 = Struct_1(var_0.a, vec3<i32>(-48939i, u_input.a, u_input.a), -1532f, any(!select(vec2<bool>(var_0.d, true), !vec2<bool>(var_0.d, true), true)), -275f);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, 1670f, var_0.e), var_0.a, var_0.d)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, -765f, -1000f))))))))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - var_0.e)), (abs(~89717u) <= ~_wgslsmith_clamp_u32(32864u, 0u, 32081u)) && true, _wgslsmith_f_op_f32(f32(-1f) * -1085f));
    return _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(countOneBits(arg_0), reverseBits(arg_0), ~2147483647i));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> vec4<f32> {
    var var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>((u_input.a ^ 2147483647i) > func_2(u_input.a), true, false), vec3<bool>((arg_1.x > arg_2.x) & select(true, false, true), !(-2678f <= arg_1.x), select(any(vec2<bool>(true, true)), true, select(true, true, true)))), !vec3<bool>((u_input.a <= u_input.a) & true, select(true, all(vec4<bool>(false, false, false, false)), 1000f > arg_1.x), true), all(vec4<bool>(arg_2.x <= arg_1.x, !all(vec4<bool>(true, true, true, false)), true, false)));
    var_0 = select(select(!vec3<bool>(all(vec4<bool>(var_0.x, false, true, var_0.x)), false, !var_0.x), select(select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, true), false), 1u > arg_0), !vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, true, true)), false), !select(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, false), vec3<bool>(true, true, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, true), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x)), select(select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, true, var_0.x), true), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(false, true, var_0.x)), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), true)), any(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), var_0.x & all(vec3<bool>(var_0.x, !var_0.x, !var_0.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_2)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1648f, arg_2.x, arg_1.x))))), vec3<i32>(~u_input.a, ~(-50518i) >> (_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0, arg_0, arg_0)), ~vec3<u32>(15767u, arg_0, 83817u)) % 32u), _wgslsmith_mult_i32(u_input.a, abs(reverseBits(u_input.a)))), arg_1.x, any(!vec3<bool>(all(var_0.zz), false & var_0.x, true)), _wgslsmith_f_op_f32(-arg_1.x));
    let var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_div_f32(var_1.a.x, var_1.a.x))), arg_1.x), vec3<f32>(_wgslsmith_f_op_f32(min(201f, _wgslsmith_f_op_f32(min(-670f, arg_2.x)))), _wgslsmith_f_op_f32(abs(arg_1.x)), -1000f)));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-752f, -370f, arg_2.x, var_3.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(631f, 1255f, arg_2.x, -1853f))), !(true & var_1.d)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.xyz, vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_sub_i32(-2147483647i, u_input.a), _wgslsmith_div_i32(1i << (1u % 32u), abs(u_input.a))), 0i, 11541i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(392f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -508f))))), true, arg_1.x);
    let var_1 = !vec2<bool>((488u << (_wgslsmith_clamp_u32(1u, 72579u, 57151u) % 32u)) >= ~(~19712u), var_0.d);
    var var_2 = ~13876u;
    var_2 = ~abs(0u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(func_1(firstLeadingBit(~(50411u >> (var_0 % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(351f, -1258f) * vec2<f32>(-155f, 1611f)) * _wgslsmith_div_vec2_f32(vec2<f32>(515f, -787f), vec2<f32>(-1294f, -1249f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(123f, -160f, -1000f), vec3<f32>(-419f, -250f, -496f))))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-682f, 1067f, -1114f) + vec3<f32>(-223f, -176f, 1031f))) * vec3<f32>(1f, _wgslsmith_f_op_f32(-2060f + -290f), _wgslsmith_f_op_f32(step(-1719f, 2267f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1806f, _wgslsmith_f_op_f32(select(-652f, 1000f, true)), _wgslsmith_f_op_f32(113f - -1039f))))));
    var_1 = Struct_1(var_1.a, -vec3<i32>(~(-u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_1.b.x), ~vec2<i32>(-1i, -26988i)), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(u_input.a, u_input.a, var_1.b.x))), 1f, true, _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(881f + 211f) + _wgslsmith_f_op_f32(-313f - var_1.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(542f - var_1.e)))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.e);
    var var_3 = select(vec4<i32>(u_input.a, u_input.a, 204i, -46051i), ~_wgslsmith_sub_vec4_i32(~(vec4<i32>(var_1.b.x, u_input.a, var_1.b.x, -2147483647i) | vec4<i32>(u_input.a, 34716i, 2147483647i, 11566i)), -vec4<i32>(-7594i, var_1.b.x, -2147483647i, -38595i)), !all(select(!vec4<bool>(var_1.d, var_1.d, var_1.d, true), !vec4<bool>(true, false, var_1.d, true), !vec4<bool>(var_1.d, true, false, false))));
    let var_4 = _wgslsmith_mult_i32(select(~var_1.b.x, -2147483647i | _wgslsmith_mult_i32(var_1.b.x, var_1.b.x), var_1.d | (false | var_1.d)), abs(u_input.a)) ^ ~u_input.a;
    let var_5 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.e, _wgslsmith_f_op_f32(f32(-1f) * -242f), func_4(vec4<f32>(var_1.a.x, -1129f, var_1.c, -146f), vec3<f32>(-1045f, var_1.c, var_1.a.x)).c, var_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, 1039f, var_1.c, var_1.c)) - vec4<f32>(var_1.c, 1000f, 1000f, 1929f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a, vec3<f32>(var_1.e, var_1.c, -1860f))))), var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(28080u, vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(1i), -_wgslsmith_clamp_i32(var_3.x, var_3.x, u_input.a)), _wgslsmith_add_i32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(265f, 845f, 389f, -1000f) - vec4<f32>(-1068f, var_1.e, -1696f, -1031f)), vec3<f32>(261f, var_5.a.x, var_1.a.x)).b.x, -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.b.x | 1i, _wgslsmith_sub_i32(2147483647i, u_input.a)), -var_3.x, ~var_5.b.x ^ var_4)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5.a.x))))), var_0);
}

