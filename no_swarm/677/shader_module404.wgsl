struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 43744u;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(~(~vec2<i32>(1i, ~(-24649i))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2398f + _wgslsmith_f_op_f32(round(-1467f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f) - _wgslsmith_f_op_f32(sign(-1443f))), true))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> vec2<bool> {
    let var_0 = Struct_2(arg_0.c.a);
    global0 = _wgslsmith_mod_u32(17536u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(vec3<u32>(4294967295u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, ~0u, ~u_input.a)), vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 45109u), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, 20635u)), ~_wgslsmith_div_u32(5223u, u_input.a))));
    global0 = u_input.a;
    global0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().a) * -1861f);
    return vec2<bool>(arg_1.c <= _wgslsmith_f_op_f32(f32(-1f) * -1147f), !all(select(select(vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x), vec4<bool>(arg_1.b.x, true, true, arg_1.b.x), arg_1.b.x), !vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x), all(arg_1.b.xy))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = vec4<f32>(901f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2().a, 1f) * 178f), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - arg_2)))));
    var var_1 = Struct_3(~vec4<i32>(-_wgslsmith_clamp_i32(-2147483647i, arg_0, arg_0), 2147483647i, max(arg_1.c.a.x, 32896i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_1.c.a.x, arg_0), vec4<i32>(arg_0, -1i, arg_0, arg_1.c.a.x)) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -1i), vec4<i32>(arg_0, 33283i, arg_0, 40730i))), !vec3<bool>(false, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 13241u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 16309u, 1u)) > (0u >> (u_input.a % 32u)), true), -706f, Struct_2(vec2<i32>(arg_1.c.a.x, _wgslsmith_add_i32(arg_0 >> (u_input.a % 32u), -8239i))));
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(max(1u, u_input.a), 4294967295u << (_wgslsmith_div_u32(58036u, 4294967295u) % 32u), ~min(u_input.a, u_input.a), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 119u), vec3<u32>(u_input.a, u_input.a, 100382u)))), ~abs(~vec4<u32>(u_input.a, 1u, u_input.a, 27141u))), vec4<u32>(u_input.a, u_input.a, 9265u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.a, u_input.a & u_input.a, 0u), u_input.a)));
    let var_2 = max(min(vec3<i32>(1i << (u_input.a % 32u), -56481i, ~(-32021i)), -var_1.a.zwz) & abs(var_1.a.yzy), var_1.a.xwz);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1133f, arg_1.b))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_0.x, func_2().a) - var_0.www) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xzx * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(222f, var_1.c, arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(-356f, var_1.c, var_0.x) + var_0.wyz))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(~abs(20808i), Struct_4(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -813f), Struct_2(vec2<i32>(2147483647i >> (u_input.a % 32u), 2386i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-898f)) + _wgslsmith_f_op_f32(f32(-1f) * -476f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f), 2247f)), select(vec2<bool>(true, true), select(!func_3(Struct_4(Struct_1(-333f), -888f, Struct_2(vec2<i32>(-51028i, -2147483647i))), Struct_3(vec4<i32>(16017i, 29926i, -1i, 64877i), vec3<bool>(true, false, true), 1256f, Struct_2(vec2<i32>(41581i, -1i))), -11525i), !func_3(Struct_4(Struct_1(832f), 183f, Struct_2(vec2<i32>(-41626i, -59599i))), Struct_3(vec4<i32>(-26601i, 2147483647i, 23058i, -55992i), vec3<bool>(false, true, true), -879f, Struct_2(vec2<i32>(13491i, -1i))), -2147483647i), true), select(true, all(vec2<bool>(false, false)), false))));
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, abs(1u)) >> ((_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)) << (vec2<u32>(u_input.a, u_input.a & u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 52091u, 4294967295u)), u_input.a), ~(~vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(_wgslsmith_mult_u32(0u, u_input.a), select(0u, 0u, false))), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 1u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, ~u_input.a) ^ _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(1u, 24241u)), ~vec2<u32>(u_input.a, 129509u)), firstTrailingBit(vec2<u32>(18475u, 28690u)) | abs(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)))));
    var var_2 = vec4<i32>(-_wgslsmith_sub_i32(-(~(-28433i)), 72028i >> (firstTrailingBit(var_1.x) % 32u)), countOneBits(firstLeadingBit(countOneBits(max(-1i, -33269i)))), ~_wgslsmith_mod_i32(abs(-28164i), -_wgslsmith_clamp_i32(-22037i, -1i, -21809i)), 1i ^ (select(_wgslsmith_div_i32(2147483647i, 1i), ~1i, false) ^ (1i << (var_1.x % 32u))));
    global0 = firstLeadingBit(33474u);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1718f + -1000f), var_0.x)));
    return Struct_1(_wgslsmith_f_op_f32(func_2().a * var_3.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = arg_1.a;
    let var_1 = _wgslsmith_mod_i32(78428i, arg_1.c.a.x);
    var var_2 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(var_1, var_1), _wgslsmith_sub_i32(~(-10988i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.c.a.x, 1i), vec3<i32>(-17120i, 12015i, 0i))), arg_1.c.a.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(-13427i, arg_1.c.a.x), countOneBits(arg_1.c.a))), vec4<i32>(arg_1.c.a.x, var_1, -23536i, var_1)), arg_0, 2018f, arg_1.c);
    global0 = u_input.a;
    var var_3 = arg_0.x;
    return _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>((4294967295u | u_input.a) & _wgslsmith_add_u32(u_input.a, 30087u), 0u), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(64108u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 91589u), vec2<u32>(4792u, u_input.a)))), ~(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_5(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), Struct_4(func_1(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1240f + 267f))), Struct_2(-vec2<i32>(11443i, 72879i))));
    global0 = ~21708u;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(701f, 903f)))), vec2<f32>(1f, 1f), all(vec2<bool>(true, true))));
    var var_2 = Struct_2(countOneBits(~firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-40479i, -20651i), vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(16553i, -80082i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1147f * _wgslsmith_f_op_f32(var_1.x - -406f)) + 852f), 358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-190f, _wgslsmith_div_f32(var_1.x, 238f), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(-59040i, Struct_4(Struct_1(var_1.x), -1121f, Struct_2(var_2.a)), -1714f, vec2<bool>(false, true))).x + var_1.x))), min(vec4<i32>(-3139i << (u_input.a % 32u), ~var_2.a.x, 0i, _wgslsmith_mod_i32(20132i, var_2.a.x)), vec4<i32>(i32(-1i) * -1i, 28721i, var_2.a.x, var_2.a.x)) >> ((abs(abs(vec4<u32>(973u, u_input.a, 0u, 0u))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, 4294967295u)), u_input.a & u_input.a, ~861u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, 83982u, u_input.a)), vec4<u32>(1u, ~u_input.a, _wgslsmith_add_u32(59819u, 15336u), _wgslsmith_mult_u32(u_input.a, 39144u))), u_input.a, ~_wgslsmith_mod_u32(u_input.a, u_input.a) & 1u, u_input.a));
}

