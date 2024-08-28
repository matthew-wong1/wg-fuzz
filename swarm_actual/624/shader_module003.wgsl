struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = -_wgslsmith_clamp_vec2_i32(reverseBits(abs(vec2<i32>(-15758i, 34883i))) << (select(vec2<u32>(49602u, 4294967295u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a), select(vec2<bool>(false, true), vec2<bool>(false, true), false)) % vec2<u32>(32u)), abs((vec2<i32>(u_input.c, u_input.b) | vec2<i32>(2147483647i, u_input.b)) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), (vec2<i32>(u_input.d, u_input.e) >> (vec2<u32>(u_input.a, 37947u) % vec2<u32>(32u))) & (vec2<i32>(u_input.e, -2147483647i) & vec2<i32>(u_input.b, 27136i)));
    var var_1 = reverseBits(vec4<i32>(var_0.x, u_input.d, -1i, min(var_0.x, select(9565i, -25807i, false)))) | firstTrailingBit(vec4<i32>(-9883i, 0i, -87276i, abs(37211i)));
    var_0 = var_1.wx;
    let var_2 = Struct_1(vec2<bool>(all(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, all(vec2<bool>(false, false)))), any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true))), !(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1099f, -1163f, -764f, _wgslsmith_f_op_f32(-1000f * -2374f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-626f, _wgslsmith_f_op_f32(floor(743f)), _wgslsmith_f_op_f32(min(1328f, 730f)), -645f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-306f, -352f, -648f, -357f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(424f, 1335f, -119f, -1700f))), !var_2.b)) - vec4<f32>(_wgslsmith_f_op_f32(1110f + 739f), _wgslsmith_f_op_f32(267f * 1000f), 186f, _wgslsmith_f_op_f32(ceil(1323f)))))));
    return all(var_2.b);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_4 {
    var var_0 = func_3();
    var_0 = true;
    var var_1 = max(arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(38571u, 0u) >> (vec2<u32>(23654u, u_input.a) % vec2<u32>(32u))) ^ 8211u) < u_input.a;
    var_0 = any(vec4<bool>(!select(true, false, true), (~4294967295u != _wgslsmith_mod_u32(arg_1, 18165u)) || all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true))), true, u_input.e > -_wgslsmith_mult_i32(1i, u_input.e)));
    let var_2 = false;
    return Struct_4(_wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(-24956i, 25691i, 0i))), reverseBits(firstLeadingBit(reverseBits(vec3<i32>(0i, u_input.b, 12462i))))), Struct_2(Struct_1(select(vec2<bool>(var_2, var_2), !vec2<bool>(var_2, true), var_2), vec4<bool>(func_3(), true, var_2, true)), -2117f), _wgslsmith_f_op_f32(f32(-1f) * -261f));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(floor(925f));
    var var_1 = Struct_3(false, func_2(~max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(4294967295u, u_input.a, 4294967295u)), 10378u), max(33216u, 1854u)).b, ~vec3<u32>(~_wgslsmith_sub_u32(u_input.a, 1u), _wgslsmith_mult_u32(1u, ~0u), (u_input.a >> (u_input.a % 32u)) << (u_input.a % 32u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1544u, 31642u) << (firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(58200u, u_input.a)), vec2<u32>(u_input.a, 0u)), ~vec2<u32>(u_input.a, u_input.a))));
    var var_2 = Struct_1(select(func_2(max(_wgslsmith_clamp_u32(25553u, var_1.d.x, 3958u), countOneBits(4294967295u)), ~var_1.c.x).b.a.b.wx, select(arg_0.b.a.a, vec2<bool>(select(arg_1.a.x, arg_2.x, arg_2.x), false), arg_0.b.a.b.yx), any(func_2(~4294967295u, var_1.d.x).b.a.b)), vec4<bool>(!(arg_2.x | arg_1.a.x), true || arg_0.b.a.a.x, select(arg_0.b.a.a.x, true, true), all(!var_1.b.a.b) & ((34513u ^ u_input.a) <= _wgslsmith_dot_vec2_u32(var_1.d, vec2<u32>(var_1.d.x, 11233u)))));
    var_2 = func_2(~20699u, var_1.d.x).b.a;
    var_2 = func_2(reverseBits(var_1.d.x), _wgslsmith_div_u32(~u_input.a, 119712u)).b.a;
    return Struct_2(arg_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.b * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -271f)) * _wgslsmith_f_op_f32(f32(-1f) * -569f))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1.a.b.xzx;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b, arg_1.b, arg_0.b.b))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b))))));
    let var_2 = Struct_2(func_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(~12909u, ~16876u), 32571u), ~0u).b.a, -2148f);
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1535f, arg_1.b, var_2.b) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.b, arg_1.b, 1798f) + vec3<f32>(1034f, arg_0.b.b, var_2.b))))));
    return Struct_1(vec2<bool>(arg_0.b.a.a.x, false), vec4<bool>(var_0.x & any(var_0.zx), func_2(60371u, _wgslsmith_div_u32(arg_0.d.x, 77183u) >> (u_input.a % 32u)).b.a.b.x, true, arg_2.x));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_mod_i32(-1i, arg_2.x);
    var var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(3002u, u_input.a), u_input.a << (0u % 32u), u_input.a, ~u_input.a), _wgslsmith_mod_vec4_u32(min(vec4<u32>(4294967295u, u_input.a, 62392u, 0u), vec4<u32>(u_input.a, 118287u, 31609u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 25926u, 43876u, 55088u), vec4<u32>(3389u, u_input.a, 1u, u_input.a), vec4<u32>(25513u, u_input.a, u_input.a, 1543u)))), ~vec4<u32>(0u, ~u_input.a, ~u_input.a, 4294967295u)), abs(vec4<u32>(4725u, 29163u, 59906u, u_input.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(18264u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 13019u, u_input.a)), ~0u, ~u_input.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(54602u, 4294967295u, 0u, 1u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, 51129u, u_input.a));
    var var_2 = func_2(~(~var_1.x), _wgslsmith_dot_vec4_u32(~firstLeadingBit(min(vec4<u32>(u_input.a, 30176u, 34978u, 62310u), vec4<u32>(4294967295u, u_input.a, var_1.x, var_1.x))), firstTrailingBit(~vec4<u32>(var_1.x, 8881u, 0u, var_1.x) | vec4<u32>(var_1.x, u_input.a, 4294967295u, 4294967295u))));
    return func_2(~_wgslsmith_div_u32(~var_1.x, 6786u), u_input.a);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, 1000f, 473f, -1236f)) - vec4<f32>(-839f, 450f, 1924f, 1000f)))));
    var var_1 = vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, true, false)))), true);
    let var_2 = func_6(func_5(Struct_3(false, func_4(func_2(17650u, u_input.a), Struct_5(vec3<bool>(var_1.x, var_1.x, var_1.x), vec2<i32>(u_input.b, u_input.e), vec4<i32>(u_input.d, u_input.e, u_input.e, 71141i), vec2<i32>(1i, -2147483647i)), vec2<bool>(var_1.x, false)), min(vec3<u32>(arg_0.x, 26606u, u_input.a), vec3<u32>(u_input.a, 0u, 1u)), ~reverseBits(vec2<u32>(u_input.a, arg_0.x))), Struct_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(var_1.x, true)), !vec4<bool>(true, var_1.x, var_1.x, false)), var_0.x), func_4(func_2(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(89595u, 0u, 1u)), reverseBits(54377u)), Struct_5(!vec3<bool>(true, var_1.x, var_1.x), -vec2<i32>(u_input.d, 22152i), vec4<i32>(4422i, 1i, u_input.e, 2147483647i), vec2<i32>(u_input.e, 1i)), vec2<bool>(all(vec2<bool>(true, var_1.x)), var_1.x)).a.b.xz), reverseBits(u_input.e), vec4<i32>(~(-42711i), select(u_input.b, i32(-1i) * -2147483647i, var_1.x), _wgslsmith_add_i32(~abs(u_input.c), u_input.c), (-u_input.b ^ _wgslsmith_mod_i32(-2147483647i, u_input.d)) ^ ~1i), func_5(Struct_3(var_0.x > _wgslsmith_f_op_f32(-208f - -1045f), func_4(func_2(52533u, arg_0.x), Struct_5(vec3<bool>(true, var_1.x, true), vec2<i32>(u_input.e, 1i), vec4<i32>(u_input.e, u_input.c, u_input.d, u_input.c), vec2<i32>(u_input.e, 56552i)), vec2<bool>(var_1.x, var_1.x)), arg_0, vec2<u32>(_wgslsmith_sub_u32(48793u, arg_0.x), 65598u)), func_2(arg_0.x, ~arg_0.x).b, !(!func_2(arg_0.x, arg_0.x).b.a.b.zy)));
    var var_3 = _wgslsmith_f_op_f32(max(1923f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-355f, var_2.b.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))) * _wgslsmith_f_op_f32(-var_2.b.b))));
    var_1 = func_6(Struct_1(vec2<bool>(any(vec4<bool>(false, var_1.x, var_2.b.a.a.x, var_1.x)), true), !func_4(Struct_4(var_2.a, Struct_2(Struct_1(vec2<bool>(false, var_2.b.a.b.x), vec4<bool>(var_1.x, false, true, var_1.x)), var_2.b.b), var_0.x), Struct_5(var_2.b.a.b.yyx, vec2<i32>(1i, var_2.a.x), vec4<i32>(-2147483647i, 2147483647i, u_input.d, u_input.b), var_2.a.yz), !var_2.b.a.a).a.b), _wgslsmith_mod_i32(-(-u_input.d >> ((24555u >> (arg_0.x % 32u)) % 32u)), ~_wgslsmith_sub_i32(func_2(80718u, 13556u).a.x, ~var_2.a.x)), -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_2.a.x, -27057i, var_2.a.x, var_2.a.x)), select(vec4<i32>(-33428i, 2147483647i, -428i, -2147483647i), vec4<i32>(-2147483647i, 1i, 1i, var_2.a.x), var_1.x)), var_2.b.a).b.a.a;
    return func_2(1u, arg_0.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<u32>(u_input.a, 0u, 89034u)) & _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(18041u, 1u, u_input.a) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), max(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(1u, 49373u, 25385u) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(vec3<u32>(abs(1u), 3239u, ~42220u), ~(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(4294967295u, 4294967295u, u_input.a))));
    var var_1 = Struct_4(_wgslsmith_sub_vec3_i32(-countOneBits(vec3<i32>(-1i, u_input.d, 12172i)), max(~vec3<i32>(u_input.c, u_input.e, 55366i), firstLeadingBit(vec3<i32>(-1122i, -31098i, u_input.d)))) & vec3<i32>(-2147483647i, -1i, _wgslsmith_mult_i32(53572i | u_input.b, -u_input.c)), Struct_2(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1445f * 632f), -1230f)), _wgslsmith_f_op_f32(floor(1000f)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1431f + 1605f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-704f, -258f)) * 765f))));
    var var_2 = var_1.b.a;
    var var_3 = Struct_3(var_2.a.x, func_1(~(~(~var_0))), ~_wgslsmith_add_vec3_u32(var_0, var_0), countOneBits(~vec2<u32>(var_0.x, ~6233u)));
    var_1 = Struct_4(var_1.a, var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(-var_1.b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~var_3.c.x, 3762u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1572f, var_1.b.b) * vec2<f32>(var_3.b.b, var_1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.b, var_1.c) - vec2<f32>(var_3.b.b, -1717f)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b.b, -1000f)))))), _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(0i, u_input.d, 2147483647i, 23938i)), vec4<i32>(-2147483647i, var_1.a.x, abs(0i), -1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.b, ~2147483647i, ~var_1.a.x), ~vec3<i32>(-21015i, 2147483647i, var_1.a.x)), vec3<i32>(u_input.e, ~reverseBits(u_input.b), 2147483647i)), var_3.b.b);
}

