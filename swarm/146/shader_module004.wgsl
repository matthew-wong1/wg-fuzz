struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), true), select(vec3<bool>(true, false, all(vec4<bool>(true, true, false, false)) || false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec4<bool>(true, true, true, true))), true), select(vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), (u_input.c <= -42954i) & true), vec3<bool>(true, true, true), vec3<bool>(true, select(false, true, any(vec4<bool>(true, false, false, true))), true)));
    var var_1 = Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 2147483647i) ^ _wgslsmith_add_vec2_i32(u_input.a.zx, vec2<i32>(u_input.a.x, 15086i)), abs(u_input.a.zz)), vec4<i32>(u_input.d, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(u_input.a.zz, u_input.a.zy)), vec2<i32>(i32(-1i) * -1i, 1i)), 1i, 1i ^ u_input.d), countOneBits(28230u));
    var_1 = Struct_2(-31237i, -vec4<i32>(var_1.b.x, -25166i, i32(-1i) * -var_1.a, 2147483647i), 1u);
    var var_2 = Struct_2(-(~min(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(16865i, u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.a, u_input.e), vec3<i32>(var_1.b.x, -1i, u_input.e)))), _wgslsmith_div_vec4_i32(var_1.b, vec4<i32>(u_input.d, 1i, (2661i & u_input.d) ^ ~var_1.b.x, -1i)), ~_wgslsmith_clamp_u32(var_1.c << (_wgslsmith_sub_u32(12799u, var_1.c) % 32u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(59307u, var_1.c, var_1.c, 0u), vec4<u32>(var_1.c, 28442u, 0u, var_1.c))), 66697u));
    let var_3 = vec4<bool>(!any(!select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, true, false, false), vec4<bool>(true, false, false, false))), all(!vec3<bool>(false, false && var_0.x, select(var_0.x, var_0.x, false))), var_0.x, !(!(!var_0.x)));
    return !(!var_0.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = func_3();
    var var_1 = Struct_2(arg_1.c.x, -vec4<i32>(firstLeadingBit(~(-4435i)), u_input.e ^ (i32(-1i) * -5956i), -u_input.a.x, -14790i), ~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(51838u, arg_1.b, arg_0.b.x), ~vec3<u32>(0u, arg_1.b, 1u))));
    global0 = max(~(-2147483647i | firstTrailingBit(8158i ^ u_input.d)), u_input.e);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1780f + 1402f)) - 1886f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-689f, arg_1.a)) - _wgslsmith_f_op_f32(min(arg_1.a, arg_1.a)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, -957f, var_2.x, 1326f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1071f, var_2.x, var_2.x, arg_1.a))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-282f, arg_1.a, 1000f, arg_1.a), vec4<f32>(var_2.x, -1013f, arg_1.a, arg_1.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -723f, 945f, -364f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a, -357f, arg_1.a, -1353f)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -128f, _wgslsmith_div_f32(var_2.x, -1423f), -411f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1109f - -408f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -222f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), -712f, -1362f));
    return _wgslsmith_mod_vec2_u32(vec2<u32>(abs(~68517u), 0u), vec2<u32>(firstLeadingBit(var_1.c), ~49213u));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2.a.x;
    let var_1 = arg_2.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-178f, -603f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(695f, 241f)) * -1068f)))), 71810u, u_input.a);
    var_0 = ~_wgslsmith_sub_u32(1u, var_1) >> ((arg_2.b.x | _wgslsmith_add_u32(18775u, _wgslsmith_clamp_u32(~arg_2.b.x, ~4294967295u, ~0u))) % 32u);
    let var_3 = Struct_2(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.c, -1i)), ~u_input.a.zx), ~vec4<i32>(~0i, 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_2.c.xz, vec2<i32>(2147483647i, u_input.b)), -45431i), -1i), 1u);
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> vec3<f32> {
    global0 = _wgslsmith_sub_i32(countOneBits(-15278i), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.a, 8211i, -2147483647i), ~arg_0.b), arg_0.a ^ -u_input.a.x));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-894f - _wgslsmith_f_op_f32(-719f * -1930f)) - _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-1976f * 615f)))), _wgslsmith_f_op_f32(ceil(1833f)))), ~arg_0.c << ((1u >> (_wgslsmith_sub_u32(arg_0.c, ~0u) % 32u)) % 32u), abs(arg_0.b.yyy));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-481f, var_0.a) * 1656f))) + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(select(-946f, _wgslsmith_f_op_f32(select(var_0.a, var_0.a, false)), arg_1)))), !select(!(var_0.b == var_0.b), true, arg_1)));
    global0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.b.xx | arg_0.b.wz, vec2<i32>(u_input.c, -25862i)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -62980i), vec2<i32>(-69840i, 2147483647i))), u_input.a.yz);
    var var_2 = _wgslsmith_mult_vec4_u32(firstLeadingBit(~(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 43537u, arg_0.c), vec4<u32>(var_0.b, var_0.b, arg_0.c, arg_0.c)) << (~vec4<u32>(22906u, var_0.b, 0u, arg_0.c) % vec4<u32>(32u)))), abs(vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.c), vec2<u32>(arg_0.c, 0u))), ~arg_0.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b, 4294967295u, arg_0.c, 36303u), vec4<u32>(arg_0.c, arg_0.c, 54530u, arg_0.c)), 1u)));
    return vec3<f32>(_wgslsmith_f_op_f32(-1183f * _wgslsmith_f_op_f32(-1688f + _wgslsmith_f_op_f32(763f * _wgslsmith_f_op_f32(round(var_0.a))))), _wgslsmith_f_op_f32(step(586f, 617f)), var_1);
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = !(!select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(arg_3.b.x >= 0u, func_3(), arg_3.a.x > arg_2, true), vec4<bool>(true, true, true, true)));
    let var_1 = arg_0.x;
    let var_2 = arg_3;
    var var_3 = !var_0.xxy;
    var var_4 = func_4(!var_0.x, select(vec3<bool>(false, true, (i32(-1i) * -8705i) <= u_input.d), var_0.xyy, !any(var_0) || any(select(vec4<bool>(false, var_3.x, var_3.x, var_0.x), var_0, var_0.x))), Struct_3(~var_2.b, ~arg_3.b));
    return Struct_1(arg_0.x, _wgslsmith_add_u32(arg_1.c, 4370u), min(vec3<i32>(-(~46629i), firstTrailingBit(_wgslsmith_clamp_i32(var_4.a, u_input.a.x, -11901i)), 2147483647i), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, firstTrailingBit(u_input.a)), -var_4.b.zyx)));
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-151f, 1560f))), -2765f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1092f)), _wgslsmith_f_op_f32(f32(-1f) * -784f)), 457f))));
    var var_1 = 4294967295u;
    var var_2 = func_6(_wgslsmith_f_op_vec3_f32(func_5(func_4(true, select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), Struct_3(func_2(Struct_3(vec2<u32>(0u, 11953u), vec2<u32>(4294967295u, 92017u)), Struct_1(var_0.x, 0u, vec3<i32>(1i, u_input.d, arg_0.x))), ~vec2<u32>(4294967295u, 38556u))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))))), func_4(!all(vec2<bool>(true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(31801u, 13005u), vec2<u32>(1u, 1u)), func_2(Struct_3(vec2<u32>(74182u, 73414u), vec2<u32>(1u, 3011u)), Struct_1(-1710f, 16098u, vec3<i32>(u_input.d, u_input.a.x, -2147483647i))))), ~67135u, Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), min(vec2<u32>(1u, 1u), max(vec2<u32>(5467u, 51786u), vec2<u32>(4294967295u, 4294967295u)))), ~abs(vec2<u32>(1u, 18460u))));
    var_1 = 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(~var_2.b, var_2.b), vec2<u32>(46054u & select(var_2.b, var_2.b, false), ~0u));
    let var_3 = Struct_1(1587f, _wgslsmith_sub_u32(var_2.b ^ var_2.b, _wgslsmith_mod_u32(~(~var_2.b), var_2.b)), -vec3<i32>(20186i, func_4(false, vec3<bool>(false, false, false), Struct_3(vec2<u32>(1u, 25205u), vec2<u32>(var_2.b, var_2.b))).a, firstTrailingBit(~(-6593i))));
    return vec2<u32>(abs(~var_2.b), ~(~_wgslsmith_sub_u32(1u, var_2.b)) | ~_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(var_2.b, var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(-u_input.d);
    global0 = ((_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 43965i, u_input.c, 2147483647i), vec4<i32>(u_input.d, u_input.d, -2076i, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.d, 1i), vec4<i32>(u_input.b, u_input.e, 0i, u_input.d))) & firstTrailingBit(_wgslsmith_mod_i32(u_input.e, u_input.a.x))) >> (31646u % 32u)) >> (1u % 32u);
    let var_0 = abs(max(func_1(u_input.a.zx), func_1(-u_input.a.xz ^ u_input.a.yx)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-551f, 1450f), _wgslsmith_f_op_f32(round(-1032f)), _wgslsmith_div_f32(-266f, -141f), 584f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1196f, -915f, -1000f, 1666f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(896f, 1000f), _wgslsmith_div_f32(1000f, -498f), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(670f * 625f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(523f, -1059f, -1596f, -140f) * vec4<f32>(-200f, -1951f, -959f, 617f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, 367f, 614f, -408f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1129f, -1287f, -216f, -137f)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true))))))));
    var var_2 = all(vec3<bool>(false, (-225f == var_1.x) || (_wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(abs(var_1.x))), func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, abs(-u_input.a.xx | _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(u_input.c, u_input.e)), -vec2<i32>(u_input.a.x, 49317i))), var_0.x, -abs(vec2<i32>(3841i & u_input.a.x, _wgslsmith_clamp_i32(2147483647i, -1i, 16263i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.zzw) * vec3<f32>(-406f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-120f, var_1.x)) * _wgslsmith_div_f32(668f, var_1.x)))));
}

