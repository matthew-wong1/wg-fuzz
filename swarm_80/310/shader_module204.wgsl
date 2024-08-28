struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(-1263f, 144f, 899f, 1296f), vec2<u32>(44519u, 34788u), vec4<bool>(false, true, false, false)), Struct_1(vec4<f32>(-1044f, 1000f, -449f, 1004f), vec2<u32>(0u, 4294967295u), vec4<bool>(false, false, true, true)), Struct_1(vec4<f32>(860f, 1000f, -716f, 1686f), vec2<u32>(1563u, 4294967295u), vec4<bool>(false, false, true, true)), Struct_1(vec4<f32>(480f, -1144f, -124f, -977f), vec2<u32>(18496u, 0u), vec4<bool>(true, true, true, false)), Struct_1(vec4<f32>(-3225f, 289f, -458f, -1323f), vec2<u32>(49384u, 7344u), vec4<bool>(false, false, true, false)), Struct_1(vec4<f32>(-1000f, 168f, -890f, -1572f), vec2<u32>(4294967295u, 6378u), vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(-1294f, -1000f, 738f, -551f), vec2<u32>(42474u, 1u), vec4<bool>(true, true, true, true)), Struct_1(vec4<f32>(1050f, 890f, 336f, 630f), vec2<u32>(1u, 29389u), vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(1000f, 342f, 1467f, -384f), vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(vec4<f32>(1287f, 765f, -1225f, -958f), vec2<u32>(42756u, 33660u), vec4<bool>(false, false, true, true)), Struct_1(vec4<f32>(1741f, 518f, -358f, 437f), vec2<u32>(60651u, 13919u), vec4<bool>(true, false, false, true)), Struct_1(vec4<f32>(151f, -550f, 415f, -548f), vec2<u32>(1u, 0u), vec4<bool>(false, false, false, false)), Struct_1(vec4<f32>(-186f, -1858f, 1000f, -481f), vec2<u32>(1u, 30647u), vec4<bool>(false, false, false, false)), Struct_1(vec4<f32>(-1656f, -1078f, -631f, -1000f), vec2<u32>(4402u, 1u), vec4<bool>(true, true, true, true)), Struct_1(vec4<f32>(766f, 919f, 136f, 1000f), vec2<u32>(4318u, 1742u), vec4<bool>(false, false, false, true)), Struct_1(vec4<f32>(-701f, 1391f, -681f, 921f), vec2<u32>(1u, 1u), vec4<bool>(false, false, false, false)), Struct_1(vec4<f32>(1414f, -1190f, -369f, -1243f), vec2<u32>(1u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_1(vec4<f32>(-593f, 428f, -309f, 1383f), vec2<u32>(7861u, 39832u), vec4<bool>(false, true, false, false)), Struct_1(vec4<f32>(-1371f, -946f, -1000f, -108f), vec2<u32>(4294967295u, 1u), vec4<bool>(false, true, true, true)), Struct_1(vec4<f32>(-827f, 1046f, 2057f, -834f), vec2<u32>(46390u, 4294967295u), vec4<bool>(false, true, true, true)), Struct_1(vec4<f32>(226f, 3111f, 867f, 132f), vec2<u32>(60109u, 1u), vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(449f, -679f, 1134f, 1255f), vec2<u32>(0u, 7477u), vec4<bool>(true, false, true, true)), Struct_1(vec4<f32>(777f, 1059f, -349f, 626f), vec2<u32>(10622u, 49004u), vec4<bool>(false, true, true, true)));

var<private> global2: vec4<f32> = vec4<f32>(1625f, 628f, 1679f, 820f);

var<private> global3: vec2<f32> = vec2<f32>(-1007f, -923f);

var<private> global4: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec2<u32>(16879u, 13010u), Struct_1(vec4<f32>(720f, -1247f, 1000f, -1622f), vec2<u32>(4294967295u, 16453u), vec4<bool>(false, true, false, true))), Struct_3(vec2<u32>(48067u, 4294967295u), Struct_1(vec4<f32>(2278f, 569f, -388f, -1268f), vec2<u32>(0u, 4937u), vec4<bool>(false, false, false, false))), Struct_3(vec2<u32>(11610u, 4294967295u), Struct_1(vec4<f32>(-343f, -1189f, 451f, 1000f), vec2<u32>(1u, 0u), vec4<bool>(true, false, true, true))), Struct_3(vec2<u32>(1u, 4294967295u), Struct_1(vec4<f32>(1752f, -832f, 422f, 169f), vec2<u32>(78759u, 1u), vec4<bool>(true, false, true, false))), Struct_3(vec2<u32>(0u, 91209u), Struct_1(vec4<f32>(-143f, -154f, -342f, 534f), vec2<u32>(21374u, 28388u), vec4<bool>(false, true, true, false))), Struct_3(vec2<u32>(56778u, 1u), Struct_1(vec4<f32>(-1459f, 673f, -1000f, -123f), vec2<u32>(50325u, 12147u), vec4<bool>(false, true, false, false))), Struct_3(vec2<u32>(50009u, 104314u), Struct_1(vec4<f32>(225f, 501f, 989f, 492f), vec2<u32>(1u, 12564u), vec4<bool>(true, true, true, true))), Struct_3(vec2<u32>(4294967295u, 31189u), Struct_1(vec4<f32>(2065f, -374f, 1064f, -299f), vec2<u32>(5513u, 81990u), vec4<bool>(true, false, false, false))), Struct_3(vec2<u32>(0u, 4337u), Struct_1(vec4<f32>(560f, 326f, 119f, -1936f), vec2<u32>(20585u, 1u), vec4<bool>(true, false, false, false))), Struct_3(vec2<u32>(1u, 0u), Struct_1(vec4<f32>(609f, -1000f, 444f, 1731f), vec2<u32>(67028u, 19572u), vec4<bool>(false, true, false, true))), Struct_3(vec2<u32>(34563u, 9077u), Struct_1(vec4<f32>(-1484f, 313f, -488f, -2784f), vec2<u32>(23341u, 0u), vec4<bool>(false, false, true, true))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(global0.a.zx, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global2.x, global3.x, global2.x), vec4<f32>(global2.x, global3.x, 538f, 1164f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1979f, global3.x) * vec4<f32>(global3.x, 882f, global3.x, 511f)))), _wgslsmith_add_vec2_u32(global0.a.yz, reverseBits(~vec2<u32>(global0.a.x, global0.a.x))), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(global2.x >= 1767f, true, true, true), true)));
    let var_1 = var_0.b;
    let var_2 = vec3<bool>(var_1.c.x, var_0.b.c.x || !var_1.c.x, !var_1.c.x);
    var_0 = global4[_wgslsmith_index_u32(1u, 11u)];
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x * global2.x))))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-730f))), _wgslsmith_f_op_f32(-1085f + global2.x)), global0.a.yx, vec4<bool>(false, !(var_2.x & all(var_0.b.c)), var_2.x && (_wgslsmith_f_op_f32(abs(753f)) < _wgslsmith_f_op_f32(min(global2.x, -160f))), true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1364f, global3.x, -100f, -335f)) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, -2457f, _wgslsmith_f_op_f32(-global2.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, -1000f)) - global3.x), _wgslsmith_f_op_f32(exp2(var_1.a.x)), var_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_div_f32(-1014f, 696f))))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global4 = array<Struct_3, 11>();
    var var_0 = ~global0.a.yy;
    global2 = _wgslsmith_f_op_vec4_f32(func_3());
    let var_1 = reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(14091u, 1u >> (global0.a.x % 32u)), select(abs(33885u), 33574u, any(vec2<bool>(false, false)))), var_0.x));
    global3 = _wgslsmith_f_op_vec2_f32(min(global2.wx, vec2<f32>(987f, _wgslsmith_f_op_f32(abs(arg_0.x)))));
    return Struct_2(global0.a);
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.x, global3.x, global2.x) + vec4<f32>(global2.x, global2.x, 1876f, 1403f))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 233f, -120f, global2.x), vec4<f32>(global3.x, global2.x, global2.x, 2351f)))))));
    global1 = array<Struct_1, 23>();
    var var_1 = 0i;
    return max(7008u, _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(global0.a.x, var_0.a.x) | _wgslsmith_mod_u32(0u, 4294967295u))) ^ select(_wgslsmith_add_u32(4197u ^ global0.a.x, global0.a.x), 0u, !(_wgslsmith_f_op_f32(-140f + global2.x) != -814f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = global2.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) * _wgslsmith_f_op_f32(828f + global2.x)), _wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(floor(global2.x))), global2.x, -876f)), vec2<u32>(global0.a.x >> (((global0.a.x & 6571u) << (select(global0.a.x, 0u, true) % 32u)) % 32u), _wgslsmith_add_u32(0u, func_1())), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(true, false)), true)), all(vec2<bool>(true, true))));
    let var_3 = ~(~var_2.b.x);
    var var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(~(-2147483647i), countOneBits(u_input.a), -2147483647i, firstLeadingBit(u_input.b.x)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(min(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 1u, global0.a.x, var_3), vec4<u32>(global0.a.x, 26694u, 1u, 67702u)), ~global0.a.x, ~var_2.b.x, _wgslsmith_clamp_u32(9637u, global0.a.x, 1u)), ~(vec4<u32>(0u, 1u, global0.a.x, var_2.b.x) | vec4<u32>(var_2.b.x, var_2.b.x, 4294967295u, 1u))), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, global0.a.x, 67605u), vec4<u32>(global0.a.x, var_2.b.x, 1u, global0.a.x))) & ~abs(vec4<u32>(0u, var_3, global0.a.x, 0u))));
}

