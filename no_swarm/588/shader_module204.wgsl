struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(362f, -583f, 1692f);

var<private> global1: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true), _wgslsmith_f_op_f32(step(1360f, global0.x)) <= global0.x), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec4<bool>(false, true, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(any(vec3<bool>(false, false, false)), true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))));
    global1 = abs(~4773u);
    global1 = ~u_input.d.x;
    var var_1 = select(vec4<i32>(u_input.e.x, ~(i32(-1i) * -12906i), -32863i, ~u_input.e.x) >> (max(select(firstLeadingBit(u_input.a), vec4<u32>(u_input.a.x, 10746u, 1409u, u_input.c), vec4<bool>(var_0.x, true, false, false)), ~u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.e.x, u_input.e.x, _wgslsmith_mult_i32(0i, u_input.e.x), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.e.x, -2147483647i), vec3<i32>(27668i, 1i, u_input.e.x)))) & -(~(vec4<i32>(u_input.e.x, -1i, -3064i, u_input.e.x) >> (u_input.a % vec4<u32>(32u)))), !(!(!(!vec4<bool>(true, var_0.x, var_0.x, false)))));
    let var_2 = vec4<u32>(select(~select(u_input.d.x, u_input.c, !var_0.x), u_input.b.x, true), ~_wgslsmith_mult_u32(firstLeadingBit(u_input.b.x), _wgslsmith_sub_u32(u_input.d.x >> (u_input.b.x % 32u), u_input.d.x)), u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x >> (u_input.b.x % 32u), ~u_input.b.x, u_input.d.x) >> (abs(u_input.d.x | u_input.a.x) % 32u), 19340u));
    return true;
}

fn func_2(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f + 277f)), global0.x, _wgslsmith_f_op_f32(arg_0.e.x - -983f), 259f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(253f)) + _wgslsmith_f_op_f32(-global0.x)), 923f))), select(select(arg_0.a, select(select(vec3<bool>(arg_0.a.x, true, false), vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0.a), arg_0.a, arg_0.a.x), !arg_0.a), arg_0.a, func_3() == false), u_input.e.x, arg_0.a);
    var var_2 = u_input.d.x;
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-431f, -548f, _wgslsmith_f_op_f32(-259f - global0.x), _wgslsmith_f_op_f32(min(858f, 501f))), vec4<f32>(_wgslsmith_f_op_f32(256f + -251f), _wgslsmith_f_op_f32(trunc(252f)), global0.x, _wgslsmith_f_op_f32(global0.x * -2226f)))) * _wgslsmith_f_op_vec4_f32(var_1.a - arg_0.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yy)), select(!arg_0.a, select(arg_0.a, vec3<bool>(true, 30329u >= u_input.b.x, any(arg_0.a)), !vec3<bool>(true, var_1.e.x, arg_0.a.x)), var_1.e), ~_wgslsmith_mult_i32(var_1.d, 21802i), select(vec3<bool>(var_1.e.x, false, select(var_1.e.x, 1i < arg_0.b.x, 265f <= arg_0.e.x)), arg_0.a, !select(var_1.c, vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), select(vec3<bool>(false, var_1.e.x, false), arg_0.a, false))));
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.zx)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-827f, var_1.b.x), _wgslsmith_f_op_f32(-global0.x)))), var_1.e, u_input.e.x, !select(!(!arg_0.a), vec3<bool>(true, true, true), select(var_1.c, vec3<bool>(arg_0.a.x, true, false), func_3())));
    return _wgslsmith_f_op_vec4_f32(-var_3.a);
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    var var_1 = ~(~u_input.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1029f, -409f, 1062f) + vec4<f32>(404f, -904f, global0.x, global0.x)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -1233f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec3<bool>(false, true, true), vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<u32>(u_input.d.x, u_input.a.x, u_input.b.x), vec3<u32>(42599u, 21988u, 4613u), vec4<f32>(770f, global0.x, global0.x, -598f)))))), var_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(max(-941f, -697f)))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -547f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * _wgslsmith_f_op_vec2_f32(-global0.zx)))), select(!vec3<bool>(any(vec2<bool>(var_0, var_0)), false, var_0), select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, var_0), true), select(!vec3<bool>(false, false, var_0), !vec3<bool>(var_0, true, var_0), var_0)), !all(vec3<bool>(var_0, var_0, true))), u_input.e.x, !select(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, false, true), vec3<bool>(var_0, false, true)), vec3<bool>(false, true, true), var_0));
    let var_3 = var_2.d;
    let var_4 = vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.x))))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, -786f, -1339f, -328f), vec4<f32>(var_4.x, -1003f, var_2.a.x, var_2.b.x), var_0)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_div_f32(142f, 867f), _wgslsmith_f_op_f32(global0.x - var_4.x), var_2.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1927f, global0.x, 2191f, -634f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_2.b, _wgslsmith_div_vec2_f32(vec2<f32>(1001f, var_2.a.x), var_4)))), select(!var_2.c, var_2.c, select(select(vec3<bool>(false, var_2.e.x, false), var_2.e, vec3<bool>(true, true, true)), select(vec3<bool>(false, var_2.e.x, false), var_2.c, vec3<bool>(true, var_0, false)), select(var_2.e, !var_2.e, select(var_2.e, vec3<bool>(var_2.c.x, true, false), false)))), -(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_2.d, var_2.d, -1i), vec4<i32>(u_input.e.x, var_2.d, var_2.d, 10182i)), vec4<i32>(7520i, 32409i, u_input.e.x, var_2.d) >> (vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.b.x) % vec4<u32>(32u)))), var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global0.x + global0.x);
    let var_1 = any(vec4<bool>(false, true, true, all(vec4<bool>(false, false, true, false)) & any(vec2<bool>(true, true))));
    let var_2 = ~firstLeadingBit(~(~vec2<u32>(1969u, u_input.a.x)));
    var var_3 = vec4<bool>(all(select(vec4<bool>(!var_1, true, true, var_1), !vec4<bool>(var_1, var_1, false, true), -785f > global0.x)), all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, var_1, false), vec3<bool>(var_1, false, true)), vec3<bool>(true, true, true), !vec3<bool>(false, var_1, var_1)), select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, var_1), vec3<bool>(true, false, var_1)), vec3<bool>(true, true, false), select(vec3<bool>(true, var_1, false), vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, true))), !vec3<bool>(true, false, var_1))), firstLeadingBit(min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.x), var_2), 38306u)) > ~abs(~u_input.a.x), var_1);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-292f - global0.x), -1200f, _wgslsmith_f_op_f32(-global0.x));
    var var_4 = func_1();
    var_4 = func_1();
    let var_5 = var_4.c.x;
    global0 = vec3<f32>(1f, var_4.a.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, max(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, var_2.x, var_2.x), vec4<u32>(0u, u_input.b.x, 1u, var_2.x)) >> (26900u % 32u), 1u), abs(~_wgslsmith_add_vec2_u32(u_input.d.zy, u_input.a.xx))), u_input.e);
}

