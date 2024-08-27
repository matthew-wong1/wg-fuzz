struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<bool>(false, false, false), -852f, vec4<u32>(1u, 9954u, 16083u, 67798u)), Struct_1(vec3<bool>(false, false, true), -746f, vec4<u32>(4294967295u, 8242u, 1u, 0u)), Struct_1(vec3<bool>(false, false, false), 505f, vec4<u32>(4294967295u, 63051u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), -545f, vec4<u32>(4600u, 7593u, 37361u, 0u)), Struct_1(vec3<bool>(true, true, true), -1000f, vec4<u32>(78444u, 61066u, 30676u, 36224u)), Struct_1(vec3<bool>(false, true, false), 1412f, vec4<u32>(0u, 0u, 54471u, 3238u)), Struct_1(vec3<bool>(true, false, true), -1000f, vec4<u32>(0u, 1u, 0u, 22640u)), Struct_1(vec3<bool>(true, true, false), -1809f, vec4<u32>(0u, 33043u, 0u, 22986u)), Struct_1(vec3<bool>(false, false, true), 1147f, vec4<u32>(4294967295u, 20109u, 25488u, 0u)), Struct_1(vec3<bool>(true, true, true), 719f, vec4<u32>(4294967295u, 4294967295u, 74295u, 0u)), Struct_1(vec3<bool>(true, true, false), -472f, vec4<u32>(63190u, 35680u, 4313u, 52550u)), Struct_1(vec3<bool>(true, false, true), -760f, vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), Struct_1(vec3<bool>(true, true, true), -953f, vec4<u32>(37267u, 4294967295u, 0u, 54803u)));

var<private> global2: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(225f, vec2<f32>(499f, 1130f), Struct_2(vec3<u32>(15323u, 45603u, 1u), -74514i)), Struct_3(773f, vec2<f32>(1468f, 1402f), Struct_2(vec3<u32>(1u, 35645u, 0u), i32(-2147483648))), Struct_3(-1292f, vec2<f32>(2129f, 1621f), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u), 2147483647i)), Struct_3(-2008f, vec2<f32>(1000f, -1000f), Struct_2(vec3<u32>(70171u, 35461u, 37678u), 0i)), Struct_3(1000f, vec2<f32>(535f, -199f), Struct_2(vec3<u32>(0u, 78357u, 1u), 2147483647i)), Struct_3(217f, vec2<f32>(1000f, 1695f), Struct_2(vec3<u32>(1u, 0u, 28353u), -49266i)), Struct_3(502f, vec2<f32>(420f, 342f), Struct_2(vec3<u32>(4680u, 4294967295u, 4294967295u), -75499i)), Struct_3(-488f, vec2<f32>(353f, 1800f), Struct_2(vec3<u32>(29976u, 11403u, 0u), 2147483647i)), Struct_3(-920f, vec2<f32>(1271f, 1939f), Struct_2(vec3<u32>(0u, 24421u, 19454u), 38233i)), Struct_3(136f, vec2<f32>(378f, 2239f), Struct_2(vec3<u32>(6266u, 27140u, 5589u), -10020i)), Struct_3(960f, vec2<f32>(-1000f, -1146f), Struct_2(vec3<u32>(0u, 21498u, 4294967295u), 2147483647i)), Struct_3(251f, vec2<f32>(-731f, -433f), Struct_2(vec3<u32>(4294967295u, 1u, 46705u), -17466i)), Struct_3(517f, vec2<f32>(731f, 279f), Struct_2(vec3<u32>(1u, 0u, 1u), 0i)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<bool> {
    var var_0 = ~28160u;
    var var_1 = ~1i | _wgslsmith_sub_i32(50330i, abs(-arg_1));
    let var_2 = global2[_wgslsmith_index_u32(u_input.a.x, 13u)];
    let var_3 = arg_1;
    let var_4 = Struct_5(_wgslsmith_div_i32(var_2.c.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.c.b, 15501i, 17679i, -2480i), min(vec4<i32>(var_2.c.b, 1i, u_input.b.x, -38634i), vec4<i32>(u_input.d.x, var_2.c.b, u_input.d.x, 9762i)))) < -_wgslsmith_sub_i32(_wgslsmith_mult_i32(6594i, var_2.c.b), abs(2147483647i)), var_2.c, false, !any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(var_2.c.a.zy, var_2.c.a.xy), var_2.c.a.yx), 10u)]), select(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(var_2.c.a.x, 10u)], any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))))));
    return !select(!select(var_4.e, var_4.e, !var_4.e), !var_4.e, global0[_wgslsmith_index_u32(select(21120u, _wgslsmith_add_u32(0u, 1u), var_4.e.x), 10u)]);
}

fn func_2(arg_0: u32) -> Struct_4 {
    global1 = array<Struct_1, 13>();
    let var_0 = global0[_wgslsmith_index_u32(abs(~29986u), 10u)];
    let var_1 = _wgslsmith_f_op_f32(floor(1085f));
    let var_2 = Struct_1(!select(global0[_wgslsmith_index_u32((arg_0 ^ u_input.a.x) | 42970u, 10u)], !func_3(var_1, u_input.d.x), global0[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(566f, _wgslsmith_f_op_f32(1018f + 114f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - -1940f), _wgslsmith_f_op_f32(300f - -360f)))), ~(~reverseBits(abs(vec4<u32>(0u, 1u, 4294967295u, 4294967295u)))));
    let var_3 = select(vec3<bool>(!(-1198f < _wgslsmith_f_op_f32(floor(var_2.b))), !var_0.x, var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(firstLeadingBit(arg_0), arg_0, arg_0)) >> (select(0u, _wgslsmith_sub_u32(1u, 0u), true) % 32u), 10u)], false);
    return Struct_4(_wgslsmith_div_vec3_i32(-vec3<i32>(_wgslsmith_add_i32(u_input.c, u_input.e), u_input.b.x, ~u_input.c), ~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, u_input.e, -2147483647i), vec3<i32>(u_input.b.x, 0i, u_input.d.x)) >> (var_2.c.yyy % vec3<u32>(32u)))), var_3.x, Struct_3(_wgslsmith_f_op_f32(-1286f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(191f * var_2.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-532f, var_1))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-821f, var_2.b) - vec2<f32>(-1618f, var_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, var_2.b)))), Struct_2(min(~var_2.c.xxy, ~var_2.c.zxz), select(u_input.b.x, 1i, true))), Struct_2(reverseBits(_wgslsmith_add_vec3_u32(var_2.c.zzw, var_2.c.ywx)), u_input.e));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_5(all(global0[_wgslsmith_index_u32(arg_1.d.a.x, 10u)]) || true, arg_1.d, any(select(!select(vec4<bool>(false, arg_1.b, false, true), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), true), !(!vec4<bool>(false, false, arg_1.b, true)), !any(vec3<bool>(arg_1.b, false, arg_1.b)))), any(!global0[_wgslsmith_index_u32(~(~882u), 10u)]), vec3<bool>(arg_1.b, u_input.c <= 1i, arg_1.b));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(~abs(vec4<i32>(arg_1.c.c.b, 2147483647i, u_input.b.x, 0i))), (vec4<i32>(-1i) * -(~vec4<i32>(82632i, arg_1.d.b, 2147483647i, 0i))) << (vec4<u32>(1u, 61483u, 24202u, ~_wgslsmith_mult_u32(0u, 1u)) % vec4<u32>(32u)));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 13u)];
    var_0 = Struct_5((-func_2(arg_1.c.c.a.x).c.c.b <= _wgslsmith_div_i32(-2147483647i, u_input.c)) || select(!arg_1.b, func_2(0u).b, false), Struct_2(arg_1.d.a, ~var_1.x), select(all(vec3<bool>(arg_1.b, true, var_2.a.x)), false, !any(var_0.e.xy)) && (var_2.a.x | any(select(vec4<bool>(true, true, var_0.a, false), vec4<bool>(var_0.e.x, var_0.c, var_0.c, arg_1.b), vec4<bool>(var_2.a.x, true, false, false)))), ~abs(-u_input.c) > 0i, var_0.e);
    var var_3 = ~reverseBits(max(22978u, countOneBits(~u_input.a.x)));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(var_2.c, ~vec4<u32>(abs(var_0.b.a.x), ~16848u, _wgslsmith_sub_u32(1u, 1u), u_input.a.x)), 0u, 1u);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    var var_0 = vec2<u32>(u_input.a.x, ~func_4(vec4<u32>(u_input.a.x, u_input.a.x, 20781u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), func_2(u_input.a.x)) | ~u_input.a.x);
    let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + -389f), _wgslsmith_f_op_f32(arg_0 + 896f), true)))), 2846f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1359f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0))));
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    let var_2 = true;
    return _wgslsmith_div_u32(_wgslsmith_div_u32(30656u, ~1u), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, 38069u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = var_0;
    var var_2 = i32(-1i) * -27836i;
    var var_3 = !vec2<bool>(any(!global0[_wgslsmith_index_u32(func_1(-1286f, vec4<bool>(var_0, false, var_0, var_0)), 10u)]), true);
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2181f, -691f, _wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_div_f32(962f, -1000f)), vec4<f32>(_wgslsmith_div_f32(-901f, 1000f), -739f, -656f, 610f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1278f * 351f) + _wgslsmith_f_op_f32(sign(451f))) + _wgslsmith_f_op_f32(-879f + -1282f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1369f)), 744f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2197f), _wgslsmith_f_op_f32(trunc(3367f)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1464f - 650f)), -831f)));
    global0 = array<vec3<bool>, 10>();
    global1 = array<Struct_1, 13>();
    let var_5 = ~u_input.e;
    var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-1i), u_input.c), _wgslsmith_add_i32(var_5, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-abs(1i), func_2(68867u).a.x, reverseBits(_wgslsmith_sub_i32(0i, ~43536i)), u_input.b.x));
}

