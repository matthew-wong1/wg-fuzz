struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, true, false, false, true, true, false, false, true, false, true, true);

var<private> global1: array<Struct_2, 3>;

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_5) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.c.a.b, arg_1.b.c.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.d.c)), 1340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.c.a.b, 350f, arg_1.b.c.d.c, -735f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(482f, arg_1.c.a.d.c, -1611f, 1099f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.c.d.c, -650f, arg_1.c.a.d.c, arg_1.c.a.b), vec4<f32>(arg_1.c.a.b, 910f, arg_1.c.a.d.c, 511f))))));
    var var_1 = Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(select(u_input.c.x << (137083u % 32u), arg_1.b.a, u_input.c.x > -1i), _wgslsmith_div_i32(arg_1.b.a & 1i, -1i), max(_wgslsmith_sub_i32(u_input.c.x, -49060i), abs(u_input.c.x))), vec3<i32>(1i, 1314i, arg_1.d)), 0u, Struct_2(Struct_1(!select(vec4<bool>(true, arg_0, arg_1.c.a.d.a.x, global0[_wgslsmith_index_u32(2191u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], arg_0, arg_1.b.c.a.a.x, false), arg_1.c.a.d.a), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-534f, var_0.x)) * _wgslsmith_f_op_f32(trunc(arg_1.c.a.b))), select(select(arg_1.b.d, vec2<bool>(false, arg_0), vec2<bool>(arg_1.c.a.d.a.x, arg_1.b.c.d.d.x)), arg_1.c.a.a.a.yw, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(626f)))), vec4<u32>(~u_input.d.x, 12200u, arg_1.c.a.a.b, ~25962u), arg_1.b.c.d), !select(!arg_1.b.d, select(arg_1.c.a.a.d, select(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.b.c.c.x, 13u)]), arg_1.c.a.a.a.zy, false), !arg_1.b.c.d.d), vec2<bool>(false, !global0[_wgslsmith_index_u32(0u, 13u)])));
    let var_2 = -1i;
    let var_3 = min(~(~vec4<u32>(~5524u, ~var_1.c.a.b, arg_1.c.a.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(20848u, u_input.b.x, arg_1.b.c.c.x), var_1.c.c.wwy))), ~abs(~arg_1.b.c.c) ^ var_1.c.c);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return -11796i;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_5 {
    global1 = array<Struct_2, 3>();
    let var_0 = countOneBits(vec2<i32>(func_3(global0[_wgslsmith_index_u32(firstLeadingBit(select(u_input.a, u_input.d.x, false)), 13u)], Struct_5(-1821i, Struct_3(-1i, 1u, Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(61728u, 13u)], true, true, false), 1u, -1003f, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 13u)])), -321f, u_input.b, Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], false, global0[_wgslsmith_index_u32(20963u, 13u)]), 8109u, -1513f, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, true, true), 4294967295u, 432f, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 13u)])), -174f, vec4<u32>(4294967295u, 8095u, u_input.a, u_input.b.x), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(38740u, 13u)], true, global0[_wgslsmith_index_u32(1u, 13u)], true), 4294967295u, 297f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)])))), arg_1)), -2147483647i));
    global2 = any(vec2<bool>(true, false));
    return Struct_5(1i, Struct_3(func_3(all(vec4<bool>(true, true, true, true)), Struct_5(_wgslsmith_mult_i32(-18776i, -1i), Struct_3(54051i, 4294967295u, Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(20636u, 13u)], global0[_wgslsmith_index_u32(1792u, 13u)], global0[_wgslsmith_index_u32(21613u, 13u)]), u_input.d.x, -952f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(49461u, 13u)])), -982f, u_input.b, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], false), u_input.d.x, 1000f, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(40072u, 13u)]))), vec2<bool>(global0[_wgslsmith_index_u32(99195u, 13u)], true)), Struct_4(global1[_wgslsmith_index_u32(u_input.a, 3u)]), arg_1)), min(~u_input.d.x, 0u | u_input.b.x) | u_input.b.x, Struct_2(Struct_1(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(42464u, 13u)]), u_input.d.x | u_input.d.x, _wgslsmith_f_op_f32(select(461f, 701f, global0[_wgslsmith_index_u32(0u, 13u)])), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(6257u, 13u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -122f))), vec4<u32>(~u_input.d.x, u_input.d.x, _wgslsmith_sub_u32(0u, u_input.d.x), countOneBits(56398u)), Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(78624u, 13u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), u_input.d.x & u_input.a, -1017f, !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], false))), !select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(101268u, 13u)]), global0[_wgslsmith_index_u32(u_input.d.x ^ 0u, 13u)])), Struct_4(Struct_2(Struct_1(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], true, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(75648u, 13u)], true)), ~u_input.d.x, -404f, vec2<bool>(true, global0[_wgslsmith_index_u32(3677u, 13u)])), -979f, u_input.b, Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], true), countOneBits(u_input.a), _wgslsmith_f_op_f32(round(-180f)), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], true)))), countOneBits(arg_0));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec4<u32>, arg_3: f32) -> vec4<bool> {
    var var_0 = func_2(4221i, arg_0.d).c;
    var_0 = func_2(-1291i, u_input.c.x).c;
    var var_1 = Struct_5(-43715i, arg_0.b, func_2(-18852i, arg_0.a).c, arg_0.b.a);
    global1 = array<Struct_2, 3>();
    var var_2 = -4859i;
    return var_1.c.a.a.a;
}

fn func_1() -> u32 {
    let var_0 = ~(-(u_input.c.x << (28337u % 32u))) << (0u % 32u);
    global1 = array<Struct_2, 3>();
    global0 = array<bool, 13>();
    let var_1 = Struct_3(_wgslsmith_mod_i32(4580i, var_0), ~u_input.d.x, Struct_2(Struct_1(func_4(func_2(var_0, u_input.c.x), _wgslsmith_div_f32(-216f, 260f), ~u_input.b, _wgslsmith_f_op_f32(-1295f * -1670f)), ~_wgslsmith_dot_vec3_u32(u_input.b.zzx, vec3<u32>(1u, 4294967295u, 0u)), _wgslsmith_f_op_f32(max(-392f, 223f)), func_4(func_2(0i, -18839i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<u32>(u_input.a, 4294967295u, 1u, 1u), 125f).xw), -875f, ~countOneBits(u_input.b), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(119945u, u_input.d.x), 13u)], true, func_2(var_0, 1i).b.c.d.d.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), 13u)]), u_input.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1580f - -801f), _wgslsmith_f_op_f32(f32(-1f) * -537f))), vec2<bool>(true, -29610i == var_0))), func_2(abs(countOneBits(u_input.c.x) ^ 34785i), u_input.c.x).c.a.d.a.wy);
    global2 = global0[_wgslsmith_index_u32(1u, 13u)] && true;
    return _wgslsmith_div_u32(1u, ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(~func_1(), 13u)];
    let var_0 = 198f;
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    var var_1 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1397f, 1594f, var_0), vec3<f32>(var_0, var_0, var_0))))))))), ~abs(min(func_2(1i, u_input.c.x).c.a.c, _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(21422u, 0u, 1984u, u_input.a)))));
}

