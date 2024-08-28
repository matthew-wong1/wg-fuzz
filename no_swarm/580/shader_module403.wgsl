struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<u32> = vec2<u32>(72523u, 9450u);

var<private> global2: array<u32, 23>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_4) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(-vec4<i32>(0i, u_input.d, u_input.d, u_input.b)), (vec4<i32>(-1i, u_input.d, arg_2.e, arg_2.e) << (vec4<u32>(4294967295u, 109948u, 8056u, global1.x) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_i32(vec4<i32>(2663i, u_input.d, arg_2.e, u_input.d), vec4<i32>(0i, -15951i, arg_2.e, u_input.b))) | abs(vec4<i32>(0i, arg_2.e, u_input.b, ~u_input.d)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~0i, -2147483647i, countOneBits(arg_2.e)), -vec3<i32>(-4666i, u_input.d, arg_2.e)), select(-2147483647i << (u_input.a.x % 32u), _wgslsmith_add_i32(arg_2.e, arg_2.e), all(vec2<bool>(arg_1.x, true))) << (1u % 32u), u_input.d, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2.e, -21083i, u_input.d, -18445i) & vec4<i32>(-929i, u_input.b, u_input.d, u_input.c), vec4<i32>(u_input.c, 1i, ~arg_2.e, 1856i))));
    global1 = vec2<u32>(70850u, arg_2.c.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)) + -1118f));
    var var_2 = ~vec4<u32>(0u, firstTrailingBit(_wgslsmith_clamp_u32(~global1.x, _wgslsmith_mod_u32(global1.x, 29755u), ~46588u)), 0u, ~(~reverseBits(global1.x)));
    let var_3 = Struct_4(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a * -456f))) - -1000f)), Struct_1(4294967295u >> (_wgslsmith_dot_vec2_u32(~global0.ww, ~global0.xw) % 32u)), arg_2.d, 116948i);
    return reverseBits(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(var_3.e, 0i, var_0, 15889i) ^ vec4<i32>(-61893i, var_0, var_0, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, 1961i, -29023i, -15991i), ~vec4<i32>(u_input.b, arg_2.e, var_0, 2147483647i)) & -vec4<i32>(var_0, 1i, 58564i, -2147483647i)));
}

fn func_2(arg_0: Struct_5) -> vec3<bool> {
    var var_0 = Struct_5(arg_0.a);
    let var_1 = func_3(u_input.a & vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(22826u, 1u, u_input.a.x)), !vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), true), Struct_4(-848f, _wgslsmith_div_f32(1006f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), Struct_1(global1.x), Struct_1(4294967295u), ~0i));
    var var_2 = Struct_1(max(min(67784u >> ((global2[_wgslsmith_index_u32(global0.x, 23u)] & 27658u) % 32u), 25253u), ~reverseBits(13260u)));
    global1 = global0.zz;
    let var_3 = select(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, false)), vec4<bool>(var_1 <= reverseBits(28392i), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x) > arg_0.a.x, false), select(true, all(vec2<bool>(true, false)) && (50425u > global0.x), any(vec4<bool>(true, true, true, true)))), vec4<bool>(!any(vec3<bool>(true, true, false)), any(vec3<bool>(false, true, true)), true, true), true);
    return var_3.wwy;
}

fn func_1() -> Struct_1 {
    var var_0 = max(vec3<i32>(u_input.c, 0i, max(-1490i, u_input.c)), max(vec3<i32>(1i, -19529i, ~1i), min(vec3<i32>(2147483647i, u_input.d, -15030i), vec3<i32>(u_input.d, 49454i, -2147483647i) >> (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u))))) << (select(global0.yyy | global0.xyx, vec3<u32>(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), 43175u, min(0u, 62491u)), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true), select(func_2(Struct_5(vec3<f32>(911f, -1000f, 337f))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))) % vec3<u32>(32u));
    global0 = select(vec4<u32>(~_wgslsmith_mod_u32(~0u, 1u), min(4294967295u, ~(~43217u)), select(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(29964u, 20435u), 23u)] | global0.x, _wgslsmith_add_u32(~u_input.a.x, abs(0u)), !func_2(Struct_5(vec3<f32>(230f, -1444f, 489f))).x), 1u), countOneBits(abs(abs(vec4<u32>(1u, global2[_wgslsmith_index_u32(global1.x, 23u)], 1u, global1.x)) | ~vec4<u32>(global0.x, 22509u, 4294967295u, 23204u))), any(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)))));
    global1 = _wgslsmith_sub_vec2_u32((~global0.wy >> (global0.wy % vec2<u32>(32u))) ^ min(vec2<u32>(1u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(0u, 23u)], global1.x)), _wgslsmith_mult_vec2_u32(u_input.a, u_input.a) >> (~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global1.x) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_div_u32(min(1132u >> (global0.x % 32u), global1.x << (0u % 32u)), u_input.a.x), 1u));
    var var_1 = vec3<bool>(any(!vec2<bool>(false, select(true, true, true))), true, all(func_2(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(266f, -1462f, -1000f)))).xy));
    let var_2 = all(select(select(!vec4<bool>(false, true, var_1.x, var_1.x), select(!vec4<bool>(false, true, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x), !var_1.x), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), var_1.x)), !select(vec4<bool>(false, var_1.x, true, false), vec4<bool>(var_1.x, true, false, false), true), true));
    return Struct_1(global2[_wgslsmith_index_u32(reverseBits(4294967295u), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 23>();
    global1 = global0.yy;
    var var_0 = !(!vec3<bool>(true, any(vec2<bool>(true, true)), (u_input.b >= u_input.c) && any(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f * -2360f)), 1000f))), _wgslsmith_f_op_f32(trunc(1f)), func_1(), Struct_1(_wgslsmith_dot_vec2_u32(global0.yx << (global0.wx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 22303u), u_input.a)) << (~57234u % 32u)), u_input.b);
    global2 = array<u32, 23>();
    let var_2 = ~_wgslsmith_mult_u32(~firstTrailingBit(countOneBits(44143u)), ~min(abs(u_input.a.x), global1.x ^ 4294967295u));
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(~global1.x, var_2 ^ _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_2, 4294967295u, 17278u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 4294967295u, 0u, global0.x), vec4<u32>(46189u, global0.x, global2[_wgslsmith_index_u32(var_1.c.a, 23u)], 4294967295u))), _wgslsmith_div_u32(~102109u, ~(0u >> (var_1.c.a % 32u))), firstLeadingBit(1u)), abs(vec4<u32>(countOneBits(var_2) ^ ~0u, global1.x, 0u, 4294967295u)));
    var_0 = vec3<bool>(var_0.x, var_0.x, !var_0.x || (40999i == _wgslsmith_dot_vec3_i32(vec3<i32>(-15388i, var_1.e, var_1.e), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.e, u_input.c, u_input.c), vec3<i32>(var_1.e, var_1.e, var_1.e)))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * 1335f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a + 1058f), 1028f)) + var_1.a)), !vec4<bool>(true, true, 1u >= _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)], global0.x), any(vec2<bool>(var_0.x, var_0.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(~77103u, _wgslsmith_mult_u32(88441u, global2[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_div_vec2_u32(vec2<u32>(79517u, 0u) & vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(27782u, 0u), vec2<u32>(var_1.c.a, global2[_wgslsmith_index_u32(u_input.a.x, 23u)])))) ^ ~1u, -(~(~vec4<i32>(31653i, var_1.e, u_input.d, 0i))) >> (~(~firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], 4294967295u, global0.x, 4294967295u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(-abs(1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a, -952f)))), func_3(max(vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.a), select(vec2<bool>(true, var_3.b.x), select(vec2<bool>(true, false), vec2<bool>(var_3.b.x, var_3.b.x), true), func_2(Struct_5(vec3<f32>(var_1.a, var_1.b, -923f))).xy), var_1) & ~(-1i));
}

