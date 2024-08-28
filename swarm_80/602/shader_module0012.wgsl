struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_mod_u32(firstLeadingBit(countOneBits(~u_input.a)), (u_input.a & (~u_input.a & _wgslsmith_mult_u32(12762u, 16453u))) >> ((1u ^ u_input.a) % 32u));
    return 1u;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(47243u, ~(u_input.a & 259u)) & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(arg_1.a.zz, arg_1.a.zy, vec2<bool>(arg_1.c.x, true)), _wgslsmith_add_vec2_u32(arg_0.yy, arg_0.yx)), reverseBits(~arg_3)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, arg_3), arg_1.a.wx));
    var_0 = ~reverseBits(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.a.x, 0u, u_input.a), ~arg_1.a)));
    let var_1 = arg_1.d.wz;
    var var_2 = Struct_3(Struct_1(!(!select(arg_1.d, vec4<bool>(var_1.x, true, true, var_1.x), false)), select(arg_1.a.zyy, firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_0.x, arg_3), arg_0)), !select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, false, arg_1.c.x), false)), !select(vec4<bool>(var_1.x, true, true, true), select(arg_1.d, vec4<bool>(false, arg_1.c.x, var_1.x, true), true), var_1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-909f, 755f) - arg_2.yx), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.x, -133f))))), vec2<f32>(-438f, _wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.b, 6703u, u_input.a)), reverseBits(~vec3<u32>(u_input.a, u_input.a, arg_1.b))), arg_0), 1i);
    let var_3 = ~countOneBits(max(-1i, 1i));
    return var_2.a.c;
}

fn func_2(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_1(vec4<bool>(all(select(func_3(vec3<u32>(1u, 25157u, u_input.a), Struct_2(vec4<u32>(9244u, u_input.a, u_input.a, 38135u), 1u, vec2<bool>(false, false), vec4<bool>(true, false, false, true)), vec4<f32>(arg_0.x, 806f, arg_0.x, arg_0.x), u_input.a), vec4<bool>(true, true, true, true), false)), true, !any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), true), min(~((vec3<u32>(38653u, 1u, 1u) << (vec3<u32>(2404u, 12666u, u_input.a) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(63306u, u_input.a, u_input.a), vec3<u32>(54785u, 10610u, u_input.a))), ~vec3<u32>(~37251u, ~0u, 1u)), select(vec4<bool>(true, ~1i <= _wgslsmith_dot_vec2_i32(vec2<i32>(-78610i, 0i), vec2<i32>(u_input.b.x, u_input.b.x)), true, true), select(!func_3(vec3<u32>(4294967295u, u_input.a, 20880u), Struct_2(vec4<u32>(23398u, u_input.a, 10774u, 0u), u_input.a, vec2<bool>(false, false), vec4<bool>(true, false, true, false)), vec4<f32>(362f, arg_0.x, -1402f, arg_0.x), 1u), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(true, false, false)), vec4<bool>(true, 57657i < u_input.b.x, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx), _wgslsmith_f_op_vec2_f32(select(arg_0.zx, arg_0.zx, vec2<bool>(true, select(false, true, true))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.d.x)))))), arg_0.yx));
    let var_2 = vec2<i32>(_wgslsmith_add_i32(min(-u_input.b.x << (firstTrailingBit(0u) % 32u), -u_input.b.x), -firstTrailingBit(u_input.b.x)), u_input.b.x);
    var var_3 = var_0.c.x;
    var_3 = any(func_3(vec3<u32>(reverseBits(1u), min(var_0.b.x, 47038u), var_0.b.x >> (4294967295u % 32u)), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(35731u, 0u, 0u, u_input.a), vec4<u32>(u_input.a, 0u, 1u, 20138u)), ~u_input.a, func_3(vec3<u32>(u_input.a, 11779u, var_0.b.x), Struct_2(vec4<u32>(21051u, var_0.b.x, 67950u, var_0.b.x), var_0.b.x, var_0.a.zz, var_0.c), vec4<f32>(arg_0.x, arg_0.x, 414f, arg_0.x), 0u).ww, !var_0.a), vec4<f32>(_wgslsmith_div_f32(1268f, -1291f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_f32(arg_0.x + var_0.d.x)), 71994u).xyy) & all(vec4<bool>(all(vec2<bool>(var_0.c.x, false)), u_input.b.x == u_input.b.x, true & !var_0.a.x, all(var_0.c.zxz)));
    return select(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.b.x, 49114u), reverseBits(var_0.b.x)), var_0.b.x, _wgslsmith_div_u32(var_0.b.x, ~var_0.b.x), _wgslsmith_clamp_u32(abs(1u), ~u_input.a, func_1(vec3<i32>(-4674i, var_2.x, u_input.b.x)))), ~firstLeadingBit(select(vec4<u32>(var_0.b.x, 21090u, var_0.b.x, var_0.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 106914u), var_0.a))), reverseBits(select(select(abs(vec4<u32>(var_0.b.x, 30962u, u_input.a, 4294967295u)), abs(vec4<u32>(u_input.a, u_input.a, 1u, 71340u)), select(false, var_0.a.x, var_0.c.x)), vec4<u32>(~var_0.b.x, u_input.a, var_0.b.x, ~65105u), var_0.a)), func_3(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_0.b.x) >> (var_0.b % vec3<u32>(32u)), vec3<u32>(var_0.b.x, u_input.a, var_0.b.x)), Struct_2(abs(abs(vec4<u32>(0u, 2443u, u_input.a, 25401u))), 0u, vec2<bool>(all(vec2<bool>(var_0.a.x, false)), true), !var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_1.x, 1455f, var_1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 1118f, 1142f, arg_0.x)))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~84196u, var_0.b.x), 3913u ^ min(var_0.b.x, var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(abs(~func_1(vec3<i32>(0i, u_input.b.x, -9181i))), select(1u, _wgslsmith_div_u32(18721u, (2343u ^ u_input.a) ^ ~u_input.a), true), ~38641u);
    let var_1 = ~(abs(var_0.zy) >> (min(max(max(var_0.yx, vec2<u32>(u_input.a, var_0.x)), ~vec2<u32>(33451u, 4294967295u)), vec2<u32>(1u, 0u)) % vec2<u32>(32u)));
    var_0 = vec3<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(func_2(vec3<f32>(847f, 2761f, -289f)), ~vec4<u32>(var_1.x, 19216u, 4294967295u, u_input.a) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(36202u, u_input.a, 46299u, var_1.x), vec4<u32>(0u, 0u, 2479u, u_input.a), vec4<u32>(0u, var_0.x, var_1.x, var_1.x)) % vec4<u32>(32u))), var_1.x);
    var var_2 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(91801u, ~(~var_1.x), 1u, ~countOneBits(var_1.x)), vec4<u32>(~u_input.a, select(u_input.a, 52399u & u_input.a, false), u_input.a, ~3524u)), 0u, select(vec2<bool>(all(vec4<bool>(true, true, true, false)), true), vec2<bool>(true, false), !vec2<bool>(func_3(vec3<u32>(u_input.a, 4294967295u, u_input.a), Struct_2(vec4<u32>(23768u, 48963u, var_0.x, var_0.x), var_0.x, vec2<bool>(true, true), vec4<bool>(false, false, false, true)), vec4<f32>(-1000f, 521f, 366f, -2171f), 1u).x, false)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.a.wxz, vec3<u32>(0u, 4294967295u, ~4294967295u)), func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))) ^ _wgslsmith_mod_vec3_i32(-vec3<i32>(17310i, u_input.b.x, -2147483647i), firstLeadingBit(vec3<i32>(3178i, u_input.b.x, u_input.b.x)))), ~min(_wgslsmith_mod_u32(4294967295u, var_1.x) << (~0u % 32u), _wgslsmith_mult_u32(var_2.a.x, reverseBits(4294967295u))));
    var var_3 = Struct_1(func_3(vec3<u32>(~49511u, countOneBits(_wgslsmith_div_u32(1678u, var_1.x)), 510u), Struct_2(abs(max(var_2.a, var_2.a)), var_0.x, vec2<bool>(var_2.c.x != false, !var_2.c.x), select(vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, true), vec4<bool>(true, var_2.c.x, true, false), any(var_2.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-423f, 458f, -756f, -953f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(909f, -665f, -500f, 617f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-738f, -1214f, -1084f, 714f))))), 61445u >> (_wgslsmith_mult_u32(var_2.a.x << (var_0.x % 32u), 1u) % 32u)), countOneBits(vec3<u32>(~16364u, 0u, 1u)) | vec3<u32>(_wgslsmith_dot_vec4_u32(var_2.a ^ var_2.a, var_2.a), ~4294967295u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(40057u, 1u, 108418u), vec3<u32>(7276u, 1u, 4342u)))), !var_2.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1679f)), _wgslsmith_f_op_f32(ceil(1486f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2351f), 1f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(260f, -1024f) - vec2<f32>(561f, -1083f)))))));
    var var_4 = Struct_1(select(vec4<bool>(!select(false, true, false), true, false || (var_1.x > var_2.b), true), select(select(func_3(var_2.a.wwy, Struct_2(vec4<u32>(var_2.a.x, var_3.b.x, 1u, var_2.b), 0u, var_2.c, vec4<bool>(false, var_3.c.x, false, var_3.c.x)), vec4<f32>(var_3.d.x, var_3.d.x, -1081f, var_3.d.x), 32605u), !var_2.d, true), func_3(vec3<u32>(11697u, u_input.a, var_0.x) << (var_2.a.wxx % vec3<u32>(32u)), Struct_2(var_2.a, var_2.a.x, var_3.a.yw, var_3.c), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1819f, var_3.d.x, -702f, var_3.d.x))), _wgslsmith_mult_u32(4294967295u, var_2.a.x)), var_2.d), var_3.a), countOneBits(_wgslsmith_div_vec3_u32(~var_2.a.xzx, var_3.b) << (~(~vec3<u32>(var_1.x, 22031u, 23954u)) % vec3<u32>(32u))), func_3(var_3.b, Struct_2(var_2.a, 1u, var_2.c, select(vec4<bool>(var_2.c.x, var_2.d.x, var_2.d.x, true), var_3.a, !var_3.c)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-871f, 1566f, -538f, var_3.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-649f, var_3.d.x, -851f, var_3.d.x), vec4<f32>(var_3.d.x, 293f, var_3.d.x, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, 284f, -1602f, -719f))), var_2.d)), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), -473f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

