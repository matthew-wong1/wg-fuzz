struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool>;

var<private> global2: vec4<f32> = vec4<f32>(-1000f, 313f, 677f, 1138f);

var<private> global3: Struct_1;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_2;
    let var_1 = ~_wgslsmith_add_i32(~_wgslsmith_add_i32(2147483647i, u_input.c.x ^ -35669i), arg_0);
    var_0 = arg_2;
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~global0.b.c.x, var_0.a, 41393u, var_0.a), vec4<u32>(arg_2.a, _wgslsmith_dot_vec3_u32(~countOneBits(global3.c), _wgslsmith_div_vec3_u32(max(global0.c, global0.b.c), ~global0.c)), ~(~abs(global0.c.x)), firstLeadingBit(~78782u)));
    var_2 = 175u;
    return select(~var_0.a, ~43751u & var_0.a, all(select(select(global0.b.d, !vec4<bool>(false, global3.d.x, global0.b.d.x, true), true), !select(vec4<bool>(global0.b.d.x, true, global1.x, false), global3.d, global0.b.d.x), vec4<bool>(!global3.d.x, !global3.d.x, true, global3.d.x))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(-2010f, vec2<f32>(_wgslsmith_f_op_f32(round(global0.b.b.x)), global2.x), global0.b.c, vec4<bool>(true, false, any(!global1.zz), false), _wgslsmith_dot_vec3_u32(vec3<u32>(7089u, 65631u, func_3(8815i, vec2<f32>(-378f, -1516f), Struct_3(4294967295u), vec4<f32>(global2.x, 1139f, global0.b.a, -1000f))), select(_wgslsmith_div_vec3_u32(vec3<u32>(global3.e, global3.c.x, 50867u), global3.c), vec3<u32>(global0.b.c.x, global0.b.e, 1u), vec3<bool>(global1.x, true, global3.d.x))) >> (global0.c.x % 32u));
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.x))), 282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a)), var_0.b.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1574f, 1418f, global4.x, global0.b.a) * vec4<f32>(-1117f, 141f, -741f, 892f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, global4.x, global2.x, -908f), vec4<f32>(1525f, global0.b.b.x, -726f, -1285f), false)) - vec4<f32>(global2.x, global3.b.x, global3.b.x, -700f)))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-637f, -874f, global2.x, -813f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1143f, var_0.a, -693f))))));
    let var_1 = Struct_2(34224i, global0.b, global0.b.c);
    var var_2 = Struct_4(vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.x)) * -1986f))));
    return Struct_2(var_1.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * var_1.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global0.b.b, var_0.b), global3.b, global1.x && global0.b.d.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(214f, global0.b.a) + vec2<f32>(-986f, -1219f)), _wgslsmith_f_op_vec2_f32(-var_1.b.b))), !select(var_2.a, vec2<bool>(global0.b.d.x, global0.b.d.x), var_2.a))), global0.c, select(vec4<bool>(all(vec4<bool>(true, true, var_2.a.x, true)), true, u_input.b.x >= var_1.a, global1.x), select(vec4<bool>(var_0.d.x, false, global0.b.d.x, true), vec4<bool>(true, false, global1.x, false), var_0.d.x & false), var_1.b.d), select(0u & ~var_0.e, var_1.c.x, true)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(global0.c.x, 4294967295u, 0u), var_0.e, global3.c.x), vec3<u32>(firstLeadingBit(var_0.e), ~var_1.c.x, countOneBits(global0.b.e))), vec3<u32>(13859u, ~1u, ~74997u)));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<u32> {
    let var_0 = true;
    let var_1 = -1461f;
    global0 = func_2();
    let var_2 = select(abs(-max(global0.a, -2147483647i)), -_wgslsmith_sub_i32(u_input.c.x, i32(-1i) * -46667i), false);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(func_2().b.a, _wgslsmith_f_op_f32(trunc(arg_1))))));
    return vec3<u32>(~global3.e, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(_wgslsmith_clamp_u32(74802u, global3.c.x, global0.b.e)), ~(~5382u)), global3.c.x), ~18896u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~(~_wgslsmith_mult_u32(1u, global3.c.x) | global0.c.x));
    global4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, _wgslsmith_f_op_f32(min(-324f, -1642f)), -562f, global0.b.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.b.x, 226f, global0.b.a, global0.b.b.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b.x, -1000f, global2.x, 140f))))) - vec4<f32>(_wgslsmith_div_f32(-993f, global0.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, 276f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * global4.x), _wgslsmith_f_op_f32(636f * -1084f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f - -549f)), _wgslsmith_f_op_f32(-760f + 1000f), 2404f)));
    let var_1 = Struct_1(-844f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.b)), func_1(1368f, global2.x), vec4<bool>(!(!(true || global0.b.d.x)), global3.d.x, global0.b.d.x, global3.d.x & all(vec4<bool>(true, global3.d.x, false, global3.d.x))), global3.c.x);
    global0 = Struct_2(37306i, var_1, (var_1.c >> (~vec3<u32>(global0.c.x, var_0.a, 0u) % vec3<u32>(32u))) >> (vec3<u32>(2058u, var_1.e, 15230u) % vec3<u32>(32u)));
    var var_2 = 1i > ~(i32(-1i) * -u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, 840f, global0.b.b.x, global2.x) * vec4<f32>(global4.x, -1830f, -488f, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1326f, global4.x, 109f, var_1.a) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(318f, global2.x, var_1.a, global4.x)))), global0.b.d)))), 2147483647i, global0.b.a, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.e, var_1.c.x, var_1.c.x), global0.b.c) << (global3.e % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e, global3.c.x), vec2<u32>(4294967295u, var_0.a)), _wgslsmith_add_u32(90228u, var_0.a))), 25825u | _wgslsmith_mod_u32(global3.c.x, var_0.a), _wgslsmith_sub_u32(1u, var_0.a)));
}

