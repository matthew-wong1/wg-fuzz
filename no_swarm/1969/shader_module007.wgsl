struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: f32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = arg_2.a.c | -25480i;
    let var_1 = arg_3.x;
    let var_2 = arg_0;
    var var_3 = arg_0.a;
    let var_4 = -u_input.b;
    return arg_2.a.a;
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = Struct_5(Struct_3(func_3(Struct_4(Struct_1(vec3<u32>(u_input.a, 4294967295u, 12644u)), Struct_1(vec3<u32>(0u, u_input.a, u_input.a)), Struct_1(vec3<u32>(u_input.a, 12185u, 1u))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), true), Struct_5(Struct_3(vec4<bool>(false, true, false, false), Struct_1(vec3<u32>(1u, 17603u, 4294967295u)), u_input.c), Struct_2(vec3<f32>(1297f, -758f, -1000f), -730f)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), Struct_1(~abs(vec3<u32>(u_input.a, 44454u, 1u))), max(-31883i, _wgslsmith_sub_i32(~u_input.c, -u_input.c))), Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-884f, 474f, 1032f), vec3<f32>(1263f, -1000f, 359f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1503f * -823f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1905f - -646f)))));
    let var_2 = !var_1.a.a.x;
    let var_3 = Struct_4(var_1.a.b, var_1.a.b, Struct_1(~abs(vec3<u32>(13332u, 119769u, 56805u))));
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b.a.x, ~(~var_3.c.a.x << (firstLeadingBit(0u) % 32u)), 4294967295u), ~(select(vec3<u32>(var_3.a.a.x, u_input.a, 4294967295u), reverseBits(vec3<u32>(var_3.b.a.x, 4294967295u, var_1.a.b.a.x)), var_1.a.a.wzz) & select(_wgslsmith_clamp_vec3_u32(var_1.a.b.a, vec3<u32>(var_1.a.b.a.x, var_3.b.a.x, var_3.a.a.x), vec3<u32>(89246u, 1u, 4294967295u)), countOneBits(vec3<u32>(29593u, var_1.a.b.a.x, 0u)), true)));
    return var_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    var var_0 = func_2().a;
    var var_1 = Struct_1(max(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.a), 9364u, ~22058u), firstLeadingBit(vec3<u32>(102224u, u_input.a, 42067u))), firstTrailingBit(firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, 21235u)))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(1000f * -496f)) + vec3<f32>(-840f, -778f, -1221f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, arg_0.b, 382f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(-2490f, 520f, arg_0.a.x)))), false)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.x * -299f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-var_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * var_0.x), -673f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))) - var_0.x), 578f));
    return vec4<bool>(func_3(Struct_4(Struct_1(var_1.a), Struct_1(var_1.a), Struct_1(var_1.a)), select(vec3<bool>(func_3(Struct_4(Struct_1(vec3<u32>(var_1.a.x, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(0u, var_1.a.x, 4294967295u)), Struct_1(var_1.a)), vec3<bool>(false, true, true), Struct_5(Struct_3(vec4<bool>(false, false, true, true), Struct_1(var_1.a), arg_1), arg_0), vec3<bool>(false, false, true)).x, all(vec3<bool>(true, true, false)), any(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), Struct_5(Struct_3(vec4<bool>(false, false, false, false), Struct_1(vec3<u32>(var_1.a.x, 4294967295u, 28053u)), -arg_1), arg_0), select(func_3(Struct_4(Struct_1(var_1.a), Struct_1(var_1.a), Struct_1(var_1.a)), func_3(Struct_4(Struct_1(vec3<u32>(var_1.a.x, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, var_1.a.x, u_input.a)), Struct_1(var_1.a)), vec3<bool>(true, false, false), Struct_5(Struct_3(vec4<bool>(true, true, false, false), Struct_1(vec3<u32>(u_input.a, 49517u, var_1.a.x)), -1i), Struct_2(arg_0.a, arg_0.b)), vec3<bool>(false, false, true)).xyz, Struct_5(Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec3<u32>(u_input.a, 4294967295u, u_input.a)), arg_1), Struct_2(vec3<f32>(621f, -483f, 366f), arg_0.b)), vec3<bool>(true, true, true)).xyx, vec3<bool>(all(vec3<bool>(false, false, true)), true, func_3(Struct_4(Struct_1(vec3<u32>(0u, u_input.a, 59317u)), Struct_1(var_1.a), Struct_1(var_1.a)), vec3<bool>(true, false, false), Struct_5(Struct_3(vec4<bool>(true, true, false, true), Struct_1(vec3<u32>(1u, 0u, 0u)), arg_1), arg_0), vec3<bool>(true, true, true)).x), true)).x, true, !any(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), true);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = select(vec4<bool>(any(vec4<bool>(false, false, false, false)) == true, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, u_input.b), vec3<i32>(63066i, u_input.b, 36699i)), ~vec3<i32>(0i, arg_0, -2147483647i)) != ~min(u_input.c, u_input.b), true, true), func_4(func_2(), abs(u_input.b)), func_3(Struct_4(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(86929u, u_input.a, u_input.a), vec3<u32>(72709u, 15586u, 7218u))), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(27283u, u_input.a, 0u), vec3<u32>(89056u, u_input.a, u_input.a), vec3<u32>(59420u, 11513u, u_input.a))), Struct_1(vec3<u32>(4294967295u, 0u, u_input.a) ^ vec3<u32>(0u, 0u, 16206u))), !vec3<bool>(true, select(false, false, true), true), Struct_5(Struct_3(vec4<bool>(false, true, true, true), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_i32(1i, -46570i)), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 873f, 1000f) * vec3<f32>(911f, -1621f, 1811f)), -1422f)), vec3<bool>(false, true, true)));
    var var_1 = Struct_5(Struct_3(func_4(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(1292f, 1673f, -998f), vec3<f32>(1567f, -219f, 1295f)), _wgslsmith_f_op_f32(min(1910f, -179f))), -5360i), Struct_1(select(_wgslsmith_sub_vec3_u32(vec3<u32>(23726u, 29746u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(39580u, u_input.a, u_input.a), all(var_0.wwz))), countOneBits(arg_0)), func_2());
    var var_2 = Struct_1(var_1.a.b.a);
    var_0 = select(select(var_1.a.a, select(func_3(Struct_4(Struct_1(vec3<u32>(89864u, 4294967295u, u_input.a)), var_1.a.b, var_1.a.b), select(vec3<bool>(var_0.x, false, false), var_1.a.a.zwz, vec3<bool>(var_0.x, true, var_1.a.a.x)), Struct_5(var_1.a, var_1.b), vec3<bool>(false, true, var_1.a.a.x)), var_1.a.a, vec4<bool>(select(var_1.a.a.x, false, var_0.x), !var_0.x, var_0.x, all(var_0.xwy))), all(select(vec4<bool>(true, var_1.a.a.x, true, false), var_1.a.a, select(var_0.x, var_1.a.a.x, var_0.x)))), vec4<bool>(func_3(Struct_4(Struct_1(var_2.a), var_1.a.b, Struct_1(var_2.a)), vec3<bool>(arg_0 != -85848i, true, any(var_1.a.a)), Struct_5(var_1.a, func_2()), var_0.xyw).x, true, all(vec2<bool>(true, all(var_1.a.a))), var_0.x), !(!var_0.x));
    var_2 = var_1.a.b;
    return Struct_1(~var_2.a);
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 1u), arg_3.a.x) | arg_2.b.a.x, 7785u, 11277u, 0u);
    var var_1 = !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1191f))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(286f, -227f)), _wgslsmith_f_op_f32(sign(-989f)))), false);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(Struct_1(~vec3<u32>(1u, 2543u, u_input.a)), func_1(-u_input.c), func_1(1i)), abs(u_input.b), Struct_3(vec4<bool>(func_4(func_2(), u_input.c).x, any(vec4<bool>(false, false, false, true)), true, true), func_1(-2147483647i), u_input.c), func_1(u_input.c));
    var var_1 = !(!vec4<bool>(38283i >= max(u_input.c, 20817i), false, (u_input.c != -2147483647i) && var_0, func_5(Struct_4(Struct_1(vec3<u32>(17892u, u_input.a, 23867u)), Struct_1(vec3<u32>(u_input.a, u_input.a, 54248u)), Struct_1(vec3<u32>(63752u, 1u, u_input.a))), 2147483647i, Struct_3(vec4<bool>(var_0, false, true, true), Struct_1(vec3<u32>(u_input.a, 1u, u_input.a)), 1i), Struct_1(vec3<u32>(30239u, 66806u, 1u)))));
    let var_2 = !all(!(!(!vec4<bool>(false, var_1.x, false, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(max(32751i, firstLeadingBit(u_input.c)), _wgslsmith_clamp_i32(1212i, u_input.b, 2147483647i), ~u_input.b << (u_input.a % 32u))), ~countOneBits(abs(max(vec2<u32>(31712u, u_input.a), vec2<u32>(u_input.a, u_input.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1078f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-492f, _wgslsmith_f_op_f32(max(-1092f, -943f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-220f)), 1054f)))), func_2().b, 336f), max(vec2<i32>(29237i, ~(~30889i)), (_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(0i, u_input.c)) ^ vec2<i32>(-49054i, u_input.c)) ^ (_wgslsmith_mod_vec2_i32(vec2<i32>(-19433i, -1i), vec2<i32>(u_input.c, u_input.b)) >> (~vec2<u32>(1u, 459u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-333f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-738f, -1822f)), -1567f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1485f * -1062f) - -134f))));
}

