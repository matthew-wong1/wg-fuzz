struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_mod_i32(-2685i, -1i);
    var_0 = -_wgslsmith_dot_vec4_i32(abs(arg_1.a), vec4<i32>(26378i, ~1i, ~arg_1.a.x, 0i));
    var var_1 = ~abs(arg_0.x);
    let var_2 = i32(-1i) * -(~(-23811i) ^ _wgslsmith_add_i32(u_input.b.x << (arg_0.x % 32u), u_input.c));
    return any(select(!(!select(vec4<bool>(arg_1.b.x, true, true, arg_1.b.x), arg_1.b, vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_1.b.x))), select(!(!vec4<bool>(true, arg_1.b.x, arg_1.b.x, true)), vec4<bool>(arg_1.b.x, all(vec3<bool>(true, true, false)), arg_1.a.x != -941i, !arg_1.b.x), select(arg_1.b, arg_1.b, all(vec4<bool>(true, arg_1.b.x, false, true)))), any(arg_1.b.wy)));
}

fn func_2() -> Struct_1 {
    let var_0 = ~min(vec3<u32>(~u_input.d.x, reverseBits(40169u ^ u_input.d.x), _wgslsmith_mult_u32(u_input.e & u_input.d.x, u_input.d.x << (u_input.e % 32u))), _wgslsmith_div_vec3_u32(~u_input.d, ~u_input.d));
    var var_1 = vec2<bool>(true, true);
    var_1 = !vec2<bool>(var_1.x, select(func_3(var_0.zy, Struct_1(vec4<i32>(-16520i, 61621i, u_input.a, 28757i), vec4<bool>(var_1.x, true, false, true))), any(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false))), true));
    var var_2 = vec2<u32>(29336u, _wgslsmith_div_u32(u_input.d.x, ~var_0.x)) ^ u_input.d.yz;
    var var_3 = !(!vec4<bool>(true, var_1.x, true, all(vec3<bool>(true, var_1.x, var_1.x))));
    return Struct_1(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-16437i, u_input.a), u_input.c, 2147483647i, _wgslsmith_add_i32(0i, 2147483647i)), vec4<i32>(_wgslsmith_div_i32(-9760i, u_input.b.x), u_input.b.x, -u_input.b.x, firstTrailingBit(1i)))), !vec4<bool>((var_1.x & true) || true, true, func_3(u_input.d.xx, Struct_1(vec4<i32>(1i, 14913i, u_input.c, u_input.a), vec4<bool>(false, false, false, true))), any(var_3.zw)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(arg_2.a, vec4<i32>(-2147483647i, arg_1.a.x, 16720i, arg_2.a.x)), firstTrailingBit(arg_2.a), func_2().a)), abs(~arg_2.a)), arg_2.b);
    var_0 = arg_2;
    var_0 = Struct_1(~abs(_wgslsmith_add_vec4_i32(firstTrailingBit(arg_1.a), ~arg_2.a)), func_2().b);
    var_0 = func_2();
    var var_1 = arg_1;
    return !(!(!(!vec4<bool>(var_0.b.x, var_0.b.x, true, arg_1.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_1(vec4<i32>(-arg_2.a.x, ~36316i, select(arg_2.a.x, firstTrailingBit(99423i), !(arg_2.a.x > u_input.c)), firstLeadingBit(1i)), select(func_4(vec4<f32>(_wgslsmith_f_op_f32(2512f * 675f), 1000f, -416f, _wgslsmith_f_op_f32(830f + -1642f)), arg_1, func_2()), select(vec4<bool>(arg_1.b.x, true, true, false), arg_2.b, true), all(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 550f, -449f, 119f)), func_2(), func_2()))));
    let var_1 = ~min(~firstLeadingBit(1u), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u << (u_input.e % 32u), u_input.e << (u_input.e % 32u)), _wgslsmith_sub_u32(14539u, u_input.d.x & arg_3.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(683f, 1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(868f))))) + vec2<f32>(1f, 1f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1625f, 578f) + vec2<f32>(-622f, -424f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1188f, -1638f)) + vec2<f32>(786f, 744f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-669f, 1913f) + vec2<f32>(754f, -880f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(435f, -292f) * vec2<f32>(1285f, -192f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1138f, 1670f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -494f), vec2<f32>(420f, 433f))))))));
    var var_3 = u_input.c;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, var_2.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -196f) - vec2<f32>(413f, var_2.x))))));
    return !var_0.b.xyx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(any(!func_1(Struct_1(vec4<i32>(2147483647i, -2147483647i, u_input.a, u_input.a), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(u_input.b.x, -16322i, -30299i, -2147483647i), vec4<bool>(true, true, false, true)), vec2<u32>(u_input.d.x, 1u))), !any(func_1(Struct_1(vec4<i32>(0i, 0i, u_input.b.x, 2147483647i), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(-30703i, u_input.a, -46581i, u_input.c), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(41504i, 0i, -40394i, 2147483647i), vec4<bool>(true, true, true, false)), vec2<u32>(24378u, u_input.d.x))), all(vec2<bool>(true, false))), vec3<bool>(func_1(Struct_1(min(vec4<i32>(u_input.c, u_input.b.x, 0i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.c, -22495i)), vec4<bool>(true, true, true, true)), Struct_1(max(vec4<i32>(u_input.a, -2147483647i, -28055i, 0i), vec4<i32>(-1i, u_input.a, 1i, -15719i)), func_2().b), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, 17627i), vec4<i32>(u_input.c, u_input.a, 20242i, u_input.c), vec4<i32>(-1i, u_input.a, -28822i, u_input.b.x)), func_2().b), abs(select(u_input.d.xz, vec2<u32>(u_input.e, u_input.e), vec2<bool>(true, true)))).x, !(_wgslsmith_mod_u32(55871u, u_input.e) <= 2124u), ((u_input.a ^ -1i) | _wgslsmith_mult_i32(-15748i, 4013i)) > min(select(0i, u_input.a, true), _wgslsmith_mod_i32(u_input.b.x, 24123i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-475f - -854f), -905f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-575f, -690f) - vec2<f32>(-684f, 259f)))))));
    let var_2 = _wgslsmith_mod_i32(10402i, -21843i);
    var var_3 = 1u;
    var var_4 = u_input.d;
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.x, -498f)), _wgslsmith_f_op_f32(var_1.x + var_1.x)));
    var_0 = func_1(func_2(), func_2(), Struct_1(~vec4<i32>(select(2147483647i, u_input.b.x, true), u_input.c, ~var_2, 1i), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true)), ~_wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.e, var_4.x) ^ vec2<u32>(0u, u_input.e)), var_4.yz | ~vec2<u32>(4294967295u, var_4.x)));
    var var_6 = !func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_5.x, var_1.x, var_5.x, 382f))), vec4<f32>(197f, 1104f, 1281f, var_5.x), var_0.x))), Struct_1(vec4<i32>(i32(-1i) * -6755i, 1i, abs(33293i), 1i), vec4<bool>(var_0.x, false, func_2().b.x, var_0.x)), Struct_1(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1673i, -2147483647i, 23311i, 0i), vec4<i32>(var_2, var_2, 21465i, 45513i)), firstLeadingBit(vec4<i32>(1i, 0i, 4590i, var_2)), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x)), !func_4(vec4<f32>(var_5.x, 605f, -2356f, var_1.x), Struct_1(vec4<i32>(23734i, u_input.c, u_input.a, var_2), vec4<bool>(true, false, var_0.x, var_0.x)), Struct_1(vec4<i32>(u_input.a, 1i, var_2, var_2), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))))).xyy;
    let var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_2, 0i), vec2<i32>(var_2, var_2), var_7.a.x);
}

