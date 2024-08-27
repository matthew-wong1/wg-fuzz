struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    return vec4<bool>(true, true, !any(vec3<bool>(true, true, any(vec2<bool>(true, false)))), true);
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = u_input.c.x;
    return all(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, any(vec4<bool>(false, false, true, false)), any(vec2<bool>(false, false))), any(vec2<bool>(false, true)))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = !(!(!select(func_1(vec4<u32>(47260u, 22221u, 7801u, u_input.e)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, true, arg_0, arg_0)), func_3(Struct_1(u_input.e)))));
    var var_1 = _wgslsmith_f_op_f32(-692f * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1491f, -279f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-414f * -118f))), _wgslsmith_f_op_f32(select(-1219f, _wgslsmith_f_op_f32(f32(-1f) * -803f), true)))));
    let var_2 = Struct_1(~(~_wgslsmith_clamp_u32(1u, 126782u << (0u % 32u), _wgslsmith_mod_u32(u_input.e, u_input.e))));
    var_1 = true | any(var_0);
    let var_3 = any(vec2<bool>((~var_2.a & u_input.e) != u_input.e, !(!any(var_0))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(true || all(select(func_1(vec4<u32>(38857u, u_input.e, u_input.e, 1u)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))));
    let var_1 = var_0;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-392f)), _wgslsmith_f_op_f32(f32(-1f) * -527f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-550f, -253f)) - _wgslsmith_f_op_f32(max(-1000f, -1282f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-700f, 1435f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-select(-1i << (0u % 32u), u_input.c.x, true)), firstTrailingBit(~vec4<u32>(var_0.a, 1u, 4294967295u, u_input.d) | vec4<u32>(u_input.e, u_input.e, u_input.e, var_1.a)) ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, var_0.a, u_input.e, var_1.a), vec4<u32>(_wgslsmith_clamp_u32(var_1.a, var_0.a, 1819u), ~u_input.d, u_input.d, u_input.e & var_0.a), firstTrailingBit(select(vec4<u32>(33982u, 4294967295u, 4294967295u, 0u), vec4<u32>(u_input.d, 1u, var_0.a, var_1.a), false))), vec2<i32>(1i, 1i), countOneBits(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(24126u, u_input.e, u_input.d, var_0.a), vec4<u32>(4294967295u, 1u, var_0.a, u_input.d)), ~vec4<u32>(var_0.a, 21226u, 61988u, u_input.d)))), firstTrailingBit(-vec2<i32>(firstTrailingBit(u_input.a), _wgslsmith_add_i32(u_input.c.x, u_input.b.x))));
}

