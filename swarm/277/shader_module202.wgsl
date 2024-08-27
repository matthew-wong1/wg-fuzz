struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_3;

var<private> global2: f32 = -689f;

var<private> global3: array<u32, 3> = array<u32, 3>(35677u, 46514u, 22853u);

var<private> global4: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<f32>(-443f, 186f, 2452f), vec4<u32>(2353u, 31749u, 40961u, 1u), Struct_1(0u, vec3<i32>(1i, i32(-2147483648), -11580i), vec4<bool>(true, true, false, false), true)), Struct_2(vec3<f32>(-619f, 1000f, 419f), vec4<u32>(24070u, 1u, 9508u, 11377u), Struct_1(1u, vec3<i32>(2147483647i, 0i, -10281i), vec4<bool>(true, true, true, true), true)), Struct_2(vec3<f32>(345f, 1031f, 1061f), vec4<u32>(0u, 1u, 25189u, 1u), Struct_1(76296u, vec3<i32>(0i, 0i, 0i), vec4<bool>(false, true, false, true), true)), Struct_2(vec3<f32>(1062f, -159f, -1065f), vec4<u32>(4294967295u, 0u, 0u, 3726u), Struct_1(4294967295u, vec3<i32>(2147483647i, -1i, -9695i), vec4<bool>(false, true, false, true), true)), Struct_2(vec3<f32>(-327f, 1047f, 1128f), vec4<u32>(26974u, 5404u, 1u, 4294967295u), Struct_1(22460u, vec3<i32>(1i, -4059i, 0i), vec4<bool>(false, true, false, true), false)), Struct_2(vec3<f32>(595f, -263f, 612f), vec4<u32>(4294967295u, 72894u, 1u, 4294967295u), Struct_1(49241u, vec3<i32>(46244i, 48163i, -53629i), vec4<bool>(true, true, true, true), true)), Struct_2(vec3<f32>(766f, -225f, 327f), vec4<u32>(29047u, 0u, 4294967295u, 4294967295u), Struct_1(1u, vec3<i32>(2147483647i, i32(-2147483648), -1i), vec4<bool>(false, false, true, true), true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32) -> f32 {
    global3 = array<u32, 3>();
    var var_0 = abs(~(~(~global1.d.a)));
    var var_1 = global1.e.xx;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-995f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f - global1.c)) + 104f)) + _wgslsmith_f_op_f32(-arg_0));
    var var_3 = global1.d.a;
    return -650f;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    var var_0 = global1.d;
    let var_1 = all(vec2<bool>(all(select(vec3<bool>(true, false, true), !arg_1.c.c.xxz, any(var_0.c.xyx))), false));
    let var_2 = vec4<u32>(~min(0u, ~arg_1.b.x), ~u_input.c.x, _wgslsmith_add_u32(arg_2 << (81417u % 32u), abs(_wgslsmith_clamp_u32(countOneBits(arg_2), 1u ^ global1.d.a, _wgslsmith_mod_u32(arg_2, 41610u)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.a, arg_2 >> (32468u % 32u), 1u, 1u), u_input.c));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f));
    global3 = array<u32, 3>();
    return !select(var_0.c.wy, !select(arg_1.c.c.yw, arg_1.c.c.wz, var_0.c.zz), false);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: u32) -> vec4<u32> {
    var var_0 = func_3(arg_1.x, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, ~_wgslsmith_add_u32(12186u, arg_3 << (global1.d.a % 32u))), 7u)], global1.d.a);
    var var_1 = vec4<i32>(-1i) * -(vec4<i32>(2147483647i, 2147483647i ^ global0.x, ~u_input.b, global0.x) >> (vec4<u32>(arg_3, abs(arg_3), 35870u, ~u_input.a.x) % vec4<u32>(32u)));
    global0 = vec4<i32>(-_wgslsmith_clamp_i32(firstLeadingBit(u_input.b), abs(var_1.x), -21498i) | _wgslsmith_add_i32(-1i, -10256i), 1i, 1i, ~2147483647i);
    let var_2 = countOneBits(global0.x);
    var var_3 = _wgslsmith_mod_vec3_u32(~vec3<u32>(abs(51867u), (global3[_wgslsmith_index_u32(global1.d.a, 3u)] << (global3[_wgslsmith_index_u32(50632u, 3u)] % 32u)) >> (6697u % 32u), 125489u), vec3<u32>(countOneBits(17821u), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(43070u, 0u, ~arg_3, global1.d.a << (1u % 32u))), arg_3));
    return vec4<u32>(_wgslsmith_mult_u32(~countOneBits(global1.d.a >> (global1.d.a % 32u)), abs(global1.d.a)), select(var_3.x, ~global1.d.a, var_0.x), 1u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.e.x;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(889f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.x, global1.c)))) + _wgslsmith_f_op_f32(exp2(global1.c))) - global1.e.x);
    global2 = _wgslsmith_f_op_f32(func_1(-1401f));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-global1.e), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e) + vec3<f32>(1314f, 252f, global1.c))), !global1.d.c.zzx, global1.a, 4294967295u), global1.d);
    let var_2 = Struct_3(vec3<bool>(true, global1.d.d, -1440f >= _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1176f - var_1.a.x)), global1.b, var_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 733f, var_1.a.x)), _wgslsmith_f_op_vec3_f32(-var_1.a))), vec3<f32>(global1.e.x, global1.b, -386f))));
    global2 = _wgslsmith_f_op_f32(exp2(var_2.c));
    let var_3 = ~vec3<u32>(4294967295u, 1u, ~abs(_wgslsmith_mult_u32(var_1.c.a, global1.d.a)));
    let var_4 = select(select(select(!var_1.c.c.yzy, select(var_1.c.c.yxz, vec3<bool>(true, false, global1.a.x), 20493u == var_2.d.a), var_1.c.c.x), select(vec3<bool>(any(vec3<bool>(true, global1.d.d, var_1.c.c.x)), true, false), !global1.a, any(vec3<bool>(false, true, global1.a.x))), !var_2.a), vec3<bool>(all(select(select(var_1.c.c, vec4<bool>(false, global1.d.d, var_2.a.x, var_2.a.x), global1.d.c), !vec4<bool>(true, var_2.a.x, false, true), var_2.d.c.x)), any(vec3<bool>(false, false, true)) & any(global1.a), !(all(var_2.a.xz) & true)), var_1.c.c.xxw);
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, var_3.zx, var_1.b.x, ~var_2.d.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-981f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.c)), var_5.e.x), global1.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1576f - 456f))))));
}

