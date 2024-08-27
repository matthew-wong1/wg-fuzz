struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = vec2<f32>(-1159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2324f - _wgslsmith_f_op_f32(f32(-1f) * -1503f)) * -447f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-389f, -1672f, false)) - _wgslsmith_f_op_f32(round(876f))))));
    var var_1 = Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_2 = ~arg_0.x;
    var_1 = Struct_1(vec3<bool>(var_1.a.x, false != var_1.a.x, all(vec3<bool>(any(vec3<bool>(var_1.a.x, true, false)), true, u_input.a.x < u_input.a.x))));
    var_1 = Struct_1(var_1.a);
    return 1743f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(true, true, true));
    let var_1 = firstTrailingBit(-countOneBits(vec3<i32>(0i, 1i, u_input.a.x)));
    var var_2 = Struct_1(select(!(!var_0.a), var_0.a, true));
    var var_3 = reverseBits(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(116684u, 0u)))) | _wgslsmith_dot_vec2_u32(~(~countOneBits(vec2<u32>(55514u, 1u))), vec2<u32>(1u, 1u));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -1364f), _wgslsmith_f_op_f32(func_3(vec4<u32>(~16100u, 1u, 14203u, firstTrailingBit(4294967295u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 40548u, 4294967295u, 24326u), _wgslsmith_clamp_vec4_u32(vec4<u32>(48230u, 38894u, 1u, 0u), vec4<u32>(93988u, 4294967295u, 1u, 32855u), vec4<u32>(23929u, 51628u, 33715u, 0u))) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 860f));
    return var_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = abs(u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-656f))), _wgslsmith_div_f32(-1443f, 1000f), true)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true | !arg_1.a.x, arg_1.a.x && arg_0, all(!select(vec2<bool>(true, arg_1.a.x), arg_1.a.xy, arg_1.a.xx))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<u32>(1u, 1u), func_2()))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<u32>(1u, 1u, 1u, 1u)))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -194f))), _wgslsmith_f_op_f32(f32(-1f) * -1393f))));
    var var_2 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, Struct_1(!vec3<bool>(any(vec3<bool>(true, false, true)), true, true)), abs(-22182i));
    var var_1 = abs(countOneBits(0u));
    var var_2 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 1f, 1f, 1f), ~(~(~1u)), vec3<u32>(1u, 1u, 1u));
}

