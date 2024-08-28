struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 26279u;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(2147483647i, vec4<u32>(0u, 53552u, 62420u, 12136u)), Struct_2(-14677i, vec4<u32>(17100u, 0u, 4294967295u, 4294967295u)), Struct_2(0i, vec4<u32>(4294967295u, 19307u, 24988u, 1u)), Struct_2(i32(-2147483648), vec4<u32>(1u, 0u, 72330u, 4294967295u)), Struct_2(-34966i, vec4<u32>(1u, 8770u, 4294967295u, 45889u)), Struct_2(-49915i, vec4<u32>(56661u, 1u, 37474u, 0u)), Struct_2(0i, vec4<u32>(15286u, 28523u, 0u, 16279u)), Struct_2(-22445i, vec4<u32>(35731u, 1u, 0u, 4294967295u)), Struct_2(7119i, vec4<u32>(0u, 0u, 87486u, 30303u)), Struct_2(1i, vec4<u32>(8768u, 4294967295u, 1u, 17103u)), Struct_2(-66091i, vec4<u32>(0u, 0u, 65041u, 77161u)), Struct_2(2147483647i, vec4<u32>(38538u, 1u, 0u, 4294967295u)), Struct_2(-28198i, vec4<u32>(17791u, 1u, 25830u, 61016u)), Struct_2(32718i, vec4<u32>(42384u, 0u, 4525u, 4294967295u)), Struct_2(i32(-2147483648), vec4<u32>(4294967295u, 1735u, 15u, 1884u)), Struct_2(55956i, vec4<u32>(1u, 49126u, 1u, 41487u)), Struct_2(-1i, vec4<u32>(17885u, 557u, 0u, 8415u)), Struct_2(-687i, vec4<u32>(43037u, 8188u, 4028u, 6147u)), Struct_2(-7110i, vec4<u32>(0u, 0u, 0u, 1u)), Struct_2(2330i, vec4<u32>(0u, 0u, 4294967295u, 37953u)), Struct_2(i32(-2147483648), vec4<u32>(15814u, 0u, 4294967295u, 35666u)), Struct_2(i32(-2147483648), vec4<u32>(4294967295u, 0u, 8420u, 6217u)), Struct_2(-7235i, vec4<u32>(41187u, 1u, 98795u, 1u)), Struct_2(-46648i, vec4<u32>(3360u, 1u, 12572u, 1u)), Struct_2(6530i, vec4<u32>(88212u, 63031u, 1u, 69005u)), Struct_2(-51175i, vec4<u32>(20483u, 0u, 4294967295u, 17102u)), Struct_2(-10868i, vec4<u32>(5095u, 0u, 4294967295u, 15131u)), Struct_2(11758i, vec4<u32>(42670u, 1u, 36067u, 1u)), Struct_2(2147483647i, vec4<u32>(62386u, 0u, 1u, 45936u)), Struct_2(27777i, vec4<u32>(1u, 11195u, 1u, 0u)), Struct_2(-20630i, vec4<u32>(1u, 1u, 22767u, 3313u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<bool> {
    global0 = ~u_input.b.x;
    var var_0 = ~(-countOneBits(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2475i, -2147483647i, 1i), vec3<i32>(-1i, 41442i, -2147483647i)))));
    var var_1 = Struct_1(!vec2<bool>(true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)))), 0i, select(~vec4<u32>(u_input.b.x, 44451u, u_input.a.x, 7473u) | vec4<u32>(0u, u_input.b.x, 1u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, 3570u, u_input.b.x), vec4<u32>(1u, u_input.c.x, 13170u, 0u)), true) >> (~(~vec4<u32>(22497u, u_input.a.x, u_input.c.x, u_input.b.x) ^ vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.c.x)) % vec4<u32>(32u)));
    var var_2 = !(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.a.x, true, false), vec3<bool>(false, var_1.a.x, var_1.a.x)), !vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), !vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), !(!vec3<bool>(var_1.a.x, false, true)), select(select(vec3<bool>(true, true, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, var_1.a.x, false)), vec3<bool>(false, true, false), var_1.a.x)));
    var var_3 = Struct_5(Struct_3(Struct_2(~(var_1.b << (964u % 32u)), _wgslsmith_sub_vec4_u32(countOneBits(var_1.c), _wgslsmith_sub_vec4_u32(var_1.c, var_1.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1010f, 1325f, 941f) - vec3<f32>(-502f, 1023f, 912f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1593f, -1000f, 1563f)))), vec3<u32>(1u, 58116u, ~var_1.c.x), -(~var_1.b), select(!(!var_1.a), select(vec2<bool>(var_2.x, var_2.x), select(var_1.a, vec2<bool>(false, true), var_1.a), var_1.a.x), var_2.x)));
    return !(!select(!vec3<bool>(true, var_3.a.e.x, false), select(vec3<bool>(true, var_1.a.x, true), vec3<bool>(false, var_2.x, var_3.a.e.x), select(vec3<bool>(false, false, true), vec3<bool>(var_2.x, var_2.x, true), var_2.x)), vec3<bool>(any(vec2<bool>(var_3.a.e.x, var_1.a.x)), var_3.a.e.x && true, !var_2.x)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = arg_0;
    var_0 = false;
    var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(false, (1i << (u_input.b.x % 32u)) != _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i), vec3<i32>(-2147483647i, -11780i, 54778i)), true), !func_3()));
    return Struct_3(global1[_wgslsmith_index_u32(select(1u, 61000u, true), 31u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(-1018f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1951f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-373f)))), vec3<f32>(_wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(f32(-1f) * -264f)), 633f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1146f)))), true)), ~(~abs(u_input.b)), 0i, vec2<bool>(max(~35131i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 10621i), vec2<i32>(-38384i, 2147483647i))) < -2147483647i, any(vec4<bool>(true, true, true, true))));
}

fn func_1() -> u32 {
    global0 = ~(~1u);
    let var_0 = func_2(true);
    global0 = _wgslsmith_mod_u32(~var_0.a.b.x, 1u) >> (abs(~firstTrailingBit(reverseBits(4294967295u))) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(551f * _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.b.xz)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-606f, var_0.b.x) - vec2<f32>(var_0.b.x, -176f))) - _wgslsmith_f_op_vec2_f32(var_0.b.yz * var_0.b.yy))));
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(var_0.b.yy))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 1u, u_input.a.x, 69137u) ^ (min(vec4<u32>(1u, 79210u, var_0, var_0), vec4<u32>(4294967295u, var_0, 0u, var_0)) >> (~vec4<u32>(var_0, u_input.c.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(abs(u_input.c.x), u_input.c.x), ~countOneBits(4294967295u), var_0, ~1u)), (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, var_0, var_0), vec4<u32>(u_input.c.x, u_input.b.x, 1u, u_input.a.x)) >> (vec4<u32>(1u, abs(1u), var_0, u_input.c.x) % vec4<u32>(32u))) ^ vec4<u32>(func_2(true).a.b.x, 0u, u_input.c.x, _wgslsmith_clamp_u32(var_0, abs(var_0), reverseBits(var_0))));
    var var_2 = _wgslsmith_dot_vec3_i32(max(~vec3<i32>(17757i, -43050i, 2147483647i), -select(vec3<i32>(13682i, 0i, 0i), vec3<i32>(37114i, -21808i, 4351i), false)), firstLeadingBit(max(vec3<i32>(-1i, 31971i, 56389i), vec3<i32>(5822i, 88281i, -1i)) << (~u_input.b % vec3<u32>(32u)))) | firstTrailingBit(33801i);
    var var_3 = true;
    let var_4 = Struct_4(52384u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1453f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(343f - -431f), _wgslsmith_f_op_f32(f32(-1f) * -283f), false))))));
    global0 = countOneBits(_wgslsmith_mod_u32(countOneBits(~2089u), u_input.b.x)) & 35865u;
    var var_5 = -30658i;
    let var_6 = Struct_3(func_2(all(vec4<bool>(true, true, true, true)) && any(vec4<bool>(false, false, true, true))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(328f, var_4.b, var_4.b)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-598f, 1191f, 1353f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -929f, var_4.b), vec3<f32>(var_4.b, -296f, -1000f), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-236f, 1217f, -1030f), vec3<f32>(var_4.b, -1000f, -123f)))))), ~_wgslsmith_sub_vec3_u32(u_input.c ^ u_input.c, vec3<u32>(0u, var_0, var_1)), 40211i, vec2<bool>(83436u <= reverseBits(~u_input.b.x), true));
    var var_7 = var_6.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_4.b + _wgslsmith_f_op_f32(f32(-1f) * -427f)), 218f, var_6.b.x, _wgslsmith_f_op_f32(abs(986f))), 2147483647i, vec3<f32>(var_6.b.x, _wgslsmith_f_op_f32(var_6.b.x + var_6.b.x), 854f), vec4<u32>(u_input.c.x, 1u, ~40133u, reverseBits(39759u >> (_wgslsmith_sub_u32(84658u, var_6.c.x) % 32u))), select(select(vec2<i32>(1i, _wgslsmith_sub_i32(-1i, var_7.a)), vec2<i32>(-37999i, -16095i) >> (vec2<u32>(5016u, var_7.b.x) % vec2<u32>(32u)), var_6.e.x), ~(-firstLeadingBit(vec2<i32>(8012i, var_6.d))), !select(!var_6.e.x, var_6.e.x, true)));
}

