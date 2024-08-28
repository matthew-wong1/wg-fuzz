struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec3<u32>(1u, 70191u, 1u), vec3<u32>(733u, 1u, 34824u), Struct_3(Struct_1(vec4<u32>(41826u, 4294967295u, 1u, 1u), 1930f, -2328f, -634f), Struct_2(vec2<i32>(1i, 1i)), vec3<i32>(9551i, -640i, 2147483647i))), Struct_4(vec3<u32>(0u, 4294967295u, 96888u), vec3<u32>(4894u, 4294967295u, 4294967295u), Struct_3(Struct_1(vec4<u32>(1u, 48127u, 4294967295u, 4294967295u), 922f, 481f, 672f), Struct_2(vec2<i32>(30366i, 27518i)), vec3<i32>(i32(-2147483648), 1i, 113524i))), Struct_4(vec3<u32>(1u, 24703u, 15394u), vec3<u32>(1u, 52788u, 4294967295u), Struct_3(Struct_1(vec4<u32>(0u, 28175u, 1u, 4294967295u), 586f, -160f, -442f), Struct_2(vec2<i32>(21178i, -11457i)), vec3<i32>(-16015i, -3250i, 2147483647i))), Struct_4(vec3<u32>(4818u, 4294967295u, 1u), vec3<u32>(0u, 458u, 42962u), Struct_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), 571f, -402f, 237f), Struct_2(vec2<i32>(-33865i, 1i)), vec3<i32>(0i, i32(-2147483648), 2147483647i))), Struct_4(vec3<u32>(51752u, 73653u, 4294967295u), vec3<u32>(0u, 1u, 43900u), Struct_3(Struct_1(vec4<u32>(0u, 66200u, 0u, 0u), 1000f, -797f, 386f), Struct_2(vec2<i32>(-1i, 2147483647i)), vec3<i32>(31555i, 1i, -78746i))), Struct_4(vec3<u32>(4109u, 4294967295u, 0u), vec3<u32>(4294967295u, 1234u, 1u), Struct_3(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 36734u), 2004f, 222f, -290f), Struct_2(vec2<i32>(-4564i, -14429i)), vec3<i32>(55197i, 2147483647i, -48420i))), Struct_4(vec3<u32>(40960u, 11560u, 1174u), vec3<u32>(16844u, 1u, 0u), Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), -1122f, -350f, 1268f), Struct_2(vec2<i32>(-46634i, 0i)), vec3<i32>(6828i, 22940i, i32(-2147483648)))), Struct_4(vec3<u32>(0u, 41337u, 40856u), vec3<u32>(4294967295u, 23851u, 0u), Struct_3(Struct_1(vec4<u32>(12399u, 4294967295u, 0u, 47904u), -1000f, -1187f, 923f), Struct_2(vec2<i32>(4031i, -1i)), vec3<i32>(-1i, 0i, 27052i))), Struct_4(vec3<u32>(18968u, 4294967295u, 1u), vec3<u32>(0u, 1u, 6840u), Struct_3(Struct_1(vec4<u32>(5954u, 1u, 34516u, 43471u), 210f, 523f, -774f), Struct_2(vec2<i32>(2147483647i, -1i)), vec3<i32>(-1i, 2147483647i, 36307i))), Struct_4(vec3<u32>(2748u, 14513u, 4294967295u), vec3<u32>(41592u, 4294967295u, 79006u), Struct_3(Struct_1(vec4<u32>(4294967295u, 54295u, 22686u, 4294967295u), -1678f, -869f, -1000f), Struct_2(vec2<i32>(-8184i, 2147483647i)), vec3<i32>(6955i, 18406i, -51834i))), Struct_4(vec3<u32>(0u, 45994u, 4294967295u), vec3<u32>(1u, 4294967295u, 38579u), Struct_3(Struct_1(vec4<u32>(69280u, 86456u, 98417u, 1u), 1303f, 1000f, -2671f), Struct_2(vec2<i32>(-57194i, -8094i)), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)))));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = arg_1.c;
    var var_1 = false;
    global0 = array<Struct_4, 11>();
    let var_2 = Struct_3(arg_3, Struct_2(arg_1.c.c.xx), vec3<i32>(u_input.b.x, -u_input.b.x, i32(-1i) * -2147483647i));
    global0 = array<Struct_4, 11>();
    return arg_1.c.b.a.x;
}

fn func_3() -> bool {
    let var_0 = abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 29966u, 4294967295u, 43557u), vec4<u32>(32052u, 1u, 4294967295u, 0u)), ~vec4<u32>(56816u, u_input.a, 55591u, u_input.a))) >> (reverseBits(min(u_input.a, ~16699u)) % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(150f, _wgslsmith_f_op_f32(f32(-1f) * -642f)));
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1545f), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x))))), var_1)) * vec2<f32>(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1843f)))));
    return any(select(!select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec3<bool>(true, !select(true, true, false), true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, false))));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> Struct_3 {
    let var_0 = -(13984i ^ firstTrailingBit(_wgslsmith_mod_i32(min(u_input.b.x, -3780i), func_2(false, Struct_4(vec3<u32>(u_input.a, 44728u, 0u), vec3<u32>(4294967295u, 39070u, u_input.a), Struct_3(Struct_1(vec4<u32>(0u, u_input.a, 30742u, 1u), 1459f, arg_0.x, -218f), Struct_2(u_input.b.zw), u_input.b.xwy)), vec3<u32>(22186u, u_input.a, 0u), Struct_1(vec4<u32>(36744u, 36968u, 0u, u_input.a), arg_0.x, arg_0.x, arg_0.x)))));
    var var_1 = Struct_1(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 1u)) & reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), select(vec4<u32>(803u, 61854u, u_input.a, u_input.a) ^ vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, 23001u, 0u, 21094u), func_3()), !select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(true, arg_1, false, false))) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), select(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 27686u, u_input.a, u_input.a), arg_1) | (vec4<u32>(u_input.a, 0u, u_input.a, 11255u) ^ vec4<u32>(u_input.a, u_input.a, 14510u, 3122u))) % vec4<u32>(32u)), -1889f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(abs(-440f))))), arg_0.x);
    let var_2 = var_0;
    global0 = array<Struct_4, 11>();
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(8820u, 4294967295u), var_1.a.xz & vec2<u32>(var_1.a.x, 90077u)), 1u, var_1.a.x) << (~reverseBits(vec3<u32>(46026u, var_1.a.x, 43717u)) % vec3<u32>(32u)), var_1.a.zxx);
    return Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(u_input.a, 1u, 49963u, var_1.a.x))), ~(vec4<u32>(0u, 58905u, var_3.x, 4294967295u) << (vec4<u32>(23564u, var_1.a.x, var_3.x, var_1.a.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b - arg_0.x), arg_0.x, 1i <= abs(u_input.b.x))), 366f), Struct_2(vec2<i32>(var_2 | ~(-18220i), _wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, u_input.b.x)) & var_2)), _wgslsmith_add_vec3_i32(~(u_input.b.wxw >> (vec3<u32>(var_3.x, 4294967295u, var_1.a.x) % vec3<u32>(32u))), reverseBits(vec3<i32>(18845i, ~(-4073i), 29997i))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_2 {
    global0 = array<Struct_4, 11>();
    let var_0 = vec2<f32>(func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1960f, arg_3.x, 103f, arg_3.x) - vec4<f32>(658f, 1000f, -1547f, arg_3.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1225f, arg_3.x, 1534f, 875f), vec4<f32>(arg_3.x, -190f, arg_1.a.c, arg_1.a.d))))), !(!arg_2.x)).a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2133f * arg_3.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - -206f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -593f))) * _wgslsmith_f_op_f32(-arg_3.x)), var_0.x));
    var var_2 = Struct_4(arg_1.a.a.wzy, abs(select(min(arg_0.xwy, vec3<u32>(33185u, arg_1.a.a.x, 4294967295u)), vec3<u32>(0u, 57377u, arg_1.a.a.x), any(vec3<bool>(arg_2.x, true, arg_2.x))) ^ (vec3<u32>(arg_0.x, arg_0.x, 4294967295u) ^ ~vec3<u32>(u_input.a, arg_0.x, u_input.a))), arg_1);
    global0 = array<Struct_4, 11>();
    return Struct_2(-_wgslsmith_mult_vec2_i32(~arg_1.c.xz, _wgslsmith_mod_vec2_i32(abs(var_2.c.b.a), u_input.b.yx)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_3 {
    let var_0 = 0i;
    let var_1 = arg_0;
    global0 = array<Struct_4, 11>();
    var var_2 = Struct_4(countOneBits(max(~vec3<u32>(u_input.a, u_input.a, u_input.a), reverseBits(vec3<u32>(u_input.a, 17316u, 4294967295u)))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 26459u), ~vec3<u32>(0u, u_input.a, u_input.a))) | abs(~vec3<u32>(u_input.a, 33781u, u_input.a)), Struct_3(Struct_1(select(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, 52470u)), vec4<u32>(u_input.a, u_input.a, 42148u, 1u) | vec4<u32>(u_input.a, 4294967295u, 4294967295u, 76852u), !vec4<bool>(true, false, arg_1, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-597f, -160f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1242f + -906f), _wgslsmith_div_f32(254f, 1065f), true)), _wgslsmith_f_op_f32(-func_1(vec4<f32>(-865f, 1778f, 1171f, 1155f), arg_1).a.d)), var_1, u_input.b.wyz));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(-236f)), func_1(vec4<f32>(-1000f, 852f, var_2.c.a.c, -1482f), false).a.b, 1265f, 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.c.a.c)), var_2.c.a.c, -225f, _wgslsmith_f_op_f32(-var_2.c.a.b)) - vec4<f32>(var_2.c.a.b, func_1(vec4<f32>(var_2.c.a.b, var_2.c.a.b, -1046f, var_2.c.a.c), false).a.c, _wgslsmith_f_op_f32(exp2(var_2.c.a.c)), _wgslsmith_f_op_f32(abs(var_2.c.a.c))))));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~(~vec3<u32>(u_input.a, 1u, 28564u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32((vec3<u32>(0u, u_input.a, 3607u) & vec3<u32>(u_input.a, u_input.a, u_input.a)) << (vec3<u32>(1u, u_input.a, 1u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, 18794u) << (vec3<u32>(u_input.a, u_input.a, 28431u) % vec3<u32>(32u))), vec3<u32>(u_input.a, ~abs(42137u), u_input.a)), func_5(func_4(vec4<u32>(u_input.a, u_input.a, 1u, ~u_input.a), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1228f, -1607f, -1169f, -221f), vec4<f32>(970f, 383f, -970f, -737f)), true), vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(629f, -989f))), u_input.b.x != firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.b.wwx, vec3<i32>(u_input.b.x, 1947i, u_input.b.x))), false));
    global0 = array<Struct_4, 11>();
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~select(u_input.a, 27420u, true), 0u, ~1u, ~u_input.a), vec4<u32>(55726u, min(~24985u, 26755u), ~(~1u), _wgslsmith_div_u32(1u, 4294967295u) << (_wgslsmith_add_u32(47417u, u_input.a) % 32u))), var_0.c.a.c, -878f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.a.c))))), func_5(var_0.c.b, true, !all(vec2<bool>(true, true))).a.c));
    var var_2 = func_5(Struct_2(vec2<i32>(-12451i, -_wgslsmith_mod_i32(1i, var_0.c.b.a.x))), true, false).a;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-469f, var_1.d), vec2<f32>(1459f, 564f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1123f, -243f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-925f))), var_2.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(128f, 1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 370f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(579f, -553f))))));
    var var_4 = 1327f;
    let x = u_input.a;
    s_output = StorageBuffer(-594f);
}

