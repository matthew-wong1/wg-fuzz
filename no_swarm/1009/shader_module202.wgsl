struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -38108i;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) + _wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-559f + arg_3.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x - 546f) * arg_3.a.x)), -673f));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + -516f))), -1680f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x + -900f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 1000f) * var_0.x))));
    var_0 = arg_3.a.wxz;
    global0 = u_input.d.x;
    var var_1 = u_input.d;
    return vec3<bool>(arg_3.b, arg_3.b, true);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1094f, arg_1))), 722f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1219f, arg_1, _wgslsmith_f_op_f32(min(1775f, arg_1)), _wgslsmith_f_op_f32(max(-637f, 217f)))))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(635f * arg_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-304f + var_0.a.x))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, var_0.a.x))))));
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1186f + var_1.x))))), _wgslsmith_f_op_f32(865f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1000f))))), var_1.x, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * _wgslsmith_f_op_f32(ceil(-1048f))))), any(!(!select(vec4<bool>(var_0.b, arg_0.a.x, false, true), vec4<bool>(var_0.b, false, var_0.b, true), true))));
    var var_3 = _wgslsmith_dot_vec2_u32(u_input.a.yz, select(vec2<u32>(u_input.e, _wgslsmith_mod_u32(~40478u, ~37445u)), ~vec2<u32>(4294967295u, u_input.a.x) >> (~u_input.a.yx % vec2<u32>(32u)), vec2<bool>(!(true | arg_0.a.x), !arg_0.a.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1747f, _wgslsmith_f_op_f32(-var_2.a.x)));
    return select(!vec4<bool>(!var_0.b, false || global1.x, var_2.b, true), vec4<bool>(any(!select(vec3<bool>(true, arg_0.a.x, global1.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(true, false, global1.x))), false, select(any(func_3(u_input.a.x, u_input.a.x, Struct_1(1003f, u_input.a.yz, vec4<f32>(892f, -419f, 277f, var_0.a.x)), Struct_4(var_0.a, false))), global1.x, !(!global1.x)), any(!select(vec4<bool>(arg_0.a.x, global1.x, true, global1.x), vec4<bool>(global1.x, false, false, true), vec4<bool>(false, var_0.b, true, var_0.b)))), any(!vec3<bool>(!arg_0.a.x, 0u > u_input.a.x, var_1.x == var_4.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    global1 = select(vec3<bool>(arg_0.x <= arg_0.x, (-1965f >= _wgslsmith_f_op_f32(step(-701f, 155f))) & global1.x, true || any(!vec3<bool>(global1.x, global1.x, global1.x))), select(!select(vec3<bool>(false, false, true), !vec3<bool>(global1.x, true, global1.x), false), vec3<bool>(true, global1.x || global1.x, all(func_2(Struct_2(vec2<bool>(global1.x, true)), -488f, u_input.c))), select(vec3<bool>(global1.x, !global1.x, global1.x & false), select(!vec3<bool>(global1.x, global1.x, true), func_2(Struct_2(global1.yy), -471f, -48221i).xyy, !vec3<bool>(false, global1.x, true)), !select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, false, true), false))), !select(select(!vec3<bool>(true, false, global1.x), vec3<bool>(true, global1.x, global1.x), func_3(arg_0.x, 0u, Struct_1(103f, vec2<u32>(1u, 0u), vec4<f32>(680f, -1612f, -1503f, 126f)), Struct_4(vec4<f32>(-231f, 1197f, 794f, 396f), global1.x))), select(vec3<bool>(true, global1.x, global1.x), !vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, true, false)), !vec3<bool>(false, global1.x, true)));
    global0 = 25570i;
    let var_0 = _wgslsmith_f_op_f32(194f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-114f + -507f))) * 308f));
    global1 = vec3<bool>(false && all(vec4<bool>(all(vec4<bool>(false, global1.x, global1.x, true)), true, true, global1.x)), func_2(Struct_2(select(global1.zx, select(global1.zx, global1.zz, false), global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -305f), ~(_wgslsmith_mod_i32(u_input.d.x, u_input.c) >> (1u % 32u))).x, true);
    global1 = vec3<bool>(!(!(_wgslsmith_mult_i32(u_input.c, -13553i) < (u_input.d.x >> (u_input.a.x % 32u)))), true, !(any(vec4<bool>(false, true, global1.x, false)) || false));
    return 56174u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(1650f)), select(_wgslsmith_clamp_vec2_u32(u_input.a.xy, _wgslsmith_sub_vec2_u32(min(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.e, u_input.a.x)), u_input.a.xx), ~(~vec2<u32>(u_input.a.x, u_input.a.x))), reverseBits(abs(u_input.a.yx)) ^ ~vec2<u32>(45443u, 1u), vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-340f, _wgslsmith_f_op_f32(f32(-1f) * -195f), 279f, _wgslsmith_f_op_f32(1644f - -287f)), vec4<f32>(-436f, -1496f, -1000f, _wgslsmith_div_f32(1371f, 140f))))));
    var var_1 = _wgslsmith_f_op_f32(floor(378f));
    let var_2 = Struct_1(var_0.a, u_input.a.xy | _wgslsmith_mod_vec2_u32(var_0.b & ~u_input.a.zz, vec2<u32>(func_1(var_0.b, 4294967295u), ~var_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(var_0.c.x, -124f, var_0.c.x, var_0.a))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(var_0.a, -1347f, -1592f, 1676f)), vec4<f32>(var_0.a, 921f, var_0.c.x, -1000f))))));
    var var_3 = vec3<bool>(true, true, true);
    var var_4 = var_2.b.x;
    var_0 = Struct_1(-731f, u_input.a.xy, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.b, vec2<u32>(var_2.b.x, 4294967295u) | _wgslsmith_add_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, var_0.b.x))), vec2<u32>(1u, select(var_2.b.x, 0u, var_3.x) << ((0u & var_0.b.x) % 32u))));
}

