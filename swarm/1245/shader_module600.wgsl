struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(-vec3<i32>(reverseBits(2147483647i), u_input.a, countOneBits(-2147483647i)) << (~(~(~vec3<u32>(0u, 9132u, 4294967295u))) % vec3<u32>(32u)), -52134i, true, !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 62446u), vec2<u32>(86308u, 27686u)), ~1456u, true) | _wgslsmith_clamp_u32(~select(69274u, 1u, true), ~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 446u))));
    return abs(abs(vec3<i32>(_wgslsmith_sub_i32(-4051i, _wgslsmith_dot_vec3_i32(var_0.a, var_0.a)), 24770i, -(-9574i << (var_0.e % 32u)))));
}

fn func_2() -> Struct_1 {
    let var_0 = -2147483647i;
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));
    let var_2 = max(1u, 1u);
    let var_3 = _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(var_2, 0u, var_2)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, 12432u, 24062u), vec3<u32>(var_2, 0u, var_2), vec3<u32>(12742u, var_2, var_2))), vec3<u32>(0u, 42763u, var_2))), ~(vec3<u32>(_wgslsmith_add_u32(var_2, var_2), var_2, var_2) >> (~(~vec3<u32>(22384u, var_2, 0u)) % vec3<u32>(32u))));
    let var_4 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-8087i, -(~var_0), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 51119i, -2147483647i, u_input.a), vec4<i32>(var_0, var_0, var_0, var_0))), func_3()), abs(1i), var_1.x, !select(!vec3<bool>(var_1.x, false, true), select(vec3<bool>(var_1.x, var_1.x, false), !vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, var_1.x))), vec3<bool>(true, var_1.x, true)), ~1u);
    return var_4;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = arg_1;
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1120f, 397f), vec2<f32>(1629f, 1000f))))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-414f, 314f)), _wgslsmith_f_op_f32(1000f * var_3.x) >= _wgslsmith_f_op_f32(abs(var_3.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) + vec2<f32>(-1000f, -471f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.x, var_3.x), vec2<f32>(var_3.x, -328f))))))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1184f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1655f)) * 1f), _wgslsmith_f_op_f32(-899f - -1225f)), !(!select(arg_2.c, true, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1423f)), _wgslsmith_f_op_f32(-704f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1903f, 229f) + _wgslsmith_f_op_f32(ceil(193f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -907f)), _wgslsmith_f_op_f32(step(310f, _wgslsmith_f_op_f32(sign(393f)))))))));
    var var_1 = vec3<bool>(!(!(true & select(false, arg_2.c, false))), any(arg_2.d), arg_0.e < arg_2.e);
    var var_2 = func_2();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + var_0.x) + var_0.x));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-446f * -359f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.zy), var_0.yy, !vec2<bool>(arg_0.c, false))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(~(~vec3<u32>(1u, 1u, 1u)), Struct_1(vec3<i32>(-u_input.a, -u_input.a, u_input.a), ~(~u_input.a), true, vec3<bool>(true, true, true), abs(~5258u)), -(~0i)), 0u, Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, 0i, 1i), ~vec3<i32>(-268i, 0i, 23377i)), vec3<i32>(_wgslsmith_add_i32(28155i, u_input.a), ~(-1070i), 2147483647i)), func_3().x, any(vec3<bool>(false, true, false)), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), ~_wgslsmith_mod_u32(75901u, ~1u)));
    var var_1 = var_0.d.x;
    var_0 = func_1(~vec3<u32>(~var_0.e >> (0u % 32u), ~(~var_0.e), ~(~36191u)), func_4(Struct_1(var_0.a, ~1i, !(var_0.d.x & var_0.d.x), func_4(Struct_1(vec3<i32>(var_0.b, -22036i, u_input.a), u_input.a, var_0.d.x, vec3<bool>(var_0.c, false, var_0.c), var_0.e), var_0.e, func_1(vec3<u32>(4294967295u, 87756u, 0u), Struct_1(var_0.a, 1i, var_0.c, var_0.d, 43243u), u_input.a)).d, 1u), var_0.e, Struct_1(func_4(Struct_1(vec3<i32>(u_input.a, 21666i, -30300i), u_input.a, false, vec3<bool>(true, var_0.c, var_0.c), 46800u), func_2().e, Struct_1(var_0.a, -30907i, true, var_0.d, 0u)).a, -1i, !all(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x)), func_2().d, var_0.e)), ~(-15278i));
    let var_2 = ~(~reverseBits(vec2<u32>(~var_0.e, var_0.e)));
    var var_3 = firstLeadingBit(~u_input.a);
    let var_4 = select(func_4(Struct_1(countOneBits(firstLeadingBit(var_0.a)), -2147483647i, !var_0.d.x, select(!vec3<bool>(var_0.c, true, false), !var_0.d, var_0.c), ~1u), var_0.e, Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(12412i, u_input.a, -3709i), vec3<i32>(3896i, var_0.b, 24482i)), countOneBits(var_0.a)), -var_0.a.x, func_1(countOneBits(vec3<u32>(67093u, var_0.e, 1u)), Struct_1(var_0.a, var_0.b, true, vec3<bool>(true, var_0.c, false), var_0.e), -12587i).c, !vec3<bool>(var_0.c, var_0.c, var_0.d.x), var_2.x)).d.yz, func_1(vec3<u32>(~var_0.e, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16412u, 119229u, var_2.x, 55335u), vec4<u32>(6121u, var_2.x, var_2.x, var_2.x)), 1u), _wgslsmith_mod_u32(21871u, func_4(Struct_1(var_0.a, -9796i, var_0.c, vec3<bool>(true, true, true), 4294967295u), var_0.e, Struct_1(vec3<i32>(-2147483647i, 1i, 23708i), -1i, var_0.d.x, vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), var_0.e)).e)), Struct_1(_wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, u_input.a, var_0.b)) >> (vec3<u32>(var_2.x, 4294967295u, var_0.e) % vec3<u32>(32u)), -max(var_0.a.x, var_0.b), true, func_2().d, abs(~4294967295u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -28599i, 1463i, 2147483647i) & _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -30497i, var_0.a.x, u_input.a), vec4<i32>(u_input.a, -58684i, -22949i, 2147483647i)), vec4<i32>(49586i >> (var_0.e % 32u), select(-39683i, var_0.a.x, var_0.c), reverseBits(u_input.a), ~33617i))).d.yz, vec2<bool>(all(vec3<bool>(true, var_0.d.x, -74187i <= var_0.a.x)), func_4(Struct_1(vec3<i32>(u_input.a, u_input.a, 0i), 30203i, true, !var_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, var_0.e, 1u), vec3<u32>(var_2.x, 0u, var_2.x))), ~(~var_2.x), func_4(Struct_1(var_0.a, -62623i, var_0.c, var_0.d, 1u), 19791u, Struct_1(var_0.a, u_input.a, var_0.c, var_0.d, 46179u))).c));
    var var_5 = ~(~min(var_2.x, _wgslsmith_mult_u32(17834u, var_2.x) << (firstTrailingBit(39367u) % 32u)));
    let var_6 = var_0.d.x;
    var var_7 = ~var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1661f, 1201f)), -498f)))), -697f, firstLeadingBit(~vec3<u32>(70321u << (var_0.e % 32u), ~var_2.x, var_0.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1053f, 2046f, -894f, 1048f) - vec4<f32>(-843f, -256f, -541f, -375f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1459f, 743f, -1838f, -967f) - vec4<f32>(914f, -962f, 1498f, -1310f)))))));
}

