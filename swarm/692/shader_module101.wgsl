struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
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

var<private> global0: bool;

var<private> global1: vec2<i32>;

var<private> global2: array<bool, 10> = array<bool, 10>(true, true, true, false, false, true, false, false, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(561f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-542f, 1162f) * vec2<f32>(-1000f, 142f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, 642f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -2142f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1233f, 512f) * vec2<f32>(402f, -151f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-270f)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, 22873u, 21223u, u_input.b.x)), ~vec4<u32>(32123u, u_input.c.x, u_input.c.x, 1u)), reverseBits(u_input.b.x)), Struct_1(-689f));
    let var_1 = u_input.a;
    global1 = max(~abs(vec2<i32>(0i, -2147483647i)), firstLeadingBit(countOneBits(_wgslsmith_sub_vec2_i32(~var_1, vec2<i32>(74869i, -2147483647i)))));
    var var_2 = var_0.b;
    global1 = -_wgslsmith_mult_vec2_i32(var_1, u_input.a);
    return select(!(!vec4<bool>(all(vec3<bool>(arg_1.x, global2[_wgslsmith_index_u32(var_0.a.d, 10u)], false)), true, arg_0, global2[_wgslsmith_index_u32(var_0.a.e, 10u)])), select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], arg_1.x, true, false), select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_0, arg_0, true, arg_1.x), global2[_wgslsmith_index_u32(var_0.a.e, 10u)]), !vec4<bool>(arg_0, arg_1.x, false, true)), vec4<bool>(false, arg_1.x & true, !global2[_wgslsmith_index_u32(var_0.a.e, 10u)], global1.x > global1.x), arg_1.x), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(arg_1.x, true, global2[_wgslsmith_index_u32(1u, 10u)], true), true)), false), select(vec4<bool>(arg_1.x, true, any(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 10u)], arg_0), vec3<bool>(global2[_wgslsmith_index_u32(2523u, 10u)], arg_1.x, arg_0), vec3<bool>(arg_0, true, true))), !(0u < var_0.a.e)), select(!(!vec4<bool>(arg_1.x, arg_0, true, false)), select(!vec4<bool>(false, arg_1.x, true, arg_0), select(vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(0u, 10u)], arg_1.x, false), vec4<bool>(arg_1.x, arg_0, arg_0, global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), true), select(vec4<bool>(true, arg_0, false, true), vec4<bool>(false, false, arg_1.x, true), global2[_wgslsmith_index_u32(var_0.a.e, 10u)])), select(select(vec4<bool>(arg_1.x, true, false, arg_0), vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(77375u, 10u)], true, global2[_wgslsmith_index_u32(1u, 10u)]), arg_1.x), select(vec4<bool>(arg_0, true, arg_1.x, arg_0), vec4<bool>(false, arg_0, arg_0, arg_1.x), vec4<bool>(global2[_wgslsmith_index_u32(1u, 10u)], false, false, arg_0)), arg_1.x)), !vec4<bool>(global2[_wgslsmith_index_u32(58613u, 10u)], 1312u != u_input.c.x, true, arg_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(118f, _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 295f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a, 1302f, 676f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -799f, arg_1.a)), vec3<f32>(arg_1.a, arg_0.d.a, -421f))))));
    var var_1 = Struct_3(arg_0.d, _wgslsmith_f_op_vec2_f32(-var_0.xy), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-642f, -1022f)) - _wgslsmith_f_op_f32(f32(-1f) * -911f)) - _wgslsmith_f_op_f32(ceil(-716f)))), firstLeadingBit(~_wgslsmith_clamp_u32(4294967295u, arg_2.x, _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, arg_2.x)))), u_input.b.x);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, -1473f, var_0.x, -188f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a, 592f, -253f, var_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, 1000f, -1088f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-324f, 245f, -725f, 557f), vec4<f32>(-898f, var_1.a.a, arg_1.a, -374f), var_2.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(830f, var_1.a.a, -1599f, 1086f)))))))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -999f))), select(!select(!vec4<bool>(false, false, false, arg_0.c.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 10u)], var_2.b.x, global2[_wgslsmith_index_u32(arg_2.x, 10u)], var_2.c.x), all(vec4<bool>(false, false, true, false))), !vec4<bool>(true, true, all(vec4<bool>(var_2.c.x, global2[_wgslsmith_index_u32(arg_2.x, 10u)], global2[_wgslsmith_index_u32(52795u, 10u)], var_2.c.x)), false), !select(select(vec4<bool>(true, false, var_2.c.x, var_2.b.x), vec4<bool>(false, true, arg_0.e, true), arg_0.b), select(var_2.b, var_2.c, var_2.c), true)), var_2.c, var_2.d, !any(vec3<bool>(true, true, true)));
    return !vec4<bool>(!(!(global2[_wgslsmith_index_u32(var_1.e, 10u)] & var_2.b.x)), var_4.e, all(vec4<bool>(var_2.c.x, true, true, true)) || all(vec3<bool>(true, global2[_wgslsmith_index_u32(88505u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)])), all(vec4<bool>(arg_0.e, true, var_2.e, true)));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec2<f32> {
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(arg_1)), !select(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 10u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], true)), !vec4<bool>(arg_0, arg_0, true, arg_0), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_div_u32(u_input.c.x, u_input.c.x)), 10u)]), func_4(Struct_2(arg_1, select(!vec4<bool>(arg_0, true, global2[_wgslsmith_index_u32(22275u, 10u)], false), func_3(false, vec2<bool>(false, true)), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(1u, 10u)], false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], true, true, global2[_wgslsmith_index_u32(10683u, 10u)]), false)), select(select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, global2[_wgslsmith_index_u32(10564u, 10u)], false, arg_0), vec4<bool>(arg_0, true, arg_0, true)), func_3(true, vec2<bool>(global2[_wgslsmith_index_u32(0u, 10u)], false)), global2[_wgslsmith_index_u32(u_input.c.x, 10u)]), Struct_1(_wgslsmith_f_op_f32(max(1495f, arg_1))), false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))), select(min(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.c.x, 0u)), vec2<u32>(u_input.b.x, ~46606u), true)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-545f * 934f), _wgslsmith_f_op_f32(916f - _wgslsmith_f_op_f32(-213f - 1037f)), any(vec3<bool>(true, true, true))))), arg_1 == _wgslsmith_f_op_f32(f32(-1f) * -568f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a - arg_1), 1225f, global2[_wgslsmith_index_u32(u_input.b.x, 10u)])));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1399f, 877f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1165f, var_1.a), vec2<f32>(var_0.d.a, var_1.a))))));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = select(vec3<bool>(true, !any(func_4(Struct_2(920f, vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0, arg_0, arg_0), Struct_1(818f), false), Struct_1(-421f), u_input.b.xz)), func_3(true, !(!vec2<bool>(arg_0, arg_0))).x), !select(select(func_4(Struct_2(arg_1.x, vec4<bool>(arg_0, false, false, false), vec4<bool>(true, arg_0, true, true), Struct_1(1404f), arg_0), Struct_1(arg_1.x), u_input.c.zx).www, vec3<bool>(false, global2[_wgslsmith_index_u32(49785u, 10u)], false), true), vec3<bool>(false, true, -2147483647i == u_input.a.x), func_4(Struct_2(-713f, vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], false), vec4<bool>(arg_0, global2[_wgslsmith_index_u32(4294967295u, 10u)], arg_0, true), Struct_1(564f), arg_0), Struct_1(arg_1.x), vec2<u32>(4294967295u, 43293u)).xwx), !(!vec3<bool>(arg_0, true, arg_0)));
    global2 = array<bool, 10>();
    var var_1 = u_input.b;
    return Struct_1(643f);
}

fn func_1(arg_0: u32) -> u32 {
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.b << (~u_input.b % vec4<u32>(32u)), vec4<u32>(u_input.c.x, arg_0 | arg_0, u_input.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0, arg_0, 1u), u_input.b))), 10u)];
    global1 = min(vec2<i32>(-max(-44275i, _wgslsmith_div_i32(global1.x, 0i)), ~(~global1.x)), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, global1.x), i32(-1i) * -46238i));
    var var_0 = func_5(global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_0, u_input.c.x, u_input.b.x, 35826u)), ~u_input.b.x)), 10u)], _wgslsmith_f_op_vec2_f32(func_2(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, -557f)), _wgslsmith_f_op_f32(-896f + 968f)))))));
    global2 = array<bool, 10>();
    let var_1 = func_5(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a, 189f))), vec2<f32>(-114f, 321f)))))).a;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-select(vec3<i32>(-50196i, u_input.a.x << (39356u % 32u), _wgslsmith_clamp_i32(global1.x, global1.x, u_input.a.x)), firstLeadingBit(select(vec3<i32>(-17996i, global1.x, u_input.a.x), vec3<i32>(5682i, u_input.a.x, global1.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(u_input.c.x, 10u)], true))), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], false, true), !vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(32230u, 10u)]), global2[_wgslsmith_index_u32(func_1(34148u), 10u)])));
    let var_1 = Struct_4(Struct_3(func_5(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, 1343f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-488f, 462f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1236f, -404f), vec2<f32>(-727f, -1236f), vec2<bool>(true, global2[_wgslsmith_index_u32(3127u, 10u)]))))), func_5(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4826u, ~u_input.b.x), 10u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(125f, -1283f), vec2<f32>(-545f, 226f), vec2<bool>(true, false))) * vec2<f32>(-908f, -1825f))), 0u, max(min(~u_input.c.x, u_input.c.x), ~(u_input.b.x | 30526u))), func_5(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-252f, -305f), 1485f))));
    var var_2 = ~_wgslsmith_mult_vec4_u32(u_input.b, select(~(~vec4<u32>(3834u, var_1.a.e, 4294967295u, u_input.b.x)), select(vec4<u32>(91356u, var_1.a.d, u_input.c.x, u_input.b.x), ~vec4<u32>(0u, 50777u, u_input.c.x, 72904u), vec4<bool>(false, global2[_wgslsmith_index_u32(9402u, 10u)], global2[_wgslsmith_index_u32(u_input.c.x, 10u)], global2[_wgslsmith_index_u32(u_input.c.x, 10u)])), vec4<bool>(all(vec2<bool>(true, true)), select(global2[_wgslsmith_index_u32(u_input.c.x, 10u)], false, global2[_wgslsmith_index_u32(96323u, 10u)]), true, !global2[_wgslsmith_index_u32(49803u, 10u)])));
    var var_3 = Struct_3(func_5(false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.a.b)), _wgslsmith_f_op_vec2_f32(-var_1.a.b))), var_1.a.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.a * -455f))), abs(39845u), var_2.x);
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(-959f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.b.a)), -139f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.b.x)))), ~0u, 21182u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-1239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.a.a, -860f)))))));
}

