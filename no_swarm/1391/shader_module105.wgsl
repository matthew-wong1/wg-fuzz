struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<i32>(37914i, 21469i, 0i, 58559i)), vec2<f32>(133f, 980f), Struct_1(vec4<i32>(-27444i, -65707i, -1i, -1i)), vec4<u32>(110527u, 16611u, 4605u, 1u), Struct_1(vec4<i32>(-1i, 34258i, -38957i, 0i))), Struct_2(Struct_1(vec4<i32>(-1i, -40229i, -30594i, 1i)), vec2<f32>(-1000f, 1020f), Struct_1(vec4<i32>(2147483647i, 0i, -51624i, i32(-2147483648))), vec4<u32>(1u, 4294967295u, 22266u, 6614u), Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), -1i))), Struct_2(Struct_1(vec4<i32>(2147483647i, 27067i, 0i, 1i)), vec2<f32>(1000f, -1710f), Struct_1(vec4<i32>(-1i, i32(-2147483648), -15470i, -46917i)), vec4<u32>(32919u, 4294967295u, 4294967295u, 9258u), Struct_1(vec4<i32>(2147483647i, 1i, 16124i, 5467i))), Struct_2(Struct_1(vec4<i32>(18771i, -1196i, i32(-2147483648), 6851i)), vec2<f32>(-1052f, -1000f), Struct_1(vec4<i32>(12621i, -1i, 0i, -1i)), vec4<u32>(623u, 2800u, 4294967295u, 56087u), Struct_1(vec4<i32>(37270i, -54000i, -16387i, 0i))), Struct_2(Struct_1(vec4<i32>(-11283i, i32(-2147483648), 2147483647i, 25142i)), vec2<f32>(301f, -866f), Struct_1(vec4<i32>(1i, -1564i, 34559i, 3297i)), vec4<u32>(66068u, 0u, 0u, 4294967295u), Struct_1(vec4<i32>(-1i, -4281i, 22237i, -41689i))), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, -25886i, 19901i)), vec2<f32>(596f, -2103f), Struct_1(vec4<i32>(2147483647i, 2147483647i, -28359i, 2147483647i)), vec4<u32>(36289u, 4294967295u, 9329u, 10135u), Struct_1(vec4<i32>(2147483647i, 18469i, -18958i, 1i))), Struct_2(Struct_1(vec4<i32>(0i, 1i, 40420i, -5334i)), vec2<f32>(-1131f, -127f), Struct_1(vec4<i32>(-1i, -38664i, 2147483647i, 0i)), vec4<u32>(1u, 1u, 32205u, 5725u), Struct_1(vec4<i32>(i32(-2147483648), -1i, -22416i, 1i))), Struct_2(Struct_1(vec4<i32>(35633i, 1i, -1i, 5704i)), vec2<f32>(1000f, 1588f), Struct_1(vec4<i32>(-4931i, 1i, 0i, 23771i)), vec4<u32>(1u, 0u, 14104u, 0u), Struct_1(vec4<i32>(-33665i, -1i, 2147483647i, -1i))), Struct_2(Struct_1(vec4<i32>(2147483647i, -3303i, -44697i, 28313i)), vec2<f32>(-1065f, 405f), Struct_1(vec4<i32>(29332i, 14026i, 1i, 37286i)), vec4<u32>(1u, 2644u, 64583u, 8027u), Struct_1(vec4<i32>(2147483647i, 2147483647i, -1i, -1i))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -3748i, 2147483647i, i32(-2147483648))), vec2<f32>(1000f, 360f), Struct_1(vec4<i32>(26747i, -42075i, -37252i, -12192i)), vec4<u32>(1120u, 42453u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(1i, -8235i, i32(-2147483648), -40159i))), Struct_2(Struct_1(vec4<i32>(-16911i, 1i, -66684i, 1i)), vec2<f32>(494f, -1406f), Struct_1(vec4<i32>(-29898i, -1i, -14542i, 9053i)), vec4<u32>(4294967295u, 30022u, 1u, 14203u), Struct_1(vec4<i32>(2147483647i, -1i, -57754i, 59910i))), Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), -9730i, 1i)), vec2<f32>(-1701f, 1060f), Struct_1(vec4<i32>(-75065i, 23032i, 0i, -10411i)), vec4<u32>(1u, 1u, 112529u, 6504u), Struct_1(vec4<i32>(i32(-2147483648), -68793i, -38971i, 57444i))), Struct_2(Struct_1(vec4<i32>(-42163i, -1i, 781i, 32053i)), vec2<f32>(312f, -1280f), Struct_1(vec4<i32>(-14348i, 54699i, i32(-2147483648), 2147483647i)), vec4<u32>(1u, 97666u, 0u, 17934u), Struct_1(vec4<i32>(67907i, i32(-2147483648), 2147483647i, 7792i))), Struct_2(Struct_1(vec4<i32>(-3140i, -13391i, 1i, 23708i)), vec2<f32>(659f, -1245f), Struct_1(vec4<i32>(i32(-2147483648), 772i, 1i, -19868i)), vec4<u32>(26385u, 4294967295u, 4516u, 4294967295u), Struct_1(vec4<i32>(-12553i, -1i, 35334i, -10036i))), Struct_2(Struct_1(vec4<i32>(1i, -1i, 49157i, 10878i)), vec2<f32>(317f, 411f), Struct_1(vec4<i32>(2147483647i, 1i, 12326i, -21512i)), vec4<u32>(1u, 124137u, 20006u, 45109u), Struct_1(vec4<i32>(-37272i, -22173i, -8252i, -60754i))), Struct_2(Struct_1(vec4<i32>(1i, 15520i, -1i, 2147483647i)), vec2<f32>(-1000f, 533f), Struct_1(vec4<i32>(-49422i, 0i, 31816i, 55159i)), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), Struct_1(vec4<i32>(2147483647i, 25993i, i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec4<i32>(1i, 1i, 0i, -66068i)), vec2<f32>(-917f, -523f), Struct_1(vec4<i32>(6023i, 6369i, 12766i, 2147483647i)), vec4<u32>(0u, 46250u, 20818u, 0u), Struct_1(vec4<i32>(-7804i, 1i, i32(-2147483648), 1i))), Struct_2(Struct_1(vec4<i32>(-45817i, -62992i, 20596i, -37518i)), vec2<f32>(2747f, 169f), Struct_1(vec4<i32>(-1i, 0i, 1i, -47303i)), vec4<u32>(14136u, 19237u, 17208u, 4294967295u), Struct_1(vec4<i32>(1i, 1i, 1i, 20402i))), Struct_2(Struct_1(vec4<i32>(0i, 0i, 0i, 2147483647i)), vec2<f32>(842f, -600f), Struct_1(vec4<i32>(49662i, 1253i, 2147483647i, i32(-2147483648))), vec4<u32>(6503u, 4294967295u, 12256u, 1u), Struct_1(vec4<i32>(1i, i32(-2147483648), 2147483647i, -19253i))), Struct_2(Struct_1(vec4<i32>(-12273i, 0i, i32(-2147483648), i32(-2147483648))), vec2<f32>(291f, -446f), Struct_1(vec4<i32>(2147483647i, -21533i, 8216i, 1i)), vec4<u32>(1u, 35u, 1u, 1u), Struct_1(vec4<i32>(i32(-2147483648), -23548i, -1i, 15488i))));

var<private> global1: array<u32, 2>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> Struct_3 {
    var var_0 = !vec4<bool>(true, 17535u == max(~2469u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.a.x)), false, any(vec2<bool>(true, true)));
    var var_1 = var_0.x;
    global0 = array<Struct_2, 20>();
    var_1 = var_0.x;
    global0 = array<Struct_2, 20>();
    return Struct_3(all(select(var_0.xy, var_0.xx, var_0.zz)), vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(56553u, 25732u), _wgslsmith_dot_vec3_u32(vec3<u32>(57800u, 1u, u_input.a.x), u_input.b)) << (_wgslsmith_div_u32(abs(1u), ~1u) % 32u), 1u, 0u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1982f, 688f, 341f, 793f), vec4<f32>(-1710f, 216f, -193f, -651f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1157f, 537f, -631f, 1040f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1199f, 1779f) * vec2<f32>(-780f, 314f)) * _wgslsmith_div_vec2_f32(vec2<f32>(201f, 1393f), vec2<f32>(704f, -554f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-488f, 1000f))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<i32> {
    let var_0 = !any(vec2<bool>(true, arg_2.x >= arg_2.x)) | arg_0.x;
    let var_1 = Struct_1(~vec4<i32>(arg_1.a.x, _wgslsmith_add_i32(u_input.c, 2147483647i), -26136i, arg_1.a.x | u_input.c) << (vec4<u32>(12830u, ~abs(79516u), _wgslsmith_dot_vec2_u32(vec2<u32>(48584u, global1[_wgslsmith_index_u32(7678u, 2u)]), _wgslsmith_clamp_vec2_u32(u_input.a.wz, vec2<u32>(54602u, global1[_wgslsmith_index_u32(0u, 2u)]), u_input.a.zy)), firstTrailingBit(0u) & global1[_wgslsmith_index_u32(~65683u, 2u)]) % vec4<u32>(32u)));
    let var_2 = -abs(abs(arg_1.a));
    global0 = array<Struct_2, 20>();
    global1 = array<u32, 2>();
    return vec4<i32>(-(~(u_input.c ^ -7622i)) | ~var_1.a.x, arg_1.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~(-var_1.a.xw), var_1.a.ww), abs(_wgslsmith_mod_i32(~var_2.x, _wgslsmith_mult_i32(u_input.c, var_1.a.x)))), -1i);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    var var_0 = abs(2147483647i);
    global1 = array<u32, 2>();
    let var_1 = func_1();
    global0 = array<Struct_2, 20>();
    let var_2 = arg_1.c.zyy;
    return Struct_1(func_3(vec3<bool>(arg_0.a, false, true), Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-9641i, u_input.c, -2147483647i), ~(-1i), -2147483647i, ~2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.d, var_2.zx, vec2<bool>(arg_0.a, arg_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    let var_1 = global0[_wgslsmith_index_u32((~global1[_wgslsmith_index_u32(~0u, 2u)] ^ ~_wgslsmith_mult_u32(1u, abs(90900u))) << (1u % 32u), 20u)];
    let var_2 = !vec2<bool>(1u < global1[_wgslsmith_index_u32(~(~54893u), 2u)], var_0.x);
    let var_3 = func_1();
    var var_4 = func_2(func_1(), var_3);
    let var_5 = vec2<i32>(abs(~firstLeadingBit(_wgslsmith_add_i32(u_input.c, 1i))), _wgslsmith_add_i32(~2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 0i, 2147483647i), var_1.e.a), 33360i)) << (var_1.d.x % 32u));
    var_4 = var_1.a;
    let var_6 = _wgslsmith_add_vec2_u32(~vec2<u32>(abs(4294967295u), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_3.b.x, 2u)], var_1.d.x)) << (vec2<u32>(reverseBits(max(57632u, 18780u)), 4294967295u) % vec2<u32>(32u)), countOneBits(vec2<u32>(var_1.d.x >> (_wgslsmith_sub_u32(var_1.d.x, 36884u) % 32u), _wgslsmith_add_u32(~u_input.a.x, select(4294967295u, var_3.b.x, var_0.x)))));
    var_0 = vec2<bool>(true, var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 54549i), _wgslsmith_mult_vec2_i32(var_4.a.zx, var_1.c.a.zz)) << (var_3.b.x % 32u), vec3<f32>(-1136f, -915f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-744f * -192f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(177f * -2529f), var_1.b.x)), all(vec4<bool>(false, var_0.x, false, false))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_3.c * vec4<f32>(var_1.b.x, -295f, -838f, _wgslsmith_div_f32(-1961f, -611f))))), vec4<i32>(-1i, -3577i | firstTrailingBit(1748i), func_2(Struct_3(false, vec3<u32>(59142u, var_3.b.x, 13288u), vec4<f32>(632f, 161f, var_1.b.x, var_1.b.x), vec2<f32>(1205f, var_3.c.x)), var_3).a.x, _wgslsmith_dot_vec4_i32(var_1.e.a, var_4.a) | func_3(vec3<bool>(false, false, var_0.x), Struct_1(vec4<i32>(var_4.a.x, u_input.c, -38430i, 32263i)), var_1.b).x) << (abs(vec4<u32>(4376u, abs(1u), select(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], false), ~44164u)) % vec4<u32>(32u)), var_1.e.a);
}

