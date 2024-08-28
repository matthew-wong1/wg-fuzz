struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(true);
    let var_1 = ~(~u_input.b);
    let var_2 = Struct_1(any(vec2<bool>(true, any(vec3<bool>(var_0.a, var_0.a, var_0.a)))) || true);
    var var_3 = true;
    var_3 = false;
    return ~(countOneBits(~22881u & _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 22855u), u_input.b.xy)) & ~1u);
}

fn func_1(arg_0: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_div_i32(-1i, ~0i >> (~select(func_2(), 2876u, false) % 32u));
    var var_1 = Struct_1(false);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1198f, 1000f, var_1.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(255f))), -675f))), 717f);
    var var_3 = Struct_1(all(!vec2<bool>(var_1.a || var_1.a, false)));
    var_1 = Struct_1(true);
    return !var_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = false;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2)));
    var_3 = 992f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, true, all(select(vec2<bool>(true, true), vec2<bool>(func_1(u_input.c.zyz), any(vec2<bool>(false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-404f, _wgslsmith_f_op_f32(-698f + 357f), 1207f, -1045f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -572f, -845f, 456f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-269f, -244f, -1479f, -409f) + vec4<f32>(345f, -1138f, -968f, -408f))))));
    var var_2 = !func_3(Struct_1(any(vec4<bool>(var_0, var_0, var_0, var_0))), var_1.x) != false;
    let var_3 = ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(108537u, 1u, 5291u), max(vec3<u32>(1u, u_input.b.x, 33859u), vec3<u32>(4294967295u, u_input.a, u_input.b.x)), countOneBits(u_input.b))));
    var_2 = any(select(!(!(!vec2<bool>(var_0, false))), vec2<bool>(true, !all(vec4<bool>(false, var_0, true, true))), var_0));
    var var_4 = Struct_1(!(true || !all(vec2<bool>(var_0, false))));
    let x = u_input.a;
    s_output = StorageBuffer(1123f);
}

