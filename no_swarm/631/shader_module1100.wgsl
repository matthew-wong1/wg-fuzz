struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(1i, Struct_1(true, vec3<bool>(true, false, false), 719f, 47128u)), Struct_2(40741i, Struct_1(false, vec3<bool>(false, false, false), 1347f, 4294967295u)), Struct_2(2147483647i, Struct_1(false, vec3<bool>(false, false, true), -1000f, 0u)), Struct_2(-1i, Struct_1(true, vec3<bool>(true, true, false), -387f, 1u)), Struct_2(-1i, Struct_1(false, vec3<bool>(true, true, false), -603f, 0u)), Struct_2(-1i, Struct_1(true, vec3<bool>(false, true, true), 438f, 33278u)), Struct_2(i32(-2147483648), Struct_1(true, vec3<bool>(true, false, true), 671f, 49006u)), Struct_2(-14974i, Struct_1(false, vec3<bool>(false, false, true), -1707f, 1u)), Struct_2(15831i, Struct_1(false, vec3<bool>(false, true, true), 1000f, 27001u)), Struct_2(20951i, Struct_1(true, vec3<bool>(false, false, false), 335f, 1u)), Struct_2(-5020i, Struct_1(false, vec3<bool>(false, true, true), -1372f, 4294967295u)), Struct_2(2147483647i, Struct_1(true, vec3<bool>(false, false, false), 739f, 4294967295u)), Struct_2(41032i, Struct_1(true, vec3<bool>(false, false, false), 298f, 1u)), Struct_2(-3195i, Struct_1(false, vec3<bool>(true, false, false), -2023f, 0u)), Struct_2(-1i, Struct_1(true, vec3<bool>(false, true, false), 1069f, 12793u)), Struct_2(46619i, Struct_1(false, vec3<bool>(true, false, false), -1430f, 14155u)), Struct_2(50108i, Struct_1(false, vec3<bool>(true, false, true), -406f, 16095u)), Struct_2(7542i, Struct_1(false, vec3<bool>(false, true, true), 531f, 0u)), Struct_2(-8842i, Struct_1(false, vec3<bool>(false, true, true), 345f, 4294967295u)), Struct_2(1i, Struct_1(true, vec3<bool>(true, true, false), 774f, 0u)), Struct_2(i32(-2147483648), Struct_1(false, vec3<bool>(true, false, false), 1000f, 0u)), Struct_2(2927i, Struct_1(false, vec3<bool>(true, false, true), -615f, 25862u)));

var<private> global1: f32 = -414f;

var<private> global2: vec3<i32> = vec3<i32>(29016i, 31653i, 0i);

var<private> global3: array<Struct_3, 14>;

var<private> global4: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(i32(-2147483648), Struct_1(true, vec3<bool>(true, false, false), 961f, 6758u)), Struct_2(1i, Struct_1(false, vec3<bool>(false, false, false), 1000f, 0u)), Struct_2(-1i, Struct_1(false, vec3<bool>(false, false, true), 1679f, 31433u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    global4 = array<Struct_2, 3>();
    global0 = array<Struct_2, 22>();
    var var_0 = global4[_wgslsmith_index_u32(min(~firstTrailingBit(86957u), abs(countOneBits(~1u))), 3u)];
    return -497f;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = arg_3;
    global2 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(arg_0, countOneBits(-arg_1)), _wgslsmith_add_i32(5194i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, arg_0, 3443i), abs(vec4<i32>(-23474i, arg_0, arg_1, -2147483647i)))), -1i), -vec3<i32>(-(u_input.c.x & 0i), _wgslsmith_div_i32(arg_0, -2147483647i), -2147483647i));
    global2 = (~min(firstTrailingBit(u_input.c.yxw), u_input.c.wzw) << (firstTrailingBit(min(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, arg_3, 20656u), vec3<u32>(var_0, 67995u, 23833u)), vec3<u32>(39375u, var_0, 0u))) % vec3<u32>(32u))) >> (countOneBits(vec3<u32>(~_wgslsmith_div_u32(var_0, 88660u), 82146u, ~arg_3)) % vec3<u32>(32u));
    let var_1 = Struct_3(Struct_1(any(vec2<bool>(true, false)), vec3<bool>(true, all(vec3<bool>(false, true, false)) & any(vec4<bool>(false, true, false, true)), ~32162u != _wgslsmith_sub_u32(17603u, arg_3)), 1552f, 0u), u_input.c.zwz, Struct_1(!(true || any(vec2<bool>(true, false))), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true | any(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2)))), var_0), 2147483647i, Struct_2(min(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-53590i, -1i), firstTrailingBit(global2.x)), ~0i), Struct_1(false, select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), 1140f, 1u)));
    global4 = array<Struct_2, 3>();
    return _wgslsmith_add_i32(-2147483647i, global2.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32) -> u32 {
    global0 = array<Struct_2, 22>();
    global2 = vec3<i32>(abs(2147483647i), arg_1.x << (~firstTrailingBit(1u) % 32u), arg_2);
    global3 = array<Struct_3, 14>();
    return 1u;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(~(~7793u), 1u) << (func_4(Struct_2(func_3(_wgslsmith_div_i32(global2.x, global2.x), _wgslsmith_dot_vec2_i32(u_input.b, u_input.c.yx), _wgslsmith_f_op_f32(abs(-110f)), ~67317u), Struct_1(any(vec4<bool>(false, false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_dot_vec3_u32(vec3<u32>(6890u, 11625u, 4294967295u), vec3<u32>(26739u, 0u, 1u)))), (abs(u_input.c) ^ vec4<i32>(-1i, u_input.a, -1i, -48423i)) | _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global2.x, 0i, 11248i), -u_input.c), -35197i) % 32u);
    var var_1 = Struct_2(4293i, Struct_1(false | (all(vec4<bool>(false, true, true, true)) || true), vec3<bool>(true, true, true), 428f, ~(~1u)));
    var var_2 = global0[_wgslsmith_index_u32(0u, 22u)];
    global3 = array<Struct_3, 14>();
    var var_3 = vec4<bool>(var_2.b.a, var_1.b.a, true, true);
    return Struct_1(all(var_3.www), !vec3<bool>(true, all(!vec3<bool>(true, var_2.b.b.x, var_1.b.b.x)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c - var_1.b.c)) + var_1.b.c)), _wgslsmith_sub_u32(var_1.b.d, 4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global4 = array<Struct_2, 3>();
    global4 = array<Struct_2, 3>();
    global4 = array<Struct_2, 3>();
    var var_0 = arg_0.d;
    let var_1 = !(!(!vec3<bool>(arg_1.b.d <= 1u, all(vec3<bool>(false, false, false)), arg_0.a || false)));
    return arg_1.b;
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = vec2<bool>(all(!vec2<bool>(true, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.c + -1221f), arg_0, true)) * var_0.b.c) == func_5(Struct_1(true, arg_1.b.b, _wgslsmith_f_op_f32(1086f + var_0.b.c), 1u), Struct_2(-1i, func_5(var_0.b, Struct_2(-2147483647i, var_0.b)))).c);
    let var_2 = (_wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(17424u, var_0.b.d, 35829u, 4294967295u)), ~(~vec4<u32>(var_0.b.d, 0u, 49871u, arg_1.b.d))) | ~vec4<u32>(_wgslsmith_mult_u32(var_0.b.d, 20961u), min(44411u, arg_1.b.d), ~var_0.b.d, _wgslsmith_div_u32(arg_1.b.d, arg_1.b.d))) | _wgslsmith_mult_vec4_u32(max(min(vec4<u32>(arg_1.b.d, var_0.b.d, 61672u, arg_1.b.d), vec4<u32>(26634u, var_0.b.d, 50759u, 11072u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.d, 4294967295u, 34998u, 1u), vec4<u32>(var_0.b.d, 24524u, 55394u, 28095u))) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.d, arg_1.b.d, 1u, arg_1.b.d), vec4<u32>(28067u, 0u, var_0.b.d, var_0.b.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~arg_1.b.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.d, arg_1.b.d, arg_1.b.d), vec3<u32>(var_0.b.d, 0u, 87144u)), min(var_0.b.d, 2771u)), vec4<u32>(1u & var_0.b.d, arg_1.b.d, arg_1.b.d, 503u)));
    var var_3 = global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.x, 74999u), ~var_0.b.d), ~arg_1.b.d >> (65437u % 32u), ~reverseBits(4294967295u)), select(abs(var_2), var_2, true != arg_1.b.a)), arg_1.b.d, var_0.b.a), 14u)];
    global4 = array<Struct_2, 3>();
    return global0[_wgslsmith_index_u32(firstTrailingBit(min(4294967295u, ~var_0.b.d)), 22u)];
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global2 = u_input.c.ywx;
    global4 = array<Struct_2, 3>();
    let var_0 = arg_0.x;
    var var_1 = vec4<f32>(arg_1.b.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.c + -1622f)), -207f) - _wgslsmith_f_op_f32(-arg_1.b.c)), -579f, _wgslsmith_f_op_f32(f32(-1f) * -951f));
    var var_2 = global3[_wgslsmith_index_u32(arg_2, 14u)];
    return func_6(arg_1.b.c, global4[_wgslsmith_index_u32(5639u, 3u)], !arg_1.b.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_vec4_f32(vec4<f32>(-765f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-446f, 789f)), -2327f), 2974f, _wgslsmith_f_op_f32(f32(-1f) * -380f)) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), 305f)), _wgslsmith_f_op_f32(f32(-1f) * -792f), 378f, 1f)), func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(175f - 748f))) + 345f), Struct_2(~1i, func_5(func_2(), Struct_2(global2.x, Struct_1(true, vec3<bool>(true, false, true), 709f, 1u)))), func_5(Struct_1(any(vec3<bool>(true, false, true)), vec3<bool>(true, true, true), 1214f, _wgslsmith_mult_u32(0u, 0u)), global0[_wgslsmith_index_u32(abs(~0u), 22u)]).b.zy), 35794u ^ (_wgslsmith_dot_vec4_u32(~vec4<u32>(31979u, 0u, 107873u, 60213u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 43144u, 1u, 18271u), vec4<u32>(0u, 41400u, 46672u, 16350u), vec4<u32>(32816u, 0u, 1u, 35856u))) | 85832u));
    var var_1 = all(select(vec4<bool>(func_2().b.x, true, !(var_0.b.c <= var_0.b.c), true), select(vec4<bool>(var_0.b.c > 296f, var_0.b.b.x & false, true, true), !vec4<bool>(var_0.b.b.x, var_0.b.a, true, var_0.b.b.x), vec4<bool>(func_7(vec4<f32>(455f, -1913f, -1000f, 336f), global0[_wgslsmith_index_u32(4294967295u, 22u)], 79071u).b.b.x, var_0.b.a, var_0.b.a, any(var_0.b.b))), var_0.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~var_0.a, _wgslsmith_clamp_i32(1i, countOneBits(_wgslsmith_dot_vec3_i32(u_input.c.zyw, vec3<i32>(-12976i, 0i, var_0.a))), ~(global2.x >> (var_0.b.d % 32u))), 1i << (_wgslsmith_mult_u32(~var_0.b.d, 1u) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c, var_0.b.c)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -813f)))));
}

