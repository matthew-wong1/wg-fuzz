struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(~51936i), -u_input.c, u_input.a.x | 1i), _wgslsmith_add_vec3_i32(vec3<i32>(~(u_input.a.x ^ u_input.c), -(u_input.a.x >> (4294967295u % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(25020i, u_input.c, 0i), vec3<i32>(u_input.a.x, 2147483647i, -30602i)), vec3<i32>(2147483647i, -21240i, u_input.c))), ~abs(-vec3<i32>(u_input.c, u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1528f) - -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(329f)) * _wgslsmith_f_op_f32(f32(-1f) * -1374f)));
    var var_2 = _wgslsmith_sub_vec3_i32(~select(~var_0, vec3<i32>(u_input.c, -2147483647i, 1i) ^ select(vec3<i32>(u_input.c, 19832i, 0i), var_0, vec3<bool>(false, false, false)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_mod_i32(u_input.c, 2503i), -34809i), countOneBits(var_0 ^ vec3<i32>(-2147483647i, var_0.x, 19928i)), vec3<i32>(~u_input.c, -2147483647i, var_0.x)));
    var var_3 = Struct_3(-3620i, _wgslsmith_div_i32(-var_2.x, ~(abs(u_input.a.x) ^ ~(-61763i))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f))), Struct_1(vec4<u32>(_wgslsmith_mult_u32(37666u, 0u), 57650u, ~56974u, u_input.b.x), _wgslsmith_mod_vec3_i32(-var_0, _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, 0i, var_0.x), var_0)), abs(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1599f, 1491f))), u_input.b), -8209i, 1f, vec4<bool>(all(vec4<bool>(true, true, true, false)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(step(-365f, -493f)) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), abs(vec3<i32>(-var_0.x, u_input.c, u_input.c)), max(_wgslsmith_mod_i32(_wgslsmith_add_i32(select(var_2.x, u_input.a.x, true), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, u_input.c, var_0.x, u_input.c), vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x))), 2147483647i), ~u_input.c));
    let var_4 = ~vec3<i32>(var_3.a, var_3.e, -4712i);
    return _wgslsmith_mult_i32(var_3.d.x ^ _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, -2147483647i), 1i, reverseBits(2147483647i)), u_input.c), 1i);
}

fn func_4(arg_0: vec4<i32>) -> u32 {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1147f), _wgslsmith_f_op_f32(f32(-1f) * -708f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2725f, _wgslsmith_f_op_f32(f32(-1f) * -1632f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1464f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f + _wgslsmith_f_op_f32(1122f + 1264f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -167f) - 1f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-274f)))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 355f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1187f - -692f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1031f, _wgslsmith_f_op_f32(var_1.x + var_1.x), -347f, var_1.x)))));
    let var_3 = Struct_3(-11471i, _wgslsmith_mult_i32(45984i, u_input.a.x | arg_0.x), Struct_2(var_2.x, Struct_1(max(countOneBits(vec4<u32>(24797u, u_input.d.x, 2153u, 0u)), firstTrailingBit(vec4<u32>(u_input.d.x, 37342u, 1u, u_input.d.x))), -arg_0.yxz, ~(1138u << (0u % 32u)), var_2.x, reverseBits(u_input.b & u_input.b)), ~(1i & abs(u_input.c)), var_2.x, var_0), arg_0.wyz, reverseBits(arg_0.x));
    var_1 = var_2.xy;
    return 37742u;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec3<f32> {
    let var_0 = -60574i;
    let var_1 = func_4(vec4<i32>(abs(~_wgslsmith_sub_i32(59971i, 36478i)), func_3(), _wgslsmith_clamp_i32(u_input.c, var_0, var_0), -1i));
    let var_2 = ~vec4<u32>(u_input.b.x >> (var_1 % 32u), 16961u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, var_1), ~var_1) & u_input.b.x, _wgslsmith_add_u32(u_input.d.x, 1u ^ abs(u_input.d.x)));
    let var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, func_4(~_wgslsmith_div_vec4_i32(vec4<i32>(-56913i, 20684i, 0i, -7184i), vec4<i32>(u_input.a.x, u_input.c, u_input.c, 53779i)))), ~_wgslsmith_mult_vec2_u32(~var_2.zw & var_2.yx, vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(4294967295u, 1u))), ~(u_input.d >> (vec2<u32>(reverseBits(4294967295u), _wgslsmith_mod_u32(var_1, var_2.x)) % vec2<u32>(32u))));
    let var_4 = var_1;
    return vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(-373f)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = !(!arg_2.x);
    return Struct_3(-u_input.a.x, -firstTrailingBit(u_input.a.x), Struct_2(1085f, Struct_1(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 6187u, 1u, u_input.d.x), vec4<u32>(11287u, 35833u, 4294967295u, u_input.d.x))), ~arg_0.wxz, 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(502f * -226f)), ~vec2<u32>(u_input.d.x, 1u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 15572u), vec2<u32>(u_input.d.x, u_input.b.x)) % vec2<u32>(32u))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(887f, _wgslsmith_f_op_f32(-2226f + arg_1.x), arg_2.x)) - arg_1.x), !vec4<bool>(var_0, false, any(vec4<bool>(arg_2.x, arg_2.x, true, false)), any(vec3<bool>(var_0, true, false)))), vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(max(-35258i, ~0i), _wgslsmith_mult_i32(i32(-1i) * -51777i, 1i)), arg_0.x), -29066i);
}

fn func_1() -> vec2<u32> {
    var var_0 = vec2<u32>(u_input.d.x, 27225u) ^ u_input.d;
    let var_1 = func_5(_wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(abs(251i)), u_input.a.x ^ (u_input.c << (74495u % 32u)), u_input.c, reverseBits(-18782i)), -(~(vec4<i32>(-48565i, 1i, 25664i, u_input.a.x) | vec4<i32>(u_input.c, -21965i, u_input.a.x, 42934i)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-846f, 1030f, -531f))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1052f, -1000f, 144f), _wgslsmith_f_op_vec3_f32(func_2(1810f, false)))))), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)))), select(select(vec2<bool>(true, any(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)), vec2<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), !select(vec2<bool>(false, false), vec2<bool>(false, false), u_input.b.x <= var_0.x)));
    var var_2 = Struct_1(abs(func_5(countOneBits(countOneBits(vec4<i32>(u_input.c, var_1.c.c, u_input.a.x, -1i))), vec3<f32>(var_1.c.d, var_1.c.b.d, _wgslsmith_f_op_f32(-186f - -611f)), var_1.c.e.yw).c.b.a), vec3<i32>(-33274i, -min(var_1.d.x, select(var_1.c.c, -28260i, false)), var_1.e), reverseBits(var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -892f), var_1.c.b.e);
    let var_3 = func_5(vec4<i32>(_wgslsmith_sub_i32(reverseBits(u_input.a.x), ~2147483647i), _wgslsmith_add_i32(abs(var_2.b.x), -9151i), _wgslsmith_div_i32(var_2.b.x, 1i), _wgslsmith_clamp_i32(-72298i, 1i, 2147483647i >> (1u % 32u))) >> ((_wgslsmith_mult_vec4_u32(var_2.a, vec4<u32>(var_1.c.b.a.x, var_0.x, 1u, u_input.d.x)) & func_5(vec4<i32>(var_1.d.x, var_2.b.x, u_input.c, -6906i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.b.d, 1144f, var_2.d)), select(vec2<bool>(var_1.c.e.x, var_1.c.e.x), vec2<bool>(true, true), var_1.c.e.x)).c.b.a) % vec4<u32>(32u)), vec3<f32>(1000f, var_2.d, _wgslsmith_f_op_f32(select(var_1.c.a, var_1.c.d, any(vec2<bool>(var_1.c.e.x, false)) || true))), select(vec2<bool>(!var_1.c.e.x, any(var_1.c.e.xw)), select(!var_1.c.e.zy, vec2<bool>(all(var_1.c.e.wyx), select(true, var_1.c.e.x, true)), vec2<bool>(!var_1.c.e.x, var_1.c.e.x)), var_1.c.e.zz)).c;
    let var_4 = func_5(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-2147483647i, select(-68703i, 2147483647i, true), 0i, -2147483647i | var_1.e), countOneBits(~vec4<i32>(var_3.b.b.x, var_1.b, var_3.b.b.x, var_3.c)), var_3.e.x), vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.b ^ var_3.b.b, var_1.d), var_1.e, -_wgslsmith_div_i32(-2147483647i, 25859i), ~2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.d, var_3.b.d, var_3.b.d) - vec3<f32>(var_2.d, 451f, -1876f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2413f, -1119f, var_1.c.b.d))))), vec2<bool>(true, true)).c;
    return ~var_1.c.b.a.wx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var_0 = func_1();
    var_0 = u_input.d;
    var_0 = vec2<u32>(27212u, ~1u);
    var var_1 = func_5(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -reverseBits(vec4<i32>(-1i, u_input.a.x, -1i, u_input.c)), vec4<i32>(~u_input.c, u_input.c, func_3(), u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1889f * -832f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -442f) + _wgslsmith_f_op_f32(555f * -407f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1960f, -111f), _wgslsmith_f_op_f32(f32(-1f) * -473f), false)))), vec2<bool>(!(select(true, true, true) || true), true)).c;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) - -1338f))), func_5(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -(var_1.b.b.x | -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(min(-748f, 1152f)), var_1.b.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(329f))))), select(select(func_5(vec4<i32>(-55118i, 1i, 0i, var_1.c), vec3<f32>(-1724f, var_1.a, -1452f), vec2<bool>(false, false)).c.e.zz, vec2<bool>(true, false), false), !vec2<bool>(var_1.e.x, false), false)).c.b, 86037i & _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, u_input.c, u_input.a.x), countOneBits(var_1.b.b), !var_1.e.zww), -_wgslsmith_mod_vec3_i32(vec3<i32>(15937i, 12762i, -2147483647i), var_1.b.b)), -507f, vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x != any(var_1.e.yyx)));
    var_0 = firstLeadingBit(countOneBits(vec2<u32>(~(~var_0.x), ~_wgslsmith_div_u32(var_2.b.e.x, var_2.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_2.b.d))));
}

