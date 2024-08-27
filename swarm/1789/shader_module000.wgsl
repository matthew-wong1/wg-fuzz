struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: bool) -> i32 {
    global0 = array<Struct_5, 32>();
    var var_0 = any(!vec4<bool>(true, all(vec2<bool>(false, arg_2)), false && arg_2, arg_2)) || all(select(vec4<bool>(any(vec2<bool>(arg_2, false)), true, true, false), vec4<bool>(false, arg_2, arg_2, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(arg_2, arg_2, false, arg_2))));
    var var_1 = Struct_5(Struct_1(firstTrailingBit(~max(vec4<u32>(23948u, arg_0.a.a.x, 35763u, 12574u), vec4<u32>(66407u, u_input.b, arg_0.a.b.x, 26543u))), select(vec3<u32>(~u_input.b, ~u_input.b, 0u), arg_0.a.b, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 755f, arg_0.b.x, -1555f)) * vec4<f32>(-1057f, _wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(abs(arg_0.b.x)))), arg_0.a.d), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -166f), 783f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, 1108f, arg_1)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.b)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(303f, arg_1, arg_1), vec3<f32>(-1500f, -254f, 443f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.a.c.x, -450f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_1, arg_1)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.a.c.yw)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.xy))))));
    return 1i >> (1u % 32u);
}

fn func_2() -> Struct_3 {
    let var_0 = ~abs(vec2<u32>(u_input.b, countOneBits(u_input.b)));
    var var_1 = Struct_3(Struct_2(func_3(Struct_5(Struct_1(vec4<u32>(u_input.b, 0u, var_0.x, var_0.x), vec3<u32>(u_input.b, u_input.b, 0u), vec4<f32>(524f, 1223f, 1540f, 264f), u_input.d.x), vec3<f32>(-430f, -1396f, 345f)), -287f, false), vec4<u32>(~0u, ~u_input.b, 50810u, 24189u), Struct_1(select(vec4<u32>(var_0.x, var_0.x, 6789u, var_0.x), vec4<u32>(var_0.x, var_0.x, 27893u, 40294u), true) ^ ~vec4<u32>(4294967295u, var_0.x, 20297u, 1u), ~vec3<u32>(23899u, var_0.x, 0u) >> ((vec3<u32>(u_input.b, 1320u, 59594u) << (vec3<u32>(38616u, u_input.b, 3455u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-100f, 286f, -338f, -1770f), vec4<f32>(-541f, -506f, 156f, -1071f))), _wgslsmith_dot_vec4_i32(vec4<i32>(11876i, u_input.c, 1i, u_input.e.x), u_input.a) & _wgslsmith_mod_i32(-41272i, -28613i))), 1043f, u_input.a.x & _wgslsmith_sub_i32(u_input.c, 0i));
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.c.x) * -592f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))))), ~34495i);
    let var_2 = vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true), true)), 1i <= u_input.e.x);
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(52775u, 41521u), 0u, ~u_input.b);
    return Struct_3(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, var_1.a.c.d) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, var_1.a.c.d, u_input.d.x), vec3<i32>(u_input.a.x, -2147483647i, -2147483647i)), ~vec3<i32>(0i, var_1.c, u_input.d.x)) << (max(_wgslsmith_dot_vec2_u32(var_1.a.b.yw, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 12776u), vec2<u32>(4294967295u, var_3.x), vec2<u32>(u_input.b, var_0.x))), 1u) % 32u));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    global0 = array<Struct_5, 32>();
    let var_0 = arg_1.a.c.c.x;
    let var_1 = !select(!select(!vec4<bool>(true, arg_0, arg_0, false), select(vec4<bool>(true, false, true, arg_0), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, false, false, arg_0)), arg_0), vec4<bool>(arg_0 == arg_0, all(vec2<bool>(false, arg_0)), true, arg_0), vec4<bool>(all(!vec4<bool>(false, false, false, arg_0)), arg_0, (arg_0 || true) | all(vec3<bool>(false, arg_0, false)), !arg_0));
    let var_2 = Struct_4(func_2());
    global0 = array<Struct_5, 32>();
    return var_2;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = true;
    var_0 = all(vec4<bool>(true, 48340u >= max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a.c.a.x, u_input.b, 1749u), arg_0.a.a.b.wwz), ~0u), ~1i <= -min(u_input.c, arg_0.a.a.a), true));
    let var_1 = any(vec4<bool>(any(vec4<bool>(false, u_input.c <= u_input.a.x, true, all(vec2<bool>(true, true)))), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true | all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)), true));
    let var_2 = arg_0.a.c;
    global0 = array<Struct_5, 32>();
    return func_4(var_1 == var_1, func_4(true, func_4(var_1, Struct_3(func_4(var_1, Struct_3(Struct_2(var_2, arg_0.a.a.b, Struct_1(vec4<u32>(u_input.b, arg_0.a.a.b.x, u_input.b, u_input.b), arg_0.a.a.c.a.xzw, arg_1, 26017i)), arg_1.x, arg_0.a.a.c.d), u_input.b, arg_0.a).a.a, arg_1.x, u_input.d.x), arg_0.a.a.b.x, Struct_3(arg_0.a.a, 1898f, var_2)).a, ~(~u_input.b), Struct_3(arg_0.a.a, _wgslsmith_f_op_f32(floor(-1972f)), 747i)).a, 0u | firstLeadingBit(u_input.b), func_2()).a.a;
}

fn func_1(arg_0: bool) -> Struct_3 {
    global0 = array<Struct_5, 32>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f));
    let var_1 = u_input.e;
    global0 = array<Struct_5, 32>();
    global0 = array<Struct_5, 32>();
    return Struct_3(func_5(func_4(arg_0, func_2(), 4294967295u, Struct_3(Struct_2(var_1.x, vec4<u32>(1u, 65323u, u_input.b, 4294967295u), Struct_1(vec4<u32>(u_input.b, 24357u, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<f32>(var_0, var_0, var_0, var_0), 30469i)), _wgslsmith_f_op_f32(var_0 * var_0), -2147483647i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, var_0, 133f, -1971f)))))), _wgslsmith_f_op_f32(var_0 - var_0), u_input.d.x);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_4 {
    global0 = array<Struct_5, 32>();
    let var_0 = _wgslsmith_f_op_f32(-121f + arg_0.a.c.c.x);
    return func_4(any(!vec4<bool>(arg_0.a.b.x >= 4294967295u, true, true, select(false, true, false))), arg_2, ~(~(~u_input.b)) & abs(~reverseBits(arg_1)), arg_0);
}

fn func_7(arg_0: Struct_4) -> i32 {
    let var_0 = func_4(true, Struct_3(Struct_2(u_input.e.x, min(reverseBits(arg_0.a.a.c.a), vec4<u32>(arg_0.a.a.c.a.x, u_input.b, 0u, u_input.b)), Struct_1(vec4<u32>(0u, 33866u, arg_0.a.a.c.a.x, arg_0.a.a.c.a.x), func_4(true, Struct_3(arg_0.a.a, -1221f, u_input.e.x), u_input.b, arg_0.a).a.a.c.b, _wgslsmith_f_op_vec4_f32(-arg_0.a.a.c.c), 26174i)), -615f, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, arg_0.a.c, 1i)), reverseBits(vec3<i32>(1i, -2147483647i, arg_0.a.a.c.d))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.a.a.c.d, -1i), arg_0.a.a.c.d << (4294967295u % 32u)))), _wgslsmith_add_u32(1u, 70813u), Struct_3(arg_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.c.c.x) * _wgslsmith_f_op_f32(select(arg_0.a.b, arg_0.a.b, true))), -210f), _wgslsmith_dot_vec3_i32(u_input.e.xyz << (vec3<u32>(u_input.b, u_input.b, 4287u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(select(u_input.d.zzw, vec3<i32>(2147483647i, arg_0.a.a.c.d, u_input.e.x), vec3<bool>(true, true, true)), vec3<i32>(u_input.e.x, u_input.e.x, 2147483647i), abs(vec3<i32>(0i, u_input.d.x, arg_0.a.c)))))).a.a.c.c.zw;
    global0 = array<Struct_5, 32>();
    var var_1 = max(u_input.b, ~12337u);
    let var_2 = ~13725u;
    var var_3 = Struct_2(-u_input.a.x, vec4<u32>(_wgslsmith_dot_vec3_u32(~func_4(true, arg_0.a, 19427u, Struct_3(Struct_2(0i, arg_0.a.a.c.a, arg_0.a.a.c), -1317f, u_input.a.x)).a.a.b.zwz, vec3<u32>(1u, var_2, _wgslsmith_mod_u32(arg_0.a.a.c.a.x, arg_0.a.a.b.x))), abs(max(~4294967295u, firstLeadingBit(0u))), ~func_2().a.c.b.x >> (~(3748u & arg_0.a.a.c.b.x) % 32u), ~firstLeadingBit(~0u)), func_4(!any(vec2<bool>(true, false)), func_2(), (func_1(false).a.b.x << (4294967295u % 32u)) | arg_0.a.a.b.x, func_4(!any(vec4<bool>(true, false, true, false)), arg_0.a, 31984u, Struct_3(func_5(Struct_4(arg_0.a), arg_0.a.a.c.c), _wgslsmith_f_op_f32(sign(arg_0.a.b)), 1i)).a).a.a.c);
    return min(func_6(arg_0.a, ~23226u >> (u_input.b % 32u), arg_0.a, ~vec2<u32>(u_input.b ^ var_2, ~11811u)).a.c, ~_wgslsmith_add_i32(min(var_3.c.d, 32771i), 9472i) | -select(var_3.a, i32(-1i) * -1i, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 32>();
    var var_0 = vec2<bool>(!(u_input.b >= u_input.b) | true, !(-61678i <= u_input.a.x));
    var var_1 = -753f;
    var var_2 = func_7(func_6(func_1(!var_0.x), u_input.b, Struct_3(func_1(false).a, 2791f, reverseBits(-39110i)), ~vec2<u32>(8558u, 1u) | _wgslsmith_add_vec2_u32(vec2<u32>(20382u, u_input.b), vec2<u32>(u_input.b, u_input.b)))) >> (_wgslsmith_div_u32(firstLeadingBit(u_input.b), (select(u_input.b, 4294967295u, true) << (~u_input.b % 32u)) | ~firstTrailingBit(0u)) % 32u);
    var var_3 = func_5(func_6(func_2(), u_input.b, func_1(select(var_0.x & false, var_0.x, true)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, u_input.b)))), func_6(Struct_3(Struct_2(_wgslsmith_sub_i32(1i, -9121i), vec4<u32>(u_input.b, u_input.b, 42759u, u_input.b) >> (vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u)), Struct_1(vec4<u32>(u_input.b, 73774u, u_input.b, u_input.b), vec3<u32>(0u, 31327u, 10158u), vec4<f32>(-1476f, 290f, 726f, -822f), -21477i)), _wgslsmith_f_op_f32(2589f * 1251f), 12179i), u_input.b, Struct_3(func_6(Struct_3(Struct_2(u_input.d.x, vec4<u32>(u_input.b, 0u, 26533u, 12151u), Struct_1(vec4<u32>(1u, u_input.b, u_input.b, 31012u), vec3<u32>(u_input.b, 0u, 22991u), vec4<f32>(-621f, -1000f, 1497f, 611f), -2147483647i)), 353f, 2356i), u_input.b, func_6(Struct_3(Struct_2(-31456i, vec4<u32>(u_input.b, u_input.b, u_input.b, 15092u), Struct_1(vec4<u32>(71957u, u_input.b, 52491u, 0u), vec3<u32>(1u, u_input.b, u_input.b), vec4<f32>(400f, -354f, 1602f, 730f), u_input.d.x)), 1963f, -14643i), u_input.b, Struct_3(Struct_2(1i, vec4<u32>(10660u, u_input.b, 68149u, 37385u), Struct_1(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<f32>(1420f, 586f, -1071f, -281f), 68545i)), -970f, -2147483647i), vec2<u32>(u_input.b, u_input.b)).a, vec2<u32>(u_input.b, 0u) >> (vec2<u32>(u_input.b, 46383u) % vec2<u32>(32u))).a.a, 940f, 21297i), ~(~(vec2<u32>(10548u, 41730u) & vec2<u32>(u_input.b, u_input.b)))).a.a.c.c).c;
    var_2 = func_7(Struct_4(Struct_3(func_4(var_0.x, Struct_3(Struct_2(var_3.d, vec4<u32>(u_input.b, 0u, 84275u, 2469u), Struct_1(vec4<u32>(4294967295u, 32632u, u_input.b, var_3.a.x), vec3<u32>(85664u, 103041u, var_3.b.x), vec4<f32>(-1058f, var_3.c.x, 669f, var_3.c.x), u_input.d.x)), var_3.c.x, -2147483647i), 1u, Struct_3(Struct_2(var_3.d, var_3.a, Struct_1(vec4<u32>(1u, u_input.b, var_3.b.x, 21013u), var_3.b, var_3.c, var_3.d)), var_3.c.x, u_input.a.x)).a.a, var_3.c.x, func_3(global0[_wgslsmith_index_u32(var_3.b.x, 32u)], _wgslsmith_div_f32(524f, -2304f), var_0.x))));
    var_2 = 68739i;
    let var_4 = Struct_1(_wgslsmith_div_vec4_u32(max(vec4<u32>(min(3038u, var_3.b.x), _wgslsmith_mod_u32(39934u, var_3.a.x), u_input.b, ~var_3.b.x), ~var_3.a), var_3.a), ~vec3<u32>(1u, ~24905u, abs(firstLeadingBit(1u))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, -446f, var_3.c.x, _wgslsmith_div_f32(var_3.c.x, 1696f)) + func_4(var_0.x, Struct_3(Struct_2(u_input.e.x, vec4<u32>(var_3.b.x, u_input.b, u_input.b, 0u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 42353u, u_input.b), vec3<u32>(u_input.b, 55236u, 0u), vec4<f32>(1582f, -378f, var_3.c.x, var_3.c.x), u_input.d.x)), 948f, u_input.c), 0u, Struct_3(Struct_2(var_3.d, var_3.a, Struct_1(vec4<u32>(29247u, 1u, var_3.b.x, 2528u), var_3.b, vec4<f32>(var_3.c.x, 1000f, var_3.c.x, -1408f), -2147483647i)), var_3.c.x, -8374i)).a.a.c.c))), reverseBits(u_input.a.x));
    var_0 = vec2<bool>(false, !all(vec2<bool>(false, any(vec4<bool>(var_0.x, true, true, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_4.c.yz - _wgslsmith_f_op_vec2_f32(var_4.c.zx - _wgslsmith_f_op_vec2_f32(-var_4.c.wz))), countOneBits(abs(1u)) << (u_input.b % 32u), abs(1u), _wgslsmith_sub_i32(~(-15391i), u_input.e.x));
}

