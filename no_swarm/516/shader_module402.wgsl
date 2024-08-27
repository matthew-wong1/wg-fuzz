struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: Struct_4,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> u32 {
    global1 = select(select(!vec2<bool>(any(vec3<bool>(arg_1.a.c, true, true)), true), vec2<bool>(all(!vec2<bool>(global1.x, arg_1.b.c)), (arg_1.b.c | true) | (arg_1.b.b < -2147483647i)), global1.x), select(vec2<bool>(false | select(true, true, true), any(!vec4<bool>(false, true, true, arg_1.a.c))), select(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), arg_1.a.c), select(select(vec2<bool>(global1.x, global0[_wgslsmith_index_u32(16759u, 24u)]), vec2<bool>(false, true), true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 24u)], false), !vec2<bool>(true, arg_1.a.c)), !global1.x), true), vec2<bool>(any(select(select(vec3<bool>(global1.x, arg_1.a.c, true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_1.a.a.x, 24u)]), true), vec3<bool>(global1.x, true, true), true)), _wgslsmith_add_i32(-52773i >> (arg_1.b.d.x % 32u), _wgslsmith_clamp_i32(1i, 2147483647i, 2147483647i)) == abs(firstTrailingBit(u_input.a.x))));
    let var_0 = Struct_3(arg_1.b, Struct_1(vec3<u32>(firstTrailingBit(~0u), arg_1.b.e.x, arg_1.a.e.x), u_input.a.x, all(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], arg_1.b.c, true, global0[_wgslsmith_index_u32(arg_1.a.d.x, 24u)]))), arg_1.b.d, ~abs(vec3<u32>(1u, arg_1.a.a.x, arg_1.b.d.x))));
    global0 = array<bool, 24>();
    let var_1 = true;
    global1 = select(select(!(!vec2<bool>(var_1, arg_1.a.c)), !select(!vec2<bool>(var_1, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true), !vec2<bool>(true, all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_1.b.d.x, 24u)])))), !select(select(vec2<bool>(var_0.a.c, var_1), select(vec2<bool>(global0[_wgslsmith_index_u32(50760u, 24u)], true), vec2<bool>(global1.x, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(global1.x, global1.x), var_1)), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.a.d.x, 24u)]), vec2<bool>(var_0.a.c, true), vec2<bool>(var_1, global0[_wgslsmith_index_u32(16937u, 24u)])), select(!vec2<bool>(true, var_0.b.c), select(vec2<bool>(arg_1.a.c, global1.x), vec2<bool>(var_1, false), vec2<bool>(var_1, false)), vec2<bool>(false, true))), vec2<bool>(var_0.b.c, true));
    return ~4294967295u;
}

fn func_2() -> vec2<f32> {
    global1 = vec2<bool>((~min(-4609i, u_input.a.x) >= 4077i) & true, u_input.a.x > (u_input.a.x >> (1u % 32u)));
    var var_0 = Struct_1(vec3<u32>(94139u, ~func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2236f, -1350f) * vec2<f32>(743f, 1451f)), Struct_3(Struct_1(vec3<u32>(1u, 43041u, 1u), u_input.a.x, true, vec2<u32>(1u, 3368u), vec3<u32>(4294967295u, 16032u, 0u)), Struct_1(vec3<u32>(0u, 0u, 39793u), -20782i, global0[_wgslsmith_index_u32(30796u, 24u)], vec2<u32>(1u, 54408u), vec3<u32>(1u, 2908u, 5436u)))), 10308u), -1i, true, vec2<u32>(44648u, 1u), abs(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 37847u, 27128u) >> (4294967295u % 32u), _wgslsmith_sub_u32(~1u, 1u), ~776u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -969f) - _wgslsmith_f_op_f32(489f + 561f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1017f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-997f - -577f) * -1057f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1026f))) - 1000f))), 1224f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + var_1.x) * _wgslsmith_f_op_f32(-1243f + _wgslsmith_f_op_f32(f32(-1f) * -737f)))));
    var_0 = Struct_1(var_0.e, (-2147483647i ^ u_input.a.x) >> ((var_0.d.x & _wgslsmith_mult_u32(select(var_0.a.x, var_0.a.x, false), var_0.e.x)) % 32u), _wgslsmith_f_op_f32(select(var_1.x, -262f, false)) == var_1.x, _wgslsmith_mod_vec2_u32(var_0.e.yy, var_0.e.zz), var_0.a);
    return vec2<f32>(-182f, _wgslsmith_f_op_f32(-238f - 375f));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 0i)), -abs(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, arg_2.e.a.b, 0i)), vec4<i32>(-38761i, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(39536u, arg_1, 4294967295u, 23163u) % vec4<u32>(32u)))));
    var var_1 = var_0.zwy;
    let var_2 = arg_1;
    global0 = array<bool, 24>();
    var var_3 = arg_2.e.a;
    return arg_2.e.b;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1614f, 757f)))))), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), ~vec2<u32>(54344u, 0u))), Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1)) * _wgslsmith_f_op_vec2_f32(func_2())), reverseBits(min(~1u, 36849u)), arg_0, arg_0.a.x, Struct_3(Struct_1(~vec3<u32>(0u, 4294967295u, 8367u), ~(-19330i), true, vec2<u32>(1u, 1u), ~vec3<u32>(28888u, 0u, 35238u)), Struct_1(vec3<u32>(87409u, 3310u, 23200u), 20080i ^ u_input.a.x, all(arg_0.a.yw), vec2<u32>(4294967295u, 56820u), ~vec3<u32>(65221u, 91363u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_4(select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global1.x, global0[_wgslsmith_index_u32(55174u, 24u)], global0[_wgslsmith_index_u32(10260u, 24u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, global1.x, global0[_wgslsmith_index_u32(1u, 24u)]), true), select(vec4<bool>(false, false, false, false), vec4<bool>(global1.x, false, true, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(global1.x, true, false, true))), vec4<bool>(false, any(vec4<bool>(false, global1.x, false, global1.x)), global0[_wgslsmith_index_u32(3646u, 24u)], global1.x | false), true || !global1.x), vec4<f32>(_wgslsmith_f_op_f32(min(-1021f, 1423f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1073f)) + _wgslsmith_f_op_f32(min(-758f, -167f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -682f) * 466f), _wgslsmith_div_f32(-2844f, _wgslsmith_f_op_f32(1593f - -336f)))), vec2<f32>(1f, 1f));
    var var_1 = u_input.a.x;
    global1 = select(vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1421f - 794f))) != -570f, func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1072f))), 31000u, Struct_5(vec2<f32>(-1144f, -1251f), ~4294967295u, Struct_4(vec4<bool>(global1.x, global0[_wgslsmith_index_u32(59294u, 24u)], true, false), vec4<f32>(1156f, -1000f, 1033f, 953f)), select(global1.x, global1.x, var_0.c), Struct_3(Struct_1(var_0.e, u_input.a.x, global0[_wgslsmith_index_u32(49090u, 24u)], var_0.d, vec3<u32>(var_0.e.x, 26944u, var_0.e.x)), Struct_1(vec3<u32>(0u, var_0.e.x, var_0.a.x), u_input.a.x, true, var_0.a.zy, var_0.a)))).c), select(vec2<bool>(!global1.x, !global0[_wgslsmith_index_u32(var_0.e.x, 24u)]), !(!(!vec2<bool>(var_0.c, var_0.c))), any(select(select(vec3<bool>(var_0.c, global1.x, global0[_wgslsmith_index_u32(var_0.d.x, 24u)]), vec3<bool>(global1.x, false, var_0.c), true), vec3<bool>(false, var_0.c, true), true))), select(!vec2<bool>(global1.x || true, global0[_wgslsmith_index_u32(var_0.a.x, 24u)] && false), !vec2<bool>(false || global0[_wgslsmith_index_u32(var_0.a.x, 24u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.e.x, 24u)], true)));
    var var_2 = !(!(!select(vec2<bool>(false, var_0.c), select(vec2<bool>(global1.x, global0[_wgslsmith_index_u32(var_0.d.x, 24u)]), vec2<bool>(true, var_0.c), vec2<bool>(false, var_0.c)), true)));
    var var_3 = Struct_3(Struct_1(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), min(51743u, var_0.e.x), Struct_5(vec2<f32>(-501f, -1377f), 0u, Struct_4(vec4<bool>(true, true, var_2.x, false), vec4<f32>(2992f, -134f, -1073f, -1000f)), true, Struct_3(Struct_1(vec3<u32>(4294967295u, var_0.d.x, var_0.e.x), 1i, true, vec2<u32>(var_0.a.x, var_0.d.x), var_0.e), Struct_1(var_0.e, var_0.b, var_0.c, var_0.a.zy, vec3<u32>(4294967295u, 34465u, 1u))))).a ^ vec3<u32>(~1u, var_0.a.x, ~var_0.d.x), -2147483647i, all(select(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0.a.x, 24u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(547u, 24u)], var_0.c), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], true, var_2.x)), vec3<bool>(global1.x, true, false), global0[_wgslsmith_index_u32(var_0.e.x, 24u)])), vec2<u32>(var_0.d.x, var_0.a.x), var_0.e), func_1(Struct_4(vec4<bool>(true, !var_2.x, !var_0.c, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(331f, 702f, 270f, -457f) * vec4<f32>(-303f, 1039f, -905f, 567f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-514f, 2064f, 1379f, 1446f), vec4<f32>(2015f, -331f, -1000f, 1133f), false)), select(vec4<bool>(false, false, var_0.c, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 24u)], global1.x, false, true), global0[_wgslsmith_index_u32(var_0.d.x, 24u)])))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-276f, -1999f))))));
    var var_4 = _wgslsmith_dot_vec2_u32(~var_3.a.a.yx, vec2<u32>(_wgslsmith_sub_u32(countOneBits(var_0.e.x), ~(1u ^ var_3.a.e.x)), 85734u));
    global0 = array<bool, 24>();
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2598f), _wgslsmith_f_op_f32(-291f - -1030f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f - -462f))), 700f)) * -427f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_5));
}

