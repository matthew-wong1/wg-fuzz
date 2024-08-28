struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = select(1u, _wgslsmith_mod_u32(~(~(~1u)), 4294967295u), true);
    var var_1 = arg_0;
    var var_2 = !all(vec2<bool>((arg_0.a <= var_1.a) & true, arg_0.a >= _wgslsmith_f_op_f32(-var_1.a)));
    var_2 = u_input.a.x <= u_input.b;
    let var_3 = u_input.a.x;
    return u_input.a.xzx;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = Struct_1(var_0.a);
    var var_2 = -func_3(Struct_1(var_0.a));
    let var_3 = vec4<bool>(any(select(vec2<bool>(true, u_input.c >= u_input.c), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), false, any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec3<bool>(false, false, false)))), (true || any(vec3<bool>(true, true, true))) && false);
    var_2 = vec3<i32>(-(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -1i), vec2<i32>(-1i, 0i)) & (-var_2.x << (countOneBits(4294967295u) % 32u))), countOneBits(~(-30414i)), var_2.x);
    return _wgslsmith_f_op_f32(376f - _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, -284f), arg_0.a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)));
    var var_2 = all(vec4<bool>(all(vec2<bool>(all(vec3<bool>(true, false, false)), true)), -157f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.a)), -1410f)), true, !(_wgslsmith_add_i32(34521i, u_input.c) < countOneBits(u_input.c))));
    let var_3 = firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(~1u, min(27225u, 23867u), _wgslsmith_dot_vec2_u32(vec2<u32>(22653u, 4294967295u), vec2<u32>(1u, 1u))), ~vec3<u32>(1u, 1u, 1u)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(arg_0)))))) - -833f));
    return vec3<bool>(select(select(false, var_3.x <= var_3.x, true), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), false | !select(false, true, false)), !(!all(vec2<bool>(true, true))), any(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), arg_2.a));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1286f + -1083f));
    let var_2 = countOneBits(u_input.a.yxy);
    var var_3 = !(!vec2<bool>(all(vec3<bool>(true, true, true)), arg_0));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-2473f, arg_2.a), vec2<f32>(339f, 297f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a, arg_2.a)))), !(!vec2<bool>(var_3.x, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, -1000f), vec2<f32>(-974f, -1455f), arg_0)))))), vec2<f32>(var_0.a, var_1.a));
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f)), var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(-_wgslsmith_add_vec2_i32(u_input.a.yw, ~vec2<i32>(-1i, u_input.b))));
    var_0 = ~vec2<i32>(-2147483647i, var_0.x);
    var var_1 = func_4(any(vec4<bool>(false, any(func_1(Struct_1(199f), Struct_1(-352f))), true, func_1(Struct_1(-466f), Struct_1(-304f)).x)), 4294967295u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1277f, -802f, false)))))), var_0.x);
    let var_2 = 41538i;
    let var_3 = -2147483647i;
    var var_4 = vec4<u32>(~(~_wgslsmith_mod_u32(94863u, 42840u) >> (1u % 32u)), 4294967295u, 1u, (_wgslsmith_sub_u32(select(1u, 0u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(57809u, 9280u), vec2<u32>(1u, 1u))) << (1852u % 32u)) >> (~_wgslsmith_sub_u32(~32026u, firstTrailingBit(44713u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, var_1.a, var_1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -1000f, -667f, var_1.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1833f, -974f, var_1.a, 293f) - vec4<f32>(var_1.a, 2113f, -256f, var_1.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, var_1.a, -1528f, var_1.a))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, var_1.a, var_1.a, var_1.a) + vec4<f32>(-457f, var_1.a, 1297f, -664f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(283f, var_1.a, var_1.a, var_1.a) + vec4<f32>(769f, -2308f, var_1.a, 1107f))))), vec4<i32>(9343i, i32(-1i) * -u_input.a.x, -_wgslsmith_sub_i32(var_2, u_input.a.x), var_2 ^ -_wgslsmith_mod_i32(-1i, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f + var_1.a)));
}

