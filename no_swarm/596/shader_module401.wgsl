struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_2(select(_wgslsmith_mult_i32(-1i, u_input.b), _wgslsmith_mult_i32(-u_input.b, ~(-1i)), _wgslsmith_f_op_f32(trunc(-1117f)) <= -1658f) <= ~(-38737i), Struct_1(-489f, u_input.a.x & _wgslsmith_dot_vec3_u32(~u_input.a.zzy, u_input.a.wxz), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1133f, -3586f, -288f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(626f, 1911f, 554f), vec3<f32>(1000f, -107f, -459f), vec3<bool>(false, true, false))), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))))), _wgslsmith_div_i32(-2147483647i, ~(u_input.b << (50691u % 32u))), vec3<i32>(_wgslsmith_div_i32(u_input.b, 75000i), -8379i, ~u_input.b) ^ min(abs(vec3<i32>(u_input.b, u_input.b, 5265i)), vec3<i32>(0i, u_input.b, 8145i) << (u_input.a.yzx % vec3<u32>(32u)))), ~firstTrailingBit(~min(u_input.a.zw, u_input.a.zx)), vec2<u32>(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) << (28266u % 32u), abs(~40166u)), !vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))), 16534i != ~u_input.b, true));
    let var_1 = Struct_3(-(~2231i));
    var_0 = Struct_2(select(any(var_0.e.yy), !(var_0.a | false), _wgslsmith_mod_i32(42471i, 7362i) < ~var_0.b.d) && false, var_0.b, ~max(u_input.a.xw, vec2<u32>(u_input.a.x ^ u_input.a.x, var_0.c.x)), var_0.d, select(!(!var_0.e), !(!var_0.e), any(select(vec3<bool>(var_0.a, false, true), select(var_0.e, var_0.e, false), true))));
    var var_2 = select(var_0.e.xx, vec2<bool>(any(select(!vec4<bool>(false, false, var_0.e.x, var_0.a), select(vec4<bool>(true, var_0.a, var_0.e.x, var_0.a), vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.a, var_0.e.x, false)), !vec4<bool>(var_0.a, var_0.a, var_0.e.x, var_0.e.x))), any(!var_0.e)), reverseBits(-u_input.b) > -2147483647i);
    let var_3 = var_2.x;
    return vec2<i32>(~firstLeadingBit(34734i), u_input.b & 1i);
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = 834f;
    var var_1 = firstTrailingBit(-(~_wgslsmith_mod_vec2_i32(arg_0.e.xx, vec2<i32>(0i, u_input.b))));
    let var_2 = Struct_3(_wgslsmith_div_i32(-u_input.b, -_wgslsmith_dot_vec2_i32(func_3(), _wgslsmith_mult_vec2_i32(vec2<i32>(36566i, -1i), vec2<i32>(var_1.x, -1i)))));
    var var_3 = arg_0.e.yx;
    var_3 = vec2<i32>(max(2147483647i, 2147483647i) << (u_input.a.x % 32u), u_input.b);
    return arg_0.e;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_mod_vec3_i32((func_2(Struct_1(-158f, 1u, vec3<f32>(663f, -324f, 158f), -558i, vec3<i32>(u_input.b, arg_1, 12969i))) | ~reverseBits(vec3<i32>(arg_1, arg_1, -4178i))) & ~(~vec3<i32>(u_input.b, 2147483647i, -12979i)), abs(vec3<i32>(reverseBits(-2147483647i), u_input.b, arg_1) & -_wgslsmith_sub_vec3_i32(vec3<i32>(-12016i, u_input.b, arg_1), vec3<i32>(36765i, arg_1, arg_1))));
    let var_1 = -825f;
    let var_2 = var_0.yz;
    var var_3 = u_input.a.ww;
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return _wgslsmith_div_vec2_f32(vec2<f32>(1669f, _wgslsmith_f_op_f32(-2074f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1088f, 2637f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_1), vec2<f32>(var_1, var_1))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2271f, -755f) + vec2<f32>(-809f, var_1)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2017f, -404f))), !arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(select(vec2<bool>(false, true), vec2<bool>(true, true), false), u_input.b)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -476f) + vec2<f32>(1266f, 504f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1842f, 128f), vec2<f32>(813f, -344f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(392f, var_0.x), true)), 7375u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, _wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(-var_0.x))), -32584i, vec3<i32>(u_input.b, _wgslsmith_clamp_i32(abs(1i), u_input.b, 0i), ~0i) | ~(~firstTrailingBit(vec3<i32>(u_input.b, u_input.b, u_input.b))));
    var var_2 = Struct_3(_wgslsmith_mod_i32(~(~(-u_input.b)), ((-2147483647i & var_1.e.x) << (4294967295u % 32u)) >> (((var_1.b << (0u % 32u)) & 91593u) % 32u)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))), u_input.a.x, vec3<f32>(-195f, _wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x), 0i, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, ~u_input.b, -max(-18516i, var_1.e.x)), vec3<i32>(_wgslsmith_mult_i32(~u_input.b, -17070i), -(~(-10837i)), var_1.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs((select(u_input.a, u_input.a, vec4<bool>(false, false, false, false)) & u_input.a) & (firstTrailingBit(u_input.a) << (u_input.a % vec4<u32>(32u)))));
}

