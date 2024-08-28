struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-arg_1))) * 920f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) * _wgslsmith_f_op_f32(arg_0.x + arg_0.x))), arg_0.x));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_1, arg_1), vec3<f32>(var_0.a.x, arg_0.x, -645f)), _wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(arg_1, arg_0.x, arg_1))), true & select(true, true, true)))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 919f, 375f) * _wgslsmith_f_op_vec3_f32(floor(var_0.a)))));
    let var_1 = 1i;
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1, arg_0.x)))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -124f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-693f + var_0.a.x) + _wgslsmith_f_op_f32(abs(arg_0.x))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)))), _wgslsmith_f_op_f32(min(716f, _wgslsmith_f_op_f32(-arg_1))))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = arg_1.b;
    var var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.a), arg_1.a.x) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a), vec2<f32>(arg_1.a.x, 986f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(595f, arg_1.d.a), _wgslsmith_f_op_vec2_f32(-arg_1.a))))), -1104f));
    let var_2 = ~(-vec4<i32>(-1i, 117882i, -2147483647i, -1i) >> ((firstLeadingBit(~vec4<u32>(8943u, u_input.c.x, 15842u, u_input.c.x)) | (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(arg_2.b, arg_0, arg_1.c.b, 29586u), vec4<u32>(4294967295u, 3849u, 1u, arg_0)) | min(vec4<u32>(u_input.d.x, 39496u, arg_2.b, arg_2.b), vec4<u32>(arg_2.b, 0u, arg_0, 7500u)))) % vec4<u32>(32u)));
    let var_3 = select(firstTrailingBit(u_input.d), vec2<u32>(~(~arg_2.b), countOneBits(_wgslsmith_dot_vec2_u32(u_input.e << (vec2<u32>(34384u, 72618u) % vec2<u32>(32u)), u_input.c))), select(select(!vec2<bool>(arg_1.b, false), select(vec2<bool>(arg_1.b, arg_1.b), select(vec2<bool>(arg_1.b, false), vec2<bool>(false, false), arg_1.b), true), arg_1.b && arg_1.b), vec2<bool>(any(vec2<bool>(arg_1.b, false)) | arg_1.b, true), max(var_2.x ^ -1i, 7437i) < -19843i));
    let var_4 = Struct_1(534f, arg_0);
    return var_2.x | var_2.x;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-382f, 192f) * vec2<f32>(466f, -127f)), vec2<f32>(1440f, _wgslsmith_f_op_f32(424f * 486f)), arg_2.x))), (false && !select(arg_2.x, arg_2.x, true)) | (func_2(u_input.a, Struct_2(vec2<f32>(452f, -654f), arg_2.x, Struct_1(167f, arg_1.x), Struct_1(-2212f, arg_0)), Struct_1(395f, 0u)) == abs(reverseBits(-2147483647i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1632f - 1309f), _wgslsmith_f_op_f32(-1077f + 1583f))) + -1183f), 0u), Struct_1(674f, arg_1.x));
    var var_1 = ~vec2<u32>(arg_1.x, var_0.d.b);
    let var_2 = all(vec3<bool>(arg_2.x, false, true)) || ((_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(246f * -229f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1090f), _wgslsmith_f_op_f32(f32(-1f) * -1325f))) & false);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a, var_0.a.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1983f, var_0.c.a)))), any(vec3<bool>(all(!vec4<bool>(false, var_0.b, true, var_0.b)), var_2, var_2)), Struct_1(_wgslsmith_f_op_f32(1f - 690f), ~1u), var_0.d);
    var_1 = arg_1.yx << (vec2<u32>(arg_0, 27742u) % vec2<u32>(32u));
    return _wgslsmith_mod_vec3_i32(~vec3<i32>(~(~(-50339i)), -16747i, _wgslsmith_add_i32(-61687i, ~8061i)), firstTrailingBit(vec3<i32>(-1i, reverseBits(_wgslsmith_clamp_i32(10831i, -65520i, 62385i)), -11647i)));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<i32>) -> vec2<f32> {
    var var_0 = -1707f;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(487f, arg_1.x), arg_1.xx)))), arg_1.yx))), _wgslsmith_div_u32(reverseBits(abs(u_input.b.x)), u_input.e.x) <= _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 5528u), u_input.b)), 1u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1877f * 1286f) * _wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.d.x), countOneBits(u_input.a)) & u_input.c.x), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_div_f32(-478f, 1000f))))), max(1u, select(u_input.e.x, 1u, false) >> (max(33627u, u_input.d.x) % 32u))));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 269f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a), arg_1.yx)), any(!(!select(vec2<bool>(arg_0, var_1.b), vec2<bool>(true, false), vec2<bool>(var_1.b, var_1.b)))), var_1.d, Struct_1(110f, ~9602u & _wgslsmith_clamp_u32(~u_input.e.x, min(var_1.c.b, 54767u), var_1.d.b)));
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.a)), _wgslsmith_div_vec2_f32(vec2<f32>(937f, _wgslsmith_f_op_f32(ceil(-1207f))), _wgslsmith_div_vec2_f32(arg_1.zy, _wgslsmith_f_op_vec2_f32(sign(arg_1.xx))))), ~1u <= (u_input.d.x << (106773u % 32u)), var_1.d, Struct_1(323f, firstTrailingBit(4294967295u >> (u_input.e.x % 32u))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-563f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_1.a, -307f)), _wgslsmith_f_op_f32(abs(var_2.c.a))) - 502f)))));
    return arg_1.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, 1457f, 485f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(262f, 1298f, -929f) + vec3<f32>(818f, -942f, 866f)))), 1i, select(func_1(1u, select(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, u_input.e.x), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, -2147483647i), select(vec3<i32>(77320i, 38044i, -15508i), vec3<i32>(2785i, 27698i, 30344i), false), vec3<i32>(-2147483647i, 5387i, -12010i)), select(all(vec4<bool>(false, true, true, false)), true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1633f, -1326f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 412f))))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(abs(var_0.x)))), -864f))), true, Struct_1(var_0.x, u_input.a), Struct_1(_wgslsmith_f_op_f32(-var_0.x), u_input.c.x));
    var_0 = _wgslsmith_f_op_vec2_f32(-var_1.a);
    var var_2 = vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(11907u), _wgslsmith_sub_u32(var_1.c.b, 1u)), vec2<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)))), 32398u, ~(~var_1.d.b), 0u);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_1.a.x) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d.a)) - _wgslsmith_f_op_f32(var_0.x * 442f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.x * -506f))))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1157f)) * var_1.d.a) * -333f), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_1.a.x))) * 475f));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.a), var_0.x))), 17561u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, select(firstLeadingBit(select(_wgslsmith_mult_vec2_u32(vec2<u32>(17457u, var_1.d.b), var_2.yz), u_input.d, true)), ~var_2.xy, vec2<bool>(all(vec3<bool>(false, true, var_1.b)), true)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(select(vec3<i32>(0i, -1i, -68108i) << (var_2.zyy % vec3<u32>(32u)), -vec3<i32>(5627i, -12488i, -2147483647i), select(false, true, true)), reverseBits(vec3<i32>(1i, 1i, 1i)))));
}

