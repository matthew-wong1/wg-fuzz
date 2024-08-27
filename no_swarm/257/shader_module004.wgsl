struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    global0 = array<vec3<i32>, 27>();
    global0 = array<vec3<i32>, 27>();
    let var_0 = vec4<bool>(46907i <= ((u_input.c.x << (arg_0.a.x % 32u)) ^ -u_input.c.x), 1i < -u_input.c.x, !any(vec2<bool>(arg_0.a.x == 0u, true)), true);
    var var_1 = select(!select(!var_0.xy, vec2<bool>(var_0.x, false), !var_0.xw), select(!(!vec2<bool>(false, var_0.x)), vec2<bool>(true, true), !select(!var_0.wy, var_0.xw, vec2<bool>(var_0.x, var_0.x))), !(!var_0.x));
    var_1 = select(vec2<bool>(!(all(var_0.xx) && any(vec4<bool>(true, var_0.x, var_1.x, var_1.x))), !(all(vec2<bool>(false, var_1.x)) | var_0.x)), vec2<bool>(any(!select(var_0, var_0, var_0)), true), var_0.xx);
    return select(var_1.x & any(var_0.xz), var_1.x, var_0.x);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -141f), 1204f)), func_3(Struct_1(vec4<u32>(~u_input.b.x, abs(0u), 4294967295u, _wgslsmith_mod_u32(7331u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1718f, -1265f), vec2<f32>(-509f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(936f)))))), Struct_1(~vec4<u32>(0u, ~1u, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, -1062f))))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, false, false, false))), vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)));
    return vec3<bool>(false, var_0.d.x != true, false);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = !func_2();
    var_0 = !func_2();
    var var_1 = arg_0;
    var var_2 = arg_2.a.yx;
    global0 = array<vec3<i32>, 27>();
    return Struct_4(max(~1i, -20702i) & (_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, 12973i, -1i, u_input.c.x), vec4<i32>(var_1.a, u_input.c.x, u_input.c.x, 0i)) ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_1.a, u_input.c.x, 48275i), vec4<i32>(-10561i, -22149i, arg_0.a, u_input.c.x)), reverseBits(u_input.c.x), arg_0.a | 1i)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>) -> u32 {
    let var_0 = 1025i;
    return ~min(max(1u, u_input.b.x), 33487u);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = select(_wgslsmith_f_op_f32(ceil(arg_1)) <= arg_1, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), !all(vec4<bool>(true, true, true, true))) && select(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), true, false | select(true, true, -290f != arg_1));
    global0 = array<vec3<i32>, 27>();
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1)))) + _wgslsmith_f_op_f32(round(-455f))))), arg_1, true | any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false))));
    let var_2 = !select(vec3<bool>(-u_input.c.x > _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), func_2().x, reverseBits(u_input.c.x) <= (38162i << (u_input.a.x % 32u))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, 239f <= var_1, true), (var_1 <= -1000f) | any(vec3<bool>(true, false, true))), false);
    let var_3 = Struct_2(arg_1, all(var_2.zy), Struct_1(_wgslsmith_div_vec4_u32(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 129f), vec2<f32>(1146f, 855f))), vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(arg_1 + -408f))))), select(select(var_2, var_2, vec3<bool>(var_2.x, true, select(var_2.x, var_2.x, true))), select(!vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(any(vec2<bool>(var_2.x, true)), !var_2.x, var_2.x), var_2.x), vec3<bool>(true, var_2.x, var_2.x)), !(!(!select(vec4<bool>(var_2.x, false, true, false), vec4<bool>(true, var_2.x, var_2.x, true), false))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.a.yyx | vec3<u32>(~1u, u_input.a.x, ~18048u));
    let var_1 = -u_input.c.x;
    var var_2 = 2233u;
    var_2 = ~select(u_input.b.x, var_0.x, true);
    var var_3 = ~vec2<u32>(firstLeadingBit(~25487u), u_input.b.x << (~var_0.x % 32u));
    var_2 = abs(u_input.b.x);
    var var_4 = func_5(func_4(func_1(Struct_4(var_1), vec4<f32>(_wgslsmith_f_op_f32(-712f * -1524f), _wgslsmith_f_op_f32(step(796f, -530f)), _wgslsmith_f_op_f32(1319f * -450f), -349f), Struct_1(vec4<u32>(17246u, 0u, 4294967295u, 4294967295u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-411f, -813f), vec2<f32>(-1096f, 497f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 294f, -576f)))), _wgslsmith_div_vec3_f32(vec3<f32>(545f, 1175f, -1483f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1016f, -1174f, -1380f), vec3<f32>(1064f, 471f, -843f), vec3<bool>(true, false, false))))))), 654f, (select(_wgslsmith_add_vec4_u32(u_input.a, u_input.a), vec4<u32>(4294967295u, 0u, u_input.a.x, 0u) | vec4<u32>(9171u, 4294967295u, 0u, u_input.b.x), vec4<bool>(true, false, false, true)) ^ (vec4<u32>(var_0.x, u_input.b.x, var_0.x, u_input.b.x) | _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(1086u, var_0.x, u_input.b.x, var_0.x)))) & ~max(vec4<u32>(15809u, u_input.a.x, var_0.x, 0u), vec4<u32>(12903u, 71549u, var_0.x, 26994u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, u_input.a.xzw);
}

