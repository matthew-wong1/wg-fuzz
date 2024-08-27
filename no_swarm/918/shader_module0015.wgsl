struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = firstTrailingBit(~2147483647i);
    var_0 = arg_1;
    let var_2 = -832f;
    var var_3 = !(true || all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)));
    return select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.a.x >= u_input.c), (u_input.b <= 0i) && any(vec2<bool>(true, true))), select(vec2<bool>(true, false), vec2<bool>(any(vec4<bool>(false, true, true, false)), true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), vec2<bool>(false, any(vec2<bool>(true, true)))), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = !vec2<bool>(35553i >= (~u_input.a >> (~1u % 32u)), -(-2147483647i & u_input.a) <= 1i);
    let var_1 = vec4<u32>(43449u, abs(4294967295u), ~arg_1.x, 122853u);
    var_0 = !(!select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x)), !select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), select(func_3(0u, Struct_2(vec2<u32>(arg_0.a, u_input.c)), Struct_1(54890u, arg_0.b), arg_0.b), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false))));
    var_0 = vec2<bool>(_wgslsmith_mult_u32(7015u, _wgslsmith_mult_u32(arg_1.x, 0u)) > 21670u, arg_0.b <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b, 299f == _wgslsmith_f_op_f32(ceil(arg_0.b)))));
    var var_2 = select(!func_3(firstLeadingBit(_wgslsmith_mult_u32(1u, var_1.x)), Struct_2(_wgslsmith_mult_vec2_u32(var_1.zw, arg_1.zy)), arg_0, -1323f), vec2<bool>(_wgslsmith_f_op_f32(-arg_0.b) < arg_0.b, var_0.x == !var_0.x), !select(!(!vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, false), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), vec2<bool>(false, true)), vec2<bool>(true, false)), vec2<bool>(true, !var_0.x)));
    return Struct_2(vec2<u32>(~4220u, arg_1.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(244f, -371f, 250f, 1687f))) * vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = func_2(Struct_1(4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -170f)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(45159u, 7286u, 1u, 45438u), ~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))));
    var var_2 = func_2(Struct_1(41661u, var_0.x), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_1.a.x, ~u_input.c, _wgslsmith_clamp_u32(u_input.c, 0u, 11972u)), vec4<u32>(u_input.c, _wgslsmith_mult_u32(var_1.a.x, var_1.a.x), 0u, firstTrailingBit(1u)), vec4<u32>(~var_1.a.x, ~0u, 0u ^ var_1.a.x, 8041u))));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 779f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -316f) * vec4<f32>(var_0.x, 466f, var_0.x, 941f))))))));
    var_2 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(16228u ^ u_input.c), 1u), vec2<u32>(~1u, 13945u)));
    return Struct_1(_wgslsmith_add_u32(~(var_2.a.x & ~45016u), 12962u), var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    let var_0 = Struct_3(any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)))), _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1094f - arg_0.b))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = u_input.b;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1534f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-472f, 1136f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b)) * var_0.c));
    let var_4 = vec4<bool>(!var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) < arg_0.b, true, any(!select(!vec3<bool>(true, false, var_0.a), !vec3<bool>(var_0.a, true, var_0.a), var_0.a & false)));
    return StorageBuffer(130968u, abs(56081u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = vec4<i32>(u_input.a, ~(-2147483647i), -1i, -_wgslsmith_add_i32(-3434i, u_input.a));
    let x = u_input.a;
    s_output = func_4(func_1(firstLeadingBit(select(~vec3<i32>(u_input.a, var_1.x, u_input.b), var_1.wzx, true)), vec3<bool>(true, true, true)), _wgslsmith_clamp_u32(1u, 4294967295u, ~33739u));
}

