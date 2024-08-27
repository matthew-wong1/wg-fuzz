struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    global0 = u_input.a.x;
    var var_0 = arg_3;
    var_0 = Struct_1(-2222f);
    var var_1 = arg_3;
    var var_2 = select(~max(arg_1, arg_1), select(~arg_1, arg_1, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), u_input.a.x > u_input.a.x)), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true), select(any(vec4<bool>(false, false, false, true)) && true, true, any(vec3<bool>(true, true, false)))));
    return 42872i;
}

fn func_3() -> vec3<i32> {
    global0 = _wgslsmith_mod_i32(-(_wgslsmith_div_i32(_wgslsmith_div_i32(71184i, u_input.a.x), -u_input.a.x) >> (0u % 32u)), 2147483647i);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(891f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-482f, 121f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2757f + -551f), _wgslsmith_f_op_f32(f32(-1f) * -1159f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1531f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1006f + 679f) * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-823f + _wgslsmith_f_op_f32(1147f * 2320f)))));
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(-817f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * var_0.x), 524f)), -661f)));
    var var_3 = Struct_1(var_0.x);
    return u_input.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -316f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-362f + var_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -840f)))) - arg_2.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1591f)) + _wgslsmith_f_op_f32(step(-541f, _wgslsmith_f_op_f32(arg_3.a + arg_2.x)))))));
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(-u_input.a.x, firstLeadingBit(select(23020i, func_2(arg_2, vec4<u32>(arg_0.x, 1u, arg_0.x, 1u), 263f, arg_3), true)), -7568i), min(func_3(), u_input.a));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1092f + -713f), _wgslsmith_f_op_f32(2051f - -1694f), arg_0.x >= 1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1232f, var_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), arg_3.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -1000f)), var_1, -1314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(f32(-1f) * -1998f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1927f, var_1, var_1, 2397f) * vec4<f32>(-128f, -263f, -1000f, 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(197f, 1200f, var_0, -852f) - vec4<f32>(var_1, arg_3.a, -879f, -1011f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -944f), -1500f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3.a - -1926f), arg_2.x, _wgslsmith_f_op_f32(min(arg_1, var_0)), -1015f))));
    let var_4 = arg_3.a;
    return Struct_1(_wgslsmith_f_op_f32(-619f * _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(-968f - var_1))), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = u_input.a.x << (~_wgslsmith_div_u32(max(reverseBits(25734u), ~10143u), 3811u) % 32u);
    global0 = _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mod_i32(~(-abs(u_input.a.x)), 24995i));
    global0 = u_input.a.x;
    var var_0 = reverseBits(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, max(4294967295u, 16387u), _wgslsmith_div_u32(0u, 4294967295u), ~20311u), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = -37687i;
    return func_1(min(min(vec2<u32>(0u, ~14220u), ~firstLeadingBit(var_0.zx)), vec2<u32>(var_0.x, _wgslsmith_dot_vec2_u32(var_0.yw, var_0.wx)) | vec2<u32>(var_0.x, ~var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1557f)), arg_1)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(469f, 659f), vec2<f32>(arg_0.a, arg_1))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-978f, 1938f))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_0.a), vec2<f32>(arg_0.a, 877f)), vec2<bool>(arg_2, arg_2))))))), Struct_1(arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1425f));
    var var_1 = func_4(func_1(~select(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(8957u, 51032u), false), var_0.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1031f) * vec2<f32>(var_0.a, 574f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-491f, -1000f))))), Struct_1(var_0.a)), var_0.a, 1387f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 187f)))));
    var var_2 = 1062f;
    let var_3 = select(~vec4<i32>(~50332i, abs(~5143i), u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(u_input.a.x), func_3().x, _wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x), ~1i), ~vec4<i32>(firstLeadingBit(u_input.a.x), -2147483647i, _wgslsmith_mod_i32(u_input.a.x, -2147483647i), _wgslsmith_mult_i32(79734i, u_input.a.x))), true || (all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)) && true));
    let var_4 = !(var_0.a <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1069f, -1102f)) + _wgslsmith_f_op_f32(838f - -662f)) - _wgslsmith_f_op_f32(var_0.a + -623f)));
    let var_5 = func_4(func_1(abs(vec2<u32>(4294967295u, _wgslsmith_add_u32(62102u, 7618u))), var_1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_0.a), vec2<f32>(var_1.a, -245f), vec2<bool>(var_4, var_4))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))), vec2<f32>(_wgslsmith_f_op_f32(round(-739f)), 662f)), func_1(abs(vec2<u32>(19985u, 39225u)), 1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a, -1268f)))), Struct_1(var_0.a))), _wgslsmith_f_op_f32(floor(925f)), select(!any(!vec2<bool>(var_4, var_4)), var_4, var_4));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.a, var_5.a, var_5.a) * vec3<f32>(var_1.a, var_5.a, -997f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, -1368f, -274f), vec3<f32>(-706f, var_0.a, var_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1221f, var_0.a, 1000f) + vec3<f32>(var_5.a, var_1.a, var_5.a)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_5.a, 1000f), vec3<f32>(var_1.a, 578f, var_1.a))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.a, 1000f) - _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(ceil(var_1.a)))), -665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-536f - var_0.a), var_5.a, all(vec2<bool>(var_4, true)))))), reverseBits(var_3.x) ^ u_input.a.x);
}

