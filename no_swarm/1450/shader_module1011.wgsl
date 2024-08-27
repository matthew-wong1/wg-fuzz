struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -681f))))));
    let var_1 = var_0;
    let var_2 = Struct_1(select(~vec4<u32>(4294967295u, arg_1.b.x, 39651u, 0u), ~(~(arg_1.a & vec4<u32>(arg_1.b.x, 1u, arg_1.a.x, arg_1.a.x))), any(vec4<bool>(true, true, true, true))), arg_0.b);
    return var_0 >= _wgslsmith_f_op_f32(ceil(var_0));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = min(select(max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 7699i), vec2<i32>(u_input.a, u_input.b)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-1i, 45061i), vec2<i32>(92748i, u_input.b)), vec2<i32>(u_input.b, ~(-12538i))), -firstTrailingBit(-vec2<i32>(-288i, u_input.a)), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), true), false)), vec2<i32>(-19199i, countOneBits(u_input.b)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f), -761f)), 969f));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = Struct_1(min(select(firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, 1u, 1u, 52060u))), vec4<u32>(~4294967295u, ~19397u, ~61695u, max(113068u, 104277u)), true), ~(~vec4<u32>(1u, 1u, 1u, 1u))), ~(~vec2<u32>(_wgslsmith_mult_u32(1u, 0u), ~14051u)));
    var var_1 = select(vec3<bool>(true, true, any(vec4<bool>(any(vec3<bool>(false, false, true)), false, true, true))), vec3<bool>(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true)), any(vec3<bool>(any(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, false, false, true)), true)), any(vec2<bool>(true, true))), !(!vec3<bool>(true, all(vec3<bool>(false, true, false)), true)));
    var var_2 = ~(~var_0.a.x);
    var var_3 = vec4<u32>(abs(~var_0.b.x), ~9446u, ~(~69924u), 46440u);
    var_1 = !(!(!(!vec3<bool>(var_1.x, var_1.x, false))));
    return -firstLeadingBit(-u_input.b) ^ -1i;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_3;
    let var_1 = var_0;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.zzx, vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(countOneBits(arg_0.zwy), vec3<i32>(arg_0.x, u_input.a, arg_0.x)), arg_0.x)), _wgslsmith_sub_i32(arg_0.x ^ arg_0.x, 0i), 2147483647i, func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -921f) - vec3<f32>(-951f, arg_1, arg_1)) * vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 526f, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1081f, -1417f, arg_1) - vec3<f32>(-610f, arg_1, arg_1)), arg_2.x)), select(!arg_2.x, any(vec2<bool>(false, arg_2.x)), func_2(Struct_1(var_1.a, arg_3.b), Struct_1(vec4<u32>(4294967295u, 80732u, arg_3.b.x, 1u), var_0.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec4<u32>(14648u, var_1.a.x, 4294967295u, arg_3.b.x), var_1.b)))), vec2<i32>(arg_0.x, reverseBits(u_input.b))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1968f, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) + vec4<f32>(arg_1, arg_1, -420f, -2120f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, 1200f, -1576f, -209f))))))));
    var var_4 = reverseBits(_wgslsmith_mod_vec4_i32(arg_0, arg_0));
    return firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~var_1.a, vec4<u32>(var_1.b.x, var_1.a.x, var_1.b.x, 27779u)), arg_3.a, select(~_wgslsmith_add_vec4_u32(arg_3.a, arg_3.a), _wgslsmith_mult_vec4_u32(var_0.a, vec4<u32>(arg_3.a.x, 4294967295u, arg_3.b.x, 1u)) | ~arg_3.a, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(_wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(8961u, 1u, 4294967295u, 33822u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4615u, 4294967295u, 16786u), vec4<u32>(12811u, 30619u, 4294967295u, 1u)), func_1(vec4<i32>(u_input.b, u_input.b, 70487i, u_input.a), 337f, vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(0u, 39508u, 4294967295u, 0u), vec2<u32>(4294967295u, 24583u)))))), func_1(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 80402i, u_input.b, 50500i), vec4<i32>(-42049i, -2147483647i, u_input.b, 1i))), _wgslsmith_f_op_f32(-1f), vec4<bool>(true, select(select(true, true, false), true, true), true, false), Struct_1(~vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec2<u32>(1u, 1u) & firstTrailingBit(vec2<u32>(0u, 43847u)))).xy);
    var var_1 = select(vec2<bool>(false, true), !(!vec2<bool>(true, -1i <= u_input.b)), false);
    var var_2 = Struct_1(var_0.a, countOneBits(func_1(vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, -1i), vec3<i32>(u_input.b, -16314i, 2147483647i)), 37660i, u_input.a >> (0u % 32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-931f * -1842f), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_0.a, var_0.b))).x)), vec4<bool>(!var_1.x, true, any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), true), Struct_1(max(var_0.a, vec4<u32>(0u, var_0.b.x, 73263u, 31615u)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.a.x), vec2<u32>(var_0.a.x, 30515u)))).xy));
    var_0 = Struct_1(var_0.a, vec2<u32>(77365u, var_0.b.x ^ var_2.a.x));
    let var_3 = Struct_1(~var_0.a, ~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a.x, var_2.a.x), vec2<u32>(1u, var_2.b.x)) | abs(var_2.b)));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(294f, -1151f, -879f) - vec3<f32>(-1046f, -840f, 556f)), vec3<f32>(852f, -151f, 1879f), true)) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(908f, 1000f, -700f)))), var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_0.a, vec2<u32>(4294967295u, var_3.b.x)))).x * 884f), -935f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(870f - -1087f) * _wgslsmith_f_op_f32(944f - -2248f)))));
    var_0 = Struct_1(~reverseBits(~var_2.a), vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(var_2.b.x), _wgslsmith_add_u32(var_3.b.x, var_2.b.x)), _wgslsmith_div_u32(~var_2.b.x, ~330u) & ~1u));
    var var_5 = _wgslsmith_sub_vec2_i32(min(select(~vec2<i32>(u_input.b, -2147483647i), select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(-1i, 23778i)), firstLeadingBit(vec2<i32>(u_input.b, 11297i)), var_1.x), false != !var_1.x), select(max(abs(vec2<i32>(u_input.b, u_input.b)), max(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.b))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.b, u_input.b)), u_input.a), false)), -(~select(~vec2<i32>(u_input.a, u_input.a), select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, false)), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(abs(4294967295u), 36212u), var_3.a.x, vec2<i32>(~u_input.b >> (~53971u % 32u), ~(~var_5.x) >> (~(~var_3.b.x) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_3.a, var_2.a.wx))).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4.x + -1634f)))))), vec3<i32>(abs(u_input.a) << (4294967295u % 32u), var_5.x, select(_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_5.x, var_5.x), vec3<i32>(-2768i, -1i, -37217i))), 39016i, !var_1.x)));
}

