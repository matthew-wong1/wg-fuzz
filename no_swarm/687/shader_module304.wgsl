struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32) -> vec4<i32> {
    var var_0 = vec4<bool>(true, 14210u < _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 0u, arg_2, 1u)), vec4<u32>(abs(u_input.b), firstLeadingBit(u_input.c), ~16155u, u_input.b ^ 71130u)), all(vec3<bool>(true, true, !all(vec4<bool>(false, true, true, true)))), arg_2 < ~(4294967295u ^ abs(u_input.b)));
    var var_1 = -_wgslsmith_mult_vec2_i32(vec2<i32>(max(_wgslsmith_sub_i32(arg_1, 1i), max(u_input.d.x, u_input.d.x)), _wgslsmith_mult_i32(firstTrailingBit(arg_1), _wgslsmith_sub_i32(-22199i, arg_1))), -select(countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)), abs(vec2<i32>(13474i, 1i)), !var_0.zz));
    var var_2 = ~var_1.x;
    var var_3 = -u_input.d.xxy;
    var var_4 = vec3<f32>(-728f, -378f, _wgslsmith_f_op_f32(-1333f - arg_0));
    return firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.wy), ~var_3.zx), ~2147483647i, min(var_1.x, 2147483647i), ~firstLeadingBit(arg_1)) & vec4<i32>(reverseBits(var_1.x) | 20088i, -var_1.x, -2475i, -1i << (arg_2 % 32u)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~u_input.d, func_3(619f, u_input.d.x, 5094u)), abs(abs(u_input.d)));
    var var_1 = Struct_2(!arg_0.a, arg_0.b, Struct_1(-34943i));
    var_1 = arg_0;
    var_1 = Struct_2(true, var_1.c, var_1.c);
    var_1 = Struct_2(all(vec3<bool>(any(vec2<bool>(var_1.a, arg_0.a)) != !var_1.a, arg_0.a, var_1.a)), Struct_1(~1i >> (abs(_wgslsmith_clamp_u32(u_input.c, u_input.b, 75922u)) % 32u)), var_1.b);
    return firstTrailingBit(~(~firstTrailingBit(84567u)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: f32) -> vec2<u32> {
    var var_0 = -(-(~1i) >> (firstTrailingBit(abs(4294967295u) << (arg_1.x % 32u)) % 32u));
    let var_1 = u_input.a.x;
    var_0 = var_1;
    var_0 = ~(~(~u_input.d.x));
    var var_2 = u_input.a.xy;
    return (arg_1 | min(~(~vec2<u32>(arg_1.x, 1u)), select(~arg_1, arg_1 & arg_1, vec2<bool>(true, true)))) & vec2<u32>(_wgslsmith_mod_u32(func_2(Struct_2(true, Struct_1(32800i), Struct_1(var_1))), 4294967295u), ~15563u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mod_vec2_u32(select(~vec2<u32>(u_input.b, 0u), ~func_1(802f, vec2<u32>(50559u, u_input.c), 942f), !any(vec2<bool>(true, false))), vec2<u32>(54750u, ~(~0u))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(true, select(false, false, false), u_input.b < 112136u)), !all(vec2<bool>(true, true))), Struct_1(2147483647i), Struct_2(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(1i), Struct_1(-58062i | _wgslsmith_sub_i32(u_input.d.x, -2147483647i))), Struct_1(~u_input.d.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1600f), _wgslsmith_f_op_f32(f32(-1f) * -440f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(492f - 779f), _wgslsmith_div_f32(-1269f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-269f, 1451f) - _wgslsmith_f_op_f32(-194f - -177f))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(-var_1.x));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(824f, -1296f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1347f, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_1.x))) * vec2<f32>(-308f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1401f - -1000f) + _wgslsmith_f_op_f32(ceil(var_1.x))))));
    var var_2 = -370f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(-(~22257i), -2147483647i, _wgslsmith_mult_i32(~33903i, u_input.d.x), var_0.c.a), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_0.d.c.a, -2147483647i, -1063i), vec4<i32>(-1i, u_input.a.x, u_input.d.x, -32207i)), vec4<i32>(u_input.d.x, reverseBits(38370i), abs(-2147483647i), u_input.a.x), all(vec2<bool>(false, var_0.b.x)) & select(false, var_0.b.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f - _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

