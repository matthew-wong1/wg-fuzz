struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(12247u, vec3<f32>(720f, -358f, -628f), 1066f));

var<private> global2: array<i32, 15>;

var<private> global3: vec3<u32> = vec3<u32>(72991u, 1u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = true;
    global1 = array<Struct_1, 1>();
    let var_1 = ~vec2<u32>(arg_0.b, ~1u);
    var var_2 = firstLeadingBit(abs(_wgslsmith_div_vec3_u32(vec3<u32>(global3.x, arg_0.b, 38273u), select(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(global3.x, global3.x, global3.x), false)) << (vec3<u32>(firstTrailingBit(1u), 7204u ^ var_1.x, firstTrailingBit(var_1.x)) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f))));
    return Struct_2(4294967295u, ~arg_0.a);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-451f)), -333f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1027f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-268f)), _wgslsmith_f_op_f32(607f * 1210f)))))), _wgslsmith_f_op_f32(floor(-289f))));
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -956f, -1342f, _wgslsmith_f_op_f32(min(var_0, var_0)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -500f, 990f) * vec4<f32>(-893f, var_0, var_0, -682f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -921f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(553f, var_0, var_0, var_0), vec4<f32>(-480f, 479f, var_0, -1469f), vec4<bool>(true, true, true, true)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-464f, var_0, 1623f, var_0), vec4<f32>(var_0, 377f, var_0, -1894f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -693f, var_0, var_0), vec4<f32>(-479f, var_0, 1655f, var_0))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1000f, 479f, 1000f) - vec4<f32>(320f, -711f, var_0, var_0))), u_input.a <= 68977u))));
    let var_3 = func_2(Struct_2(_wgslsmith_add_u32(arg_1.b, ~(~37392u)), _wgslsmith_div_u32(~select(1u, arg_1.b, true), min(_wgslsmith_mod_u32(arg_1.a, global3.x), u_input.a >> (arg_1.a % 32u)))));
    var var_4 = func_2(Struct_2(~(~_wgslsmith_mult_u32(1u, arg_0.a)), arg_1.a));
    return vec2<bool>((7142i >> (u_input.a % 32u)) < 1i, false);
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = vec3<bool>(arg_0.x, arg_0.x, arg_0.x != false);
    var_0 = vec3<bool>(!arg_0.x, all(!(!(!vec3<bool>(var_0.x, var_0.x, true)))), var_0.x);
    let var_1 = Struct_1(~(min(u_input.a, _wgslsmith_mult_u32(39227u, 52066u)) << (global3.x % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2338f, 629f, 804f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-591f)), -732f, _wgslsmith_f_op_f32(-534f + -1000f)))), -466f);
    global1 = array<Struct_1, 1>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.b.x)))), 1329f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1462f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1938f) - _wgslsmith_f_op_f32(select(-1806f, var_1.c, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1431f * var_1.b.x)))));
    return global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~global3.x, 12860u), 1u)];
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-794f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(arg_2.b.x + -237f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -434f))));
    let var_1 = arg_1;
    var var_2 = global2[_wgslsmith_index_u32(arg_1.x, 15u)];
    var var_3 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(~4294967295u, arg_1.x), 0u);
    var var_4 = Struct_2(~func_2(func_2(Struct_2(var_1.x, arg_1.x))).a, ~(~31310u));
    return _wgslsmith_f_op_vec3_f32(trunc(arg_2.b));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(func_5(~(-select(vec3<i32>(1i, 1i, 1i), vec3<i32>(3673i, global2[_wgslsmith_index_u32(45233u, 15u)], -30140i), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))), vec4<u32>(66880u, (1u ^ _wgslsmith_mult_u32(u_input.a, arg_0.a)) >> (u_input.a % 32u), ~(abs(37149u) & _wgslsmith_mult_u32(global3.x, global3.x)), ~_wgslsmith_add_u32(1u, 49455u)), func_4(func_3(func_2(Struct_2(global3.x, 0u)), Struct_2(50463u, _wgslsmith_mult_u32(17250u, arg_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_u32(global3.x, u_input.a), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(~(global3.x ^ u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(343f, -656f, 1193f), vec3<f32>(-1946f, -347f, 415f), false))), -104f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -896f) - _wgslsmith_f_op_f32(select(-594f, -928f, false))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1209f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-228f, 513f) * _wgslsmith_f_op_f32(-1000f - -387f)))));
    global3 = firstLeadingBit(firstLeadingBit(vec3<u32>(var_0.a, abs(_wgslsmith_mult_u32(16756u, 55972u)), countOneBits(~4294967295u))));
    var var_1 = _wgslsmith_f_op_f32(-341f - _wgslsmith_f_op_f32(ceil(-106f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -619f))))) - var_0.b.x);
    let var_2 = !vec4<bool>(any(vec2<bool>(false, false)) | (u_input.a <= 26192u), var_0.b.x < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.b.x)), -2404f)), true, true);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + var_0.c), _wgslsmith_f_op_f32(498f * var_0.c));
    let var_4 = all(vec3<bool>(!all(var_2) == var_2.x, any(var_2), !any(select(var_2.xzw, var_2.zwy, true))));
    var_1 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))), _wgslsmith_add_vec3_u32(vec3<u32>(68916u, ~26856u, firstTrailingBit(var_0.a)) & vec3<u32>(~u_input.a, ~54589u, 32275u), ~vec3<u32>(~global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 38130u), vec3<u32>(0u, 42300u, 0u)), global3.x)));
}

