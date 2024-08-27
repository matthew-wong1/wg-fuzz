struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.e.x;
    var_0 = ~(-(~(-1i)));
    var_0 = _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_div_i32(arg_2.e.x, 2147483647i), select(arg_2.c, 2147483647i, arg_2.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.e.x, arg_2.c, 2147483647i, arg_2.c), vec4<i32>(arg_2.e.x, -1i, arg_2.c, -10359i))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 5031i, arg_2.c, arg_2.e.x), vec4<i32>(arg_2.c, arg_2.c, 49183i, arg_2.e.x)), vec4<i32>(-29053i, arg_2.e.x, arg_2.c, arg_2.c) >> (vec4<u32>(6674u, 0u, 30266u, arg_2.a) % vec4<u32>(32u))))), abs(_wgslsmith_mult_i32((1i & arg_2.e.x) ^ _wgslsmith_div_i32(1i, arg_2.e.x), i32(-1i) * -54091i)));
    let var_1 = arg_2;
    let var_2 = arg_2;
    return min(12318u, firstLeadingBit(_wgslsmith_mod_u32(46695u, abs(27738u))) | firstTrailingBit(~firstLeadingBit(var_2.a)));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(~u_input.a.x, !select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, false, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), -12965i, 1f, vec2<i32>(-1i, i32(-1i) * -1i));
    var_0 = Struct_1(u_input.b, !(!(!(!var_0.b))), _wgslsmith_mult_i32(~(var_0.e.x & max(var_0.e.x, var_0.c)), 11698i), -406f, -(~(~firstTrailingBit(vec2<i32>(2147483647i, var_0.e.x)))));
    let var_1 = Struct_1(var_0.a, !vec2<bool>(true, var_0.b.x), i32(-1i) * -6776i, var_0.d, var_0.e);
    var var_2 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_1.d, var_1.d, -1432f))))), -924f, Struct_1(u_input.a.x, var_1.b, ~var_1.c, var_1.d, select(~vec2<i32>(-8224i, var_0.e.x), -var_0.e, var_1.b.x))), select(select(var_1.b, vec2<bool>(true, true), !vec2<bool>(var_1.b.x, var_1.b.x)), var_1.b, select(var_0.b, !var_0.b, any(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.x, false, true, var_0.b.x), true)))), -2147483647i, -2133f, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-378i, 33530i, var_1.e.x, var_0.e.x), countOneBits(vec4<i32>(2147483647i, 0i, -26016i, var_0.e.x))), max(var_1.e.x, ~17768i)), select(~firstLeadingBit(var_0.e), _wgslsmith_sub_vec2_i32(var_0.e, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 45217i), vec2<i32>(var_1.c, var_1.e.x))), var_1.b.x)));
    var_0 = var_1;
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(~countOneBits(_wgslsmith_add_u32(62661u, 17414u)), _wgslsmith_dot_vec2_u32(u_input.a.yz, ~countOneBits(vec2<u32>(var_2.a, 1u))), 36652u), ~abs(var_1.a));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = max(12561u, select(~(~(~u_input.a.x)), _wgslsmith_div_u32(29784u, ~(u_input.a.x | 4294967295u)), any(!vec3<bool>(arg_2, arg_3.x, arg_3.x)) | arg_3.x));
    var var_1 = _wgslsmith_mult_u32(~u_input.b, u_input.a.x);
    var_0 = ~4294967295u;
    var_1 = ~28514u;
    let var_2 = ~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, func_2()), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 0u, 19774u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 65488u), arg_2) << (vec4<u32>(u_input.a.x, 4294967295u, 54742u, 21190u) % vec4<u32>(32u)), vec4<u32>(~1u, 0u, 0u, ~u_input.a.x)), abs(~u_input.b));
    return Struct_1(21611u, select(arg_3, !arg_3, !(!(!vec2<bool>(arg_2, arg_3.x)))), min(arg_0, arg_0 | -1i) & (select(1i | arg_0, arg_0, arg_2) & reverseBits(arg_0)), arg_1.x, select((-vec2<i32>(16973i, 2147483647i) >> (~u_input.a.xy % vec2<u32>(32u))) >> (abs(~var_2.xw) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0, arg_0) >> (~vec2<u32>(var_2.x, 0u) % vec2<u32>(32u)), vec2<i32>(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(-26031i, arg_0)))), select(!arg_3, vec2<bool>(true, arg_1.x <= arg_1.x), arg_0 < -2147483647i)));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1721f))) * 866f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f - arg_0.d) - _wgslsmith_f_op_f32(step(101f, arg_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, arg_0.d))), _wgslsmith_f_op_f32(989f * _wgslsmith_f_op_f32(f32(-1f) * -1433f))));
    let var_1 = vec4<bool>(all(select(select(!vec4<bool>(true, false, arg_0.b.x, true), !vec4<bool>(true, true, arg_0.b.x, arg_0.b.x), select(vec4<bool>(false, arg_0.b.x, arg_0.b.x, true), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), arg_0.b.x)), !select(vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x), vec4<bool>(false, false, arg_0.b.x, true), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), select(vec4<bool>(false, true, arg_0.b.x, arg_0.b.x), select(vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, false, false, arg_0.b.x), true), arg_0.b.x & arg_0.b.x))), !any(vec4<bool>(func_1(arg_0.c, vec2<f32>(arg_0.d, 103f), false, arg_0.b).b.x, select(true, false, arg_0.b.x), false, any(vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x)))), any(!(!arg_0.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-69926i, 24831i), -(vec2<i32>(-5238i, 1i) | arg_0.e)) > arg_0.c);
    let var_2 = Struct_1(arg_0.a, var_1.zz, -2147483647i, 928f, abs(max(-func_1(arg_0.c, vec2<f32>(var_0.x, 2151f), true, vec2<bool>(var_1.x, false)).e, vec2<i32>(_wgslsmith_mod_i32(20819i, arg_0.e.x), arg_0.e.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-718f, _wgslsmith_div_f32(-298f, 709f))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(512f)) * _wgslsmith_f_op_f32(f32(-1f) * -392f)))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)) + -1000f))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = select(_wgslsmith_div_vec3_u32(vec3<u32>(~(~u_input.b), _wgslsmith_div_u32(1u, u_input.b) ^ ~86980u, u_input.a.x ^ u_input.a.x), vec3<u32>(_wgslsmith_clamp_u32(50962u, ~u_input.a.x, ~4294967295u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.b, u_input.b)), u_input.a.x), u_input.b)), ~u_input.a ^ ~(~countOneBits(vec3<u32>(u_input.b, 46297u, u_input.a.x))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), !vec3<bool>(u_input.b <= 51449u, true, true)));
    let var_2 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_add_u32(~var_1.x, u_input.b), ~(~_wgslsmith_clamp_u32(0u, 0u, var_1.x))), vec2<bool>(~34560u < ~var_1.x, true), abs(2147483647i), 283f, vec2<i32>(func_4(func_1(-2147483647i, vec2<f32>(900f, -1000f), false, vec2<bool>(true, false))) | 2147483647i, firstLeadingBit(~func_4(Struct_1(u_input.a.x, vec2<bool>(false, true), -7886i, -1668f, vec2<i32>(2147483647i, -1i))))));
    var var_3 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~1u, select(108503u, 1u, var_1.x >= 0u)), _wgslsmith_add_u32(var_1.x, func_1(var_2.e.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-646f, -1728f) - vec2<f32>(var_2.d, var_2.d)), all(vec3<bool>(var_2.b.x, var_2.b.x, false)), !vec2<bool>(true, var_2.b.x)).a), 1009u), func_1(_wgslsmith_mod_i32(-18941i, var_2.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), 1813f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d, -1908f) + vec2<f32>(-393f, var_2.d))), false, select(var_2.b, !(!vec2<bool>(var_2.b.x, var_2.b.x)), !(!var_2.b.x))).b, _wgslsmith_mult_i32(0i, countOneBits(-1i)) ^ select(-47355i, func_4(Struct_1(4294967295u, var_2.b, var_2.e.x, var_2.d, var_2.e)), any(vec4<bool>(var_2.b.x, true, var_2.b.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)), min(max(func_1(select(38236i, var_2.e.x, var_2.b.x), vec2<f32>(var_2.d, 716f), any(vec4<bool>(var_2.b.x, true, true, true)), var_2.b).e, func_1(~(-6284i), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.d, var_2.d))), true, !var_2.b).e), var_2.e));
    var_3 = Struct_1(u_input.a.x, !var_3.b, 12170i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1464f + -1066f), _wgslsmith_f_op_f32(-var_3.d)))), select(-var_3.e ^ _wgslsmith_clamp_vec2_i32(var_3.e, var_2.e, var_3.e), var_3.e, !var_2.b.x));
    var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d))), -348f, _wgslsmith_f_op_f32(ceil(756f))));
    let var_5 = func_1(firstTrailingBit(func_4(Struct_1(var_1.x, vec2<bool>(true, false), var_3.c, var_2.d, var_2.e))) >> (~var_3.a % 32u), _wgslsmith_f_op_vec2_f32(-var_4.zw), var_3.b.x, vec2<bool>(var_2.b.x, ~(var_1.x ^ var_3.a) < ~max(var_2.a, u_input.b))).b.x;
    var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(285f, 1215f, 1000f, var_4.x) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(229f, var_4.x, var_2.d, var_4.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(max(var_2.d, 923f)), _wgslsmith_f_op_f32(select(458f, var_2.d, true)), 1000f), !any(vec2<bool>(var_2.b.x, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, 1000f, var_4.x, 1581f))) + vec4<f32>(_wgslsmith_f_op_f32(var_2.d + var_3.d), _wgslsmith_div_f32(var_3.d, -2122f), _wgslsmith_f_op_f32(max(1108f, -490f)), 1757f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_2.d * 1f), var_3.d), 48354u, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)), _wgslsmith_f_op_f32(var_3.d * -1977f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.d, _wgslsmith_f_op_f32(-var_3.d)), 1097f))), u_input.a.x, _wgslsmith_mult_i32(~_wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, var_2.e.x), 4974i), 1i));
}

