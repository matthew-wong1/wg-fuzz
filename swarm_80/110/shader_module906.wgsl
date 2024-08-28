struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 143422u, 72800u, 14363u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> u32 {
    global0 = abs(~(~(~vec4<u32>(global0.x, 0u, 1181u, 4294967295u))));
    var var_0 = vec2<bool>(false, any(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), false)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-777f, 1000f), _wgslsmith_f_op_f32(trunc(1663f)))), _wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f * -223f))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(217f + 681f), -213f), -1137f, -138f)), true);
    let var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(abs(-1384f)), var_1.a.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_2.a.x, 1394f) - vec3<f32>(var_1.a.x, -443f, var_1.a.x)))))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec4<bool>(var_1.b, var_1.b, false, true)), !var_2.b), var_1.b)));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_div_u32(~global0.x, 4294967295u & global0.x)), 56619u, ~1u), global0.wwz);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f), 1113f));
    var var_1 = !(!select(select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, true)), !arg_0), !select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), select(vec2<bool>(false, true), !vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    var_0 = _wgslsmith_f_op_f32(min(-397f, 1f));
    let var_2 = _wgslsmith_f_op_f32(step(-170f, -2356f));
    let var_3 = select(vec3<bool>(var_1.x || !arg_0, false, var_2 <= _wgslsmith_f_op_f32(-var_2)), select(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, var_1.x, arg_0), vec3<bool>(arg_0, var_1.x, var_1.x)), select(vec3<bool>(arg_0, var_1.x, false), vec3<bool>(var_1.x, true, true), vec3<bool>(false, var_1.x, false)), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(arg_0, false, var_1.x), var_1.x)), vec3<bool>(true, true, var_1.x), select(!(!vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(var_1.x, true, false), any(vec2<bool>(var_1.x, arg_0)) || all(vec3<bool>(true, arg_0, false)))), vec3<bool>(var_1.x, (!var_1.x & any(vec3<bool>(arg_0, var_1.x, var_1.x))) | all(vec4<bool>(false, true, false, false)), any(vec4<bool>(false, true, false, arg_0)) && all(vec3<bool>(arg_0, var_1.x, arg_0))));
    return 30949u;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(arg_0.a.x, -249f, -920f)) * arg_0.a))), true | arg_0.b);
    let var_1 = Struct_1(arg_0.a, select(all(select(vec2<bool>(arg_0.b, true), vec2<bool>(var_0.b, true), true)), !all(vec3<bool>(false, true, false)), !all(vec3<bool>(arg_0.b, var_0.b, arg_0.b))) && true);
    global0 = ~abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(69666u, u_input.c.x, 10372u), global0.xxy), u_input.c.x, u_input.c.x, abs(global0.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(10560u, u_input.c.x, global0.x, u_input.c.x) ^ vec4<u32>(u_input.c.x, global0.x, 20318u, 0u), select(vec4<u32>(global0.x, global0.x, u_input.c.x, 29463u), vec4<u32>(41857u, global0.x, u_input.c.x, 44283u), false)) % vec4<u32>(32u)));
    global0 = min(vec4<u32>(~(~u_input.c.x), _wgslsmith_mod_u32(func_2(), _wgslsmith_mult_u32(~30133u, _wgslsmith_add_u32(global0.x, global0.x))), global0.x, countOneBits(abs(global0.x))), vec4<u32>(54500u, ~_wgslsmith_sub_u32(~0u, u_input.c.x), ~0u, func_3(any(select(vec4<bool>(false, true, var_1.b, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, false), vec4<bool>(false, var_0.b, true, var_0.b))))));
    let var_2 = arg_0;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1642f) * _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1599f, 656f, 446f), vec3<f32>(-515f, -1000f, 4317f))))), true))));
    global0 = ~vec4<u32>(global0.x, ~func_3(false), max(max(_wgslsmith_mod_u32(u_input.c.x, global0.x), 4294967295u), _wgslsmith_mult_u32(max(u_input.c.x, global0.x), 4294967295u)), ~(15414u | u_input.c.x));
    var var_1 = global0.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(257f, -224f)), 1044f, _wgslsmith_f_op_f32(170f * -1804f)))))), false);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(-513f, var_2.a.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(-1356f, -1889f, 2249f), var_2.b))) + _wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_u32(select(countOneBits(global0.x), firstLeadingBit(global0.x), any(vec3<bool>(false, var_2.b, true))), countOneBits(4294967295u))), ~global0.xw, _wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(var_3, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.a.x, var_3), _wgslsmith_f_op_f32(var_2.a.x * var_2.a.x))), _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(var_3, -1607f, var_2.a.x), var_2.b)))))), global0.x, ~_wgslsmith_mult_u32(4294967295u, global0.x));
}

