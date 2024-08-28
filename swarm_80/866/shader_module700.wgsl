struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = Struct_2(~_wgslsmith_mod_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(41308u, 0u, u_input.d.x, u_input.c.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, 91888u), ~vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 10436u))), Struct_1(1539f, !select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), arg_0), select(vec2<bool>(false, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), true)));
    var var_1 = false;
    var_1 = true;
    let var_2 = max(reverseBits(vec2<u32>(var_0.a.x, var_0.a.x)) & abs(~vec2<u32>(0u, 23185u)), u_input.d);
    var_0 = Struct_2(~vec4<u32>(1u, 50885u, 0u, var_2.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a - -1694f))), vec2<bool>(var_0.b.b.x, arg_0)));
    return !vec2<bool>(any(select(select(vec4<bool>(false, arg_0, true, var_0.b.b.x), vec4<bool>(arg_0, arg_0, false, arg_0), var_0.b.b.x), select(vec4<bool>(true, false, arg_0, true), vec4<bool>(true, var_0.b.b.x, var_0.b.b.x, true), vec4<bool>(var_0.b.b.x, true, false, var_0.b.b.x)), !vec4<bool>(arg_0, false, false, var_0.b.b.x))), false);
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_5(select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_3(true), true), vec2<bool>(select(true, func_3(false).x, true), true), any(vec3<bool>(true, true, true)) && any(vec3<bool>(false, false, true))), 437f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(130f, -446f, 2000f) + vec3<f32>(-376f, 1221f, 764f)), vec3<f32>(-193f, 510f, -109f))))))));
    let var_1 = ~7934i;
    return Struct_5(vec2<bool>(false, _wgslsmith_mod_i32(0i, ~u_input.a) == select(1i, -var_1, true)), _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2123f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1324f, var_0.b, 648f))) * _wgslsmith_f_op_vec3_f32(-var_0.c))) * var_0.c));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec4<u32>) -> u32 {
    let var_0 = Struct_4(arg_2.a, firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_3.zwy >> (~arg_1.b.a.yxx % vec3<u32>(32u)), vec3<u32>(min(74140u, arg_1.b.a.x), _wgslsmith_dot_vec2_u32(arg_2.a.b.a.zz, arg_3.ww), 18384u >> (arg_2.b % 32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.c))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.c.b.a)), arg_2.d.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_1.b.a.x, 81176u), _wgslsmith_dot_vec3_u32(firstTrailingBit(~u_input.c), vec3<u32>(firstTrailingBit(76184u), _wgslsmith_dot_vec4_u32(arg_3, arg_2.a.b.a), ~39123u))));
    var var_1 = firstTrailingBit(arg_1.a.zxz);
    var_1 = -(~arg_2.a.a.wzw);
    var var_2 = vec4<bool>(all(select(vec2<bool>(true, true), func_3(true), arg_1.b.b.b.x)), false, true, true);
    let var_3 = countOneBits(var_0.a.a.wxy);
    return ~countOneBits(~(~61552u));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 74830u, ~(~89970u), func_4(func_2(), Struct_3(vec4<i32>(u_input.a, u_input.a, -33603i, -40300i), Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, 5555u), Struct_1(949f, vec2<bool>(true, false))), Struct_2(vec4<u32>(1u, 27661u, u_input.c.x, u_input.b.x), Struct_1(-632f, vec2<bool>(true, true)))), Struct_4(Struct_3(u_input.e, Struct_2(vec4<u32>(u_input.b.x, 22987u, u_input.d.x, 14470u), Struct_1(arg_0, vec2<bool>(false, false))), Struct_2(vec4<u32>(u_input.b.x, u_input.c.x, 1u, u_input.c.x), Struct_1(1536f, vec2<bool>(false, true)))), 4294967295u, arg_0, vec2<f32>(1228f, arg_0), 4294967295u), vec4<u32>(0u, 40101u, u_input.b.x, 44115u))), ~(~(vec4<u32>(0u, u_input.c.x, 1u, 5794u) ^ vec4<u32>(u_input.d.x, u_input.c.x, u_input.c.x, u_input.b.x))), firstLeadingBit(vec4<u32>(u_input.c.x, u_input.d.x, u_input.c.x, 0u)) | (select(vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, u_input.b.x, u_input.d.x, 43298u), false) | (vec4<u32>(u_input.b.x, u_input.d.x, u_input.c.x, u_input.b.x) << (vec4<u32>(0u, u_input.b.x, 36546u, u_input.b.x) % vec4<u32>(32u))))), Struct_1(arg_0, select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), true))));
    var_0 = Struct_2(abs(abs(var_0.a)), var_0.b);
    let var_1 = !(!(!select(vec3<bool>(false, var_0.b.b.x, var_0.b.b.x), !vec3<bool>(var_0.b.b.x, true, var_0.b.b.x), vec3<bool>(var_0.b.b.x, true, var_0.b.b.x))));
    var_0 = Struct_2(_wgslsmith_mult_vec4_u32((firstTrailingBit(vec4<u32>(u_input.b.x, var_0.a.x, 4575u, 68053u)) ^ var_0.a) & ~select(vec4<u32>(var_0.a.x, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(var_0.a.x, 31856u, u_input.b.x, 0u), vec4<bool>(var_0.b.b.x, true, true, var_1.x)), ~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.a.x, 51306u), 1u, 4188u, _wgslsmith_mult_u32(u_input.d.x, var_0.a.x))), var_0.b);
    var_0 = Struct_2(min(max(vec4<u32>(_wgslsmith_add_u32(u_input.d.x, u_input.c.x), 1u, 1u, u_input.b.x), vec4<u32>(0u, u_input.b.x, var_0.a.x, 59u) << (var_0.a % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(abs(var_0.a.yxz), u_input.c), abs(1u), 28u, _wgslsmith_div_u32(var_0.a.x, countOneBits(u_input.c.x)))), var_0.b);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 967f), arg_0) * 238f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(firstLeadingBit(-u_input.e), Struct_2(~(~vec4<u32>(31344u, 86347u, arg_3.a.x, 4294967295u) | (vec4<u32>(0u, arg_3.a.x, arg_3.a.x, 52507u) ^ arg_2.b.a)), arg_3.b), Struct_2(arg_2.c.a & ~(~arg_3.a), arg_2.c.b));
    var_0 = Struct_3(vec4<i32>(-max(firstLeadingBit(76323i), arg_1.x), abs(~(~u_input.a)), i32(-1i) * -var_0.a.x, i32(-1i) * -_wgslsmith_mult_i32(arg_1.x, -16999i)), Struct_2(_wgslsmith_sub_vec4_u32(arg_3.a ^ (vec4<u32>(31018u, arg_2.b.a.x, arg_2.c.a.x, u_input.b.x) ^ arg_3.a), vec4<u32>(~var_0.c.a.x, 0u, _wgslsmith_dot_vec3_u32(arg_3.a.wxz, arg_3.a.xwz), max(var_0.b.a.x, arg_3.a.x))), Struct_1(_wgslsmith_div_f32(arg_3.b.a, -506f), select(!arg_3.b.b, vec2<bool>(true, true), func_2().a))), arg_2.c);
    let var_1 = u_input.e.zyx;
    let var_2 = var_0.c.b.a;
    var var_3 = arg_2;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-993f * -1509f);
    let var_1 = func_5(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-506f)) * 596f))), vec2<bool>(true, true)), u_input.e.ww, Struct_3(u_input.e, Struct_2(~abs(vec4<u32>(0u, u_input.c.x, u_input.c.x, 10359u)), Struct_1(_wgslsmith_f_op_f32(-1522f * 2142f), func_3(false))), Struct_2(vec4<u32>(9033u, ~u_input.d.x, 1u & u_input.c.x, u_input.c.x), Struct_1(-966f, select(vec2<bool>(true, true), vec2<bool>(true, true), false)))), Struct_2(vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, 4294967295u & u_input.c.x), ~_wgslsmith_add_u32(u_input.d.x, 31176u), 4294967295u, 4294967295u), Struct_1(-831f, select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), true))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1252f)), -789f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))));
    var_0 = 1f;
    var_0 = var_1.a;
    var var_2 = select(vec3<bool>(func_2().a.x && var_1.b.x, true, any(func_2().a)), !(!vec3<bool>(true, true, true | var_1.b.x)), vec3<bool>(func_3(var_1.b.x).x, !(!var_1.b.x), func_2().a.x));
    var var_3 = vec4<u32>(~(4294967295u >> (countOneBits(u_input.b.x) % 32u)), 0u, _wgslsmith_sub_u32(u_input.c.x, 6426u), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(2147483647i, countOneBits(abs(u_input.e.x)), u_input.e.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, -1197f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -684f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(845f, var_1.a) + vec2<f32>(var_1.a, var_1.a)))))), ~u_input.b, ~abs(~func_4(Struct_5(var_1.b, 196f, vec3<f32>(var_1.a, -1821f, 299f)), Struct_3(u_input.e, Struct_2(vec4<u32>(var_3.x, 7794u, var_3.x, u_input.d.x), Struct_1(var_1.a, var_2.xz)), Struct_2(vec4<u32>(u_input.d.x, 4294967295u, var_3.x, 87934u), var_1)), Struct_4(Struct_3(vec4<i32>(53891i, -1i, 0i, u_input.e.x), Struct_2(vec4<u32>(52392u, u_input.b.x, 17380u, 4824u), var_1), Struct_2(vec4<u32>(var_3.x, var_3.x, 16310u, 37759u), var_1)), u_input.b.x, 186f, vec2<f32>(var_1.a, 1988f), 105380u), vec4<u32>(var_3.x, var_3.x, 38586u, 31413u))));
}

