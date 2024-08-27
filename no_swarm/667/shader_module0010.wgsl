struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    var var_0 = u_input.a.yz;
    var var_1 = Struct_1(vec2<u32>(~select(arg_1.x, arg_1.x & arg_0.a.x, true), ~(_wgslsmith_div_u32(0u, arg_1.x) & _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(0u, 1u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.c, arg_0.b.x), arg_0.b)) + arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c)) - 1f));
    let var_2 = select(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), vec4<bool>(_wgslsmith_f_op_f32(abs(arg_0.b.x)) > var_1.b.x, false, true, true), select(vec4<bool>(true, 9896i < _wgslsmith_clamp_i32(48114i, -19685i, var_0.x), true, all(vec2<bool>(true, true))), vec4<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), false, any(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec4<bool>(true, !(1000f != var_1.c), false, false)));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_clamp_i32(-101737i, u_input.a.x, -4311i);
    return arg_1.x < firstTrailingBit(_wgslsmith_div_u32(arg_0.a.x, 4294967295u) | 29914u);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(~_wgslsmith_sub_u32(arg_0.x, 4294967295u), 4294967295u) << (2705u % 32u);
    var var_1 = -700f;
    let var_2 = !select(!vec4<bool>(any(vec4<bool>(false, false, false, false)), func_3(Struct_1(arg_0, vec4<f32>(242f, -1381f, -958f, -803f), -198f), arg_0), all(vec2<bool>(false, false)), u_input.a.x <= -2147483647i), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), true), vec4<bool>(select(true, false, false), false, select(true, true, true), true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false)), true));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(366f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_f_op_f32(f32(-1f) * -1263f))))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1442f);
    return Struct_1(_wgslsmith_add_vec2_u32(arg_0, ~abs(~arg_0)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -400f), true)), _wgslsmith_f_op_f32(round(613f)), -309f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -495f) * _wgslsmith_f_op_f32(-1336f * _wgslsmith_f_op_f32(select(786f, 1444f, false)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_0.x | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(413f, _wgslsmith_f_op_f32(arg_3.b.x * 2165f))) - _wgslsmith_f_op_f32(max(arg_3.c, _wgslsmith_f_op_f32(min(910f, -960f))))) != -1265f);
    let var_1 = func_2(vec2<u32>(~countOneBits(arg_2.x | arg_2.x), reverseBits(arg_2.x)));
    let var_2 = arg_3;
    var var_3 = var_1;
    var_3 = Struct_1(vec2<u32>(_wgslsmith_div_u32(61095u, ~(1u & var_3.a.x)), ~1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b * vec4<f32>(729f, -1003f, 672f, var_2.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-118f, var_2.b.x, -1073f, var_2.c), _wgslsmith_f_op_vec4_f32(max(var_2.b, var_3.b)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-210f, -507f, var_3.b.x, var_1.c) * _wgslsmith_div_vec4_f32(var_1.b, var_2.b)))), _wgslsmith_f_op_f32(f32(-1f) * -920f));
    return vec4<u32>(~_wgslsmith_mult_u32(func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 50394u), vec2<u32>(11503u, var_2.a.x))).a.x, _wgslsmith_clamp_u32(266u, 41030u, 1u >> (var_2.a.x % 32u))), ~(~(~arg_2.x) << (_wgslsmith_add_u32(1u, ~91558u) % 32u)), 12105u, firstLeadingBit(arg_2.x) >> (_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(var_2.a.x, firstLeadingBit(var_3.a.x))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 30071u << ((_wgslsmith_dot_vec4_u32(func_1(vec2<bool>(true, false), -vec2<i32>(u_input.a.x, 0i), ~vec2<u32>(61964u, 18796u), Struct_1(vec2<u32>(1u, 0u), vec4<f32>(1387f, -1254f, -614f, 1000f), 386f)), select(vec4<u32>(70837u, 97090u, 0u, 29692u), vec4<u32>(28173u, 30421u, 1u, 54252u), vec4<bool>(true, false, false, false)) >> (vec4<u32>(41439u, 0u, 1u, 92952u) % vec4<u32>(32u))) >> (0u % 32u)) % 32u);
    var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(~func_1(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), u_input.a.wx, vec2<u32>(36168u, 16076u), Struct_1(vec2<u32>(42257u, 0u), vec4<f32>(1132f, -1059f, 347f, -199f), -762f)).yyz), _wgslsmith_add_vec3_u32(func_1(vec2<bool>(true, true), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -39581i), vec2<i32>(u_input.a.x, -12394i)), vec2<u32>(1u, 1u), func_2(vec2<u32>(0u, 20265u))).xwz << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(114932u, 32960u), vec2<u32>(28734u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 38151u), vec4<u32>(649u, 4294967295u, 8358u, 0u))), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(24312u, 56863u, 4294967295u), vec3<u32>(0u, 114120u, 99607u)) | ~1u)));
    var var_1 = func_2(~vec2<u32>(1u, 1u));
    var_0 = ~4294967295u;
    var var_2 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x) & vec2<u32>(var_1.a.x, var_1.a.x), var_1.a), ~(~8835u)), _wgslsmith_f_op_vec4_f32(sign(var_1.b)), 1097f);
    var_2 = func_2(vec2<u32>(~var_2.a.x & var_1.a.x, 46973u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-539f, 1036f))), var_2.b.yy, true)) + _wgslsmith_f_op_vec2_f32(-var_2.b.xx)));
    var var_4 = _wgslsmith_f_op_f32(round(func_2(var_2.a).b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 33760i), vec3<i32>(1i, u_input.a.x, 1i))) >> (~(~(~var_2.a)) % vec2<u32>(32u)), 691f, -869f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1350f, 360f)), var_1.b.wz)) - vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(ceil(var_1.c)))));
}

