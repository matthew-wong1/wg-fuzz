struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(60077u, vec2<i32>(2147483647i, -17708i), Struct_2(Struct_1(false, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(true, true)))), Struct_3(4294967295u, vec2<i32>(-3495i, 23379i), Struct_2(Struct_1(true, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(false, false)))), Struct_3(4294967295u, vec2<i32>(73445i, i32(-2147483648)), Struct_2(Struct_1(true, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false)))), Struct_3(1u, vec2<i32>(50306i, -32221i), Struct_2(Struct_1(false, vec2<bool>(true, false)), Struct_1(false, vec2<bool>(true, false)))), Struct_3(53074u, vec2<i32>(21760i, -47704i), Struct_2(Struct_1(false, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(true, true)))), Struct_3(0u, vec2<i32>(i32(-2147483648), -1i), Struct_2(Struct_1(true, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(false, true)))), Struct_3(91952u, vec2<i32>(26927i, 0i), Struct_2(Struct_1(false, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, true)))), Struct_3(0u, vec2<i32>(-3784i, 1i), Struct_2(Struct_1(false, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(false, true)))), Struct_3(0u, vec2<i32>(61155i, -5457i), Struct_2(Struct_1(true, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false)))), Struct_3(4294967295u, vec2<i32>(0i, -7308i), Struct_2(Struct_1(true, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, true)))), Struct_3(7446u, vec2<i32>(-1i, -1i), Struct_2(Struct_1(true, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(true, true)))), Struct_3(0u, vec2<i32>(-13212i, -9025i), Struct_2(Struct_1(false, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, true)))), Struct_3(1814u, vec2<i32>(1i, 1i), Struct_2(Struct_1(false, vec2<bool>(true, false)), Struct_1(false, vec2<bool>(false, false)))), Struct_3(1u, vec2<i32>(70649i, 0i), Struct_2(Struct_1(true, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false)))), Struct_3(45788u, vec2<i32>(32337i, 0i), Struct_2(Struct_1(true, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(true, true)))), Struct_3(10037u, vec2<i32>(-41004i, 2147483647i), Struct_2(Struct_1(false, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(false, false)))), Struct_3(74170u, vec2<i32>(-1i, 1i), Struct_2(Struct_1(true, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(false, true)))), Struct_3(18110u, vec2<i32>(i32(-2147483648), 1i), Struct_2(Struct_1(true, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(true, false)))), Struct_3(25614u, vec2<i32>(27846i, -38997i), Struct_2(Struct_1(true, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false)))), Struct_3(57862u, vec2<i32>(0i, -35267i), Struct_2(Struct_1(true, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(true, true)))), Struct_3(0u, vec2<i32>(i32(-2147483648), 1i), Struct_2(Struct_1(true, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(false, true)))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = vec4<u32>(0u, 41334u, u_input.b, 0u);
    global0 = -1i;
    global1 = array<Struct_3, 21>();
    let var_1 = reverseBits(0u);
    global0 = u_input.a;
    return false;
}

fn func_2() -> vec2<bool> {
    var var_0 = 56909u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1695f - _wgslsmith_div_f32(305f, 1601f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -327f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-801f, -147f))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(611f, _wgslsmith_f_op_f32(step(810f, _wgslsmith_f_op_f32(abs(863f)))))));
    var var_2 = Struct_2(Struct_1(all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), vec2<bool>(func_3(), all(vec2<bool>(true, true)))), Struct_1(true, vec2<bool>(!select(true, false, false), -618f == _wgslsmith_div_f32(var_1.x, var_1.x))));
    global0 = u_input.a;
    var var_3 = -u_input.a;
    return select(select(!var_2.a.b, !vec2<bool>(true, var_2.b.a), !var_2.b.a), select(var_2.b.b, var_2.b.b, (u_input.b & abs(1u)) == 1u), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(arg_0.x && true, vec2<bool>(arg_0.x, arg_0.x));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1143f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x - -1961f)))), !(!select(vec2<bool>(arg_0.x, arg_0.x), func_2(), vec2<bool>(true, true))));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    global0 = -41314i;
    let var_0 = u_input.b >> (1862u % 32u);
    global0 = ~u_input.a;
    return func_4(!(!func_2()), 4294967295u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1963f, 255f)) * _wgslsmith_f_op_f32(max(-912f, -1252f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-273f)) + -154f)), _wgslsmith_f_op_f32(f32(-1f) * -2742f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -376f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 1370f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(902f + -1089f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-933f + 1571f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1398f, -624f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1345f)) + 1584f), 256f));
    var var_2 = _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.c.x, -1574i, u_input.a)), vec4<i32>(~(-u_input.a), min(u_input.a, u_input.a) | firstTrailingBit(u_input.c.x), _wgslsmith_mult_i32(-u_input.a, -u_input.a), ~2147483647i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(40048u, 13329u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.a, 2147483647i, u_input.a, 5821i))) & vec4<i32>(-1i, ~select(u_input.a, u_input.a, arg_1.a.b.x) >> (4294967295u % 32u), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-20797i, 12174i, 20565i, -1i >> (u_input.b % 32u)), firstLeadingBit(firstTrailingBit(vec4<i32>(-4523i, u_input.a, u_input.a, -1i)))));
    global0 = -1i;
    global1 = array<Struct_3, 21>();
    return Struct_2(Struct_1(var_0.b.x && true, vec2<bool>(true, !(u_input.b >= u_input.b))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    var var_0 = _wgslsmith_div_i32(u_input.a, u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, -515f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-922f, 1000f) + vec2<f32>(-225f, -939f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-917f, 173f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, -838f))))));
    let var_2 = func_5(func_1(), Struct_2(func_4(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(697f, 340f, 918f) + vec3<f32>(732f, var_1.x, 304f)))), Struct_1(true, vec2<bool>(true, true))));
    global1 = array<Struct_3, 21>();
    var var_3 = ~countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 1u, u_input.b, u_input.b)), vec4<u32>(1u, u_input.b, 23231u, 1u) << (vec4<u32>(65450u, u_input.b, u_input.b, 0u) % vec4<u32>(32u)))) ^ vec4<u32>(abs(u_input.b) << (~(~34942u) % 32u), _wgslsmith_mod_u32(1u, max(_wgslsmith_sub_u32(u_input.b, 88180u), 1u)), 1u, abs(4294967295u));
    let var_4 = reverseBits(vec4<u32>(_wgslsmith_clamp_u32(54313u, ~0u, _wgslsmith_mod_u32(23097u, 109711u)), countOneBits(u_input.b) >> (0u % 32u), ~0u, 1u));
    let var_5 = max(~firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, u_input.a) & u_input.a), reverseBits(firstLeadingBit(u_input.a)));
    let var_6 = 5499i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_5, _wgslsmith_div_i32(reverseBits(var_6 >> (46537u % 32u)), 4777i), 1i, u_input.c.x), ~var_4.x, ~(~firstLeadingBit(~vec2<u32>(1u, 101328u))), vec3<i32>(-(-35279i >> (abs(var_3.x) % 32u)), _wgslsmith_div_i32(var_5, -_wgslsmith_sub_i32(var_5, 1i)), ~(-u_input.c.x) | (i32(-1i) * -var_6)), vec2<i32>(-26744i, -1i));
}

