struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec2<f32> {
    let var_0 = vec4<u32>(firstLeadingBit(select(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, arg_1)), ~vec2<u32>(36344u, u_input.b)), 0u, arg_0.a.a.x | true)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, ~0u, ~_wgslsmith_add_u32(u_input.d, 4294967295u), _wgslsmith_sub_u32(abs(1u), u_input.b | 16691u)), ~(~vec4<u32>(u_input.b, 12278u, 1u, 1u) & _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 0u, u_input.c, 0u), vec4<u32>(1u, u_input.c, 8878u, 1u)))), 35831u, countOneBits(~firstLeadingBit(min(u_input.b, 1753u))));
    let var_1 = !(1076u <= var_0.x);
    var var_2 = vec3<f32>(-254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-917f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1452f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2195f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(-972f + 398f), true)))));
    var var_3 = Struct_2(vec4<bool>(arg_0.a.a.x, _wgslsmith_mod_u32(firstLeadingBit(var_0.x), ~var_0.x) < max(u_input.c, ~18151u), select(!arg_0.a.a.x, false, arg_0.a.a.x), !(!select(true, arg_0.a.a.x, arg_0.a.a.x))));
    var_3 = arg_0.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -723f)), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x)), arg_0.a.a.yy))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(669f, -246f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(798f, -1100f), vec2<f32>(1780f, -171f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1118f, 1494f) * vec2<f32>(-862f, -847f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(arg_0, -2147483647i), 2973u))))));
    return ~(vec3<u32>(u_input.d, 1245u, u_input.d & ~1u) | ~(~vec3<u32>(u_input.d, 39833u, 4294967295u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = vec4<i32>(1i, _wgslsmith_sub_i32(arg_0.b, _wgslsmith_mult_i32(_wgslsmith_div_i32(~48291i, min(u_input.a.x, arg_0.b)), firstLeadingBit(_wgslsmith_mod_i32(arg_0.b, -1i)))), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(-15828i, abs(u_input.a.x)), 2809i), -(~(~(-arg_0.b))));
    var var_1 = Struct_3(arg_0.a, var_0.x);
    let var_2 = arg_0.a;
    var var_3 = arg_0.a.a;
    var_0 = vec4<i32>(_wgslsmith_mod_i32(-1i, 32658i & arg_0.b), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, -24555i, var_0.x) << (arg_1 % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, ~arg_1.x, ~arg_1.x) % vec3<u32>(32u)), var_0.zzx), -24243i, -var_1.b);
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(667f, -432f, -1247f, 1199f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(321f, 854f, -1184f, 1784f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-195f, -479f, 379f, 1201f), vec4<f32>(-1000f, 944f, -1075f, 486f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1483f, -2117f, 2107f, 335f) - vec4<f32>(254f, -1756f, 316f, 1783f)))))), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1323f)), -1049f, false)) < _wgslsmith_f_op_f32(max(-902f, _wgslsmith_f_op_f32(-690f * 1000f)))), -_wgslsmith_mult_vec2_i32(u_input.a.yy, countOneBits(vec2<i32>(0i, arg_0.b))) << (arg_1.zy % vec2<u32>(32u)), arg_0.b, min(_wgslsmith_clamp_u32(~1u, 0u, _wgslsmith_add_u32(~1u, ~arg_1.x)), u_input.b));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    return func_4(Struct_3(Struct_2(arg_1.a), ~u_input.a.x), func_2(Struct_2(arg_1.a), arg_1.a.x, vec3<i32>(-1i) * -(u_input.a >> (vec3<u32>(u_input.b, u_input.c, 0u) % vec3<u32>(32u))), arg_1.a), any(select(vec2<bool>(true, false || arg_1.a.x), vec2<bool>(any(arg_1.a), any(vec3<bool>(true, true, arg_1.a.x))), arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = all(!vec2<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, false))));
    var_0 = vec3<i32>(u_input.a.x, -((var_0.x << (29041u % 32u)) ^ var_0.x), var_0.x);
    var var_2 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(307f, -604f), _wgslsmith_f_op_f32(step(-451f, 1000f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1402f)), 920f, true)), Struct_2(vec4<bool>(true && (u_input.a.x != 12684i), true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1154f))))))));
    let var_3 = ~(~countOneBits(~1u));
    var var_4 = select(!vec4<bool>((1119f == var_2.a.x) || any(vec4<bool>(false, true, false, true)), false, var_2.b, !(!var_2.b)), !vec4<bool>(false, var_2.a.x < _wgslsmith_f_op_f32(var_2.a.x - 530f), select(true, true, func_1(-279f, Struct_2(vec4<bool>(false, true, var_2.b, true)), var_2.a.x).b), var_2.b), vec4<bool>(var_2.b, all(select(select(vec3<bool>(var_2.b, false, true), vec3<bool>(false, false, var_2.b), false), select(vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(true, var_2.b, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, var_2.b), vec3<bool>(false, var_2.b, var_2.b), vec3<bool>(true, true, var_2.b)))), !(!var_2.b | !var_2.b), !(!(var_2.b & true))));
    var_4 = !vec4<bool>(true, !select(true, false, var_2.b), true, false);
    var var_5 = Struct_3(Struct_2(!select(vec4<bool>(true, true, true, var_4.x), vec4<bool>(true, var_2.b, var_4.x, true), true)), var_2.c.x);
    let var_6 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3, _wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_2.e, 6533u), reverseBits(var_2.e), countOneBits(u_input.b))), var_2.e));
}

