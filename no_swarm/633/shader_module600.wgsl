struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, -34844i);

var<private> global1: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(0u, global0.x);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f)))), 2102f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -446f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -449f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-712f, 1168f, 1009f, -2650f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(2036f, 234f, -213f, 420f), vec4<f32>(-1201f, -1472f, 1000f, -1788f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1637f, -361f, 568f, 131f) * vec4<f32>(262f, 1000f, -453f, 2057f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-857f, 1830f, 496f, -223f))))))));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.c.www), vec3<u32>(~global1.x, ~u_input.b, ~u_input.d) | _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.a, 4294967295u, 44035u), vec3<u32>(4294967295u, 4294967295u, u_input.b))), -(~_wgslsmith_add_i32(1i, -40660i)));
    var var_3 = var_0.b;
    return !all(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = abs(min(~arg_2.a, arg_2.a));
    global1 = firstLeadingBit(u_input.c.yyx);
    var var_1 = -364f;
    var var_2 = func_3();
    var var_3 = arg_2;
    return Struct_1(max(firstTrailingBit(~var_3.a) | ~1u, select(46088u, 1u, !(true & arg_1.x))), global0.x);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = 590f;
    global1 = _wgslsmith_sub_vec3_u32(~(~u_input.c.yzy), countOneBits(firstTrailingBit(u_input.c.wzw)));
    global0 = vec2<i32>(min(24585i, -52078i), -17029i);
    var var_1 = func_2(var_0, vec4<bool>(true, true, 1u <= arg_0, true), Struct_1(~0u, ~_wgslsmith_sub_i32(u_input.e, u_input.e) << (_wgslsmith_mod_u32(1u, global1.x) % 32u)));
    global1 = _wgslsmith_clamp_vec3_u32(u_input.c.wwx, vec3<u32>(_wgslsmith_mult_u32(global1.x, ~0u), ~u_input.b, reverseBits(reverseBits(var_1.a) ^ 1u)), ~u_input.c.zww);
    return any(vec4<bool>(!all(vec3<bool>(true, false, true)), true, true, func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.x) & !all(vec3<bool>(true, true, any(vec3<bool>(true, true, false))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(173f + _wgslsmith_f_op_f32(-1604f + _wgslsmith_f_op_f32(max(312f, -1000f)))) + -206f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(111f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(804f, -765f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1904f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(406f - 826f))));
    let var_2 = countOneBits(max(~firstTrailingBit(vec4<i32>(global0.x, 2147483647i, u_input.e, global0.x)) ^ -vec4<i32>(-11011i, u_input.e, 6987i, 0i), max(countOneBits(vec4<i32>(u_input.e, global0.x, -1i, 1i) | vec4<i32>(u_input.e, 14795i, 1i, 5204i)), abs(vec4<i32>(-1i, 2147483647i, -36446i, global0.x)))));
    global0 = ~(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, 1i), var_2.yx));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.yyw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(785f, var_1.x, -179f), vec3<f32>(var_1.x, 2740f, var_1.x)))))) * _wgslsmith_f_op_vec3_f32(floor(var_1.zww)));
    let var_4 = _wgslsmith_f_op_f32(-var_1.x);
    var var_5 = vec2<bool>(true, !(4294967295u < _wgslsmith_div_u32(~global1.x, global1.x)));
    var var_6 = func_2(_wgslsmith_f_op_f32(floor(var_3.x)), select(vec4<bool>(!any(vec4<bool>(true, false, true, true)), true, !var_0, !(!var_5.x)), vec4<bool>(u_input.e == abs(-2147483647i), (var_4 != 1117f) & all(vec3<bool>(var_5.x, var_5.x, var_0)), true, var_0), true), Struct_1(~u_input.c.x, abs(_wgslsmith_sub_i32(-35124i, u_input.e) & (u_input.e & u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(1386f);
}

