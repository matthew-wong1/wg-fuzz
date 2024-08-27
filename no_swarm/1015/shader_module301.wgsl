struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-908f - -1196f), -192f))), max(reverseBits(vec3<u32>(_wgslsmith_div_u32(u_input.c, 1u), 95884u >> (0u % 32u), _wgslsmith_mod_u32(u_input.a, 1u))), ~select(vec3<u32>(4294967295u, 2660u, u_input.c), vec3<u32>(71371u, 19144u, 4294967295u), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) & (vec3<u32>(u_input.a, u_input.c, 1u) << (~vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u)))), ~(-(~vec3<i32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -198f));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1000f)))))), ~(~var_0.b), vec3<i32>(-1505i, -24280i, -13243i) >> (reverseBits(_wgslsmith_mod_vec3_u32(max(vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<u32>(var_0.b.x, 52393u, u_input.a)), firstTrailingBit(vec3<u32>(var_0.b.x, 47562u, 17485u)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-828f * var_0.a))))));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(788f, vec3<u32>(u_input.a, min(1u, u_input.c), abs(_wgslsmith_mult_u32(~85863u, _wgslsmith_mult_u32(17223u, arg_1.x)))), ~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), ~vec3<i32>(1i, -2147483647i, -1i)) << (vec3<u32>(firstLeadingBit(u_input.a), ~43010u, firstTrailingBit(u_input.c)) % vec3<u32>(32u))), _wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-392f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(-368f * arg_3.a)))));
    var var_1 = arg_3;
    let var_2 = func_2(select(arg_2, vec2<bool>(!arg_2.x, false), arg_2));
    let var_3 = arg_3;
    let var_4 = 173f;
    return arg_2.x;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = u_input.c;
    var var_1 = Struct_1(1124f);
    let var_2 = 2937i << (0u % 32u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0, 1763f))))))));
    var var_4 = var_0;
    return vec2<bool>(any(select(arg_3.zyz, select(select(vec3<bool>(arg_3.x, true, arg_1), arg_3.wxz, arg_3.x), vec3<bool>(arg_3.x, arg_1, true), select(arg_3.wyx, arg_3.xwz, false)), true)), !(arg_1 || (true && arg_3.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<u32> {
    var var_0 = arg_0.c.x;
    return ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.b.x, 4294967295u), vec3<u32>(u_input.a, 71508u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = !vec2<bool>(!func_1(true, vec3<u32>(u_input.a, 22441u, 4294967295u), vec2<bool>(true, true), Struct_1(-1000f)), all(vec3<bool>(true, true, true)));
    var_0 = var_1.x;
    var_0 = true;
    let var_2 = var_1.x;
    var var_3 = ~func_4(func_2(func_3(-1511f, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(-820f, 415f, 1065f, -579f) + vec4<f32>(-276f, 716f, 917f, 1504f)), vec4<bool>(var_2, false, var_1.x, var_1.x))), !(!select(vec4<bool>(true, var_2, var_1.x, var_2), vec4<bool>(true, false, false, true), vec4<bool>(var_2, var_2, var_2, false))));
    var_3 = max(vec3<u32>(~(~(5385u ^ var_3.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 4294967295u, 1u), vec3<u32>(u_input.c, var_3.x, 48627u)), reverseBits(u_input.c)) ^ ~0u, _wgslsmith_add_u32(~var_3.x & var_3.x, 50124u)), ~(~vec3<u32>(30880u, 76003u, 5442u)) | _wgslsmith_mod_vec3_u32(func_2(vec2<bool>(var_2, false)).b, vec3<u32>(~var_3.x, ~var_3.x, min(var_3.x, u_input.a))));
    let var_4 = vec2<f32>(1f, 1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(select(4294967295u, func_4(Struct_2(-222f, vec3<u32>(var_3.x, 1u, u_input.c), vec3<i32>(u_input.b, -1i, u_input.b), -724f), vec4<bool>(true, var_1.x, false, true)).x, var_1.x), 44530u) >> (1u % 32u), ~abs(_wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 0i), vec2<bool>(true, false)), abs(vec2<i32>(u_input.b, u_input.b)))), ~(~(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -48262i), vec2<i32>(64760i, -1i)))), var_3.x >> (_wgslsmith_add_u32(32502u, ~4294967295u) % 32u));
}

