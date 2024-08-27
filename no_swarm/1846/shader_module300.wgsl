struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(-806f, firstTrailingBit(arg_0.b) ^ firstLeadingBit(_wgslsmith_add_vec2_i32(arg_0.b, _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b.x, -7611i), vec2<i32>(arg_3.b.x, 3001i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.d.yy + vec2<f32>(1117f, _wgslsmith_f_op_f32(arg_3.e + 551f))) + _wgslsmith_f_op_vec2_f32(arg_0.c * vec2<f32>(_wgslsmith_f_op_f32(abs(arg_3.a)), 737f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -383f, arg_3.d.x, -721f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(475f, arg_2, arg_0.a, arg_0.c.x) + arg_3.d))))), 603f);
    return ~arg_3.b.x;
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -815f), vec2<i32>(countOneBits(2147483647i), (i32(-1i) * -u_input.e.x) | _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.e.x, 31269i), -12734i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(trunc(-1000f))), vec2<f32>(_wgslsmith_f_op_f32(floor(1141f)), _wgslsmith_div_f32(476f, -749f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1241f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f + _wgslsmith_f_op_f32(f32(-1f) * -466f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-468f, 347f)) + -357f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) * _wgslsmith_f_op_f32(813f - -1000f)) - -286f)), _wgslsmith_f_op_f32(select(-353f, 1f, _wgslsmith_mult_u32(u_input.a.x, 4294967295u) < _wgslsmith_clamp_u32(1u, ~u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)))));
    let var_1 = vec3<i32>(-1i) * -u_input.e.zxy;
    let var_2 = var_0.d.yyz;
    var var_3 = 1i <= -var_0.b.x;
    var_3 = (!all(vec3<bool>(false, false, true)) != (u_input.c.x > ~abs(u_input.a.x))) != ((-(-6917i & var_0.b.x) << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, u_input.a.x), u_input.c.x) % 32u)) >= var_0.b.x);
    return var_0.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 255f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1582f, 950f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(417f, 729f) + vec2<f32>(-274f, 2081f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-617f, -185f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, -936f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(155f, 377f), vec2<f32>(-1900f, 1990f), arg_1)))))));
    var var_1 = u_input.b.x;
    var var_2 = Struct_1(var_0.x, _wgslsmith_clamp_vec2_i32(u_input.e.xx, ~vec2<i32>(func_2(Struct_1(var_0.x, u_input.b.zz, vec2<f32>(369f, var_0.x), vec4<f32>(-1664f, var_0.x, var_0.x, 485f), var_0.x), vec3<bool>(true, true, false), var_0.x, Struct_1(694f, u_input.e.xx, vec2<f32>(var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, -1000f, 340f), var_0.x)), u_input.d), ~u_input.e.wx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 + var_0), vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1344f), var_0.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, 480f)), var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, var_0.x)))));
    var_2 = Struct_1(var_2.d.x, vec2<i32>(-1i & (u_input.e.x >> (u_input.a.x % 32u)), -32068i) | vec2<i32>(_wgslsmith_mult_i32(reverseBits(1i), min(4834i, var_2.b.x)), -(~u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(var_2.a, var_0.x, arg_1)))))), vec4<f32>(var_2.a, -836f, 233f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_2.d.x))))))), 117f);
    let var_3 = vec3<u32>(~_wgslsmith_div_u32(1u, ~52472u), u_input.a.x & firstTrailingBit(~min(4294967295u, u_input.c.x)), u_input.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2035f, -2383f) - _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), false))) + _wgslsmith_div_f32(211f, -1327f))), 812f, u_input.c.x, u_input.c, _wgslsmith_sub_i32(u_input.b.x, ~(-3801i)));
}

