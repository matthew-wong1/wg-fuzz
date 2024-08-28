struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> vec2<bool> {
    return vec2<bool>(true, (u_input.a << (~_wgslsmith_add_u32(26338u, 52126u) % 32u)) <= 47672i);
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = !(!(!select(!vec2<bool>(true, arg_0), func_2(vec2<i32>(0i, u_input.a), Struct_3(global0.a)), func_2(vec2<i32>(-2147483647i, u_input.a), Struct_3(global0.a)))));
    let var_1 = select(min(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, u_input.a)), -(~vec2<i32>(u_input.a, u_input.a))), vec2<i32>(9202i, u_input.a), !vec2<bool>(u_input.a > u_input.a, true)) << ((vec2<u32>(_wgslsmith_mod_u32(36527u, ~32022u), 69491u) | min(select(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 66836u), false) ^ vec2<u32>(0u, 4294967295u), ~select(vec2<u32>(35990u, 12658u), vec2<u32>(17017u, 38257u), arg_0))) % vec2<u32>(32u));
    global0 = Struct_3(global0.a);
    let var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(var_1, var_1), ~select(_wgslsmith_add_vec2_i32(~var_1, -var_1), ~vec2<i32>(var_1.x, 51062i), all(vec4<bool>(var_0.x, var_0.x, false, false))), vec2<i32>(max(var_1.x, -2147483647i), var_1.x & _wgslsmith_mod_i32(0i, 53652i)));
    let var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1747f, global0.a.x)) + -1506f))), 883f, 1000f, global0.a.x));
    return var_3;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_4) -> u32 {
    global0 = arg_2.a;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(1348f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_2.a.a.x, arg_0.x, false)))))), _wgslsmith_f_op_f32(func_1(_wgslsmith_div_f32(-1976f, global0.a.x) >= -1915f).a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x)))), _wgslsmith_div_f32(2012f, arg_0.x));
    global0 = func_1(all(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), all(vec2<bool>(false, true)))));
    var var_1 = vec3<i32>(-2147483647i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -22705i, arg_1.x), ~vec3<i32>(-1i, u_input.a, arg_1.x)) ^ _wgslsmith_clamp_i32(-7165i, u_input.a, -23583i)), _wgslsmith_dot_vec3_i32(-arg_1.zwy, arg_1.wzw));
    let var_2 = Struct_2(all(vec3<bool>(all(vec2<bool>(true, true)), true, false)), Struct_1(firstLeadingBit(vec2<u32>(1u, 1u)), global0.a), firstLeadingBit(~(~1u)));
    return ~(~(~10640u << (var_2.b.a.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) * 1324f);
    global0 = Struct_3(global0.a);
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, global0.a.x, -826f, global0.a.x))))));
    let var_1 = Struct_2(true, Struct_1(abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(72446u, 4294967295u), vec2<u32>(1u, 0u)))), vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.a.x, var_0)), ~_wgslsmith_div_u32(4294967295u, ~1u));
    global0 = func_1(true);
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b.b + vec4<f32>(_wgslsmith_f_op_f32(select(var_1.b.b.x, var_1.b.b.x, false)), 1113f, _wgslsmith_f_op_f32(427f + 1190f), var_1.b.b.x))));
    let var_2 = _wgslsmith_f_op_f32(global0.a.x * -308f);
    let var_3 = ~func_3(var_1.b.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 27333i), vec4<i32>(-10669i, -19882i, -34598i, u_input.a)), min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 36431i)), u_input.a), 2147483647i, -firstLeadingBit(u_input.a)), Struct_4(Struct_3(vec4<f32>(-1833f, global0.a.x, -393f, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(firstTrailingBit(var_3 | 45611u), 8854u, 22040u), ~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 50518u, 4294967295u), vec3<u32>(var_3, 4294967295u, 42633u) ^ vec3<u32>(var_1.b.a.x, 4294967295u, var_1.c))), _wgslsmith_mod_i32(u_input.a, -1i), -vec4<i32>(-1i, i32(-1i) * -u_input.a, 12782i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-8819i, u_input.a, -1i), vec3<i32>(u_input.a, 1i, u_input.a)))), -((i32(-1i) * -36922i) << ((var_3 | _wgslsmith_clamp_u32(var_1.b.a.x, 1u, var_1.c)) % 32u)));
}

