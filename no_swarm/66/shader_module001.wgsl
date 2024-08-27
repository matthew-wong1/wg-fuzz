struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2055f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(329f, 550f)))))));
    var var_1 = _wgslsmith_sub_vec2_i32(u_input.a.xx, select(arg_0.b.xz, u_input.a.ww, true & (_wgslsmith_f_op_f32(var_0 + -1054f) != _wgslsmith_f_op_f32(-var_0))));
    var var_2 = arg_0.b.x;
    var_2 = -1i & ~u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -139f);
    return reverseBits(45409u);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_1(!vec2<bool>(all(vec2<bool>(true, true)), true), firstLeadingBit(~u_input.a.zwx), _wgslsmith_mod_i32(firstLeadingBit(u_input.a.x & 69379i), _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, 1i), -2147483647i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-570f, -473f, 2671f), vec3<f32>(2207f, 2531f, 663f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, -458f)), select(vec3<bool>(var_0.a.a.x, true, true), vec3<bool>(var_0.a.a.x, var_0.a.a.x, false), vec3<bool>(true, true, var_0.a.a.x))))))));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(Struct_1(vec2<bool>(var_0.a.a.x, !(!var_0.a.a.x)), -_wgslsmith_add_vec3_i32(var_0.a.b ^ vec3<i32>(29836i, 0i, u_input.a.x), u_input.a.zyw), var_0.a.b.x));
    var_0 = Struct_3(Struct_1(var_0.a.a, u_input.a.xxy, max(~max(var_0.a.c, var_0.a.b.x), _wgslsmith_div_i32(firstTrailingBit(var_0.a.b.x), var_0.a.c))));
    return var_1.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-253f + arg_1))), _wgslsmith_f_op_f32(func_3()));
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - -219f), -270f), _wgslsmith_div_f32(759f, 1332f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_1)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1757f, arg_1), vec2<f32>(arg_1, arg_1))))), true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2758f, 1551f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-239f, arg_1))))))));
    let var_2 = arg_3.a;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1622f, arg_1), var_1.x));
    return Struct_1(select(vec2<bool>(!any(vec3<bool>(false, var_2.a.x, var_2.a.x)), true), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), false), !var_2.a), vec3<i32>(select(var_2.c, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), true) & abs(u_input.a.x), arg_2 | _wgslsmith_dot_vec4_i32(u_input.a, ~u_input.a), abs(countOneBits(arg_3.a.b.x)) ^ ~(i32(-1i) * -29477i)), 17317i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1u);
    var_0 = _wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(~(1u >> (1u % 32u)), _wgslsmith_div_u32(~(22776u >> (1u % 32u)), 57963u), 0u), 1u >> (max(~func_1(Struct_1(vec2<bool>(false, false), vec3<i32>(-16447i, -9728i, u_input.a.x), u_input.a.x)), ~(~4294967295u)) % 32u));
    var var_1 = Struct_2(func_2(!select(any(vec4<bool>(true, false, true, false)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-826f * -506f)))), _wgslsmith_add_i32(i32(-1i) * -50933i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -50240i, -6624i), vec3<i32>(-43110i, -1i, u_input.a.x) | vec3<i32>(u_input.a.x, -1i, u_input.a.x))), Struct_3(Struct_1(vec2<bool>(true, true), u_input.a.xww, abs(u_input.a.x)))), select(any(vec3<bool>(false, false, false)) & (reverseBits(0u) < _wgslsmith_clamp_u32(21461u, 4294967295u, 4294967295u)), u_input.a.x < u_input.a.x, !any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false))), Struct_1(vec2<bool>(true, true), ~_wgslsmith_add_vec3_i32(u_input.a.xyw, u_input.a.zxy), firstLeadingBit(select(u_input.a.x, -34196i, false)) ^ firstTrailingBit(-u_input.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1170f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1658f)), _wgslsmith_f_op_f32(1796f - 1067f))))));
    let var_2 = var_1.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, ~(~1u)), ~3700u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-944f)), var_1.d, var_1.d, _wgslsmith_f_op_f32(var_1.d + 364f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, var_1.d, 1335f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(697f, 216f, 149f, -356f))))))), 35846u, countOneBits(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 0i, 1i))));
}

