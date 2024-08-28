struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    var var_0 = select(vec2<bool>((true && select(true, false, true)) | false, select(true, all(vec2<bool>(false, true)), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(true, false)), false), vec2<bool>(true, true), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))))), any(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~0i, _wgslsmith_sub_i32(2759i, -27385i), 35053i, ~(-27641i)), countOneBits(max(vec4<i32>(1i, 33647i, -19752i, 6018i), vec4<i32>(-57954i, 2147483647i, -2147483647i, 57197i)))) ^ countOneBits(1i), firstLeadingBit(38862i), reverseBits(-2147483647i), ~1i);
    global0 = Struct_1(u_input.a);
    var var_2 = vec2<bool>(true, !(var_0.x & var_0.x) | true);
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2514f)) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(788f + -1463f) + _wgslsmith_f_op_f32(step(-860f, -631f))) - _wgslsmith_f_op_f32(f32(-1f) * -784f)))));
    return var_0.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -162f;
    global0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(global0.a ^ ~28936u, _wgslsmith_add_u32(~arg_0.a, ~arg_0.a)), 4294967295u));
    var var_1 = arg_0;
    let var_2 = Struct_1(0u);
    let var_3 = vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true || func_3())), var_0 <= var_0, true);
    return arg_0;
}

fn func_1() -> u32 {
    var var_0 = func_2(Struct_1(~0u));
    var_0 = Struct_1(global0.a);
    let var_1 = Struct_1(~global0.a);
    var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, global0.a, 1u, 4294967295u)) | ~vec4<u32>(0u, var_0.a, var_0.a, 0u), firstLeadingBit(vec4<u32>(var_1.a, 35441u, 4294967295u, 1u))));
    let var_2 = func_2(func_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b))));
    return countOneBits(0u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_add_u32(~firstLeadingBit(0u), ~global0.a)));
    var var_0 = ~firstTrailingBit(select(vec3<u32>(3630u, arg_0.a, ~54091u), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 47935u, arg_0.a), vec3<u32>(0u, 28352u, global0.a)), vec3<bool>(select(false, true, arg_1.x), arg_1.x, any(vec2<bool>(arg_1.x, false)))));
    var var_1 = vec4<i32>(1i, 1i | select(-2147483647i, _wgslsmith_add_i32(63231i, -2147483647i), arg_1.x), i32(-1i) * -countOneBits(11386i), 40103i) << (reverseBits(vec4<u32>(~_wgslsmith_mod_u32(global0.a, 0u), ~_wgslsmith_mult_u32(1u, var_0.x), 0u, ~1u)) % vec4<u32>(32u));
    var var_2 = ~vec4<u32>(~reverseBits(u_input.a | 1u), ~firstLeadingBit(~17829u), select(~_wgslsmith_mult_u32(u_input.a, arg_0.a), 67097u, false), ~select(u_input.c, arg_0.a ^ 0u, arg_1.x));
    var var_3 = vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, select(var_1.x, -436i, arg_1.x), var_1.x), -(~(-33404i << (var_0.x % 32u))) >> (4294967295u % 32u));
    return func_2(func_2(func_2(func_2(func_2(arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~0u);
    var var_1 = func_4(Struct_1(_wgslsmith_clamp_u32(u_input.b.x, firstTrailingBit(global0.a >> (26816u % 32u)), func_1())), select(vec2<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), false), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), true)), false));
    global0 = Struct_1(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(856f, 1097f)), vec2<f32>(-483f, -1379f), false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2134f + -1364f), _wgslsmith_f_op_f32(-1213f * 1172f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-369f + -676f)))))), ~(~vec2<u32>(global0.a ^ var_1.a, _wgslsmith_add_u32(global0.a, global0.a))));
}

