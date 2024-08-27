struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> vec3<u32> {
    let var_0 = Struct_4(arg_3, ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wyz, u_input.b.xxw), _wgslsmith_sub_u32(u_input.b.x, arg_1.c.x)), vec2<u32>(1u, 0u)), -667f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -896f) - _wgslsmith_f_op_f32(sign(-440f))))), select(arg_1.c, vec2<u32>(0u, select(27386u, u_input.b.x, true) >> (85448u % 32u)), select(vec2<bool>(!arg_3, arg_3), !select(vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3), true), ~arg_2.x != arg_2.x)));
    let var_1 = select(vec3<i32>(_wgslsmith_add_i32(~0i, 0i), firstTrailingBit(~1i), -62134i), ~arg_2.yzx, false);
    var var_2 = vec4<bool>(!(arg_3 || false), false, true, arg_3);
    var var_3 = arg_1;
    var var_4 = 1851f;
    return ~u_input.b.ywx;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, var_0.a.x)));
    var_0 = var_1;
    var_0 = var_1;
    var_0 = arg_0;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.x, arg_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.a.x, -418f)), -656f)), _wgslsmith_f_op_f32(f32(-1f) * -707f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-634f)) * var_0.a.x), _wgslsmith_f_op_f32(var_1.a.x * 1293f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, 1000f, arg_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -820f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.a.x, arg_0.a.x, var_0.a.x) + vec4<f32>(1377f, var_0.a.x, arg_0.a.x, arg_0.a.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -1320f, var_0.a.x), vec4<f32>(var_1.a.x, arg_0.a.x, var_0.a.x, 338f))))))));
}

fn func_2() -> Struct_4 {
    var var_0 = true & !(!(!(u_input.a.x == u_input.a.x)));
    var_0 = any(vec3<bool>(true, 4294967295u >= (~11014u << (u_input.b.x % 32u)), select(true, true, true)));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2000f - -752f)), 1f, -449f, _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(432f, -2088f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 1000f, -1329f))))), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(940f, 174f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-845f, 802f) - vec2<f32>(-683f, -490f)))), func_3(_wgslsmith_sub_vec2_i32(u_input.a.yw, vec2<i32>(1i, u_input.a.x)) & _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -20143i), u_input.a.wx), Struct_1(u_input.a, vec2<i32>(18817i, 1i), _wgslsmith_mult_vec2_u32(u_input.b.zz, u_input.b.xw)), ~firstTrailingBit(u_input.a), !any(vec4<bool>(true, true, false, true))), abs(vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 84760u), 1793u, 31714u)))), 1i != ~_wgslsmith_clamp_i32(min(u_input.a.x, u_input.a.x), abs(-1881i), select(-2147483647i, u_input.a.x, true))));
    var var_3 = ~u_input.a.x;
    return Struct_4(true, u_input.b.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(var_2.wy + var_2.zy)), reverseBits(u_input.b.yzx) << (vec3<u32>(1u, 22568u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(abs(u_input.b.zzz), ~u_input.b.wwx))).x), var_2.x, vec2<u32>(1u, 4294967295u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = 9137u;
    var_0 = select(4294967295u, arg_0.e.x, func_2().a);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(259f, func_2().c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1854f, 1421f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, arg_0.c) - _wgslsmith_f_op_f32(-arg_2.a.x))), 1046f, -493f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(round(arg_2.a.x)), func_2().c, arg_2.a.x))));
    var var_2 = any(!select(select(!vec2<bool>(true, arg_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false), false), arg_0.a), !(!vec2<bool>(arg_0.a, true)), select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a))));
    let var_3 = ~(~u_input.a.x);
    return u_input.a.yx;
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(func_2(), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-133f, 1550f), vec2<f32>(307f, -1399f), vec2<bool>(false, true)))), firstLeadingBit(u_input.a.x), _wgslsmith_mult_i32(-15274i | u_input.a.x, 69571i)), Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(324f, 1967f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, 857f) + vec2<f32>(428f, -1000f)))))) & vec2<i32>(i32(-1i) * -u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(18107i, u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_1 = ~(~_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.b.xz), ~countOneBits(vec2<u32>(4294967295u, 1u))));
    var var_2 = all(select(vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), !all(vec2<bool>(false, false)), true), select(vec3<bool>(true, true, any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), any(vec4<bool>(true, true, false, true)))), select(vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))));
    var_0 = -u_input.a.xx;
    let var_3 = select(vec4<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), func_2().a, (any(vec3<bool>(true, true, false)) && select(true, true, true)) & (any(vec2<bool>(true, false)) || true)), vec4<bool>(false, true | func_2().a, true, all(vec3<bool>(true, true, true)) | select(true, true, false)), u_input.a.x != 0i);
    return Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1583f, 1429f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(556f, -177f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(727f, -399f)))))), -(~var_0.x), -func_5(Struct_4(false, ~vec2<u32>(u_input.b.x, 4294967295u), 1413f, _wgslsmith_f_op_f32(f32(-1f) * -804f), var_1), Struct_3(Struct_2(vec2<f32>(-2484f, 355f)), 15962i, _wgslsmith_mod_i32(u_input.a.x, 37075i)), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(2557f, 516f) * vec2<f32>(-212f, 499f)))).x);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d)) * _wgslsmith_f_op_f32(round(-1383f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.a.x + -1825f), _wgslsmith_f_op_f32(-arg_1.c))))));
    return vec4<bool>(!arg_1.a, all(select(!(!vec2<bool>(arg_1.a, arg_1.a)), select(vec2<bool>(true, true), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, true), arg_1.a), select(arg_1.a, false, arg_1.a)), vec2<bool>(u_input.b.x <= u_input.b.x, any(vec2<bool>(arg_1.a, true))))), arg_1.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.wyx;
    var_0 = ~u_input.b.xyw;
    let var_1 = Struct_4(all(select(func_6(func_1(), func_2(), u_input.a.x), func_6(Struct_3(Struct_2(vec2<f32>(1000f, 482f)), -2147483647i, u_input.a.x), Struct_4(false, vec2<u32>(21252u, 53491u), -955f, -1916f, vec2<u32>(20857u, 10560u)), ~u_input.a.x), vec4<bool>(func_6(Struct_3(Struct_2(vec2<f32>(-525f, 366f)), -2147483647i, -1i), Struct_4(false, vec2<u32>(0u, u_input.b.x), 898f, 717f, var_0.yx), u_input.a.x).x, false, true, 17850i >= u_input.a.x))), firstLeadingBit(var_0.yz), -1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1450f))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 10455u), vec2<u32>(38019u, 4294967295u)), var_0.yx), vec2<u32>(var_0.x >> (var_0.x % 32u), var_0.x)));
    let var_2 = u_input.a.x >> (func_3(abs(-(vec2<i32>(-2147483647i, u_input.a.x) | vec2<i32>(11507i, 29004i))), Struct_1((u_input.a & u_input.a) ^ -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -u_input.a.wz, countOneBits(u_input.b.wx)), u_input.a, var_1.a).x % 32u);
    let var_3 = Struct_1(-select(_wgslsmith_mult_vec4_i32(~vec4<i32>(6757i, u_input.a.x, var_2, -2147483647i), vec4<i32>(12908i, 1i, -1459i, var_2)), u_input.a, !(true && var_1.a)), _wgslsmith_mod_vec2_i32(u_input.a.zw & max(u_input.a.zz, vec2<i32>(u_input.a.x, 2147483647i)), vec2<i32>(var_2 ^ u_input.a.x, var_2) >> (vec2<u32>(~1u, func_3(u_input.a.xw, Struct_1(vec4<i32>(16116i, u_input.a.x, u_input.a.x, var_2), vec2<i32>(u_input.a.x, var_2), u_input.b.zz), u_input.a, var_1.a).x) % vec2<u32>(32u))), vec2<u32>(var_0.x, _wgslsmith_dot_vec2_u32(var_0.yy, var_0.zz) | _wgslsmith_add_u32(~u_input.b.x, 7025u)));
    let var_4 = var_3;
    let var_5 = -var_4.b.x;
    var var_6 = Struct_3(func_1().a, var_2, -(~2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(0u ^ (func_2().b.x & 1u), ~25777u, func_3(u_input.a.zz, var_3, var_3.a, true).xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_6.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-982f, var_6.a.a.x) * var_6.a.a), vec2<bool>(false, true))))));
}

