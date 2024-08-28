struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 20>;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec4<i32>(6645i, -1372i, -1988i, 1i), true, 37591u, vec2<f32>(788f, -667f), Struct_1(7717u, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 16221i, -1i), vec4<bool>(true, true, false, false))), Struct_2(vec4<i32>(-1i, -11722i, -1i, 0i), false, 36693u, vec2<f32>(-1000f, 509f), Struct_1(52494u, vec2<bool>(false, true), vec3<i32>(-1i, 0i, 33634i), vec4<bool>(false, true, false, false))), Struct_2(vec4<i32>(1i, 1i, 2147483647i, 47583i), false, 43832u, vec2<f32>(-288f, 900f), Struct_1(22698u, vec2<bool>(false, true), vec3<i32>(-44543i, -9079i, 13581i), vec4<bool>(false, false, false, true))), Struct_2(vec4<i32>(i32(-2147483648), -19983i, -1i, -12117i), false, 4294967295u, vec2<f32>(1000f, -953f), Struct_1(12593u, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec4<bool>(true, false, true, false))), Struct_2(vec4<i32>(-8803i, 43823i, 0i, 40194i), true, 4294967295u, vec2<f32>(-1450f, 1000f), Struct_1(1u, vec2<bool>(false, true), vec3<i32>(-1i, 1i, -62214i), vec4<bool>(true, true, true, false))), Struct_2(vec4<i32>(41771i, i32(-2147483648), 1i, 0i), true, 113619u, vec2<f32>(998f, 1302f), Struct_1(1u, vec2<bool>(false, false), vec3<i32>(-45406i, 2147483647i, 27584i), vec4<bool>(false, true, true, false))), Struct_2(vec4<i32>(17246i, 42554i, i32(-2147483648), i32(-2147483648)), true, 16724u, vec2<f32>(949f, -993f), Struct_1(1u, vec2<bool>(true, true), vec3<i32>(0i, -53632i, 1i), vec4<bool>(false, false, true, false))), Struct_2(vec4<i32>(50545i, 0i, -1i, 120502i), true, 56461u, vec2<f32>(778f, 1456f), Struct_1(24814u, vec2<bool>(false, true), vec3<i32>(-45648i, 49209i, i32(-2147483648)), vec4<bool>(false, true, false, false))), Struct_2(vec4<i32>(29456i, i32(-2147483648), 1i, -1i), true, 63860u, vec2<f32>(-1288f, -349f), Struct_1(72226u, vec2<bool>(false, false), vec3<i32>(0i, i32(-2147483648), -32154i), vec4<bool>(false, true, false, false))), Struct_2(vec4<i32>(i32(-2147483648), -1i, 0i, -44469i), false, 42081u, vec2<f32>(-478f, 297f), Struct_1(23710u, vec2<bool>(true, true), vec3<i32>(-26843i, 2147483647i, 2147483647i), vec4<bool>(false, true, true, true))), Struct_2(vec4<i32>(-41994i, 31572i, 45344i, -1i), false, 1u, vec2<f32>(-133f, 523f), Struct_1(4294967295u, vec2<bool>(false, true), vec3<i32>(2147483647i, -48761i, 0i), vec4<bool>(true, false, true, true))), Struct_2(vec4<i32>(-1018i, i32(-2147483648), 2147483647i, 2147483647i), false, 0u, vec2<f32>(1000f, 1000f), Struct_1(4294967295u, vec2<bool>(false, true), vec3<i32>(-1i, 1i, 0i), vec4<bool>(false, true, false, false))), Struct_2(vec4<i32>(19096i, -754i, 11921i, -1i), true, 7383u, vec2<f32>(-487f, -273f), Struct_1(4971u, vec2<bool>(true, false), vec3<i32>(1i, -8196i, -1i), vec4<bool>(false, true, false, false))), Struct_2(vec4<i32>(1i, 1i, 1i, 17653i), true, 4294967295u, vec2<f32>(-1000f, -593f), Struct_1(1u, vec2<bool>(true, false), vec3<i32>(0i, i32(-2147483648), 21461i), vec4<bool>(false, false, false, false))), Struct_2(vec4<i32>(-1i, 2147483647i, -272i, 2147483647i), false, 43727u, vec2<f32>(1283f, -1000f), Struct_1(0u, vec2<bool>(false, false), vec3<i32>(3343i, -1i, -25416i), vec4<bool>(true, true, true, true))), Struct_2(vec4<i32>(1i, 18141i, -66790i, 2147483647i), true, 0u, vec2<f32>(202f, -334f), Struct_1(1u, vec2<bool>(false, false), vec3<i32>(0i, 2147483647i, 0i), vec4<bool>(false, true, true, false))), Struct_2(vec4<i32>(-32100i, -1i, 2147483647i, -24942i), true, 27840u, vec2<f32>(430f, 218f), Struct_1(36884u, vec2<bool>(true, true), vec3<i32>(-1i, 35372i, 47181i), vec4<bool>(false, false, false, false))), Struct_2(vec4<i32>(0i, 1i, -63345i, -5759i), false, 104342u, vec2<f32>(1100f, 1000f), Struct_1(0u, vec2<bool>(false, true), vec3<i32>(0i, -12798i, 3402i), vec4<bool>(true, false, true, true))), Struct_2(vec4<i32>(-24252i, 1i, 0i, -1i), true, 1u, vec2<f32>(739f, -177f), Struct_1(25572u, vec2<bool>(true, true), vec3<i32>(1i, 1i, 33025i), vec4<bool>(false, false, false, true))), Struct_2(vec4<i32>(-29172i, 0i, 1i, -1706i), true, 31793u, vec2<f32>(760f, 1781f), Struct_1(0u, vec2<bool>(true, true), vec3<i32>(1i, 1i, i32(-2147483648)), vec4<bool>(false, true, false, false))));

var<private> global3: array<bool, 20>;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(37273u, select(!select(vec2<bool>(true, global4.x), vec2<bool>(false, true), !vec2<bool>(global4.x, global4.x)), vec2<bool>(true, true), !(!(!vec2<bool>(true, global4.x)))), min(-abs(min(vec3<i32>(u_input.e.x, -22378i, u_input.d), u_input.e.xxz)), vec3<i32>(_wgslsmith_mult_i32(-1i, 31390i), u_input.d, -u_input.c.x) ^ abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.e.x), u_input.c))), !(!select(vec4<bool>(false, global4.x, global4.x, global3[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<bool>(global4.x, global3[_wgslsmith_index_u32(76760u, 20u)], true, global4.x), true)));
    global4 = var_0.b;
    global2 = array<Struct_2, 20>();
    let var_1 = Struct_3(var_0.d.zw, select(~u_input.a, var_0.a, true) << (max(var_0.a >> (u_input.a % 32u), ~_wgslsmith_sub_u32(4294967295u, u_input.a)) % 32u), _wgslsmith_div_i32(-u_input.e.x, ~(-(2147483647i << (u_input.a % 32u)))), global2[_wgslsmith_index_u32(~var_0.a, 20u)]);
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_0.c.x, 1i), var_0.c.x, abs(0i), _wgslsmith_add_i32(-16216i, 0i)) | _wgslsmith_div_vec4_i32(~var_1.d.a, ~u_input.b), u_input.b);
    return var_1.d.e.d;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<i32>) -> Struct_4 {
    var var_0 = func_3();
    var var_1 = (vec2<u32>(~41215u >> (u_input.a % 32u), ~1u) | global1[_wgslsmith_index_u32(~1u, 20u)]) << (_wgslsmith_sub_vec2_u32(vec2<u32>(min(~1u, 4294967295u), arg_1), ~(abs(vec2<u32>(arg_1, arg_1)) >> (reverseBits(vec2<u32>(arg_1, 4294967295u)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    global3 = array<bool, 20>();
    var var_2 = var_0.xzy;
    var var_3 = !select(func_3().wzw, var_0.zxw, !var_0.zyy);
    return Struct_4(-2525f, Struct_1(u_input.a, var_0.zy, vec3<i32>(_wgslsmith_sub_i32(reverseBits(2147483647i), 1i), select(arg_2.x & -11694i, _wgslsmith_dot_vec3_i32(u_input.e.yzy, u_input.e.wzy), all(vec4<bool>(var_2.x, true, var_2.x, var_2.x))), _wgslsmith_div_i32(arg_2.x, ~30448i)), select(select(vec4<bool>(global4.x, var_3.x, global3[_wgslsmith_index_u32(var_1.x, 20u)], false), vec4<bool>(var_3.x, false, false, global4.x), true), vec4<bool>(global4.x, var_0.x, all(var_2.xx), true), all(!var_3.xy))), Struct_2(u_input.e, true, _wgslsmith_add_u32(~(~var_1.x), max(_wgslsmith_sub_u32(u_input.a, 16062u), max(var_1.x, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-359f)) - _wgslsmith_f_op_f32(-1442f * 2088f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))), Struct_1(25038u, var_0.xz, reverseBits(_wgslsmith_sub_vec3_i32(u_input.b.xyy, u_input.c)), select(vec4<bool>(true, global4.x, false, true), !vec4<bool>(global3[_wgslsmith_index_u32(155831u, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], global4.x, true), vec4<bool>(true, var_3.x, true, false)))), ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 19449u, arg_1, u_input.a), vec4<u32>(var_1.x, arg_1, 18689u, u_input.a)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(946f, arg_0))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool) -> bool {
    var var_0 = Struct_3(arg_0.c.e.b, _wgslsmith_clamp_u32(countOneBits(arg_0.c.e.a) ^ min(u_input.a, _wgslsmith_mult_u32(arg_0.d, arg_0.d)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(30722u, arg_0.b.a, 62198u, arg_0.b.a)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.e.a, 1u, 4294967295u, 0u), ~vec4<u32>(u_input.a, arg_0.d, u_input.a, 0u))), abs(arg_0.d)), arg_0.b.c.x << (firstLeadingBit(firstTrailingBit(_wgslsmith_add_u32(0u, u_input.a))) % 32u), Struct_2(arg_0.c.a, true, 1u | countOneBits(arg_0.b.a), vec2<f32>(_wgslsmith_f_op_f32(-328f * _wgslsmith_f_op_f32(trunc(-356f))), _wgslsmith_f_op_f32(round(-647f))), Struct_1(_wgslsmith_sub_u32(1u, ~u_input.a), arg_0.c.e.d.yw, _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.e.wzw, arg_0.b.c), arg_0.c.e.c), vec4<bool>(true, any(arg_0.c.e.d.xwz), global4.x, any(arg_0.c.e.d.yyy)))));
    global0 = arg_1.x;
    var var_1 = Struct_2(~vec4<i32>(func_2(arg_1.x, arg_0.c.e.a, var_0.d.e.c).c.a.x | firstLeadingBit(20637i), ~56643i, ~1i, func_2(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_add_u32(0u, 0u), ~vec3<i32>(-1i, 2147483647i, -2147483647i)).b.c.x), any(vec4<bool>(true, arg_2 | !arg_0.b.b.x, _wgslsmith_f_op_f32(sign(-718f)) > _wgslsmith_f_op_f32(-var_0.d.d.x), all(arg_0.b.d.zzy))), ~49098u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.d), vec2<f32>(arg_1.x, 328f)), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.e.x)), _wgslsmith_f_op_f32(-var_0.d.d.x)) - arg_0.e.x), 1u, _wgslsmith_clamp_vec3_i32(select(-var_0.d.a.wyy, abs(var_0.d.a.wxy), func_2(1047f, u_input.a, u_input.e.zyz).b.d.x), firstTrailingBit(var_0.d.e.c), ~arg_0.b.c)).c.e);
    var_1 = var_0.d;
    global3 = array<bool, 20>();
    return var_0.a.x || (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.d.x, -2488f))))) >= 746f);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-9623i, firstTrailingBit(-1i), 1i, -u_input.d) << (~abs(arg_0) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(min(u_input.b, _wgslsmith_add_vec4_i32(vec4<i32>(-17125i, 1i, u_input.c.x, u_input.c.x), u_input.b)), u_input.b)), any(vec3<bool>(global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(1u, 3206u)), 20u)], func_4(func_2(-449f, u_input.a, vec3<i32>(u_input.c.x, u_input.b.x, -1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, 442f, -166f) + vec3<f32>(-602f, -694f, 791f)), all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], true, false))), any(vec3<bool>(global3[_wgslsmith_index_u32(19007u, 20u)], false, global3[_wgslsmith_index_u32(u_input.a, 20u)])))), abs(abs(arg_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, _wgslsmith_f_op_f32(abs(-637f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-655f * -527f), _wgslsmith_f_op_f32(select(2015f, -535f, global3[_wgslsmith_index_u32(u_input.a, 20u)]))))), Struct_1(~(~1u), !func_3().ww, u_input.e.zzz, !vec4<bool>(select(global3[_wgslsmith_index_u32(arg_0.x, 20u)], false, global4.x), global4.x, global4.x && true, global4.x == global4.x)));
    global3 = array<bool, 20>();
    let var_1 = Struct_2(vec4<i32>(~2147483647i, ~var_0.e.c.x, _wgslsmith_mod_i32(abs(u_input.b.x), var_0.e.c.x), _wgslsmith_div_i32(u_input.c.x, -1i) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(47884u, var_0.e.a), arg_0.wz) & 19957u) % 32u)), true, _wgslsmith_add_u32(~25620u, _wgslsmith_sub_u32(19430u, ~arg_0.x)) ^ 23701u, _wgslsmith_f_op_vec2_f32(-func_2(-783f, select(min(arg_0.x, 0u), ~1u, any(var_0.e.d.zww)), -vec3<i32>(u_input.e.x, -14589i, var_0.a.x)).c.d), var_0.e);
    var var_2 = arg_0.xyw;
    var var_3 = Struct_3(vec2<bool>(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d.x - var_0.d.x))) >= 706f), func_2(_wgslsmith_f_op_f32(-2483f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d.x)) + _wgslsmith_f_op_f32(-var_1.d.x))), 51958u, abs(u_input.b.yzx)).d, ~_wgslsmith_add_i32(~u_input.d << (~arg_0.x % 32u), u_input.e.x), func_2(710f, min(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(71651u, 20u)], vec2<u32>(var_0.c, 3601u))), var_1.e.a ^ _wgslsmith_mod_u32(18416u, 1u)), reverseBits(var_1.a.yww)).c);
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.c ^ _wgslsmith_sub_u32(arg_0.x, var_3.b), _wgslsmith_div_u32(~abs(22016u), ~(~4294967295u))), 20u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> vec4<bool> {
    global1 = array<vec2<u32>, 20>();
    let var_0 = vec3<bool>(_wgslsmith_div_u32(_wgslsmith_add_u32(~arg_0.x, arg_1.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_1.c, 34356u, 4294967295u), ~vec4<u32>(4812u, arg_0.x, 5897u, u_input.a))) <= ~arg_1.c, all(vec2<bool>(all(vec2<bool>(true, arg_1.b)) || (arg_1.c != u_input.a), global4.x)), max(arg_0.x, 75763u) <= ~((36406u >> (u_input.a % 32u)) ^ ~0u));
    var var_1 = func_2(arg_1.d.x, reverseBits(~func_1(~vec4<u32>(u_input.a, u_input.a, arg_1.e.a, 4294967295u)).c), arg_1.e.c).c.e.b.x;
    global4 = func_1(~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, arg_1.e.a, u_input.a) & vec4<u32>(u_input.a, 17914u, arg_0.x, u_input.a), vec4<u32>(arg_1.e.a, 40937u, 4294967295u, 1u)))).e.b;
    let var_2 = true;
    return vec4<bool>(all(vec3<bool>(var_2 & !var_2, true, func_4(Struct_4(arg_1.d.x, arg_1.e, global2[_wgslsmith_index_u32(arg_0.x, 20u)], u_input.a, arg_1.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, 1238f, 1053f) * vec3<f32>(arg_1.d.x, 114f, 1684f)), true))), var_2, (arg_0.x ^ ((arg_0.x >> (u_input.a % 32u)) ^ (arg_0.x & 1u))) >= 4294967295u, select(_wgslsmith_mult_i32(2147483647i, ~0i) < ~_wgslsmith_sub_i32(u_input.c.x, -1i), true, arg_1.b));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> StorageBuffer {
    let var_0 = Struct_3(arg_1.d.xw, 30953u, -16485i, Struct_2(firstTrailingBit(u_input.e), global4.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~arg_1.a, arg_2 >> (27707u % 32u)), abs(arg_1.a | 23149u), ~arg_2), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-777f, -507f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, -733f))))), vec2<f32>(_wgslsmith_f_op_f32(select(-278f, arg_0.x, arg_1.d.x)), _wgslsmith_div_f32(953f, -631f))), func_1(vec4<u32>(_wgslsmith_div_u32(arg_1.a, 43527u), 32847u, ~u_input.a, _wgslsmith_mod_u32(arg_2, arg_1.a))).e));
    global4 = vec2<bool>(true, select(false, true, arg_1.d.x));
    let var_1 = vec4<u32>(abs(_wgslsmith_sub_u32(u_input.a, ~1u)), u_input.a, 30429u, _wgslsmith_sub_u32(1u, ~u_input.a ^ firstTrailingBit(~1u)));
    let var_2 = var_0.c;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-var_0.d.d.x), !var_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -746f))))) - func_1(_wgslsmith_clamp_vec4_u32(var_1, firstLeadingBit(vec4<u32>(67915u, var_0.b, arg_1.a, arg_2)), vec4<u32>(arg_2, 50114u, select(var_1.x, arg_2, var_0.a.x), arg_2))).d.x);
    return StorageBuffer(_wgslsmith_div_vec4_i32(func_2(-1749f, 1u, vec3<i32>(arg_1.c.x, var_0.d.e.c.x, firstTrailingBit(u_input.c.x))).c.a, var_0.d.a), vec3<i32>(abs(arg_1.c.x) & var_0.c, 17468i, i32(-1i) * -var_0.d.a.x) >> (firstLeadingBit(vec3<u32>(func_2(-2079f, arg_2, arg_1.c).d, _wgslsmith_dot_vec4_u32(var_1, vec4<u32>(var_1.x, 1u, arg_2, var_1.x)), 1u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!any(select(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], false, true), vec3<bool>(false, false, global4.x), vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a, 20u)])), vec3<bool>(true, true, true), select(vec3<bool>(true, global4.x, false), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)]), true))), false, global4.x);
    global3 = array<bool, 20>();
    global4 = vec2<bool>(!all(select(vec4<bool>(var_0.x, global4.x, global3[_wgslsmith_index_u32(u_input.a, 20u)], true), !vec4<bool>(var_0.x, true, global3[_wgslsmith_index_u32(u_input.a, 20u)], false), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(4737u, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<bool>(global4.x, global4.x, true, global4.x), true))), true);
    var var_1 = u_input.d;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1323f)), 1f)), Struct_1(u_input.a, !select(vec2<bool>(true, false), !vec2<bool>(global4.x, var_0.x), vec2<bool>(false, global4.x)), firstTrailingBit(vec3<i32>(u_input.c.x, firstTrailingBit(-1i), u_input.d)), func_5(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, ~1u), 20u)], func_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)))), u_input.a, u_input.b.x);
}

