struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 19043u;

var<private> global2: array<Struct_3, 31>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1) -> i32 {
    global0 = select(1u ^ ~(~8449u ^ ~u_input.a.x), firstTrailingBit(~_wgslsmith_sub_u32(~arg_1.a.a.x, ~1u)), true);
    global1 = 1u;
    global0 = 0u;
    global2 = array<Struct_3, 31>();
    global2 = array<Struct_3, 31>();
    return -12969i;
}

fn func_3(arg_0: vec4<i32>) -> Struct_4 {
    global0 = select(u_input.b, min(~_wgslsmith_mult_u32(1u, ~u_input.b), u_input.e), true);
    global2 = array<Struct_3, 31>();
    let var_0 = Struct_2(Struct_1(vec3<i32>(abs(-u_input.c), 1i, abs(u_input.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(348f - _wgslsmith_f_op_f32(f32(-1f) * -265f)))), !all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(785f, -1000f, 168f)) + vec3<f32>(432f, -283f, 1437f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-836f, -1184f, 131f) - vec3<f32>(1644f, -204f, 2232f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1403f, -1622f) + vec3<f32>(-1669f, 2337f, 2044f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(409f, -1204f), vec2<f32>(-447f, 355f), false)) + vec2<f32>(-136f, -241f)))))), vec3<f32>(271f, 1548f, _wgslsmith_f_op_f32(sign(-1178f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-818f, 1864f, -771f) - vec3<f32>(194f, -1000f, -109f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-568f, 1394f, -1000f), vec3<f32>(425f, -741f, -496f))))));
    var var_1 = ~u_input.d;
    let var_2 = var_0.d;
    return Struct_4(global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(69573u, ~(~1u))), 31u)], vec4<i32>(arg_0.x, _wgslsmith_add_i32(u_input.c, var_0.a.a.x), 0i, -1i), global2[_wgslsmith_index_u32(u_input.b, 31u)]);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = vec4<u32>(arg_0.a.a.x, (4855u >> (~firstTrailingBit(arg_0.a.a.x) % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x ^ arg_0.a.a.x, arg_0.a.a.x & 1u), ~arg_0.c.a.xz >> ((arg_0.c.a.zy ^ arg_0.c.a.zz) % vec2<u32>(32u))) % 32u), ~(~26359u), u_input.a.x);
    let var_1 = arg_0;
    global1 = ~max(select(u_input.a.x, 13013u, select(0u, 2899u, false) == max(var_0.x, var_1.a.a.x)), select(4294967295u, var_1.a.a.x, arg_2.x));
    global2 = array<Struct_3, 31>();
    let var_2 = 44267u;
    return var_1.b.yzx;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_4 {
    global0 = u_input.e & abs(u_input.b);
    let var_0 = func_4(func_3(vec4<i32>(-5662i, arg_0.a.x, func_2(select(arg_2.c, false, true), Struct_4(global2[_wgslsmith_index_u32(29302u, 31u)], vec4<i32>(-1i, 28587i, arg_0.a.x, arg_0.a.x), global2[_wgslsmith_index_u32(9807u, 31u)]), Struct_1(arg_0.a, arg_2.d.x, false, arg_2.d)), u_input.c & -arg_0.a.x)), arg_2.c, vec4<bool>(false, arg_0.c, false, !(362f >= arg_0.b) | (arg_2.d.x > _wgslsmith_f_op_f32(-arg_0.b))), Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b), -315f, false)), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_2.b, arg_0.b)))), _wgslsmith_f_op_vec2_f32(select(arg_2.d.yx, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(861f, arg_0.b)))), !(!vec2<bool>(false, arg_2.c)))), arg_0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, arg_2.d.x, arg_2.d.x)) - arg_2.d) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_2.d.x, 487f) + vec3<f32>(arg_0.b, -559f, arg_0.b)))));
    global1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d, _wgslsmith_mod_u32((u_input.b << (u_input.e % 32u)) << (min(1u, u_input.b) % 32u), firstTrailingBit(u_input.a.x ^ u_input.b))), ~(~u_input.e), (u_input.e << (u_input.e % 32u)) >> (_wgslsmith_mod_u32(~u_input.b, u_input.e) % 32u));
    global2 = array<Struct_3, 31>();
    let var_1 = global2[_wgslsmith_index_u32(~u_input.d, 31u)];
    return func_3(~_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.a.x, arg_0.a.x, u_input.c, -1i), vec4<i32>(arg_2.a.x, 0i, var_0.x, arg_0.a.x)), -vec4<i32>(-11246i, -2147483647i, arg_1.x, arg_2.a.x)), vec4<i32>(~var_0.x, -1i, _wgslsmith_mult_i32(arg_1.x, arg_1.x), arg_0.a.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, 1i, arg_2.a.x), vec4<i32>(2147483647i, -62456i, arg_0.a.x, arg_2.a.x), vec4<i32>(arg_0.a.x, -26940i, -20967i, -2147483647i))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: f32) -> vec2<f32> {
    var var_0 = firstLeadingBit(~(~vec4<u32>(4294967295u, max(46789u, arg_0.a.a.x), arg_0.a.a.x, ~arg_1.a.a.x)));
    let var_1 = func_3(arg_0.b).c;
    let var_2 = Struct_4(func_3(func_3(~arg_1.b & _wgslsmith_add_vec4_i32(arg_1.b, vec4<i32>(u_input.c, 83450i, arg_0.b.x, arg_1.b.x))).b).c, _wgslsmith_add_vec4_i32(~countOneBits(vec4<i32>(27458i, arg_2, 0i, arg_0.b.x)), -countOneBits(~arg_0.b)), var_1);
    var_0 = ~(~vec4<u32>(~func_1(Struct_1(arg_1.b.xwz, 1000f, true, vec3<f32>(arg_3, -1002f, 299f)), arg_1.b.xzz, Struct_1(arg_1.b.zwx, arg_3, false, vec3<f32>(-907f, arg_3, -381f))).a.a.x, ~1u, _wgslsmith_sub_u32(arg_0.a.a.x, 7732u >> (var_1.a.x % 32u)), var_1.a.x));
    global2 = array<Struct_3, 31>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2116f, arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -236f), -2135f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1647f, _wgslsmith_f_op_f32(-768f * 430f))), _wgslsmith_f_op_vec2_f32(func_5(Struct_4(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], vec4<i32>(u_input.c, 43616i, 77271i, -6839i), global2[_wgslsmith_index_u32(1u, 31u)]), func_1(Struct_1(vec3<i32>(-21007i, u_input.c, u_input.c), -647f, true, vec3<f32>(-318f, -1000f, 366f)), vec3<i32>(u_input.c, -37402i, 0i), Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c), -796f, false, vec3<f32>(413f, -724f, 1523f))), -41770i, -792f)), false)));
    global2 = array<Struct_3, 31>();
    let var_1 = !vec4<bool>(true, true, false, any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)));
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, countOneBits(50157u), u_input.a.x), func_1(Struct_1(~(-vec3<i32>(-1i, 0i, 30804i)), var_0.x, !(!var_1.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 487f))))), func_1(Struct_1(~vec3<i32>(1i, u_input.c, -23542i), var_0.x, false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-161f, 1482f, var_0.x), vec3<f32>(1190f, -1000f, -870f), var_1.xyz))), func_3(vec4<i32>(-6849i, u_input.c, u_input.c, -2147483647i) ^ vec4<i32>(-2147483647i, 0i, 64878i, u_input.c)).b.wwz, Struct_1(abs(vec3<i32>(-2147483647i, 0i, u_input.c)), _wgslsmith_f_op_f32(-var_0.x), var_0.x < var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, -966f) + vec3<f32>(-1443f, -961f, var_0.x)))).b.yzz, Struct_1(select(~vec3<i32>(u_input.c, 42857i, u_input.c), vec3<i32>(-20120i, 2147483647i, u_input.c) ^ vec3<i32>(u_input.c, u_input.c, 0i), !vec3<bool>(false, var_1.x, false)), _wgslsmith_f_op_f32(-var_0.x), all(vec2<bool>(false, var_1.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-583f, var_0.x, 1261f))))).c.a);
    let var_2 = select(!select(select(!vec3<bool>(var_1.x, false, true), vec3<bool>(true, true, true), var_0.x > 639f), vec3<bool>(true, false, !var_1.x), select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, false, true), vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.yyw, true)), !vec3<bool>(!(!var_1.x), true, true == any(var_1.wy)), false);
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, _wgslsmith_mod_u32(0u, u_input.b) << (_wgslsmith_mult_u32(~(~u_input.b), ~4294967295u) % 32u)), 31u)];
    var var_4 = Struct_1(vec3<i32>(u_input.c, reverseBits(_wgslsmith_mult_i32(i32(-1i) * -20704i, abs(-50898i))), _wgslsmith_mod_i32(1i, -31331i)), 868f, !all(var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(906f, _wgslsmith_f_op_f32(-var_0.x), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, 28494u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, -1279f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_4.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -840f))))), -330f), _wgslsmith_add_vec3_u32(var_3.a, min(func_3(vec4<i32>(37400i, 0i, var_4.a.x, var_4.a.x)).a.a, func_3(vec4<i32>(-27756i, 95918i, -2147483647i, -2147483647i)).a.a ^ abs(var_3.a))));
}

