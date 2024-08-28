struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u), false, Struct_2(vec4<i32>(-1617i, 60559i, 2147483647i, -27214i), vec3<u32>(610u, 6974u, 1u), Struct_1(354f, vec2<bool>(true, true), vec4<i32>(-1i, -1i, -1i, -6624i), 1u))), Struct_3(vec3<u32>(21958u, 0u, 16079u), false, Struct_2(vec4<i32>(-1i, 8289i, 1i, i32(-2147483648)), vec3<u32>(4548u, 32346u, 23785u), Struct_1(426f, vec2<bool>(false, false), vec4<i32>(-399i, -15359i, 6484i, 21981i), 81013u))), Struct_3(vec3<u32>(0u, 20195u, 1u), true, Struct_2(vec4<i32>(1i, 26764i, 1i, 8211i), vec3<u32>(4629u, 4294967295u, 7807u), Struct_1(548f, vec2<bool>(true, true), vec4<i32>(-1932i, 1i, 0i, 60381i), 25181u))), Struct_3(vec3<u32>(15981u, 34826u, 0u), true, Struct_2(vec4<i32>(-62172i, -18774i, 0i, 18060i), vec3<u32>(97535u, 0u, 4294967295u), Struct_1(-136f, vec2<bool>(false, true), vec4<i32>(-927i, 0i, 10798i, 0i), 0u))), Struct_3(vec3<u32>(58252u, 0u, 21800u), true, Struct_2(vec4<i32>(-11895i, -10436i, -11605i, 14239i), vec3<u32>(0u, 0u, 1u), Struct_1(1406f, vec2<bool>(true, true), vec4<i32>(-21771i, 0i, 2147483647i, 9472i), 1u))), Struct_3(vec3<u32>(4294967295u, 81239u, 4294967295u), true, Struct_2(vec4<i32>(2147483647i, 12403i, 2147483647i, 2147483647i), vec3<u32>(53618u, 0u, 13751u), Struct_1(-1072f, vec2<bool>(false, false), vec4<i32>(24651i, -1i, 22902i, 2147483647i), 0u))), Struct_3(vec3<u32>(1u, 37358u, 0u), false, Struct_2(vec4<i32>(-29075i, 1i, 2147483647i, 1i), vec3<u32>(6401u, 1u, 1u), Struct_1(-625f, vec2<bool>(false, true), vec4<i32>(-1i, 2147483647i, -30558i, 57782i), 4294967295u))), Struct_3(vec3<u32>(4294967295u, 2732u, 4294967295u), true, Struct_2(vec4<i32>(-870i, 0i, -1i, 38399i), vec3<u32>(41985u, 0u, 1u), Struct_1(197f, vec2<bool>(true, false), vec4<i32>(18439i, 50359i, -29480i, 2147483647i), 21999u))), Struct_3(vec3<u32>(0u, 1u, 52846u), false, Struct_2(vec4<i32>(1i, -3651i, 1i, 1i), vec3<u32>(14472u, 13445u, 0u), Struct_1(300f, vec2<bool>(false, true), vec4<i32>(0i, -22291i, 0i, 0i), 1u))), Struct_3(vec3<u32>(53967u, 49734u, 17904u), false, Struct_2(vec4<i32>(i32(-2147483648), -15177i, -1i, -926i), vec3<u32>(11825u, 4294967295u, 1u), Struct_1(1757f, vec2<bool>(true, true), vec4<i32>(-3519i, -20615i, 14373i, i32(-2147483648)), 4294967295u))), Struct_3(vec3<u32>(57506u, 1u, 4294967295u), false, Struct_2(vec4<i32>(0i, -1i, -31303i, 46412i), vec3<u32>(25026u, 4294967295u, 43411u), Struct_1(-1684f, vec2<bool>(false, true), vec4<i32>(-36594i, -23649i, 74483i, -1i), 10557u))), Struct_3(vec3<u32>(0u, 0u, 1u), true, Struct_2(vec4<i32>(2147483647i, -7249i, -12023i, 46702i), vec3<u32>(2225u, 1u, 21442u), Struct_1(362f, vec2<bool>(false, false), vec4<i32>(-43313i, -11489i, 0i, 62223i), 1u))), Struct_3(vec3<u32>(34813u, 4294967295u, 0u), true, Struct_2(vec4<i32>(i32(-2147483648), 36182i, -25111i, 2147483647i), vec3<u32>(0u, 0u, 4294967295u), Struct_1(-838f, vec2<bool>(true, true), vec4<i32>(-5812i, 2147483647i, 6937i, -100i), 52095u))), Struct_3(vec3<u32>(1u, 113199u, 4294967295u), true, Struct_2(vec4<i32>(3224i, 4966i, 64955i, -11715i), vec3<u32>(0u, 17232u, 22607u), Struct_1(-190f, vec2<bool>(false, true), vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)), 20772u))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(firstTrailingBit(select(vec3<u32>(u_input.a.x, 1u, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), min(~vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), true)), any(select(vec3<bool>(all(vec3<bool>(false, true, true)), all(vec4<bool>(false, false, false, true)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), false)), Struct_2(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(0i, 20818i, 29450i, -83094i)), vec4<i32>(1i, max(-50015i, -36238i), 7167i, 1i)), ~vec3<u32>(0u >> (u_input.a.x % 32u), 1u << (u_input.a.x % 32u), ~u_input.a.x), Struct_1(-1223f, select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), ~(-vec4<i32>(0i, 1i, 6356i, 2147483647i)), u_input.a.x)));
    var var_1 = any(select(vec3<bool>(all(select(vec3<bool>(var_0.b, var_0.c.c.b.x, true), vec3<bool>(false, true, true), false)), true, false || var_0.b), vec3<bool>(var_0.c.c.b.x, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), var_0.b)), !(var_0.b || var_0.b)), select(vec3<bool>(false, true, true), vec3<bool>(-1096f < var_0.c.c.a, true, all(vec3<bool>(var_0.b, false, false))), !(!vec3<bool>(false, var_0.c.c.b.x, false)))));
    var_1 = true;
    global0 = array<Struct_3, 14>();
    var var_2 = global0[_wgslsmith_index_u32(abs(reverseBits(1u & var_0.c.c.d)), 14u)];
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-678f))))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_3) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(-624f, 1607f), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))), arg_1);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_3, 14>();
    let var_0 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(floor(-717f)));
    var var_1 = firstLeadingBit(select(1i, 1i, all(vec2<bool>(arg_0, arg_0)))) << (u_input.a.x % 32u);
    let var_2 = var_0;
    let var_3 = Struct_1(arg_2, select(vec2<bool>(any(!vec4<bool>(false, arg_0, arg_0, arg_0)), !(!arg_0)), select(vec2<bool>(960f != arg_2, arg_0), vec2<bool>(arg_1 != arg_2, true), !(!arg_0)), select(vec2<bool>(any(vec4<bool>(true, false, arg_0, true)), var_0.x == -934f), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false), arg_0), vec2<bool>(!arg_0, false & arg_0))), vec4<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -1i, -2147483647i), vec3<i32>(-1i, -2147483647i, 41721i) << (vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), 1i & (_wgslsmith_add_i32(0i, 7943i) | _wgslsmith_dot_vec3_i32(vec3<i32>(-27687i, 1i, 1i), vec3<i32>(-6271i, -16529i, 19708i))), 1150i, _wgslsmith_mod_i32((38078i >> (u_input.a.x % 32u)) << (4294967295u % 32u), i32(-1i) * -14965i)), 4371u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1708f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1091f - 1761f))))), select(!vec2<bool>(!var_3.b.x, !arg_0), !select(!vec2<bool>(true, arg_0), var_3.b, true), vec2<bool>(false, !any(vec4<bool>(false, arg_0, true, false)))), vec4<i32>(0i, var_3.c.x, 1i, ~var_3.c.x), 21067u);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_3, 14>();
    let var_0 = vec4<bool>(true, true, true, true);
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    var var_1 = select(var_0.x, true, any(var_0.wz));
    return func_4(true, _wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.x, 1030f, vec3<i32>(-2147483647i, -37660i, -48634i), global0[_wgslsmith_index_u32(0u, 14u)])))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_3, 14>();
    let var_0 = all(vec2<bool>(false, !any(vec3<bool>(false, false, arg_1.b.x))));
    let var_1 = arg_0;
    let var_2 = arg_3;
    return ~6186u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(_wgslsmith_f_op_f32(step(445f, -913f)) < _wgslsmith_f_op_f32(f32(-1f) * -307f))) || true;
    let var_1 = var_0;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(~u_input.a.x | _wgslsmith_div_u32(u_input.a.x, 17724u)) << (func_5(Struct_2(vec4<i32>(2147483647i, -53219i, -23640i, -2147483647i), vec3<u32>(19644u, 70434u, 0u) << (vec3<u32>(u_input.a.x, 24140u, u_input.a.x) % vec3<u32>(32u)), Struct_1(-1529f, vec2<bool>(var_1, var_1), vec4<i32>(7100i, -1i, -1i, 67677i), u_input.a.x)), func_1(), func_1(), Struct_2(vec4<i32>(-5350i, 0i, 2147483647i, 2147483647i), vec3<u32>(39547u, 19710u, 34123u), func_1())) % 32u), _wgslsmith_clamp_u32(func_1().d, select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(19465u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 55179u, u_input.a.x)) & _wgslsmith_add_u32(79044u, u_input.a.x), all(vec4<bool>(false, true, var_1, false))), func_4(true, _wgslsmith_f_op_f32(func_1().a + _wgslsmith_f_op_f32(-504f - -435f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) - -300f)).d)), 14u)];
    let var_3 = 103292u;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-808f - _wgslsmith_f_op_f32(-var_2.c.c.a)))) + var_2.c.c.a), -1000f);
    let var_5 = global0[_wgslsmith_index_u32(24456u << (abs(_wgslsmith_mult_u32(u_input.a.x, ~27474u) | var_2.c.b.x) % 32u), 14u)];
    global0 = array<Struct_3, 14>();
    let var_6 = select(!vec4<bool>(true, (var_1 && false) == (var_5.c.c.c.x != var_2.c.c.c.x), var_5.c.c.b.x, var_1), select(select(vec4<bool>(var_2.b, true, true, true), !select(vec4<bool>(var_2.c.c.b.x, var_0, var_5.b, true), vec4<bool>(false, var_1, false, true), var_1), all(vec4<bool>(var_2.b, var_1, true, false)) | true), select(vec4<bool>(select(var_0, false, false), !var_0, var_0, true), select(vec4<bool>(false, var_1, true, var_2.b), vec4<bool>(var_5.c.c.b.x, false, false, var_2.c.c.b.x), select(vec4<bool>(false, var_0, true, var_2.c.c.b.x), vec4<bool>(false, var_0, true, var_1), true)), true), select(select(select(vec4<bool>(var_5.c.c.b.x, true, false, true), vec4<bool>(var_2.c.c.b.x, false, var_1, false), false), !vec4<bool>(false, var_1, var_0, var_5.c.c.b.x), !vec4<bool>(var_0, var_0, true, var_2.b)), vec4<bool>(true, all(vec2<bool>(false, var_2.c.c.b.x)), true, 2147483647i < var_2.c.c.c.x), select(var_5.b, true, var_5.c.c.c.x != var_2.c.c.c.x))), !vec4<bool>(var_0, var_2.c.c.a < _wgslsmith_div_f32(272f, 1126f), var_5.c.c.b.x, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec3<u32>(1u, var_2.c.c.d, 22057u))), var_4.x, vec4<f32>(-229f, var_5.c.c.a, 1156f, var_4.x));
}

