struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(328f, vec3<i32>(27749i, -1i, -27804i), 4294967295u, -1000f, vec4<i32>(-5693i, -1007i, 20749i, 5979i)), Struct_4(-316f, vec3<i32>(-11967i, 1i, -14570i), 29366u, -798f, vec4<i32>(1i, 1i, 9896i, -5645i)), Struct_4(-1000f, vec3<i32>(-1i, -10309i, -1i), 4294967295u, 195f, vec4<i32>(2333i, -1i, 0i, 71723i)), Struct_4(-2220f, vec3<i32>(2147483647i, -10061i, 1i), 10040u, 990f, vec4<i32>(25951i, -57987i, 10867i, -10489i)), Struct_4(-1000f, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), 0u, -1156f, vec4<i32>(-1i, 23982i, -18883i, 99065i)), Struct_4(-462f, vec3<i32>(-7623i, 23459i, 0i), 4294967295u, -2443f, vec4<i32>(0i, -17740i, i32(-2147483648), 6163i)), Struct_4(1270f, vec3<i32>(0i, i32(-2147483648), 54209i), 4294967295u, -375f, vec4<i32>(-4514i, -33922i, 14066i, 0i)), Struct_4(1000f, vec3<i32>(2147483647i, 0i, i32(-2147483648)), 20047u, 2670f, vec4<i32>(10184i, 0i, i32(-2147483648), 42313i)), Struct_4(539f, vec3<i32>(-22636i, 80938i, 29940i), 5653u, 1219f, vec4<i32>(2147483647i, 1i, -1i, i32(-2147483648))), Struct_4(472f, vec3<i32>(49024i, 1i, -1i), 0u, 1000f, vec4<i32>(15715i, i32(-2147483648), 0i, 2353i)), Struct_4(-966f, vec3<i32>(i32(-2147483648), -249i, 0i), 102053u, -941f, vec4<i32>(i32(-2147483648), 23252i, -1i, -37895i)), Struct_4(-1148f, vec3<i32>(1i, -1i, 1179i), 4294967295u, 333f, vec4<i32>(i32(-2147483648), -1i, 1i, 2147483647i)), Struct_4(-946f, vec3<i32>(1i, -34480i, -54075i), 4294967295u, -2037f, vec4<i32>(i32(-2147483648), 2147483647i, 28093i, i32(-2147483648))), Struct_4(-1277f, vec3<i32>(2147483647i, i32(-2147483648), 15084i), 4294967295u, -1064f, vec4<i32>(1i, 1i, 1i, 10478i)), Struct_4(-885f, vec3<i32>(0i, i32(-2147483648), 26096i), 56152u, 1166f, vec4<i32>(0i, 1i, -9202i, i32(-2147483648))), Struct_4(-1491f, vec3<i32>(1i, i32(-2147483648), 0i), 1u, 559f, vec4<i32>(-56634i, 2147483647i, -1i, -28789i)), Struct_4(2086f, vec3<i32>(0i, -43982i, -13965i), 12766u, 761f, vec4<i32>(29400i, 24028i, -16723i, -25832i)), Struct_4(-361f, vec3<i32>(2147483647i, 9609i, -4298i), 0u, -683f, vec4<i32>(19862i, 0i, -34310i, 0i)), Struct_4(-342f, vec3<i32>(46856i, i32(-2147483648), i32(-2147483648)), 1u, 470f, vec4<i32>(1i, 24807i, -44455i, -20543i)), Struct_4(547f, vec3<i32>(29162i, -1i, 44676i), 20204u, -358f, vec4<i32>(-32808i, i32(-2147483648), -11812i, i32(-2147483648))), Struct_4(-1747f, vec3<i32>(i32(-2147483648), 2147483647i, 42140i), 4294967295u, 200f, vec4<i32>(27231i, -59493i, -13502i, 0i)));

var<private> global1: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(49302u, 53610u, 1u)), _wgslsmith_clamp_u32(71675u, 49668u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_u32(~90608u, 19543u)), vec3<u32>(_wgslsmith_div_u32(~1u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(60831u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 19132u, 4123u, 62639u)), 4294967295u), vec3<u32>(49647u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(31904u, 1u, 11315u), vec3<u32>(1u, 11062u, 8711u)), abs(vec3<u32>(0u, 6534u, 4294967295u))), countOneBits(~26027u))) << (vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(116762u, 62432u, 6717u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(33734u, 8763u), max(vec2<u32>(1u, 1u), vec2<u32>(30037u, 4294967295u)), ~vec2<u32>(11845u, 0u))), abs(~select(84100u, 4294967295u, false))) % vec3<u32>(32u));
    global1 = array<vec2<bool>, 8>();
    let var_1 = Struct_1(firstLeadingBit(var_0.x) >> ((~22083u >> (~_wgslsmith_mult_u32(var_0.x, var_0.x) % 32u)) % 32u), var_0.xy);
    var_0 = abs(~(~reverseBits(vec3<u32>(var_0.x, var_0.x, var_1.b.x)) << (vec3<u32>(~4294967295u, ~85763u, 25228u) % vec3<u32>(32u))));
    global2 = array<vec3<bool>, 14>();
    return ~(~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, var_1.a, 11402u), select(vec4<u32>(var_1.b.x, var_0.x, 0u, 4294967295u), vec4<u32>(2852u, var_0.x, var_1.b.x, var_1.b.x), false))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> bool {
    global1 = array<vec2<bool>, 8>();
    var var_0 = arg_1;
    let var_1 = max(select(_wgslsmith_clamp_vec3_i32(firstLeadingBit(arg_3), arg_3, min(vec3<i32>(23754i, arg_3.x, 0i), arg_3)), u_input.a.xwz, any(vec2<bool>(all(vec3<bool>(true, true, false)), true))), ~_wgslsmith_add_vec3_i32(select(arg_3 & vec3<i32>(arg_3.x, 1i, -38002i), -vec3<i32>(u_input.a.x, arg_3.x, u_input.b.x), true), -select(u_input.a.yxy, arg_3, false)));
    let var_2 = Struct_2(-var_1.x, Struct_1(abs(arg_0.x & 3447u), arg_0.yy), Struct_1(arg_2, vec2<u32>(~abs(35749u), 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1449f, 1706f, -552f, 1336f)) * vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1115f, arg_1))), arg_1)), vec3<i32>(_wgslsmith_clamp_i32(abs(arg_3.x), var_1.x, 2147483647i), reverseBits(1i), arg_3.x) | ~(var_1 << (vec3<u32>(79868u, arg_0.x, 4294967295u) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1036f * -564f), var_2.d.x);
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(~u_input.a.x, Struct_1(35324u, reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(45742u, 1u)))), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(1u, 1u, 0u))), vec2<u32>(countOneBits(min(1u, 52895u)), 8207u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(751f, -1702f, 1188f, -2236f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1569f, 1000f, 806f, 728f)), any(global1[_wgslsmith_index_u32(max(12038u, 33891u), 8u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-362f - 1718f), -921f, -432f, _wgslsmith_f_op_f32(f32(-1f) * -818f))))), abs(vec3<i32>(1i, min(-1i, u_input.a.x), -10508i)));
    global2 = array<vec3<bool>, 14>();
    let var_1 = vec4<bool>(true, any(select(select(vec2<bool>(true, true), !global1[_wgslsmith_index_u32(var_0.c.a, 8u)], vec2<bool>(true, true)), select(select(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(var_0.b.b.x, 8u)], global1[_wgslsmith_index_u32(var_0.c.a, 8u)]), global1[_wgslsmith_index_u32(0u, 8u)], true), vec2<bool>(all(vec4<bool>(false, false, false, false)), false))), func_4(_wgslsmith_sub_vec4_u32(reverseBits(func_3()), countOneBits(~vec4<u32>(var_0.b.a, var_0.b.b.x, var_0.c.b.x, var_0.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d.x + -185f)))), reverseBits(~firstLeadingBit(var_0.b.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -u_input.a.wwy, var_0.e)), true | select(any(select(vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(var_0.b.b.x, 14u)], vec3<bool>(true, false, true))), any(global2[_wgslsmith_index_u32(var_0.b.b.x, 14u)]) && (var_0.b.a > var_0.b.a), true));
    global2 = array<vec3<bool>, 14>();
    let var_2 = Struct_2(-20911i, Struct_1(var_0.c.b.x, max(vec2<u32>(var_0.c.b.x, var_0.b.a) & ~vec2<u32>(var_0.c.b.x, var_0.c.a), vec2<u32>(var_0.c.b.x, 75863u) ^ var_0.c.b)), Struct_1(1u, select(_wgslsmith_sub_vec2_u32(~var_0.b.b, vec2<u32>(var_0.b.a, 1u)), ~vec2<u32>(0u, var_0.b.b.x) & vec2<u32>(var_0.c.b.x, var_0.b.b.x), !var_1.xz)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.d))), ~var_0.e);
    return _wgslsmith_add_u32(4294967295u ^ var_0.b.b.x, var_0.c.a) & 3859u;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> f32 {
    let var_0 = -(~_wgslsmith_mult_i32(1i, u_input.b.x));
    var var_1 = Struct_3(Struct_1(~103526u, vec2<u32>(1u, func_2())));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0, arg_0, arg_3.x & arg_2.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -217f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(332f - -1352f)), _wgslsmith_f_op_f32(-arg_0))));
    var var_3 = -u_input.a;
    global1 = array<vec2<bool>, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.x, arg_0, arg_3.x)), var_2.x)), var_2.x)));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> u32 {
    global0 = array<Struct_4, 21>();
    let var_0 = arg_1;
    let var_1 = Struct_5(arg_0.b);
    let var_2 = _wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(u_input.a, ~u_input.a), vec4<i32>(u_input.b.x, arg_0.e.x, -1i, _wgslsmith_mod_i32(u_input.b.x, -1i)));
    global2 = array<vec3<bool>, 14>();
    return 0u;
}

fn func_6(arg_0: bool, arg_1: u32) -> Struct_3 {
    var var_0 = vec4<u32>(arg_1, 1u, _wgslsmith_sub_u32(arg_1, arg_1), 4294967295u);
    var var_1 = !global2[_wgslsmith_index_u32(select(arg_1 | var_0.x, _wgslsmith_div_u32(~8640u, _wgslsmith_mod_u32(4294967295u, var_0.x)), true) << (reverseBits(abs(countOneBits(0u))) % 32u), 14u)];
    let var_2 = _wgslsmith_div_f32(-1038f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-624f)) - _wgslsmith_f_op_f32(464f + 525f)))));
    var_0 = select(~((vec4<u32>(var_0.x, 4294967295u, var_0.x, 2666u) << (~vec4<u32>(4294967295u, 20082u, 1u, 4294967295u) % vec4<u32>(32u))) ^ ~(vec4<u32>(var_0.x, 1u, 8570u, 1u) ^ vec4<u32>(arg_1, var_0.x, 51568u, 1u))), ~_wgslsmith_mod_vec4_u32(min(~vec4<u32>(65435u, 1u, var_0.x, var_0.x), vec4<u32>(var_0.x, 3156u, var_0.x, 1u)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(27752u, 1u, arg_1, arg_1), vec4<u32>(4294967295u, 17346u, arg_1, 4294967295u)), firstTrailingBit(vec4<u32>(var_0.x, 476u, 0u, arg_1)))), select(select(select(select(vec4<bool>(arg_0, false, false, true), vec4<bool>(var_1.x, arg_0, true, true), false), vec4<bool>(arg_0, true, arg_0, var_1.x), select(vec4<bool>(false, arg_0, arg_0, var_1.x), vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_0, var_1.x, false, true))), !vec4<bool>(arg_0, true, true, true), select(!vec4<bool>(arg_0, false, false, arg_0), !vec4<bool>(arg_0, true, arg_0, true), 75459u <= var_0.x)), vec4<bool>(any(!vec2<bool>(var_1.x, true)), func_4(vec4<u32>(1827u, 0u, var_0.x, arg_1), _wgslsmith_f_op_f32(abs(var_2)), ~4294967295u, -u_input.a.ywy), arg_0, true), vec4<bool>(any(vec4<bool>(true, var_1.x, false, arg_0)) || true, arg_0, var_1.x, var_1.x)));
    let var_3 = Struct_5(Struct_1(~(~2336u), firstLeadingBit(var_0.wz)));
    return Struct_3(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(true, func_5(Struct_2(u_input.a.x, Struct_1(~1u, vec2<u32>(4294967295u, 37829u)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(53513u, 82865u), vec2<u32>(4294967295u, 28347u)), vec2<u32>(4294967295u, 1u)), vec4<f32>(_wgslsmith_f_op_f32(749f * -657f), _wgslsmith_f_op_f32(max(-1108f, -1915f)), _wgslsmith_f_op_f32(-1000f * 407f), _wgslsmith_f_op_f32(func_1(341f, vec2<i32>(u_input.b.x, u_input.a.x), vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(29898u, 8u)]))), vec3<i32>(-1i) * -vec3<i32>(-50727i, -1i, u_input.a.x)), countOneBits(~(~7240u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f * -667f) - -1026f))));
    var_0 = Struct_3(Struct_1(~func_5(Struct_2(-8094i, var_0.a, Struct_1(55190u, vec2<u32>(var_0.a.b.x, 0u)), vec4<f32>(833f, -1806f, 217f, -205f), u_input.a.yzx), firstLeadingBit(30795u), 769f), abs(vec2<u32>(select(var_0.a.b.x, 3164u, true), 4294967295u))));
    let var_1 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 39062u), var_0.a.b.x, ~1u >> (~var_0.a.b.x % 32u)), 4294967295u);
    var var_2 = _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mult_vec4_i32(countOneBits(abs(u_input.a)), firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 24744i)))), u_input.a);
    global2 = array<vec3<bool>, 14>();
    global2 = array<vec3<bool>, 14>();
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a.a, var_1.x), 8u)];
    var var_4 = Struct_2(-4951i, var_0.a, func_6(true, firstLeadingBit(_wgslsmith_add_u32(70906u, firstLeadingBit(var_1.x)))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-343f, -119f, -1036f, 634f), vec4<f32>(234f, 163f, -191f, 414f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-396f, 853f, -937f, -960f), vec4<f32>(1000f, 1422f, 402f, 647f), false))))), ~(-var_2.xww));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(), _wgslsmith_dot_vec3_i32(u_input.a.wyy, ~u_input.a.zxw) >> (6959u % 32u), reverseBits(~vec4<u32>(1u ^ var_0.a.a, var_0.a.b.x << (var_4.c.a % 32u), 12114u, var_1.x)));
}

