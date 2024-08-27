struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<bool>(false, false, false), vec2<f32>(-332f, -699f), true, vec4<u32>(77752u, 0u, 27959u, 21227u)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-278f, -940f), false, vec4<u32>(25140u, 76941u, 1u, 4294967295u)));

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<bool>(false, false, false), vec2<f32>(983f, -1386f), true, vec4<u32>(1u, 18968u, 17559u, 28574u)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(982f, 1000f), false, vec4<u32>(57296u, 1u, 29683u, 1u)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-1126f, -978f), true, vec4<u32>(1u, 4294967295u, 54888u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-971f, -409f), false, vec4<u32>(25741u, 73102u, 63981u, 5511u)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1534f, 1296f), false, vec4<u32>(4294967295u, 4294967295u, 20689u, 4294967295u)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-391f, -156f), true, vec4<u32>(86458u, 0u, 1u, 0u)));

var<private> global3: array<i32, 30> = array<i32, 30>(-13930i, i32(-2147483648), -81055i, 2147483647i, i32(-2147483648), 55231i, -14210i, 0i, 39451i, -1i, i32(-2147483648), 2524i, -27598i, 1209i, 0i, -25168i, 1572i, 48980i, -44841i, 2147483647i, -8449i, -59444i, -1i, 56254i, 15475i, -37118i, -1i, 2147483647i, -1i, -31863i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32) -> i32 {
    global0 = Struct_1(!vec3<bool>(arg_0.d.c, true, all(!vec4<bool>(true, arg_0.c.a.x, false, true))), arg_1, global0.c, vec4<u32>(~(~arg_0.d.d.x) ^ arg_0.d.d.x, 0u, _wgslsmith_mult_u32(~global0.d.x, _wgslsmith_mult_u32(50835u, 1u)) >> (_wgslsmith_add_u32(arg_0.d.d.x, ~1u) % 32u), 4294967295u));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-363f)))))) - -1321f), 0u, Struct_1(vec3<bool>(true, arg_0.d.a.x, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.b, vec2<f32>(arg_1.x, -1000f))) * _wgslsmith_f_op_vec2_f32(global0.b + arg_0.c.b)), vec2<f32>(1f, -377f)), !any(select(vec4<bool>(global0.c, false, global0.c, arg_0.c.a.x), vec4<bool>(true, arg_0.d.c, arg_0.c.a.x, global0.a.x), false)), ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(8814u, u_input.c, 84692u, u_input.c), vec4<u32>(u_input.d, u_input.d, 74178u, u_input.d)))), arg_0.c);
    global3 = array<i32, 30>();
    global0 = global1[_wgslsmith_index_u32(0u, 2u)];
    global3 = array<i32, 30>();
    return i32(-1i) * -12870i;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(223f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, global0.b.x) - global0.b.x)));
    let var_1 = Struct_2(global0.b.x, ~u_input.d, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, u_input.c), 2u)], Struct_1(global0.a, global0.b, global0.c, countOneBits(~global0.d)));
    var var_2 = vec3<bool>(var_1.c.a.x, (_wgslsmith_div_i32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global0.d.x), 30u)], _wgslsmith_add_i32(1i, global3[_wgslsmith_index_u32(u_input.d, 30u)])) & func_3(Struct_2(var_1.d.b.x, 19969u, Struct_1(var_1.d.a, vec2<f32>(var_1.c.b.x, 251f), false, vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 1u)), Struct_1(vec3<bool>(false, true, global0.c), vec2<f32>(global0.b.x, -346f), true, global0.d)), _wgslsmith_f_op_vec2_f32(-global0.b), global0.b.x)) == -5778i, !(4294967295u > _wgslsmith_div_u32(u_input.c, _wgslsmith_mult_u32(global0.d.x, 1u))));
    let var_3 = var_1;
    var var_4 = var_1;
    return u_input.a.x;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    let var_1 = u_input.e.yz;
    let var_2 = vec3<u32>(func_2() << (1u % 32u), _wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, _wgslsmith_mod_u32(select(var_0.d.x, 28402u, global0.c), global0.d.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(~global0.d.x, 4294967295u << (var_0.d.x % 32u)), (var_0.d.x & 0u) >> (0u % 32u))), global0.d.x);
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, ~arg_1.x, arg_1.x), 27685u), 6u)];
    let var_3 = -1000f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1000f, var_3)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.x + var_0.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2257f - var_0.b.x), global0.b.x)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = u_input.b.zw;
    var var_1 = _wgslsmith_mult_vec2_i32(~(~reverseBits(-vec2<i32>(u_input.e.x, 1i))), vec2<i32>(~global3[_wgslsmith_index_u32(~(~4294967295u), 30u)], ~_wgslsmith_div_i32(~(-2371i), 46688i ^ global3[_wgslsmith_index_u32(u_input.d, 30u)])));
    var var_2 = global3[_wgslsmith_index_u32(99627u, 30u)];
    var var_3 = -366f;
    global0 = arg_2.c;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global0.b, global0.b.x, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-403f, _wgslsmith_f_op_f32(func_1(u_input.e.x, u_input.a.wzw))))), 71545u, Struct_1(global0.a, vec2<f32>(_wgslsmith_f_op_f32(global0.b.x + 158f), 428f), global0.d.x <= ~u_input.a.x, ~global0.d), global2[_wgslsmith_index_u32(~38188u, 6u)]));
    let var_1 = var_0;
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    var var_2 = select(select(select(select(vec3<bool>(true, var_1.c.a.x, global0.a.x), !var_1.c.a, true), func_4(_wgslsmith_div_vec2_f32(global0.b, global0.b), global0.b.x, Struct_2(-188f, 0u, var_1.d, var_1.c)).c.a, global0.a.x), vec3<bool>(global3[_wgslsmith_index_u32(global0.d.x, 30u)] >= ~global3[_wgslsmith_index_u32(global0.d.x, 30u)], !any(vec4<bool>(true, true, false, var_1.d.c)), global0.c), var_0.d.c), !(!(!select(var_0.d.a, vec3<bool>(var_0.d.c, false, global0.c), vec3<bool>(global0.a.x, var_0.c.a.x, false)))), u_input.c > min(35389u, select(~28478u, func_4(vec2<f32>(-1086f, -970f), var_1.c.b.x, var_1).d.d.x, true)));
    global3 = array<i32, 30>();
    var var_3 = select(all(!var_1.d.a), all(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.b.x, 130f))), vec2<f32>(var_0.d.b.x, var_0.c.b.x), select(vec2<bool>(global0.c, true), vec2<bool>(global0.c, var_2.x), var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, 495f), var_0.d.b, vec2<bool>(true, false))), var_1.c.b.x, func_4(var_0.d.b, var_0.a, var_0))).d.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 13925u, var_0.b | global0.d.x), var_0.d.d) < 1u);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec4_i32(u_input.e, vec4<i32>(-1i, -1i, 1i, global3[_wgslsmith_index_u32(106889u, 30u)]) | abs(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 17208i))), u_input.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-510f, -121f, 151f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-523f, -216f, global0.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, global0.b.x, 314f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1159f, global0.b.x, var_1.a), vec3<f32>(var_1.d.b.x, var_0.c.b.x, var_0.d.b.x))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a, 1820f, global0.b.x))))))));
}

