struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(~(~vec2<u32>(20981u, firstTrailingBit(1u))));
    let var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_mod_vec2_u32(~reverseBits(vec2<u32>(4294967295u, var_2.a.x)), var_1.a));
    var var_4 = Struct_1(var_1.a);
    return var_2.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: i32) -> f32 {
    var var_0 = select(~arg_0, ~(~vec3<u32>(arg_0.x, 46239u, 26771u)) | vec3<u32>(~(~4897u), arg_0.x, _wgslsmith_div_u32(arg_0.x, _wgslsmith_mod_u32(44428u, 4311u))), !any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~0u, ~arg_0.x, ~arg_0.x), min(~arg_0.x, _wgslsmith_mod_u32(~0u, 80601u >> (arg_0.x % 32u)))), ~reverseBits(~_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 35915u)));
    var var_2 = Struct_1(vec2<u32>(func_2(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-493f + 694f), -403f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(120f, 282f, 128f) - vec3<f32>(-301f, -768f, -996f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-150f, -212f) + _wgslsmith_f_op_f32(trunc(1265f)))), var_1));
    let var_3 = true;
    var_0 = min(vec3<u32>(var_1, arg_0.x, var_2.a.x), arg_0 >> (arg_0 % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(floor(123f));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 0u)), vec2<u32>(max(4294967295u, 1u), _wgslsmith_div_u32(46993u, 1u))), 17093u), ~(~1u));
    var var_2 = !(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
    var var_3 = !select(!vec2<bool>(var_2.x, any(vec3<bool>(var_2.x, true, false))), !select(vec2<bool>(true, var_2.x), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x), var_2.x), !var_2.x), vec2<bool>(_wgslsmith_f_op_f32(step(-422f, 346f)) == _wgslsmith_f_op_f32(ceil(arg_1.x)), !all(vec3<bool>(false, false, var_2.x))));
    var_3 = !(!select(select(!vec2<bool>(true, var_2.x), !vec2<bool>(false, var_3.x), arg_0.x == -1i), !select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(true, var_2.x), vec2<bool>(var_3.x, true), var_3.x)));
    return Struct_1(vec2<u32>(max(firstTrailingBit(71584u), 1384u << (1u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(12734u, 9747u)))) ^ max(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 1u)), 1u), reverseBits(vec2<u32>(0u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(vec4<i32>(1i, u_input.a.x, 1i, firstLeadingBit(~u_input.a.x ^ (21249i & u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(func_1(vec3<u32>(4294967295u, ~28757u, 1u), ~u_input.a.yx << (_wgslsmith_mod_vec2_u32(vec2<u32>(37195u, 0u), vec2<u32>(46889u, 4294967295u)) % vec2<u32>(32u)), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1119f - -1494f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1689f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f * -1346f))));
    var_0 = func_3(vec4<i32>(-(~2147483647i), u_input.a.x, min(-u_input.a.x, ~(~u_input.a.x)), _wgslsmith_div_i32(max(-u_input.a.x, max(29436i, -2147483647i)), u_input.a.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(787f, -1823f, -221f, -1618f), vec4<f32>(-2080f, -107f, -328f, 1000f))), vec4<f32>(-869f, -311f, 1000f, -430f)))))));
    var_0 = Struct_1(vec2<u32>(~(31362u << (var_0.a.x % 32u)), ~23159u));
    var_0 = func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-(~(-2147483647i)), 2147483647i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 19766i), u_input.a)), 0i), vec4<i32>(max(7133i, u_input.a.x) << (1u % 32u), max(~2518i, 1i), u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-192f, -832f, false))), 1525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1077f - 1000f)), _wgslsmith_f_op_f32(floor(766f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(564f, 2134f, 1874f, 953f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1656f, -1149f, 480f, -1304f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-382f, -751f, 740f, -129f)))))));
    var var_1 = max(59250u, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(u_input.a)), max(62053u, func_3(vec4<i32>(u_input.a.x, reverseBits(u_input.a.x), i32(-1i) * -8820i, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(-929f + 2256f), -165f, _wgslsmith_f_op_f32(trunc(690f)), 1000f)).a.x), -1435f);
}

