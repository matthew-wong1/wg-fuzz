struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_2(!vec4<bool>(global0.a.x, !(!global0.c.x), true, all(select(vec3<bool>(false, global0.b, global0.a.x), vec3<bool>(global0.c.x, global0.c.x, global0.a.x), vec3<bool>(true, true, false)))), !all(global0.a.yzz), global0.a.zzy, global0.d);
    var var_1 = select(select(!global0.a.yy, select(vec2<bool>(!global0.b, var_0.a.x), select(global0.a.wy, select(global0.a.zy, vec2<bool>(global0.b, false), false), global0.c.yx), select(vec2<bool>(true, true), !vec2<bool>(false, var_0.a.x), global0.a.zz)), global0.c.zy), var_0.a.xy, !global0.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-442f + global0.d.a.x), global0.d.a.x, 1272f, _wgslsmith_f_op_f32(sign(913f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.a.x, var_0.d.a.x, -842f, var_0.d.a.x) - vec4<f32>(var_0.d.a.x, 498f, 335f, -605f))))) - vec4<f32>(315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.d.a.x)) + var_0.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-593f)) - _wgslsmith_f_op_f32(-2040f * 503f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.a.x, 1044f)))))));
    let var_3 = -729f;
    var var_4 = 1i;
    return u_input.a.x ^ ~var_0.d.b.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> u32 {
    let var_0 = -240f;
    global0 = Struct_2(!vec4<bool>(true, true, !(!arg_0.x), true), !(!(45136u <= countOneBits(u_input.c))), vec3<bool>(false, !all(select(vec2<bool>(true, arg_0.x), arg_0.xz, vec2<bool>(global0.c.x, global0.a.x))), !all(!global0.a.yzx)), global0.d);
    let var_1 = 0i | min(global0.d.b.x, global0.d.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-591f, var_0))), _wgslsmith_add_vec2_i32(global0.d.b, ~(-u_input.a)), max(_wgslsmith_mult_u32(~firstLeadingBit(0u), ~u_input.c), 38082u), min(global0.d.c, global0.d.c));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.d.a * vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1179f - global0.d.a.x)))), vec2<i32>(-(~(-44020i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-15200i, arg_1, var_2.b.x), -vec3<i32>(0i, 18888i, 0i))) ^ _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(~global0.d.b, global0.d.b), _wgslsmith_mod_vec2_i32(var_2.b, vec2<i32>(arg_1, -1i))), var_2.c, max(firstLeadingBit(47465u), var_2.d));
    return var_3.c;
}

fn func_2() -> Struct_2 {
    let var_0 = ~(-5229i);
    let var_1 = Struct_2(global0.a, false, vec3<bool>(!any(vec2<bool>(global0.c.x, global0.c.x)), !any(select(global0.c.yy, vec2<bool>(global0.a.x, false), global0.c.xx)), false), global0.d);
    global0 = var_1;
    var var_2 = vec4<u32>(global0.d.c, ~reverseBits(func_4(global0.a, func_3(global0.d.b.x))), 1u, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global0.d.d, 52369u, 21953u, 18325u)), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(35918u), 40203u ^ u_input.c, 0u, global0.d.d), ~select(vec4<u32>(var_1.d.c, u_input.b, 0u, global0.d.c), vec4<u32>(u_input.b, 0u, 4294967295u, global0.d.d), global0.c.x))));
    var var_3 = global0.d;
    return var_1;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(floor(var_0.d.a.x));
    var var_2 = -global0.d.b.x;
    var_2 = abs(u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 598f, -507f, 849f)))))))));
    return Struct_2(func_2().a, global0.b, global0.a.yzy, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(global0.d.a)))), -vec2<i32>(53950i, -1i) & _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, var_0.d.b.x), -global0.d.b, var_0.d.b), ~global0.d.d, abs(global0.d.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = func_1();
    var var_1 = Struct_2(!vec4<bool>(true, !var_0.c.x, var_0.a.x && all(vec2<bool>(false, global0.b)), all(select(global0.a, var_0.a, var_0.a))), true, global0.c, func_2().d);
    let var_2 = var_0.d;
    var var_3 = var_1.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.d.a, var_2.a)), var_1.d.a)) - _wgslsmith_f_op_vec2_f32(func_1().d.a * var_0.d.a)), global0.d.c, ~abs(abs(vec2<u32>(1u, var_1.d.d)) | _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d.d, var_1.d.d), vec2<u32>(var_1.d.d, 1u))));
}

