struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(-1i, Struct_1(-20185i, false), Struct_1(14273i, false), vec4<i32>(10776i, i32(-2147483648), 1i, 2147483647i)), Struct_4(13647i, Struct_1(2147483647i, true), Struct_1(1i, true), vec4<i32>(-64809i, i32(-2147483648), 21542i, 0i)), Struct_4(0i, Struct_1(32464i, false), Struct_1(80106i, true), vec4<i32>(-21073i, 32334i, 0i, -18652i)), Struct_4(1i, Struct_1(-1i, false), Struct_1(2147483647i, false), vec4<i32>(7655i, 1i, 5354i, -1i)), Struct_4(0i, Struct_1(2147483647i, false), Struct_1(1i, true), vec4<i32>(-1327i, -1i, 2147483647i, -476i)), Struct_4(-44630i, Struct_1(-1i, true), Struct_1(-26285i, false), vec4<i32>(37059i, 8222i, -46992i, 29853i)), Struct_4(-5146i, Struct_1(-82560i, false), Struct_1(2147483647i, false), vec4<i32>(1i, 1i, 29161i, -1i)));

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 5328u, 1u);

var<private> global2: array<i32, 3> = array<i32, 3>(-8390i, 1i, -1i);

var<private> global3: array<u32, 7>;

var<private> global4: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(0i, Struct_1(i32(-2147483648), true), Struct_1(89942i, true), vec4<i32>(i32(-2147483648), -46252i, 2147483647i, i32(-2147483648))), Struct_4(0i, Struct_1(10319i, true), Struct_1(58896i, true), vec4<i32>(-13558i, 1i, 38320i, -4063i)), Struct_4(25146i, Struct_1(i32(-2147483648), true), Struct_1(11954i, false), vec4<i32>(1i, 0i, 2147483647i, -9760i)), Struct_4(33313i, Struct_1(-1i, false), Struct_1(25782i, false), vec4<i32>(0i, -15398i, 0i, 0i)), Struct_4(2147483647i, Struct_1(2147483647i, false), Struct_1(-64776i, false), vec4<i32>(-1i, i32(-2147483648), 2147483647i, -1i)), Struct_4(-38068i, Struct_1(4155i, false), Struct_1(1i, false), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648))), Struct_4(19766i, Struct_1(i32(-2147483648), true), Struct_1(17254i, false), vec4<i32>(4806i, -14344i, 44511i, 0i)), Struct_4(-9985i, Struct_1(-1i, true), Struct_1(i32(-2147483648), true), vec4<i32>(2147483647i, -20086i, i32(-2147483648), -1i)), Struct_4(i32(-2147483648), Struct_1(1i, true), Struct_1(2147483647i, true), vec4<i32>(-39878i, 0i, 1i, 5302i)), Struct_4(-3959i, Struct_1(50804i, true), Struct_1(1i, false), vec4<i32>(-5397i, 2147483647i, i32(-2147483648), i32(-2147483648))), Struct_4(1867i, Struct_1(i32(-2147483648), true), Struct_1(-1i, true), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_4(0i, Struct_1(-1i, true), Struct_1(7871i, false), vec4<i32>(16524i, 2147483647i, 7974i, 32425i)), Struct_4(-68992i, Struct_1(2147483647i, false), Struct_1(-1i, false), vec4<i32>(i32(-2147483648), 44550i, -8400i, -1i)), Struct_4(-1488i, Struct_1(-23159i, false), Struct_1(i32(-2147483648), true), vec4<i32>(-9989i, 14428i, 1i, -27277i)), Struct_4(13688i, Struct_1(0i, false), Struct_1(-32449i, true), vec4<i32>(-13992i, -22617i, 17771i, 1i)), Struct_4(-1i, Struct_1(1i, true), Struct_1(i32(-2147483648), true), vec4<i32>(i32(-2147483648), 1i, -8163i, -2849i)), Struct_4(-14763i, Struct_1(i32(-2147483648), false), Struct_1(0i, true), vec4<i32>(-17612i, -33075i, -1i, 15291i)), Struct_4(1i, Struct_1(-85148i, false), Struct_1(12175i, true), vec4<i32>(1i, 0i, 1644i, 1i)), Struct_4(2147483647i, Struct_1(43606i, true), Struct_1(51744i, true), vec4<i32>(67053i, 1i, -1i, 13933i)), Struct_4(0i, Struct_1(2147483647i, false), Struct_1(1i, true), vec4<i32>(1i, -21736i, -16276i, i32(-2147483648))), Struct_4(2147483647i, Struct_1(0i, true), Struct_1(-28661i, false), vec4<i32>(44061i, 2147483647i, 1i, -36336i)), Struct_4(-39460i, Struct_1(2147483647i, false), Struct_1(1i, false), vec4<i32>(33419i, -21916i, 1i, -8636i)), Struct_4(i32(-2147483648), Struct_1(10843i, false), Struct_1(0i, true), vec4<i32>(71103i, i32(-2147483648), 20867i, -18390i)), Struct_4(0i, Struct_1(-24985i, false), Struct_1(0i, false), vec4<i32>(-808i, i32(-2147483648), 24419i, -10341i)), Struct_4(3611i, Struct_1(1i, true), Struct_1(i32(-2147483648), false), vec4<i32>(0i, i32(-2147483648), 0i, -1i)), Struct_4(21613i, Struct_1(12206i, false), Struct_1(-1619i, true), vec4<i32>(-18957i, 2147483647i, 26254i, i32(-2147483648))), Struct_4(100334i, Struct_1(2147483647i, true), Struct_1(-1i, false), vec4<i32>(15976i, -6414i, -9654i, 2147483647i)), Struct_4(-1642i, Struct_1(56772i, false), Struct_1(-13566i, false), vec4<i32>(-26776i, -162i, 0i, 9767i)), Struct_4(0i, Struct_1(2147483647i, false), Struct_1(0i, false), vec4<i32>(-41688i, 728i, 15505i, 2147483647i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec4<i32> {
    let var_0 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), !vec3<bool>(true, any(vec2<bool>(false, false)), true), select(vec3<bool>(any(vec2<bool>(false, true)), true, any(vec2<bool>(true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f - 154f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(195f - 655f), _wgslsmith_f_op_f32(sign(-446f))))))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-482f)), _wgslsmith_f_op_f32(-364f - _wgslsmith_f_op_f32(-2339f * _wgslsmith_f_op_f32(-620f - -813f)))));
    var var_2 = ~_wgslsmith_mod_u32(max(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(12866u, firstLeadingBit(0u)), 7u)], 1710u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 74677u, 56853u, 1u), vec4<u32>(global3[_wgslsmith_index_u32(50892u, 7u)], global1.x, 4294967295u, arg_0)) | _wgslsmith_dot_vec4_u32(vec4<u32>(10343u, 0u, 4294967295u, 55376u), ~vec4<u32>(global3[_wgslsmith_index_u32(arg_0, 7u)], global1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 7u)], 7u)], arg_0)));
    var_2 = 4294967295u;
    global0 = array<Struct_4, 7>();
    return _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, arg_1, 24838i, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(global1.x, 3u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 7u)], 3u)], global2[_wgslsmith_index_u32(arg_0, 3u)]), vec4<i32>(1i, -2147483647i, arg_1, 9726i), select(vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(arg_0, 3u)], 2147483647i, u_input.b), vec4<i32>(-25191i, u_input.b, 9777i, global2[_wgslsmith_index_u32(36439u, 3u)]), var_0.x))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global3[_wgslsmith_index_u32(1u, 7u)], 58874u) ^ vec4<u32>(global1.x, 32787u, 121254u, arg_0), ~vec4<u32>(arg_0, 33224u, 0u, global1.x)), ~arg_0 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(20811u, 4294967295u, 6676u), vec3<u32>(global1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global3[_wgslsmith_index_u32(arg_0, 7u)])) % 32u), arg_0, global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(arg_0, 0u)), 7u)]) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-u_input.b, arg_1, ~u_input.b, _wgslsmith_mult_i32(577i, 1i)), select(vec4<i32>(_wgslsmith_mod_i32(-1i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 3u)]), 1i, i32(-1i) * -2147483647i, global2[_wgslsmith_index_u32(13340u | arg_0, 3u)]), vec4<i32>(0i, _wgslsmith_sub_i32(1i, 30187i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -4410i, -2147483647i, 0i), vec4<i32>(-1i, 0i, arg_1, u_input.a.x)), ~2147483647i), !vec4<bool>(false, true, var_0.x, false)), vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.x, arg_0), min(arg_0, 45937u)), 7u)], 3u)], arg_1, 8194i, arg_1)));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(-2147483647i, true);
    let var_1 = Struct_4(1i, var_0, var_0, -_wgslsmith_div_vec4_i32(countOneBits(reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 7u)], 3u)], -2147483647i, 1i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 3u)]))), _wgslsmith_div_vec4_i32(func_3(0u, u_input.b), vec4<i32>(-1i, 0i, u_input.b, u_input.a.x))));
    global3 = array<u32, 7>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(func_3(4294967295u, _wgslsmith_mod_i32(var_0.a, 64164i)), var_1.d), !(!all(vec4<bool>(false, false, var_1.c.b, true)))));
    let var_3 = var_1.c.a;
    return var_2.a.a;
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    global0 = array<Struct_4, 7>();
    var var_0 = global1.zy;
    var var_1 = vec4<u32>(~((global1.x << (countOneBits(var_0.x) % 32u)) >> (0u % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(~31188u, 1u, 61898u & global3[_wgslsmith_index_u32(global1.x, 7u)], var_0.x), select(~vec4<u32>(53443u, global1.x, 19869u, 64225u), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 0u, var_0.x, global1.x), vec4<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(global1.x, 7u)], 1u)), vec4<u32>(var_0.x, 44375u, 29329u, 21649u) & vec4<u32>(global1.x, 0u, 25432u, global1.x)), true)), var_0.x, _wgslsmith_sub_u32(~(~(~var_0.x)), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(~(~global1.x), 7u)])));
    var var_2 = vec3<u32>(1u, ~0u, select(abs(min(var_0.x, ~1u)), 1u, (~56545i ^ (u_input.a.x << (var_0.x % 32u))) > u_input.b));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(870f, 1796f) + vec2<f32>(-505f, -892f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-782f, 802f)))))) * vec2<f32>(523f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-698f, -915f)) * _wgslsmith_f_op_f32(ceil(-714f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1808f)) - -284f))));
    return 22198u;
}

fn func_1() -> vec4<u32> {
    global4 = array<Struct_4, 29>();
    global0 = array<Struct_4, 7>();
    var var_0 = global2[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(~(~global1.x), 7u)]), 3u)];
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    return vec4<u32>(firstLeadingBit(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(39484u, 4294967295u) >> (_wgslsmith_mult_u32(1u & global3[_wgslsmith_index_u32(35739u, 7u)], select(global1.x, 1u, true)) % 32u), 7u)]), 62003u, 0u, func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(func_2(), _wgslsmith_mult_i32(u_input.a.x, 1i), ~(-2147483647i)), vec3<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 0i), u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 7>();
    var var_0 = _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~30302u, 7u)], global1.x | 4294967295u), abs(52649u << (1u % 32u)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u >> (~global1.x % 32u), 7u)], 7u)], 1u)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(global1.x, 1u, 1u, 18623u)), vec4<u32>(global1.x, 77480u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 7u)], 7u)]) << (vec4<u32>(5489u, 4294967295u, 43474u, 45666u) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(func_1(), vec4<u32>(~global1.x, _wgslsmith_mult_u32(12219u, 1u), select(global1.x, 48926u, false), ~global1.x)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(var_0.x, global3[_wgslsmith_index_u32(1349u, 7u)])) >> (vec2<u32>(60035u, var_0.x) % vec2<u32>(32u)), vec2<u32>(func_1().x, 30176u)), global1.zx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-614f, -1268f, 391f, 494f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-702f, -320f, -1964f, -1000f)))))), vec4<i32>(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a.x, global2[_wgslsmith_index_u32(global1.x, 3u)]), vec3<i32>(global2[_wgslsmith_index_u32(1u, 3u)], u_input.b, -2147483647i))), func_3(_wgslsmith_add_u32(global1.x >> (38117u % 32u), var_0.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(33680i, global2[_wgslsmith_index_u32(global1.x, 3u)]), -6538i)).x, 1i, -global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(71185u, global1.x), 3u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-196f, -470f, 400f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-299f, -989f, 207f), vec3<f32>(282f, 171f, 303f), vec3<bool>(true, false, false))) + vec3<f32>(-1347f, 1168f, -397f))), vec3<f32>(1f, 1f, -635f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(566f, _wgslsmith_f_op_f32(round(-800f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(463f, -1747f), vec2<f32>(-873f, -1182f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1086f, 1537f) + vec2<f32>(378f, -396f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-612f, 1208f)))), !any(vec2<bool>(false, false)))));
}

