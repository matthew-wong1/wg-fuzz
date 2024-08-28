struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    return _wgslsmith_div_u32(u_input.a.x, u_input.a.x);
}

fn func_3() -> i32 {
    return -42860i;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_1(!vec4<bool>(arg_0, any(vec2<bool>(true, true)), any(!vec3<bool>(arg_0, arg_0, false)), func_3() > (-17218i & u_input.b.x)), select(select(!select(vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, false, false, arg_0)), select(select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, false, false), arg_0), !vec4<bool>(arg_0, arg_0, false, arg_0), arg_0), _wgslsmith_f_op_f32(sign(-853f)) < -368f), select(!(!vec4<bool>(arg_0, arg_0, arg_0, false)), !select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, true, arg_0, false)), select(!vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, arg_0, false, true), arg_0)), false));
    let var_1 = firstLeadingBit(1953i);
    var var_2 = ~(~vec4<u32>(1u, _wgslsmith_add_u32(arg_1, arg_1), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, arg_1, 39437u), vec3<u32>(arg_1, arg_1, u_input.a.x))), u_input.a.x ^ 82013u));
    var_0 = Struct_1(select(var_0.b, var_0.b, all(!var_0.b.zyz)), var_0.a);
    var var_3 = _wgslsmith_add_vec2_u32(~var_2.zy, vec2<u32>(u_input.a.x, ~_wgslsmith_mod_u32(1u, 5114u)));
    return Struct_2(Struct_1(vec4<bool>(!any(var_0.a), arg_0, true, any(vec3<bool>(arg_0, false, true))), vec4<bool>(all(!var_0.a.zw), true, var_0.b.x, any(select(vec3<bool>(false, true, true), var_0.b.xzz, true)))), !select(var_0.a, select(var_0.b, !var_0.a, var_0.a.x), select(select(vec4<bool>(false, var_0.a.x, false, var_0.a.x), var_0.a, var_0.a.x), select(var_0.b, vec4<bool>(arg_0, false, false, false), vec4<bool>(true, false, false, var_0.a.x)), arg_0)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = false;
    let var_1 = func_4(func_2(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), true)), func_1(vec2<bool>(select(false, false, false), true), Struct_1(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-188f - -142f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-326f, 236f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-211f, -884f))))))));
    var var_2 = u_input.a.x;
    let var_3 = vec2<bool>((u_input.c | -(~(-38699i))) < ~u_input.b.x, !any(!var_1.b));
    var_0 = all(var_1.a);
    let var_4 = ~u_input.b.x;
    let var_5 = Struct_3(func_2(false && !select(true, var_3.x, var_3.x), u_input.a.x).a, func_2(false && var_1.b.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 34762u, 61143u, 0u) ^ max(vec4<u32>(13430u, u_input.a.x, 51448u, 2806u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(73304u, 28708u, u_input.a.x, u_input.a.x) | vec4<u32>(4294967295u, 270u, 1u, u_input.a.x)) | reverseBits(vec4<u32>(33843u, u_input.a.x, u_input.a.x, u_input.a.x) >> (select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 15340u, 64612u), vec4<bool>(false, var_5.a.a.x, false, var_3.x)) % vec4<u32>(32u))));
}

