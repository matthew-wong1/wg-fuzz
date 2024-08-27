struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(643f))));
    var var_1 = u_input.b;
    var var_2 = Struct_1(!vec2<bool>(arg_2, false), !arg_2, arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1638f, -818f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 254f))))));
    var var_3 = ~_wgslsmith_mult_u32(~37651u, arg_1);
    var_3 = ~abs(1u);
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = arg_1;
    let var_1 = firstLeadingBit(~(~min(~0u, ~1u)));
    var var_2 = Struct_1(vec2<bool>(false & func_3(12026i, var_1, -63856i > u_input.b.x).x, arg_1.a.x), var_0.b, all(select(!vec4<bool>(var_0.a.x, true, arg_3.b, false), !(!vec4<bool>(arg_3.a.x, arg_3.c, false, var_0.c)), true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-409f, _wgslsmith_f_op_f32(-125f + 412f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f))));
    var_2 = arg_3;
    var var_3 = vec2<bool>(true, true);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_1(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), all(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true)), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)) && true, vec2<f32>(1135f, -109f));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(var_0.d.x, Struct_1(!var_0.a, all(vec3<bool>(var_0.a.x || true, var_0.c, true)), !(!any(vec3<bool>(var_0.a.x, true, var_0.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x)), u_input.b.x, Struct_1(select(var_0.a, func_3(firstLeadingBit(0i), ~16615u, false), ~arg_0 > arg_0), (var_0.d.x < _wgslsmith_f_op_f32(var_0.d.x - -947f)) && false, var_0.a.x, vec2<f32>(-461f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_f32(round(838f))))))));
    var_0 = Struct_1(vec2<bool>(var_0.c, var_0.a.x), true, true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - var_1.x) + _wgslsmith_div_f32(var_0.d.x, 186f)), var_0.d.x));
    let var_2 = Struct_1(var_0.a, true, true, _wgslsmith_f_op_vec2_f32(ceil(var_0.d)));
    var var_3 = Struct_1(var_0.a, !var_0.c, !select(true, true, all(vec2<bool>(var_2.a.x, var_2.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-432f, _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_2.d.x, 879f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -966f))))));
    return select(vec2<bool>(!(!var_0.c), arg_0 <= 1u), func_3(-20362i, firstLeadingBit(~(~arg_0)), false), !(!(!(!vec2<bool>(false, var_3.a.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(!func_2(~(~7730u)), true, true & (1u < reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(60374u, 14880u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-2627f, -1703f), _wgslsmith_f_op_f32(f32(-1f) * -487f)), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_4(329f, Struct_1(vec2<bool>(true, false), true, true, vec2<f32>(-1297f, 680f)), u_input.c.x, Struct_1(vec2<bool>(false, true), false, false, vec2<f32>(1000f, 2153f)))).x, _wgslsmith_f_op_f32(abs(-2129f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-284f, 853f) * vec2<f32>(674f, 1554f)), vec2<f32>(-109f, 1181f), any(vec4<bool>(false, false, true, false)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(158f, -657f)))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_4(1000f, Struct_1(vec2<bool>(var_0.c, var_0.b), var_0.a.x, var_0.c, var_0.d), 2147483647i, Struct_1(var_0.a, var_0.a.x, false, vec2<f32>(var_0.d.x, var_0.d.x)))).x, var_0.d.x)), var_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(574f + var_0.d.x))), var_0.d.x)));
    var var_2 = Struct_1(var_0.a, var_0.a.x, true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 788f)) + _wgslsmith_f_op_vec2_f32(abs(var_0.d)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(912f, var_0.d.x))), var_0.d))));
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(max(max(i32(-1i) * -1i, 2147483647i), -_wgslsmith_div_i32(u_input.b.x, 0i)), _wgslsmith_clamp_i32(u_input.a.x, select(~1i, abs(-2147483647i), true), _wgslsmith_mod_i32(countOneBits(64179i), min(-46794i, 1i))), -8211i), u_input.c);
    let var_4 = Struct_1(func_2(countOneBits(4294967295u)), select(true, true, !var_2.a.x), true, vec2<f32>(_wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1000f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.x + var_2.d.x), var_0.d.x))));
    return Struct_1(vec2<bool>(var_0.b, true), true, var_4.d.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(select(var_0.d.x, 186f, true))))), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec4<bool>(true, !var_0.c, func_3(u_input.c.x, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(1u, 10231u)), ~(~vec2<u32>(0u, 4294967295u))), !((var_0.d.x < var_0.d.x) || false)).x, true);
    var var_2 = select(abs(vec4<i32>(~reverseBits(23652i), select(u_input.d, 1i, !var_1.x), abs(i32(-1i) * -1i), abs(abs(u_input.a.x)))), firstLeadingBit(_wgslsmith_mod_vec4_i32(~u_input.a, abs(_wgslsmith_div_vec4_i32(u_input.a, u_input.a)))), true);
    var_2 = reverseBits(vec4<i32>(abs(_wgslsmith_add_i32(firstLeadingBit(-1i), u_input.a.x | var_2.x)), u_input.b.x, min(_wgslsmith_sub_i32(11513i, min(1i, u_input.d)), min(var_2.x, firstLeadingBit(var_2.x))), ~(-(var_2.x << (1053u % 32u)))));
    let var_3 = var_1.x;
    let var_4 = func_1().a.x;
    var_2 = select(~min(u_input.a, countOneBits(~vec4<i32>(15171i, u_input.c.x, u_input.a.x, var_2.x))), u_input.a, !(!(var_0.d.x < var_0.d.x)));
    let var_5 = vec2<i32>(_wgslsmith_sub_i32(~(-69880i), 1i), min(min(~0i, 1i), abs(u_input.b.x)) ^ (var_2.x ^ var_2.x));
    var_2 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.d.x))))))), vec2<i32>(i32(-1i) * -2147483647i, abs(min(~var_2.x, -47172i))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)))), var_0.d.x, 1124f), -466f);
}

