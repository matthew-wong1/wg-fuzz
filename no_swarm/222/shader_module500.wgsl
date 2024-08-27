struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global1 = !select(select(!(!vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(true, true, !global1.x), reverseBits(u_input.a.x) < 0u), vec3<bool>(global1.x, !all(global1.zz), any(select(vec4<bool>(false, true, global1.x, true), vec4<bool>(false, true, global1.x, global1.x), global1.x))), all(vec3<bool>(global1.x, global1.x, true)));
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    global1 = select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(all(global1.yz), !(true | global1.x), global1.x), vec3<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_div_u32(~u_input.b.x, u_input.c.x) != 1u, true));
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1069f, 144f, -672f, -225f), vec4<f32>(1000f, 488f, -2017f, 371f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(456f, -671f, -161f, -853f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(592f, 2019f, -837f, 979f), vec4<f32>(-846f, -801f, 408f, 768f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(264f, -110f, -1599f, 385f), vec4<f32>(457f, -1018f, 1456f, -185f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, 124f, 1470f, 248f))), all(vec4<bool>(false, global1.x, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, -650f, -146f, 911f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(112f, -616f, -501f, -2517f))), true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -331f))))));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-arg_0));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1412f)));
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_3()), arg_0, _wgslsmith_f_op_f32(145f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-1010f - -210f))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(func_3()))), vec4<u32>(15115u, u_input.c.x, max(abs(~u_input.c.x), 29655u), ~4294967295u), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, u_input.a.x), 75216u), 4294967295u, Struct_1(~vec2<u32>(u_input.c.x, 4294967295u), ~_wgslsmith_sub_u32(31916u ^ u_input.a.x, u_input.c.x), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.x, var_0.x), !(!(!vec4<bool>(global1.x, global1.x, global1.x, global1.x))), firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.a.x) >> (u_input.c.x % 32u))));
    var var_3 = Struct_1(vec2<u32>(min(_wgslsmith_mult_u32(24348u, u_input.b.x), ~58467u) << (_wgslsmith_div_u32(6098u, ~53424u) % 32u), var_2.c), var_2.e.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), -1000f, _wgslsmith_f_op_f32(var_0.x - arg_0), -871f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1053f, arg_0, -469f, -2010f))) * var_2.e.c), var_2.e.d, 1u);
    var var_4 = select(!(!select(select(var_3.d.wzy, vec3<bool>(global1.x, false, true), var_2.e.d.yww), !var_3.d.xyw, true)), select(select(var_2.e.d.wyw, !var_3.d.xyx, vec3<bool>(true, true, true)), select(select(!var_3.d.wyx, select(vec3<bool>(true, false, var_2.e.d.x), var_2.e.d.zzx, true), vec3<bool>(false, false, var_3.d.x)), !vec3<bool>(var_3.d.x, global1.x, false), vec3<bool>(var_3.d.x, !global1.x, arg_0 >= -1000f)), select(var_2.e.d.wyx, vec3<bool>(any(vec3<bool>(global1.x, var_3.d.x, true)), true, all(global1.yx)), !var_3.d.x)), true);
    return (global1.x | var_3.d.x) & var_2.e.d.x;
}

fn func_1() -> Struct_3 {
    global1 = vec3<bool>(!func_2(-1401f) | !global1.x, all(global1.xy) == all(!global1.yz), !(_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(4545u, u_input.a.x, 4294967295u)) <= u_input.b.x));
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1334f, -387f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-360f, -981f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1293f, 104f, -1059f, -1000f) - vec4<f32>(1596f, 390f, -528f, 1262f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, 124f, 289f, -630f)))))), u_input.c, _wgslsmith_clamp_u32(1u, u_input.a.x, ~(~abs(9969u))), select(1u, ~u_input.a.x, all(vec4<bool>(true, true, global1.x, global1.x))), Struct_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~35110u), u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(-1318f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -994f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1515f, 846f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1159f) + _wgslsmith_f_op_f32(step(-629f, -1000f)))), !(!select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), global1.x)), 565u));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(25358i, 2147483647i, 10514i, 30971i), vec4<i32>(1i, 1i, 1i, 1i)) ^ 9078i, -1i, 2147483647i), max(select(1i, -17325i, abs(4294967295u) < _wgslsmith_dot_vec2_u32(var_0.b.yw, vec2<u32>(18206u, u_input.c.x))), -17253i));
    let var_2 = Struct_2(!var_0.e.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.a.wx + _wgslsmith_f_op_vec2_f32(min(var_0.e.c.yx, vec2<f32>(var_0.e.c.x, var_0.a.x)))))) + _wgslsmith_f_op_vec2_f32(-var_0.e.c.zw)));
    let var_3 = ~vec2<u32>(u_input.c.x, var_0.c);
    return Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) + _wgslsmith_div_vec4_f32(var_0.e.c, var_0.e.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1616f, 807f, var_2.b.x, var_2.b.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e.c * var_0.a) + var_0.e.c)), !(!(!var_0.e.d)))), firstTrailingBit(var_0.b), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.x, var_0.e.b, 72930u), vec4<u32>(0u, u_input.a.x, var_0.b.x, 0u))), reverseBits(~var_3.x) & ~(~(var_0.d | 53914u)), var_0.e);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> bool {
    var var_0 = _wgslsmith_div_i32(~firstLeadingBit(~(i32(-1i) * -12989i)), _wgslsmith_dot_vec2_i32(~countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 31835i), vec2<i32>(77162i, 40230i))), vec2<i32>(30455i, 13450i)));
    var var_1 = arg_1.e;
    var_0 = ~(-countOneBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(-2770i, -1i), _wgslsmith_sub_i32(-24121i, -2147483647i))));
    global0 = array<Struct_2, 22>();
    return arg_1.e.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(true, (_wgslsmith_f_op_f32(trunc(-1000f)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-160f - -378f)))) || func_4(vec3<u32>(~4294967295u, 1u, u_input.a.x), func_1()), false);
    global1 = !vec3<bool>(global1.x, !global1.x, true);
    global1 = !func_1().e.d.wyz;
    var var_0 = abs(-40636i);
    var var_1 = Struct_2(vec4<bool>(all(vec3<bool>(global1.x | global1.x, any(vec4<bool>(false, true, global1.x, global1.x)), all(vec4<bool>(global1.x, false, global1.x, global1.x)))), true, any(!select(global1.yz, vec2<bool>(global1.x, false), vec2<bool>(false, false))), global1.x | true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2023f, -1047f) + vec2<f32>(889f, -572f)) * vec2<f32>(936f, 529f)), vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-529f, -1048f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -637f)))))))));
    let var_2 = -1967f;
    let x = u_input.a;
    s_output = StorageBuffer(-41280i, u_input.c.x | u_input.b.x);
}

