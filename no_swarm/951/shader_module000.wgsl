struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec3_u32(u_input.a, ~_wgslsmith_mod_vec3_u32(~u_input.a, vec3<u32>(1u, u_input.a.x, 0u) | u_input.a) | _wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, u_input.a.x, ~69383u), min(abs(u_input.a), ~vec3<u32>(24061u, u_input.a.x, 42559u))));
    let var_1 = select(vec2<bool>(true, true), select(vec2<bool>(!(u_input.b <= -2147483647i), !(1u <= u_input.a.x)), vec2<bool>(~u_input.a.x <= _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, var_0.x)), 41372u < var_0.x), !(!all(vec4<bool>(false, true, true, false)))), vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), select(all(vec3<bool>(true, false, false)) && true, ~0u >= _wgslsmith_dot_vec2_u32(vec2<u32>(51710u, 32119u), vec2<u32>(68340u, u_input.a.x)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))))));
    var var_2 = !vec4<bool>(true, any(select(select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(false, var_1.x, true, true), var_1.x), vec4<bool>(true, true, true, var_1.x), true)), !var_1.x, false);
    return ~_wgslsmith_sub_vec2_u32(~(~var_0.yz), ~vec2<u32>(var_0.x, 13782u)) | u_input.a.zx;
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a + 536f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(134f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2272f, arg_0.c.a))))));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(2504f)), _wgslsmith_f_op_f32(-arg_0.c.a))))), _wgslsmith_f_op_f32(select(arg_0.c.a, arg_0.c.a, false))));
    let var_1 = vec4<i32>(i32(-1i) * -_wgslsmith_add_i32(1i, abs(u_input.b)), arg_0.b.x, -21766i, -_wgslsmith_add_i32(u_input.b, 0i));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -231f);
    var var_2 = _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(3691u, u_input.a.x), _wgslsmith_mod_u32(arg_0.c.c.x, u_input.a.x), ~5775u), u_input.a)), 49904u);
    return select(vec4<bool>(all(!select(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.c.b.x), vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, arg_0.a.x, true), arg_0.c.b)), arg_0.a.x | !any(vec2<bool>(arg_0.a.x, arg_0.a.x)), !(!(arg_0.a.x == arg_0.c.b.x)), !((753f <= arg_0.c.a) && true)), arg_0.a, true);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(f32(-1f) * -1854f)), select(select(select(!vec4<bool>(false, arg_2.b.x, arg_2.b.x, arg_2.b.x), select(arg_2.b, arg_2.b, arg_2.b.x), any(vec2<bool>(arg_2.b.x, false))), select(!vec4<bool>(arg_2.b.x, true, arg_2.b.x, false), arg_2.b, arg_2.b.x & false), any(select(vec4<bool>(arg_2.b.x, arg_2.b.x, false, false), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, true), vec4<bool>(false, true, false, false)))), arg_2.b, any(select(select(arg_2.b, vec4<bool>(false, true, true, false), true), select(vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, true), vec4<bool>(true, arg_2.b.x, arg_2.b.x, arg_2.b.x), arg_2.b.x), !arg_2.b.x))), ~abs(~(~arg_2.c)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) - _wgslsmith_f_op_f32(-arg_2.a)), vec4<bool>(false, true && (true | (arg_2.b.x && true)), arg_2.b.x, all(arg_2.b)), u_input.a.xy);
    let var_1 = true;
    var_0 = Struct_1(arg_2.a, arg_2.b, arg_2.c);
    var_0 = arg_2;
    return Struct_2(func_4(Struct_2(vec4<bool>(arg_2.b.x, true, true, false), vec2<i32>(u_input.b, u_input.b) >> (func_3() % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-var_0.a), vec4<bool>(var_1, var_0.b.x, false, false), min(var_0.c, vec2<u32>(var_0.c.x, 46158u))))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -33036i), vec2<i32>(arg_0, u_input.b))), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(39577i, u_input.b), vec2<i32>(u_input.b, -1i))), vec2<i32>(arg_0, -4531i)), arg_2);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = var_0.c.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-787f)), 203f), vec2<f32>(-986f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1, 468f), _wgslsmith_f_op_f32(trunc(-669f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), 414f)));
    var var_3 = 1i;
    var_3 = firstTrailingBit(i32(-1i) * -1i);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(167f, 676f) - arg_1.c.a) * var_0.c.a)), !var_0.a, func_3());
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, arg_1.c.x), abs(arg_1.c))), _wgslsmith_sub_u32(63758u, ~(_wgslsmith_mult_u32(u_input.a.x, 16424u) << (~u_input.a.x % 32u))));
    let var_1 = func_2(_wgslsmith_dot_vec4_i32(-(~reverseBits(vec4<i32>(u_input.b, -23216i, -10404i, 1i))), firstLeadingBit(-vec4<i32>(29675i, -77769i, -52703i, arg_0.b.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(23284u, ~4936u, ~10378u, 11958u), vec4<u32>(arg_1.c.x, ~u_input.a.x, arg_2.c.x ^ arg_3.x, _wgslsmith_mult_u32(arg_0.c.c.x, 15526u))), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(arg_0.b.x, arg_0.b.x, -46234i), vec3<i32>(-74400i, arg_0.b.x, u_input.b), vec3<bool>(true, false, arg_0.a.x)) << (abs(vec3<u32>(arg_3.x, arg_2.c.x, 4294967295u)) % vec3<u32>(32u))), ~arg_0.c.c.x, Struct_1(714f, vec4<bool>(all(vec2<bool>(arg_0.c.b.x, true)), false, false, any(arg_0.a.wzz)), ~(vec2<u32>(arg_0.c.c.x, arg_3.x) & vec2<u32>(96013u, 35858u)))).c);
    var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.c.c.x, _wgslsmith_mod_u32(u_input.a.x, var_1.c.c.x)) ^ 7814u, _wgslsmith_mod_u32(24508u, 44957u)) << (_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.x, arg_0.c.c.x, arg_2.c.x), u_input.a), 1u) % 32u);
    var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~arg_1.c.x, ~_wgslsmith_div_u32(9093u, 1u)), u_input.a.zx);
    var_0 = _wgslsmith_mult_u32(countOneBits(~abs(4294967295u >> (arg_1.c.x % 32u))), reverseBits(func_5(_wgslsmith_sub_i32(2147483647i, var_1.b.x) >> (18225u % 32u), var_1, _wgslsmith_sub_vec4_i32(select(vec4<i32>(17399i, 1i, -38794i, 0i), vec4<i32>(var_1.b.x, u_input.b, 2147483647i, u_input.b), var_1.a), abs(vec4<i32>(var_1.b.x, u_input.b, u_input.b, 51335i)))).c.x));
    return Struct_2(vec4<bool>(select(true, true, arg_0.c.b.x), false, false, arg_2.b.x), vec2<i32>(~_wgslsmith_mult_i32(firstTrailingBit(-10334i), -arg_0.b.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b)), Struct_1(_wgslsmith_f_op_f32(-arg_1.a), vec4<bool>(!func_2(arg_0.b.x, arg_2.c.x, var_1.c).c.b.x, all(func_2(-1544i, u_input.a.x, arg_0.c).c.b), !arg_2.b.x, true), ~(~(~vec2<u32>(4294967295u, 41370u)))));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = -767f;
    var var_1 = func_6(arg_1, func_5(arg_1.b.x, func_2(36759i, 1u, Struct_1(arg_1.c.a, arg_1.a, vec2<u32>(105634u, 1u))), vec4<i32>(arg_1.b.x, ~1i, ~11972i, 48851i) | -_wgslsmith_add_vec4_i32(vec4<i32>(-2316i, u_input.b, arg_1.b.x, -1i), vec4<i32>(u_input.b, u_input.b, arg_1.b.x, arg_1.b.x))), arg_1.c, ~vec4<u32>(u_input.a.x, arg_0, arg_0, ~arg_1.c.c.x) & ~select(vec4<u32>(arg_0, 4294967295u, u_input.a.x, 46574u), reverseBits(vec4<u32>(2180u, u_input.a.x, 4294967295u, 128467u)), any(vec3<bool>(false, arg_1.c.b.x, true))));
    let var_2 = select(false, true, arg_1.a.x);
    var var_3 = func_2(var_1.b.x, ~(~u_input.a.x), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.c.a - -1218f))), arg_1.c.b, _wgslsmith_add_vec2_u32(vec2<u32>(var_1.c.c.x, 60506u), var_1.c.c)));
    var var_4 = ~select(abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(-8985i, 1064i, 2147483647i), vec3<i32>(2147483647i, 1i, var_3.b.x))), -vec3<i32>(firstTrailingBit(-2147483647i), u_input.b, u_input.b), func_2(arg_1.b.x, u_input.a.x, func_5(1i << (0u % 32u), func_2(-30961i, var_1.c.c.x, var_3.c), firstLeadingBit(vec4<i32>(u_input.b, -1i, -6072i, 2147483647i)))).a.x);
    return vec2<i32>(1i, 1i >> ((76630u ^ u_input.a.x) % 32u));
}

fn func_7(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = arg_0.c;
    let var_1 = !any(var_0.b.ywz);
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~arg_2.x, ~21109u), max(0u, arg_2.x));
    let var_3 = !var_0.b.x;
    var var_4 = arg_1.wzw;
    return Struct_1(_wgslsmith_f_op_f32(-arg_0.c.a), vec4<bool>(all(!var_0.b), var_0.b.x, func_6(Struct_2(!arg_0.a, arg_0.b, Struct_1(arg_0.c.a, vec4<bool>(false, false, var_0.b.x, false), arg_0.c.c)), Struct_1(392f, arg_0.a, arg_2.xz), Struct_1(_wgslsmith_div_f32(arg_1.x, arg_1.x), var_0.b, vec2<u32>(arg_2.x, 0u)), arg_2).c.b.x, false), ~(vec2<u32>(countOneBits(arg_2.x), _wgslsmith_dot_vec4_u32(arg_2, arg_2)) << (vec2<u32>(var_2, arg_0.c.c.x) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<bool>(true, min(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, 0u)) <= u_input.a.x, true, any(vec3<bool>(false, true, true)) & (u_input.a.x != ~u_input.a.x)), vec2<i32>(u_input.b, _wgslsmith_mod_i32(u_input.b, 4182i)), func_7(Struct_2(vec4<bool>(true, true, 0i >= u_input.b, 1u != u_input.a.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), func_1(44762u, Struct_2(vec4<bool>(false, true, true, true), vec2<i32>(-24693i, -1i), Struct_1(633f, vec4<bool>(true, true, false, true), vec2<u32>(u_input.a.x, 4294967295u)))), abs(vec2<i32>(u_input.b, -39918i))), Struct_1(_wgslsmith_f_op_f32(1022f - -1524f), vec4<bool>(true, false, true, false), ~vec2<u32>(u_input.a.x, 0u))), vec4<f32>(528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-339f * -821f)), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 35173u, u_input.a.x, 1u)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(63568u, u_input.a.x, 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(117330u, 4294967295u, u_input.a.x, 0u), vec4<u32>(20313u, 10807u, 1u, 0u)), ~vec4<u32>(0u, 8384u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))));
    var var_1 = -firstLeadingBit(func_1(~var_0.c.c.x, Struct_2(vec4<bool>(var_0.c.b.x, var_0.c.b.x, var_0.a.x, false), var_0.b, var_0.c)).x) | -1i;
    let var_2 = Struct_2(var_0.a, _wgslsmith_mult_vec2_i32(~(-vec2<i32>(var_0.b.x, u_input.b)) << (_wgslsmith_sub_vec2_u32(abs(u_input.a.zy), var_0.c.c) % vec2<u32>(32u)), var_0.b), Struct_1(_wgslsmith_div_f32(var_0.c.a, _wgslsmith_f_op_f32(var_0.c.a * _wgslsmith_div_f32(410f, 1000f))), func_4(Struct_2(var_0.a, vec2<i32>(1i, 0i), Struct_1(199f, vec4<bool>(var_0.a.x, true, var_0.c.b.x, var_0.a.x), var_0.c.c))), u_input.a.yx));
    var var_3 = countOneBits(u_input.b);
    var_0 = Struct_2(select(var_0.a, func_5(-1i, func_6(var_2, Struct_1(var_2.c.a, vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), var_0.c.c), Struct_1(203f, var_2.c.b, var_2.c.c), vec4<u32>(0u, 9808u, u_input.a.x, 16828u)), vec4<i32>(-var_0.b.x, u_input.b, var_0.b.x & 26865i, var_0.b.x)).b, vec4<bool>(any(vec3<bool>(var_0.c.b.x, false, true)) || false, func_6(var_2, Struct_1(-196f, var_2.c.b, vec2<u32>(var_0.c.c.x, u_input.a.x)), func_5(-4254i, Struct_2(vec4<bool>(false, var_0.a.x, true, false), vec2<i32>(var_0.b.x, -45330i), var_0.c), vec4<i32>(16162i, u_input.b, var_2.b.x, var_0.b.x)), max(vec4<u32>(1u, var_0.c.c.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 26369u, u_input.a.x, 27879u))).c.b.x, var_2.a.x, all(var_0.a.xyz) && any(var_2.c.b.zz))), var_0.b, func_2(-1i, ~(~_wgslsmith_div_u32(u_input.a.x, var_0.c.c.x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.a * var_2.c.a), -1208f), vec4<bool>(func_4(var_2).x, true, true != var_0.a.x, false), ~(~vec2<u32>(21928u, u_input.a.x)))).c);
    let var_4 = select(var_2.b ^ var_2.b, firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-6762i, u_input.b, 1i, u_input.b), ~vec4<i32>(var_2.b.x, -54318i, var_0.b.x, -22086i)), 0i)), func_5(-u_input.b, func_2(abs(-var_0.b.x), 41937u, Struct_1(_wgslsmith_f_op_f32(var_0.c.a * var_0.c.a), select(var_0.a, vec4<bool>(var_0.c.b.x, var_0.c.b.x, true, var_0.c.b.x), var_2.a.x), _wgslsmith_mod_vec2_u32(var_0.c.c, var_2.c.c))), ((vec4<i32>(27048i, var_0.b.x, u_input.b, -11280i) & vec4<i32>(var_0.b.x, 2147483647i, 0i, var_0.b.x)) | (vec4<i32>(u_input.b, 1i, var_0.b.x, -2147483647i) & vec4<i32>(var_2.b.x, -41010i, -1i, 2147483647i))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, u_input.b, -35495i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_2.b.x, -2147483647i, var_2.b.x), vec4<i32>(41056i, 0i, var_2.b.x, -2147483647i)))).b.x);
    let var_5 = Struct_1(var_0.c.a, var_0.a, _wgslsmith_mod_vec2_u32(vec2<u32>(~0u, _wgslsmith_mod_u32(~24417u, 4294967295u & u_input.a.x)), min(~u_input.a.zz, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.c.c.x), vec2<u32>(u_input.a.x, 41562u)), vec2<u32>(1u, 79979u), ~vec2<u32>(u_input.a.x, 71944u)))));
    let var_6 = Struct_2(func_6(Struct_2(!vec4<bool>(false, false, var_0.c.b.x, false), -vec2<i32>(var_2.b.x, var_2.b.x), func_2(2147483647i << (var_2.c.c.x % 32u), u_input.a.x, var_2.c).c), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-200f, -182f), _wgslsmith_f_op_f32(abs(var_5.a))), !var_2.a, ~vec2<u32>(var_5.c.x, var_0.c.c.x) | (vec2<u32>(1u, u_input.a.x) & vec2<u32>(var_0.c.c.x, 4294967295u))), func_2(-7632i, ~22233u, Struct_1(func_5(-24256i, Struct_2(vec4<bool>(var_0.c.b.x, false, true, var_5.b.x), vec2<i32>(-2147483647i, -39953i), Struct_1(var_2.c.a, vec4<bool>(false, var_2.c.b.x, false, true), vec2<u32>(4294967295u, 67374u))), vec4<i32>(var_0.b.x, -12475i, -1i, -15528i)).a, func_5(1i, var_2, vec4<i32>(var_0.b.x, 1i, u_input.b, 60205i)).b, ~var_5.c)).c, vec4<u32>(_wgslsmith_sub_u32(abs(23413u), abs(var_2.c.c.x)), firstLeadingBit(countOneBits(var_2.c.c.x)), ~firstTrailingBit(4294967295u), reverseBits(54687u))).a, var_0.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(891f - -796f)), select(var_5.b, select(func_5(1i, var_2, vec4<i32>(u_input.b, u_input.b, var_4.x, 2147483647i)).b, var_5.b, var_0.a), func_4(Struct_2(var_0.a, vec2<i32>(var_4.x, -26878i), Struct_1(var_0.c.a, var_2.c.b, var_0.c.c)))), ~(~func_6(var_2, var_2.c, Struct_1(-202f, vec4<bool>(var_0.c.b.x, true, false, true), vec2<u32>(0u, 0u)), vec4<u32>(var_5.c.x, 0u, var_0.c.c.x, var_5.c.x)).c.c)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(vec4<u32>(~u_input.a.x, ~var_0.c.c.x, var_6.c.c.x ^ u_input.a.x, func_3().x))), ~vec3<u32>(~101067u, var_5.c.x, 4294967295u), var_2.b.x, select(~(~(vec2<u32>(0u, 0u) << (vec2<u32>(var_2.c.c.x, 1u) % vec2<u32>(32u)))), vec2<u32>(func_3().x, 0u), false || var_6.c.b.x));
}

