struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = -1i;
    var var_1 = !arg_0.x;
    let var_2 = Struct_1(69779u, -41508i);
    let var_3 = var_2;
    var_1 = true;
    return Struct_1(~(7914u >> (var_3.a % 32u)), -14180i);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_1(arg_1, ~arg_0.b);
    var var_1 = min(~(~u_input.c.x), countOneBits(68408u));
    var var_2 = var_0;
    var var_3 = select(!select(vec3<bool>(true, true, false), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true), !vec3<bool>(all(vec2<bool>(false, false)), false, true), vec3<bool>(true, true, true));
    let var_4 = ~abs(_wgslsmith_add_u32(_wgslsmith_add_u32(~1u, firstTrailingBit(var_2.a)), ~arg_0.a & (29553u & arg_0.a)));
    return !(!select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(var_3.x, false, true, var_3.x)), all(vec4<bool>(false, false, var_3.x, var_3.x))), select(vec2<bool>(var_3.x, true), !var_3.xx, all(vec3<bool>(var_3.x, true, true)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(932f)))), _wgslsmith_div_f32(-664f, _wgslsmith_f_op_f32(step(-1000f, arg_1))))), -958f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, arg_1))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(403f, 1219f)))) - vec2<f32>(_wgslsmith_f_op_f32(step(-2208f, arg_1)), _wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))))));
    var var_2 = Struct_1(reverseBits(arg_0.a), 2147483647i);
    var var_3 = select(select(func_3(func_2(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), ~(~17446u)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), func_3(Struct_1(u_input.a, -42693i), 4294967295u)), func_3(arg_0, ~7717u), vec2<bool>(false, true)), vec2<bool>(true, true)), select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), func_3(func_2(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), ~func_2(vec3<bool>(false, true, true)).a), true), true);
    let var_4 = arg_0;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1965f, 1333f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(884f, 941f))) - vec2<f32>(1648f, 467f))), ~select(u_input.a, u_input.b, true) & _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(u_input.c.yyy, abs(u_input.c.xzy))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(1i), abs(0i), func_1(Struct_1(u_input.a, 26969i), 2161f)), max(-vec3<i32>(1i, -2147483647i, -2147483647i), vec3<i32>(1i, 1i, 1i)), min(vec3<i32>(-1i, 3499i, 31596i), min(vec3<i32>(4872i, 26728i, -2147483647i), vec3<i32>(-1i, -40220i, 26832i)))), -105f);
}

