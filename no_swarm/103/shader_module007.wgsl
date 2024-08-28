struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = false;
    let var_1 = Struct_1(select(arg_0.a, !vec4<bool>(arg_0.a.x != arg_0.a.x, arg_0.a.x, true, false), select(vec4<bool>(!arg_0.a.x, arg_0.a.x, any(arg_0.a), !arg_0.a.x), !select(vec4<bool>(arg_0.a.x, false, false, false), arg_0.a, arg_0.a), false)), arg_0.c.x, arg_0.c);
    var_0 = true;
    let var_2 = arg_0.c;
    let var_3 = 10i;
    return _wgslsmith_f_op_f32(-arg_0.b);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-539f + -876f))))) + -535f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -958f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1461f))), _wgslsmith_f_op_f32(f32(-1f) * -443f)))));
    var var_1 = Struct_1(!vec4<bool>(true, false, !select(var_0.a.x, true, var_0.a.x), !(!var_0.a.x)), 2605f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, var_0.c))), var_0.b, _wgslsmith_f_op_f32(-var_0.c.x))));
    let var_2 = Struct_1(select(var_0.a, !vec4<bool>(var_0.a.x | false, all(vec3<bool>(var_0.a.x, true, false)), false, var_1.a.x == var_0.a.x), any(!vec3<bool>(true, var_1.a.x, true))), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 487f, -570f) * vec3<f32>(2213f, var_0.c.x, var_0.c.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(885f, -1388f, var_1.b))))));
    var_0 = var_2;
    let var_3 = var_2;
    return var_3.c.x;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1621f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f), 1761f))));
    var var_1 = Struct_1(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1015f * 766f))))), vec3<f32>(var_0.x, -138f, 1238f));
    var var_2 = Struct_1(select(vec4<bool>((var_1.a.x | false) || true, false, var_1.a.x, true), !vec4<bool>(var_1.a.x & var_1.a.x, var_1.a.x, select(false, var_1.a.x, var_1.a.x), any(var_1.a)), select(!select(var_1.a, vec4<bool>(false, var_1.a.x, true, var_1.a.x), false), var_1.a, select(select(var_1.a, var_1.a, var_1.a.x), vec4<bool>(var_1.a.x, false, var_1.a.x, true), var_1.a))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, var_0.x, var_1.c))), _wgslsmith_f_op_f32(var_0.x - 377f)), vec3<f32>(_wgslsmith_f_op_f32(-122f + 2334f), var_1.c.x, _wgslsmith_div_f32(var_0.x, -1855f)))));
    var var_3 = u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.a), _wgslsmith_sub_u32(max(2594u, 1u), _wgslsmith_add_u32(32541u, u_input.a)), ~(~u_input.b.x), 1u), select(_wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a, u_input.b.x, u_input.c.x)), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 140015u)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.b.x, u_input.a, 0u)), ~vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.c.x)), true)) % 32u);
    let var_4 = Struct_1(select(!(!(!var_1.a)), var_2.a, true), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, true, any(vec2<bool>(false, var_1.a.x)), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1254f)), _wgslsmith_f_op_f32(select(var_1.c.x, var_2.b, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c, var_1.c) + vec3<f32>(1618f, 831f, 670f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.c.x, var_2.c.x) - var_2.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1533f, -774f, var_0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.c, vec3<f32>(var_1.c.x, 428f, 546f))))) - var_2.c));
    return all(vec4<bool>(!(!all(var_4.a.zy)), false, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), func_1() && false, true), vec3<bool>(select(0u == u_input.a, false, true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), true), any(vec2<bool>(true, true))), !(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))), false);
    let var_1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.c.x, ~1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(874f, 609f))))))), vec4<i32>(_wgslsmith_clamp_i32(-var_1 | select(-11821i, var_1, var_0.x), -var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -2147483647i), vec3<i32>(-28823i, -2147483647i, var_1)) | _wgslsmith_clamp_i32(var_1, var_1, 27211i)), var_1, -(~(-var_1)), max(var_1, 0i)), ~_wgslsmith_add_vec4_u32(max(~vec4<u32>(11197u, 0u, u_input.a, 53544u), ~vec4<u32>(9166u, u_input.a, u_input.a, u_input.c.x)), select(vec4<u32>(107125u, 0u, u_input.a, u_input.a) << (vec4<u32>(37506u, u_input.a, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, u_input.c.x, 4294967295u, u_input.b.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x))), ~var_1 << (u_input.a % 32u));
}

