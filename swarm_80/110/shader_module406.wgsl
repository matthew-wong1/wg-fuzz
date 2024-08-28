struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    let var_0 = Struct_3(arg_2, _wgslsmith_add_u32(firstTrailingBit(1u), 30584u), Struct_2(17867i >> (countOneBits(~arg_1.c.x) % 32u)), vec2<bool>(any(select(select(vec4<bool>(true, true, arg_2.b.x, true), vec4<bool>(arg_2.b.x, true, false, false), vec4<bool>(true, arg_1.b.x, arg_2.b.x, arg_2.b.x)), select(vec4<bool>(true, arg_1.d, true, true), vec4<bool>(true, true, arg_2.d, arg_2.b.x), arg_2.b.x), !vec4<bool>(arg_2.d, true, arg_1.b.x, arg_1.d))), select(all(arg_1.b), true, arg_2.d)), select(vec3<bool>(true, arg_1.d, ~u_input.a.x <= arg_1.a.x), select(select(!vec3<bool>(true, arg_1.d, arg_2.b.x), !vec3<bool>(arg_2.b.x, false, true), any(vec3<bool>(arg_1.d, arg_1.b.x, true))), select(!vec3<bool>(arg_2.d, arg_2.d, arg_2.b.x), vec3<bool>(true, false, arg_1.b.x), all(vec3<bool>(arg_1.b.x, true, arg_1.d))), any(select(vec3<bool>(true, arg_2.b.x, false), vec3<bool>(false, false, arg_2.d), false))), select(vec3<bool>(true, arg_2.b.x, !arg_2.b.x), !select(vec3<bool>(arg_2.d, false, true), vec3<bool>(arg_2.b.x, true, arg_2.b.x), true), arg_1.d)));
    let var_1 = arg_2.b;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3, arg_3)) - -993f), 1471f, arg_0), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, -324f, arg_0), vec3<f32>(arg_0, arg_3, arg_0))))))), vec3<f32>(-611f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(214f - arg_3), _wgslsmith_f_op_f32(378f * arg_3))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = true;
    let var_4 = arg_1.a.x >> (_wgslsmith_mult_u32(arg_1.e, _wgslsmith_clamp_u32(arg_1.c.x, 27261u, ~44480u)) % 32u);
    return select(vec2<bool>(true, true), select(arg_1.b, select(var_1, select(var_0.a.b, select(vec2<bool>(var_3, var_0.d.x), vec2<bool>(false, arg_1.b.x), false), select(arg_2.b, var_0.e.xz, arg_1.d)), !var_0.d), arg_2.b), all(select(vec3<bool>(var_1.x, var_0.d.x, true), !vec3<bool>(var_3, arg_1.b.x, false), vec3<bool>(all(var_0.e.yz), true, true))));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_1(arg_0.a.a, !(!func_3(_wgslsmith_f_op_f32(ceil(-301f)), arg_0.a, Struct_1(arg_0.a.a, vec2<bool>(arg_0.a.d, arg_0.d.x), vec3<u32>(36715u, arg_0.a.c.x, 0u), arg_0.a.d, arg_0.a.c.x), _wgslsmith_f_op_f32(-1378f - 239f))), arg_0.a.c, arg_0.d.x, 20872u);
    let var_1 = ~((~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.e, 4294967295u), arg_0.a.c.zy, vec2<u32>(17214u, 13661u)) >> (var_0.c.zz % vec2<u32>(32u))) >> ((~(~var_0.c.zy) | abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.c.x, 4294967295u), var_0.c.yy, arg_0.a.c.yx))) % vec2<u32>(32u)));
    var_0 = Struct_1(max(arg_0.a.a, arg_0.a.a), select(!select(vec2<bool>(var_0.b.x, var_0.b.x), func_3(-1574f, arg_0.a, arg_0.a, 219f), true), var_0.b, -_wgslsmith_div_i32(arg_0.c.a, u_input.a.x) <= 1i), ~arg_0.a.c, true, abs(var_1.x) & ~abs(~var_0.c.x));
    let var_2 = -countOneBits(u_input.a.x);
    let var_3 = arg_0.c;
    return _wgslsmith_f_op_f32(-317f + -1000f);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-548f, -669f) * vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2598f, -913f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(arg_2, -121f)), 1000f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1331f, arg_2) + vec2<f32>(arg_2, arg_2)), vec2<f32>(arg_2, -222f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(842f, arg_2) * vec2<f32>(arg_2, arg_2))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -1268f), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-454f, 788f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1684f, _wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(arg_1.a.a, vec2<bool>(arg_1.a.b.x, true), arg_1.a.c, true, 0u), 0u, Struct_2(0i), arg_1.e.zy, arg_1.e))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2338f, -707f))) + vec2<f32>(_wgslsmith_div_f32(-319f, 888f), _wgslsmith_f_op_f32(arg_2 - 1197f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), 274f)), _wgslsmith_f_op_f32(-var_0.x), false)), _wgslsmith_f_op_f32(abs(var_0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(ceil(-897f)))))));
    let var_1 = arg_1.a.c.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (!(-1i == u_input.a.x) | (true && !any(vec4<bool>(false, false, true, true)))) | ((!func_1(u_input.a.x, Struct_3(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -31224i), vec2<bool>(true, false), vec3<u32>(826u, 10817u, 0u), false, 4294967295u), 42691u, Struct_2(-1i), vec2<bool>(true, true), vec3<bool>(true, true, true)), 908f) || true) & any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, false, false))));
    var var_1 = -2968f;
    let var_2 = Struct_4(vec3<bool>(!all(vec4<bool>(true, false, true, true)), true || func_3(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -2411i), vec2<bool>(true, false), vec3<u32>(1u, 2999u, 4294967295u), true, 4294967295u), 1u, Struct_2(-12367i), vec2<bool>(false, true), vec3<bool>(true, false, true)))), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -4627i), vec2<bool>(false, true), vec3<u32>(1u, 85850u, 4294967295u), true, 50495u), Struct_1(vec3<i32>(u_input.a.x, -38868i, 33984i), vec2<bool>(true, false), vec3<u32>(67214u, 1u, 0u), false, 41055u), _wgslsmith_f_op_f32(f32(-1f) * -725f)).x, any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), select((i32(-1i) * -u_input.a.x) == 1i, true, !all(vec2<bool>(true, false))), func_3(_wgslsmith_f_op_f32(min(-701f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(432f, -609f, false)))))), Struct_1(vec3<i32>(-3723i, _wgslsmith_mod_i32(0i, u_input.a.x), u_input.a.x ^ u_input.a.x), vec2<bool>(true, false), ~(~vec3<u32>(1u, 75526u, 1u)), true, firstTrailingBit(1u)), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -14041i, u_input.a.x) & vec3<i32>(-21814i, u_input.a.x, u_input.a.x), vec3<i32>(46875i, u_input.a.x, u_input.a.x) >> (vec3<u32>(0u, 58282u, 1u) % vec3<u32>(32u))), vec2<bool>(true, all(vec2<bool>(true, true))), vec3<u32>(1u, 47953u, 46620u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), false, 41372u), 335f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(485f, -868f)), _wgslsmith_f_op_f32(select(442f, -1907f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)))), Struct_2(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)));
    let var_3 = Struct_3(Struct_1(~vec3<i32>(-u_input.a.x, _wgslsmith_div_i32(u_input.a.x, var_2.e.a), countOneBits(u_input.a.x)), func_3(_wgslsmith_f_op_f32(-var_2.d), Struct_1(vec3<i32>(-33281i, var_2.e.a, 1679i), func_3(var_2.d, Struct_1(vec3<i32>(-20903i, 48148i, var_2.e.a), var_2.a.zz, vec3<u32>(65607u, 30202u, 19760u), true, 0u), Struct_1(vec3<i32>(var_2.e.a, 26896i, var_2.e.a), var_2.a.yy, vec3<u32>(0u, 40314u, 1u), false, 1u), 611f), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 31555u, 4294967295u)), true, ~0u), Struct_1(-vec3<i32>(var_2.e.a, var_2.e.a, var_2.e.a), !vec2<bool>(false, var_2.c.x), vec3<u32>(1u, 0u, 17755u), func_1(u_input.a.x, Struct_3(Struct_1(vec3<i32>(u_input.a.x, var_2.e.a, var_2.e.a), var_2.c, vec3<u32>(13482u, 23478u, 1u), false, 29674u), 1u, Struct_2(u_input.a.x), vec2<bool>(false, false), var_2.a), var_2.d), max(28940u, 4294967295u)), 202f), (select(vec3<u32>(0u, 1u, 1u), vec3<u32>(54384u, 4294967295u, 8380u), var_2.c.x) & vec3<u32>(1u, 1u, 1u)) >> (vec3<u32>(_wgslsmith_div_u32(22646u, 12433u), 1u, ~1u) % vec3<u32>(32u)), var_2.a.x, select(max(_wgslsmith_mod_u32(15729u, 1u), _wgslsmith_add_u32(9781u, 1u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(53653u, 4294967295u), 129390u), any(var_2.c) && true)), 1u, Struct_2(u_input.a.x), select(var_2.c, vec2<bool>(all(!vec3<bool>(var_2.b, false, var_2.a.x)), false), false), var_2.a);
    let var_4 = var_3.c;
    var var_5 = var_2;
    var var_6 = -reverseBits(vec2<i32>(1i, var_4.a));
    var var_7 = firstTrailingBit(vec4<u32>(var_3.b, countOneBits(abs(~var_3.b)), var_3.b, var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(countOneBits(-abs(var_6.x)), select(0i, _wgslsmith_mod_i32(var_6.x, 79508i), false), abs(-1i)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_5.d, var_2.d, -1307f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(459f, 816f, var_5.d))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-693f, var_5.d, 1815f)))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(112f, var_2.d, var_5.d, var_2.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.d, var_2.d, var_5.d, var_2.d))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1218f, -769f, 1000f, 1429f)) + vec4<f32>(var_5.d, var_2.d, 189f, 1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-876f, var_5.d, var_5.d, var_5.d), vec4<f32>(-305f, var_2.d, -1173f, -2143f))))), _wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.d, var_2.d))))));
}

