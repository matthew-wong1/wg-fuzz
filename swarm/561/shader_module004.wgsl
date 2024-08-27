struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    var var_1 = arg_3;
    return _wgslsmith_div_i32(_wgslsmith_mult_i32(abs(u_input.a.x | -2147483647i), 0i), _wgslsmith_clamp_i32(u_input.b.x, -max(0i, 9861i), u_input.a.x)) > u_input.b.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec3<u32> {
    return vec3<u32>(~_wgslsmith_div_u32(~1u, 47325u), ~38458u, ~4294967295u);
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(-897f);
    var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = min(func_3(u_input.b, vec4<bool>(false, _wgslsmith_f_op_f32(-var_0.a) > _wgslsmith_div_f32(-107f, var_0.a), !func_2(arg_0, arg_0, arg_0, arg_0), true)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 1u, 1u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(2621u, 4294967295u, 6077u), ~vec3<u32>(57219u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), vec3<u32>(76723u, _wgslsmith_mult_u32(firstLeadingBit(7335u), 80913u), 1u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(arg_0.a)));
    return ~19288u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -530f), -424f))))));
    let var_1 = Struct_1(-453f);
    let var_2 = vec3<bool>(true, select(false, true, any(vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, func_2(var_0, Struct_1(-1000f), Struct_1(var_0.a), var_0)))), !(false != !all(vec2<bool>(false, false))));
    let var_3 = (false | !(!func_2(Struct_1(var_0.a), Struct_1(var_0.a), Struct_1(var_1.a), Struct_1(-365f)))) | var_2.x;
    var var_4 = min(~(~42169u), 1u | countOneBits(func_3(abs(u_input.a.xz), select(vec4<bool>(false, var_2.x, var_3, var_2.x), vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_3, false, var_3, var_2.x))).x));
    return Struct_1(1223f);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> Struct_1 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1389f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -850f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(247f)), _wgslsmith_f_op_f32(round(-1242f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(494f))) * _wgslsmith_f_op_f32(f32(-1f) * -1519f))));
    let var_1 = func_5(func_4(~_wgslsmith_add_u32(1u, firstLeadingBit(4294967295u)), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(29590u, 8446u), 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7190u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 23326u)) >> (func_1(Struct_1(var_0.x)) % 32u)), 1i, 684f);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-353f + _wgslsmith_f_op_f32(f32(-1f) * -205f))))));
    var var_3 = 38899u;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_2.a)), _wgslsmith_div_f32(-1122f, -602f));
    var var_5 = select(vec4<bool>(true, !(select(u_input.b.x, -2147483647i, true) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), u_input.a.zw)), true, true), !vec4<bool>(_wgslsmith_f_op_f32(var_2.a - -1106f) != -261f, !any(vec4<bool>(false, true, false, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), false || (u_input.b.x <= u_input.a.x)), func_2(Struct_1(var_0.x), func_4(abs(~19120u), ~(~50457u), abs(~45948u)), var_2, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.a, var_0.x)), var_2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + 1775f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2528f)))))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 123196u, 1u, ~49199u), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(7212u, 0u, 14048u, 48744u)), ~vec4<u32>(25540u, 4294967295u, 20691u, 4294967295u)), select(select(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(4294967295u, 1u, 0u, 0u), var_5.x), vec4<u32>(0u, 1u, 4294967295u, 0u), false), abs(~vec4<u32>(36317u, 1u, 27953u, 0u)))), -1i, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -680f)))), _wgslsmith_f_op_f32(f32(-1f) * -323f)));
}

