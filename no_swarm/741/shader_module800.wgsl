struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: bool = false;

var<private> global2: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    global1 = false;
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-269f, -1000f, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, -1i, -46045i, 1i) << (vec4<u32>(u_input.a, 39387u, global2.x, 95906u) % vec4<u32>(32u))), vec4<bool>(true, true, true, all(vec4<bool>(false, false, true, false)))), -vec3<i32>(countOneBits(-1i), -2147483647i, 1i), 1u), Struct_1(1f, _wgslsmith_clamp_i32(-2147483647i, ~(-2147483647i), -56371i), vec4<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), true, false)), ~(~(~(~72153u))), Struct_2(Struct_1(1000f, select(min(0i, -27678i), ~1i, any(vec2<bool>(true, true))), vec4<bool>(any(vec4<bool>(false, true, false, false)), false, true, true)), vec3<i32>(firstTrailingBit(~2147483647i), -1i, _wgslsmith_add_i32(firstTrailingBit(44660i), i32(-1i) * -2147483647i)), firstTrailingBit(1u)));
    global1 = false;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1983f, _wgslsmith_div_f32(var_0.d.a.a, var_0.a.a.a)) - var_0.d.a.a), 2147483647i, select(select(select(var_0.b.c, vec4<bool>(true, true, true, var_0.a.a.c.x), var_0.b.c), !vec4<bool>(true, var_0.b.c.x, var_0.a.a.c.x, var_0.d.a.c.x), true), select(vec4<bool>(true, true, true, true), var_0.a.a.c, select(var_0.b.c, var_0.d.a.c, true)), select(vec4<bool>(false, true, var_0.a.a.c.x, true), select(var_0.a.a.c, var_0.a.a.c, var_0.a.a.c.x), vec4<bool>(var_0.a.a.c.x, var_0.b.c.x, false, var_0.b.c.x)))), vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.a.b, -(~vec3<i32>(var_0.d.a.b, 2883i, var_0.d.b.x))), 1i, var_0.b.b), max(~4294967295u, ~(~_wgslsmith_div_u32(global2.x, 4294967295u))));
    var var_2 = Struct_3(Struct_2(var_0.d.a, var_0.a.b, abs(var_0.a.c)), var_0.d.a, _wgslsmith_sub_u32(~var_1.c, (u_input.a >> (var_1.c % 32u)) ^ abs(97925u)) << ((var_0.c & (var_0.c >> (0u % 32u))) % 32u), var_0.a);
    return ~(vec4<i32>(26327i, ~1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-14061i, 14411i), var_1.b.x), 1i) | vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(4425i, var_1.a.b, -23264i, 28726i), vec4<i32>(6317i, var_0.b.b, -31288i, -1i)), countOneBits(firstTrailingBit(-3193i)), reverseBits(1i), _wgslsmith_sub_i32(var_2.b.b, ~26943i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, 1000f, 1053f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1402f, -239f, -575f))), arg_0)));
    global2 = vec2<u32>(reverseBits(global2.x), global2.x);
    let var_1 = arg_0;
    var var_2 = i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-19847i, 28613i), 4402i, -25126i), i32(-1i) * -16760i, -1i);
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1190f * var_0.x))), -_wgslsmith_dot_vec2_i32(vec2<i32>(22862i, 2147483647i), vec2<i32>(-7581i, 2147483647i)), !select(vec4<bool>(var_1, arg_0, true, false), vec4<bool>(var_1, false, arg_0, true), true)), vec3<i32>(1i, 1i, 1i), ~_wgslsmith_div_u32(~16549u, _wgslsmith_clamp_u32(u_input.a, 56074u, 43260u))), Struct_1(-1230f, _wgslsmith_dot_vec4_i32(~vec4<i32>(-4225i, 0i, 2147483647i, -43185i), func_3()), !(!(!vec4<bool>(arg_0, arg_0, arg_0, true)))), 0u << (select(36432u, ~u_input.a, all(vec4<bool>(arg_0, false, false, false))) % 32u), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -529f)), 43574i << (u_input.a % 32u), !(!vec4<bool>(arg_0, arg_0, true, var_1))), func_3().xyy, 38884u));
    return Struct_1(_wgslsmith_f_op_f32(-var_3.b.a), var_3.d.b.x, vec4<bool>(any(vec3<bool>(true, true, true)), select(true, var_3.a.a.c.x, !(false != var_1)), arg_0, var_3.a.a.c.x));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(arg_0.d, func_2(true), arg_0.d.c, arg_0.a);
    var var_1 = Struct_2(func_2(arg_0.a.a.c.x), countOneBits(vec3<i32>(1i, 9651i, ~arg_0.d.b.x)), u_input.a);
    global0 = var_0.a.a.b << (~abs(max(reverseBits(global2.x), ~arg_0.a.c)) % 32u);
    var_1 = arg_0.d;
    global0 = arg_0.a.b.x;
    return func_2((abs(~arg_0.a.c) > _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 96042u), vec2<u32>(17947u, 50342u)), ~4294967295u)) && false);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    global2 = vec2<u32>(42184u, 1u) ^ vec2<u32>(u_input.a, ~u_input.a);
    let var_0 = arg_1.a;
    global2 = abs(vec2<u32>(u_input.a, ~countOneBits(~0u)));
    global1 = var_0 <= -1476f;
    let var_1 = select(func_1(Struct_3(Struct_2(func_2(arg_1.c.x), vec3<i32>(0i, 2147483647i, arg_0), u_input.a), Struct_1(641f, _wgslsmith_sub_i32(1i, -1i), select(arg_1.c, arg_1.c, arg_1.c)), u_input.a, Struct_2(Struct_1(var_0, arg_0, vec4<bool>(arg_1.c.x, arg_1.c.x, true, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0, -1i), vec3<i32>(arg_1.b, 40540i, arg_0)), 2477u))).c.zy, !(!vec2<bool>(func_1(Struct_3(Struct_2(arg_1, vec3<i32>(-2147483647i, arg_0, arg_1.b), global2.x), Struct_1(var_0, arg_1.b, arg_1.c), u_input.a, Struct_2(Struct_1(arg_1.a, 0i, vec4<bool>(arg_1.c.x, arg_1.c.x, true, arg_1.c.x)), vec3<i32>(arg_1.b, arg_0, -2147483647i), global2.x))).c.x, arg_1.c.x)), vec2<bool>(arg_1.c.x, true & !arg_1.c.x));
    return Struct_3(Struct_2(arg_1, ~reverseBits(-vec3<i32>(27236i, 8419i, arg_0)), reverseBits(global2.x)), func_2(any(vec4<bool>(var_1.x, all(vec4<bool>(arg_1.c.x, var_1.x, arg_1.c.x, var_1.x)), true, arg_1.c.x))), ~1u, Struct_2(func_1(Struct_3(Struct_2(arg_1, vec3<i32>(arg_1.b, 0i, -41086i), 17955u), func_1(Struct_3(Struct_2(Struct_1(-502f, 1i, arg_1.c), vec3<i32>(arg_1.b, -1i, 72615i), u_input.a), arg_1, 43350u, Struct_2(arg_1, vec3<i32>(20354i, arg_1.b, 0i), 34691u))), 38057u, Struct_2(arg_1, vec3<i32>(-21968i, -1i, arg_1.b), global2.x))), vec3<i32>(0i, -48939i, ~(-15254i)) | func_3().wzx, 1u));
}

fn func_5(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = Struct_3(Struct_2(arg_0.b, vec3<i32>(-reverseBits(-2147483647i), 49738i, ~countOneBits(-1i)), 22444u), func_1(Struct_3(Struct_2(arg_0.a.a, vec3<i32>(18573i, arg_0.a.a.b, 2147483647i), min(1u, global2.x)), Struct_1(func_1(Struct_3(arg_0.d, arg_0.a.a, u_input.a, arg_0.d)).a, -52967i, func_2(false).c), ~(~4294967295u), Struct_2(Struct_1(arg_0.a.a.a, arg_0.b.b, arg_0.a.a.c), arg_0.d.b, arg_0.a.c))), ~global2.x, func_4(firstLeadingBit(~arg_0.a.a.b), arg_0.b).a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a.a - _wgslsmith_div_f32(var_0.b.a, 1152f)) + _wgslsmith_f_op_f32(var_0.d.a.a - _wgslsmith_f_op_f32(-arg_0.d.a.a)))), firstTrailingBit(-_wgslsmith_add_i32(func_3().x, -1i)), select(!arg_0.b.c, vec4<bool>(true, func_1(arg_0).c.x, false, true), !(all(var_0.b.c.yxw) || !arg_0.d.a.c.x)));
    global0 = i32(-1i) * -16357i;
    let var_2 = Struct_2(func_4(firstLeadingBit(firstTrailingBit(abs(-1i))), func_2(true)).d.a, func_4(i32(-1i) * -2147483647i, arg_0.b).a.b, global2.x & 47858u);
    let var_3 = arg_0.d;
    return max(vec3<i32>(-1i | -firstTrailingBit(var_1.b), _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, var_1.b), arg_0.a.b.x), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-8924i, 0i, 45380i)), vec3<i32>(_wgslsmith_clamp_i32(1i, var_2.b.x, var_1.b), var_3.b.x & 0i, arg_0.b.b))), min(~vec3<i32>(57470i, -2147483647i, var_1.b), reverseBits(vec3<i32>(2147483647i, var_1.b, 20680i))) ^ _wgslsmith_mod_vec3_i32(func_3().wzz, vec3<i32>(var_1.b, select(var_2.a.b, var_3.b.x, false), var_3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(func_5(func_4(reverseBits(23134i), func_1(Struct_3(Struct_2(Struct_1(235f, 39241i, vec4<bool>(false, true, false, false)), vec3<i32>(-9813i, 2147483647i, 2147483647i), u_input.a), Struct_1(652f, 5826i, vec4<bool>(false, false, true, false)), 23286u, Struct_2(Struct_1(-1120f, -2147483647i, vec4<bool>(false, true, false, true)), vec3<i32>(2147483647i, 5146i, -1i), global2.x))))), func_4(2147483647i, Struct_1(_wgslsmith_div_f32(779f, 1458f), func_2(true).b, vec4<bool>(true, true, false, true))).d.b, min(vec3<i32>(-15431i, 2147483647i, 1i), vec3<i32>(4882i, 27570i, 15804i)) & ~select(vec3<i32>(-11375i, -16513i, 1i), vec3<i32>(-24732i, 9022i, -1i), true)), vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-20196i, -2147483647i, 34859i), vec3<i32>(-45740i, 11414i, -5094i)) ^ _wgslsmith_add_i32(1i, 3681i)), (i32(-1i) * -2147483647i) ^ _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 1i, 2147483647i), vec3<i32>(-1i, -23778i, -2039i)), ~(func_5(Struct_3(Struct_2(Struct_1(-450f, -2147483647i, vec4<bool>(false, false, true, false)), vec3<i32>(-11397i, -35335i, 6022i), global2.x), Struct_1(1116f, -19574i, vec4<bool>(true, false, false, true)), 10183u, Struct_2(Struct_1(1855f, 1i, vec4<bool>(false, true, false, false)), vec3<i32>(41875i, -35387i, 2271i), 1u))).x & -25233i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-670f - 185f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1487f)))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1f, 1f)))));
    global1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_1(Struct_3(Struct_2(Struct_1(-378f, 2147483647i, vec4<bool>(false, true, true, true)), vec3<i32>(var_0, var_0, -1i), global2.x), Struct_1(-400f, var_0, vec4<bool>(true, false, false, true)), u_input.a, Struct_2(Struct_1(1616f, var_0, vec4<bool>(true, false, true, true)), vec3<i32>(var_0, 2147483647i, var_0), 0u))).a, _wgslsmith_f_op_f32(select(-391f, -1168f, false))))), -func_1(func_4(select(0i, var_0, true), Struct_1(-1000f, -1i, vec4<bool>(true, false, false, false)))).b, !(!vec4<bool>(true, all(vec3<bool>(true, false, true)), 1i != var_0, false)));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_2.a))));
    var var_3 = firstTrailingBit(vec2<i32>(-58255i ^ _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0, 1i), _wgslsmith_add_i32(12287i, var_2.b), max(40593i, 34057i)), -_wgslsmith_sub_i32(func_2(false).b, var_0 | -66224i)));
    var var_4 = _wgslsmith_f_op_f32(757f - 2512f);
    var var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-133f)), -489f, -579f, var_2.a) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_2.a, var_2.a), _wgslsmith_f_op_f32(min(307f, 147f)), _wgslsmith_f_op_f32(f32(-1f) * -170f), 1000f)), vec4<f32>(-1304f, var_2.a, _wgslsmith_f_op_f32(var_2.a + var_2.a), _wgslsmith_f_op_f32(max(439f, 1000f))), vec4<bool>(var_2.c.x, false, !(4294967295u <= global2.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(false).a, _wgslsmith_div_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 4294967295u, global2.x, u_input.a), vec4<u32>(global2.x, 10550u, 23559u, 12194u))), vec4<u32>(~4294967295u, 43010u ^ u_input.a, 28156u, ~_wgslsmith_add_u32(23781u, u_input.a))), _wgslsmith_f_op_f32(exp2(var_2.a)), -(var_0 & abs(var_0)));
}

