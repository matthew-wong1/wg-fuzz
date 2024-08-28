struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = -50500i;
    return !vec4<bool>(any(vec4<bool>(true, true, true, true)), (all(vec3<bool>(true, false, true)) == false) != true, false, any(vec3<bool>(true, true, true)) & true);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1231f * arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(914f * _wgslsmith_f_op_f32(abs(arg_1))) + _wgslsmith_f_op_f32(f32(-1f) * -1633f))), any(arg_2.zx), -1i);
    var var_1 = Struct_1(arg_0.a, true, -var_0.c);
    let var_2 = arg_2.x;
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -795f), -281f)));
    return -34428i;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = max(_wgslsmith_add_vec3_i32(abs(reverseBits(~vec3<i32>(arg_2.c, arg_2.c, 2147483647i))), ~max(vec3<i32>(8678i, arg_2.c, arg_2.c), vec3<i32>(-5411i, -14401i, -32405i)) & (vec3<i32>(-1i) * -vec3<i32>(-1i, 5060i, arg_1.c))), vec3<i32>(-1i) * -(~(-vec3<i32>(arg_1.c, arg_1.c, arg_2.c))));
    let var_1 = func_3(arg_2, -358f, func_2(-arg_2.c));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a.x, -422f)) - 1391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), !any(select(!vec2<bool>(true, arg_2.b), !vec2<bool>(arg_1.b, false), arg_1.b)), 13186i | _wgslsmith_clamp_i32(-4417i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, -8647i), ~vec2<i32>(var_1, var_0.x)), -func_3(arg_2, -381f, vec4<bool>(arg_2.b, true, false, false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f + var_2.a.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1428f - -370f)))), 416f, 1312f));
    return _wgslsmith_f_op_f32(-780f * _wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(-293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + -165f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-473f, _wgslsmith_f_op_f32(func_1(1u, Struct_1(vec2<f32>(-982f, 471f), true, -2147483647i), Struct_1(vec2<f32>(-380f, 300f), true, 2147483647i)))))), -26660i <= abs(select(0i, i32(-1i) * -2147483647i, true)), -30849i);
    let var_1 = ~(~_wgslsmith_mult_i32(0i >> (u_input.a.x % 32u), _wgslsmith_add_i32(var_0.c, 0i)) | firstTrailingBit(-_wgslsmith_sub_i32(7592i, 20110i)));
    let var_2 = Struct_1(var_0.a, func_2(36777i).x, 0i);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + _wgslsmith_div_f32(var_0.a.x, var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) * _wgslsmith_f_op_f32(var_0.a.x + var_2.a.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1063f, var_2.a.x) * var_0.a)), _wgslsmith_f_op_vec2_f32(-var_2.a))), select(vec2<bool>(func_2(var_0.c).x, true), vec2<bool>(true, all(vec4<bool>(false, true, true, false))), true))), all(select(func_2(122i).zyx, vec3<bool>(var_0.b, false, var_2.b), vec3<bool>(var_0.b, var_0.b, false))) && !(!(!var_0.b)), 0i | _wgslsmith_mult_i32(var_2.c, _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.c, -19495i, -2147483647i, var_0.c), vec4<i32>(2147483647i, -64477i, var_0.c, var_0.c)), reverseBits(vec4<i32>(var_1, var_1, var_0.c, var_1)))));
    var var_4 = select(true, var_0.b, any(vec2<bool>(true, true)));
    let var_5 = ~_wgslsmith_div_u32(0u, u_input.a.x);
    var var_6 = min(func_3(Struct_1(var_0.a, !var_0.b, var_2.c), var_3.a.x, select(vec4<bool>(false, false, all(vec3<bool>(false, false, var_2.b)), all(vec2<bool>(true, false))), vec4<bool>(var_0.b && true, true, !var_0.b, true), !func_2(var_0.c))), firstTrailingBit(_wgslsmith_mod_i32(var_2.c, ~36317i)));
    var var_7 = vec4<bool>(func_2(countOneBits(-15891i)).x, !var_3.b, !(reverseBits(var_3.c) <= firstTrailingBit(-1i)), false);
    let x = u_input.a;
    s_output = StorageBuffer(89511u, vec2<f32>(_wgslsmith_f_op_f32(ceil(var_3.a.x)), -660f), var_3.c, vec3<i32>(1i, var_1, var_2.c));
}

