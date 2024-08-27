struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    let var_0 = vec2<f32>(1255f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(637f, _wgslsmith_f_op_f32(round(1768f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-341f)), _wgslsmith_div_f32(-317f, -912f))))))));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1096f, _wgslsmith_f_op_f32(var_0.x - -299f), -2154f, var_0.x))), _wgslsmith_div_vec3_u32(~abs(firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.d))), vec3<u32>(u_input.d, 0u, ~u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 1598f, var_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(538f, -1954f, var_0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(-735f, var_0.x, -1398f), vec3<f32>(var_0.x, var_0.x, var_0.x))))));
    var var_2 = -(~abs(abs(u_input.a.x))) > 1i;
    let var_3 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, 418f, 183f, var_1.d.x) * vec4<f32>(1232f, -2127f, var_0.x, var_0.x)), vec4<f32>(-487f, 359f, var_1.d.x, _wgslsmith_f_op_f32(-var_0.x))))), max(u_input.b.zyw, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4240u, 12635u, 1u)), ~vec3<u32>(0u, 1u, u_input.d)), ~abs(vec3<u32>(1u, var_1.c.x, 4294967295u)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(var_1.d)))));
    let var_4 = var_3;
    return vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-221f * _wgslsmith_f_op_f32(-var_1.b.x))))), -487f, _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(-249f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-267f, 529f, var_1.a)))))), -946f);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0, 1000f)))), -755f, -1565f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1311f, arg_0, arg_0) - vec3<f32>(-978f, 144f, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-118f, arg_0, -1128f) * vec3<f32>(arg_0, arg_0, arg_0)), vec3<bool>(true, true, arg_1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-686f, arg_0, arg_0))))))));
    var_0 = -59369i;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_3());
    return u_input.d;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.b.zyy;
    let var_1 = ~func_2(-247f, !vec4<bool>(true, arg_0.a, !arg_0.a, all(vec3<bool>(true, arg_0.a, arg_0.a))));
    var var_2 = Struct_1(!(!arg_0.a), arg_0.b, reverseBits(var_0), arg_0.d);
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3()))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1430f, arg_0.d.x, 1635f, var_2.d.x) - _wgslsmith_f_op_vec4_f32(func_3())))), vec3<u32>(var_2.c.x ^ _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_1, 1u), select(var_2.c.x, 0u, arg_0.a)), min(18434u, 21338u) ^ arg_0.c.x) << ((vec3<u32>(var_2.c.x, _wgslsmith_add_u32(42062u, var_1), var_0.x) << (vec3<u32>(~47413u, ~42149u, 7154u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(arg_0.b.zyy, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec4_f32(func_3()).ywz))));
    var_2 = arg_0;
    return -1172f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-31695i, _wgslsmith_f_op_f32(func_1(Struct_1(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(590f, -834f, 1000f, -460f)) * vec4<f32>(880f, -248f, -436f, -1959f)), max(u_input.b.zxx, reverseBits(vec3<u32>(u_input.d, u_input.b.x, u_input.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(591f, -1165f, -265f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-776f, 1445f, 974f) - vec3<f32>(-866f, -168f, 2119f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-285f, _wgslsmith_f_op_f32(102f + -238f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1161f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f + -1351f)))), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))))));
}

