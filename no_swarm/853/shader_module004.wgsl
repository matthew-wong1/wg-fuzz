struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(false, Struct_2(1i, true, Struct_1(vec2<i32>(14008i, -1i), 32613i, true, vec3<i32>(i32(-2147483648), -29292i, i32(-2147483648))), vec4<f32>(1000f, -230f, -535f, -249f), 32759u), vec4<u32>(4294967295u, 11414u, 1u, 4294967295u), vec3<u32>(55782u, 37312u, 1u)), Struct_5(true, Struct_2(-18291i, false, Struct_1(vec2<i32>(-1i, 0i), 16157i, true, vec3<i32>(0i, 0i, 2147483647i)), vec4<f32>(100f, -1462f, -606f, -367f), 13571u), vec4<u32>(0u, 19699u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 11802u)), Struct_5(true, Struct_2(20214i, true, Struct_1(vec2<i32>(2348i, -31427i), -3734i, false, vec3<i32>(-35038i, -52661i, 5662i)), vec4<f32>(874f, -506f, -1776f, 475f), 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec3<u32>(58277u, 41902u, 1u)), Struct_5(false, Struct_2(-33391i, true, Struct_1(vec2<i32>(66789i, -14157i), 6927i, false, vec3<i32>(5628i, 0i, 9327i)), vec4<f32>(-1290f, 1000f, 313f, 1528f), 1u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec3<u32>(0u, 15026u, 4294967295u)), Struct_5(false, Struct_2(17889i, true, Struct_1(vec2<i32>(-23465i, 0i), 12790i, false, vec3<i32>(-33762i, 5790i, 0i)), vec4<f32>(-1080f, -452f, -1393f, -680f), 35637u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec3<u32>(12693u, 3966u, 1u)), Struct_5(true, Struct_2(i32(-2147483648), false, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 0i, true, vec3<i32>(1i, 0i, i32(-2147483648))), vec4<f32>(-1000f, 407f, 1000f, -1076f), 69626u), vec4<u32>(4294967295u, 9131u, 90280u, 66006u), vec3<u32>(3158u, 7264u, 14264u)), Struct_5(true, Struct_2(2147483647i, true, Struct_1(vec2<i32>(38760i, i32(-2147483648)), -14247i, true, vec3<i32>(-42723i, 20559i, -35361i)), vec4<f32>(198f, -2364f, 336f, -192f), 2143u), vec4<u32>(1u, 77488u, 1u, 1u), vec3<u32>(0u, 8193u, 1u)), Struct_5(false, Struct_2(-73381i, false, Struct_1(vec2<i32>(-6458i, 1i), -1i, false, vec3<i32>(2147483647i, 2147483647i, -7244i)), vec4<f32>(-1000f, 1040f, -1000f, 1618f), 70883u), vec4<u32>(27136u, 1u, 1u, 12274u), vec3<u32>(4412u, 1u, 43642u)), Struct_5(false, Struct_2(i32(-2147483648), false, Struct_1(vec2<i32>(1i, -4449i), 43829i, true, vec3<i32>(-30237i, 0i, i32(-2147483648))), vec4<f32>(-2510f, -276f, 287f, 198f), 0u), vec4<u32>(39103u, 32u, 0u, 24546u), vec3<u32>(1u, 0u, 1u)));

var<private> global1: Struct_5;

var<private> global2: vec4<u32>;

var<private> global3: array<i32, 18>;

var<private> global4: array<Struct_4, 15>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3) -> bool {
    global2 = min(~vec4<u32>(abs(4294967295u), 4294967295u, _wgslsmith_add_u32(arg_2.d.x, global2.x ^ arg_2.d.x), _wgslsmith_clamp_u32(~global1.d.x, 50436u ^ arg_2.d.x, 25471u)), global1.c ^ global1.c);
    let var_0 = global1.b.c;
    global3 = array<i32, 18>();
    return any(vec3<bool>(true, true, true));
}

fn func_2() -> Struct_2 {
    global1 = Struct_5(global1.a, Struct_2(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 18u)], -1i, global3[_wgslsmith_index_u32(global1.b.e, 18u)]), u_input.b), global1.b.c.a.x ^ u_input.a.x), u_input.b.x, global3[_wgslsmith_index_u32(~global1.c.x, 18u)]), func_3(u_input.a, all(vec4<bool>(false, false, global1.b.c.c, global1.a)), Struct_3(_wgslsmith_f_op_f32(global1.b.d.x - global1.b.d.x), vec3<i32>(u_input.b.x, global1.b.a, -27949i) << (vec3<u32>(global1.b.e, 5163u, 16120u) % vec3<u32>(32u)), Struct_1(global1.b.c.a, 1i, global1.b.c.c, global1.b.c.d), vec2<u32>(1u, global2.x), global1.b.c)), Struct_1(global1.b.c.a, _wgslsmith_div_i32(4666i, global1.b.a) ^ _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, -34611i, 7023i)), 1052f != _wgslsmith_f_op_f32(-global1.b.d.x), vec3<i32>(-2147483647i, ~u_input.a.x, -4807i)), vec4<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1279f, -1081f)))), _wgslsmith_f_op_f32(exp2(global1.b.d.x)), 101f), _wgslsmith_add_u32(0u, 1u)), global1.c, vec3<u32>(23757u, _wgslsmith_mod_u32(~global2.x, 0u) | ~1u, abs(7028u)));
    var var_0 = global0[_wgslsmith_index_u32(abs(max(abs(~23778u), 1u)), 9u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1068f * -1621f), 1327f, _wgslsmith_f_op_f32(-1217f + global1.b.d.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(559f - -247f), _wgslsmith_f_op_f32(-var_0.b.d.x))), global1.b.d.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.d.x, var_0.b.d.x), 983f))));
    let var_2 = select(!(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.a), any(vec3<bool>(var_0.a, true, var_0.a)))), vec2<bool>(1i == global3[_wgslsmith_index_u32(~0u, 18u)], !any(select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(true, false, var_0.b.c.c), vec3<bool>(true, var_0.b.b, global1.a)))), select(vec2<bool>(~var_0.c.x != 17114u, _wgslsmith_dot_vec2_i32(global1.b.c.a, var_0.b.c.d.yz) < ~global1.b.a), !select(select(vec2<bool>(global1.b.b, global1.b.c.c), vec2<bool>(true, var_0.b.c.c), var_0.b.c.c), select(vec2<bool>(true, global1.b.c.c), vec2<bool>(global1.a, global1.b.c.c), true), any(vec4<bool>(true, global1.a, var_0.b.b, var_0.a))), !vec2<bool>(var_0.b.a <= u_input.a.x, true)));
    global1 = global0[_wgslsmith_index_u32(~var_0.c.x, 9u)];
    return Struct_2(i32(-1i) * -_wgslsmith_sub_i32(global1.b.a << (global2.x % 32u), ~(-80386i)), true, var_0.b.c, _wgslsmith_div_vec4_f32(var_0.b.d, _wgslsmith_f_op_vec4_f32(select(global1.b.d, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(-global1.b.d.x), global1.b.d.x, -270f), select(vec4<bool>(global1.b.b, true, var_2.x, var_2.x), vec4<bool>(global1.b.c.c, false, global1.a, true), func_3(vec4<i32>(var_0.b.c.a.x, -42078i, -17983i, u_input.b.x), var_0.b.c.c, Struct_3(794f, vec3<i32>(-31251i, global3[_wgslsmith_index_u32(6314u, 18u)], var_0.b.a), var_0.b.c, vec2<u32>(104186u, global2.x), Struct_1(u_input.a.wx, global3[_wgslsmith_index_u32(var_0.c.x, 18u)], false, vec3<i32>(3872i, u_input.b.x, -2147483647i)))))))), reverseBits(~min(_wgslsmith_div_u32(20518u, global2.x), max(var_0.b.e, 22453u))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = min(arg_1.c.x >> ((min(1u, 4294967295u) | global2.x) % 32u), firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 1u)));
    global0 = array<Struct_5, 9>();
    var var_1 = false;
    var var_2 = func_2();
    global4 = array<Struct_4, 15>();
    return !select(!select(!vec2<bool>(true, var_2.c.c), select(vec2<bool>(var_2.b, global1.b.b), vec2<bool>(false, arg_1.a), global1.a), true), !select(select(vec2<bool>(false, false), vec2<bool>(var_2.b, arg_1.a), var_2.c.c), !vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, arg_1.a)), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec4_i32(firstTrailingBit(reverseBits(-vec4<i32>(global3[_wgslsmith_index_u32(1u, 18u)], u_input.a.x, 0i, global3[_wgslsmith_index_u32(global1.c.x, 18u)]))), u_input.a);
    global3 = array<i32, 18>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.b.d.x, arg_2, 239f) * vec4<f32>(arg_2, 1555f, -602f, arg_2)) * global1.b.d))));
    global0 = array<Struct_5, 9>();
    var var_2 = global1.b.c;
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -367f), ~(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(global1.b.a, u_input.b.x, -1i), vec3<i32>(46124i, -17144i, var_2.d.x))) ^ var_2.d), Struct_1(vec2<i32>(_wgslsmith_sub_i32(31272i, 0i | var_0.x), abs(_wgslsmith_mult_i32(global1.b.a, -48620i))), min(1i, var_0.x), var_2.c, firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(var_2.a.x, 10236i, -1i)))), reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(global1.b.e, global2.x), global1.d.xx)) & reverseBits(~(~global2.xz)), func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(select(vec4<bool>(true, global2.x <= global1.b.e, global1.b.b, false), select(!vec4<bool>(false, global1.a, true, false), !vec4<bool>(global1.b.b, global1.b.b, global1.b.b, global1.a), !vec4<bool>(false, global1.b.b, global1.a, global1.b.b)), vec4<bool>(true, global1.a, false, global1.a)), !(!(!vec4<bool>(true, global1.b.b, global1.b.b, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1.b.b, global1.a, true, false), vec4<bool>(global1.b.c.c, true, false, true), global1.b.c.c), vec4<bool>(true, true || global1.a, global1.a, false))), func_1(global2.zy, Struct_4(true, abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4837u, global2.x, 60054u), vec3<u32>(global2.x, 4294967295u, global2.x))), ~(vec4<u32>(1u, 4294967295u, 4780u, global1.d.x) ^ global1.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b.d.x * _wgslsmith_f_op_f32(f32(-1f) * -160f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.d.x)), global1.b.d.x))));
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global1.b.c.d, func_4(vec4<bool>(true, global3[_wgslsmith_index_u32(global1.b.e, 18u)] > 2147483647i, true, !global1.a), vec2<bool>(true, false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-616f, var_0.a))).c.d, u_input.b), u_input.b);
    global3 = array<i32, 18>();
    global0 = array<Struct_5, 9>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(func_4(vec4<bool>(false, true, true, var_0.e.c), vec2<bool>(var_0.e.c, var_0.e.c), -940f).a))))), -1213f, _wgslsmith_f_op_f32(f32(-1f) * -2327f));
    global4 = array<Struct_4, 15>();
    global0 = array<Struct_5, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.d, 41355u, global1.d);
}

