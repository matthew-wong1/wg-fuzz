struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(reverseBits(1i), 1i)), ~vec2<i32>(u_input.e.x, ~(u_input.c ^ u_input.b)));
    var var_1 = Struct_1(u_input.d >= (_wgslsmith_div_u32(~u_input.d, 8785u) ^ abs(0u)));
    let var_2 = ~_wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.e.x, var_0.x, -50288i), vec4<i32>(-1i, 85649i, u_input.a.x, u_input.e.x)), vec4<i32>(2147483647i, u_input.b, 1i, -20782i)), countOneBits(~vec4<i32>(u_input.c, var_0.x, var_0.x, 6765i)), false), ~vec4<i32>(max(16473i, -26793i), var_0.x | u_input.c, firstLeadingBit(var_0.x), var_0.x));
    var_1 = Struct_1(true);
    var_1 = Struct_1(true);
    return var_1.a;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<bool>(any(vec2<bool>(true, func_3() & true)), arg_2.a & select(arg_2.a, _wgslsmith_mult_u32(u_input.d, 20578u) >= _wgslsmith_mod_u32(31616u, u_input.d), !(arg_0 > -2546i)));
    var_0 = !select(vec2<bool>(func_3(), _wgslsmith_f_op_f32(-arg_1.x) > _wgslsmith_div_f32(581f, -1325f)), !vec2<bool>(true, -2147483647i < arg_0), select(vec2<bool>(func_3(), !arg_2.a), select(vec2<bool>(arg_2.a, arg_2.a), !vec2<bool>(false, var_0.x), vec2<bool>(arg_2.a, false)), vec2<bool>(false, true)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = select(vec2<bool>(var_0.x, select(arg_2.a, !var_0.x, false)), !select(vec2<bool>(true, true), vec2<bool>(arg_2.a | false, all(vec2<bool>(arg_2.a, false))), false), any(vec4<bool>(true, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(select(-2311f, arg_1.x, arg_2.a)) != arg_1.x, select(any(vec4<bool>(true, false, true, false)), true, true))));
    let var_2 = 1630f;
    return Struct_1(var_0.x || var_0.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(func_2(-2147483647i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-277f - 550f), 2922f, _wgslsmith_f_op_f32(max(-1483f, -1000f))))), Struct_1(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))), firstLeadingBit(-vec4<i32>(4474i, u_input.e.x, 9782i, -4104i))), Struct_1(!func_2(-2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-2185f, 1351f, -935f, -704f) - vec4<f32>(-1547f, -747f, -140f, -137f)), func_2(u_input.a.x, vec4<f32>(-311f, -335f, 157f, -1465f), Struct_1(true), vec4<i32>(u_input.c, u_input.a.x, -22036i, u_input.e.x)), ~vec4<i32>(-34811i, arg_0.x, u_input.b, arg_0.x)).a), !select((u_input.d < u_input.d) && true, true, !select(false, false, false)));
    let var_1 = Struct_2(Struct_1(!(!all(vec2<bool>(var_0.a.a, false)))), func_2(u_input.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1326f, -472f, 312f, -412f), vec4<f32>(-1114f, 143f, 508f, 1080f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1234f, 1822f, -1000f, -759f))))), Struct_1(var_0.b.a), ~(~vec4<i32>(u_input.e.x, -2147483647i, arg_0.x, 1i))), true);
    let var_2 = Struct_2(var_1.b, Struct_1(var_1.b.a), any(select(select(vec2<bool>(var_0.a.a, var_0.a.a), vec2<bool>(var_0.b.a, true), var_0.a.a), !vec2<bool>(var_1.a.a, true), vec2<bool>(var_0.a.a, true))) || !func_3());
    let var_3 = -1159f;
    var_0 = Struct_2(func_2(-2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 452f, -445f, var_3))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, 140f, var_3, -676f))))), Struct_1(var_1.a.a), ~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, -2147483647i), ~vec4<i32>(0i, arg_0.x, 7184i, arg_0.x))), var_2.a, var_2.c);
    return func_2(firstTrailingBit(~select(1i, abs(arg_0.x), arg_0.x < arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(257f, var_3, var_3, -141f) * vec4<f32>(var_3, 329f, var_3, var_3)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-907f, -658f, var_3, var_3), vec4<f32>(573f, 574f, -638f, -892f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, 362f, -1592f, var_3), vec4<f32>(var_3, var_3, var_3, var_3), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, -233f, var_3, 122f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2586f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(538f, 662f)), var_3)), var_3, var_3)), func_2(arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1077f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(107f, -839f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * 1073f)), var_3), func_2(2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1689f, var_3, var_3, var_3) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1248f, var_3, 543f, -139f) * vec4<f32>(var_3, -793f, var_3, var_3))), Struct_1(173f > var_3), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, u_input.c, -2147483647i, arg_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_0.x, arg_0.x, u_input.b), vec4<i32>(2147483647i, arg_0.x, -48895i, u_input.b)))), -firstLeadingBit(-vec4<i32>(2147483647i, 1i, 4273i, u_input.c))), vec4<i32>(1i, ~(_wgslsmith_clamp_i32(-1i, 15790i, 2147483647i) | ~(-31853i)), ~(-2147483647i), u_input.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = func_2(abs(-2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-2323f, -114f, -1000f, 966f), vec4<f32>(1000f, 1033f, 884f, -1266f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1108f, 203f, -403f, 780f))), vec4<bool>(true, arg_2.a, true, arg_2.a)))))), func_1(_wgslsmith_div_vec3_i32(u_input.a, u_input.a)), vec4<i32>(arg_3.x, 2147483647i, -2147483647i, _wgslsmith_mod_i32(countOneBits(2147483647i), u_input.e.x)) ^ -firstLeadingBit(~vec4<i32>(-34284i, -2824i, arg_3.x, 50352i)));
    var var_1 = func_2(-1i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(255f, 1305f, -168f, 869f))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-344f * 1305f), _wgslsmith_f_op_f32(-1702f * 1835f), -1074f), !any(vec3<bool>(arg_0.a, false, var_0.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1085f, -1002f, -2443f, _wgslsmith_f_op_f32(select(-624f, -756f, arg_2.a)))))), Struct_1(arg_2.a), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(-51961i, 21431i, 1i, -2147483647i), vec4<i32>(arg_3.x, arg_3.x, u_input.e.x, -2147483647i)) & firstLeadingBit(abs(~vec4<i32>(arg_3.x, -2147483647i, -1674i, arg_3.x))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2249f + -324f), _wgslsmith_f_op_f32(trunc(-189f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-991f, 462f, true)), _wgslsmith_f_op_f32(-554f * 182f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -192f)) - _wgslsmith_f_op_f32(min(669f, _wgslsmith_f_op_f32(floor(-1759f)))))), arg_2.a));
    let var_3 = arg_2;
    let var_4 = Struct_2(Struct_1(any(!(!vec4<bool>(false, true, arg_2.a, true)))), var_3, var_3.a);
    return func_1(u_input.a >> (arg_1 % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(u_input.a), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d ^ u_input.d, 30579u, ~23643u), ~vec3<u32>(1771u, u_input.d, ~u_input.d)), Struct_1(true), max(_wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.c, ~u_input.a.x)), (~u_input.e | ~u_input.a.yy) >> (~(vec2<u32>(u_input.d, 0u) | vec2<u32>(u_input.d, 12111u)) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1160f, -1592f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2908f, 802f) - vec2<f32>(-507f, -1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-144f, 503f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(892f, -944f))))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-340f, _wgslsmith_f_op_f32(min(-1175f, 154f))), _wgslsmith_f_op_f32(sign(-1246f))), vec2<f32>(_wgslsmith_f_op_f32(round(-358f)), _wgslsmith_f_op_f32(round(-247f))))));
    var var_2 = vec4<u32>(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.d, u_input.d), vec4<u32>(1u, 62705u, u_input.d, 23736u) | vec4<u32>(40795u, u_input.d, 1u, u_input.d)) << (u_input.d % 32u)), _wgslsmith_clamp_u32(firstTrailingBit(0u), 76421u, countOneBits(~u_input.d)), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.d, 64180u), ~u_input.d & (4294967295u | u_input.d)), u_input.d);
    var_0 = func_4(Struct_1(true), abs(vec3<u32>(0u, ~u_input.d, _wgslsmith_add_u32(max(4294967295u, 21234u), _wgslsmith_dot_vec2_u32(var_2.xx, var_2.yz)))), Struct_1(!(_wgslsmith_f_op_f32(exp2(var_1.x)) >= -627f)), vec2<i32>(~((i32(-1i) * -2066i) & _wgslsmith_add_i32(u_input.a.x, u_input.b)), _wgslsmith_dot_vec2_i32(u_input.a.yx | ~u_input.a.xz, vec2<i32>(_wgslsmith_div_i32(-40250i, -1i), -2147483647i))));
    var_2 = min(~vec4<u32>(var_2.x, firstTrailingBit(var_2.x), _wgslsmith_mult_u32(u_input.d, 0u), ~var_2.x), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(22737u, u_input.d, 6596u, var_2.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 44063u, var_2.x), vec4<u32>(var_2.x, 1u, var_2.x, 4294967295u))), ~vec4<u32>(u_input.d, u_input.d, u_input.d, var_2.x))) & _wgslsmith_div_vec4_u32(~select(~vec4<u32>(0u, 38483u, var_2.x, u_input.d), vec4<u32>(u_input.d, u_input.d, var_2.x, 34644u) << (vec4<u32>(var_2.x, 55072u, u_input.d, 4294967295u) % vec4<u32>(32u)), true), ~reverseBits(vec4<u32>(var_2.x, u_input.d, var_2.x, 8113u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-511i, u_input.a.x, u_input.b)), u_input.a, u_input.a), ~vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, -58489i), u_input.c), ~u_input.e, u_input.a.x);
}

