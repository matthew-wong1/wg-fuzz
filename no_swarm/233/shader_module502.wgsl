struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = arg_1;
    var var_1 = -_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, 45432i, 15654i), -_wgslsmith_sub_vec3_i32(vec3<i32>(-30397i, 0i, 2147483647i), vec3<i32>(-1i, 25036i, 0i))) << (~((arg_1.a | u_input.d) << (_wgslsmith_add_vec3_u32(abs(u_input.d), ~vec3<u32>(71191u, 1u, arg_1.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = ((-1577f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.a.a.x)))) && (_wgslsmith_clamp_u32(firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, u_input.d.x, 61976u, 4294967295u), vec4<u32>(3451u, u_input.b, var_0.a.x, var_0.a.x)), 1u) == var_0.a.x)) || all(!(!select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, false))));
    let var_3 = arg_3.a;
    let var_4 = arg_2;
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(2331f)))), -167f, var_2)), _wgslsmith_f_op_f32(arg_3.a.a.x + arg_3.a.a.x), 224f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(170f, -363f))), vec4<f32>(arg_3.a.a.x, _wgslsmith_f_op_f32(-var_3.a.x), 1001f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.x + 162f), _wgslsmith_f_op_f32(sign(-1962f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f + arg_3.a.a.x))))));
}

fn func_2() -> f32 {
    let var_0 = !vec3<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false))), true);
    var var_1 = !any(vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, all(!vec4<bool>(false, false, var_0.x, var_0.x))));
    var var_2 = -1643f;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(false, Struct_2(u_input.d), Struct_2(u_input.d), Struct_3(Struct_1(vec4<f32>(327f, -511f, -1000f, -1000f))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1069f, 606f, -441f, 386f))))));
    var_3 = Struct_3(var_3.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.a.a.x)) * 133f)), var_0.x)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-648f))) * _wgslsmith_f_op_f32(ceil(-1129f))), 723f));
    var var_1 = 613u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) * 291f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1733f, var_0.x) + _wgslsmith_f_op_f32(abs(var_0.x))), -1299f, var_0.x)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_2.a.x))) * _wgslsmith_f_op_f32(func_2()));
    var var_4 = Struct_2(_wgslsmith_mod_vec3_u32(~select(abs(u_input.d), ~vec3<u32>(arg_1, arg_1, arg_1), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_0, arg_2, false), false)), ~select(u_input.d, u_input.d, vec3<bool>(true, false, arg_2))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2390f, _wgslsmith_div_f32(var_2.a.x, var_0.x), _wgslsmith_f_op_f32(-1565f - var_0.x), _wgslsmith_f_op_f32(var_0.x - -754f)), var_2.a, all(vec2<bool>(false, true)))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1);
    let var_1 = ~2147483647i;
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1147f, var_0.a.x, arg_1.x, var_0.a.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 1000f, var_0.a.x) + vec4<f32>(arg_1.x, arg_1.x, var_0.a.x, -1000f))))));
    var var_3 = Struct_2(~(~vec3<u32>(_wgslsmith_sub_u32(u_input.a, 4294967295u), 0u & u_input.c, 4294967295u)));
    let var_4 = var_2.a.a.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)), _wgslsmith_f_op_vec4_f32(exp2(var_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(-vec2<i32>(~_wgslsmith_add_i32(33275i, 1i), -2147483647i));
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = func_4(vec4<bool>(4294967295u == u_input.d.x, false, abs(u_input.a | 44139u) < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.c, u_input.b)), select(false, var_1.x, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(245f, -1000f, 413f, 230f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(var_1.x, 4294967295u, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1329f, 984f, 1812f, 900f))), var_1.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), -727f, _wgslsmith_f_op_f32(select(501f, 1107f, false)), _wgslsmith_f_op_f32(floor(-1227f))))), !vec4<bool>(var_1.x, var_1.x == var_1.x, all(var_1.xw), false))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-135f, var_2.a.x)))), -709f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)))), _wgslsmith_f_op_vec4_f32(func_1(!var_1.x, _wgslsmith_div_u32(9269u, 3602u), (-2030f > var_2.a.x) && !var_1.x)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))));
    let var_4 = _wgslsmith_f_op_vec4_f32(func_3(var_1.x, Struct_2(reverseBits(u_input.d)), Struct_2(vec3<u32>(_wgslsmith_sub_u32(~27448u, u_input.b), firstTrailingBit(reverseBits(u_input.a)), ~_wgslsmith_mult_u32(u_input.a, 0u))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -403f, var_3.x, 830f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_3.x, 1630f) - vec4<f32>(var_2.a.x, -481f, var_2.a.x, var_2.a.x))))))).x;
    var var_5 = ~vec3<i32>(14665i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), -vec2<i32>(var_0.x, var_0.x))), var_0.x);
    var var_6 = Struct_3(func_4(var_1, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(-231f - -154f), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_vec4_f32(func_3(var_1.x & false, Struct_2(vec3<u32>(26689u, u_input.a, u_input.c)), Struct_2(u_input.d), Struct_3(Struct_1(vec4<f32>(-1000f, -651f, var_3.x, var_4))))).x)));
    var_0 = var_5.zx;
    let x = u_input.a;
    s_output = StorageBuffer(23346u, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-423f * -891f)), func_4(var_1, var_3).a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.a.a.x, -439f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.x, var_4))), select(var_1.wy, var_1.xy, var_1.ww))))), ~vec4<i32>(var_5.x, var_5.x, ~var_5.x, _wgslsmith_div_i32(_wgslsmith_div_i32(var_5.x, var_5.x), -1i)), vec3<f32>(-209f, var_6.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_div_f32(var_6.a.a.x, -1655f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-544f)), -377f)))), _wgslsmith_div_i32(-28871i << (countOneBits(select(4294967295u, u_input.c, true)) % 32u), 1i));
}

