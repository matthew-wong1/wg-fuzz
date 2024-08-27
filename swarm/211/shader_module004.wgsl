struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(0u, 29428u, 6693u, 39797u), vec4<u32>(26525u, 44013u, 19541u, 0u), vec4<u32>(0u, 1u, 30997u, 1u), vec4<u32>(0u, 4294967295u, 32254u, 4294967295u), vec4<u32>(34039u, 1u, 0u, 52758u), vec4<u32>(98480u, 0u, 35291u, 4294967295u), vec4<u32>(104892u, 40431u, 18123u, 27293u), vec4<u32>(25740u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 78817u, 1u, 57625u), vec4<u32>(14078u, 5460u, 38065u, 20258u), vec4<u32>(1u, 4294967295u, 71188u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 68835u), vec4<u32>(10231u, 1u, 137615u, 9258u), vec4<u32>(1u, 32762u, 0u, 0u), vec4<u32>(1u, 4294967295u, 1u, 6847u), vec4<u32>(4294967295u, 4678u, 0u, 4294967295u), vec4<u32>(1u, 10741u, 147u, 3605u), vec4<u32>(4294967295u, 20965u, 29312u, 4294967295u));

var<private> global1: array<vec4<u32>, 20>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(abs(0i) >> (reverseBits(arg_1.b.x & 30746u) % 32u), -arg_0.a), 38979i);
    global1 = array<vec4<u32>, 20>();
    global0 = array<vec4<u32>, 18>();
    var var_1 = vec4<i32>(max(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-206i, arg_0.a, var_0.x, var_0.x)), firstTrailingBit(~vec4<i32>(-43587i, 32901i, 0i, -50558i))), var_0.x), ~(-43748i), reverseBits(~var_0.x), arg_0.a);
    let var_2 = arg_0;
    return arg_1.a.zx;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    let var_0 = ~min(reverseBits(913u), ~_wgslsmith_sub_u32(~u_input.a, u_input.a & arg_2.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-361f)) * _wgslsmith_f_op_f32(sign(-996f))));
    var var_2 = arg_1.a;
    var var_3 = Struct_3(Struct_1(var_2.a, select(vec3<u32>(~27784u, ~var_2.d, _wgslsmith_div_u32(var_0, 4294967295u)), _wgslsmith_add_vec3_u32(arg_2, _wgslsmith_sub_vec3_u32(arg_2, vec3<u32>(0u, arg_2.x, 1u))), arg_1.a.c.x), select(func_3(Struct_2(33660i, arg_1.a, arg_1.a, arg_1.a, vec3<f32>(636f, -562f, 1319f)), arg_1.a, u_input.a), !select(arg_1.a.a.zz, var_2.c, vec2<bool>(arg_0, false)), true), var_2.d), arg_2.x, ~var_0);
    var_2 = var_3.a;
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = vec2<bool>(u_input.a < 3487u, func_2(!(!(!arg_1)), Struct_3(Struct_1(select(vec3<bool>(arg_0, arg_1, arg_1), vec3<bool>(true, true, true), arg_0), vec3<u32>(u_input.a, 17482u, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<bool>(arg_2.x, arg_2.x), 18940u), u_input.a, _wgslsmith_mult_u32(u_input.a | 4658u, u_input.a)), ~_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 23215u), false), vec3<u32>(0u, 0u, 1u))));
    var var_1 = Struct_1(vec3<bool>(false, !select(false && arg_2.x, arg_0, true), true), _wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 0u, 2236u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 57460u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(1212u, 37647u, 48171u), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 27726u))), !select(vec3<bool>(var_0.x, false, arg_1), vec3<bool>(true, arg_2.x, arg_0), vec3<bool>(arg_1, var_0.x, true))), select(~vec3<u32>(u_input.a, 39557u, 1030u), ~vec3<u32>(u_input.a, u_input.a, u_input.a), !any(vec3<bool>(false, arg_0, true)))), vec2<bool>(func_3(Struct_2(countOneBits(-6103i), Struct_1(vec3<bool>(arg_0, arg_0, arg_2.x), vec3<u32>(0u, u_input.a, u_input.a), vec2<bool>(arg_1, arg_1), 34610u), Struct_1(vec3<bool>(arg_0, arg_0, var_0.x), vec3<u32>(31119u, u_input.a, 49549u), arg_2, u_input.a), Struct_1(vec3<bool>(arg_2.x, false, true), vec3<u32>(4294967295u, 0u, 1253u), arg_2, u_input.a), _wgslsmith_f_op_vec3_f32(-arg_3.zxy)), Struct_1(select(vec3<bool>(true, arg_2.x, false), vec3<bool>(true, var_0.x, arg_0), vec3<bool>(false, arg_2.x, true)), ~vec3<u32>(u_input.a, u_input.a, 1u), func_3(Struct_2(-1i, Struct_1(vec3<bool>(arg_1, arg_0, arg_1), vec3<u32>(4294967295u, 1u, 47437u), var_0, 1u), Struct_1(vec3<bool>(var_0.x, true, false), vec3<u32>(4294967295u, 4294967295u, u_input.a), vec2<bool>(var_0.x, true), 1090u), Struct_1(vec3<bool>(true, var_0.x, false), vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<bool>(false, false), u_input.a), arg_3.wxw), Struct_1(vec3<bool>(true, arg_2.x, true), vec3<u32>(u_input.a, u_input.a, u_input.a), arg_2, 1u), 86414u), u_input.a), 28538u).x, !var_0.x), firstLeadingBit(u_input.a));
    let var_2 = vec4<bool>(!any(arg_2), !(~max(0u, u_input.a) < var_1.b.x), any(vec4<bool>(false, (true == arg_0) || arg_1, false, var_0.x)), !func_3(Struct_2(~(-1i), Struct_1(var_1.a, vec3<u32>(var_1.d, 0u, u_input.a), vec2<bool>(arg_2.x, true), 1u), Struct_1(vec3<bool>(arg_1, arg_0, true), var_1.b, arg_2, 44058u), Struct_1(vec3<bool>(true, false, false), var_1.b, var_1.c, 10265u), vec3<f32>(arg_3.x, arg_3.x, arg_3.x)), Struct_1(!vec3<bool>(false, arg_1, arg_0), var_1.b, func_3(Struct_2(6395i, Struct_1(vec3<bool>(false, false, arg_2.x), var_1.b, vec2<bool>(arg_1, true), var_1.d), Struct_1(vec3<bool>(true, arg_2.x, false), var_1.b, arg_2, u_input.a), Struct_1(vec3<bool>(var_0.x, true, false), var_1.b, vec2<bool>(var_0.x, arg_0), u_input.a), arg_3.yyw), Struct_1(var_1.a, var_1.b, vec2<bool>(arg_1, arg_0), u_input.a), u_input.a), _wgslsmith_div_u32(var_1.d, 4945u)), ~u_input.a & _wgslsmith_sub_u32(u_input.a, 30488u)).x);
    return Struct_3(Struct_1(vec3<bool>(false, true, func_3(Struct_2(-39104i, Struct_1(vec3<bool>(true, false, var_2.x), vec3<u32>(3887u, var_1.d, u_input.a), vec2<bool>(true, var_1.c.x), var_1.b.x), Struct_1(vec3<bool>(var_2.x, false, var_0.x), vec3<u32>(4294967295u, var_1.b.x, u_input.a), vec2<bool>(false, false), u_input.a), Struct_1(vec3<bool>(true, true, var_2.x), vec3<u32>(var_1.b.x, 1u, var_1.d), vec2<bool>(false, false), 79160u), arg_3.xyw), Struct_1(vec3<bool>(false, false, arg_2.x), var_1.b, var_0, u_input.a), u_input.a & var_1.d).x), var_1.b, func_3(Struct_2(0i, Struct_1(vec3<bool>(false, var_2.x, false), var_1.b, var_2.yz, u_input.a), Struct_1(vec3<bool>(false, true, false), vec3<u32>(4294967295u, 0u, 0u), var_1.c, 43395u), Struct_1(vec3<bool>(arg_2.x, var_0.x, true), var_1.b, arg_2, 4294967295u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(903f, arg_3.x, arg_3.x)))), Struct_1(vec3<bool>(arg_0, true, var_0.x), vec3<u32>(33078u, 1u, var_1.b.x), func_3(Struct_2(-2147483647i, Struct_1(vec3<bool>(var_2.x, arg_2.x, false), vec3<u32>(19589u, u_input.a, var_1.d), arg_2, var_1.d), Struct_1(var_2.zwz, var_1.b, vec2<bool>(true, arg_0), u_input.a), Struct_1(vec3<bool>(false, var_2.x, var_2.x), vec3<u32>(1u, 0u, 1u), var_0, u_input.a), arg_3.wzw), Struct_1(vec3<bool>(var_0.x, arg_1, var_1.a.x), vec3<u32>(45406u, u_input.a, 32013u), vec2<bool>(var_1.a.x, true), 16890u), var_1.d), 1u & var_1.b.x), firstLeadingBit(1u << (var_1.d % 32u))), 26954u), _wgslsmith_add_u32(_wgslsmith_div_u32((var_1.b.x ^ u_input.a) | u_input.a, ~4294967295u), ~88709u << (u_input.a % 32u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.b.x, u_input.a), 32638u));
}

fn func_1() -> i32 {
    let var_0 = func_4(true, true, !vec2<bool>(true, true != func_2(false, Struct_3(Struct_1(vec3<bool>(false, true, true), vec3<u32>(u_input.a, u_input.a, 57100u), vec2<bool>(true, true), u_input.a), 65914u, 0u), vec3<u32>(4294967295u, u_input.a, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1224f, 551f, -173f, 1240f) + vec4<f32>(1163f, -1099f, 780f, -510f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-579f, -633f, -753f, -1000f)))));
    global0 = array<vec4<u32>, 18>();
    global1 = array<vec4<u32>, 20>();
    let var_1 = func_4(false, select(func_3(Struct_2(~(-13741i), func_4(var_0.a.a.x, false, var_0.a.a.yz, vec4<f32>(1344f, 741f, 2819f, -1000f)).a, Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, u_input.a), func_4(false, var_0.a.c.x, var_0.a.a.zx, vec4<f32>(-1954f, 686f, 499f, 761f)).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2009f, 1689f, -965f))), var_0.a, ~(~1u)).x, var_0.a.c.x, true), func_4(true, true, var_0.a.a.zz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -968f, 343f, 1468f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(491f, 486f, -799f, 205f))))).a.c, vec4<f32>(157f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(410f - 1146f), _wgslsmith_f_op_f32(1414f * 418f), any(vec2<bool>(var_0.a.a.x, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-978f + _wgslsmith_f_op_f32(962f * -303f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2239f)) - _wgslsmith_f_op_f32(f32(-1f) * -391f)))));
    global0 = array<vec4<u32>, 18>();
    return min(reverseBits(_wgslsmith_clamp_i32(abs(abs(-1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(2147483647i, -25631i, 0i, 0i), vec4<i32>(27747i, 0i, -65279i, -25715i), vec4<bool>(var_1.a.a.x, var_0.a.c.x, true, var_0.a.c.x))), -44063i)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 18>();
    let var_0 = vec3<u32>(~abs(u_input.a) >> (_wgslsmith_mod_u32(u_input.a, 4294967295u) % 32u), u_input.a, (~(~u_input.a) ^ 4294967295u) | u_input.a);
    global0 = array<vec4<u32>, 18>();
    var var_1 = vec2<bool>(true, true);
    var var_2 = var_0.x;
    global0 = array<vec4<u32>, 18>();
    var_2 = _wgslsmith_mod_u32(countOneBits(~4294967295u), 31930u);
    var_2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_add_u32(1u, var_0.x)), _wgslsmith_mod_u32(~(~var_0.x), reverseBits(8963u))), min(abs(96925u), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(u_input.a, 1u, 0u), false), ~vec3<u32>(u_input.a, 1u, 18292u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(i32(-1i) * -2147483647i), func_1(), -16833i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, -984f, -442f, -918f) - vec4<f32>(-316f, -2048f, 1006f, 1741f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-350f, 381f, 2659f, -956f) + vec4<f32>(706f, -749f, -973f, -1319f))), vec4<f32>(-247f, -553f, 742f, _wgslsmith_f_op_f32(621f - -506f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), -246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1338f)), -2149f)), ~(-1i));
}

