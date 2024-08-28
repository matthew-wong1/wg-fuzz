struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    var var_0 = abs(u_input.a.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(552f)) * _wgslsmith_f_op_f32(f32(-1f) * -1118f)), _wgslsmith_f_op_f32(-220f * _wgslsmith_f_op_f32(1661f - -732f)))), 1423f, true)), _wgslsmith_div_f32(-1000f, 1000f));
    return Struct_1(u_input.c.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -600f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(792f)))));
}

fn func_3() -> u32 {
    var var_0 = func_1();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1108f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b))), var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1540f)), -495f))))));
    let var_2 = _wgslsmith_mod_i32(-4976i, _wgslsmith_div_i32(-41568i, u_input.d >> (~u_input.b % 32u)) & u_input.d);
    var var_3 = -1266f;
    let var_4 = vec3<u32>(var_0.a.x, var_0.a.x, 1u >> (firstLeadingBit(var_0.a.x) % 32u));
    return countOneBits(4294967295u);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(countOneBits(min(~1u, 4294967295u)), arg_3.a.x), arg_0);
    var var_1 = 446f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2521f - arg_3.b) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, firstTrailingBit(~1u)), ~(_wgslsmith_mult_u32(arg_3.a.x, arg_3.a.x) & func_3())), _wgslsmith_clamp_u32(~1u, select(max(78215u, 137512u), func_3(), true), countOneBits(_wgslsmith_div_u32(0u, 59362u))) >> (_wgslsmith_div_u32(23009u, arg_3.a.x) % 32u));
    let var_3 = _wgslsmith_f_op_f32(exp2(var_0.b));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 28>();
    let var_0 = func_2(-1554f, u_input.d, func_1(), func_1());
    global0 = array<vec4<bool>, 28>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-809f * 528f)));
    var var_2 = select(select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(select(firstLeadingBit(u_input.b), 71840u, true) < (17152u >> (1u % 32u)), false));
    var var_3 = func_1();
    var_3 = Struct_1(~vec2<u32>(0u, ~select(var_0.a.x, var_0.a.x, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -477f));
    var var_4 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(func_2(func_1().b, 0i, func_1(), func_2(-1353f, u_input.d, Struct_1(vec2<u32>(u_input.b, 0u), var_0.b), var_0)).a.x, var_0.a.x), 111090u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_1)) * vec2<f32>(-562f, var_0.b))))), u_input.d);
}

