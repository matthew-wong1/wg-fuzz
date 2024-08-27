struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_4) -> bool {
    var var_0 = u_input.e;
    global0 = -1i;
    var var_1 = firstLeadingBit(var_0.x);
    var var_2 = u_input.b.x;
    let var_3 = Struct_1(_wgslsmith_sub_u32(firstLeadingBit(firstTrailingBit(~14253u)), 15817u));
    return !(!(arg_1 || arg_0.x));
}

fn func_2() -> vec2<bool> {
    let var_0 = ~10808u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(511f, -550f, false))) * _wgslsmith_f_op_f32(-391f * -441f)) * _wgslsmith_f_op_f32(step(-363f, 202f))));
    var var_2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), false), vec3<bool>(true, true, any(vec4<bool>(false, true, true, true)))), vec3<bool>(true & (u_input.c != 53606i), !(u_input.e.x > 33427i), func_3(vec3<bool>(true, true, true), true, Struct_4(u_input.d, vec2<f32>(-976f, 896f)))), vec3<bool>(true, true, true));
    var_2 = vec3<bool>(((u_input.e.x ^ (i32(-1i) * -18030i)) | u_input.c) != -2147483647i, true, var_2.x && var_2.x);
    var var_3 = Struct_1(_wgslsmith_sub_u32(var_0, _wgslsmith_mod_u32(min(~var_0, u_input.a.x), min(_wgslsmith_mult_u32(var_0, u_input.b.x), 16503u))));
    return var_2.xy;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    let var_0 = Struct_3(abs(~max(u_input.b.x, u_input.a.x)) <= 0u, !select(func_2(), vec2<bool>(true, true), true), Struct_2(arg_0.x, vec2<u32>(0u, 41532u), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), true), func_2().x, Struct_1(arg_1 << (u_input.a.x % 32u)));
    global0 = _wgslsmith_mult_i32(1i, 3637i) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_0.c.b.x), ~vec2<u32>(60208u, 37291u)) % 32u);
    global0 = u_input.d;
    global0 = u_input.c;
    global0 = _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.e.x, -36078i), i32(-1i) * -_wgslsmith_mod_i32(-1i, -21285i)), min(select(~_wgslsmith_mult_i32(u_input.e.x, u_input.d), u_input.d, var_0.c.c), 1i));
    return -_wgslsmith_mod_i32(-37590i, -20665i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!select(!(31501i >= u_input.c), !all(vec2<bool>(false, true)), true), !select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(true, false, false, true))), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), Struct_2(2014f, u_input.a.xx, all(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), (_wgslsmith_div_i32(31918i, 2147483647i) >> (u_input.b.x % 32u)) > ~(~u_input.e.x)), all(vec3<bool>(true, all(vec4<bool>(true, true, true, false)) != true, true)), Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b.yxz, vec3<u32>(1u, 4294967295u, 1u))) >> (abs(u_input.a.x) % 32u)));
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1216f, var_0.c.a, 366f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, -282f, var_0.c.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1097f, var_0.c.a, 438f))))))), -func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(874f, var_0.c.a, 949f, -1820f)))), _wgslsmith_dot_vec3_u32(u_input.b.yxz >> (vec3<u32>(4294967295u, u_input.b.x, 1u) % vec3<u32>(32u)), u_input.b.xxz)), -610f);
    global0 = 0i;
    global0 = var_1.c;
    let var_2 = Struct_4(2147483647i, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.x, var_1.d))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, var_1.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -571f), -1905f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-733f, var_1.d, 828f, var_0.c.a))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.d, var_2.b.x, 863f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b.x, var_0.c.a, -1968f, var_2.b.x)))))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~firstTrailingBit(1u), 1u), 38910u), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.c.b), u_input.a.x) | vec2<u32>(~u_input.b.x, _wgslsmith_mod_u32(var_0.e.a, u_input.b.x)), u_input.e.wzw);
}

