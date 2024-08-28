struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(10656u, 19862u, 84029u, 4294967295u), vec4<u32>(4294967295u, 11100u, 4294967295u, 0u), vec4<u32>(0u, 62208u, 36610u, 4561u), vec4<u32>(58316u, 127417u, 0u, 4294967295u), vec4<u32>(16410u, 4294967295u, 0u, 36578u), vec4<u32>(78642u, 32506u, 27491u, 1u), vec4<u32>(0u, 44566u, 4294967295u, 4294967295u), vec4<u32>(14928u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 116649u, 0u, 1u), vec4<u32>(13949u, 0u, 8097u, 26941u), vec4<u32>(4294967295u, 29937u, 4294967295u, 1u), vec4<u32>(21630u, 8499u, 40771u, 4294967295u), vec4<u32>(4294967295u, 0u, 10999u, 19738u), vec4<u32>(19219u, 2832u, 118738u, 62001u), vec4<u32>(31382u, 1u, 34745u, 1u), vec4<u32>(49777u, 31931u, 1u, 0u), vec4<u32>(30979u, 52501u, 20362u, 4294967295u), vec4<u32>(4294967295u, 148456u, 4294967295u, 2953u), vec4<u32>(8540u, 1u, 33871u, 1u), vec4<u32>(0u, 63460u, 0u, 1u), vec4<u32>(9788u, 1u, 65537u, 25496u), vec4<u32>(0u, 21082u, 1u, 1u), vec4<u32>(88120u, 0u, 0u, 0u), vec4<u32>(39494u, 144u, 29137u, 4294967295u), vec4<u32>(4294967295u, 61974u, 66202u, 4294967295u), vec4<u32>(28706u, 4294967295u, 63765u, 4294967295u), vec4<u32>(0u, 9574u, 0u, 9144u), vec4<u32>(61019u, 0u, 4294967295u, 90297u), vec4<u32>(7120u, 4294967295u, 101072u, 1u));

var<private> global2: array<f32, 26> = array<f32, 26>(-888f, -622f, -1083f, 693f, 1401f, -143f, -791f, 1133f, -456f, 1258f, 967f, -497f, -1419f, -2080f, -798f, -170f, 1734f, 1576f, 1066f, -383f, -270f, -490f, 1456f, 1274f, 959f, -178f);

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> i32 {
    global2 = array<f32, 26>();
    var var_0 = vec2<f32>(-455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(countOneBits(u_input.d.x), 26u)])));
    global2 = array<f32, 26>();
    global3 = array<Struct_2, 22>();
    var var_1 = select(vec2<bool>(u_input.c.x <= u_input.c.x, global0.x), select(vec2<bool>(!any(vec2<bool>(global0.x, global0.x)), true), vec2<bool>(max(-9593i, u_input.c.x) >= -25058i, !all(vec2<bool>(global0.x, global0.x))), global0.x), vec2<bool>(global0.x, global0.x));
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = select(vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, arg_0.c), arg_0.c)), 43971u, ~_wgslsmith_sub_u32(max(4294967295u, 0u), _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), 14310u), ~(vec4<u32>(~1u, 4294967295u, _wgslsmith_div_u32(arg_1.a.c, arg_0.c), u_input.b.x) & select(vec4<u32>(arg_0.c, 114294u, u_input.d.x, 186u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37817u, u_input.d.x, 0u, 4294967295u), global1[_wgslsmith_index_u32(18090u, 29u)]), 29u)], !vec4<bool>(false, arg_0.a, true, arg_1.a.b))), !select(select(vec4<bool>(global0.x, arg_1.a.a, false, arg_0.b), !vec4<bool>(global0.x, arg_1.a.b, arg_1.a.a, global0.x), vec4<bool>(arg_1.a.b, true, true, true)), !(!vec4<bool>(global0.x, global0.x, true, arg_1.a.b)), !select(vec4<bool>(global0.x, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, global0.x, arg_1.a.a, arg_1.a.a), vec4<bool>(arg_0.b, arg_1.a.b, false, global0.x))));
    let var_1 = arg_0;
    var var_2 = false;
    var var_3 = false;
    global2 = array<f32, 26>();
    return 43952u;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(1u, 26u)])), 265f, -13561i < (-1i | u_input.c.x))) > global2[_wgslsmith_index_u32(u_input.b.x, 26u)], true, u_input.b.x, i32(-1i) * -43939i);
    let var_1 = vec3<i32>(abs(-61031i), func_2(), u_input.c.x);
    var var_2 = ~countOneBits(~u_input.d.x >> (1u % 32u)) < func_3(var_0, Struct_2(var_0, vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.c, 26u)], -1344f), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(var_0.c, 26u)])), 1073f, _wgslsmith_f_op_f32(-323f - global2[_wgslsmith_index_u32(var_0.c, 26u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(41530i, -1i, 0i, -29003i), ~vec4<i32>(u_input.a, -2147483647i, -2147483647i, -1i))));
    let var_3 = select(vec2<bool>(var_0.a, !any(!vec4<bool>(false, false, var_0.b, true))), select(vec2<bool>(true, !any(vec4<bool>(global0.x, var_0.b, true, true))), !vec2<bool>(true || var_0.b, true), select(vec2<bool>(888f >= global2[_wgslsmith_index_u32(var_0.c, 26u)], var_0.a), vec2<bool>(global0.x, any(vec4<bool>(var_0.b, true, global0.x, false))), all(!vec4<bool>(var_0.a, true, global0.x, global0.x)))), select(select(vec2<bool>(global0.x, u_input.c.x == 0i), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(var_0.a, global0.x)), !vec2<bool>(var_0.b, false), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), vec2<bool>(var_0.a, var_0.a))), !vec2<bool>(global0.x, global0.x)), vec2<bool>(true, any(vec3<bool>(var_0.b, false, global0.x))), !vec2<bool>(all(vec4<bool>(var_0.a, global0.x, var_0.b, var_0.b)), var_0.b)));
    var var_4 = u_input.b;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(true, !global0.x);
    var var_0 = ~vec2<u32>(~4002u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, u_input.b.x), 1u) ^ max(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], vec4<u32>(4294967295u, 1u, 0u, u_input.d.x)), _wgslsmith_mult_u32(0u, u_input.b.x)));
    let var_1 = -42083i;
    global1 = array<vec4<u32>, 29>();
    let var_2 = Struct_2(func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1735f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(408f, global2[_wgslsmith_index_u32(7324u, 26u)]), _wgslsmith_f_op_f32(-1283f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(290f))), 1000f)), ~(vec4<i32>(u_input.a << (76485u % 32u), ~(-1i), _wgslsmith_div_i32(-53238i, var_1), ~2147483647i) | _wgslsmith_div_vec4_i32(vec4<i32>(var_1, var_1, -9332i, -1i), abs(vec4<i32>(var_1, -1i, -56540i, u_input.a)))));
    let var_3 = vec3<u32>(_wgslsmith_mod_u32(~(~var_0.x) & 1u, ~46717u), ~var_0.x, var_2.a.c);
    var var_4 = var_2.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(905f + _wgslsmith_f_op_f32(-417f - _wgslsmith_f_op_f32(var_2.b.x - 251f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(36030u, 26u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 26u)])), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~var_2.a.c, 26u)])), all(select(vec2<bool>(global0.x, var_2.a.b), vec2<bool>(false, false), false)))))));
}

