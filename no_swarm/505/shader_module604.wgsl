struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(1000f, 293f, -465f, 1250f, 709f, -1190f, -1717f, 564f, 214f, -729f, 453f, 1439f, -184f, 1001f, -373f, -411f, -805f);

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(1u, 36596u, 4294967295u), vec3<u32>(41009u, 4294967295u, 0u), vec3<u32>(9976u, 4294967295u, 21127u), vec3<u32>(4901u, 57194u, 48173u), vec3<u32>(36306u, 1u, 1u), vec3<u32>(89941u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 70216u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(89677u, 77570u, 4294967295u), vec3<u32>(60004u, 17798u, 1u), vec3<u32>(57901u, 1u, 1u), vec3<u32>(0u, 103328u, 4294967295u), vec3<u32>(31965u, 1u, 0u), vec3<u32>(4294967295u, 15964u, 59u), vec3<u32>(4294967295u, 0u, 41183u), vec3<u32>(0u, 0u, 34000u));

var<private> global3: Struct_3 = Struct_3(1000f, true, vec3<u32>(78901u, 78540u, 64560u), vec3<bool>(false, false, false));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)))), global3.a));
    global3 = Struct_3(var_0.x, true, ~min(_wgslsmith_div_vec3_u32(global3.c, global2[_wgslsmith_index_u32(global3.c.x, 18u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7608u, u_input.a.x, 18743u), vec4<u32>(29621u, global3.c.x, 4294967295u, 0u)), 18u)]) << (reverseBits(global3.c) % vec3<u32>(32u)), select(!global3.d, select(!vec3<bool>(false, false, arg_2.a), vec3<bool>(true, true, false), vec3<bool>(u_input.b < -8117i, all(global3.d), global3.b)), !any(vec4<bool>(global1.x, true, global1.x, true)) || true));
    var var_1 = Struct_2(Struct_1(vec4<bool>(select(any(global3.d), global3.d.x, arg_2.a), true, any(!global1.xx), ~0u != ~u_input.a.x), global3.d), all(!(!select(vec4<bool>(global1.x, arg_2.a, global3.d.x, global3.d.x), vec4<bool>(global1.x, arg_2.a, true, true), false))));
    let var_2 = Struct_3(465f, true, vec3<u32>(global3.c.x, reverseBits(_wgslsmith_clamp_u32(u_input.c, u_input.a.x, 4294967295u) ^ u_input.a.x), u_input.a.x), vec3<bool>(arg_2.a, false, false));
    let var_3 = Struct_4(false);
    return arg_2.a && true;
}

fn func_2() -> f32 {
    let var_0 = Struct_5(Struct_2(Struct_1(!select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, true, global3.b), vec4<bool>(false, true, global3.d.x, global3.d.x)), vec3<bool>(func_3(360f, u_input.a.x, Struct_4(global1.x), -2147483647i), global1.x & global3.d.x, u_input.d >= u_input.d)), global1.x), Struct_3(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c, 17u)], -1584f))) > global3.a, firstTrailingBit(reverseBits(vec3<u32>(59473u, 35345u, u_input.c))), !select(global3.d, !vec3<bool>(global3.d.x, false, global1.x), all(global3.d.yx))), Struct_4(false));
    var var_1 = var_0.a.a;
    var var_2 = _wgslsmith_f_op_f32(-global3.a);
    var var_3 = -_wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.b, 0i, u_input.d)), vec3<i32>(40886i, 2147483647i, u_input.d) | vec3<i32>(u_input.b, u_input.b, -1i)), vec3<i32>(_wgslsmith_div_i32(u_input.b, -u_input.d), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 90344i, u_input.d, u_input.d), vec4<i32>(1i, -32977i, -1i, u_input.d)), ~u_input.b));
    var var_4 = Struct_2(Struct_1(var_0.a.a.a, !var_0.a.a.a.xwy), false);
    return var_0.b.a;
}

fn func_1() -> Struct_4 {
    let var_0 = u_input.a.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 17u)] * global0[_wgslsmith_index_u32(4294967295u, 17u)]) - _wgslsmith_f_op_f32(step(global3.a, 636f))) - global0[_wgslsmith_index_u32(u_input.c, 17u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a)))))), _wgslsmith_f_op_f32(func_2()));
    var var_2 = Struct_5(Struct_2(Struct_1(!(!vec4<bool>(global3.d.x, global1.x, global1.x, false)), vec3<bool>(false | global3.b, true, all(vec2<bool>(true, global3.d.x)))), global1.x), Struct_3(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.c.x, 17u)] * -798f), 1000f)), !(var_1.x >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 17u)] + var_1.x)), vec3<u32>(_wgslsmith_sub_u32(~1u, countOneBits(u_input.c)), _wgslsmith_mult_u32(global3.c.x, global3.c.x) >> (_wgslsmith_sub_u32(1u, u_input.a.x) % 32u), firstLeadingBit(48738u ^ u_input.a.x)), select(select(global3.d, global3.d, vec3<bool>(global3.d.x, global3.d.x, global3.b)), !global3.d, global3.d)), Struct_4(!global3.b));
    global0 = array<f32, 17>();
    let var_3 = Struct_5(Struct_2(var_2.a.a, !(33380i == u_input.d)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + _wgslsmith_f_op_f32(-232f - _wgslsmith_f_op_f32(-global3.a))), any(!vec4<bool>(true, var_2.c.a, var_2.b.d.x, global3.d.x)) & true, global2[_wgslsmith_index_u32(0u, 18u)], select(var_2.a.a.a.yxz, !select(var_2.a.a.a.yyy, vec3<bool>(var_2.a.a.b.x, true, true), false), true)), Struct_4(false));
    return var_3.c;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = min(max(~(~(52248u ^ global3.c.x)), 27106u), 13560u);
    let var_1 = -(i32(-1i) * -2147483647i);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 17u)]) * -316f), _wgslsmith_f_op_f32(139f - _wgslsmith_f_op_f32(-1913f - -614f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(949f - global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), _wgslsmith_div_f32(-2032f, 1372f), 429f), vec3<f32>(1312f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(84728u, 17u)]), _wgslsmith_f_op_f32(func_2()))))), arg_0 || false));
    var var_3 = 43671i;
    var var_4 = Struct_4(arg_2.a);
    return Struct_1(vec4<bool>(select(true, true, global3.b), func_1().a, !arg_0, global1.x), !vec3<bool>(var_4.a, (arg_2.a && global3.d.x) || true, true));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_5 {
    global2 = array<vec3<u32>, 18>();
    let var_0 = min(~abs(~(~u_input.b)), 2147483647i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27977u, 17u)]))), select(arg_1.b.x || any(arg_1.a.xw), true, arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-354f + _wgslsmith_f_op_f32(510f + -187f)))) + -2008f));
    var var_2 = u_input.b << (1u % 32u);
    global1 = !vec3<bool>(true, false, func_4(true, firstLeadingBit(reverseBits(vec4<i32>(-3879i, u_input.b, u_input.d, var_0))), Struct_4(any(arg_1.b.zz))).a.x);
    return Struct_5(Struct_2(arg_1, global1.x), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1458f, -259f) - _wgslsmith_f_op_f32(select(1387f, 191f, true))) + 1320f), 58738u < u_input.a.x, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.xyw, ~global2[_wgslsmith_index_u32(u_input.c, 18u)], global3.c), _wgslsmith_clamp_vec3_u32(select(global3.c, global2[_wgslsmith_index_u32(19583u, 18u)], arg_1.a.wzx), u_input.a.zxy & vec3<u32>(53817u, global3.c.x, 4294967295u), global3.c ^ u_input.a.zwy)), !func_4(global1.x, vec4<i32>(-28754i, -8953i, u_input.b, 1i), func_1()).a.yzx), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) - _wgslsmith_f_op_f32(f32(-1f) * -1146f)) <= -600f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_dot_vec2_i32(-abs(vec2<i32>(u_input.d, 51401i)), countOneBits(vec2<i32>(u_input.d, 0i) | vec2<i32>(18319i, 72554i))) ^ u_input.d, func_4(true, abs(select(-vec4<i32>(-2147483647i, 2147483647i, u_input.b, 3589i), -vec4<i32>(u_input.b, u_input.d, u_input.b, -1i), !global3.d.x)), func_1()), _wgslsmith_f_op_f32(trunc(371f)), Struct_2(Struct_1(select(vec4<bool>(global1.x, true, global3.d.x, global3.b), vec4<bool>(global1.x, global3.d.x, global3.b, true), select(vec4<bool>(true, true, true, true), vec4<bool>(global1.x, true, true, true), vec4<bool>(true, global3.b, global3.d.x, global3.b))), global3.d), global3.b));
    global1 = vec3<bool>((~u_input.c << (28272u % 32u)) == _wgslsmith_mult_u32((u_input.c | u_input.a.x) | _wgslsmith_clamp_u32(global3.c.x, global3.c.x, 1u), u_input.a.x), ((~u_input.c ^ abs(u_input.a.x)) < 43407u) == true, select(any(var_0.a.a.b.zx), false, func_4(any(!vec2<bool>(false, global1.x)), -abs(vec4<i32>(u_input.d, u_input.b, 12689i, 1i)), Struct_4(any(vec4<bool>(false, global1.x, true, true)))).b.x));
    global0 = array<f32, 17>();
    global1 = vec3<bool>(_wgslsmith_mod_i32(u_input.d, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-46424i, u_input.d, -16524i)), ~vec3<i32>(u_input.d, -2294i, u_input.b))) > ((i32(-1i) * -5452i) & -_wgslsmith_mult_i32(-1i, u_input.b)), global3.d.x, false);
    global0 = array<f32, 17>();
    global2 = array<vec3<u32>, 18>();
    var var_1 = abs((var_0.b.c >> (global3.c % vec3<u32>(32u))) & vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.a.x, 4294967295u), 4294967295u));
    var var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(var_0.b.c.x, 17u)], global3.a, -1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(func_5(-27140i, func_4(false, vec4<i32>(-1i, 1i, -36599i, 2645i), Struct_4(false)), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 17u)])), Struct_2(var_0.a.a, false)).b.a * _wgslsmith_f_op_f32(f32(-1f) * -1493f)), 328f));
}

