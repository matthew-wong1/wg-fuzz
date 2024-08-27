struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(!vec2<bool>(any(vec4<bool>(false, true, true, true)), false));
    return abs(44169u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = select(!(!select(vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_3.b.a.x), arg_3.a.a.x)), select(select(select(vec3<bool>(arg_3.b.a.x, false, arg_2.a.x), vec3<bool>(arg_2.a.x, arg_3.b.a.x, true), vec3<bool>(arg_0.x, false, true)), !select(vec3<bool>(arg_2.a.x, arg_3.a.a.x, true), vec3<bool>(arg_2.a.x, arg_2.a.x, true), true), true), select(vec3<bool>(true, arg_2.a.x, arg_0.x), vec3<bool>(arg_2.a.x, u_input.a.x < 37543i, arg_2.a.x), any(vec3<bool>(arg_0.x, true, arg_3.b.a.x))), u_input.b == 1u), any(select(vec4<bool>(arg_2.a.x | false, all(vec4<bool>(arg_0.x, true, true, arg_2.a.x)), arg_3.b.a.x, select(true, false, arg_3.a.a.x)), select(!vec4<bool>(arg_0.x, false, arg_2.a.x, arg_0.x), vec4<bool>(arg_2.a.x, true, false, arg_3.a.a.x), false), all(!arg_2.a))));
    var var_1 = u_input.a.x;
    return _wgslsmith_f_op_f32(max(-884f, -912f));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1999f * 1000f) * _wgslsmith_f_op_f32(func_3(arg_3.a.a, vec3<u32>(arg_3.c.x, 59648u, 4987u), arg_0.a, Struct_2(arg_3.a, arg_0.a, arg_3.c))))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2359f + -2429f)))))));
    var var_1 = vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), var_0, arg_3.b.a.x))))));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_0), var_0) + _wgslsmith_f_op_f32(step(-2107f, _wgslsmith_f_op_f32(round(-881f))))), -801f), _wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(-var_0), 2369f);
    global0 = array<Struct_2, 32>();
    var_1 = var_2.xyy;
    return vec3<u32>(_wgslsmith_div_u32(arg_3.c.x, 0u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, _wgslsmith_mult_u32(arg_3.c.x, 4294967295u), ~u_input.b, ~u_input.b), vec4<u32>(57359u, _wgslsmith_mod_u32(4294967295u, arg_2), 0u, arg_0.c.x)), arg_3.c.x << (func_1() % 32u)), _wgslsmith_mult_u32(u_input.b, 0u ^ u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(func_1() ^ (u_input.b ^ u_input.b), u_input.b), vec2<u32>(u_input.b, u_input.b)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.b) & ~(16877u << (_wgslsmith_mod_u32(firstLeadingBit(78227u), 1u & var_0.x) % 32u)), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_sub_u32(35964u, var_0.x) >> (u_input.b % 32u), var_1.c.x, 1u, ~_wgslsmith_div_u32(1u, 25057u)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f) * _wgslsmith_f_op_f32(-572f + 392f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-179f, 547f)) + -442f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1316f, 619f)))), func_2(Struct_2(Struct_1(select(var_1.b.a, var_1.a.a, var_1.a.a)), Struct_1(vec2<bool>(true, true)), ~(~vec3<u32>(26853u, 1u, var_1.c.x))), select(var_1.b.a, var_1.a.a, !var_1.a.a.x), u_input.b >> (1u % 32u), global0[_wgslsmith_index_u32(24005u, 32u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1170f)), -195f)))))), 1u);
}

