struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> bool {
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(660f))) <= -1478f);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    var var_0 = u_input.e.x;
    var var_1 = arg_0;
    var_0 = max(-12431i, -2147483647i);
    let var_2 = !func_1();
    var_1 = arg_0;
    return !(!vec3<bool>(false, true, _wgslsmith_sub_u32(4294967295u, var_1.a.x) <= 0u));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))), !select(func_3(Struct_1(vec3<u32>(u_input.d, u_input.c.x, 54819u)), u_input.b), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, true), select(func_3(Struct_1(vec3<u32>(0u, 1u, 0u)), 1u), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))));
    let var_1 = ~_wgslsmith_add_u32(reverseBits(4294967295u), ~(~u_input.b));
    var_0 = true && any(select(vec3<bool>(arg_0 > -1i, u_input.b <= 37583u, false), vec3<bool>(true, true, true), !func_1()));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(107f, -1377f)), _wgslsmith_f_op_f32(step(-958f, 2000f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-246f, -780f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-229f, 365f) * vec2<f32>(-1000f, 2193f))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1262f, 449f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1244f, 1658f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-498f, -460f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(181f, 525f))))))));
    var var_3 = Struct_1(u_input.c);
    return vec4<bool>(!all(vec2<bool>(false, any(vec2<bool>(false, false)))), true, any(vec3<bool>(all(vec2<bool>(true, true)), (1u <= var_3.a.x) || true, !func_1())), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))), 75261u >= _wgslsmith_mod_u32(u_input.a | 14337u, u_input.d), all(vec2<bool>(true, true)), !select(true, u_input.a >= 47963u, true)), !vec4<bool>(func_1(), true, true, !(2147483647i == u_input.e.x)), !select(select(vec4<bool>(true, false, false, false), func_2(u_input.e.x), true), vec4<bool>(true, any(vec3<bool>(true, false, true)), true, func_3(Struct_1(vec3<u32>(74231u, u_input.a, u_input.a)), u_input.d).x), false));
    var var_1 = Struct_1(~min(vec3<u32>(~u_input.a, 4294967295u, ~0u), ~(~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

