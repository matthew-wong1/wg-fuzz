struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>) -> bool {
    let var_0 = select(select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), true, true, true))), vec4<bool>(any(vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true)), true, !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true))), true);
    var var_1 = !var_0.x;
    let var_2 = Struct_3(Struct_2(104667u, Struct_1(vec3<bool>(var_0.x, !var_0.x, true), _wgslsmith_f_op_f32(-794f + -761f), _wgslsmith_f_op_f32(-963f - -292f), _wgslsmith_f_op_f32(403f * _wgslsmith_f_op_f32(max(-2672f, 149f))))), Struct_2(71778u, Struct_1(!var_0.wxw, _wgslsmith_f_op_f32(-1045f * _wgslsmith_f_op_f32(-215f + -510f)), _wgslsmith_f_op_f32(-1340f + _wgslsmith_f_op_f32(-851f + -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-502f + 608f))))), Struct_2(arg_1.x, Struct_1(vec3<bool>(u_input.c >= -1i, false, all(var_0.wx)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(706f - -906f))));
    var var_3 = var_0.x;
    var_1 = var_0.x || (_wgslsmith_dot_vec4_i32(-(~u_input.a), ~abs(u_input.a)) > 1i);
    return !(!(_wgslsmith_f_op_f32(-var_2.a.b.d) != var_2.c.b.d)) && !var_2.b.b.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> vec2<u32> {
    var var_0 = vec3<bool>(!(u_input.b != ~arg_0.x), false, !(_wgslsmith_f_op_f32(-arg_1.x) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), arg_1.x)));
    var var_1 = all(var_0.xz);
    let var_2 = _wgslsmith_mult_i32(-1i, ~(~7789i));
    var var_3 = Struct_1(select(vec3<bool>(true, true, var_0.x), select(vec3<bool>(false, !var_0.x, true), select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, false, var_0.x), false), vec3<bool>(false, false, false), !var_0.x), select(any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true, true)), !vec3<bool>(all(vec2<bool>(true, true)), func_3(vec2<i32>(u_input.a.x, arg_0.x), vec2<u32>(1u, 4294967295u)), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(956f, _wgslsmith_f_op_f32(max(-1120f, arg_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-188f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1383f - arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x))) + arg_1.x), arg_1.x);
    var_1 = var_0.x;
    return vec2<u32>(1u, 1u);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(529f, -1054f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2006f, -489f) + 127f)))));
    var_0 = -1974f;
    let var_1 = max(~countOneBits(~(~vec2<u32>(1u, 4294967295u))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, _wgslsmith_add_u32(49530u, 1u)), vec2<u32>(14841u, 1u) & func_2(vec3<i32>(u_input.a.x, 2147483647i, u_input.c), vec4<f32>(2117f, -284f, -1134f, 1023f)), vec2<u32>(1u, 1u)), vec2<u32>(1u, abs(1u))));
    let var_2 = true;
    var var_3 = Struct_2(~var_1.x, Struct_1(!(!select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, var_2), var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 798f) + _wgslsmith_f_op_f32(936f - 465f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + -1978f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -766f), 2550f)))));
    return Struct_1(select(var_3.b.a, !(!vec3<bool>(false, var_2, false)), var_2 || (377f != var_3.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(104f, 830f)), _wgslsmith_f_op_f32(var_3.b.d * var_3.b.b), -1536f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(var_0.a, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f * var_0.c) * _wgslsmith_f_op_f32(var_0.d - 2013f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-304f))))) - 347f), _wgslsmith_f_op_f32(-var_0.d));
    var_0 = func_1();
    let var_1 = -24752i;
    let var_2 = min(reverseBits(1u) << ((firstLeadingBit(_wgslsmith_sub_u32(30498u, 1u)) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(19229u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(70032u, 1339u), vec2<u32>(9685u, 9507u)))) % 32u), _wgslsmith_mult_u32(~1166u, 1u) | (~select(0u, 4019u, true) | ~firstLeadingBit(30479u)));
    var var_3 = Struct_3(Struct_2(~1u, func_1()), Struct_2(_wgslsmith_mult_u32(var_2, _wgslsmith_add_u32(firstTrailingBit(var_2), _wgslsmith_add_u32(var_2, var_2))), Struct_1(select(var_0.a, !vec3<bool>(true, var_0.a.x, var_0.a.x), var_0.a), var_0.d, _wgslsmith_div_f32(-1825f, var_0.d), _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(f32(-1f) * -193f)))), Struct_2(var_2, func_1()));
    var var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1090f, 885f) - vec2<f32>(-948f, var_0.c))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_4.b.d, var_3.a.b.d))))))), var_4.a, 265f, min(vec2<u32>(~_wgslsmith_sub_u32(112395u, 14318u), _wgslsmith_add_u32(~var_2, _wgslsmith_div_u32(var_3.b.a, 65979u))), max(firstLeadingBit(vec2<u32>(4294967295u, var_2)) | vec2<u32>(15289u, var_2), min(~vec2<u32>(var_2, var_2), countOneBits(vec2<u32>(22690u, var_2))))));
}

