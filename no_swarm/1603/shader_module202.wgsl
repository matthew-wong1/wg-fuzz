struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2) -> bool {
    return !(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), true)) | true);
}

fn func_3() -> f32 {
    var var_0 = -1000f;
    var var_1 = vec2<i32>(~(-2108i), _wgslsmith_mod_i32(-24174i, -28788i >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(7370u, 44309u), _wgslsmith_clamp_u32(52111u, 30218u, 4294967295u)) % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-128f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1064f))), _wgslsmith_f_op_f32(-439f + _wgslsmith_div_f32(1000f, -534f))), _wgslsmith_f_op_f32(trunc(-644f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - 1000f), 952f, _wgslsmith_f_op_f32(-274f - _wgslsmith_f_op_f32(min(769f, -533f))))));
    var var_3 = Struct_1(min(max(~(~vec3<u32>(1u, 1u, 4294967295u)), ~vec3<u32>(3434u, 0u, 0u)), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), countOneBits(vec3<u32>(22463u, 40791u, 20125u))), countOneBits(~vec3<u32>(4294967295u, 1u, 41094u)))));
    var_1 = (firstTrailingBit(reverseBits(min(vec2<i32>(786i, 2147483647i), vec2<i32>(u_input.a, var_1.x)))) | vec2<i32>(48251i << (_wgslsmith_add_u32(var_3.a.x, 3255u) % 32u), 0i)) >> (firstTrailingBit(max(~var_3.a.yy, var_3.a.zx)) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))), 1539f)), var_2.x, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -847f)));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.x)), 1365f)));
    var var_1 = !vec4<bool>(select(true, false, !func_2(Struct_2(-610f))), ((-1i & u_input.a) & firstTrailingBit(u_input.a)) >= u_input.a, arg_0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1183f))), !(_wgslsmith_f_op_f32(f32(-1f) * -1206f) < arg_0.x));
    var_0 = _wgslsmith_f_op_f32(func_3());
    let var_2 = arg_0.zz;
    let var_3 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -233f))))), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1062f * var_2.x), _wgslsmith_div_f32(var_2.x, var_2.x))) - arg_0.x)));
    return firstTrailingBit(_wgslsmith_mod_u32(min(1u, max(~4294967295u, 4294967295u)), firstTrailingBit(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(~vec3<u32>(1u, 61945u, func_1(vec3<f32>(-268f, -193f, 2121f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3()));
    let var_2 = min(u_input.a, ~(~(i32(-1i) * -1i)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))))))));
    var_3 = Struct_2(_wgslsmith_f_op_f32(max(301f, _wgslsmith_f_op_f32(-var_3.a))));
    let var_4 = vec4<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(max(0u, var_0.a.x), reverseBits(30045u), ~var_0.a.x, ~var_0.a.x), ~(~vec4<u32>(0u, 1u, 34172u, 4294967295u))), ~(~3362u), var_0.a.x) | vec4<u32>(var_0.a.x, var_0.a.x, max(1u, 1u), firstLeadingBit(10217u) | ~(~var_0.a.x));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(5218i);
}

