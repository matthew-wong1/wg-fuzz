struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3 = Struct_3(1u);

var<private> global2: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-459f, 2102f, 1000f), vec3<f32>(885f, -165f, 606f), vec3<f32>(-449f, 440f, -124f), vec3<f32>(-379f, 1552f, 808f), vec3<f32>(276f, -999f, 516f), vec3<f32>(270f, -647f, 681f), vec3<f32>(-1525f, -1223f, -922f), vec3<f32>(-916f, -725f, -1000f), vec3<f32>(375f, -1241f, 778f));

var<private> global3: array<vec3<i32>, 16>;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-1000f, -1332f), Struct_1(-1079f, -1319f), Struct_1(313f, 1194f), Struct_1(225f, 1258f), Struct_1(145f, -383f), Struct_1(-1620f, 936f), Struct_1(1000f, -975f), Struct_1(403f, 1703f), Struct_1(-1492f, -613f), Struct_1(1432f, -1000f), Struct_1(-2527f, -484f), Struct_1(851f, -956f), Struct_1(1412f, 317f), Struct_1(-1026f, 207f), Struct_1(-102f, -572f), Struct_1(1480f, -429f), Struct_1(-1039f, 1908f), Struct_1(1345f, -1000f), Struct_1(1558f, -1276f), Struct_1(1338f, 1390f), Struct_1(576f, -150f), Struct_1(-112f, -1750f), Struct_1(-888f, -1000f), Struct_1(914f, -1661f), Struct_1(1233f, -1160f), Struct_1(-484f, -313f), Struct_1(1000f, -1084f), Struct_1(-348f, -515f));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(select(~(~vec4<u32>(1u, global1.a, 26050u, global0.a)), ~vec4<u32>(4294967295u, 14632u, global1.a, 38600u), vec4<bool>(true, u_input.a <= global1.a, true, all(vec2<bool>(false, true)))), min(vec4<u32>(_wgslsmith_mult_u32(u_input.a, 84711u), reverseBits(41764u), u_input.a, ~global1.a), vec4<u32>(~global0.a, global0.a, _wgslsmith_mod_u32(global1.a, 1u), 67284u))), vec4<u32>(17390u, 19517u, u_input.c, ~_wgslsmith_mult_u32(global1.a, u_input.c) >> (0u % 32u)));
    var var_1 = global4[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, global1.a), reverseBits(vec2<u32>(global1.a, global0.a))), var_0.ww), reverseBits(34338u), true) ^ firstTrailingBit(~1u), 28u)];
    var var_2 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global3 = array<vec3<i32>, 16>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1689f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a)))), _wgslsmith_f_op_f32(f32(-1f) * -755f), -420f));
    return _wgslsmith_mod_i32(~(~(i32(-1i) * -u_input.b)), _wgslsmith_mult_i32(-1791i << (~(~var_0.x) % 32u), -(i32(-1i) * -35400i) << (((u_input.c & global0.a) ^ _wgslsmith_dot_vec2_u32(var_0.zw, vec2<u32>(global1.a, var_0.x))) % 32u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> bool {
    var var_0 = countOneBits(_wgslsmith_dot_vec2_i32(arg_3.d.yx, arg_3.d.xy));
    var var_1 = Struct_4(!(any(select(arg_3.a, arg_3.a, arg_3.a.x)) && arg_3.a.x), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(~3449u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_1.a, 0u, 15583u), vec4<u32>(arg_3.c, global0.a, arg_1.a, global0.a))), reverseBits(0u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(20594u, 4294967295u), vec2<u32>(arg_3.c, u_input.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_1.a), vec2<u32>(u_input.a, 30452u), vec2<u32>(u_input.a, u_input.c))), _wgslsmith_mod_vec2_u32(max(vec2<u32>(global1.a, global1.a), vec2<u32>(u_input.c, 1u)), ~vec2<u32>(global1.a, global0.a))), ~(~select(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, global0.a), false))), any(!arg_3.a.xy), ~(~(~vec4<u32>(arg_1.a, 1u, arg_1.a, arg_3.c) << (~vec4<u32>(u_input.c, 4367u, u_input.c, u_input.c) % vec4<u32>(32u)))));
    var var_2 = 403f;
    var_0 = arg_3.d.x;
    let var_3 = -min(reverseBits(u_input.b) >> (~arg_3.c % 32u), reverseBits(-arg_3.d.x)) >= _wgslsmith_sub_i32(~firstTrailingBit(_wgslsmith_div_i32(66133i, -1i)), 2147483647i);
    return select(-(u_input.b >> (arg_1.a % 32u)) >> (~(~global0.a) % 32u), func_3() << (u_input.c % 32u), arg_3.a.x) != 1i;
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    global4 = array<Struct_1, 28>();
    global1 = Struct_3(39411u);
    var var_0 = arg_0.xxw;
    var var_1 = ~(~(~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, global1.a, u_input.c, 63039u), vec4<u32>(15024u, u_input.c, 4294967295u, global1.a), vec4<u32>(4294967295u, u_input.a, global0.a, 3355u)), max(vec4<u32>(0u, global1.a, global1.a, u_input.c), vec4<u32>(u_input.c, global1.a, 63246u, 4777u)))));
    var var_2 = true;
    return global4[_wgslsmith_index_u32(~var_1.x, 28u)];
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(-743f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 197f) + _wgslsmith_f_op_f32(ceil(-469f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1544f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f * -2234f)), _wgslsmith_f_op_f32(select(-714f, -126f, func_2(vec3<f32>(-911f, -603f, 377f), Struct_3(u_input.c), -583f, Struct_2(vec3<bool>(false, false, false), global4[_wgslsmith_index_u32(global1.a, 28u)], u_input.c, global3[_wgslsmith_index_u32(global1.a, 16u)])))), all(vec2<bool>(true, false))))));
    global3 = array<vec3<i32>, 16>();
    global2 = array<vec3<f32>, 9>();
    global2 = array<vec3<f32>, 9>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, var_0.b, 1790f, var_0.a), vec4<f32>(var_0.b, var_0.b, var_0.b, -160f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-633f, var_0.b, -1023f, var_0.a)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a, var_0.a, var_0.a, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 1097f, var_0.b)))))), select(!vec4<bool>(true, false, true, u_input.b > -1i), select(vec4<bool>(true, false, any(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(69503i < u_input.b, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    return Struct_3(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global3 = array<vec3<i32>, 16>();
    global3 = array<vec3<i32>, 16>();
    var var_0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(min(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-7762i, u_input.b, -1i, 51504i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, -32934i, 2147483647i, u_input.b), abs(vec4<i32>(u_input.b, 0i, u_input.b, -75561i)))), vec4<i32>(0i, max(u_input.b, _wgslsmith_div_i32(u_input.b, -1i)), -u_input.b & -12433i, -2147483647i)), countOneBits(~(~u_input.b)), u_input.b);
    global3 = array<vec3<i32>, 16>();
    var var_1 = Struct_2(vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), all(vec3<bool>(true, true, any(vec3<bool>(true, true, false)))), 1000f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(770f)) - 440f)), global4[_wgslsmith_index_u32(func_1().a, 28u)], u_input.c, global3[_wgslsmith_index_u32(9086u, 16u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(~u_input.b, _wgslsmith_clamp_i32(-41255i, ~u_input.b, var_1.d.x)), ~(~_wgslsmith_div_u32(global1.a, 0u) << ((~var_1.c | _wgslsmith_add_u32(30524u, u_input.c)) % 32u)), ~(~reverseBits(~vec4<u32>(u_input.a, 1u, 4294967295u, global1.a))));
}

