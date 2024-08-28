struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> bool {
    global0 = array<vec2<bool>, 10>();
    let var_0 = Struct_2(true);
    var var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~arg_1.x, ~(arg_1.x | arg_1.x), ~arg_1.x, arg_1.x), reverseBits(countOneBits(firstLeadingBit(vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x)))));
    var var_2 = Struct_1(!any(vec2<bool>(true, true)), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(sign(arg_0.x))) - _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)) - -853f)), 2500f);
    var var_3 = ~arg_1.x;
    return true;
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    global0 = array<vec2<bool>, 10>();
    var var_0 = _wgslsmith_div_vec3_u32(abs(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_0, 1u), vec3<u32>(72558u, arg_1, arg_0))), vec3<u32>(abs(~104313u), select(~1u, 10904u << (0u % 32u), func_3(vec2<f32>(-982f, -1350f), vec3<u32>(arg_0, 2201u, 58711u)) && true), ~max(min(1u, 4294967295u), 1u)));
    let var_1 = Struct_1(true, arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -617f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-543f, 522f)) + 1f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(359f + 1334f)))))));
    var_0 = reverseBits(vec3<u32>(var_1.b, 1u, 0u));
    global0 = array<vec2<bool>, 10>();
    return Struct_1(true, _wgslsmith_dot_vec4_u32(countOneBits(select(vec4<u32>(1u, 4294967295u, 27341u, arg_1), vec4<u32>(19939u, arg_1, 0u, 7713u), vec4<bool>(false, var_1.a, var_1.a, true))) << (~(vec4<u32>(4294967295u, arg_0, var_1.b, arg_0) | vec4<u32>(arg_1, 4294967295u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(~arg_1, 14207u, 52766u, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.d * var_1.d))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -750f)))) - _wgslsmith_f_op_f32(334f + _wgslsmith_f_op_f32(step(var_1.d, _wgslsmith_f_op_f32(var_1.d - var_1.d))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-578f, 160f))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    var var_0 = vec4<bool>(!(!(arg_2.x < ~arg_0.x)), true | !(!any(vec3<bool>(true, false, true))), true, !(!(!all(vec2<bool>(true, false)))));
    let var_1 = func_2(countOneBits(~arg_2.x), arg_2.x);
    let var_2 = var_1.b;
    var_0 = vec4<bool>(var_1.a, false, var_1.a, true);
    let var_3 = firstLeadingBit(~vec3<u32>(~arg_2.x, _wgslsmith_div_u32(var_2, ~84568u), 0u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2289f, -2314f)) - 134f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~vec2<u32>(17490u, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -334f), ~vec2<u32>(7496u, 11733u))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(830f)) - -467f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -855f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(func_2(45777u, 0u).c + -704f))))), _wgslsmith_f_op_f32(func_1(vec2<u32>(4294967295u, 1u), _wgslsmith_f_op_f32(func_1(~(~vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_f32(-284f + _wgslsmith_f_op_f32(abs(-465f))), vec2<u32>(1u, 4294967295u))), ~(~max(vec2<u32>(0u, 4294967295u), vec2<u32>(27189u, 27695u))))));
    var var_1 = Struct_1(!(false && func_2(max(0u, 67324u), ~0u).a), func_2(0u, ~abs(4294967295u)).b, _wgslsmith_f_op_f32(trunc(var_0.x)), 329f);
    var var_2 = vec3<bool>(~u_input.a.x > u_input.a.x, !all(vec2<bool>(true, !var_1.a)), var_1.b <= 0u);
    var_2 = vec3<bool>((u_input.a.x != ((u_input.a.x << (var_1.b % 32u)) << (45442u % 32u))) | var_2.x, var_1.b > firstLeadingBit(1u), var_2.x);
    var var_3 = ~_wgslsmith_div_vec4_i32(select(abs(vec4<i32>(41667i, u_input.a.x, -12369i, u_input.a.x)), ~vec4<i32>(-33491i, -4356i, u_input.a.x, 2969i), true), select(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-34114i, u_input.a.x, u_input.a.x, 41599i), vec4<i32>(22047i, u_input.a.x, -10053i, u_input.a.x))), vec4<i32>(~(-14i), max(u_input.a.x, u_input.a.x), abs(-1i), -u_input.a.x), !var_2.x | all(vec3<bool>(var_1.a, false, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.zy + var_0.xx), vec3<i32>(var_3.x | -44i, u_input.a.x, u_input.a.x));
}

