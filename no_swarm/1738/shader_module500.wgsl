struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(201f, -967f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-284f))), _wgslsmith_f_op_f32(min(-1220f, _wgslsmith_f_op_f32(sign(-237f))))))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)), -1227f))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~abs(1i), ~countOneBits(var_1), ~(u_input.a >> (33399u % 32u))), vec3<i32>(u_input.a & (u_input.a >> (0u % 32u)), var_1, 0i)), select(select(firstTrailingBit(vec3<i32>(var_1, -10975i, -24106i)) | abs(vec3<i32>(var_1, -1i, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-37730i, 1934i, u_input.a) ^ vec3<i32>(var_1, -28330i, 22704i), ~vec3<i32>(u_input.a, u_input.a, var_1)), true), select(firstLeadingBit(~vec3<i32>(10557i, -2147483647i, var_1)), vec3<i32>(-9347i, ~u_input.a, ~(-1i)), vec3<bool>(true, true, true)), all(vec2<bool>(all(vec4<bool>(true, false, false, false)), select(true, true, true)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, var_0.x)))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + -922f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1000f + 757f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(ceil(-1000f))), var_0.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(641f, -940f), vec2<f32>(875f, -1238f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-226f, var_0.x))))), vec2<f32>(var_0.x, 231f)));
    return var_1;
}

fn func_2() -> u32 {
    var var_0 = vec3<i32>(-1i, (_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, -1i), _wgslsmith_mult_i32(30575i, u_input.a)) ^ 14240i) >> (~(~0u) % 32u), -func_3());
    var_0 = _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_div_i32(var_0.x, 2147483647i & u_input.a), ~_wgslsmith_sub_i32(71093i, u_input.a), var_0.x)), ~(~firstLeadingBit(vec3<i32>(0i, 46546i, 26866i)) >> (select(~vec3<u32>(79362u, 30407u, 0u), vec3<u32>(69361u, 13048u, 1u), vec3<bool>(true, false, false)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, _wgslsmith_div_i32(var_0.x, var_0.x)), ~firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -51797i))), 3595i, -(23665i ^ u_input.a)));
    let var_1 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1137f))))), vec4<f32>(-271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2238f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -557f), -544f, all(vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1638f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(149f, 865f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)))), all(vec2<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))), any(vec3<bool>(!any(vec2<bool>(true, true)), all(vec4<bool>(true, false, true, false)), !any(vec3<bool>(false, false, false)))));
    var_0 = min(reverseBits(~abs(firstTrailingBit(vec3<i32>(u_input.a, -1i, u_input.a)))), vec3<i32>(-u_input.a, _wgslsmith_mod_i32(~(-22380i >> (0u % 32u)), -(-1i | u_input.a)), ~(~0i)));
    var var_2 = 61631u;
    return ~min(firstLeadingBit(1u), ~(~1u));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5) -> Struct_3 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 4720i, arg_1.a.a, arg_1.a.a), vec4<i32>(-401i, u_input.a, 13584i, -35925i))), _wgslsmith_clamp_i32(arg_1.a.a, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(arg_1.a.a, -2147483647i)), arg_1.a.a), u_input.a, ~u_input.a) ^ vec4<i32>(-42932i, -2147483647i, 1i, -37141i);
    let var_1 = arg_1.b;
    let var_2 = arg_1.a;
    var var_3 = vec2<u32>(~arg_0.x << (~(~arg_0.x) % 32u), ~(~arg_1.c));
    var_3 = _wgslsmith_sub_vec2_u32(arg_0.xw, countOneBits(reverseBits(vec2<u32>(var_3.x, 1u)) & vec2<u32>(var_3.x, 4294967295u)) | ~_wgslsmith_div_vec2_u32(vec2<u32>(4385u, var_3.x), abs(arg_0.yx)));
    return Struct_3(!select(select(!vec4<bool>(false, false, arg_1.a.e, true), !vec4<bool>(true, var_2.d, var_2.d, false), select(vec4<bool>(false, var_2.d, var_2.d, var_2.d), vec4<bool>(var_2.e, arg_1.a.e, var_1.x, false), vec4<bool>(var_1.x, arg_1.a.d, var_1.x, true))), vec4<bool>(var_2.d, select(arg_1.b.x, var_1.x, false), true, 2147483647i != u_input.a), var_1.x), var_2.d, Struct_2(var_2), arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = func_4(countOneBits(~abs(arg_0.d)) | _wgslsmith_sub_vec4_u32(select(arg_0.d, vec4<u32>(arg_0.d.x, arg_0.d.x, 14670u, arg_0.d.x), true), vec4<u32>(arg_0.d.x, arg_0.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, arg_0.d.x), vec2<u32>(58070u, 0u)), 1u)), Struct_5(func_4(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d.x, 24848u, 4294967295u, 1u), arg_0.d, vec4<u32>(arg_0.d.x, 4294967295u, arg_0.d.x, 4294967295u)), arg_0.d, true), Struct_5(func_4(arg_0.d, Struct_5(arg_0.c.a, vec2<bool>(true, arg_0.a.x), arg_0.d.x, arg_0.c.a.b)).c.a, vec2<bool>(arg_0.a.x, arg_0.a.x), 24212u, _wgslsmith_f_op_f32(1069f * -972f))).c.a, func_4(arg_0.d, Struct_5(func_4(arg_0.d, Struct_5(Struct_1(19881i, 710f, arg_1, arg_0.c.a.e, arg_0.c.a.d), arg_0.a.yy, arg_0.d.x, arg_1.x)).c.a, !arg_0.a.yw, _wgslsmith_mod_u32(25140u, 40650u), arg_1.x)).a.xx, 82541u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(741f, _wgslsmith_f_op_f32(trunc(-353f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), any(select(vec4<bool>(arg_0.b, true, true, arg_0.b), vec4<bool>(true, arg_0.a.x, true, false), arg_0.a.x)))))).a;
    var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(func_4(reverseBits(vec4<u32>(select(81311u, arg_0.d.x, var_0.x), select(arg_0.d.x, arg_0.d.x, var_0.x), ~0u, 4294967295u)), Struct_5(func_4(select(arg_0.d, arg_0.d, vec4<bool>(var_0.x, false, true, false)), Struct_5(arg_0.c.a, var_0.wx, arg_0.d.x, -750f)).c.a, var_0.xx, ~(~29047u), _wgslsmith_f_op_f32(2764f * _wgslsmith_div_f32(1000f, -1260f)))).c.a.c.ywx, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))), arg_0.c.a.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.c.a.c.x, _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_f32(trunc(1f)))))));
    let var_2 = ~(_wgslsmith_add_i32(func_4(vec4<u32>(25937u, arg_0.d.x, arg_0.d.x, arg_0.d.x), Struct_5(Struct_1(u_input.a, -2705f, arg_0.c.a.c, false, false), var_0.zz, arg_0.d.x, arg_0.c.a.b)).c.a.a >> (_wgslsmith_dot_vec4_u32(arg_0.d, arg_0.d) % 32u), 47102i) ^ u_input.a);
    let var_3 = select(!var_0.zx, func_4(select(_wgslsmith_mult_vec4_u32(abs(arg_0.d), _wgslsmith_div_vec4_u32(arg_0.d, arg_0.d)), vec4<u32>(78637u << (arg_0.d.x % 32u), max(arg_0.d.x, 1u), arg_0.d.x, arg_0.d.x), select(true, !var_0.x, false)), Struct_5(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-50307i, arg_2.x, arg_0.c.a.a, arg_0.c.a.a), vec4<i32>(-13083i, arg_0.c.a.a, -1i, 2147483647i)), -370f, arg_0.c.a.c, var_0.x, true), vec2<bool>(var_0.x, any(var_0.zw)), arg_0.d.x, var_1.x)).a.yx, all(var_0.ywy));
    return _wgslsmith_dot_vec4_u32(arg_0.d << (vec4<u32>(firstTrailingBit(arg_0.d.x), arg_0.d.x, 1u, 88360u) % vec4<u32>(32u)), firstTrailingBit(arg_0.d));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = 27113u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(380f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1840f))))));
    var var_2 = var_0;
    var_2 = func_5(func_4(vec4<u32>(~func_2(), _wgslsmith_sub_u32(var_0, var_0), func_2(), 16710u), Struct_5(Struct_1(u_input.a, _wgslsmith_f_op_f32(max(966f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, -516f, 179f, 1102f)), select(arg_2, arg_0, true), false), select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(true, arg_0)), !vec2<bool>(false, arg_0), all(vec3<bool>(false, false, true))), 0u, 1000f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1764f, -189f)) - _wgslsmith_f_op_f32(trunc(-561f))), func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, var_0, 4294967295u, 0u), vec4<u32>(var_0, 22677u, var_0, 96630u)), Struct_5(Struct_1(-21377i, 1841f, vec4<f32>(-760f, -1000f, -540f, -1000f), arg_2, arg_2), vec2<bool>(false, false), var_0, -1987f)).c.a.b, _wgslsmith_f_op_f32(-386f - _wgslsmith_div_f32(-724f, -881f)), _wgslsmith_f_op_f32(-1f)))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-14034i, -1392i >> (1u % 32u), max(0i, u_input.a)), vec3<i32>(0i, 0i << (1u % 32u), select(53490i, 38328i, false)))));
    var_2 = ~_wgslsmith_sub_u32(4294967295u, min(4294967295u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0, 29693u, var_0), ~35750u)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(468f - -1816f), -1404f))), Struct_3(func_4(vec4<u32>(~4294967295u, ~6442u, 26421u, func_5(Struct_3(vec4<bool>(false, false, arg_2, arg_2), arg_0, Struct_2(Struct_1(1i, 250f, vec4<f32>(558f, 2208f, 573f, -273f), false, true)), vec4<u32>(var_0, 0u, var_0, 10122u)), vec4<f32>(-1000f, 136f, -859f, -1000f), vec3<i32>(arg_1, u_input.a, -19710i))), Struct_5(func_4(vec4<u32>(var_0, var_0, 1u, 4294967295u), Struct_5(Struct_1(21300i, 894f, vec4<f32>(-195f, 787f, -1000f, 642f), arg_0, arg_2), vec2<bool>(arg_2, arg_0), var_0, -237f)).c.a, vec2<bool>(true, true), ~var_0, -792f)).a, (arg_3.x | _wgslsmith_div_i32(u_input.a, arg_1)) < _wgslsmith_div_i32(select(arg_3.x, arg_3.x, arg_0), -25361i), Struct_2(Struct_1(reverseBits(1i), _wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(104f, -1038f, 269f, 353f))), !arg_2, true)), countOneBits(~max(vec4<u32>(59436u, 1u, 47329u, var_0), vec4<u32>(1u, var_0, var_0, var_0)))));
}

fn func_6(arg_0: Struct_4) -> u32 {
    let var_0 = firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(u_input.a, -arg_0.b.c.a.a), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-34127i, arg_0.b.c.a.a)), -vec2<i32>(0i, arg_0.b.c.a.a))), ~max(vec2<i32>(arg_0.b.c.a.a, -59858i), select(vec2<i32>(u_input.a, 29167i), vec2<i32>(2147483647i, u_input.a), false))));
    var var_1 = arg_0;
    var_1 = arg_0;
    var_1 = func_1(false, arg_0.b.c.a.a, func_5(Struct_3(select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.b.b, false, arg_0.b.b, var_1.b.c.a.d), false), true, func_4(var_1.b.d, Struct_5(Struct_1(var_1.b.c.a.a, 1020f, var_1.b.c.a.c, true, false), vec2<bool>(arg_0.b.b, arg_0.b.a.x), 4294967295u, arg_0.a)).c, arg_0.b.d | arg_0.b.d), vec4<f32>(-334f, -1000f, 708f, _wgslsmith_f_op_f32(-arg_0.b.c.a.c.x)), firstTrailingBit(firstTrailingBit(vec3<i32>(var_0.x, arg_0.b.c.a.a, -5356i)))) == 34678u, ~reverseBits(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.c.a.a, u_input.a, -2239i), vec3<i32>(23998i, -2147483647i, arg_0.b.c.a.a), vec3<i32>(-1i, -23234i, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(19547i, var_1.b.c.a.a, 0i), vec3<i32>(var_1.b.c.a.a, -29575i, var_1.b.c.a.a), vec3<i32>(13792i, arg_0.b.c.a.a, -2147483647i)))));
    var_1 = Struct_4(228f, func_1(_wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(u_input.a, u_input.a), 2147483647i) < u_input.a, 1i, 1i <= ~var_1.b.c.a.a, _wgslsmith_add_vec3_i32(vec3<i32>(-36602i, -2147483647i, -11566i), vec3<i32>(18687i, -46118i, _wgslsmith_mod_i32(-1i, u_input.a)))).b);
    return abs(arg_0.b.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec4<bool>(true, true, -74015i > u_input.a, select(true, false, false))));
    let var_1 = ~vec4<u32>(abs(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(19897u, 41306u, 1u, 71798u), vec4<u32>(83231u, 1u, 19783u, 11626u)))), func_6(func_1(all(var_0.zy), _wgslsmith_sub_i32(u_input.a, u_input.a), false, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -39423i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)))), ~(~7270u), ~_wgslsmith_add_u32(~59030u, 17116u));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1015f * func_4(var_1, Struct_5(Struct_1(u_input.a, 1581f, vec4<f32>(-375f, 729f, 307f, 2642f), var_0.x, false), vec2<bool>(false, true), 9782u, 1857f)).c.a.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1103f, 1000f)) + 502f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-264f, 491f)), -423f))))));
    var var_3 = func_4(abs(_wgslsmith_mod_vec4_u32(~var_1, min(var_1 >> (vec4<u32>(49612u, 38139u, 6030u, var_1.x) % vec4<u32>(32u)), var_1 ^ var_1))), Struct_5(func_1(true, abs(countOneBits(-28794i)), !(var_0.x | var_0.x), _wgslsmith_mod_vec3_i32(~vec3<i32>(-46032i, 9359i, u_input.a), ~vec3<i32>(u_input.a, -49289i, 65925i))).b.c.a, vec2<bool>(true, var_0.x), func_6(func_1(var_0.x, select(u_input.a, 0i, var_0.x), var_0.x, vec3<i32>(u_input.a, 30919i, u_input.a) | vec3<i32>(u_input.a, u_input.a, 37619i))), -1425f));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1169f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(false, u_input.a, var_3.c.a.d, vec3<i32>(var_3.c.a.a, -27365i, 0i)).b.c.a.c.x)), _wgslsmith_f_op_f32(-var_3.c.a.b))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.x | var_3.d.x) ^ ~var_3.d.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.c.a.c.xzy), var_3.c.a.c.wzw), _wgslsmith_f_op_vec4_f32(ceil(var_3.c.a.c)), var_3.d.ywy & ((~vec3<u32>(27921u, var_3.d.x, 7267u) >> (var_3.d.wzw % vec3<u32>(32u))) ^ ~var_1.ywx), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.a.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_3.c.a.b, var_3.c.a.b, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2097f), var_3.c.a.c.x > var_3.c.a.c.x)), -151f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.c.a.c.xxz + var_3.c.a.c.zwx)), vec3<f32>(_wgslsmith_f_op_f32(step(-328f, var_3.c.a.b)), var_3.c.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1713f)))));
}

