struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(~28866u, Struct_1(-min(vec3<i32>(u_input.d, -2147483647i, u_input.b.x) << (u_input.c.zxy % vec3<u32>(32u)), vec3<i32>(-2147483647i, u_input.d, -2147483647i)), !all(vec3<bool>(false, false, true)) & (~u_input.a.x > countOneBits(u_input.a.x)), _wgslsmith_add_vec3_i32(firstLeadingBit(~vec3<i32>(54799i, u_input.b.x, u_input.b.x)), vec3<i32>(countOneBits(2147483647i), 13419i | u_input.b.x, 3076i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-503f + 629f), -628f, _wgslsmith_f_op_f32(-244f - -819f), -1736f) * vec4<f32>(_wgslsmith_f_op_f32(ceil(803f)), -695f, _wgslsmith_f_op_f32(ceil(153f)), _wgslsmith_f_op_f32(step(1341f, -923f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(-400f, 1000f, false)), _wgslsmith_f_op_f32(-759f * -141f), _wgslsmith_f_op_f32(sign(-147f)))))), Struct_1(_wgslsmith_mod_vec3_i32(~vec3<i32>(-76245i, 738i, u_input.b.x) >> (~vec3<u32>(1u, u_input.a.x, u_input.c.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(0i, u_input.d, u_input.d)), vec3<i32>(u_input.d, u_input.b.x, -2147483647i))), true, ~(~vec3<i32>(u_input.d, 0i, 9609i) & max(vec3<i32>(-37739i, u_input.d, u_input.d), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-504f, 716f, 1187f, 539f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(402f, 1000f, -191f, 1260f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 927f, 1000f))) - vec3<f32>(702f, -889f, 625f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1019f, -652f, 154f), vec3<f32>(-402f, 1370f, -805f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(868f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1068f, -332f) * -138f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(324f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-801f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -509f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(abs(-359f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2178f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(942f, 559f) - _wgslsmith_f_op_f32(select(-1489f, -1382f, false))), -1888f)));
    var var_1 = vec2<i32>(-var_0.c.c.x, 6800i ^ (var_0.c.a.x ^ u_input.d));
    var var_2 = _wgslsmith_f_op_f32(abs(var_0.b.d.x));
    var var_3 = select(!vec2<bool>(!all(vec4<bool>(var_0.c.b, false, var_0.b.b, var_0.c.b)), all(select(vec4<bool>(true, var_0.b.b, false, true), vec4<bool>(false, false, true, false), var_0.b.b))), vec2<bool>(!(var_0.a > 9473u), var_0.b.b), false);
    let var_4 = _wgslsmith_f_op_f32(max(var_0.c.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(986f * var_0.d.x) - var_0.d.x) + 1f) * _wgslsmith_f_op_f32(-var_0.d.x))));
    return ~(~(vec4<i32>(2147483647i, u_input.d, -2147483647i, 0i) | ~vec4<i32>(u_input.b.x, -12579i, u_input.b.x, -25630i))) | vec4<i32>(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_0.b.c.x, 1i))), countOneBits(u_input.d), reverseBits(i32(-1i) * -20727i), min(max(_wgslsmith_add_i32(var_0.c.a.x, var_0.b.c.x), ~var_0.b.a.x), var_0.b.a.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec4<f32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.c.x << ((35484u << (arg_1 % 32u)) % 32u), 35962u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(52650u, arg_1, 37567u, u_input.c.x), _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(1u, arg_1, arg_1, 893u))))), Struct_1(arg_2.yzz, arg_0.x, max(select(vec3<i32>(arg_2.x, u_input.d, arg_2.x), select(arg_2.www, vec3<i32>(1i, 0i, 0i), false), !vec3<bool>(true, arg_0.x, arg_0.x)), _wgslsmith_add_vec3_i32(arg_2.yyy, vec3<i32>(arg_2.x, arg_2.x, arg_2.x)) ^ (vec3<i32>(u_input.d, arg_2.x, 64645i) << (vec3<u32>(4294967295u, arg_1, 3930u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_3, _wgslsmith_f_op_vec4_f32(-arg_3))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1900f, arg_3.x, 611f) + vec3<f32>(1777f, arg_3.x, arg_3.x)) - arg_3.wxx) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(arg_3.yzz, vec3<f32>(arg_3.x, arg_3.x, -789f), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), vec3<f32>(622f, -1237f, -607f))))), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(func_3().x, ~33128i, -551i), vec3<i32>(41171i, i32(-1i) * -7317i, 5028i)), true, vec3<i32>(2468i, firstLeadingBit(0i), -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(arg_3, arg_3))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.xxz * _wgslsmith_f_op_vec3_f32(arg_3.zxw * vec3<f32>(554f, 1426f, 265f))))), arg_3.yx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(-625f, -3187f)), arg_3.x));
    let var_1 = true;
    var var_2 = ~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, abs(2147483647i), min(var_0.c.c.x, -21607i)), -vec3<i32>(u_input.d, -3491i, -24950i)));
    var_2 = arg_2.zxz;
    var_2 = countOneBits(reverseBits(min(arg_2.yyy, vec3<i32>(_wgslsmith_mult_i32(var_2.x, var_0.b.a.x), func_3().x, _wgslsmith_mult_i32(2147483647i, -1i)))));
    return -_wgslsmith_div_i32(max(countOneBits(0i), arg_2.x), ~1i) <= abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0.c.c, var_0.b.a), 0i), 0i << (~u_input.a.x % 32u)));
}

fn func_2() -> i32 {
    var var_0 = 383f;
    var var_1 = Struct_3(select(vec2<bool>(true, any(vec3<bool>(false, true, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), !func_4(vec4<bool>(true, true, true, true), max(26138u, 0u), func_3(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, -495f, -303f, 638f)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1836f);
    var var_2 = !vec2<bool>(true, ~u_input.c.x > 87442u);
    var var_3 = Struct_1(-select(vec3<i32>(u_input.b.x, -u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-12377i, -29528i), u_input.b)), vec3<i32>(-24534i, u_input.d << (0u % 32u), i32(-1i) * -2147483647i), vec3<bool>(true, true, true)), true, reverseBits(-vec3<i32>(-u_input.d, -u_input.d, 0i)), vec4<f32>(180f, -1261f, _wgslsmith_div_f32(-281f, _wgslsmith_f_op_f32(abs(262f))), _wgslsmith_f_op_f32(max(-496f, _wgslsmith_f_op_f32(f32(-1f) * -1130f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(895f)), _wgslsmith_f_op_f32(f32(-1f) * -980f)))), 503f, _wgslsmith_f_op_f32(abs(1000f))));
    return u_input.d;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = ~(~func_2());
    var var_1 = Struct_4(firstTrailingBit(~vec3<u32>(u_input.c.x, reverseBits(67139u), _wgslsmith_clamp_u32(arg_1.x, arg_1.x, 1u))));
    let var_2 = false && any(!(!select(arg_0.wyw, arg_0.zzz, false)));
    let var_3 = Struct_5(Struct_2(_wgslsmith_sub_u32(0u, u_input.c.x), Struct_1(_wgslsmith_mod_vec3_i32(arg_3.xyz, vec3<i32>(-2147483647i, u_input.d, u_input.d)), all(!vec3<bool>(arg_2, arg_2, arg_0.x)), arg_3.zwz, _wgslsmith_f_op_vec4_f32(vec4<f32>(1948f, 912f, -1393f, 760f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-958f, 538f, -974f, 1463f)))), vec3<f32>(184f, _wgslsmith_f_op_f32(trunc(675f)), -571f)), Struct_1(vec3<i32>(firstTrailingBit(1i), arg_3.x, _wgslsmith_div_i32(-13238i, var_0)), arg_0.x, vec3<i32>(var_0, u_input.b.x, var_0) ^ ~arg_3.zzx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(362f, -2716f, -512f, 2656f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -147f, -875f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(743f, 2877f, -1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1110f, _wgslsmith_f_op_f32(1589f * -487f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f - -1823f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1668f)), 1817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-721f))))), true, arg_3);
    var_1 = Struct_4(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.a.x, var_3.a.a) << (~u_input.c.x % 32u), ~21320u), 4294967295u, var_3.a.a ^ ~1u));
    return Struct_3(!arg_0.xz);
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)), _wgslsmith_f_op_f32(min(arg_1, arg_1)))) < arg_1);
    var_0 = false;
    var var_1 = 20861i;
    let var_2 = select(select(arg_0.a, select(func_1(vec4<bool>(false, false, true, false), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x), u_input.a.xyz), false | arg_0.a.x, ~vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.b.x)).a, select(vec2<bool>(arg_0.a.x, true), vec2<bool>(true, true), select(arg_0.a, arg_0.a, arg_0.a)), false), any(!vec3<bool>(arg_0.a.x, false, arg_0.a.x))), arg_0.a, true);
    var_1 = ~(func_2() ^ _wgslsmith_mult_i32(u_input.d, firstLeadingBit(-45574i)));
    return arg_0;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_5(Struct_2(arg_3.a.x, Struct_1(~vec3<i32>(14984i, u_input.b.x, -1i) & vec3<i32>(u_input.b.x, 24156i, 571i), !arg_0.x, abs(~vec3<i32>(u_input.b.x, u_input.b.x, -23513i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(366f, -1000f, -612f, 855f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1991f, -3176f, -1312f), vec3<f32>(1336f, -1006f, 701f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-319f, 127f, 1000f) * vec3<f32>(-466f, -624f, -1346f)))), Struct_1(vec3<i32>(u_input.b.x, reverseBits(-1i), func_2()), select(false, arg_0.x | true, !arg_0.x), func_3().xxw, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1315f, 241f, -1324f, 801f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1430f, 359f, -817f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1501f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-269f, 1309f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(1421f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -164f) - _wgslsmith_f_op_f32(1013f * 1408f)), 568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f + -365f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-322f, 1202f))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(728f, _wgslsmith_f_op_f32(step(-1074f, 835f))) + _wgslsmith_f_op_f32(1f + 626f)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(12038i, u_input.d, 0i, 54172i) >> (u_input.c % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(32027i, 48541i, 2147483647i, 2147483647i) & vec4<i32>(u_input.d, u_input.b.x, 1i, 55852i))), ((vec4<i32>(u_input.d, -1i, u_input.b.x, u_input.b.x) << (vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 0u) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u))) ^ vec4<i32>(-u_input.b.x, 1i, abs(38234i), -37645i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.e.x)) + -594f)) + -317f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 14049i;
    let var_1 = vec3<f32>(-586f, _wgslsmith_f_op_f32(func_6(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), func_5(func_1(vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 4294967295u, 1u), true, -vec4<i32>(33393i, u_input.d, u_input.d, u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-308f, -1000f)), -1002f)), vec3<u32>(u_input.a.x, 5161u, u_input.a.x & firstTrailingBit(u_input.a.x)), Struct_4(vec3<u32>(22591u, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.wxx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, -2179f, -442f, 1077f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -646f, var_1.x) * vec4<f32>(1097f, -1392f, 536f, -444f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, -747f, var_1.x, var_1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(978f, 787f, -254f, var_1.x), vec4<f32>(var_1.x, var_1.x, 1663f, var_1.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2079f, var_1.x, -640f, var_1.x))))), u_input.a);
}

