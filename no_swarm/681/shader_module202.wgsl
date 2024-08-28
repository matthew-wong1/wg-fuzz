struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_3,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec2<f32>(-1835f, 999f), vec3<f32>(-159f, -1973f, 807f), Struct_3(vec2<f32>(1455f, 776f), -1344f), true, vec4<bool>(false, true, true, false)), Struct_4(vec2<f32>(321f, -1529f), vec3<f32>(-216f, 565f, -1585f), Struct_3(vec2<f32>(859f, -1588f), 1659f), false, vec4<bool>(false, false, false, false)), Struct_4(vec2<f32>(1000f, -390f), vec3<f32>(-336f, 228f, -1134f), Struct_3(vec2<f32>(419f, -1507f), -938f), false, vec4<bool>(false, true, true, true)), Struct_4(vec2<f32>(577f, -176f), vec3<f32>(311f, -2031f, 554f), Struct_3(vec2<f32>(549f, -1000f), 1615f), true, vec4<bool>(false, true, false, true)), Struct_4(vec2<f32>(1750f, 1758f), vec3<f32>(124f, -404f, -952f), Struct_3(vec2<f32>(-483f, 363f), -977f), true, vec4<bool>(true, true, false, false)));

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(true, vec3<i32>(1962i, -1759i, -69655i), i32(-2147483648), 0u)), Struct_2(Struct_1(true, vec3<i32>(-3345i, 0i, 2287i), 17082i, 0u)), Struct_2(Struct_1(true, vec3<i32>(-1i, 19875i, 2147483647i), 24991i, 1u)), Struct_2(Struct_1(false, vec3<i32>(i32(-2147483648), -1i, -75781i), 2147483647i, 0u)), Struct_2(Struct_1(true, vec3<i32>(53971i, 2683i, 2147483647i), 26454i, 4294967295u)), Struct_2(Struct_1(false, vec3<i32>(-41957i, -14633i, 1i), -28658i, 43315u)), Struct_2(Struct_1(true, vec3<i32>(-377i, 2147483647i, -3443i), i32(-2147483648), 11802u)), Struct_2(Struct_1(true, vec3<i32>(2147483647i, 0i, 2147483647i), 37738i, 38154u)), Struct_2(Struct_1(false, vec3<i32>(0i, -45183i, 19226i), -5624i, 1u)), Struct_2(Struct_1(false, vec3<i32>(4246i, 0i, 64252i), 2147483647i, 62248u)), Struct_2(Struct_1(false, vec3<i32>(-29899i, -1i, -28867i), 1i, 1u)), Struct_2(Struct_1(false, vec3<i32>(0i, 7364i, 15904i), -7960i, 56285u)), Struct_2(Struct_1(true, vec3<i32>(-1i, 45437i, 1i), i32(-2147483648), 4294967295u)), Struct_2(Struct_1(false, vec3<i32>(-8752i, -1i, 31708i), 61943i, 3330u)), Struct_2(Struct_1(false, vec3<i32>(-28191i, 13722i, 59314i), -17191i, 4294967295u)));

var<private> global2: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(0u, 31889u, 82118u, 1u), vec4<u32>(58147u, 25197u, 2387u, 1u), vec4<u32>(4294967295u, 38709u, 40507u, 4294967295u), vec4<u32>(1u, 1u, 1u, 39720u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(28311u, 19538u, 1u, 4294967295u), vec4<u32>(1u, 43060u, 0u, 47484u), vec4<u32>(57689u, 0u, 1u, 0u), vec4<u32>(0u, 19773u, 69020u, 1u), vec4<u32>(4294967295u, 48462u, 0u, 1u), vec4<u32>(15861u, 24927u, 0u, 35251u), vec4<u32>(4553u, 53047u, 0u, 76385u), vec4<u32>(4294967295u, 10753u, 0u, 35500u), vec4<u32>(1u, 1u, 39264u, 47250u), vec4<u32>(0u, 1u, 13237u, 0u), vec4<u32>(0u, 32184u, 4294967295u, 54712u), vec4<u32>(4527u, 0u, 0u, 18061u), vec4<u32>(0u, 27394u, 0u, 66100u), vec4<u32>(1u, 37097u, 0u, 1u), vec4<u32>(42427u, 103186u, 0u, 3105u), vec4<u32>(61038u, 36132u, 4294967295u, 27338u), vec4<u32>(4294967295u, 55684u, 0u, 35425u), vec4<u32>(8632u, 62747u, 17286u, 10708u), vec4<u32>(1u, 4294967295u, 1u, 77331u), vec4<u32>(33237u, 0u, 1u, 64088u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(64289u, 4294967295u, 121044u, 4750u), vec4<u32>(4294967295u, 29548u, 61440u, 4294967295u), vec4<u32>(30847u, 4294967295u, 8149u, 1u), vec4<u32>(4294967295u, 31072u, 4294967295u, 40029u));

var<private> global3: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-25583i, -44592i, i32(-2147483648)), vec3<i32>(6817i, 0i, -37784i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(-60177i, 9732i, 1i), vec3<i32>(65031i, 2147483647i, 16694i), vec3<i32>(0i, i32(-2147483648), 37201i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(0i, 10908i, -62966i), vec3<i32>(-22968i, 20144i, 16556i), vec3<i32>(63276i, -1i, 2147483647i), vec3<i32>(-1i, -20922i, 0i), vec3<i32>(-17313i, 1i, -242i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(i32(-2147483648), 7616i, 1i), vec3<i32>(-14149i, 1i, 0i), vec3<i32>(0i, 27634i, -31454i), vec3<i32>(8737i, -56540i, i32(-2147483648)), vec3<i32>(0i, 18039i, 0i), vec3<i32>(-41655i, -17206i, -1i), vec3<i32>(-3201i, 30871i, -23580i), vec3<i32>(-31465i, 23695i, 21266i), vec3<i32>(0i, 14255i, -1i), vec3<i32>(1i, 8280i, -18061i), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(-10901i, 2147483647i, 3915i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, -54381i, 5252i), vec3<i32>(0i, -29604i, -17833i));

var<private> global4: vec2<f32> = vec2<f32>(290f, 442f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0.d;
    global1 = array<Struct_2, 15>();
    var var_1 = Struct_1(true, vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e.zy, u_input.e.yx), vec2<i32>(-41610i, -u_input.e.x)), abs(u_input.a.x) | firstTrailingBit(min(u_input.a.x, u_input.a.x)), -_wgslsmith_mod_i32(arg_0.b.x, u_input.b ^ arg_0.c)), -2147483647i, _wgslsmith_sub_u32(u_input.d.x, 52265u));
    let var_2 = global0[_wgslsmith_index_u32(var_1.d, 5u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b));
    return select(select(!var_2.e.xz, !select(vec2<bool>(true, true), vec2<bool>(arg_0.a, arg_0.a), true), false), vec2<bool>(all(select(var_2.e.xz, vec2<bool>(true, true), var_1.a)), true), var_2.e.wy);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    global1 = array<Struct_2, 15>();
    global2 = array<vec4<u32>, 30>();
    global1 = array<Struct_2, 15>();
    let var_0 = Struct_2(arg_1.a);
    var var_1 = !select(arg_0.xz, !arg_0.wx, select(func_3(Struct_1(true, vec3<i32>(var_0.a.c, var_0.a.c, -2147483647i), 43119i, arg_1.a.d)), arg_0.wy, var_0.a.a));
    return 786f;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(601f, 920f, -1479f, 706f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-185f, -444f, 774f, global4.x) - vec4<f32>(-1291f, 187f, global4.x, global4.x))))) * vec4<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(f32(-1f) * -373f)))), 1302f));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)));
    var var_2 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(round(var_0));
    global4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(sign(1235f))), _wgslsmith_f_op_f32(func_2(!var_2.e, global1[_wgslsmith_index_u32(~(~u_input.c), 15u)], vec2<i32>(arg_3.x, 1i)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1298f)) - _wgslsmith_div_vec2_f32(var_2.a, var_0.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) + _wgslsmith_f_op_vec2_f32(-var_2.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_2.a.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 256f))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_3.yy)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.e.yx, Struct_1(true, vec3<i32>(-57432i, 1i, 0i), -15695i, u_input.d.x), 54178i, u_input.e)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -1569f, global4.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1067f, -601f, global4.x), vec3<f32>(global4.x, global4.x, -674f))), true)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global4.x)), global4.x, _wgslsmith_f_op_f32(sign(global4.x))), vec3<f32>(global4.x, -283f, global4.x))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(478f, global4.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(925f)) * 2062f)), any(vec4<bool>(_wgslsmith_f_op_f32(-614f * global4.x) <= _wgslsmith_f_op_f32(abs(global4.x)), true, any(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), func_3(Struct_1(true, u_input.e.yww, 3436i, u_input.c)).x))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(57936u) & _wgslsmith_mult_u32(61599u >> (u_input.c % 32u), ~15432u >> (0u % 32u)), u_input.c), 15u)];
    var var_2 = Struct_4(var_0.b.yx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.b)) + global4.x) + global4.x), 941f, -419f), var_0.c, all(select(var_0.e.yy, vec2<bool>(true, true), true)), var_0.e);
    let var_3 = Struct_2(var_1.a);
    var var_4 = ~vec4<i32>(-2147483647i, ((var_1.a.b.x >> (4294967295u % 32u)) ^ -8821i) & 12246i, u_input.b, ~1i);
    global0 = array<Struct_4, 5>();
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, min(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.d, select(global2[_wgslsmith_index_u32(u_input.c, 30u)], vec4<u32>(4294967295u, var_3.a.d, var_1.a.d, 24783u), true)), ~global2[_wgslsmith_index_u32(37133u, 30u)] & ~global2[_wgslsmith_index_u32(0u, 30u)]), max(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.d.zwy, vec3<u32>(4294967295u, var_3.a.d, var_5.d)), 30u)], ~vec4<u32>(31380u, var_5.d, var_1.a.d, 0u))));
}

