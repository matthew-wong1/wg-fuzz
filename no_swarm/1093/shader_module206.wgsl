struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, false, false), vec3<bool>(false, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    return countOneBits(_wgslsmith_dot_vec2_u32(arg_0.xz, arg_0.yz));
}

fn func_2() -> Struct_2 {
    var var_0 = 0u;
    global0 = array<vec3<bool>, 2>();
    let var_1 = all(select(vec2<bool>(false, false), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), true));
    var_0 = ~_wgslsmith_div_u32(86180u, func_3(abs(vec3<u32>(1u, 4294967295u, u_input.b)), vec4<i32>(82703i, 2147483647i, -u_input.a.x, -u_input.a.x), Struct_1(-1650f, false, ~u_input.b)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -306f);
    return Struct_2(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(f32(-1f) * -533f)), 32621i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-368f, _wgslsmith_div_f32(-1000f, var_2), _wgslsmith_f_op_f32(866f + -599f)))) - vec3<f32>(var_2, var_2, 1117f)), Struct_1(1310f, false, u_input.b), var_2);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> vec3<bool> {
    global0 = array<vec3<bool>, 2>();
    let var_0 = vec4<i32>(arg_0, 10645i, abs(arg_0), u_input.a.x);
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-var_1.e);
    return !vec3<bool>(all(select(vec4<bool>(var_1.d.b, false, var_1.d.b, arg_1), !vec4<bool>(true, false, true, var_1.d.b), all(vec2<bool>(true, true)))), arg_1, (var_1.d.b && arg_1) & var_1.d.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    global0 = array<vec3<bool>, 2>();
    global0 = array<vec3<bool>, 2>();
    let var_0 = func_2();
    let var_1 = 0i;
    return 33708u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-827f - 795f)), all(func_1(u_input.a.x, false, u_input.a)), func_3(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~vec4<i32>(u_input.a.x, 1i, 2147483647i, u_input.a.x), Struct_1(-612f, false, 8495u))), select(vec2<bool>(true, select(true, true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), select(false, false, u_input.b <= u_input.b))) & u_input.b;
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(min(var_1.e, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-157f, _wgslsmith_f_op_f32(-1511f - -234f))))));
    let var_3 = false;
    let var_4 = countOneBits(var_1.d.c >> (_wgslsmith_mod_u32(var_1.d.c, ~1u) % 32u));
    let var_5 = _wgslsmith_div_i32(firstLeadingBit(abs(-(~var_1.b))), _wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_sub_i32(-22028i >> (u_input.b % 32u), var_1.b) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 17878i, var_1.b) << (vec3<u32>(4294967295u, 21346u, u_input.b) % vec3<u32>(32u)), ~vec3<i32>(var_1.b, var_1.b, 25984i))));
    var_1 = Struct_2(1362f, _wgslsmith_div_i32(func_2().b, -2147483647i) ^ -(~var_1.b), var_1.c, func_2().d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_4 | ~_wgslsmith_dot_vec3_u32(vec3<u32>(25595u, var_1.d.c, 1u), vec3<u32>(4260u, 1u, 10731u))));
}

