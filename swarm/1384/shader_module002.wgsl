struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(-344f), Struct_3(729f), Struct_3(-1872f), Struct_3(1430f), Struct_3(-322f), Struct_3(-406f), Struct_3(-1619f), Struct_3(1068f), Struct_3(835f), Struct_3(362f), Struct_3(-1000f), Struct_3(-1266f), Struct_3(-197f), Struct_3(-1621f), Struct_3(-1034f), Struct_3(-1000f), Struct_3(-903f), Struct_3(971f), Struct_3(-272f), Struct_3(-827f), Struct_3(-910f), Struct_3(-1000f), Struct_3(1116f), Struct_3(-1920f));

var<private> global1: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false));

var<private> global2: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(-301f), Struct_4(1000f), Struct_4(-408f), Struct_4(-1000f), Struct_4(1434f), Struct_4(637f), Struct_4(476f), Struct_4(1726f), Struct_4(465f), Struct_4(-254f), Struct_4(-127f), Struct_4(-358f));

var<private> global3: bool = true;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec3<f32> {
    global3 = true;
    global2 = array<Struct_4, 12>();
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    let var_0 = vec4<bool>(false, true, true, !(1u < _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 13988u, 34182u, arg_0.x), ~vec4<u32>(arg_0.x, 25417u, arg_0.x, arg_0.x))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1000f, 562f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1220f, -1392f, 1305f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(471f, -917f, -2020f)))), !all(var_0))))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-199f, 1832f), vec2<f32>(-230f, -1379f)))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-949f, 711f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~abs(vec2<u32>(0u, 4294967295u)), vec3<i32>(u_input.a << (1u % 32u), u_input.a, min(u_input.a, u_input.a))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, 1364f, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 556f, var_0.a.x) - vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - 471f), _wgslsmith_f_op_f32(trunc(-240f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, 638f, 1177f), vec3<f32>(var_0.a.x, var_0.a.x, 1690f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-152f, var_0.a.x, var_0.a.x) + vec3<f32>(var_0.a.x, var_1.x, -261f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, 2138f, -956f))))) - vec3<f32>(var_1.x, _wgslsmith_f_op_f32(188f + _wgslsmith_f_op_f32(var_1.x * -1860f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(-var_1.x), true)))));
    let var_2 = var_0.a;
    var var_3 = global2[_wgslsmith_index_u32(1u, 12u)];
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(24914u, 17637u), vec2<u32>(1u, 4294967295u)), abs(vec3<i32>(2147483647i, u_input.a, -4049i)))).x) + var_0.a));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_2) -> u32 {
    let var_0 = !select(vec2<bool>(false, true), select(select(vec2<bool>(false, arg_1.x), !vec2<bool>(arg_1.x, true), false), !arg_1.wx, !arg_1.x), false);
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 12u)];
    global2 = array<Struct_4, 12>();
    let var_2 = _wgslsmith_f_op_f32(587f + -1636f);
    var var_3 = abs(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(0u, 4294967295u, 48068u, 4294967295u)), vec4<u32>(~(4294967295u << (0u % 32u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(80704u, 4294967295u, 1u), vec3<u32>(65708u, 1u, 4294967295u), global1[_wgslsmith_index_u32(15893u, 22u)]), vec3<u32>(1u, 1u, 1u)), 44891u, ~1u)));
    return max(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(68436u, 1u, 1u), vec3<u32>(0u, 0u, 0u)), _wgslsmith_mult_u32(0u, 46490u), ~12631u) << (firstLeadingBit(_wgslsmith_div_u32(0u, 1u)) % 32u), 1u << (~4294967295u % 32u)), 1u);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_3, 24>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-926f + 1f))));
    let var_1 = 1i;
    global1 = array<vec3<bool>, 22>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~(~(~29749u)), func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(262f, var_0.a, var_0.a)))), vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(0u, 12u)], func_2())), arg_0.x), 24u)];
    return Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_1, -19756i), -vec3<i32>(u_input.a, u_input.a, -2147483647i)), vec3<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), var_1, -u_input.a)) ^ vec3<i32>(-max(-39767i, 48527i), ~_wgslsmith_mult_i32(1i, 38993i), u_input.a), select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_1 < 0u)), select(vec4<bool>(false, true, all(vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, true, false), true)), vec4<bool>(!(arg_1 > 1u), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true, true)), var_2.a, select(~(-max(vec2<i32>(var_1, var_1), vec2<i32>(var_1, var_1))), reverseBits(~vec2<i32>(var_1, var_1)), !vec2<bool>(true, select(true, false, false))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(359f * -557f), -1603f, -1773f, _wgslsmith_f_op_f32(-var_2.a)), vec4<f32>(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(abs(-499f)), var_0.a)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    var var_0 = select(_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(33398u, 48087u, 1u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(49016u, 1u, 24923u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(6997u, 13997u, 4294967295u, 23774u), vec4<u32>(1u, 0u, 2975u, 1u), vec4<u32>(23346u, 51806u, 0u, 51212u)))) & ~vec4<u32>(1u, 1u, 1u, 1u), ~(~(~vec4<u32>(1u, 1u, 1u, 1u))), !arg_0.b.x);
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1245f)));
    var var_2 = global0[_wgslsmith_index_u32(1u, 24u)];
    var var_3 = u_input.a;
    var_3 = _wgslsmith_clamp_i32(u_input.a, func_1(var_0.wy, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, -1054f, 1020f) * vec3<f32>(var_2.a, 386f, var_2.a)), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), Struct_4(var_2.a), Struct_2(vec2<f32>(var_2.a, 564f)))).a.x >> (var_0.x % 32u), arg_1.x);
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), var_0.wwy), countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.wxy))) & 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(1793f);
    let var_1 = vec4<u32>(func_5(func_1(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 3916u), vec2<u32>(69233u, 26345u), vec2<u32>(41133u, 36777u))), 7705u), -((vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(-1096i, 1i, u_input.a)) << (~vec3<u32>(112598u, 1u, 0u) % vec3<u32>(32u)))), ~_wgslsmith_mult_u32(~(~14608u), firstTrailingBit(0u)), firstLeadingBit(4947u), 800u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1971f, var_0.a) - vec2<f32>(var_0.a, var_0.a))))));
    global3 = true;
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1.wwx, _wgslsmith_sub_vec3_u32(~(~var_1.xzz), var_1.yzz)), (func_5(Struct_1(vec3<i32>(u_input.a, 0i, u_input.a), vec4<bool>(false, false, true, true), 770f, vec2<i32>(0i, u_input.a), vec4<f32>(var_0.a, 1136f, var_2.x, 255f)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -49285i, u_input.a), vec3<i32>(u_input.a, -13954i, 40389i))) << (~select(var_1.x, var_1.x, false) % 32u)) & func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_2.x, var_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(754f, var_0.a, var_2.x))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), true), global2[_wgslsmith_index_u32(13286u, 12u)], Struct_2(var_2)));
    global3 = select(_wgslsmith_div_u32(_wgslsmith_mult_u32(~var_1.x, _wgslsmith_add_u32(1u, 39913u)), 0u) < firstLeadingBit(~1u), true != !any(vec3<bool>(true, true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_0.a)), var_0.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, 1607f, 1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-177f, var_2.x, var_2.x))), select(vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(1489u, 22u)]))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, -1153f, var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_0.a)))), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(2371f, var_0.a)), _wgslsmith_div_f32(var_2.x, -1523f), _wgslsmith_f_op_f32(f32(-1f) * -1304f)) * vec3<f32>(_wgslsmith_f_op_f32(1077f + var_0.a), 511f, var_2.x)))));
}

