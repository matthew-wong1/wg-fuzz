struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = -1232f;
    let var_1 = vec2<f32>(var_0, var_0);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1033f))))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false))), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), false, select(-1i, u_input.b, !any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), ~(~_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, -27710i, -8488i, -1i), vec4<i32>(0i, 23382i, 35308i, -2147483647i) ^ vec4<i32>(u_input.b, u_input.b, 0i, 26248i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -207f, 1897f) - vec3<f32>(var_1.x, var_1.x, 609f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1819f, 1126f, -921f), vec3<f32>(var_1.x, var_0, 493f), true))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_2.a.x, 1755f), vec3<f32>(-287f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, -374f, -126f) - vec3<f32>(var_1.x, -492f, var_1.x)), var_2.b.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(208f, var_1.x, 1398f) + vec3<f32>(var_2.a.x, 102f, -1626f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1013f, var_2.a.x) + vec3<f32>(var_2.a.x, 1000f, var_0)))), select(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), vec3<bool>(false, false, var_2.c), true))), vec3<f32>(_wgslsmith_f_op_f32(615f * var_0), -1010f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), -646f)))));
    var var_4 = firstTrailingBit(_wgslsmith_div_vec3_u32(firstLeadingBit(arg_0.xwz) << (~vec3<u32>(arg_0.x, 69894u, u_input.a.x) % vec3<u32>(32u)), firstTrailingBit(u_input.a))) & arg_0.yyz;
    return var_2.e.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = -1998f;
    let var_1 = _wgslsmith_f_op_f32(min(655f, -664f)) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), arg_2.a.x));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(var_0 * 606f), 1000f);
    var var_3 = arg_2;
    var_3 = arg_2;
    return !(!vec3<bool>(any(vec3<bool>(true, arg_1, var_3.b.x)), false, select(arg_2.c, all(arg_0.zzy), false || var_1)));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.b, _wgslsmith_sub_i32(u_input.b, u_input.b)), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, -2147483647i, 1i)), ~vec3<i32>(1396i, -23242i, u_input.b))) >> (u_input.a % vec3<u32>(32u)));
    var var_1 = Struct_1(vec2<f32>(-392f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(405f + _wgslsmith_f_op_f32(trunc(-116f))) + 947f)), func_4(vec4<bool>(all(vec3<bool>(false, false, false)) | true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), true, true), u_input.a.x >= u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(228f, -222f) * vec2<f32>(-2638f, 748f)))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true, func_3(~vec4<u32>(1u, 0u, u_input.a.x, 0u)), min(-vec4<i32>(u_input.b, u_input.b, 39666i, u_input.b), vec4<i32>(-2147483647i, 2147483647i, 18363i, u_input.b))), select(_wgslsmith_clamp_vec2_u32(abs(u_input.a.yz), vec2<u32>(0u, u_input.a.x), u_input.a.xz), ~(~vec2<u32>(u_input.a.x, 4294967295u)), true)), true, -u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, u_input.b), vec4<i32>(-2147483647i, -(2147483647i << (u_input.a.x % 32u)), -1i, ~(i32(-1i) * -31507i))));
    let var_2 = !any(select(vec2<bool>(true, !var_1.b.x), vec2<bool>(var_1.c, true), select(true, true, true) | all(vec2<bool>(false, var_1.c))));
    var var_3 = false;
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(min(var_1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x))))))), select(!var_1.b, !func_4(!vec4<bool>(var_2, true, var_2, true), var_1.b.x, Struct_1(vec2<f32>(var_1.a.x, -1092f), var_1.b, false, var_0.x, var_1.e), ~u_input.a.yy), var_1.b), ~(~0i) >= (_wgslsmith_mult_i32(-52249i, abs(u_input.b)) << (u_input.a.x % 32u)), -(~_wgslsmith_mod_i32(u_input.b, u_input.b)) | -_wgslsmith_dot_vec2_i32(abs(var_1.e.zx), vec2<i32>(var_1.e.x, -1i)), vec4<i32>(-_wgslsmith_sub_i32(var_0.x, max(-43901i, var_0.x)), min(i32(-1i) * -var_1.d, firstTrailingBit(var_0.x)), var_1.e.x, 2147483647i));
    return var_4.b.xy;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = arg_2;
    let var_1 = arg_0.e.zx;
    var var_2 = arg_1.c;
    var_2 = !(arg_1.c && any(!(!vec4<bool>(arg_1.c, arg_0.b.x, arg_0.c, arg_1.c))));
    let var_3 = Struct_1(arg_0.a, vec3<bool>(arg_0.b.x, all(func_2()), abs(12237u) == _wgslsmith_sub_u32(0u, firstTrailingBit(4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1631f))), -1000f) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.x - arg_1.a.x))))), 35955i, _wgslsmith_add_vec4_i32(arg_0.e & _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(25295i, u_input.b, -28957i, arg_1.e.x), arg_0.e, arg_0.e), abs(arg_0.e)), vec4<i32>(-1i, ~(var_1.x & -41673i), arg_2, var_0)));
    return _wgslsmith_f_op_f32(exp2(var_3.a.x));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(160f, -639f) * vec2<f32>(-1383f, -1000f))), vec2<f32>(-722f, _wgslsmith_f_op_f32(round(-1390f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2043f), 917f) * vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(arg_1, 651f), vec3<bool>(true, false, true), true, u_input.b, vec4<i32>(-17484i, u_input.b, u_input.b, u_input.b)), Struct_1(vec2<f32>(arg_1, arg_1), vec3<bool>(false, false, true), false, u_input.b, vec4<i32>(u_input.b, 65504i, u_input.b, u_input.b)), 3692i)), _wgslsmith_f_op_f32(min(arg_1, -256f))))), vec3<bool>(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))), arg_1 != -375f, Struct_1(vec2<f32>(1382f, arg_1), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(vec4<bool>(true, true, false, false)), _wgslsmith_div_i32(u_input.b, 17208i), vec4<i32>(64i, u_input.b, u_input.b, u_input.b)), countOneBits(arg_2.yz << (vec2<u32>(32193u, 1u) % vec2<u32>(32u)))).x, false, !(firstLeadingBit(1u) <= (u_input.a.x | u_input.a.x))), !all(select(vec3<bool>(false, true, true), func_4(vec4<bool>(true, true, true, true), true, Struct_1(vec2<f32>(arg_1, arg_1), vec3<bool>(true, true, true), false, 0i, vec4<i32>(u_input.b, u_input.b, u_input.b, 51211i)), arg_2.yy), func_4(vec4<bool>(false, true, true, true), true, Struct_1(vec2<f32>(arg_1, -909f), vec3<bool>(true, true, true), false, u_input.b, vec4<i32>(u_input.b, u_input.b, -5291i, 1i)), vec2<u32>(54943u, 46692u)))), abs(51479i), vec4<i32>(max(min(-1i, 2147483647i) << (1u % 32u), i32(-1i) * -15932i), ~min(~u_input.b, u_input.b), firstLeadingBit(u_input.b), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.a.yx, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-498f, 255f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-527f, 563f), vec3<bool>(true, false, true), true, u_input.b, vec4<i32>(21589i, u_input.b, 0i, -36456i)), Struct_1(vec2<f32>(-1263f, -500f), vec3<bool>(true, false, true), false, 2147483647i, vec4<i32>(1i, u_input.b, 2147483647i, 2147483647i)), -15081i))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f) + _wgslsmith_f_op_f32(2174f * -432f)))))), firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, 4376u) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 31081u, 10115u, u_input.a.x) >> (vec4<u32>(16878u, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u)))));
    let var_1 = func_5(vec2<u32>(~u_input.a.x, select(~u_input.a.x, abs(u_input.a.x), var_0.b.x)), _wgslsmith_f_op_f32(-var_0.a.x), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 197u, u_input.a.x), vec4<u32>(1u, 21895u, u_input.a.x, u_input.a.x))) << (vec4<u32>(93339u, firstLeadingBit(u_input.a.x & u_input.a.x), 1u, ~u_input.a.x) % vec4<u32>(32u)));
    let var_2 = firstLeadingBit(~vec3<i32>(u_input.b, var_1.d, -firstTrailingBit(16754i)));
    let var_3 = u_input.b;
    let var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(-449f);
}

