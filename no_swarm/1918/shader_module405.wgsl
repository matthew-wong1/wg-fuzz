struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = arg_0.d;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(690f + -450f))))))), vec2<u32>(min(_wgslsmith_clamp_u32(arg_0.a, _wgslsmith_sub_u32(arg_0.b, 4988u), ~arg_1.a), 1u), abs(arg_0.c.x)), false | any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(var_1.a)), vec2<u32>(_wgslsmith_div_u32(~(~arg_0.c.x), ~_wgslsmith_sub_u32(var_1.b.x, u_input.d)), max(~firstLeadingBit(13284u), ~firstLeadingBit(0u))), true);
    var var_3 = Struct_2(min(1u, ~reverseBits(abs(var_1.b.x))), 42325u, firstLeadingBit(firstLeadingBit(vec2<u32>(1u, 1u))), firstLeadingBit(_wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(-4485i, -41937i), vec2<i32>(var_0.x, u_input.c.x)), vec2<i32>(12154i, 29712i), abs(vec2<i32>(2147483647i, var_0.x) ^ arg_0.d))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-986f - 205f), var_1.a)), var_2.b, var_1.c);
    return firstLeadingBit(_wgslsmith_mod_vec2_i32(firstLeadingBit(arg_0.d) << ((_wgslsmith_sub_vec2_u32(arg_0.c, var_1.b) ^ ~var_1.b) % vec2<u32>(32u)), vec2<i32>(-1i) * -(~vec2<i32>(0i, 11948i))));
}

fn func_2() -> vec3<bool> {
    let var_0 = min(u_input.c.x, u_input.c.x >> (select(~firstLeadingBit(9988u), u_input.d, !any(vec2<bool>(false, true))) % 32u));
    var var_1 = u_input.a.x << (_wgslsmith_div_u32(u_input.a.x & firstTrailingBit(~u_input.b.x), 69793u) % 32u);
    let var_2 = firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(40594i, -10695i) >> (u_input.b % vec2<u32>(32u)), func_3(Struct_2(1u, 4294967295u, u_input.a, vec2<i32>(var_0, var_0)), Struct_2(4294967295u, 7814u, u_input.b, vec2<i32>(u_input.c.x, var_0))))) ^ u_input.c.xw;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2113f, -1000f, -313f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-248f, 146f, -993f, 207f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1642f, -1994f, 1000f) * vec4<f32>(-1029f, 1624f, -153f, 2535f))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-907f, 1756f)))), -276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -733f))))));
    var_3 = vec4<f32>(-426f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f - -700f))), _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(select(-243f, _wgslsmith_f_op_f32(-var_3.x), ((u_input.a.x != 8760u) && true) != false)), 1022f);
    return !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), any(vec2<bool>(false, true)) & false));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_u32(arg_1.b, u_input.a), reverseBits(max(4294967295u, u_input.a.x)), vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(~u_input.a.x), ~arg_1.b.x), _wgslsmith_clamp_u32((85365u >> (arg_1.b.x % 32u)) >> (abs(0u) % 32u), 31177u, ~(~u_input.b.x))), abs(u_input.c.yy));
    let var_1 = all(func_2().yx);
    let var_2 = arg_3;
    let var_3 = vec2<bool>(var_2, !((!var_2 & false) & all(!vec2<bool>(arg_3, var_1))));
    var var_4 = var_0.c.x;
    return Struct_1(_wgslsmith_f_op_f32(-arg_2), u_input.a, true);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<f32>) -> u32 {
    let var_0 = select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u)) ^ u_input.b.x, max(~(0u >> (0u % 32u)), ~(~u_input.a.x))), ~(~_wgslsmith_clamp_vec2_u32(u_input.a, ~vec2<u32>(u_input.d, u_input.d), _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.a.x, 4294967295u)))), select(vec2<bool>(true, any(!vec4<bool>(true, arg_1, arg_1, arg_1))), !(!vec2<bool>(arg_1, arg_1)), !arg_1 == (true || arg_1)));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -2213f, 1000f) + vec4<f32>(arg_2.x, -1287f, arg_2.x, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(485f, -602f, -1000f, -809f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)) + vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-455f, arg_2.x, arg_2.x, 516f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -541f), vec4<f32>(arg_2.x, -1180f, arg_2.x, -295f)), vec4<f32>(arg_2.x, arg_2.x, -382f, -1131f), vec4<bool>(arg_1, false, arg_1, false)))))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(540f)))), (vec2<u32>(var_0.x, var_0.x) << (abs(var_0) % vec2<u32>(32u))) | _wgslsmith_add_vec2_u32(firstTrailingBit(u_input.a), var_0), arg_1 && (all(vec4<bool>(arg_1, true, false, arg_1)) | arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))))), any(select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, false)), func_2(), select(!vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(arg_1, true, false)))));
    var_1 = Struct_1(203f, ~(~func_4(vec4<f32>(var_1.a, var_1.a, 878f, -2381f), func_4(vec4<f32>(-602f, var_1.a, 353f, 166f), Struct_1(var_1.a, vec2<u32>(12342u, var_1.b.x), false), 1183f, false), arg_2.x, arg_1).b), !arg_1 && (_wgslsmith_f_op_f32(-var_1.a) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.a))))));
    var_1 = Struct_1(var_1.a, max(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_1.b.x), _wgslsmith_sub_vec2_u32(var_1.b, vec2<u32>(40179u, 37632u)))), select(~u_input.a, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, var_1.a, var_1.a, 1267f)), Struct_1(var_1.a, var_0, var_1.c), _wgslsmith_f_op_f32(max(var_1.a, -169f)), true).b, all(!vec3<bool>(false, var_1.c, false)))), arg_1);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1155f)));
    return 23032u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u & _wgslsmith_dot_vec2_u32(select(abs(~u_input.a), vec2<u32>(26981u, 4294967295u) | (vec2<u32>(u_input.d, u_input.b.x) ^ vec2<u32>(u_input.b.x, u_input.b.x)), true), u_input.a);
    var var_1 = var_0;
    var_1 = (var_0 >> (u_input.a.x % 32u)) >> (u_input.a.x % 32u);
    var_1 = (~(~(~var_0)) << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 86539u, u_input.d, var_0)), vec4<u32>(var_0, u_input.d, 13u, ~u_input.d)) % 32u)) & ~1u;
    var var_2 = select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, any(vec3<bool>(true, true, true)) || false, (_wgslsmith_sub_u32(u_input.d, 6837u) <= func_1(-24169i, true, vec2<f32>(214f, 1089f))) != (firstLeadingBit(u_input.c.x) < (u_input.c.x << (var_0 % 32u)))), true);
    var var_3 = select(!func_2().xx, func_2().zx, false);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2731f) * _wgslsmith_f_op_f32(347f - -536f)) - _wgslsmith_f_op_f32(min(-868f, _wgslsmith_f_op_f32(1000f * -1314f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1337f, -533f) - -367f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-690f + 339f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-358f - -426f) * _wgslsmith_f_op_f32(step(342f, 2017f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1669f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-532f - 1000f))))));
    var_1 = abs(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_4))), vec3<i32>(-46638i, 3324i, u_input.c.x >> (var_0 % 32u)));
}

