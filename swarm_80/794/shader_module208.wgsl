struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(681f, -360f, 415f);

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(0i, -1i, 51787i), vec3<i32>(-1i, -14464i, -59370i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(2095i, 0i, 1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)));
    global1 = array<vec2<u32>, 27>();
    global2 = array<vec3<i32>, 4>();
    var var_1 = arg_1;
    var_0 = _wgslsmith_f_op_f32(abs(arg_0));
    return vec4<bool>(true, false, any(select(!vec4<bool>(true, false, arg_1.b, arg_2), !vec4<bool>(true, true, var_1.b, arg_2), !select(vec4<bool>(false, false, arg_2, true), vec4<bool>(arg_1.b, true, false, false), true))), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: i32) -> vec3<f32> {
    let var_0 = Struct_3(-930f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-545f, _wgslsmith_f_op_f32(f32(-1f) * -1043f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, arg_0.e)), 2147483647i, any(select(select(vec4<bool>(true, true, true, arg_0.b), !vec4<bool>(arg_0.b, arg_0.b, false, false), !vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b)), !(!vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b)), select(select(vec4<bool>(arg_0.b, true, false, arg_0.b), vec4<bool>(true, false, false, arg_0.b), arg_0.b), func_3(arg_1.x, arg_0, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true)))));
    let var_1 = !(!(!select(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), vec4<bool>(arg_0.b, true, arg_0.b, true), select(var_0.e, true, false))));
    global1 = array<vec2<u32>, 27>();
    let var_2 = vec4<i32>(~var_0.d, -1i, arg_0.a, u_input.a);
    global0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1031f, -561f, 1994f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, -1812f, arg_0.e), arg_1, true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1)), vec3<f32>(global0.x, 446f, global0.x))))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1, arg_1, var_0.e)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 * arg_1)))), _wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(-arg_1)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> bool {
    let var_0 = u_input.c;
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(-firstLeadingBit(u_input.a), !arg_2 & false, ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0, arg_0, 0u), vec4<u32>(51314u, u_input.c, 78511u, 43418u)), abs(arg_3), global0.x), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2320f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1591f * -160f) + _wgslsmith_div_f32(-379f, 499f))), countOneBits(firstTrailingBit(u_input.a | arg_3.x)), abs(863i))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-647f, 135f, -577f), vec3<f32>(global0.x, 1081f, 1359f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -852f, global0.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, _wgslsmith_div_f32(global0.x, 1000f), _wgslsmith_f_op_f32(512f * global0.x))))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_2, true, true), !vec4<bool>(true, arg_2, true, arg_2))) || true));
    var var_1 = Struct_2(arg_3.x, all(!select(vec4<bool>(false, false, true, true), vec4<bool>(arg_2, true, true, arg_2), arg_2)) | arg_2, _wgslsmith_dot_vec4_i32(min(-max(vec4<i32>(0i, 3548i, u_input.a, u_input.a), vec4<i32>(2147483647i, -2147483647i, 0i, 70316i)), vec4<i32>(-2416i, select(arg_3.x, 25814i, true), 15158i, max(u_input.a, -50903i))), vec4<i32>(-1i | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -32428i, 0i, -1i), vec4<i32>(arg_3.x, arg_3.x, u_input.a, -30191i)), -26982i, arg_3.x, _wgslsmith_div_i32(abs(arg_3.x), arg_3.x | arg_3.x))), vec2<bool>(1744f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 121f)), arg_2), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = Struct_2(u_input.a, var_1.b, reverseBits(19108i), vec2<bool>(true && (arg_3.x == 2147483647i), var_1.b), global0.x);
    let var_3 = select(~(~vec2<i32>(2147483647i, ~var_2.a)), vec2<i32>(arg_3.x, -arg_3.x) & arg_3, (var_0 >> ((u_input.b << (_wgslsmith_add_u32(1u, u_input.b) % 32u)) % 32u)) >= u_input.c);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 27>();
    global1 = array<vec2<u32>, 27>();
    var var_0 = ~2024u;
    var var_1 = global0.xy;
    let var_2 = vec2<u32>(u_input.c | 2225u, u_input.b ^ ~countOneBits(4294967295u));
    var var_3 = Struct_1(u_input.a, select(!(true & func_1(u_input.c, 1u, true, vec2<i32>(-5863i, u_input.a))), any(vec2<bool>(true, true)), true), abs(select(~vec4<u32>(u_input.c, var_2.x, u_input.c, var_2.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(14273u, 35736u, u_input.c, u_input.b), vec4<u32>(var_2.x, 1u, 4294967295u, u_input.b)), vec4<u32>(abs(45348u), u_input.b, u_input.c, u_input.b), vec4<bool>(true, func_1(1u, u_input.c, true, vec2<i32>(u_input.a, u_input.a)), true, true))), vec2<i32>(_wgslsmith_div_i32(-47456i, reverseBits(u_input.a)), ~abs(-75226i)), -2612f);
    let var_4 = -25872i;
    let var_5 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(u_input.c | _wgslsmith_mod_u32(var_2.x, var_5)), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(1391u, 0u), vec2<u32>(27541u, var_2.x)), _wgslsmith_dot_vec3_u32(var_3.c.xzz, var_3.c.wyy)), var_3.c.x), _wgslsmith_f_op_f32(step(global0.x, var_3.e)));
}

