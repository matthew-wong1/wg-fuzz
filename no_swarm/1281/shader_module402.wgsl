struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<i32> = vec3<i32>(9849i, 35632i, i32(-2147483648));

var<private> global2: array<f32, 22>;

var<private> global3: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false));

var<private> global4: vec2<f32> = vec2<f32>(1049f, -1187f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = vec3<f32>(global4.x, _wgslsmith_f_op_f32(arg_1.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 22u)] * arg_1.a.d), -1178f, true)))), arg_0.c.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.c.yww, arg_0.c.zyy)));
    var var_1 = ~reverseBits(vec3<u32>(1u, 1u, 1u));
    var_1 = ~(~vec3<u32>(_wgslsmith_mult_u32(var_1.x, var_1.x), 1u, var_1.x));
    var var_2 = -112f;
    return select(select(select(global3[_wgslsmith_index_u32(abs(var_1.x) | (var_1.x ^ var_1.x), 7u)], arg_0.a.b.a.c.yyz, !(!arg_0.a.c.a.c.zwy)), select(vec3<bool>(true, false, all(vec4<bool>(false, false, true, arg_0.b))), select(!vec3<bool>(true, arg_1.a.c.x, true), vec3<bool>(arg_0.a.a.c.x, arg_0.b, arg_2.x), arg_1.a.c.x), ~(-2147483647i) <= ~u_input.a.x), true), arg_0.a.d.c.ywz, select(!select(vec3<bool>(false, arg_0.b, true), vec3<bool>(arg_2.x, true, arg_0.a.d.c.x), vec3<bool>(true, arg_0.b, arg_1.a.c.x)), vec3<bool>(any(!arg_1.a.c), true, arg_2.x), !(!(!arg_1.a.c.x))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = 23917u;
    var var_1 = !select(!select(vec3<bool>(true, true, arg_3.c.x), func_3(Struct_4(Struct_3(arg_3, Struct_2(Struct_1(vec4<i32>(13311i, -1i, -33135i, arg_3.a.x), arg_3.d, vec4<bool>(false, arg_3.c.x, arg_3.c.x, arg_3.c.x), 392f), vec4<i32>(arg_3.a.x, global1.x, arg_3.a.x, -1i)), Struct_2(Struct_1(arg_3.a, 1490f, vec4<bool>(false, arg_3.c.x, arg_3.c.x, arg_3.c.x), -1366f), vec4<i32>(-2147483647i, global1.x, -5631i, -1i)), Struct_1(arg_3.a, -1000f, arg_3.c, -701f)), arg_3.c.x, vec4<f32>(arg_3.d, -689f, arg_3.d, 605f)), Struct_2(Struct_1(vec4<i32>(-2740i, 1i, global1.x, -3384i), arg_3.d, arg_3.c, arg_0), arg_3.a), global3[_wgslsmith_index_u32(var_0, 7u)]), !global3[_wgslsmith_index_u32(64272u, 7u)]), arg_3.c.wzx, func_3(Struct_4(Struct_3(Struct_1(arg_3.a, arg_0, arg_3.c, arg_0), Struct_2(arg_3, vec4<i32>(2147483647i, -53762i, global1.x, u_input.a.x)), Struct_2(Struct_1(vec4<i32>(u_input.a.x, arg_2, 15017i, arg_2), global4.x, arg_3.c, -386f), vec4<i32>(arg_2, -44615i, 0i, 1i)), Struct_1(vec4<i32>(17240i, -47969i, 0i, arg_3.a.x), arg_0, arg_3.c, arg_3.b)), global2[_wgslsmith_index_u32(0u, 22u)] != global4.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 402f, -505f, -2212f))), Struct_2(arg_3, vec4<i32>(0i, 2147483647i, 1i, global1.x)), vec3<bool>(false, arg_3.c.x, true)));
    var var_2 = Struct_3(Struct_1(vec4<i32>(~global1.x, global1.x, global1.x, u_input.a.x & u_input.a.x) | vec4<i32>(max(global1.x, -30213i), ~(-1i), u_input.a.x | 34483i, min(-11319i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), !select(!arg_3.c, arg_3.c, arg_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d)))), Struct_2(Struct_1(vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(arg_3.a, vec4<i32>(global1.x, 0i, -59915i, arg_2)), arg_2, reverseBits(arg_3.a.x)), global4.x, select(vec4<bool>(arg_3.c.x, true, false, var_1.x), select(vec4<bool>(var_1.x, var_1.x, arg_3.c.x, true), vec4<bool>(false, true, false, false), var_1.x), false), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(26974u, 8954u), 22u)]), -abs(firstTrailingBit(arg_3.a))), Struct_2(arg_3, vec4<i32>(arg_2, u_input.a.x, reverseBits(global1.x), _wgslsmith_sub_i32(2147483647i, 47432i)) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_0, arg_1, arg_1, var_0) ^ vec4<u32>(var_0, var_0, 4294967295u, var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1, 34275u, 25683u), vec4<u32>(1u, arg_1, arg_1, arg_1))) % vec4<u32>(32u))), Struct_1(reverseBits(arg_3.a), arg_0, vec4<bool>(any(vec3<bool>(true, arg_3.c.x, var_1.x)), false, any(func_3(Struct_4(Struct_3(Struct_1(arg_3.a, 673f, arg_3.c, 364f), Struct_2(Struct_1(arg_3.a, -1075f, arg_3.c, 1138f), arg_3.a), Struct_2(arg_3, arg_3.a), arg_3), arg_3.c.x, vec4<f32>(arg_0, -200f, 1160f, arg_0)), Struct_2(Struct_1(vec4<i32>(global1.x, 24320i, global1.x, arg_3.a.x), -314f, arg_3.c, 662f), arg_3.a), vec3<bool>(arg_3.c.x, true, false))), var_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-244f))))));
    let var_3 = arg_3.a.yyx;
    var var_4 = !var_1.x;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(1218f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(899f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0, 22u)] - arg_0)) + arg_3.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(63239u, 22u)], _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(8199u, 22u)])))))));
}

fn func_1() -> Struct_2 {
    global2 = array<f32, 22>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1923f, global2[_wgslsmith_index_u32(18319u, 22u)], global4.x) - vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], -780f, global4.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global2[_wgslsmith_index_u32(59558u, 22u)], global2[_wgslsmith_index_u32(2899u, 22u)]) + vec3<f32>(global2[_wgslsmith_index_u32(1u, 22u)], global4.x, global4.x))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global4.x, 0u, 2147483647i, Struct_1(vec4<i32>(2147483647i, -10980i, u_input.a.x, -22362i), -717f, vec4<bool>(true, true, false, false), 1418f))), vec3<f32>(1735f, global4.x, global4.x)))))));
    global3 = array<vec3<bool>, 7>();
    return Struct_2(Struct_1(-_wgslsmith_mod_vec4_i32(~vec4<i32>(global1.x, global1.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, global1.x, 33245i) >> (vec4<u32>(80878u, 36964u, 4294967295u, 10514u) % vec4<u32>(32u))), var_0.x, select(vec4<bool>(func_3(Struct_4(Struct_3(Struct_1(vec4<i32>(-77058i, 56134i, 1i, 2147483647i), var_0.x, vec4<bool>(true, true, true, true), -258f), Struct_2(Struct_1(vec4<i32>(global1.x, 23676i, 0i, global1.x), 239f, vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<i32>(34339i, 1i, global1.x, 8044i)), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i), var_0.x, vec4<bool>(true, false, true, true), -1374f), vec4<i32>(-1i, -14511i, global1.x, -41109i)), Struct_1(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(4294967295u, 22u)], vec4<bool>(true, false, true, true), global4.x)), false, vec4<f32>(-1754f, -857f, -301f, 2541f)), Struct_2(Struct_1(vec4<i32>(global1.x, -2147483647i, -4190i, u_input.a.x), -314f, vec4<bool>(true, false, false, true), global4.x), vec4<i32>(global1.x, -2147483647i, -5654i, global1.x)), global3[_wgslsmith_index_u32(0u, 7u)]).x, func_3(Struct_4(Struct_3(Struct_1(vec4<i32>(u_input.a.x, -9611i, 0i, 1i), -1506f, vec4<bool>(true, false, false, true), -729f), Struct_2(Struct_1(vec4<i32>(-1i, global1.x, 34286i, u_input.a.x), -855f, vec4<bool>(true, true, false, false), 582f), vec4<i32>(u_input.a.x, 31200i, -28404i, 1i)), Struct_2(Struct_1(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 6464i), -708f, vec4<bool>(false, false, true, true), -908f), vec4<i32>(u_input.a.x, -30640i, global1.x, 2147483647i)), Struct_1(vec4<i32>(0i, -1i, -1i, global1.x), -500f, vec4<bool>(true, true, true, false), 1600f)), true, vec4<f32>(245f, 1202f, -911f, -2144f)), Struct_2(Struct_1(vec4<i32>(-22953i, 24724i, -11470i, u_input.a.x), -958f, vec4<bool>(false, true, false, false), -154f), vec4<i32>(global1.x, 2147483647i, 0i, global1.x)), global3[_wgslsmith_index_u32(1215u, 7u)]).x, true, true), vec4<bool>(true, true, true, true), false), -303f), vec4<i32>(60942i, abs(_wgslsmith_mod_i32(-2147483647i, -1i)), ~18318i, 0i) | ~_wgslsmith_mult_vec4_i32(~vec4<i32>(global1.x, u_input.a.x, -2147483647i, 83459i), vec4<i32>(1i, 1i, 1i, 1i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> vec2<f32> {
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2212f, global2[_wgslsmith_index_u32(0u, 22u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-742f, -681f), arg_1.zy, arg_0.a.c.xx)), _wgslsmith_f_op_vec2_f32(arg_1.zw + arg_1.xz)), all(select(vec3<bool>(arg_0.a.c.x, true, false), global3[_wgslsmith_index_u32(0u, 7u)], vec3<bool>(arg_0.a.c.x, false, false)))))) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(abs(arg_0.a.b))));
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-494f + global4.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2051f) - 1f)), -1223f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(1u, 22u)], 719f, global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)])))))))));
    global3 = array<vec3<bool>, 7>();
    let var_0 = Struct_3(Struct_1(~vec4<i32>(-1i, 0i, u_input.a.x, u_input.a.x) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~abs(36431u), 22u)]), vec4<bool>(true, true, true, true), global4.x), Struct_2(Struct_1(-vec4<i32>(global1.x, u_input.a.x, -15761i, u_input.a.x), _wgslsmith_f_op_f32(-global4.x), vec4<bool>(2147483647i == global1.x, true, all(global3[_wgslsmith_index_u32(37817u, 7u)]), true), global4.x), ~vec4<i32>(max(u_input.a.x, u_input.a.x), -1i, u_input.a.x << (4294967295u % 32u), 2147483647i)), func_1(), func_1().a);
    var var_1 = var_0.a.c.yy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~u_input.a.x, _wgslsmith_clamp_i32(global1.x, u_input.a.x | countOneBits(-8880i), 2147483647i), -36094i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(721f)) * _wgslsmith_f_op_f32(step(1328f, global2[_wgslsmith_index_u32(1759u, 22u)]))), -884f, 552f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.b, -480f, 1027f, 325f)))), _wgslsmith_f_op_f32(-1436f * _wgslsmith_f_op_f32(min(854f, global2[_wgslsmith_index_u32(38109u, 22u)]))));
}

