struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = u_input.a;
    return arg_0 & ~_wgslsmith_clamp_u32(52576u, ~(~u_input.a), min(~u_input.a, u_input.a));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    var var_0 = !(!(!select(select(vec2<bool>(false, arg_0.x), vec2<bool>(true, arg_0.x), true), arg_0.yz, arg_0.xx)));
    var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(false, !all(vec4<bool>(!var_0.x, true, arg_3.x < -6280i, !var_0.x)));
    let var_1 = true;
    let var_2 = Struct_1(select(vec3<u32>(16267u, ~firstTrailingBit(u_input.a), func_2(0u ^ arg_2.a.x)), arg_2.a, arg_0));
    return _wgslsmith_sub_u32(11951u, abs(1u) << (arg_2.a.x % 32u)) << (firstLeadingBit(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(77067u, arg_1), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), arg_2.a.xz)) % 32u)) % 32u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(65644u, u_input.a >> (55829u % 32u), _wgslsmith_mult_u32(4294967295u, arg_0.x)), ~vec3<u32>(5575u, arg_2.a.x, 40854u) ^ arg_0.zxy)), 67366u, 0u, func_1(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), vec3<bool>(true, any(vec3<bool>(true, true, false)), true), true), ~abs(56210u), arg_2, vec3<i32>(~countOneBits(-10518i), -2147483647i, arg_1.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) * _wgslsmith_div_f32(2059f, -211f))))));
    var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, ~vec4<u32>(1u, var_0.x, u_input.a, 11497u)), 1u, 88155u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(min(1u, min(arg_2.a.x, arg_2.a.x)), var_0.x, _wgslsmith_clamp_u32(~26818u, 12582u, u_input.a), var_0.x << (~u_input.a % 32u)), ~(~arg_0)), abs(~arg_0));
    let var_2 = select(arg_1.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_1.x, ~(-arg_1.x), _wgslsmith_mult_i32(~(-18407i), max(arg_1.x, -2147483647i))), arg_1.x), false);
    var var_3 = vec2<i32>(-1i) * -(~(~arg_1.yy));
    return arg_2.a.x | 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(~abs(vec2<u32>(func_1(vec3<bool>(true, false, true), 0u, Struct_1(vec3<u32>(u_input.a, u_input.a, 36819u)), vec3<i32>(-2147483647i, -3869i, 22733i)), u_input.a)), ~select(firstLeadingBit(vec2<u32>(u_input.a, 3981u)), ~vec2<u32>(4294967295u, u_input.a), true));
    let var_1 = vec4<u32>(func_3(~vec4<u32>(1u, 1u, 48952u, u_input.a), vec3<i32>(1i, 1i, 1i), Struct_1(vec3<u32>(0u, var_0.x, 4294967295u))) & _wgslsmith_mult_u32(~52417u, _wgslsmith_div_u32(u_input.a, 1u)), 23217u, u_input.a, ~abs(~u_input.a)) ^ ~abs(vec4<u32>(4294967295u, firstLeadingBit(var_0.x), 1u, 50256u));
    var var_2 = 1u;
    let var_3 = max(firstLeadingBit(min(vec4<i32>(~(-15381i), ~(-11811i), 1i, select(-16274i, 0i, true)), vec4<i32>(_wgslsmith_clamp_i32(0i, 0i, -2147483647i), 54544i, 4085i, ~0i))), ~min(min(~vec4<i32>(24096i, -34671i, 22531i, -74215i), vec4<i32>(1i, 1i, 1i, 1i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 16310i, 0i, 0i), vec4<i32>(0i, -5065i, 20714i, 1i)))));
    var_2 = ~firstLeadingBit(6951u);
    var_2 = ~23369u;
    var_2 = ~u_input.a;
    var var_4 = select(vec2<bool>(false, false), !(!vec2<bool>(all(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, true)))), true);
    let var_5 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2042f, -1589f)) + _wgslsmith_f_op_f32(ceil(782f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 295f, false))), _wgslsmith_f_op_f32(1891f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1282f - -800f)), 306f))), _wgslsmith_f_op_f32(abs(-460f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_5.zz * _wgslsmith_f_op_vec2_f32(var_5.ww - var_5.zw))), var_5.zy, var_4.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1716f, var_5.x, 715f) - var_5.wzw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_5.zzz)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_5.x), var_5.x, _wgslsmith_div_f32(var_5.x, -537f))))), ~select(vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), 33417u), var_1.xw, false));
}

