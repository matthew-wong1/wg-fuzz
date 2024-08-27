struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: bool;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: f32, arg_3: i32) -> bool {
    var var_0 = u_input.d;
    let var_1 = ~(arg_3 >> (min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 4294967295u, u_input.a, arg_1.c.x) ^ vec4<u32>(0u, u_input.e, 6869u, 0u), vec4<u32>(arg_1.a.b.x, arg_1.a.b.x, arg_1.c.x, 53653u)), 0u) % 32u));
    let var_2 = !any(select(arg_1.b, select(!vec3<bool>(arg_1.b.x, false, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, false, arg_1.b.x)), select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<bool>(true, false, false), arg_1.b.x)));
    var var_3 = Struct_1(arg_0, abs(arg_1.a.b));
    var var_4 = -5435i;
    return arg_1.b.x;
}

fn func_3() -> bool {
    global0 = any(!select(vec3<bool>(false, any(vec3<bool>(false, false, false)), 64353i <= u_input.d), vec3<bool>(true, u_input.d <= 44105i, true), true));
    global0 = !func_1(u_input.c ^ 22007i, Struct_5(Struct_1(-1i, vec3<u32>(21411u, 30277u, u_input.e)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), firstTrailingBit(~vec2<u32>(1u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -157f)), ~(-12298i));
    global0 = !(abs(8572i & u_input.d) > u_input.c);
    let var_0 = any(select(vec4<bool>(false, false, all(vec3<bool>(true, true, true)), false), vec4<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), !(u_input.c <= u_input.c)), !vec4<bool>(u_input.a <= u_input.e, true, true, true)));
    let var_1 = vec3<bool>(var_0 & var_0, false, u_input.d != u_input.c);
    return !(!all(var_1));
}

fn func_2() -> bool {
    global0 = true;
    var var_0 = Struct_4(Struct_3(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(false, false)), true, true, true), false), ~(_wgslsmith_mod_i32(1i, u_input.c) >> (~u_input.a % 32u))));
    var var_1 = var_0.a;
    global0 = func_3();
    var var_2 = _wgslsmith_f_op_f32(max(-875f, 1968f));
    return 31269u >= (~min(u_input.e, u_input.a | u_input.a) | (abs(4294967295u) << (firstLeadingBit(_wgslsmith_mult_u32(79368u, u_input.b)) % 32u)));
}

fn func_4(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(!select(select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_0, false, false, arg_0)), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, false, true, false)), !vec4<bool>(arg_0, false, arg_0, false)), u_input.c));
    var_0 = Struct_4(Struct_3(!select(var_0.a.a, !var_0.a.a, var_0.a.a.x), _wgslsmith_dot_vec4_i32(~(vec4<i32>(var_0.a.b, 1i, var_0.a.b, -2147483647i) ^ vec4<i32>(-1i, -31454i, 1i, -17774i)), vec4<i32>(-1i) * -vec4<i32>(7961i, var_0.a.b, var_0.a.b, u_input.c))));
    global0 = select(true, true, !func_2());
    var var_1 = Struct_1(0i << (max(~abs(0u), u_input.e) % 32u), _wgslsmith_mod_vec3_u32(~(~reverseBits(vec3<u32>(0u, u_input.a, u_input.a))), _wgslsmith_div_vec3_u32(abs(~vec3<u32>(u_input.a, 31394u, 415u)), abs(~vec3<u32>(73602u, 16u, u_input.e)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(350f)), -1118f)))));
    return Struct_2(var_2.x, arg_0, var_0.a.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), var_2.x, -322f, -1098f))), ~abs(var_0.a.b));
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    global0 = select(all(vec3<bool>(arg_0.b, true, true & select(true, arg_0.c.x, false))), true, arg_0.c.x);
    global0 = !(all(!arg_0.c.zxx) && arg_0.c.x);
    let var_0 = Struct_1(i32(-1i) * -(~(~(-19460i))), vec3<u32>(u_input.a, _wgslsmith_mod_u32(4294967295u, u_input.b), ~_wgslsmith_dot_vec3_u32(vec3<u32>(34020u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.b, u_input.a))) & abs(~vec3<u32>(u_input.b, 19770u, u_input.e)));
    let var_1 = var_0.b.x;
    var var_2 = -1000f;
    return Struct_4(Struct_3(!arg_0.c, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global0 = all(!vec4<bool>(false, !all(vec4<bool>(false, true, true, false)), func_1(-var_0, Struct_5(Struct_1(1i, vec3<u32>(37561u, u_input.e, 0u)), vec3<bool>(true, true, false), vec2<u32>(u_input.b, 10702u)), _wgslsmith_f_op_f32(f32(-1f) * -1620f), _wgslsmith_mod_i32(var_0, u_input.d)), true));
    global0 = select(any(vec4<bool>(true, true, true, true)), min(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.e), vec4<u32>(4294967295u, u_input.a, u_input.e, 10296u) & vec4<u32>(16847u, u_input.b, 2794u, u_input.b)), u_input.e) < u_input.a, (var_0 & _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(47898i, u_input.c, 2147483647i), vec3<i32>(-10740i, u_input.d, var_0)), ~vec3<i32>(-2515i, var_0, var_0))) >= min(-(~var_0), countOneBits(~var_0)));
    var var_1 = true;
    global0 = any(!vec2<bool>(true, -u_input.d <= countOneBits(25938i)));
    let var_2 = func_5(func_4(!func_2()));
    var var_3 = vec4<u32>(_wgslsmith_div_u32(62544u, ~_wgslsmith_sub_u32(u_input.e, 1u) >> (_wgslsmith_add_u32(u_input.e, ~u_input.e) % 32u)), 4294967295u, u_input.b, _wgslsmith_sub_u32(u_input.e, reverseBits(_wgslsmith_mod_u32(~u_input.e, 26830u))));
    var_3 = abs(reverseBits(~(~max(vec4<u32>(52489u, var_3.x, var_3.x, 0u), vec4<u32>(u_input.a, 4294967295u, 12780u, var_3.x)))));
    var_3 = ~(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, 80827u, var_3.x), 1u, _wgslsmith_sub_u32(var_3.x, 4294967295u), 70066u), countOneBits(vec4<u32>(0u, u_input.e, var_3.x, 86313u))) >> ((vec4<u32>(1u, _wgslsmith_div_u32(6631u, u_input.e), _wgslsmith_dot_vec2_u32(var_3.ww, vec2<u32>(0u, 36951u)), ~var_3.x) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_3.x, 4294967295u, 11088u), vec4<u32>(var_3.x, var_3.x, 1u, u_input.e)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~u_input.a, 64160u), var_3.yyz);
}

