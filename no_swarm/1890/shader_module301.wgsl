struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec4<i32> {
    return vec4<i32>(-15130i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(10443i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 0i, u_input.a), vec4<i32>(-71174i, u_input.a, -45635i, u_input.a)), -87655i, countOneBits(u_input.a)), (vec4<i32>(-2147483647i, u_input.a, u_input.a, -33623i) ^ vec4<i32>(23448i, 1i, -46347i, 65076i)) & ~vec4<i32>(u_input.a, u_input.a, 70154i, -8741i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(-43049i, _wgslsmith_mult_i32(u_input.a, u_input.a)), u_input.a)), ~(~7575i), u_input.a);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(true);
    let var_1 = ~vec4<u32>(34176u, ~countOneBits(~1u), abs(~(~130203u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(313u, 26795u), vec2<u32>(4294967295u, 62438u)), 1u) ^ 8400u);
    var_0 = Struct_2((((u_input.a >= arg_2.b) | var_0.a) || false) | var_0.a);
    var var_2 = var_1.x;
    let var_3 = _wgslsmith_f_op_f32(round(arg_2.a)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2639f)))), arg_2.a);
    return vec4<bool>(false, !(!(!all(vec4<bool>(true, var_0.a, var_0.a, var_3)))), !(max(var_1.x, max(var_1.x, var_1.x)) > var_1.x), all(vec4<bool>(select(var_0.a, false, all(vec3<bool>(true, false, var_0.a))), any(vec4<bool>(true, var_3, false, var_0.a)), var_3, !all(vec2<bool>(var_0.a, var_0.a)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_2(true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(-867f)), _wgslsmith_mod_i32(func_2().x, arg_0.x));
    var_1 = Struct_1(var_1.a, -22422i ^ -arg_0.x);
    var_1 = Struct_1(var_1.a, 26671i);
    var var_2 = 1u;
    return Struct_2(arg_1.x);
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = func_4(func_2(), func_3(abs(-40366i), firstLeadingBit(44308i), Struct_1(_wgslsmith_f_op_f32(-455f + _wgslsmith_f_op_f32(min(-578f, -845f))), -29688i)));
    return _wgslsmith_dot_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(arg_0, arg_0, arg_0)), firstTrailingBit(vec3<u32>(0u, arg_0, arg_0)), max(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(1u, arg_0, 72449u)))), _wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(119012u, arg_0, 4294967295u)), ~(~vec3<u32>(6763u, 13321u, arg_0)), vec3<u32>(~_wgslsmith_div_u32(22374u, 1u), ~arg_0 & 4294967295u, ~arg_0 << (~arg_0 % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(false);
    var_0 = Struct_2(true);
    var_0 = Struct_2(var_0.a);
    var var_1 = ~countOneBits(_wgslsmith_mod_u32(func_1(47485u) & 2213u, 0u));
    var_1 = ~0u;
    var var_2 = (abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 39183u, 19291u), vec4<u32>(15703u, 13506u, 14236u, 15325u)))) & 0u) | (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, ~0u), 1u, 1u) << (~func_1(81096u) % 32u));
    let var_3 = Struct_1(-1265f, 11756i);
    var_0 = Struct_2(!var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), ~_wgslsmith_mod_u32(1u, 70406u), abs(1u), ~(~select(~vec2<u32>(138169u, 7224u), ~vec2<u32>(0u, 46939u), true)));
}

