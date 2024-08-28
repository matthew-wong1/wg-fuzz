struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1426f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_5, arg_3: bool) -> f32 {
    var var_0 = ~vec3<i32>(reverseBits(-arg_1.a.c.x), firstLeadingBit(-26701i), arg_2.a.b.x);
    var_0 = vec3<i32>(~select(_wgslsmith_add_i32(firstTrailingBit(-22673i), arg_1.b.d.b.x), 1i, arg_0.a.a <= 1601f), -1i, firstLeadingBit(var_0.x));
    var var_1 = arg_1.b.e;
    let var_2 = _wgslsmith_f_op_f32(select(-1203f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1505f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.a.a, _wgslsmith_f_op_f32(round(arg_1.b.a))), _wgslsmith_f_op_f32(1000f * arg_0.a.a), true && !arg_1.b.e.x)), select(select(!arg_3, !var_1.x, true), all(select(vec3<bool>(arg_3, true, false), arg_0.a.e.wxx, arg_1.a.e.zwy)), false))), true));
    let var_3 = arg_2.a;
    return arg_0.a.a;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = select(true, true, all(!vec4<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(false, true)), false, true)));
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(464f, Struct_1(u_input.a, vec2<i32>(-2147483647i, 4804i)), vec2<i32>(u_input.a, u_input.a), Struct_1(-19907i, vec2<i32>(u_input.a, -25431i)), vec4<bool>(true, false, true, false))), Struct_4(Struct_2(1000f, Struct_1(37561i, vec2<i32>(u_input.a, 1i)), vec2<i32>(u_input.a, -29393i), Struct_1(u_input.a, vec2<i32>(u_input.a, -732i)), vec4<bool>(true, true, false, true)), Struct_2(-295f, Struct_1(0i, vec2<i32>(-3368i, u_input.a)), vec2<i32>(u_input.a, u_input.a), Struct_1(-2147483647i, vec2<i32>(19496i, -35010i)), vec4<bool>(false, false, true, false))), Struct_5(Struct_1(u_input.a, vec2<i32>(u_input.a, 8732i))), u_input.a <= u_input.a)))), Struct_1(35573i, vec2<i32>(1i >> (1u % 32u), select(u_input.a, -1i, false))), vec2<i32>(u_input.a, _wgslsmith_div_i32(-26704i, -5513i)) ^ reverseBits(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-38651i, -23813i))), Struct_1(~1i & u_input.a, firstLeadingBit(~vec2<i32>(6496i, 29049i))), vec4<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))), true, false, true)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-578f, -698f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f + -913f) * _wgslsmith_f_op_f32(f32(-1f) * -1121f))), Struct_1(~(-u_input.a), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 43668i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))), vec2<i32>(-63484i, abs(-2147483647i)), Struct_1(u_input.a, select(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2113i), true), firstLeadingBit(vec2<i32>(21716i, u_input.a)), vec2<bool>(true, true))), vec4<bool>(u_input.a < -u_input.a, true, all(vec4<bool>(true, true, true, true)), false)));
    var_0 = !(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, var_1.b.c.x, 42483i), vec3<i32>(1i, 2147483647i, u_input.a) | vec3<i32>(u_input.a, var_1.a.c.x, u_input.a))) <= firstLeadingBit(-2147483647i & _wgslsmith_dot_vec2_i32(var_1.a.d.b, vec2<i32>(27274i, var_1.b.d.a))));
    var_0 = _wgslsmith_f_op_f32(trunc(var_1.b.a)) <= -281f;
    let var_2 = var_1;
    return _wgslsmith_mod_u32(~arg_0, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(5416u, 1u, ~1u)), ~1u);
    var var_1 = vec2<bool>(true, _wgslsmith_mult_i32(min(u_input.a, 1i), u_input.a) == u_input.a);
    let var_2 = vec3<u32>(707u, firstTrailingBit(_wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~15019u) << (select(max(41574u, 1u), max(36880u, 16445u), any(vec2<bool>(true, true))) % 32u)), firstTrailingBit(4294967295u) | 58639u);
    var_0 = _wgslsmith_mult_u32(var_2.x, ~9709u);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), 654f), 202f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-686f)), _wgslsmith_f_op_f32(sign(-1397f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-700f, -583f) * vec2<f32>(132f, 105f)))))));
    var_1 = !select(!vec2<bool>(all(vec4<bool>(false, true, false, false)), false || var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(!var_1.x, !(true | var_1.x)));
    var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec4<f32>(-1000f, -854f, 1149f, -656f), false, vec4<f32>(var_3.x, var_3.x, var_3.x, 1000f))), _wgslsmith_f_op_f32(233f * -1179f), true)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 833f)))))), true));
    var_1 = !vec2<bool>(var_1.x, var_1.x);
    var var_4 = all(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, true, true), vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false)), all(vec4<bool>(false, true, var_1.x, false))), select(vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, var_1.x, false)), vec3<bool>(!var_1.x, true, u_input.a >= u_input.a))) & (func_2(1u) >= countOneBits(~var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, ~var_2.x, vec3<i32>(43844i, countOneBits(-1i), _wgslsmith_add_i32(-_wgslsmith_add_i32(15507i, -1i), 32512i)), vec3<i32>(u_input.a, abs(u_input.a ^ u_input.a) << (~63775u % 32u), u_input.a | (u_input.a << (firstTrailingBit(var_2.x) % 32u))));
}

