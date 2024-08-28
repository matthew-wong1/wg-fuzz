struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_1(vec4<bool>(all(vec3<bool>(true, true, true)), true, u_input.a <= ((arg_2 & u_input.a) ^ _wgslsmith_sub_u32(4294967295u, u_input.a)), !any(vec4<bool>(false, true, false, false))), select(_wgslsmith_mult_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, arg_3.x), vec4<u32>(u_input.a, 0u, arg_3.x, 26386u), vec4<u32>(u_input.a, 14742u, 31531u, arg_3.x)), vec4<u32>(arg_2, 28876u, 1u, 9092u), select(false, false, false)), ~vec4<u32>(0u, arg_2, 27910u, arg_3.x)), vec4<u32>(~4294967295u, _wgslsmith_mult_u32(1u, 49142u), u_input.a, _wgslsmith_mult_u32(arg_2, 57458u) | u_input.a), true), ~1649i);
    var var_1 = Struct_1(select(select(var_0.a, vec4<bool>(true, var_0.a.x, arg_2 == u_input.a, false), var_0.a), select(var_0.a, select(select(var_0.a, var_0.a, var_0.a), select(var_0.a, var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), true), true), select(select(select(vec4<bool>(true, true, var_0.a.x, var_0.a.x), var_0.a, vec4<bool>(false, var_0.a.x, false, true)), select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a, var_0.a.x), 19993i <= var_0.c), select(!var_0.a, var_0.a, !vec4<bool>(var_0.a.x, false, true, var_0.a.x)), select(vec4<bool>(false, false, var_0.a.x, false), !var_0.a, arg_2 >= arg_3.x))), ~firstTrailingBit(min(~var_0.b, vec4<u32>(arg_2, arg_2, u_input.a, 11720u))), _wgslsmith_mod_i32(-2085i, var_0.c));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f));
    var var_3 = _wgslsmith_f_op_f32(sign(var_2));
    return var_0.b;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_1(select(select(select(select(vec4<bool>(false, false, false, arg_0), vec4<bool>(false, false, true, arg_0), arg_0), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, false, true, false), false), !vec4<bool>(arg_0, false, arg_0, true)), vec4<bool>(true, false, all(vec4<bool>(arg_0, arg_0, false, arg_0)), true), false), vec4<bool>(false, true, arg_0, true), any(vec3<bool>(arg_0, all(vec4<bool>(arg_0, false, true, arg_0)), true))), ~vec4<u32>(65392u, 0u, ~0u, 1u) | ~func_3(_wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(573f - 691f), _wgslsmith_mod_u32(u_input.a, u_input.a), reverseBits(vec2<u32>(u_input.a, 1u))), 2147483647i);
    var var_2 = 7064u;
    var_1 = Struct_1(select(!select(select(vec4<bool>(false, arg_0, var_1.a.x, false), var_1.a, var_1.a.x), select(var_1.a, var_1.a, var_1.a.x), var_1.a.x), var_1.a, vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.b.x <= u_input.a)), var_1.b, _wgslsmith_mult_i32(~(-var_1.c), -1i));
    let var_3 = Struct_1(var_1.a, var_1.b, _wgslsmith_sub_i32(max(abs(-40305i), -(~42648i)), ~(-1i)));
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    let var_0 = -72522i;
    let var_1 = func_2(true || !arg_0.a.x);
    let var_2 = vec2<f32>(_wgslsmith_div_f32(-215f, _wgslsmith_f_op_f32(max(-948f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(204f, -1227f))) + 872f)));
    let var_3 = arg_0.b.xw;
    var var_4 = vec2<u32>(func_3(_wgslsmith_f_op_f32(1000f + var_2.x), var_2.x, _wgslsmith_mult_u32(~(~22168u), var_3.x ^ (var_1.b.x | 4294967295u)), var_1.b.wx).x, _wgslsmith_div_u32(~(~28916u), _wgslsmith_sub_u32(var_1.b.x, u_input.a)));
    return (_wgslsmith_mult_i32(firstTrailingBit(var_0), var_1.c) << (80712u % 32u)) << (firstTrailingBit(min(_wgslsmith_mod_u32(1u, 32888u), 4887u)) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = vec2<u32>(func_2(func_2(arg_0.a.x).a.x).b.x >> (6651u % 32u), arg_0.b.x);
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = Struct_1(arg_0.a, func_2(false).b, 14131i);
    var var_3 = var_2.c;
    return abs(var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(firstLeadingBit(56836u), u_input.a) >> (((_wgslsmith_mult_vec2_u32(max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(27602u, 4294967295u)), vec2<u32>(u_input.a, u_input.a)) | ~vec2<u32>(58744u, 1u)) | vec2<u32>(max(u_input.a, _wgslsmith_div_u32(u_input.a, 0u)), func_4(Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(29177u, u_input.a, u_input.a, 4294967295u), 12914i), func_1(Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(87517u, 28951u, 31319u, 25408u), 6477i), vec4<i32>(1i, 24652i, -29295i, 36491i))))) % vec2<u32>(32u));
    let var_1 = func_2(!(!all(vec3<bool>(true, true, true)))).a.yy;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1363f + -837f), _wgslsmith_f_op_f32(ceil(-1133f)), any(vec3<bool>(false, true, false)))), -1421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1174f + 567f) - _wgslsmith_f_op_f32(f32(-1f) * -220f)), 639f) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f * -1000f) - _wgslsmith_f_op_f32(361f + -346f)), _wgslsmith_f_op_f32(827f * _wgslsmith_f_op_f32(trunc(-304f))), 1167f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, -869f), _wgslsmith_f_op_f32(round(191f)), var_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-155f, 419f, _wgslsmith_f_op_f32(var_2.x + 1000f), var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, -328f, _wgslsmith_f_op_f32(select(var_2.x, 410f, var_1.x)), 1065f))));
    var var_3 = func_2(-1701f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_2.x))))));
    let var_4 = abs(var_3.c);
    let var_5 = (firstLeadingBit(0i ^ ~var_4) >> (~_wgslsmith_mod_u32(~var_3.b.x, countOneBits(var_3.b.x)) % 32u)) == _wgslsmith_mult_i32(~1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_4, var_3.c), 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_3.c, var_3.c), vec3<i32>(-18343i, 1i, 1i)) >> ((u_input.a | var_0.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

