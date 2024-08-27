struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -819f;

var<private> global1: vec2<u32> = vec2<u32>(46360u, 43999u);

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(0i, Struct_1(-1180f, 1u, -1765f, true, vec2<u32>(47378u, 4294967295u))), Struct_2(1i, Struct_1(-293f, 56921u, -1358f, false, vec2<u32>(1u, 46233u))), Struct_2(-27969i, Struct_1(1333f, 9456u, -1192f, false, vec2<u32>(23356u, 19004u))), Struct_2(2147483647i, Struct_1(450f, 48613u, -209f, true, vec2<u32>(0u, 48616u))), Struct_2(-55714i, Struct_1(-564f, 4294967295u, -338f, false, vec2<u32>(1u, 43759u))), Struct_2(-56588i, Struct_1(137f, 4294967295u, 547f, false, vec2<u32>(22265u, 42158u))), Struct_2(0i, Struct_1(1787f, 102700u, -1000f, true, vec2<u32>(4294967295u, 1u))), Struct_2(50775i, Struct_1(-1421f, 0u, 1242f, true, vec2<u32>(1u, 26475u))), Struct_2(0i, Struct_1(1102f, 4294967295u, -499f, true, vec2<u32>(0u, 28766u))), Struct_2(2147483647i, Struct_1(771f, 1u, -1476f, false, vec2<u32>(1u, 0u))), Struct_2(2147483647i, Struct_1(393f, 1u, 416f, true, vec2<u32>(57753u, 4294967295u))), Struct_2(-8223i, Struct_1(613f, 10632u, -1862f, false, vec2<u32>(39667u, 83625u))), Struct_2(-28825i, Struct_1(884f, 4294967295u, -347f, true, vec2<u32>(99357u, 5078u))), Struct_2(-35865i, Struct_1(-2994f, 36596u, -1927f, true, vec2<u32>(4294967295u, 0u))), Struct_2(0i, Struct_1(1000f, 1u, -440f, true, vec2<u32>(0u, 0u))), Struct_2(-27469i, Struct_1(1617f, 1u, -1665f, false, vec2<u32>(0u, 1u))), Struct_2(0i, Struct_1(-1959f, 9135u, -698f, false, vec2<u32>(1u, 35174u))), Struct_2(51609i, Struct_1(2019f, 91934u, 982f, true, vec2<u32>(1u, 1u))), Struct_2(-1i, Struct_1(1154f, 17629u, -237f, false, vec2<u32>(50409u, 1u))), Struct_2(1291i, Struct_1(1578f, 9868u, 1000f, true, vec2<u32>(12213u, 8492u))), Struct_2(4635i, Struct_1(1000f, 4294967295u, -1786f, false, vec2<u32>(0u, 67194u))), Struct_2(-23505i, Struct_1(1000f, 4294967295u, 1431f, true, vec2<u32>(7376u, 13639u))));

var<private> global3: array<Struct_2, 13>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(378f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -734f)))), _wgslsmith_div_f32(3082f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-575f)) + _wgslsmith_f_op_f32(-920f * 1357f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 503f) + vec2<f32>(var_0, 643f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1222f, var_0)))), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-776f, -524f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1531f + -1000f), -217f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(114f, 1272f)) - _wgslsmith_f_op_f32(var_0 + var_1.x)))))));
    global0 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1352f - -2664f))));
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f) + _wgslsmith_f_op_f32(round(1f)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_2(15548i, Struct_1(arg_0.b.a, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c * _wgslsmith_f_op_f32(func_3()))), all(vec3<bool>(!arg_2.b.d, true, arg_0.b.d)), vec2<u32>(~(~global1.x), 0u)));
    var var_1 = -176f;
    global3 = array<Struct_2, 13>();
    var var_2 = arg_2;
    var var_3 = 94694u;
    return 2147483647i;
}

fn func_2(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = arg_1;
    global1 = max(((u_input.b.wx | vec2<u32>(global1.x, u_input.c)) & vec2<u32>(global1.x, u_input.a.x)) << (vec2<u32>(93335u, global1.x) % vec2<u32>(32u)), select(abs(~u_input.a), ~(~vec2<u32>(4294967295u, 43734u)), vec2<bool>(any(vec4<bool>(arg_0, true, arg_0, arg_0)), arg_0))) | _wgslsmith_div_vec2_u32(~u_input.b.xz, vec2<u32>(global1.x, global1.x >> (_wgslsmith_dot_vec3_u32(u_input.b.wzz, u_input.b.xxy) % 32u)));
    var var_1 = func_4(Struct_2(~1i, Struct_1(arg_1, firstTrailingBit(18236u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(710f, -1025f))), arg_0, vec2<u32>(~14294u, u_input.c))), true, Struct_2(-2147483647i, Struct_1(357f, global1.x, _wgslsmith_f_op_f32(func_3()), true, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 68851u), vec2<u32>(u_input.a.x, 33711u), vec2<u32>(global1.x, 2201u)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -910f) + arg_1);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(func_3()), arg_1));
    return -6353i;
}

fn func_5(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = 1u;
    let var_1 = Struct_1(-1000f, 9761u, _wgslsmith_f_op_f32(func_3()), arg_0.b.d, vec2<u32>(arg_0.b.b, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), 4294967295u)));
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(8640u, _wgslsmith_dot_vec4_u32(min(abs(vec4<u32>(u_input.a.x, var_1.e.x, u_input.c, 76226u)), countOneBits(u_input.b)), u_input.b), u_input.c), firstLeadingBit(~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(25648u, u_input.a.x, global1.x)), countOneBits(vec3<u32>(11523u, 4294967295u, 1u)))));
    let var_3 = !any(!(!(!vec3<bool>(arg_0.b.d, var_1.d, false))));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, -345f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(329f, 1144f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.c, arg_0.b.a), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1069f, var_1.c)))))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.a)))), -159f));
    return firstTrailingBit(~(~vec2<u32>(global1.x, ~20653u)));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    global3 = array<Struct_2, 13>();
    global1 = vec2<u32>(1u, ~u_input.a.x);
    var var_0 = 249f;
    var var_1 = func_5(Struct_2(func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -348f)) & _wgslsmith_div_i32(max(-1i, 1i), reverseBits(-1i)), Struct_1(_wgslsmith_f_op_f32(min(-1001f, 1262f)), _wgslsmith_dot_vec3_u32(~vec3<u32>(34751u, global1.x, global1.x), reverseBits(u_input.b.wxw)), _wgslsmith_f_op_f32(ceil(108f)), true, firstTrailingBit(u_input.a))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-625f, 878f)) + _wgslsmith_f_op_f32(f32(-1f) * -156f)), _wgslsmith_f_op_f32(1614f - _wgslsmith_f_op_f32(f32(-1f) * -2236f)))))), global1.x, _wgslsmith_f_op_f32(abs(-1064f)), true, ~select(~(~u_input.b.xz), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 4294967295u), u_input.b.zw), select(select(vec2<bool>(false, true), vec2<bool>(true, true), arg_0), !vec2<bool>(false, arg_0), vec2<bool>(arg_0, false))));
    return reverseBits(select(abs(~vec4<i32>(-23456i, 0i, 4198i, 5643i)), vec4<i32>(1i, 1i, 1i, 1i), all(vec4<bool>(all(vec4<bool>(arg_0, var_2.d, arg_0, false)), var_2.d, true, var_2.d))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), 0u, arg_0.b.a, true, abs(vec2<u32>(79431u, 33403u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)))));
    let var_2 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(0u, u_input.a.x, u_input.c, 1u))), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(arg_3.e.x, var_0.e.x, 37844u, arg_0.b.b))), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b)), u_input.b >> (_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 11495u) & vec4<u32>(arg_1.b, 130344u, 61397u, 4294967295u), u_input.b), ~u_input.b & ~vec4<u32>(var_0.b, arg_1.e.x, arg_3.e.x, 4294967295u)) % vec4<u32>(32u)));
    global2 = array<Struct_2, 22>();
    var var_3 = true;
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1207f;
    global1 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(21521u, 57217u) ^ u_input.b.wy), vec2<u32>(~global1.x, abs(52495u)), countOneBits(vec2<u32>(u_input.b.x, 0u))) & (vec2<u32>((u_input.b.x ^ global1.x) | 21129u, 4294967295u) << (func_6(Struct_2(1i, Struct_1(-1000f, u_input.b.x, 1130f, true, vec2<u32>(0u, 0u))), Struct_1(_wgslsmith_f_op_f32(min(1000f, 485f)), 7555u >> (1u % 32u), _wgslsmith_f_op_f32(trunc(-520f)), any(vec4<bool>(true, false, false, false)), u_input.a), func_1(true), Struct_1(-738f, 37553u, 1027f, 1u <= global1.x, reverseBits(u_input.b.zy))) % vec2<u32>(32u)));
    global2 = array<Struct_2, 22>();
    var var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec3<bool>(true, false, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), any(vec2<bool>(false, true)))), vec2<bool>(!(_wgslsmith_sub_i32(60889i, 33888i) == _wgslsmith_dot_vec3_i32(vec3<i32>(-46386i, 2147483647i, -1i), vec3<i32>(1i, 35375i, 34809i))), true), vec2<bool>(true, true));
    let var_1 = global2[_wgslsmith_index_u32(~(~9357u), 22u)];
    var var_2 = u_input.b.wz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.a, -724f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-746f, -206f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(357f, var_1.b.a)))))));
}

