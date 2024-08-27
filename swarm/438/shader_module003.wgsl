struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> vec4<bool> {
    global0 = Struct_1(false);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(184f)));
    var var_1 = arg_0.x;
    var_1 = arg_0.x;
    var_1 = -2027f;
    return !vec4<bool>(global0.a, true, true, any(vec4<bool>(any(vec3<bool>(global0.a, global0.a, global0.a)), true, global0.a, any(vec3<bool>(global0.a, global0.a, false)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> f32 {
    global0 = Struct_1(all(arg_1.wz));
    var var_0 = arg_1.x;
    var var_1 = 1892f;
    var_1 = _wgslsmith_div_f32(1422f, 118f);
    return _wgslsmith_f_op_f32(f32(-1f) * -1498f);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> vec3<f32> {
    let var_0 = vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, 31790i, arg_0.x, 6445i) & vec4<i32>(arg_0.x, arg_0.x, -5896i, u_input.b), firstLeadingBit(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.b))));
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1, func_2(vec2<f32>(arg_2, arg_2)), -arg_0, select(vec2<u32>(u_input.d, u_input.e.x), vec2<u32>(u_input.a, 1u), vec2<bool>(global0.a, global0.a)))) + arg_2))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = all(select(vec4<bool>(arg_0.a, false, true, false), vec4<bool>(global0.a, select(true, true, true), all(vec4<bool>(arg_0.a, false, true, true)) && (657f < arg_1.x), !arg_0.a), !arg_0.a));
    var_0 = false;
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_clamp_u32(0u, u_input.c, 1u), 56365u, _wgslsmith_mult_u32(0u, 80352u)) ^ vec4<u32>(u_input.a, u_input.c, _wgslsmith_mult_u32(26034u, u_input.c), firstTrailingBit(u_input.c)), _wgslsmith_div_vec4_u32((vec4<u32>(40582u, 1u, u_input.d, u_input.c) ^ vec4<u32>(u_input.c, u_input.d, 4294967295u, u_input.d)) << (vec4<u32>(4294967295u, u_input.a, u_input.d, u_input.e.x) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.e.x, 0u, u_input.d, 1u)))) << (select(firstLeadingBit(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.e.x, u_input.d, 1u, 4294967295u)), ~vec4<u32>(0u, u_input.d, 39751u, 1u))), ~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 46185u, u_input.e.x, u_input.d), vec4<u32>(4292u, u_input.e.x, 54654u, 4294967295u), vec4<u32>(u_input.c, u_input.e.x, 78077u, u_input.a)), abs(vec4<u32>(u_input.e.x, 4294967295u, u_input.d, 4294967295u))), true) % vec4<u32>(32u));
    var_0 = false;
    let var_2 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    return Struct_1(true);
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, 1321f)) + vec2<f32>(-241f, 1000f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1524f, -192f), vec2<f32>(-619f, 953f), arg_1.a)) - vec2<f32>(559f, -508f)))).x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1, vec4<bool>(true, false, var_0.a, true), vec2<i32>(0i, 1i), u_input.e)) - 148f)), _wgslsmith_f_op_vec3_f32(func_1(abs(vec2<i32>(u_input.b, u_input.b)) & (vec2<i32>(u_input.b, 46908i) & vec2<i32>(0i, u_input.b)), Struct_1(func_4(arg_1, vec3<f32>(617f, 939f, -605f)).a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-155f)))))).x, 534f, _wgslsmith_f_op_f32(sign(-532f))));
    var var_2 = Struct_1(!(func_2(_wgslsmith_f_op_vec2_f32(var_1.wx + var_1.zx)).x || false));
    let var_3 = var_0;
    let var_4 = vec2<u32>(~(1u << (arg_0 % 32u)), 32012u);
    return Struct_1(!global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(85360u, func_4(Struct_1(true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1080f, -540f, -139f), vec3<f32>(-171f, -1908f, 1090f)))) + _wgslsmith_f_op_vec3_f32(func_1(-vec2<i32>(2147483647i, -1i), Struct_1(false), 257f)))));
    global0 = func_5(_wgslsmith_mod_u32(4294967295u, abs(~(~u_input.a))), Struct_1(global0.a));
    let var_0 = vec4<bool>(!all(!select(vec4<bool>(global0.a, global0.a, true, true), vec4<bool>(global0.a, global0.a, true, global0.a), false)), !select(true, all(select(vec2<bool>(false, global0.a), vec2<bool>(false, true), vec2<bool>(global0.a, true))), func_5(~46123u, Struct_1(true)).a), func_4(func_4(Struct_1(u_input.e.x == 30050u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1065f, -237f, 603f) + vec3<f32>(1439f, -371f, 128f))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1029f, _wgslsmith_div_f32(2901f, -475f), _wgslsmith_f_op_f32(min(-563f, 842f)))))).a, global0.a);
    global0 = Struct_1(false);
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(min(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.d, 0u), vec4<u32>(u_input.e.x, u_input.d, 4314u, 30485u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 44520u, 11746u, 1u), vec4<u32>(4294967295u, 4294967295u, 5895u, u_input.d))), countOneBits(firstLeadingBit(reverseBits(vec4<u32>(u_input.e.x, 40906u, u_input.c, 2192u))))), -countOneBits(firstLeadingBit(vec2<i32>(u_input.b, 2147483647i) & vec2<i32>(-8995i, -4865i))));
}

