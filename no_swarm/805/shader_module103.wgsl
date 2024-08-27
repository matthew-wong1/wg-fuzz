struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(-1498f, Struct_2(Struct_1(vec4<i32>(-39212i, -1i, i32(-2147483648), 1i), 4294967295u, 36342u, 1i), Struct_1(vec4<i32>(-54478i, 1i, 11755i, 1i), 1u, 4294967295u, 11100i), 2147483647i, -1482f)), Struct_4(292f, Struct_2(Struct_1(vec4<i32>(0i, -1i, -6133i, 0i), 4294967295u, 37519u, -39751i), Struct_1(vec4<i32>(i32(-2147483648), 0i, -18093i, -1i), 0u, 36935u, 1i), -32898i, 245f)), Struct_4(-754f, Struct_2(Struct_1(vec4<i32>(0i, 36139i, 6095i, -1i), 14443u, 4294967295u, 0i), Struct_1(vec4<i32>(i32(-2147483648), -19197i, 1i, -1i), 44534u, 20616u, -26546i), -72626i, 1984f)), Struct_4(-1508f, Struct_2(Struct_1(vec4<i32>(-15952i, 4926i, 0i, -49272i), 4294967295u, 0u, 52076i), Struct_1(vec4<i32>(-52937i, -63035i, i32(-2147483648), 10174i), 0u, 0u, 7496i), 32633i, 600f)), Struct_4(325f, Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 9633i, -36303i), 4294967295u, 4294967295u, 1i), Struct_1(vec4<i32>(-1i, 2147483647i, 0i, 1191i), 4294967295u, 0u, 2147483647i), 6574i, 1316f)), Struct_4(-208f, Struct_2(Struct_1(vec4<i32>(-22451i, -1i, 2147483647i, 2147483647i), 2165u, 49853u, -45900i), Struct_1(vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i), 17494u, 0u, -40003i), 1i, -1000f)), Struct_4(1366f, Struct_2(Struct_1(vec4<i32>(47699i, 1i, 0i, -16040i), 33423u, 1u, -1i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 30976i, 29089i), 4294967295u, 114172u, -10585i), 2147483647i, 2206f)), Struct_4(1000f, Struct_2(Struct_1(vec4<i32>(85i, i32(-2147483648), i32(-2147483648), 6520i), 0u, 38339u, 7286i), Struct_1(vec4<i32>(2147483647i, -1262i, 1i, 19818i), 4294967295u, 4413u, 23026i), -38769i, 626f)), Struct_4(530f, Struct_2(Struct_1(vec4<i32>(12910i, 0i, 2147483647i, 1i), 102831u, 4294967295u, 1i), Struct_1(vec4<i32>(0i, -31919i, 1i, i32(-2147483648)), 21373u, 17709u, 5695i), 1248i, -993f)), Struct_4(-688f, Struct_2(Struct_1(vec4<i32>(-27308i, -11613i, -41152i, 1i), 9672u, 11328u, 3502i), Struct_1(vec4<i32>(4508i, i32(-2147483648), -1i, i32(-2147483648)), 42803u, 1651u, 24297i), -21140i, 1553f)), Struct_4(-1178f, Struct_2(Struct_1(vec4<i32>(27655i, 0i, 2147483647i, 0i), 1u, 1u, 14320i), Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, 4425i), 11549u, 46336u, -14511i), 0i, 1345f)), Struct_4(-1040f, Struct_2(Struct_1(vec4<i32>(23537i, 0i, -1i, i32(-2147483648)), 1u, 2800u, i32(-2147483648)), Struct_1(vec4<i32>(-18988i, 1i, 2147483647i, -58611i), 1u, 1u, 0i), 2147483647i, -401f)), Struct_4(1009f, Struct_2(Struct_1(vec4<i32>(0i, 1i, 2147483647i, i32(-2147483648)), 19800u, 54506u, -22488i), Struct_1(vec4<i32>(2147483647i, 5805i, 2147483647i, -13668i), 1u, 0u, 38972i), -1i, 1372f)), Struct_4(691f, Struct_2(Struct_1(vec4<i32>(1i, -45731i, -14691i, 2147483647i), 0u, 8523u, 55570i), Struct_1(vec4<i32>(481i, 1i, -76226i, 22222i), 39043u, 9598u, i32(-2147483648)), 2147483647i, -1766f)), Struct_4(325f, Struct_2(Struct_1(vec4<i32>(-10268i, -3174i, 2147483647i, 2147483647i), 1u, 1u, 7049i), Struct_1(vec4<i32>(-1851i, 0i, 1i, -7523i), 4294967295u, 4294967295u, 0i), 0i, -123f)), Struct_4(519f, Struct_2(Struct_1(vec4<i32>(1i, 0i, 46037i, 2147483647i), 38358u, 1u, -1i), Struct_1(vec4<i32>(-1i, 1i, 2147483647i, 1i), 0u, 17845u, 1i), 2147483647i, 1201f)), Struct_4(-741f, Struct_2(Struct_1(vec4<i32>(20681i, 2147483647i, 4244i, -16501i), 29693u, 1u, 14582i), Struct_1(vec4<i32>(2147483647i, -29379i, 1i, 17557i), 41204u, 4294967295u, 1i), 1i, -1155f)), Struct_4(1000f, Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -18502i, -1i, -1i), 2129u, 47244u, 0i), Struct_1(vec4<i32>(i32(-2147483648), -7139i, 1i, 45749i), 15515u, 24717u, 0i), 17079i, 436f)), Struct_4(-581f, Struct_2(Struct_1(vec4<i32>(-1i, 23228i, 2147483647i, 0i), 1u, 1u, -57426i), Struct_1(vec4<i32>(3206i, 39503i, 1i, -1i), 2643u, 112722u, -26032i), 18255i, 886f)), Struct_4(1494f, Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 15871i, 27794i, 0i), 4294967295u, 33839u, -10431i), Struct_1(vec4<i32>(0i, 19426i, 19140i, 0i), 97117u, 39487u, -69418i), 0i, 1000f)), Struct_4(-2543f, Struct_2(Struct_1(vec4<i32>(-16680i, -66979i, -24887i, -1i), 46260u, 0u, 28781i), Struct_1(vec4<i32>(-20654i, 2147483647i, -1i, -1i), 15665u, 1u, 34626i), i32(-2147483648), -489f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2130f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * _wgslsmith_f_op_f32(sign(872f))))));
    let var_1 = Struct_3(Struct_2(Struct_1(select(min(vec4<i32>(-60578i, -1i, 1i, 2147483647i), vec4<i32>(57826i, 0i, 2147483647i, -35830i)), vec4<i32>(1i, 1i, 1i, 1i), false), 1735u, u_input.a.x ^ 0u, -min(7776i, 1i)), Struct_1(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-15951i, 47359i, 0i, 16436i), vec4<i32>(2147483647i, 1i, -20448i, 2147483647i))), _wgslsmith_add_u32(countOneBits(4294967295u), arg_0.x), 0u, -2147483647i), _wgslsmith_dot_vec4_i32(select(select(vec4<i32>(-2147483647i, -1i, 2147483647i, -21209i), vec4<i32>(2147483647i, 1i, -22255i, -48202i), true), select(vec4<i32>(10465i, 1i, 1i, -1i), vec4<i32>(29440i, -1220i, 1i, 2147483647i), vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true))), -vec4<i32>(35764i, 1i, 1i, -32519i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-165f + 1064f) + _wgslsmith_f_op_f32(sign(568f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -101f), 864f)), true | any(vec4<bool>(false, false, true, true))))), !select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(Struct_1(select(vec4<i32>(-2771i, -18354i, -1i, 1i), vec4<i32>(39212i, -20519i, -3952i, 1i), vec4<bool>(false, false, false, false)) << (~vec4<u32>(u_input.a.x, 30556u, 1u, 2408u) % vec4<u32>(32u)), u_input.a.x, abs(countOneBits(u_input.a.x)), -6432i), Struct_1(~(-vec4<i32>(-70771i, 14207i, -34055i, 11664i)), u_input.a.x, _wgslsmith_mod_u32(select(4294967295u, u_input.a.x, true), 13122u), _wgslsmith_dot_vec2_i32(vec2<i32>(41854i, -2147483647i), -vec2<i32>(2147483647i, 32830i))), _wgslsmith_dot_vec2_i32(-vec2<i32>(-25053i, 0i), ~vec2<i32>(38334i, 14625i)) ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(-28037i, -1i, -2147483647i), vec3<i32>(-60954i, -1i, 2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1329f * 395f)))));
    var_0 = _wgslsmith_f_op_f32(var_1.c.d - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d))) * _wgslsmith_f_op_f32(464f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d - var_1.c.d)))));
    var var_2 = var_1.c.d;
    var var_3 = select(select(var_1.b, !select(!var_1.b, !var_1.b, any(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))), vec2<bool>(!var_1.b.x, var_1.b.x != var_1.b.x)), var_1.b, !select(vec2<bool>(var_1.b.x, false), select(!vec2<bool>(true, var_1.b.x), var_1.b, var_1.b), vec2<bool>(false, all(vec4<bool>(true, var_1.b.x, false, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f + -1362f) * -384f);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_3(~(~vec3<u32>(~4294967295u, u_input.a.x << (61970u % 32u), u_input.a.x))));
    global0 = array<Struct_4, 21>();
    let var_1 = u_input.a;
    global0 = array<Struct_4, 21>();
    var var_2 = Struct_3(Struct_2(Struct_1(vec4<i32>(i32(-1i) * -1i, arg_1.x, abs(arg_0), min(arg_0, -112i)), ~115268u, _wgslsmith_mod_u32(var_1.x, 1u), _wgslsmith_mod_i32(2147483647i, -arg_1.x)), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, arg_0, -14725i, 2147483647i), vec4<i32>(-1i, arg_0, arg_0, arg_1.x)) >> (vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x) % vec4<u32>(32u)), u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(19679u, 26219u, 48855u, 5094u), vec4<u32>(6407u, 4294967295u, 0u, 4294967295u)), arg_1.x), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))), vec2<bool>(any(vec2<bool>(true, true)), true), Struct_2(Struct_1(~reverseBits(vec4<i32>(-2147483647i, 0i, arg_1.x, -1i)), _wgslsmith_mod_u32(var_1.x, _wgslsmith_mod_u32(0u, var_1.x)), _wgslsmith_add_u32(min(4389u, 4294967295u), var_1.x), arg_0), Struct_1(~vec4<i32>(arg_0, -2147483647i, 35141i, arg_0), firstTrailingBit(~u_input.a.x), 0u, ~arg_0 << (16077u % 32u)), _wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_add_i32(max(arg_0, arg_1.x), 0i), 1i), _wgslsmith_f_op_f32(-var_0)));
    return Struct_3(Struct_2(var_2.c.a, Struct_1(vec4<i32>(-4677i << (1u % 32u), 18956i, 1i, var_2.c.b.a.x), u_input.a.x, var_2.a.a.b, 1i), _wgslsmith_dot_vec4_i32(reverseBits(select(vec4<i32>(arg_1.x, arg_1.x, 0i, 0i), vec4<i32>(var_2.c.c, -21216i, arg_1.x, 0i), var_2.b.x)), var_2.c.b.a), 2467f), !select(vec2<bool>(var_2.b.x & false, true), !select(var_2.b, vec2<bool>(var_2.b.x, var_2.b.x), var_2.b), !select(var_2.b, vec2<bool>(var_2.b.x, var_2.b.x), true)), var_2.c);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d * arg_2.c.d));
    let var_1 = arg_2.a.a.a.zx;
    let var_2 = arg_2.a;
    var_0 = arg_2.c.d;
    var_0 = -1610f;
    return abs(var_1.x);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = all(select(select(vec3<bool>(true, all(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, false, false))), vec3<bool>(true, true, true), all(vec2<bool>(false, true)) | true), !vec3<bool>(all(vec2<bool>(false, true)), false, false), -arg_0.c < func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.c, u_input.a.x, 79194u), vec3<u32>(0u, arg_0.b.b, u_input.a.x)), true, func_2(arg_0.c, arg_0.b.a.zx, vec3<f32>(arg_1, arg_0.d, arg_0.d)))));
    let var_1 = arg_0.b;
    let var_2 = Struct_2(func_2(arg_0.a.a.x, min(arg_0.a.a.xz, -arg_0.a.a.zw), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.d, arg_1, -1173f)))).c.a, arg_0.a, arg_0.a.d << (~0u % 32u), arg_1);
    var var_3 = select(var_0, true, false);
    global0 = array<Struct_4, 21>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(!all(vec3<bool>(false, true, true)), u_input.a.x >= 4294967295u, true), vec3<bool>(true, true, true), vec3<bool>(!func_1(Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, -4808i, 0i), u_input.a.x, u_input.a.x, -2147483647i), Struct_1(vec4<i32>(-15764i, 1i, 1i, 3959i), u_input.a.x, 0u, -10497i), 83383i, -995f), -439f), abs(4697u) < u_input.a.x, !any(vec2<bool>(false, false)))), vec3<bool>(true, true, true), !vec3<bool>(true, false, true || (u_input.a.x >= u_input.a.x)));
    global0 = array<Struct_4, 21>();
    global0 = array<Struct_4, 21>();
    global0 = array<Struct_4, 21>();
    global0 = array<Struct_4, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(-604f, 475f)), _wgslsmith_f_op_f32(trunc(186f)), _wgslsmith_div_f32(-1939f, 778f), _wgslsmith_div_f32(-818f, 388f)))))), 14059u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(796f + 1000f) - -1640f), -182f)), 196f);
}

