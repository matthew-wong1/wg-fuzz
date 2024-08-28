struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    var var_0 = Struct_4(vec2<u32>(arg_1, 1u), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1769f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~u_input.a), !(!select(!vec3<bool>(false, false, arg_0.x), vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x))));
    var var_1 = var_0.a.x << (arg_1 % 32u);
    let var_2 = -(~_wgslsmith_div_i32(-1i, -65503i << (~u_input.a % 32u)));
    var_0 = Struct_4(~select(min(~vec2<u32>(arg_1, u_input.a), ~vec2<u32>(u_input.a, u_input.a)), ~var_0.a | var_0.a, !vec2<bool>(true, arg_0.x)), Struct_3(1069f, firstTrailingBit(u_input.a)), vec3<bool>(!all(vec3<bool>(var_0.c.x, false, true)), var_0.c.x, all(!vec3<bool>(arg_0.x, arg_0.x, false)) || (var_2 <= ~var_2)));
    var var_3 = Struct_5(Struct_2(select(arg_0, !var_0.c.yz, false & !arg_0.x), Struct_1(select(vec2<bool>(true, arg_0.x), select(arg_0, arg_0, var_0.c.zy), vec2<bool>(true, var_0.c.x))), Struct_1(!select(vec2<bool>(arg_0.x, true), arg_0, var_0.c.xy)), Struct_1(!arg_0)), var_2);
    return u_input.a << (1u % 32u);
}

fn func_2(arg_0: Struct_5, arg_1: f32) -> u32 {
    let var_0 = Struct_3(arg_1, func_3(!arg_0.a.d.a, u_input.a));
    var var_1 = -19650i;
    var_1 = 1i;
    let var_2 = arg_0.a;
    let var_3 = Struct_5(Struct_2(select(!select(var_2.c.a, var_2.c.a, vec2<bool>(false, var_2.a.x)), vec2<bool>(true, true), vec2<bool>(var_2.b.a.x | false, any(var_2.a))), Struct_1(vec2<bool>(true, true)), var_2.c, Struct_1(vec2<bool>(any(vec3<bool>(true, arg_0.a.b.a.x, var_2.a.x)), false))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<i32>(1i, arg_0.b, -16999i, 1i) | vec4<i32>(2147483647i, arg_0.b, 2147483647i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, 2147483647i, 1i), vec4<i32>(arg_0.b, arg_0.b, arg_0.b, 1i)) & max(vec4<i32>(2147483647i, 1i, arg_0.b, -56241i), vec4<i32>(-5982i, arg_0.b, 0i, arg_0.b))));
    return max(0u, ~(~var_0.b));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_3 {
    let var_0 = true;
    var var_1 = ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, u_input.a, _wgslsmith_add_u32(arg_1, 35229u)), abs(vec3<u32>(4294967295u, 37319u, u_input.a))) & max(~(~vec3<u32>(4294967295u, u_input.a, u_input.a)) << (vec3<u32>(func_2(Struct_5(Struct_2(vec2<bool>(var_0, var_0), Struct_1(vec2<bool>(var_0, var_0)), Struct_1(vec2<bool>(var_0, false)), Struct_1(vec2<bool>(true, var_0))), -1i), -734f), arg_1, 27582u) % vec3<u32>(32u)), ~firstTrailingBit(vec3<u32>(0u, 7633u, 31223u)));
    var var_2 = !select(select(select(select(vec4<bool>(true, var_0, var_0, true), vec4<bool>(true, var_0, true, true), vec4<bool>(true, false, var_0, var_0)), !vec4<bool>(true, var_0, var_0, true), vec4<bool>(var_0, var_0, var_0, true)), !(!vec4<bool>(false, var_0, var_0, var_0)), select(select(vec4<bool>(var_0, true, true, true), vec4<bool>(false, true, true, var_0), vec4<bool>(true, var_0, true, var_0)), vec4<bool>(true, true, true, true), vec4<bool>(var_0, false, true, false))), vec4<bool>(false, true, all(select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(var_0, var_0, false, false), true)), var_0), select(vec4<bool>(true, select(var_0, var_0, false), true, select(false, true, false)), !(!vec4<bool>(var_0, false, var_0, true)), var_0));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1357f, 294f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-205f, 202f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1458f), vec2<f32>(-807f, -606f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-704f, 213f) * vec2<f32>(1584f, 565f))), vec2<f32>(_wgslsmith_f_op_f32(-1506f * -1535f), _wgslsmith_f_op_f32(min(-1316f, -879f))), var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-446f + 252f))) + _wgslsmith_f_op_f32(f32(-1f) * -755f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f - -2385f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-177f, 832f, true)) + _wgslsmith_div_f32(589f, -317f)))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x)))))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(588f, var_3.x))), var_3.x)) + 765f), ~max(~1u, _wgslsmith_add_u32(arg_1 >> (arg_1 % 32u), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~u_input.a, 17323u), reverseBits(vec3<u32>(min(u_input.a, 9603u), 34055u, u_input.a))));
    let var_1 = func_1(vec4<i32>(select(~6596i, -(1i >> (u_input.a % 32u)), true), max(_wgslsmith_div_i32(1i, 1i), -1i), -31447i, ~1i), 90269u);
    var var_2 = !all(select(vec2<bool>(any(vec4<bool>(true, false, true, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_2 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), all(vec3<bool>(false, true, true)))), vec2<bool>(any(vec4<bool>(false, true, false, false)) && true, 861f < var_1.a), vec2<bool>(false, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(trunc(-1000f))) + _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(max(var_1.a, var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * 1034f) - 541f))));
    let x = u_input.a;
    s_output = StorageBuffer(1957f, vec2<u32>(21289u, func_3(vec2<bool>(true, true), var_1.b)));
}

