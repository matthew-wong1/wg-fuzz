struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(0u);
    let var_1 = abs(vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(-25330i, 0i)), u_input.d, arg_1.b.x));
    let var_2 = !select(select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true), vec2<bool>(any(vec2<bool>(false, true)), var_1.x == u_input.d), true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), vec2<bool>(arg_0.x < arg_1.c, all(vec3<bool>(true, true, true))));
    var var_3 = u_input.b;
    var var_4 = arg_0.x;
    return Struct_3(u_input.b, 0u, !(!select(select(vec2<bool>(var_2.x, var_2.x), var_2, vec2<bool>(true, true)), var_2, vec2<bool>(var_2.x, var_2.x))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> Struct_4 {
    var var_0 = arg_0;
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c, arg_1.d.x, arg_1.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1144f, -267f, arg_1.c) - vec3<f32>(arg_1.e, 1400f, -743f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(abs(arg_1.c)), -832f)), vec3<f32>(arg_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f), -631f), -1340f), select(!select(vec3<bool>(arg_0.c.x, false, arg_0.c.x), vec3<bool>(false, var_0.c.x, true), vec3<bool>(true, arg_0.c.x, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), false), !select(vec3<bool>(var_0.c.x, var_0.c.x, arg_0.c.x), vec3<bool>(false, false, true), false)))), arg_1);
    let var_1 = ~_wgslsmith_add_u32(757u, var_0.b);
    let var_2 = Struct_2(abs(5147u));
    var var_3 = var_2;
    return Struct_4(vec3<f32>(663f, -813f, _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(2223f - _wgslsmith_f_op_f32(select(816f, arg_1.e, arg_0.c.x))))), all(vec3<bool>(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(367f, arg_1.d.x, arg_1.e) - vec3<f32>(arg_1.c, 1000f, arg_1.d.x)), arg_1).c.x, true, arg_0.c.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_2(40171u);
    var var_1 = Struct_2(arg_0);
    var var_2 = ~(var_0.a ^ (arg_0 & (~var_1.a ^ arg_0)));
    var var_3 = 14036i;
    var_1 = Struct_2(~reverseBits(_wgslsmith_add_u32(1u, ~u_input.a)));
    return Struct_1(vec2<u32>(4294967295u, var_1.a), u_input.b.zx, arg_3.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.a.yy * vec2<f32>(arg_3.a.x, 1994f)) + vec2<f32>(-212f, -2568f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-822f, 1289f))))), arg_2);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec2<f32> {
    var var_0 = arg_0.a;
    var var_1 = abs(~u_input.a);
    var_1 = 4294967295u;
    let var_2 = ~vec3<i32>(arg_0.b.x, u_input.e, max(1i, -26404i) >> (~abs(var_0.x) % 32u));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(select(_wgslsmith_mod_u32(55320u, 1u), countOneBits(~arg_1), false), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 0u, 4294967295u, 0u), vec4<u32>(arg_0.a.x, u_input.a, 1u, u_input.c.x)), ~vec4<u32>(0u, arg_0.a.x, 4294967295u, 45371u)))), reverseBits(~u_input.a));
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)), arg_0.d.x)), arg_0.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-435f, 866f) + vec2<f32>(271f, arg_0.c)) + _wgslsmith_f_op_vec2_f32(-arg_0.d)), vec2<f32>(-1000f, 1000f)) * _wgslsmith_f_op_vec2_f32(max(arg_0.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -892f) * arg_0.d), arg_0.d))))), !(true && arg_2) | !all(select(vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(true, false, false, arg_2), true))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_4(_wgslsmith_clamp_u32(~0u, ~arg_3.a, arg_3.a ^ u_input.a), Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, u_input.d, -23810i), u_input.b, u_input.b), ~5549u, !vec2<bool>(arg_1.b, arg_1.b)), -1458f, func_3(func_2(arg_1.a, Struct_1(vec2<u32>(u_input.a, 1u), vec2<i32>(2147483647i, u_input.e), 1683f, arg_0, 127f)), Struct_1(vec2<u32>(20792u, 40281u), u_input.b.yx, arg_0.x, arg_0, -1000f))), arg_3.a, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(943f, arg_0.x, 1804f), arg_1.a), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -1132f, arg_0.x), vec3<f32>(280f, -1000f, arg_1.a.x))), Struct_1(~vec2<u32>(u_input.c.x, 24941u), vec2<i32>(0i, u_input.b.x), arg_1.a.x, _wgslsmith_f_op_vec2_f32(select(arg_1.a.yy, arg_0, vec2<bool>(arg_2, true))), _wgslsmith_f_op_f32(select(539f, -1365f, true)))).c.x)));
    let var_1 = -u_input.b;
    var_0 = arg_1.a.yy;
    var var_2 = u_input.a;
    let var_3 = u_input.e;
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(51455u, 1u, 4294967295u, arg_3.a))), ~firstLeadingBit(vec4<u32>(u_input.c.x, 64452u, u_input.a, 51447u))) | ~arg_3.a, (1u | arg_3.a) & (1u << (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~(~0u), u_input.c.x, 1u, ~(~4294967295u)) | (_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, u_input.a, u_input.c.x), vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<u32>(37936u, u_input.c.x, 54155u, 4294967295u)), vec4<u32>(~58326u, func_1(vec2<f32>(186f, -2670f), Struct_4(vec3<f32>(167f, 1436f, -1000f), false), true, Struct_2(u_input.c.x)), u_input.c.x, 4294967295u & u_input.a)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(14652u, u_input.a, 1777u, 53278u) >> (abs(vec4<u32>(5641u, u_input.c.x, 4294967295u, u_input.a)) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, ~1u, max(u_input.c.x, u_input.c.x), 98557u)));
    var var_1 = Struct_2(26488u);
    var_0 = firstTrailingBit(vec4<u32>(var_1.a, abs(firstTrailingBit(23469u)), var_1.a, var_0.x)) & vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 2698u), vec2<u32>(var_1.a, 32656u)), 14883u), 4294967295u, u_input.a, u_input.c.x);
    var_1 = Struct_2(~(~var_1.a));
    var_1 = Struct_2(~var_1.a);
    var var_2 = select(func_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1612f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(959f, 2304f, false)) - func_4(0u, Struct_3(u_input.b, 11599u, vec2<bool>(false, true)), -621f, Struct_4(vec3<f32>(-759f, 1010f, -135f), false)).e), 672f), Struct_1(vec2<u32>(~u_input.a, firstTrailingBit(1u)), ~u_input.b.zx, 1072f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1135f, -1000f)))), 1000f)).c, vec2<bool>(false, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)))), !(4294967295u > var_1.a));
    var var_3 = func_4(var_0.x, func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(abs(536f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2132f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(296f, -1267f)))), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, 22170u), countOneBits(var_0.yw)), _wgslsmith_mod_vec2_i32(func_2(vec3<f32>(612f, 606f, -1848f), Struct_1(vec2<u32>(1u, u_input.c.x), vec2<i32>(u_input.d, u_input.b.x), -2255f, vec2<f32>(554f, 1580f), 1971f)).a.zz, vec2<i32>(21351i, u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1005f, -2371f), vec2<f32>(-1556f, -485f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1534f, -1294f)))), 681f)), _wgslsmith_f_op_vec2_f32(func_5(Struct_1(~_wgslsmith_div_vec2_u32(vec2<u32>(52477u, 55540u), var_0.wy), select(u_input.b.yy, select(u_input.b.xy, vec2<i32>(u_input.e, u_input.e), var_2.x), var_2.x || var_2.x), _wgslsmith_f_op_f32(abs(401f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-435f, 935f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-658f, -334f)))), _wgslsmith_f_op_f32(ceil(1010f))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1081f, 1378f))) * func_4(14228u, Struct_3(u_input.b, 54161u, vec2<bool>(var_2.x, true)), 2031f, Struct_4(vec3<f32>(985f, -1535f, 1272f), var_2.x)).d), Struct_4(func_3(Struct_3(vec3<i32>(u_input.d, 91366i, u_input.d), var_1.a, vec2<bool>(false, true)), Struct_1(u_input.c, vec2<i32>(u_input.d, -863i), 2175f, vec2<f32>(1226f, 617f), 253f)).a, all(vec4<bool>(var_2.x, true, true, false))), var_2.x, Struct_2(var_1.a)), all(select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false, var_2.x, var_2.x), true)))).x, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-230f, -201f))), _wgslsmith_f_op_f32(773f - func_3(Struct_3(u_input.b, 0u, vec2<bool>(var_2.x, false)), Struct_1(var_0.wx, vec2<i32>(1i, u_input.b.x), 151f, vec2<f32>(1000f, 194f), -1409f)).a.x), -461f), all(vec4<bool>(var_2.x, false, true, var_2.x))));
    var_2 = vec2<bool>(!var_2.x, 28730u <= ~(var_0.x & _wgslsmith_dot_vec3_u32(var_0.wxw, var_0.xzy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1147f, 1701f, 688f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1236f, var_3.c, var_3.e) * vec3<f32>(var_3.d.x, var_3.c, var_3.d.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(249f, -1073f, 1295f) * vec3<f32>(var_3.c, 936f, var_3.e))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e, var_3.e, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_3.c, var_3.e) - vec3<f32>(var_3.d.x, -1869f, var_3.c))))), var_3.a, abs(~(-u_input.b.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(-1119f, var_3.d.x, true)), var_3.c))), 4258u);
}

