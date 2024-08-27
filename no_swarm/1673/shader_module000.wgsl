struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: i32,
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    var var_0 = 233f;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1646f, _wgslsmith_f_op_f32(ceil(-1000f)), -582f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_2 = vec4<u32>(18299u, ~_wgslsmith_clamp_u32(max(4294967295u, 1u), 34645u, 1u), 4294967295u, u_input.a.x);
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1145f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(159f)) - _wgslsmith_f_op_f32(1649f - var_1.x))))));
    return u_input.d;
}

fn func_2() -> bool {
    var var_0 = Struct_2(_wgslsmith_add_u32(u_input.a.x, ~16431u) & ~u_input.e.x, select(firstTrailingBit(21992i), _wgslsmith_add_i32(abs(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -72139i, -2147483647i), vec3<i32>(u_input.c, 1i, u_input.d))), true) << (u_input.a.x % 32u));
    let var_1 = Struct_2(~(~(~_wgslsmith_sub_u32(var_0.a, 4294967295u))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(u_input.b, var_0.b, var_0.b) >> (u_input.e % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(59649i, var_0.b), vec2<i32>(var_0.b, 1i)), 1i, func_3()), -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.b, 2147483647i), vec3<i32>(u_input.c, u_input.c, 63227i))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(57127i, var_0.b, var_0.b), ~vec3<i32>(-1i, 34373i, var_0.b)), vec3<i32>(var_0.b, 0i, u_input.c) & vec3<i32>(var_0.b, 1i, 46775i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1058f, 410f, false))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-733f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-163f)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_mult_vec2_u32(u_input.e.zz, arg_0.b.xx);
    var var_1 = vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, arg_0.b.xz), ~arg_3.a) << (vec2<u32>(~(~(~4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(arg_0.b), vec4<u32>(13344u, 77272u, 25322u, 4294967295u)), ~arg_3.b)) % vec2<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_mult_u32(~0u, _wgslsmith_mult_u32(u_input.a.x, arg_3.b.x) | var_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.x, 15426u << (var_0.x % 32u), 42142u, ~278u | arg_3.a), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_3.b.x, u_input.a.x), var_0.x), 12430u, 95179u, u_input.e.x), select(arg_3.b, vec4<u32>(abs(var_1.x), _wgslsmith_sub_u32(0u, arg_0.a), arg_0.b.x, ~1u), !vec4<bool>(true, arg_3.c.x, arg_3.c.x, arg_0.c.x))), arg_0.c, -2287f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-772f, 665f, arg_0.e.x), vec3<f32>(-756f, 1051f, arg_0.d))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.e.x, 116f, -380f), vec3<f32>(-1633f, 187f, -1000f), !arg_3.c.x)))));
    var_0 = arg_0.b.xx;
    var var_3 = vec4<u32>(18613u, 1u, _wgslsmith_dot_vec2_u32(max(_wgslsmith_div_vec2_u32(arg_3.b.wz, arg_0.b.xz), vec2<u32>(var_2.b.x, var_0.x) | u_input.e.zx) << (arg_0.b.yz % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(var_2.b.x, 1u), var_2.a) | abs(arg_3.b.zw)), arg_0.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1441f * var_2.e.x) - arg_3.e.x) + -299f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - -585f));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_0, func_2(), vec3<bool>(arg_1, any(arg_0.c.zz), any(vec4<bool>(false, arg_0.c.x, arg_1, true))), Struct_1(arg_0.b.x, vec4<u32>(0u, u_input.a.x, ~71249u, _wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, arg_0.b.x)), vec3<bool>(true, true, all(arg_0.c)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_vec3_f32(-arg_0.e)))));
    let var_1 = select(select(select(select(!vec4<bool>(arg_1, arg_1, false, arg_0.c.x), select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(false, false, arg_1, arg_1), false), select(vec4<bool>(arg_1, false, true, false), vec4<bool>(arg_0.c.x, arg_1, arg_0.c.x, false), arg_1)), vec4<bool>(true, true, true, true), vec4<bool>(func_2(), arg_0.b.x == arg_0.a, false, arg_1)), vec4<bool>(arg_0.c.x, arg_1, true, all(vec3<bool>(arg_0.c.x, arg_1, arg_1))), !arg_0.c.x), !vec4<bool>(select(!arg_0.c.x, true, !arg_0.c.x), arg_1, true, !arg_0.c.x), func_2());
    let var_2 = 20906i;
    let var_3 = select(var_1, select(!select(!vec4<bool>(arg_0.c.x, false, var_1.x, true), select(vec4<bool>(arg_1, false, var_1.x, true), var_1, var_1), vec4<bool>(var_1.x, arg_1, false, false)), vec4<bool>(any(!vec3<bool>(arg_1, false, arg_0.c.x)), arg_0.d >= arg_0.d, any(select(vec3<bool>(false, arg_1, false), vec3<bool>(true, arg_1, false), var_1.yxw)), true | all(vec4<bool>(var_1.x, true, false, arg_0.c.x))), select(vec4<bool>(arg_0.c.x, !arg_1, false, true), vec4<bool>(arg_1, var_1.x, !arg_1, true), vec4<bool>(true, true, true, true))), true);
    var var_4 = min(60523i, -_wgslsmith_mult_i32(1i, ~10203i));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(1254f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(2661u, vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 0u), vec3<bool>(true, false, false), -716f, vec3<f32>(-242f, -258f, -311f)), false)), _wgslsmith_f_op_f32(func_4(Struct_1(25377u, vec4<u32>(u_input.a.x, u_input.e.x, u_input.e.x, u_input.a.x), vec3<bool>(false, true, true), -1665f, vec3<f32>(187f, -865f, 1366f)), false, vec3<bool>(true, false, true), Struct_1(u_input.a.x, vec4<u32>(0u, 67927u, u_input.e.x, u_input.a.x), vec3<bool>(true, true, false), 367f, vec3<f32>(-284f, -1000f, -415f))))))))));
    var_0 = _wgslsmith_f_op_f32(func_1(Struct_1(u_input.a.x, max(max(vec4<u32>(1u, 0u, u_input.e.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.e.x)), reverseBits(vec4<u32>(1u, 1u, u_input.e.x, u_input.a.x))) >> (~select(vec4<u32>(u_input.a.x, 11850u, u_input.e.x, u_input.e.x), vec4<u32>(u_input.a.x, u_input.a.x, 46487u, 28558u), vec4<bool>(false, false, true, true)) % vec4<u32>(32u)), !vec3<bool>(true, true, all(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-896f - _wgslsmith_div_f32(-313f, 745f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1321f, -458f, 2694f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, 265f, 574f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, 335f, -989f))))), true));
    var var_1 = Struct_1(1u, select(vec4<u32>(_wgslsmith_mod_u32(72794u, 1u), 0u << (0u % 32u), u_input.e.x, 0u ^ u_input.e.x) >> (vec4<u32>(1u, ~u_input.a.x, 1u, u_input.e.x) % vec4<u32>(32u)), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 40292u, 26726u, 1u), vec4<u32>(u_input.e.x, u_input.a.x, u_input.e.x, 25849u)) ^ (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), ~1i >= ~u_input.d), vec3<bool>(!all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !func_2(), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(floor(505f)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(668f, _wgslsmith_f_op_f32(-751f + -1480f))))), -2008f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -385f)))));
    var_1 = Struct_1(~max(u_input.a.x, ~firstTrailingBit(45411u)), var_1.b, select(select(vec3<bool>(all(vec4<bool>(var_1.c.x, false, var_1.c.x, false)), true, !var_1.c.x), vec3<bool>(!var_1.c.x, func_2(), var_1.c.x), !(var_1.b.x < u_input.e.x)), vec3<bool>(!var_1.c.x, !(false | var_1.c.x), false), !(!(var_1.c.x & false))), 704f, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.e.x * -689f))), _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(-var_1.d))))));
    let var_2 = firstLeadingBit(_wgslsmith_div_u32(~(~var_1.b.x), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, i32(-1i) * -64226i, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, u_input.c), select(0i, -22467i, var_1.c.x))), vec3<i32>(1i, reverseBits(13957i), _wgslsmith_sub_i32(u_input.b, u_input.c)) | abs(~vec3<i32>(2147483647i, u_input.c, 0i))), _wgslsmith_f_op_f32(-1f), u_input.b, ~(-vec2<i32>(-u_input.b, _wgslsmith_div_i32(u_input.b, -16586i))), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(-1i ^ u_input.b, -u_input.c), _wgslsmith_mult_i32(u_input.d >> (u_input.e.x % 32u), firstLeadingBit(u_input.b))));
}

