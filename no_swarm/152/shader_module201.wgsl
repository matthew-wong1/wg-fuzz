struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = -40367i;
    var var_1 = vec4<bool>(true, true && arg_2.x, true, all(select(select(select(vec2<bool>(arg_2.x, arg_2.x), arg_2, arg_2), select(vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(arg_3.a, true), arg_2), arg_2), select(!arg_2, vec2<bool>(true, false), arg_3.a), true)));
    var var_2 = vec3<bool>(!all(select(select(var_1.xzx, var_1.wyw, var_1.zyy), select(var_1.zww, var_1.zwx, vec3<bool>(true, true, var_1.x)), !vec3<bool>(var_1.x, true, var_1.x))), any(var_1.zww), !arg_2.x);
    var_2 = var_1.zzw;
    let var_3 = arg_3;
    return -800f;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-100f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f - -2676f) - arg_1)) - 405f), _wgslsmith_sub_u32(reverseBits(u_input.a.x), firstLeadingBit(24372u)), -16149i | arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(950f))))) + arg_1), firstLeadingBit(u_input.a) & vec3<u32>(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 0u, reverseBits(_wgslsmith_add_u32(u_input.a.x, 16545u))));
    return vec3<bool>(_wgslsmith_mod_i32(-(24077i ^ var_2.c), -1i) >= _wgslsmith_sub_i32(select(var_2.c | arg_2.x, i32(-1i) * -2147483647i, 0i > u_input.b), firstLeadingBit(~u_input.b)), arg_0.a, min(arg_2.x, var_2.c) > ~(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(u_input.d.x, -24067i, u_input.d.x, 12299i)) ^ ~(-65432i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_0.d - 577f), -1351f, 245f, _wgslsmith_f_op_f32(-arg_0.a)))))));
    let var_2 = ~select(arg_1.e, firstTrailingBit(~(~vec3<u32>(arg_0.e.x, u_input.a.x, 1u))), select(vec3<bool>(true, true, false), select(func_3(Struct_2(true), arg_1.d, vec4<i32>(2147483647i, var_0, arg_1.c, arg_1.c)), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a, 624f, -1963f, _wgslsmith_f_op_f32(round(arg_0.a))))))));
    var var_3 = arg_1;
    return !select(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), func_3(Struct_2(true), var_1.x, vec4<i32>(arg_0.c, arg_1.c, -10224i, 1i)), vec3<bool>(true, true, true)), vec3<bool>(~(-8515i) > _wgslsmith_add_i32(2147483647i, arg_0.c), true, any(vec2<bool>(true, false))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = all(func_2(Struct_1(117f, u_input.a.x, -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(231f, u_input.a.x, u_input.c, 748f, u_input.a), u_input.d.x, vec2<bool>(true, true), Struct_2(true))), -925f), vec3<u32>(1u, u_input.a.x, u_input.a.x) << (~vec3<u32>(4294967295u, 4294967295u, u_input.a.x) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(782f - _wgslsmith_div_f32(-776f, 1725f)), 0u, 1i, _wgslsmith_f_op_f32(1f * -1000f), vec3<u32>(22306u, u_input.a.x, 41993u) ^ max(u_input.a, u_input.a))));
    var_0 = !(!(!any(vec4<bool>(true, true, true, true))));
    var_0 = true;
    var_0 = !any(vec2<bool>(true, true));
    var_0 = false;
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, ~u_input.a.x), _wgslsmith_mod_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x >> (u_input.a.x % 32u), ~1u) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), ~vec2<u32>(u_input.a.x, 90872u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~1i), 15829i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d.x, firstLeadingBit(u_input.b)), 1i), u_input.b), firstTrailingBit(1u), u_input.d, u_input.a.x);
}

