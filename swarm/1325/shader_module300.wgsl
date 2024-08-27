struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec3<u32>(3269u, 15162u, 84761u)), Struct_3(vec3<u32>(4294967295u, 0u, 0u)), Struct_3(vec3<u32>(0u, 0u, 54049u)), Struct_3(vec3<u32>(0u, 60212u, 13698u)), Struct_3(vec3<u32>(5240u, 1u, 40722u)));

var<private> global1: Struct_1 = Struct_1(45131u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec4<i32>(0i, -31581i, countOneBits(abs(u_input.c.x)), u_input.b.x);
    var var_1 = i32(-1i) * -13746i;
    var var_2 = Struct_1(58762u);
    var_2 = Struct_1(u_input.a);
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(func_3());
    var var_1 = false;
    global0 = array<Struct_3, 5>();
    var_1 = true;
    var_1 = true;
    return Struct_1(firstLeadingBit(var_0.a));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_3, 5>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - 718f))) * arg_2.b) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.b)), -457f))));
    return func_2();
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_1 {
    global1 = Struct_1(~(~(~0u) << (arg_1.a.a.x % 32u)));
    global1 = arg_1.d;
    let var_0 = abs(~(~(~vec4<u32>(global1.a, 40485u, 44714u, 0u))) >> (_wgslsmith_div_vec4_u32(abs(~vec4<u32>(global1.a, arg_1.d.a, global1.a, arg_1.a.a.x)), ~(vec4<u32>(global1.a, 73333u, arg_1.a.a.x, global1.a) & vec4<u32>(arg_1.d.a, 4294967295u, 4294967295u, arg_1.d.a))) % vec4<u32>(32u)));
    let var_1 = max(1i, u_input.c.x);
    var var_2 = -35152i;
    return Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(countOneBits(~var_0.x), 52533u), global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 5>();
    global1 = func_4(vec3<f32>(1f, 1f, 1f), Struct_5(Struct_3(select(vec3<u32>(global1.a, 4294967295u, 0u), vec3<u32>(u_input.a, 55713u, 25576u), any(vec3<bool>(false, true, false)))), vec4<f32>(-315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) - _wgslsmith_f_op_f32(max(-677f, 1033f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1767f))), _wgslsmith_f_op_f32(f32(-1f) * -1239f)), -1i, func_1(vec2<bool>(true, true), _wgslsmith_mult_u32(~u_input.a, _wgslsmith_sub_u32(global1.a, global1.a)), Struct_2(vec4<bool>(true, false, true, false), _wgslsmith_f_op_f32(floor(169f)), u_input.a, true)), !all(vec2<bool>(true, true))), vec3<bool>(all(vec3<bool>(0u <= global1.a, false, true)), !(!all(vec4<bool>(true, false, true, false))), true), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(u_input.b, -u_input.b));
    global1 = func_2();
    global1 = Struct_1(_wgslsmith_div_u32(func_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false), true), 63843u, Struct_2(vec4<bool>(false, false, false, false), -1009f, global1.a, false)).a, func_3()));
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1397f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(553f * 2146f))), _wgslsmith_f_op_f32(floor(-1750f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(ceil(1f))))));
    global0 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~1u, ~(global1.a << (58299u % 32u))) | u_input.a, u_input.b.yz, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-703f, var_0) - vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-547f, var_0)), true))))), global1.a, vec4<u32>(_wgslsmith_mod_u32(~min(u_input.a, 1u), 56162u), ~global1.a, 1u, abs(u_input.a)));
}

