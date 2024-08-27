struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(true, Struct_1(0i, vec3<u32>(56830u, 70147u, 4294967295u), 5378i, 4294967295u), vec2<i32>(1i, -61030i), Struct_1(-46990i, vec3<u32>(51128u, 67849u, 8393u), -67373i, 0u));

var<private> global2: u32 = 8858u;

var<private> global3: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(i32(-2147483648), -23098i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-3172i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1485i, -1i), vec2<i32>(74560i, i32(-2147483648)), vec2<i32>(4525i, 2147483647i));

var<private> global4: array<f32, 3>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<i32> {
    let var_0 = firstTrailingBit(~1u);
    var var_1 = Struct_2(!(select(true, select(false, false, false), true) | true), Struct_1(_wgslsmith_mod_i32(global1.d.a, -1i << (var_0 % 32u)) >> (4294967295u % 32u), global1.b.b, u_input.c.x >> (4294967295u % 32u), 138961u), -vec2<i32>(_wgslsmith_sub_i32(max(global1.c.x, 0i), 8780i ^ global1.b.c), _wgslsmith_clamp_i32(18367i, -u_input.b, -global1.d.a)), global1.b);
    var var_2 = abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(max(1u, 4294967295u), 4294967295u, firstLeadingBit(var_1.d.d)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 1u, global1.b.b.x), global1.b.b) >> (~var_1.d.b % vec3<u32>(32u))));
    var var_3 = var_1.d;
    let var_4 = Struct_2(false, Struct_1(-1i, ~select(global1.b.b, vec3<u32>(var_2.x, 114647u, var_0) | var_1.d.b, select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(var_1.a, false, global1.a), vec3<bool>(false, var_1.a, true))), 35607i, var_2.x), global1.c, global1.d);
    return u_input.c.wx;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_2 {
    var var_0 = !arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(708f, 601f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1241f, 1777f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(100397u, 3u)], global4[_wgslsmith_index_u32(0u, 3u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2402f, 1728f) - vec2<f32>(global4[_wgslsmith_index_u32(u_input.a, 3u)], global4[_wgslsmith_index_u32(29321u, 3u)]))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-391f, -1802f)), -135f, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, global4[_wgslsmith_index_u32(global1.d.b.x, 3u)])), any(arg_0))), arg_0.x));
    let var_2 = global1.b;
    let var_3 = 4294967295u;
    var var_4 = Struct_2(true, global1.b, _wgslsmith_sub_vec2_i32(func_3(), ~vec2<i32>(u_input.b, abs(-1i))), Struct_1(1i, vec3<u32>(_wgslsmith_add_u32(var_3, 0u), select(36762u, global1.b.b.x, true), global1.d.d) & var_2.b, 0i, _wgslsmith_mod_u32(u_input.a, firstLeadingBit(~var_3))));
    return Struct_2(var_4.a, global1.d, func_3(), global1.d);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.b.b.zy;
    global1 = arg_0;
    global1 = arg_0;
    let var_1 = Struct_2(-19628i > _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), -vec2<i32>(45630i, -22086i)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.wxw, vec3<i32>(-39015i, arg_0.c.x, 2147483647i)), -1i << (var_0.x % 32u))), func_2(!vec2<bool>(false | arg_0.a, global1.a), _wgslsmith_sub_i32(-38185i, _wgslsmith_clamp_i32(-4770i ^ arg_0.d.c, -global1.c.x, 1i))).d, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, ~15115i, select(30676i, u_input.b, true)), abs(u_input.c ^ u_input.c)), 26630i), arg_0.b);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(max(abs(3901u), 1u), 3u)] + global4[_wgslsmith_index_u32(27820u, 3u)]), global4[_wgslsmith_index_u32(~global1.d.b.x, 3u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~global1.b.b.x, 3u)]))), global4[_wgslsmith_index_u32(~103460u, 3u)]);
    return Struct_2(all(select(!vec2<bool>(var_1.a, false), vec2<bool>(global1.a, !var_1.a), !vec2<bool>(arg_0.a, false))), arg_0.b, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(21199u, reverseBits(_wgslsmith_clamp_u32(0u, 12038u, ~1u))), 7u)], func_2(select(!(!vec2<bool>(global1.a, global1.a)), vec2<bool>(true, var_2.x > -126f), true), 23658i).b);
}

fn func_5(arg_0: Struct_2) -> bool {
    global2 = 0u;
    let var_0 = arg_0.d;
    let var_1 = arg_0.d;
    global1 = Struct_2(true == !any(select(vec3<bool>(true, global1.a, arg_0.a), vec3<bool>(global1.a, arg_0.a, false), vec3<bool>(true, global1.a, global1.a))), func_4(Struct_2(all(vec3<bool>(true, arg_0.a, arg_0.a)), func_2(vec2<bool>(true, true), 2147483647i).d, global3[_wgslsmith_index_u32(~(~4294967295u), 7u)], func_2(!vec2<bool>(global1.a, false), -1i).d)).d, ~(~(~_wgslsmith_add_vec2_i32(u_input.c.wz, global1.c))), func_4(func_2(!(!vec2<bool>(true, arg_0.a)), i32(-1i) * -2147483647i)).b);
    let var_2 = func_4(func_4(Struct_2(global1.a, Struct_1(_wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(8485i, -2147483647i)), max(var_0.b, vec3<u32>(4294967295u, var_0.d, 4294967295u)), arg_0.b.a, u_input.a), countOneBits(~vec2<i32>(-2147483647i, -10529i)), func_2(vec2<bool>(arg_0.a, global1.a), ~(-13339i)).d))).b;
    return true;
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_mod_vec4_u32(~(~(~(~vec4<u32>(4294967295u, 46868u, u_input.a, 0u)))), vec4<u32>(~(~_wgslsmith_sub_u32(u_input.a, u_input.a)), global1.b.d, 9143u, u_input.a));
    global0 = false;
    var var_1 = vec2<bool>(false, func_5(func_4(func_2(!vec2<bool>(global1.a, global1.a), 34443i))));
    global0 = var_1.x;
    let var_2 = func_4(func_2(!(!select(vec2<bool>(true, global1.a), vec2<bool>(true, false), true)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.c, 2147483647i, global1.c.x, 1i), u_input.c)))).b;
    return _wgslsmith_add_vec3_u32(~vec3<u32>(~(~var_2.b.x), u_input.a | _wgslsmith_add_u32(1u, global1.b.b.x), global1.d.b.x), global1.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(global1.d.d, 3u)], global4[_wgslsmith_index_u32(u_input.a, 3u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-175f, global4[_wgslsmith_index_u32(u_input.a, 3u)]))))), _wgslsmith_mod_i32(global1.b.c, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(global1.b.c, u_input.c.x), min(abs(45892i), _wgslsmith_div_i32(global1.c.x, 1i)))), func_1());
}

