struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    let var_0 = vec4<bool>(any(vec4<bool>(arg_1, true, select(-28889i, 1i, true) > _wgslsmith_mod_i32(u_input.a.x, arg_0), arg_1)), arg_1, any(select(!vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, true, -67i >= arg_0), select(true, arg_1, true) && arg_1)), true);
    var var_1 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-499f * 251f) * _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x))))))));
    let var_2 = !arg_1;
    var_1 = -320f;
    return _wgslsmith_f_op_f32(-arg_2.x);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(u_input.a.x, -u_input.a.x >> (~select(1u, 45671u, true) % 32u), !all(vec4<bool>(any(vec4<bool>(true, true, true, false)), false, true, all(vec4<bool>(false, true, true, true)))), vec2<i32>(-(~u_input.a.x), u_input.a.x), !all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true)));
    var_0 = Struct_1(u_input.a.x, reverseBits(u_input.a.x), false, -select(abs(vec2<i32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(1u, 9525u) % vec2<u32>(32u))), vec2<i32>(17912i >> (0u % 32u), -16920i), all(!vec3<bool>(var_0.e, true, true))), select(false, true, any(select(!vec2<bool>(false, var_0.e), !vec2<bool>(var_0.e, var_0.e), vec2<bool>(true, true)))));
    var var_1 = Struct_1(-1i, -max(select(u_input.a.x, firstLeadingBit(var_0.b), any(vec4<bool>(var_0.e, var_0.c, true, var_0.e))), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), any(vec2<bool>(true, all(!vec2<bool>(false, var_0.e)))), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, 0i) ^ u_input.a), vec2<i32>(~u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 1i))), 70294u != ~firstTrailingBit(0u));
    var var_2 = vec2<bool>(abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(10491u, 4294967295u, 0u, 13279u), vec4<u32>(0u, 15053u, 1u, 96176u)))) < _wgslsmith_div_u32(34990u, ~(~4294967295u)), all(select(select(!vec2<bool>(var_0.e, true), select(vec2<bool>(var_0.c, false), vec2<bool>(false, false), var_1.e), vec2<bool>(true, true)), !vec2<bool>(var_1.c, false), true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(494f, 1f)), 742f, -552f, _wgslsmith_f_op_f32(f32(-1f) * -271f)));
    return vec2<bool>(any(select(vec4<bool>(all(vec3<bool>(true, false, var_0.e)), all(vec3<bool>(true, false, true)), true, !var_0.e), !(!vec4<bool>(var_2.x, true, var_2.x, false)), vec4<bool>(true, true, true, var_2.x | false))), true);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(~_wgslsmith_sub_i32(u_input.a.x, (i32(-1i) * -1i) << (arg_0 % 32u)), u_input.a.x, all(!func_3()), vec2<i32>(2147483647i, max(select(1i, u_input.a.x, false), u_input.a.x) ^ 0i), _wgslsmith_dot_vec4_i32(max(-vec4<i32>(-2147483647i, -2147483647i, 18902i, u_input.a.x), ~vec4<i32>(u_input.a.x, 0i, u_input.a.x, -50833i)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -31224i, u_input.a.x)) | -vec4<i32>(u_input.a.x, -28019i, u_input.a.x, 1i)) <= (i32(-1i) * -15680i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-693f, 324f, 1035f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1582f, -512f) * vec3<f32>(-406f, 131f, 1051f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + -1816f), _wgslsmith_f_op_f32(select(279f, -146f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1050f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(-587f, var_2.x, 434f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -217f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(215f, -980f, var_2.x), vec3<f32>(var_2.x, 2236f, -144f), false)), vec3<f32>(var_2.x, -318f, var_2.x))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, 1000f, -185f), vec3<f32>(var_2.x, var_2.x, 1084f))))))));
    let var_3 = var_1;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 41428i & u_input.a.x;
    let var_1 = vec3<f32>(-663f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(745f, 630f)) + _wgslsmith_f_op_f32(trunc(1f))))), _wgslsmith_f_op_f32(func_1(-max(-6338i, abs(-12498i)), -var_0 < (i32(-1i) * -u_input.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1685f, 1000f, 1645f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(159f, -1000f, 540f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(func_2(max(0u, 0u)))), var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(18068u)))))));
    let var_3 = !func_3();
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(-477f)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1054f, 709f, true)) * _wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -977f), _wgslsmith_f_op_f32(f32(-1f) * -1117f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x * 148f), var_2.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_1.x));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x))), ~firstLeadingBit(-106695i), _wgslsmith_add_vec2_u32(~max(vec2<u32>(4294967295u, 1u), countOneBits(vec2<u32>(5328u, 31352u))), max(select(vec2<u32>(3133u, 54185u), ~vec2<u32>(0u, 24851u), vec2<bool>(var_3.x, var_3.x)), ~(~vec2<u32>(4294967295u, 1u)))), ~_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 1i)), vec2<i32>(var_0, 0i)) >> (~(~(~vec2<u32>(25337u, 113004u))) % vec2<u32>(32u)));
}

