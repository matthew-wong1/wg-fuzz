struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 52147u, 4294967295u), vec2<bool>(true, false), vec3<i32>(-11431i, -11093i, -2998i), vec3<bool>(true, true, true));

var<private> global1: array<bool, 26> = array<bool, 26>(true, true, false, false, true, false, false, true, false, true, true, true, false, true, true, false, false, false, true, true, false, true, false, true, true, false);

var<private> global2: array<bool, 9>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<u32>(0u, 15363u, 67502u, 0u), vec2<bool>(false, false), vec3<i32>(2147483647i, -1i, 9348i), vec3<bool>(false, false, false)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 16775u, 76182u), vec2<bool>(true, true), vec3<i32>(-3734i, -1i, 1i), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(34475u, 4294967295u, 47827u, 0u), vec2<bool>(true, true), vec3<i32>(0i, 0i, -32170i), vec3<bool>(true, false, false)), Struct_1(vec4<u32>(16985u, 1u, 1u, 0u), vec2<bool>(true, true), vec3<i32>(-12369i, 1i, -16415i), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(35647u, 1u, 27052u, 17829u), vec2<bool>(false, true), vec3<i32>(0i, -5020i, 2147483647i), vec3<bool>(false, true, true)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 84237u, 39343u), vec2<bool>(false, true), vec3<i32>(-4339i, -1i, -1i), vec3<bool>(false, false, true)), Struct_1(vec4<u32>(40981u, 76644u, 0u, 60971u), vec2<bool>(false, false), vec3<i32>(2147483647i, -19348i, 1i), vec3<bool>(false, true, true)), Struct_1(vec4<u32>(20814u, 4294967295u, 38177u, 33537u), vec2<bool>(false, true), vec3<i32>(-21191i, 1i, -4315i), vec3<bool>(true, false, false)), Struct_1(vec4<u32>(19561u, 2779u, 70559u, 40945u), vec2<bool>(false, false), vec3<i32>(-25272i, -34467i, -1424i), vec3<bool>(true, false, true)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 1u), vec2<bool>(false, true), vec3<i32>(0i, 3012i, -1i), vec3<bool>(false, false, true)), Struct_1(vec4<u32>(1u, 24186u, 4294967295u, 78663u), vec2<bool>(false, false), vec3<i32>(-6184i, 1i, 12237i), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(4294967295u, 39689u, 4294967295u, 4294967295u), vec2<bool>(false, false), vec3<i32>(0i, 52863i, 0i), vec3<bool>(true, false, true)), Struct_1(vec4<u32>(8396u, 75918u, 32388u, 4294967295u), vec2<bool>(false, false), vec3<i32>(52830i, 21559i, 2147483647i), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(9715u, 44810u, 73909u, 4294967295u), vec2<bool>(false, true), vec3<i32>(2147483647i, 2147483647i, -34955i), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(31938u, 0u, 50525u, 1u), vec2<bool>(false, false), vec3<i32>(2147483647i, -49538i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_1(vec4<u32>(1u, 1u, 1397u, 4294967295u), vec2<bool>(true, false), vec3<i32>(53080i, 2147483647i, -61028i), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(4294967295u, 58082u, 4294967295u, 1u), vec2<bool>(true, true), vec3<i32>(-49043i, -11606i, 0i), vec3<bool>(false, true, true)), Struct_1(vec4<u32>(0u, 4294967295u, 40409u, 36573u), vec2<bool>(false, false), vec3<i32>(1i, 0i, -41659i), vec3<bool>(false, false, false)), Struct_1(vec4<u32>(4294967295u, 0u, 56790u, 1u), vec2<bool>(true, false), vec3<i32>(0i, -76406i, -19038i), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(4294967295u, 1u, 43006u, 0u), vec2<bool>(true, false), vec3<i32>(-7682i, 37234i, 6755i), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(41823u, 68819u, 1u, 1u), vec2<bool>(true, true), vec3<i32>(-45689i, 0i, 2147483647i), vec3<bool>(true, false, true)), Struct_1(vec4<u32>(1u, 45447u, 1u, 4294967295u), vec2<bool>(false, true), vec3<i32>(22219i, 28654i, 1i), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(0u, 58549u, 0u, 38022u), vec2<bool>(true, false), vec3<i32>(16450i, -1i, 0i), vec3<bool>(true, false, false)));

var<private> global4: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = global0.c.x;
    global4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(842f * arg_1), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_1), -475f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.x, arg_1), vec2<f32>(arg_1, arg_1))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(217f, arg_1) - vec2<f32>(-1000f, -181f))))));
    global2 = array<bool, 9>();
    var var_1 = firstLeadingBit(vec3<i32>(u_input.b, 2147483647i, 1i)) | global0.c;
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(abs(arg_1));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    var var_0 = any(vec4<bool>(global0.b.x, _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, vec2<bool>(global2[_wgslsmith_index_u32(77250u, 9u)], global0.d.x), global0.c, global0.d), global4.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + -1000f)), -_wgslsmith_add_i32(u_input.b, global0.c.x) > u_input.b, true));
    let var_1 = ~(vec2<i32>(-1i) * -(-vec2<i32>(-48369i, global0.c.x) ^ -vec2<i32>(0i, global0.c.x)));
    var var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 23u)];
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.a.xyw, u_input.a.zxx), 23u)];
    var var_4 = -1000f;
    return select(!select(!vec4<bool>(true, global1[_wgslsmith_index_u32(12053u, 26u)], true, global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(global0.b.x | var_3.d.x, global0.b.x | false, all(vec4<bool>(global1[_wgslsmith_index_u32(var_3.a.x, 26u)], arg_0, true, global1[_wgslsmith_index_u32(var_3.a.x, 26u)])), false), false), vec4<bool>(true, (false || any(global0.d)) | (var_3.b.x || all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 9u)], arg_0))), false, var_2.d.x), global1[_wgslsmith_index_u32(876u, 26u)]);
}

fn func_1() -> Struct_1 {
    let var_0 = ~global0.c.x;
    var var_1 = global3[_wgslsmith_index_u32(0u, 23u)];
    let var_2 = select(!(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(15536u, 81870u), 9u)], global0.d.x)), vec4<bool>(true, var_1.b.x, global4.x >= _wgslsmith_f_op_f32(global4.x - -2170f), _wgslsmith_mod_u32(4294967295u, u_input.d.x) == global0.a.x), select(!func_2(true), select(vec4<bool>(global0.d.x, global2[_wgslsmith_index_u32(select(12026u, 19547u, var_1.b.x), 9u)], any(vec4<bool>(false, false, true, true)), var_1.d.x & global1[_wgslsmith_index_u32(global0.a.x, 26u)]), func_2(global4.x == 802f), select(select(vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 26u)], false, false, global2[_wgslsmith_index_u32(var_1.a.x, 9u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 9u)], true, false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.a.x, 26u)], true, global0.d.x)), !vec4<bool>(global0.d.x, true, true, true), global2[_wgslsmith_index_u32(~u_input.c.x, 9u)])), true));
    var_1 = Struct_1(vec4<u32>((global0.a.x << (u_input.d.x % 32u)) | (var_1.a.x ^ (1u >> (var_1.a.x % 32u))), 4294967295u, _wgslsmith_div_u32(countOneBits(u_input.a.x & var_1.a.x), var_1.a.x & _wgslsmith_mult_u32(u_input.d.x, u_input.c.x)), _wgslsmith_div_u32(min(4294967295u, global0.a.x >> (0u % 32u)), max(1u, var_1.a.x))), vec2<bool>(false, true), global0.c, var_1.d);
    let var_3 = false;
    return global3[_wgslsmith_index_u32(min(~(~(~68632u)), ~abs(14084u)), 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_mult_vec4_u32(arg_0.a, arg_2.a), global0.b, vec3<i32>(abs(0i), abs(global0.c.x << (~u_input.c.x % 32u)), arg_0.c.x), select(func_2(func_2(global0.d.x).x).wzz, global0.d, func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.a.x, global0.a.x), 26u)] && (2147483647i < arg_0.c.x)).xwz));
    var var_1 = arg_0.b;
    var var_2 = arg_0;
    var var_3 = reverseBits(~(~(~1u)));
    global3 = array<Struct_1, 23>();
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(global0.a.x >> (112830u % 32u), 23u)];
    var var_1 = u_input.c & ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(32740u, u_input.a.x)), u_input.c.x), u_input.a.x, func_4(Struct_1(vec4<u32>(4294967295u, u_input.a.x, global0.a.x, 0u), global0.b, vec3<i32>(var_0.c.x, 45979i, -47230i), vec3<bool>(false, false, var_0.d.x)), 2147483647i, func_1(), _wgslsmith_div_vec2_u32(global0.a.yy, vec2<u32>(u_input.d.x, var_0.a.x))), var_0.a.x);
    let var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 23u)];
    global3 = array<Struct_1, 23>();
    var var_3 = u_input.d;
    global0 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(124775u, 66235u, ~global0.a.x, 29862u) ^ ~(var_2.a >> (var_2.a % vec4<u32>(32u))), var_2.a), vec2<bool>(any(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], true, false, var_0.d.x), vec4<bool>(true, true, false, var_0.b.x), !var_0.d.x)), global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<i32>(~(~0i), _wgslsmith_add_i32(-1i, global0.c.x), u_input.b), var_0.d);
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1981f)), -1099f) * global4.x), 1675f, _wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(ceil(global4.x)))), -133f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-160f, global4.x, global4.x, 323f) * vec4<f32>(-1553f, global4.x, 136f, global4.x)), vec4<f32>(global4.x, global4.x, global4.x, global4.x))) * vec4<f32>(global4.x, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(var_0.a.x, 1u, 57996u, var_3.x), vec2<bool>(var_2.d.x, false), var_0.c, global0.d), global4.x)), _wgslsmith_f_op_f32(global4.x - -862f), _wgslsmith_f_op_f32(step(global4.x, -338f))))));
    var var_5 = _wgslsmith_div_vec2_f32(var_4.yy, var_4.xw);
    var var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x * _wgslsmith_f_op_f32(-global4.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(276f, 443f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(170f, global4.x, true)))), true))), _wgslsmith_f_op_f32(sign(-856f)), _wgslsmith_mult_vec3_i32(~(vec3<i32>(var_0.c.x, 0i, var_2.c.x) << ((vec3<u32>(var_0.a.x, 42564u, 0u) >> (u_input.a.xxz % vec3<u32>(32u))) % vec3<u32>(32u))), -var_0.c));
}

