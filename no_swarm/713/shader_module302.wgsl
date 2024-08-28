struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<f32>) -> bool {
    var var_0 = !vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)) & all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), true, true, all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))));
    let var_1 = Struct_1(select(var_0.wzz, select(select(!var_0.www, select(var_0.xzy, vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x)), true), var_0.wwy, var_0.xzz), true), var_0.x, max(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, arg_1, u_input.a), select(vec4<i32>(14203i, arg_1, arg_1, 2147483647i), vec4<i32>(arg_1, arg_1, arg_1, 2147483647i), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<i32>(u_input.d, -1i, arg_1, u_input.a) & vec4<i32>(-2147483647i, -2147483647i, u_input.d, 11750i)), abs(vec4<i32>(-1i, 40784i, 1i, arg_1)) >> (~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u)), select(vec4<bool>(false, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x)), vec4<bool>(false, var_0.x, var_0.x, true))), vec4<i32>(arg_1, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 9332i, arg_1, -30252i), vec4<i32>(35127i, u_input.c.x, -28987i, u_input.e)) >> (1u % 32u), -1i)));
    var var_2 = var_1;
    var_2 = Struct_1(!var_0.zww, all(vec2<bool>(!(-19075i <= var_1.c.x), all(vec4<bool>(true, true, true, true)))), _wgslsmith_add_vec4_i32(vec4<i32>(~(-15687i), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -65070i, var_2.c.x, -1i), var_2.c), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, u_input.c.x, var_2.c.x), arg_1 << (84549u % 32u)), -40671i), var_2.c));
    var_2 = var_1;
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.b, false, false, arg_1.a.x), vec4<bool>(false, true, false, false), vec4<bool>(arg_1.a.x, true, true, true)), select(vec4<bool>(arg_1.a.x, true, false, false), vec4<bool>(arg_3.a.x, arg_3.a.x, arg_1.b, arg_3.a.x), vec4<bool>(true, arg_3.b, false, false)))));
    var var_1 = vec4<bool>(func_3(arg_2.xz, ~0i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) + 415f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x + 1115f), _wgslsmith_f_op_f32(1998f - arg_2.x))), arg_2.x)), arg_0.a.x, all(!select(!vec2<bool>(arg_3.a.x, false), select(arg_0.a.xz, arg_0.a.yz, true), arg_0.a.x)), (_wgslsmith_div_u32(firstTrailingBit(1u), ~68356u) <= 1u) | true);
    var_1 = vec4<bool>(!all(vec2<bool>(!var_0.x, arg_3.b && var_1.x)), true, 1338f > _wgslsmith_f_op_f32(-arg_2.x), !(!(arg_3.c.x <= ~1i)));
    var var_2 = _wgslsmith_sub_i32(reverseBits(~arg_1.c.x), min(abs(-2147483647i), -(~(-1i))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-564f * 114f)), _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_div_f32(-310f, 1246f), !(!var_0.x))));
    return ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(min(arg_3.c.xy, vec2<i32>(u_input.c.x, arg_0.c.x)), arg_1.c.wz)), arg_3.c.x);
}

fn func_4(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(false, true != any(vec3<bool>(true, true, false)), !(_wgslsmith_mod_i32(18603i, arg_0) > arg_0)), false, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.c, vec2<i32>(-2147483647i, -10054i)), -19187i, _wgslsmith_sub_i32(abs(-14215i), 1i << (1u % 32u)), min(-arg_0, 0i)), -abs(firstLeadingBit(vec4<i32>(-31931i, arg_0, 15153i, u_input.c.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-645f, 205f), vec2<f32>(-1080f, 585f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-757f, -1750f), vec2<f32>(-1208f, -1000f), vec2<bool>(var_0.b, var_0.b))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-291f, -1000f) + vec2<f32>(-243f, 965f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-803f, 357f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1409f, 330f))), var_0.a.x))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(-1012f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1546f)))), var_0.a.xy));
    let var_2 = -(_wgslsmith_add_i32(arg_0, ~(-2147483647i | var_0.c.x)) & -225i);
    let var_3 = 1u;
    let var_4 = Struct_1(var_0.a, select(true, var_0.b, 1i < _wgslsmith_dot_vec2_i32(abs(u_input.c), -vec2<i32>(0i, u_input.a))), -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(36078i, 0i, 0i, -10870i), var_0.c), ~var_0.c), -var_0.c));
    return Struct_1(select(vec3<bool>(select(true, var_0.b, var_0.b), var_4.a.x, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1417f, -894f) * vec2<f32>(1000f, var_1.x)), u_input.c.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 1931f, var_1.x))))), var_4.a, select(select(select(vec3<bool>(true, var_0.b, var_0.a.x), var_0.a, false), !var_0.a, var_1.x >= var_1.x), select(!var_4.a, vec3<bool>(true, var_4.a.x, false), 1u != var_3), !vec3<bool>(true, var_4.b, var_0.b))), func_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(var_1.x, -768f), _wgslsmith_f_op_f32(exp2(var_1.x))))), ~(~firstLeadingBit(var_4.c.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(135f, 1507f, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 1350f) + vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 192f, -477f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(-922f, -1000f, 201f))))))), abs(var_0.c << (~vec4<u32>(4294967295u, var_3, var_3, var_3) % vec4<u32>(32u))) >> (~(~_wgslsmith_add_vec4_u32(vec4<u32>(46112u, 0u, var_3, 15295u), vec4<u32>(var_3, 48518u, var_3, 4294967295u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    var var_0 = min(_wgslsmith_mod_vec4_u32(vec4<u32>(13605u, 8235u, abs(~21617u), ~(~95150u)), ~countOneBits(firstLeadingBit(vec4<u32>(14435u, 50303u, 48435u, 25111u)))), select(vec4<u32>(66562u, 1u, firstLeadingBit(1u), 4294967295u << (0u % 32u)), vec4<u32>(~_wgslsmith_add_u32(1u, 32909u), 1u, 10794u, 1u), !(firstTrailingBit(arg_0.c.x) == _wgslsmith_sub_i32(arg_3.c.x, arg_2.x))));
    let var_1 = var_0.xx;
    var var_2 = Struct_1(!select(select(arg_0.a, arg_3.a, all(vec4<bool>(arg_0.b, arg_3.b, arg_1, arg_3.b))), !func_4(arg_3.c.x).a, !arg_0.a), arg_3.a.x, _wgslsmith_div_vec4_i32(~vec4<i32>(~arg_3.c.x, ~u_input.d, u_input.c.x, _wgslsmith_mult_i32(-53826i, arg_0.c.x)), arg_3.c));
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~14099u, ~0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(52212u, 50478u, var_0.x, var_0.x), vec4<u32>(104408u, 33515u, 37641u, 4294967295u)) & firstTrailingBit(1u), _wgslsmith_div_u32(~var_0.x, 51127u), 88606u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1.x, var_0.x), ~25832u, reverseBits(var_1.x)), _wgslsmith_clamp_u32(var_1.x | 0u, var_1.x, reverseBits(0u)), var_1.x), vec4<u32>(0u, max(abs(var_0.x), max(44812u, 38982u)), ~(~30859u), var_0.x)));
    let var_3 = Struct_1(arg_0.a, arg_3.b, ~((~arg_0.c | vec4<i32>(var_2.c.x, arg_0.c.x, arg_2.x, -9576i)) >> (vec4<u32>(var_0.x, 22584u, select(var_1.x, var_1.x, true), ~9887u) % vec4<u32>(32u))));
    return !(!(!(_wgslsmith_dot_vec4_i32(var_3.c, vec4<i32>(arg_2.x, arg_2.x, -2147483647i, 10587i)) < _wgslsmith_sub_i32(-1i, arg_0.c.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(!select(select(select(arg_0.a, vec3<bool>(arg_0.b, arg_0.b, arg_0.b), arg_0.a.x), !vec3<bool>(arg_0.b, false, true), select(vec3<bool>(arg_0.b, arg_0.b, arg_0.a.x), vec3<bool>(arg_0.a.x, true, true), true)), arg_0.a, -u_input.c.x < _wgslsmith_add_i32(arg_0.c.x, -1i)), func_5(arg_0, !(true || !arg_0.b), u_input.c | firstTrailingBit(abs(vec2<i32>(3050i, arg_0.c.x))), func_4(func_2(Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, true), false, arg_0.c), arg_0, arg_1, arg_0) & -u_input.b)), arg_0.c);
    let var_1 = 586f;
    return select(!(!select(vec4<bool>(false, false, var_0.b, true), select(vec4<bool>(false, false, false, var_0.b), vec4<bool>(var_0.b, true, false, arg_0.b), true), !vec4<bool>(arg_0.a.x, var_0.a.x, arg_0.a.x, false))), vec4<bool>(true, true, false, false), var_1 != _wgslsmith_f_op_f32(-arg_1.x));
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<i32>) -> i32 {
    var var_0 = func_4(_wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, arg_3.x), vec3<i32>(4353i, -38721i, u_input.b)) | u_input.c.x, arg_3.x));
    var_0 = Struct_1(var_0.a, var_0.a.x, ~max(var_0.c, vec4<i32>(9882i, var_0.c.x, -1698i, abs(-1i))));
    var_0 = Struct_1(!var_0.a, any(vec3<bool>(true, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(825f, -1905f), vec2<f32>(-505f, 376f)), ~(-1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, -908f, -1436f) - vec3<f32>(1000f, -227f, -338f))), arg_0)), ~arg_3);
    let var_1 = _wgslsmith_add_u32(arg_1.x, abs(arg_2) & arg_2);
    var_0 = func_4(-u_input.a);
    return _wgslsmith_dot_vec2_i32(-(~(-firstTrailingBit(var_0.c.yw))), vec2<i32>(_wgslsmith_div_i32(var_0.c.x, min(u_input.c.x, -2147483647i)), 8875i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<i32>(-firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -43622i, u_input.b, u_input.c.x), vec4<i32>(u_input.e, 1i, -1i, -2147483647i))), func_6(all(func_1(Struct_1(vec3<bool>(false, true, true), false, vec4<i32>(35898i, 2147483647i, 2147483647i, -27792i)), vec3<f32>(-1000f, -1974f, -1693f))), vec4<u32>(1u, 1u, _wgslsmith_sub_u32(20017u, 1u), 1u), ~1u, vec4<i32>(u_input.b, 17752i, u_input.a, 11627i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), max(_wgslsmith_div_i32(firstLeadingBit(u_input.d), ~u_input.a), -abs(1i))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f)), _wgslsmith_f_op_f32(ceil(109f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2091f)), -1664f)));
    let var_2 = Struct_1(select(func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), select(vec2<i32>(u_input.a, u_input.e), u_input.c, vec2<bool>(false, true)))).a, vec3<bool>(var_0.x == _wgslsmith_div_i32(u_input.c.x, u_input.b), all(vec3<bool>(true, true, true)), true || any(vec4<bool>(false, true, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(any(vec4<bool>(false, true, true, false)), true, false))), select(any(vec4<bool>(var_0.x < var_0.x, true, true, all(vec2<bool>(true, false)))), all(!func_1(Struct_1(vec3<bool>(false, false, false), true, vec4<i32>(-55269i, 7931i, u_input.a, 29606i)), vec3<f32>(-670f, -247f, -399f)).xyx), all(vec2<bool>(any(vec3<bool>(false, true, false)), all(vec3<bool>(true, false, true))))), vec4<i32>(var_0.x, 0i, -func_4(var_0.x ^ u_input.d).c.x, ~var_0.x));
    var var_3 = func_4(-(~u_input.d & u_input.b));
    var_3 = var_2;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, var_3.c.x) ^ ~2064i, 96204i, min(_wgslsmith_sub_i32(u_input.b, 1i), _wgslsmith_clamp_i32(u_input.a, var_3.c.x, var_0.x))), _wgslsmith_mult_i32(-1i, ~35889i), var_0.x >> (~(~67047u) % 32u)), (-_wgslsmith_mult_i32(2910i, var_2.c.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(532u, 0u, 0u), ~vec3<u32>(1u, 4294967295u, 19353u)) % 32u)) | firstTrailingBit(~_wgslsmith_dot_vec4_i32(var_3.c, var_2.c)), _wgslsmith_add_vec3_i32(~vec3<i32>(reverseBits(-70161i), 2147483647i, 4038i), var_3.c.xxw), (abs(~var_3.c.x) << (max(0u, 1u) % 32u)) & func_2(Struct_1(var_3.a, true, -vec4<i32>(-1i, var_0.x, var_2.c.x, 24434i)), var_2, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-947f, 218f, -200f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1799f, 359f, 914f)), var_2.a)), func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -87668i), var_0.xz))));
}

