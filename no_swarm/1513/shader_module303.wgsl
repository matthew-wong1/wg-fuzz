struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    var var_0 = vec2<f32>(-1105f, arg_1.x);
    let var_1 = abs(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(7160u, 22636u), ~62144u >> (_wgslsmith_div_u32(arg_0.a.x, 1u) % 32u), 1u), arg_0.b, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(arg_0.a.x, 0u, arg_0.b, 1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, arg_0.a.x), vec3<u32>(74623u, 1u, arg_0.b)), arg_0.a.x, 1u, min(1u, 1u))), reverseBits(max(1u, ~1u))));
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.ww);
    var var_2 = Struct_1(vec2<u32>(4294967295u, ~var_1.x), arg_0.b);
    let var_3 = ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(4386u, reverseBits(63391u)), var_2.a, true), vec2<u32>(67760u, ~(~17350u)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_1.x, var_0.x)), 1541f)) < -903f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = select(vec2<bool>(arg_1.x, func_3(Struct_1(vec2<u32>(1u, arg_0.x), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-452f, 927f, -976f, -2252f))) != arg_1.x), !(!(!select(arg_1.zy, arg_1.yy, vec2<bool>(true, true)))), false);
    let var_1 = -vec4<i32>(1i, 16637i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a << (1u % 32u), min(u_input.a, 2147483647i), u_input.b.x, max(u_input.b.x, u_input.a)), vec4<i32>(_wgslsmith_mult_i32(u_input.a, 1i), -2147483647i, u_input.b.x, 1i)), -min(-u_input.b.x, _wgslsmith_div_i32(u_input.a, 41540i)));
    var var_2 = abs(27334u);
    var var_3 = vec4<u32>(4294967295u, min(arg_0.x, countOneBits(arg_0.x)) | firstTrailingBit(abs(~arg_0.x)), arg_0.x, _wgslsmith_add_u32(arg_0.x & ~(~1u), arg_0.x));
    let var_4 = Struct_1(var_3.xx, _wgslsmith_div_u32(var_3.x, 5526u));
    return ~reverseBits(_wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(0u, 54188u, var_3.x, 43254u)), ~vec4<u32>(var_4.a.x, 4294967295u, arg_0.x, 11824u), false & arg_1.x), ~(vec4<u32>(1u, arg_0.x, var_3.x, 38498u) << (vec4<u32>(35896u, 3721u, var_3.x, 0u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(292f)), arg_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(836f, _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 663f) + vec2<f32>(-829f, 549f)) - vec2<f32>(arg_0, arg_0)))));
    var var_1 = _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(_wgslsmith_div_u32(33321u, 8455u), min(4294967295u, 51060u), ~73770u, func_2(vec3<u32>(7005u, 6651u, 1u), arg_1.wxw))), select(_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), max(44795u, 26745u), 1u, _wgslsmith_div_u32(0u, 4674u)), vec4<u32>(4294967295u, countOneBits(4294967295u), 19247u, reverseBits(9061u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<bool>(any(arg_1), true, all(arg_1), arg_1.x), !arg_1, !arg_1)));
    var var_2 = select(arg_1, vec4<bool>(false || arg_1.x, arg_1.x, !arg_1.x, all(vec2<bool>(!arg_1.x, 666f == arg_0))), arg_1);
    var var_3 = Struct_1(var_1.yx, ~((var_1.x ^ 13899u) << (~0u % 32u)) | (1u | _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(4294967295u, 15976u))));
    let var_4 = arg_0;
    return Struct_1(reverseBits(vec2<u32>(1u, 33239u)), ~var_3.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(select(!select(vec4<bool>(arg_2, false, false, false), !vec4<bool>(arg_2, false, arg_3.x, arg_3.x), vec4<bool>(false, false, arg_3.x, false)), select(vec4<bool>(true, arg_2, true, true), select(!vec4<bool>(arg_2, arg_2, false, true), select(vec4<bool>(arg_3.x, arg_2, arg_3.x, true), vec4<bool>(false, arg_3.x, arg_2, false), arg_2), true), func_3(arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-327f, -290f, 1018f, 590f)))), select(!vec4<bool>(arg_3.x, false, true, true), select(select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(false, arg_2, false, true)), !vec4<bool>(arg_2, false, false, arg_3.x), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(arg_2, false, arg_2, arg_2)))), arg_0, arg_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, 298f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 1215f), vec2<f32>(1147f, -1749f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-211f, -1499f), vec2<f32>(559f, -170f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-742f, 865f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2247f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-472f - 329f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f))), _wgslsmith_f_op_f32(223f - -821f), _wgslsmith_div_f32(-250f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) + _wgslsmith_f_op_f32(floor(1585f))))));
    let var_1 = -2147483647i;
    var_0 = Struct_2(!select(var_0.a, var_0.a, arg_3.x), func_1(-1000f, select(var_0.a, vec4<bool>(true, func_3(arg_0, vec4<f32>(var_0.e.x, 493f, 409f, 1000f)), false, arg_1.a.x > 39245u), !var_0.a)), max(~26268u, firstLeadingBit(1u ^ arg_0.a.x) & ~1u), var_0.e.yz, var_0.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1129f, 224f, _wgslsmith_f_op_f32(round(-241f)))));
    var var_3 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a.x, 43696u, var_0.c), vec3<u32>(13932u, 0u, arg_0.b))), vec3<u32>(reverseBits(6719u), ~arg_0.b, arg_1.a.x), ~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 40030u, arg_0.b), vec3<u32>(8910u, 67064u, var_0.b.b) >> (vec3<u32>(71u, 71796u, 4441u) % vec3<u32>(32u)))));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e.x))), var_0.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = 1i;
    var var_1 = select(select(!vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, true), vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), true), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)))), !vec4<bool>(true, any(vec3<bool>(true, false, false)) & false, !any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))), _wgslsmith_mod_i32(u_input.a, -2147483647i) >= _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 1i), vec3<i32>(0i, -9323i, 2147483647i)), var_0), -51262i));
    var_1 = !(!(!(!select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), true))));
    let var_2 = _wgslsmith_add_i32(-_wgslsmith_div_i32(-var_0, -_wgslsmith_mod_i32(7176i, var_0)), ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(2147483647i, u_input.b.x)), u_input.b));
    var_1 = select(select(select(vec4<bool>(false, var_1.x, false, true), select(!vec4<bool>(var_1.x, true, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false)), false), false), select(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), select(vec4<bool>(var_1.x, true, var_1.x, false), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, true, var_1.x)), !vec4<bool>(true, true, var_1.x, var_1.x)), !var_1.x), !all(vec2<bool>(false, false))), !vec4<bool>(false, true, !(var_2 < 8646i), var_1.x), !func_3(arg_1, vec4<f32>(_wgslsmith_f_op_f32(-829f - 838f), _wgslsmith_f_op_f32(ceil(792f)), 914f, _wgslsmith_f_op_f32(1000f - 152f))));
    return Struct_2(vec4<bool>(!var_1.x, false, true, var_1.x), Struct_1(arg_0.a, arg_0.b), reverseBits(1u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(543f, -517f), vec2<f32>(-309f, 2353f))))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, 151f, -1507f, -410f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, -213f, 537f, -460f) - vec4<f32>(-1285f, 1000f, 1081f, 571f)) - vec4<f32>(-254f, 251f, 969f, -1202f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(select(vec2<u32>(~49797u, 31457u), vec2<u32>(1u, 1u) >> (firstLeadingBit(vec2<u32>(12113u, 4294967295u)) % vec2<u32>(32u)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), abs(min(4294967295u, 1u)) ^ _wgslsmith_dot_vec3_u32(abs(vec3<u32>(75650u, 13631u, 0u)), ~vec3<u32>(0u, 34226u, 0u))), func_4(func_1(172f, !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), Struct_1(firstTrailingBit(vec2<u32>(0u, 27273u)) ^ vec2<u32>(28083u, 103143u), _wgslsmith_clamp_u32(60667u, ~0u, ~10681u)), func_3(func_1(-819f, vec4<bool>(false, true, true, false)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-231f, 779f, 1000f, 334f)))))), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.b.b, 4294967295u, 0u), vec3<u32>(1u, var_0.b.a.x, 4294967295u)) >> (~(~vec3<u32>(var_0.c, 57891u, var_0.b.b)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(var_0.b.a.x, ~var_0.c), var_0.c, var_0.c)));
}

