struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(1i, 52128i, 1i), vec3<i32>(0i, 0i, 1i), vec3<i32>(24317i, -1i, 1211i), vec3<i32>(2147483647i, -28708i, i32(-2147483648)), vec3<i32>(8588i, -21934i, i32(-2147483648)), vec3<i32>(71636i, i32(-2147483648), -1i), vec3<i32>(-56400i, -1i, -1i), vec3<i32>(4410i, 18945i, 36830i), vec3<i32>(2147483647i, 1i, 12696i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(-82778i, i32(-2147483648), -10230i), vec3<i32>(-35427i, -31507i, i32(-2147483648)), vec3<i32>(22329i, 2147483647i, 13074i), vec3<i32>(1i, -1i, 9779i), vec3<i32>(0i, 9123i, 12553i), vec3<i32>(0i, i32(-2147483648), -16182i), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-56477i, 0i, 51170i), vec3<i32>(54980i, 1i, 9483i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(0i, i32(-2147483648), 2147483647i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-305f, 109f, -554f) * vec3<f32>(1730f, 551f, 765f))), vec3<f32>(427f, -1399f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -861f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1000f + -392f), _wgslsmith_f_op_f32(step(-1000f, -1111f)), _wgslsmith_f_op_f32(f32(-1f) * -180f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1393f, 591f, 766f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-278f, 425f, 1533f), vec3<f32>(1193f, -704f, 707f))), !arg_0.xxw)), vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1033f, 1179f) - vec3<f32>(-1586f, 919f, -833f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1560f, -308f, 172f))))));
    var var_1 = Struct_1(~_wgslsmith_add_i32(~_wgslsmith_div_i32(-4484i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 14656i, 1i), vec3<i32>(1i, 1i, 1i)) << (arg_2.x % 32u)), global2[_wgslsmith_index_u32(arg_1.x & ~(~arg_2.x), 22u)] >> (vec3<u32>(_wgslsmith_add_u32(reverseBits(arg_2.x), _wgslsmith_clamp_u32(15741u, arg_1.x, arg_2.x)), 51783u, abs(~u_input.a.x)) % vec3<u32>(32u)), var_0.x, min(select(select(~u_input.a, _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(arg_2.x, u_input.c, 4294967295u, arg_2.x)), global0[_wgslsmith_index_u32(~arg_1.x, 30u)]), vec4<u32>(~1u, ~arg_2.x, ~1u, 0u), arg_0), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, 322f))) * -1318f));
    var_1 = Struct_1(countOneBits(var_1.a), vec3<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(u_input.b, 22u)], vec3<i32>(var_1.a, -1735i, var_1.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, 1i, var_1.a), var_1.b)), firstTrailingBit(0i), _wgslsmith_clamp_i32(max(_wgslsmith_add_i32(var_1.b.x, -2147483647i), 37530i ^ var_1.a), var_1.a, ~(var_1.b.x & 6651i))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.c, arg_1.x, arg_1.x, 4294967295u), vec4<u32>(1u, 45265u, 24650u, 0u), false), ~(var_1.d & vec4<u32>(var_1.d.x, 0u, arg_1.x, arg_1.x))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 72885u, 8251u, var_1.d.x), u_input.a, vec4<u32>(arg_2.x, u_input.c, u_input.c, 25107u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 27966u), arg_2.yx), arg_1.x, reverseBits(66016u), 0u), vec4<bool>(all(vec2<bool>(false, true)), var_1.a == 1i, true, all(arg_0.wzz)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f - _wgslsmith_f_op_f32(f32(-1f) * -546f))));
    var var_2 = select(vec4<bool>(false, false, all(vec4<bool>(true, var_1.e < -143f, true, !global0[_wgslsmith_index_u32(arg_2.x, 30u)])), false), arg_0, arg_0);
    var_2 = select(!(!(!arg_0)), arg_0, arg_0);
    return _wgslsmith_sub_i32(max(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-21481i, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, 61544i), vec2<i32>(-20277i, 2147483647i))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-39767i, -19913i, 0i), vec3<i32>(var_1.a, -2147483647i, 2147483647i))), 1i), reverseBits(~0i & (i32(-1i) * -var_1.a)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = array<bool, 30>();
    let var_0 = arg_2.d.xx;
    let var_1 = arg_2;
    var var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(-34227i, ~_wgslsmith_mult_i32(0i, 12886i)), abs(arg_2.a)), vec3<i32>(-arg_2.b.x, _wgslsmith_add_i32(arg_2.a, _wgslsmith_add_i32(func_3(vec4<bool>(false, true, false, arg_1), vec3<u32>(var_1.d.x, 12609u, u_input.b), u_input.a.yyz), _wgslsmith_add_i32(-2147483647i, arg_2.a))), var_1.a), var_1.c, ~_wgslsmith_mult_vec4_u32(arg_2.d, abs(var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1823f - var_1.c) + var_1.e))));
    let var_3 = select(true, true, true);
    return var_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    global2 = array<vec3<i32>, 22>();
    let var_0 = func_2(25529u, false, Struct_1(-(~19045i), -(vec3<i32>(-1i) * -vec3<i32>(-10386i, -2147483647i, 0i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-617f - arg_1.e))), arg_1.e)), vec4<u32>(abs(arg_1.d.x), u_input.c, ~arg_1.d.x, ~countOneBits(arg_1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1000f)))), 2205f))).e;
    global2 = array<vec3<i32>, 22>();
    global2 = array<vec3<i32>, 22>();
    var var_1 = Struct_1(2147483647i, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(arg_1.d.x, 22u)], arg_1.b), 19739i) << (1u % 32u), -40523i, -_wgslsmith_sub_i32(arg_1.a, arg_0.x) ^ arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1052f, 102f)) - 644f) + 234f))), arg_1.d, arg_1.c);
    return min(~abs(~min(arg_1.d.x, u_input.c)), 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<bool, 30>();
    var var_0 = global1[_wgslsmith_index_u32(func_4(arg_1.b.xx | vec2<i32>(-arg_1.a, 0i), func_2(u_input.a.x, false, global1[_wgslsmith_index_u32(arg_0, 19u)])), 19u)];
    let var_1 = arg_1;
    var var_2 = global1[_wgslsmith_index_u32(select(1u, 32418u, any(!vec2<bool>(false, true & global0[_wgslsmith_index_u32(29145u, 30u)]))), 19u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-232f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_div_f32(1000f, 195f), select(true, global0[_wgslsmith_index_u32(61917u, 30u)], global0[_wgslsmith_index_u32(var_0.d.x, 30u)])))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-328f, -1000f) + -1211f), -2344f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0, var_1.d.x), ~var_0.d.x) << (abs(~arg_1.d.x) % 32u), 30u)])));
    return func_2(arg_1.d.x, _wgslsmith_f_op_f32(-1f) < _wgslsmith_f_op_f32(sign(var_0.c)), arg_1);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> vec4<bool> {
    global2 = array<vec3<i32>, 22>();
    var var_0 = Struct_1(_wgslsmith_add_i32(arg_1.a, arg_1.b.x), func_1(1u, global1[_wgslsmith_index_u32(~51190u, 19u)]).b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) * _wgslsmith_f_op_f32(arg_1.c * arg_1.c)))), ~(~(~vec4<u32>(30162u, arg_2, 11440u, 0u))), 1731f);
    global1 = array<Struct_1, 19>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c), -1273f, var_0.c);
    global0 = array<bool, 30>();
    return vec4<bool>(false, all(vec4<bool>(false, all(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 30u)], false)), true, global0[_wgslsmith_index_u32(arg_3.x, 30u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(33768u, 30u)], global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 30u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, arg_1.d.x >> (arg_3.x % 32u)), 30u)])), global0[_wgslsmith_index_u32(19239u, 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(88375u, func_1(~(~u_input.a.x), global1[_wgslsmith_index_u32(34172u ^ select(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(14333u, 30u)]), 19u)]), 1u, func_2(func_1(u_input.a.x, Struct_1(-18836i, vec3<i32>(33541i, -52377i, -9641i), 999f, vec4<u32>(1u, u_input.c, u_input.a.x, 12166u), 394f)).d.x, !(false && global0[_wgslsmith_index_u32(u_input.b, 30u)]), global1[_wgslsmith_index_u32(10888u, 19u)]).d.wzw);
    var var_1 = func_1(40862u, Struct_1(_wgslsmith_clamp_i32(-func_3(var_0, u_input.a.yxy, vec3<u32>(28621u, 60200u, 4294967295u)), -1i, -func_2(63497u, global0[_wgslsmith_index_u32(4868u, 30u)], Struct_1(-30144i, global2[_wgslsmith_index_u32(80995u, 22u)], 1000f, vec4<u32>(9161u, u_input.c, u_input.a.x, u_input.b), 1347f)).a), firstLeadingBit(select(firstTrailingBit(global2[_wgslsmith_index_u32(60158u, 22u)]), global2[_wgslsmith_index_u32(~u_input.b, 22u)], true)), -1249f, ~(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.c, u_input.a.x, 27329u, u_input.b)) >> (vec4<u32>(0u, 1u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - -1103f)));
    let var_2 = -211f;
    let var_3 = var_0.wy;
    let var_4 = func_1(~(~(~4294967295u)), global1[_wgslsmith_index_u32(4294967295u, 19u)]);
    let var_5 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c, var_2)) + -1164f)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec2<i32>(_wgslsmith_div_i32(1i, var_1.b.x) & var_1.b.x, 14383i), Struct_1(~var_1.a, (var_4.b ^ vec3<i32>(var_4.b.x, 0i, var_4.b.x)) >> (vec3<u32>(4294967295u, u_input.c, u_input.b) % vec3<u32>(32u)), var_5, _wgslsmith_mult_vec4_u32(vec4<u32>(var_4.d.x, var_4.d.x, var_1.d.x, u_input.c), ~var_1.d), var_5)));
}

