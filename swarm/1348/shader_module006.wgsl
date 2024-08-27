struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = 1u;
    var var_1 = !(!vec4<bool>(any(select(vec4<bool>(true, false, arg_1.a, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, arg_0.a, false))), arg_1.a, arg_2.a, arg_2.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var_1 = select(vec4<bool>(any(var_1.zz), true, arg_2.a, !(!select(arg_0.a, var_1.x, false))), vec4<bool>(true, false, all(vec2<bool>(!var_1.x, true)), all(!vec2<bool>(arg_0.a, true))), !all(var_1.wxw));
    var_0 = abs(_wgslsmith_mult_u32(~(~(~0u)), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(31146u, 42039u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(101614u, 4294967295u, 4294967295u), vec3<u32>(0u, 22109u, 1u), vec3<u32>(0u, 1u, 30513u))))));
    return global1.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0 | (~arg_0 & ~arg_0), vec2<u32>(firstTrailingBit(max(33762u, 4294967295u)), ~_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(1u, arg_0.x)))), select(select(arg_0, arg_0, true), vec2<u32>(833u, arg_0.x), vec2<bool>(any(!vec4<bool>(global1.a, global1.a, global1.a, false)), true)));
    var var_1 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * arg_1));
    global1 = Struct_1(!all(vec3<bool>(func_3(Struct_1(global1.a), Struct_1(true), Struct_1(global1.a)), true, global1.a)));
    let var_2 = Struct_1(global1.a);
    var_0 = ~vec2<u32>(var_0.x, _wgslsmith_add_u32(0u, arg_0.x << ((arg_0.x & var_0.x) % 32u)));
    return Struct_1(!select(true, global1.a, true));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = true;
    let var_1 = u_input.d.x <= 1i;
    global0 = arg_0;
    var var_2 = _wgslsmith_div_vec2_i32(-firstLeadingBit(u_input.c.zy), u_input.d.xx);
    let var_3 = vec2<u32>(reverseBits(firstTrailingBit(1u)), 1u) ^ countOneBits(~vec2<u32>(0u >> (1u % 32u), abs(4294967295u)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(783f))) - _wgslsmith_f_op_f32(-1420f + _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1351f)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, _wgslsmith_add_u32(arg_2.x, arg_2.x), arg_1), ~vec4<u32>(countOneBits(arg_1), ~arg_1, arg_1, ~0u)));
    let var_1 = arg_2.xz;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1800f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(846f)), 1317f) + _wgslsmith_f_op_vec2_f32(func_4(494f, vec4<bool>(arg_0, false, arg_0, false), -u_input.c.x, func_2(vec2<u32>(arg_1, arg_2.x), -1875f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(sign(1115f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-543f, 614f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(587f, -330f) * vec2<f32>(1000f, -133f))))));
    return Struct_1(false && func_3(Struct_1(global1.a | global1.a), func_2(vec2<u32>(var_2, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -149f)), func_2(~vec2<u32>(var_0.x, arg_1), _wgslsmith_f_op_f32(-var_3.x))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = ~vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32315u, 66973u, 0u, 1u), vec4<u32>(0u, 4294967295u, 66030u, 48569u)), ~0u)), ~1u, select(24947u, 0u, false), _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(34480u, 0u, 71741u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(9700u, 0u, 64739u), vec3<u32>(4294967295u, 45773u, 43437u)), vec3<u32>(1u, 4294967295u, 57194u))));
    global0 = _wgslsmith_f_op_f32(trunc(arg_2));
    var var_1 = func_1(false, var_0.x, ~((var_0.wyz | ~vec3<u32>(30369u, var_0.x, 4294967295u)) & ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.x, 4294967295u), vec3<u32>(var_0.x, var_0.x, var_0.x))), u_input.c);
    var var_2 = func_2(var_0.yy, _wgslsmith_f_op_f32(step(arg_2, arg_2)));
    let var_3 = arg_1;
    return ~abs(9444u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u > func_5(select(vec3<bool>(global1.a, false, false), vec3<bool>(false, global1.a, global1.a), true), func_1(global1.a, _wgslsmith_clamp_u32(93715u, 0u, 44890u), ~vec3<u32>(0u, 1u, 64281u), countOneBits(vec4<i32>(u_input.d.x, u_input.a, u_input.a, 12750i))), _wgslsmith_f_op_f32(-369f * _wgslsmith_f_op_f32(f32(-1f) * -212f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(-681f, vec4<bool>(global1.a, global1.a, var_0.a, any(vec4<bool>(false, var_0.a, true, var_0.a))), u_input.e, func_2(firstLeadingBit(vec2<u32>(4294967295u, 1u)), _wgslsmith_f_op_f32(-328f * -1106f)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-284f + -662f) - _wgslsmith_f_op_f32(min(-1449f, 1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f)))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-402f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f) + _wgslsmith_f_op_f32(-136f * -548f)))), -1540f));
    var_2 = _wgslsmith_f_op_f32(-166f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -398f) * -205f) - 290f)));
    let var_3 = ~16182u;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1007f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(295f * 326f)) * _wgslsmith_f_op_f32(select(761f, _wgslsmith_f_op_f32(-295f - -166f), any(vec2<bool>(false, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(461f)) + -1779f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1697f))))), _wgslsmith_f_op_f32(215f * _wgslsmith_f_op_f32(abs(173f))));
}

