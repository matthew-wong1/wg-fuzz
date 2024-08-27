struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_2(~(~(~vec4<u32>(arg_0, 4294967295u, u_input.a.x, arg_0))) ^ min(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 53255u, 88048u, 32457u), vec4<u32>(98833u, 0u, arg_1.x, arg_1.x)), min(vec4<u32>(arg_1.x, 1u, 62893u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, arg_1.x, 85359u), vec4<u32>(35519u, 26579u, 11629u, 43334u)))), u_input.e, true, _wgslsmith_clamp_vec4_i32(select(~(vec4<i32>(u_input.d, u_input.d, 2147483647i, 8540i) << (vec4<u32>(1u, 23486u, 1748u, 1u) % vec4<u32>(32u))), ~vec4<i32>(-1i, 2878i, u_input.c, -1i), select(true, true, true)), vec4<i32>(2147483647i, u_input.d, _wgslsmith_add_i32(~(-30670i), u_input.d), -15435i), select(~max(vec4<i32>(-1i, u_input.e, u_input.e, -1306i), vec4<i32>(-6622i, 2147483647i, u_input.b.x, -39618i)), -vec4<i32>(4909i, 1i, u_input.e, -19469i), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), true))), Struct_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, arg_0, arg_1.x, arg_0)), ~vec4<u32>(u_input.a.x, 0u, 45608u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(872f, -1211f, 556f))), true));
    var var_1 = var_0.c;
    var var_2 = Struct_3(reverseBits(~arg_1.x & select(firstLeadingBit(2000u), ~0u, var_0.e.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.b.x, var_0.e.b.x)) + var_0.e.b.zy), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-442f, -414f) - var_0.e.b.yx), var_0.e.b.yz, !vec2<bool>(var_0.c, false))), vec2<bool>(true, !var_0.e.c))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f + var_0.e.b.x) - var_0.e.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.b.x), _wgslsmith_div_f32(var_0.e.b.x, var_0.e.b.x))), select(vec2<bool>(var_0.e.c, true), vec2<bool>(var_0.c, true), true))), all(vec2<bool>(true, !var_0.c)) || false);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.e.b.x, -363f))), Struct_3(1u, vec2<f32>(-153f, 1752f), any(select(select(vec2<bool>(false, false), vec2<bool>(var_2.c, var_2.c), true), vec2<bool>(true, var_2.c), all(vec4<bool>(true, var_2.c, false, var_0.e.c))))), u_input.a.x, abs(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, i32(-1i) * -69417i), _wgslsmith_sub_i32(-1143i, var_0.d.x))), var_0.e);
    var var_4 = any(!select(!vec4<bool>(var_3.b.c, false, var_2.c, var_2.c), select(vec4<bool>(var_2.c, false, var_3.e.c, true), vec4<bool>(var_0.c, var_3.b.c, true, var_0.e.c), true), all(vec4<bool>(true, false, var_2.c, true)))) & !(!(!var_0.e.c));
    return 45413u;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = ~arg_1.a.xzz;
    var_0 = countOneBits(reverseBits(arg_1.a.yzw) & vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, abs(0u)), arg_2.e.a, 4294967295u));
    var var_1 = firstLeadingBit(arg_2.d);
    let var_2 = false;
    var_1 = -arg_1.d.x;
    return select(vec3<bool>(arg_0.e.c, !all(vec3<bool>(true, arg_1.e.c, var_2)), false), select(!(!(!vec3<bool>(arg_2.e.c, false, true))), vec3<bool>(any(!vec3<bool>(false, var_2, false)), any(vec2<bool>(false, arg_1.e.c)) & (arg_2.b.c & true), arg_2.e.c), !(!select(vec3<bool>(var_2, var_2, true), vec3<bool>(true, true, true), vec3<bool>(true, arg_0.e.c, arg_0.e.c)))), vec3<bool>(any(!vec3<bool>(true, arg_2.b.c, var_2)), any(!select(vec4<bool>(arg_2.e.c, arg_1.e.c, false, true), vec4<bool>(arg_0.b.c, true, arg_2.b.c, var_2), false)), arg_1.c));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = vec4<u32>(~select(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(arg_1.x, u_input.a.x)), arg_0, select(all(vec2<bool>(true, true)), false, true)), 0u, 133u, ~45892u);
    var var_1 = vec2<u32>(4294967295u, 0u);
    var_0 = ~_wgslsmith_mod_vec4_u32(min(vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.yyw, vec3<u32>(arg_1.x, arg_0, u_input.a.x)), ~arg_1.x, var_0.x, 24170u >> (0u % 32u)), arg_1), vec4<u32>(22877u, var_1.x, 1u >> (arg_0 % 32u), 36422u) >> ((~vec4<u32>(var_1.x, arg_0, u_input.a.x, 40206u) | vec4<u32>(1437u, arg_1.x, 50877u, 35029u)) % vec4<u32>(32u)));
    let var_2 = -41283i;
    let var_3 = Struct_1(arg_0 ^ (4294967295u | min(arg_0, 60695u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-587f * _wgslsmith_f_op_f32(-517f + 1343f)), _wgslsmith_f_op_f32(step(-1915f, -899f)), 1228f) + vec3<f32>(1f, 1f, 1f)), true);
    return select(select(vec3<bool>(false, var_3.c, var_3.c), !(!(!vec3<bool>(true, true, var_3.c))), func_4(Struct_4(-262f, Struct_3(u_input.a.x, var_3.b.zz, var_3.c), func_3(arg_1.x, arg_1.xxy), -2147483647i, Struct_1(u_input.a.x, var_3.b, var_3.c)), Struct_2(select(vec4<u32>(7443u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(arg_0, var_1.x, arg_0, 0u), vec4<bool>(var_3.c, false, true, false)), ~5599i, any(vec2<bool>(true, var_3.c)), select(vec4<i32>(var_2, 2147483647i, 15149i, 10007i), vec4<i32>(u_input.c, -1i, var_2, var_2), var_3.c), var_3), Struct_4(_wgslsmith_f_op_f32(floor(834f)), Struct_3(var_3.a, vec2<f32>(1431f, -1159f), var_3.c), var_3.a << (12870u % 32u), min(u_input.d, u_input.e), var_3))), !vec3<bool>(all(!vec3<bool>(false, var_3.c, var_3.c)), false, var_3.b.x <= 932f), !(!vec3<bool>(false, var_3.c, false)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    var var_0 = Struct_1(u_input.a.x, arg_1.b, arg_2.x);
    var var_1 = vec3<i32>(u_input.b.x, u_input.e, -1i);
    var var_2 = select(vec4<bool>(any(select(vec4<bool>(true, var_0.c, true, var_0.c), !vec4<bool>(false, arg_1.c, arg_2.x, arg_1.c), vec4<bool>(false, false, arg_1.c, false))), false, any(vec4<bool>(!arg_2.x, false, arg_1.c, any(vec3<bool>(var_0.c, false, var_0.c)))), all(vec2<bool>(var_0.c & true, true))), select(!select(!vec4<bool>(true, arg_1.c, arg_1.c, false), vec4<bool>(false, var_0.c, true, arg_1.c), vec4<bool>(false, true, true, var_0.c)), !select(vec4<bool>(false, true, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, true, false, false), !vec4<bool>(arg_1.c, true, arg_2.x, var_0.c)), vec4<bool>(select(false, true, select(false, false, true)), arg_2.x, arg_2.x, 1u > max(arg_0, u_input.a.x))), !arg_2.x);
    var var_3 = var_2.xz;
    var_3 = select(arg_2.zz, vec2<bool>(any(vec2<bool>(arg_2.x & var_0.c, false)), select(!(4294967295u <= var_0.a), true, false)), var_1.x >= _wgslsmith_mult_i32(_wgslsmith_mult_i32(countOneBits(u_input.e), _wgslsmith_mult_i32(0i, 1i)), reverseBits(2147483647i) >> (~u_input.a.x % 32u)));
    return true;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = arg_0;
    var_0 = func_5(u_input.a.x, Struct_1(~49648u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(319f, 428f, 1052f) - vec3<f32>(-129f, -975f, -501f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1512f, -1793f, 562f) - vec3<f32>(-842f, 1413f, -1880f)), func_2(0u, vec4<u32>(arg_2.x, 1u, 5300u, 21238u))))), !func_2(_wgslsmith_mod_u32(1u, 1u), vec4<u32>(25768u, 4294967295u, 18428u, 1u)).x), vec3<bool>(false, arg_0, arg_0));
    var_0 = any(select(vec4<bool>(true, arg_0, false, !arg_0), select(!select(vec4<bool>(arg_0, false, true, false), vec4<bool>(false, false, true, arg_0), arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0)), !vec4<bool>(arg_0, arg_0, true, false)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_0, arg_0, false, arg_0), arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)), !select(vec4<bool>(false, arg_0, false, false), select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), false), vec4<bool>(true, true, false, true))));
    var var_1 = Struct_1(5227u & func_3(u_input.a.x, _wgslsmith_clamp_vec3_u32(~vec3<u32>(19091u, u_input.a.x, u_input.a.x), arg_1.wxx, select(vec3<u32>(32084u, 4294967295u, arg_2.x), vec3<u32>(arg_2.x, 0u, arg_1.x), arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-769f, 412f), _wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(f32(-1f) * -876f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-324f, 603f, 414f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-201f, -1782f, 2329f) + vec3<f32>(2943f, -980f, 1000f))) - vec3<f32>(-1063f, 742f, _wgslsmith_f_op_f32(floor(1412f))))), !(!(!any(vec4<bool>(true, arg_0, true, arg_0)))));
    var var_2 = false;
    return select(arg_1, arg_1, !select(!vec4<bool>(true, true, var_1.c, false), !(!vec4<bool>(arg_0, arg_0, true, true)), select(vec4<bool>(var_1.c, arg_0, true, arg_0), vec4<bool>(true, true, true, true), all(vec3<bool>(true, var_1.c, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-vec4<i32>(u_input.b.x, u_input.b.x << (1u % 32u), ~u_input.b.x, ~(-39090i)) ^ (_wgslsmith_mod_vec4_i32(vec4<i32>(-71101i, -2147483647i, 0i, -59960i) & vec4<i32>(u_input.c, u_input.c, 27019i, u_input.d), vec4<i32>(2147483647i, -511i, -6080i, u_input.c)) << (func_1(u_input.b.x == u_input.c, vec4<u32>(4294967295u, 0u, 0u, 1u), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 78059u))) % vec4<u32>(32u)))) ^ select(firstTrailingBit(~(-vec4<i32>(u_input.e, 39715i, 1i, 12633i))), ~(~firstLeadingBit(vec4<i32>(74420i, u_input.c, u_input.d, 0i))), select(vec4<bool>(true, true, true, any(vec2<bool>(true, true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)));
    var var_1 = 75298i | _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-u_input.e ^ ~(-2147483647i), _wgslsmith_div_i32(~var_0.x, firstTrailingBit(30297i)), -var_0.x >> (30726u % 32u)));
    var var_2 = Struct_2(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(63757u, 1u, u_input.a.x, 47417u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)) & ~u_input.a.x, u_input.a.x, ~u_input.a.x, u_input.a.x), ~17087i, true, ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -1i, 2147483647i) | vec3<i32>(var_0.x, var_0.x, u_input.c), select(var_0.xyz, var_0.zyx, false)), u_input.b.x, u_input.e, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_0.x, 0i, var_0.x)) | u_input.d), Struct_1(1u | u_input.a.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1278f, -630f, -575f)))), false));
    var var_3 = func_1(false, _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, u_input.a.x, max(11738u, 1u), ~u_input.a.x) | var_2.a, max(max(firstTrailingBit(var_2.a), vec4<u32>(1u, u_input.a.x, u_input.a.x, var_2.e.a)), vec4<u32>(~var_2.a.x, 2991u, u_input.a.x & 1u, ~var_2.e.a))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.a.x, 135322u, var_2.e.a), select(countOneBits(vec3<u32>(u_input.a.x, var_2.e.a, u_input.a.x)), var_2.a.zxw | vec3<u32>(0u, 0u, u_input.a.x), vec3<bool>(true, var_2.e.c, var_2.c)))).x;
    let var_4 = Struct_3(4294967295u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1396f + var_2.e.b.x), var_2.e.b.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.e.b.x, var_2.e.b.x))))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2.e.a >> (func_1(var_4.c && var_2.c, ~var_2.a, ~var_2.a.zxy).x % 32u), u_input.a.x), var_2.d, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.e.b.x, 702f))), -164f, 2165f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(803f, var_4.b.x, var_4.b.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_4.b.x, var_4.b.x, var_4.b.x))))))));
}

