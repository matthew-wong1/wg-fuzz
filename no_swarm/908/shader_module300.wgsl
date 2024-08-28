struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<u32, 20> = array<u32, 20>(19843u, 4294967295u, 4899u, 22965u, 46431u, 15805u, 31029u, 4294967295u, 54623u, 96140u, 42716u, 19638u, 133u, 16096u, 1u, 4294967295u, 1u, 1242u, 793u, 69665u);

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<i32>(-24954i, 2147483647i, 9130i, i32(-2147483648)), 0i, vec4<u32>(0u, 1u, 4294967295u, 1u), vec2<u32>(101157u, 33844u)), Struct_1(vec3<u32>(1u, 0u, 0u), vec4<i32>(23969i, -102854i, 2147483647i, 29513i), -1i, vec4<u32>(44358u, 1u, 454u, 4294967295u), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<u32>(1079u, 4294967295u, 0u), vec4<i32>(19372i, -1i, 0i, -44816i), -1i, vec4<u32>(1u, 99531u, 50897u, 36672u), vec2<u32>(0u, 18284u)), Struct_1(vec3<u32>(14085u, 27003u, 27632u), vec4<i32>(41862i, i32(-2147483648), 0i, -12287i), -39028i, vec4<u32>(0u, 13040u, 29911u, 66284u), vec2<u32>(4294967295u, 61832u)), Struct_1(vec3<u32>(18329u, 17142u, 4294967295u), vec4<i32>(46414i, 24173i, 1i, -43350i), -55997i, vec4<u32>(80611u, 0u, 29391u, 0u), vec2<u32>(11634u, 8822u)), Struct_1(vec3<u32>(1u, 9115u, 29794u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 2147483647i), 14694i, vec4<u32>(1u, 4294967295u, 10651u, 59919u), vec2<u32>(12419u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 12909u, 16901u), vec4<i32>(i32(-2147483648), -20139i, 10233i, 2147483647i), -7791i, vec4<u32>(67790u, 4294967295u, 0u, 30882u), vec2<u32>(31870u, 117811u)), Struct_1(vec3<u32>(4294967295u, 1u, 38808u), vec4<i32>(i32(-2147483648), i32(-2147483648), 20219i, -62696i), 2147483647i, vec4<u32>(4294967295u, 10151u, 34867u, 45146u), vec2<u32>(22805u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 0u, 775u), vec4<i32>(-12008i, 1i, -1i, 0i), 45993i, vec4<u32>(24948u, 1u, 30353u, 1u), vec2<u32>(9671u, 1u)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<i32>(-1i, -64778i, 1i, 25900i), -4602i, vec4<u32>(42410u, 1u, 0u, 793u), vec2<u32>(60964u, 103032u)));

var<private> global3: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(480f, 307f), vec2<f32>(-102f, -312f), vec2<f32>(-1109f, 1053f), vec2<f32>(-927f, 1000f), vec2<f32>(1000f, -1625f), vec2<f32>(-174f, -417f), vec2<f32>(-1182f, -455f), vec2<f32>(-222f, -309f), vec2<f32>(850f, 1353f), vec2<f32>(-1783f, 118f), vec2<f32>(1000f, 252f), vec2<f32>(-365f, 1760f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    let var_0 = select(vec2<bool>(true, any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), any(vec3<bool>(true, true, true))))), vec2<bool>(arg_0 >= reverseBits(_wgslsmith_mult_i32(arg_1.x, -16228i)), 1648f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -500f)))), true);
    var var_1 = arg_3.www;
    let var_2 = vec4<bool>(!any(vec4<bool>(var_0.x, var_0.x, var_0.x, !var_0.x)), any(!(!select(var_0, vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x)))), any(vec4<bool>(var_0.x, false, true, true)), true && var_0.x);
    global2 = array<Struct_1, 10>();
    let var_3 = -2147483647i;
    return 1u;
}

fn func_2() -> Struct_1 {
    global3 = array<vec2<f32>, 12>();
    global3 = array<vec2<f32>, 12>();
    var var_0 = ~vec2<u32>(40549u, ~0u >> (_wgslsmith_sub_u32(27066u & global0[_wgslsmith_index_u32(u_input.a.x, 20u)], func_3(-38967i, vec3<i32>(2147483647i, 2147483647i, -1i), -2147483647i, vec4<i32>(-19065i, -1i, 2147483647i, -38776i))) % 32u));
    var_0 = select(select(reverseBits(u_input.a.yz), ~(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(var_0.x, 20u)]) >> (~u_input.a.yz % vec2<u32>(32u))), !any(vec4<bool>(false, true, true, true))), reverseBits(~u_input.a.zz), vec2<bool>(true, true));
    global3 = array<vec2<f32>, 12>();
    return Struct_1(vec3<u32>(1287u, _wgslsmith_clamp_u32(~var_0.x >> (0u % 32u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.x, 20u)] ^ 42186u, _wgslsmith_mod_u32(var_0.x, var_0.x)), u_input.a.x), ~u_input.a.x), ~(~(-vec4<i32>(19731i, 0i, -2147483647i, 65540i))) >> (vec4<u32>(1u, global0[_wgslsmith_index_u32(33937u << (select(15949u, 1u, true) % 32u), 20u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, max(36097u, global0[_wgslsmith_index_u32(69689u, 20u)])), 20u)], ~_wgslsmith_mult_u32(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 20u)])) % vec4<u32>(32u)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, ~(-19443i), _wgslsmith_sub_i32(-25138i, -2147483647i)), vec3<i32>(_wgslsmith_div_i32(-50789i, 55525i), 11599i, -30999i))), _wgslsmith_mult_vec4_u32(vec4<u32>(~37250u, 0u, _wgslsmith_mod_u32(30182u, u_input.a.x), _wgslsmith_clamp_u32(~3142u, reverseBits(4294967295u), ~u_input.a.x)), vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(~var_0.x, ~u_input.a.x), _wgslsmith_mod_u32(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 20u)], 20u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 20u)], var_0.x, 1u, 133401u), vec4<u32>(1u, var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], var_0.x)), 20u)]), 13507u)), u_input.a.zy >> (max(vec2<u32>(38393u ^ u_input.a.x, ~73017u), vec2<u32>(99025u, u_input.a.x) & u_input.a.xz) % vec2<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    return Struct_3(func_2(), arg_1, Struct_2(arg_1, (arg_1.d >> (vec4<u32>(global0[_wgslsmith_index_u32(37314u, 20u)], 126943u, global0[_wgslsmith_index_u32(4294967295u, 20u)], 13139u) % vec4<u32>(32u))) | arg_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(438f, 1032f, 1079f), vec3<f32>(1000f, -464f, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1197f, -2684f, 1000f) - vec3<f32>(-1000f, 2020f, -562f)))), vec2<f32>(-1000f, 1270f)), abs(~abs(~u_input.a)), Struct_1(vec3<u32>(_wgslsmith_sub_u32(abs(arg_1.a.x), 1u), _wgslsmith_dot_vec2_u32(arg_1.a.zz, ~arg_1.e), arg_1.e.x), ~arg_1.b, func_2().b.x, ~vec4<u32>(6907u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 1u, 83142u), vec3<u32>(global0[_wgslsmith_index_u32(42574u, 20u)], 85346u, arg_1.e.x)), ~global0[_wgslsmith_index_u32(arg_1.a.x, 20u)], global0[_wgslsmith_index_u32(78841u, 20u)] | 27369u), arg_1.e));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<f32>) -> vec3<bool> {
    global1 = array<Struct_1, 18>();
    let var_0 = arg_0;
    var var_1 = _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b.x, -2147483647i), vec2<i32>(arg_1.x, var_0.a.c)), _wgslsmith_add_i32(32901i, abs(_wgslsmith_div_i32(arg_0.e.c, arg_0.b.c)))) >> (arg_0.b.d.x % 32u);
    var var_2 = func_2().b;
    var_2 = _wgslsmith_div_vec4_i32(var_0.b.b, ~var_0.c.a.b);
    return !(!vec3<bool>(true, arg_2, -238f >= _wgslsmith_f_op_f32(-arg_0.c.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_4(func_1(0i, Struct_1(u_input.a, vec4<i32>(-2147483647i, 0i, -7941i, -1i), -2147483647i, vec4<u32>(u_input.a.x, 1u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], u_input.a.x))), vec3<i32>(abs(-75382i), 54775i, firstLeadingBit(-49799i)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-321f, 830f, 1000f, 491f)))));
    let var_1 = func_1(5116i, Struct_1(abs(select(u_input.a, vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(20808u, 20u)], u_input.a.x), false)), _wgslsmith_div_vec4_i32(func_2().b, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, 52871i, 14012i), -vec4<i32>(-2147483647i, 14746i, -50698i, -1i))), 162i, firstLeadingBit(~reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 0u, u_input.a.x))), ~u_input.a.zy));
    var var_2 = var_1.d;
    let var_3 = var_1;
    let var_4 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_1.a.d.yyz & vec3<u32>(62911u, 26741u, 4294967295u), vec3<u32>(u_input.a.x, 0u, 0u) & u_input.a), (var_1.d ^ vec3<u32>(1u, var_3.a.d.x, var_2.x)) ^ vec3<u32>(46134u, 1u, global0[_wgslsmith_index_u32(var_3.e.d.x, 20u)])) | select(~49304u, ~(~var_1.d.x), var_0.x), ~(~abs(global0[_wgslsmith_index_u32(u_input.a.x, 20u)] ^ var_1.e.d.x)));
    global2 = array<Struct_1, 10>();
    global0 = array<u32, 20>();
    var var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-539f, _wgslsmith_f_op_f32(exp2(var_1.c.c.x)))) + _wgslsmith_f_op_f32(-var_3.c.d.x)))));
}

