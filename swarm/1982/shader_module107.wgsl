struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    var var_0 = firstTrailingBit(-(~(-2147483647i)));
    var_0 = -(~(i32(-1i) * -40747i));
    return 1000f;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(~select(u_input.a.x, 22325u, true), 4294967295u), 4294967295u, u_input.a.x ^ 4294967295u), arg_0.b, _wgslsmith_mod_i32(arg_0.c, -23066i), arg_0.d, _wgslsmith_f_op_f32(1147f - 123f));
    var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = var_1;
    let var_3 = !vec4<bool>(var_1.b.x, false, all(select(vec2<bool>(var_0.b.x, var_2.b.x), vec2<bool>(false, var_2.b.x), select(vec2<bool>(true, true), arg_0.b.xx, var_2.b.yy))), all(arg_0.b));
    return !arg_0.b.xw;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = func_3(arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-966f - _wgslsmith_f_op_f32(arg_1.e * arg_0.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e * arg_0.d.x)))));
    let var_1 = arg_0.c;
    var_0 = vec2<bool>(!all(!arg_0.b), var_0.x);
    var var_2 = 0i;
    var_2 = reverseBits(-max(-2147483647i, ~(-1i)));
    return any(vec4<bool>(arg_1.b.x, _wgslsmith_sub_u32(abs(u_input.a.x), 135501u) > 4294967295u, arg_1.b.x, !var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~u_input.a.wzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~83490u, 14585u, u_input.a.x), 106950u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 6954u, 34296u), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), u_input.a.zxx, firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.a.zyx, ~u_input.a.zwy, countOneBits(u_input.a.xxx)))));
    var_0 = vec3<u32>(42477u & ~var_0.x, u_input.a.x, 1u | (4294967295u & ~var_0.x));
    var_0 = _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0.x, 4294967295u), 21871u, min(4294967295u, var_0.x)), ~(vec3<u32>(u_input.a.x, 1u, 1u) ^ u_input.a.zzw))), reverseBits(~vec3<u32>(u_input.a.x, var_0.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x))));
    var var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(firstTrailingBit(u_input.a.x) > 0u, true, true), func_2(Struct_1(vec3<u32>(4294967295u, 1907u, 3574u), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), 1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-217f, 1873f)), _wgslsmith_f_op_f32(func_1())), Struct_1(vec3<u32>(var_0.x, u_input.a.x, var_0.x), vec4<bool>(true, false, true, true), 26252i, vec2<f32>(-1149f, 726f), -1797f)));
    var var_2 = Struct_1(u_input.a.yxw, select(vec4<bool>(!(var_1.x && var_1.x), any(!vec3<bool>(var_1.x, false, var_1.x)), all(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)), !var_1.x), vec4<bool>(!var_1.x & false, any(select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), false)), !var_1.x, !var_1.x), !any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, true, false, true), true))), 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(122f, _wgslsmith_f_op_f32(ceil(-1450f))))), _wgslsmith_f_op_f32(-144f + -1768f));
    var var_3 = -1786f;
    var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, ~var_0.x, var_2.a.x), (vec3<u32>(u_input.a.x, 1u, 4294967295u) << (vec3<u32>(var_0.x, u_input.a.x, 0u) % vec3<u32>(32u))) << (var_2.a % vec3<u32>(32u))), var_2.a);
    var_0 = _wgslsmith_mod_vec3_u32(var_2.a, _wgslsmith_mult_vec3_u32(var_2.a, _wgslsmith_clamp_vec3_u32(u_input.a.yzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(7524u, u_input.a.x, 0u), var_2.a, vec3<u32>(u_input.a.x, u_input.a.x, 6779u)), vec3<u32>(var_0.x, 42660u, 0u)) & ~vec3<u32>(var_2.a.x, var_0.x, 4294967295u)));
    let var_4 = select(firstLeadingBit(~(~var_0.yy) ^ ~var_2.a.xz), vec2<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x), select(u_input.a.x, u_input.a.x, !func_3(Struct_1(vec3<u32>(var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(false, var_2.b.x, var_1.x, true), 2147483647i, var_2.d, -1368f), vec4<f32>(357f, -100f, var_2.d.x, var_2.d.x)).x)), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(~1i), var_2.c, ~var_2.c, -1i), var_2.d, 4294967295u, _wgslsmith_mod_u32(~15518u, var_4.x));
}

