struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1173f - 1061f), _wgslsmith_div_f32(-1626f, 1264f)), 483f, !any(vec4<bool>(false, true, true, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) + -195f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-213f)), _wgslsmith_f_op_f32(floor(1000f)))))), i32(-1i) * -2147483647i);
    let var_1 = vec2<bool>(true, true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-572f * _wgslsmith_f_op_f32(step(var_0.a, -1951f))) + _wgslsmith_f_op_f32(-1057f - _wgslsmith_f_op_f32(floor(1160f)))) * _wgslsmith_f_op_f32(max(-456f, _wgslsmith_f_op_f32(min(var_0.a, -490f))))), var_0.b);
    let var_3 = select(vec2<u32>(~min(abs(u_input.a.x), u_input.a.x), select(~(~u_input.a.x), 80803u, var_0.b > (-2147483647i >> (u_input.a.x % 32u)))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yw), u_input.a.xz), var_1);
    let var_4 = ~(~vec2<u32>(u_input.a.x, 63950u));
    return var_2.a;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-621f)), arg_1.a, arg_1.a, var_0.a)), vec4<f32>(-1470f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(round(arg_1.a))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1562f)), _wgslsmith_f_op_f32(-var_0.a))))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270f + -1048f) * _wgslsmith_f_op_f32(max(var_0.a, arg_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - 339f), var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - var_1.x)), -552f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.x, -445f)), _wgslsmith_f_op_f32(-var_1.x), u_input.a.x <= 7304u))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1, vec4<f32>(arg_1.a, -765f, -1939f, -305f))) + vec4<f32>(966f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(-279f, arg_1.a), _wgslsmith_f_op_f32(step(arg_1.a, 827f)))))));
    var var_3 = var_0;
    let var_4 = select(select(!vec3<bool>(all(vec3<bool>(false, true, arg_0)), !arg_0, arg_2.x), vec3<bool>(342f >= _wgslsmith_f_op_f32(-var_2.x), all(vec3<bool>(true, true, arg_0)), true), select(!select(vec3<bool>(false, false, arg_2.x), vec3<bool>(arg_0, true, arg_2.x), arg_0), vec3<bool>(any(vec2<bool>(true, true)), var_0.b != 22668i, arg_0), true)), !select(vec3<bool>(!arg_2.x, true, any(vec3<bool>(arg_2.x, true, arg_0))), vec3<bool>(arg_0 & arg_0, var_1.x == arg_1.a, arg_0), (u_input.a.x << (u_input.a.x % 32u)) <= ~4294967295u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_1.b, -34172i ^ var_0.b), _wgslsmith_sub_i32(~(-20874i), var_3.b)) <= ~(-23198i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.wwx)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(43485u & u_input.a.x, 46520u), u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_0, Struct_1(-1000f, -1i), vec2<bool>(false, arg_0))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1341f, -842f, 977f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-346f, -1695f, -1785f) * vec3<f32>(619f, -1251f, -1786f)))))))));
    let var_2 = min(vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-23764i, u_input.c, u_input.c, u_input.c) << (u_input.a % vec4<u32>(32u))), firstTrailingBit(countOneBits(vec4<i32>(-7323i, 6179i, -1i, u_input.b)))), -797i, _wgslsmith_mult_i32(54603i, -u_input.c)), ~abs((vec4<i32>(2147483647i, -17247i, u_input.b, u_input.b) >> (u_input.a % vec4<u32>(32u))) ^ vec4<i32>(u_input.c, -1i, 2147483647i, -1120i)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f * _wgslsmith_f_op_f32(trunc(416f))))), ~var_2.x);
    var var_4 = _wgslsmith_f_op_f32(func_3());
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(465f, _wgslsmith_f_op_f32(f32(-1f) * -583f)))), ~(~35328i));
    var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, -779f, true))) + var_0.a) != _wgslsmith_f_op_f32(-var_0.a));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, 4294967295u ^ (u_input.a.x >> (4294967295u % 32u)), select(u_input.a.x, u_input.a.x, false)), u_input.a.wyw), ~abs(_wgslsmith_div_u32(abs(u_input.a.x), _wgslsmith_add_u32(1u, u_input.a.x))));
    let var_2 = var_0.a;
    var_0 = func_1(true);
    let var_3 = ~reverseBits(_wgslsmith_add_i32(-reverseBits(u_input.b), firstLeadingBit(var_0.b << (18631u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 42736u, var_1.x, var_1.x), min(~u_input.a, u_input.a)), false), vec4<i32>(-1i) * -(-vec4<i32>(var_0.b, var_3, var_0.b, -1i) | -vec4<i32>(-38957i, -32059i, 1i, var_3)), _wgslsmith_f_op_f32(-var_0.a));
}

