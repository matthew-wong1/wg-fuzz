struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(firstLeadingBit(~firstTrailingBit(vec3<u32>(u_input.a, 22499u, u_input.a))), all(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true))), u_input.b.wx, select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), true | (u_input.a >= u_input.a)), vec4<bool>(true, u_input.b.x < reverseBits(u_input.b.x), true, select(true, true, false) & true)));
    let var_1 = Struct_2(vec3<bool>(true, false && var_0.b, var_0.d.x), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, 788f, 146f, 699f)))))), Struct_1(~var_0.a, true, var_0.c, select(var_0.d, !vec4<bool>(var_0.b, true, var_0.d.x, false), var_0.d)), true);
    let var_2 = var_1.d;
    var var_3 = _wgslsmith_div_u32(countOneBits(var_2.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_2.a.yx, vec2<u32>(50407u, var_0.a.x)) & 16220u, ~18634u) >> (max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.a.x, var_0.a.x), var_0.a.yy) ^ min(4294967295u, var_2.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.d.a.x, 32464u, var_0.a.x, var_2.a.x), vec4<u32>(var_2.a.x, var_0.a.x, var_2.a.x, var_0.a.x) ^ vec4<u32>(20518u, var_2.a.x, var_1.d.a.x, var_2.a.x))) % 32u));
    var var_4 = select(select(select(!var_1.d.d.yw, select(select(vec2<bool>(var_1.d.b, var_1.a.x), var_1.d.d.wy, var_2.d.x), var_1.a.zx, !var_0.b), select(var_0.d.wz, vec2<bool>(true, var_2.d.x), select(vec2<bool>(var_1.e, true), vec2<bool>(true, true), var_2.d.x))), var_1.a.zz, vec2<bool>(false, var_2.b)), !vec2<bool>(-7014i >= ~u_input.b.x, !any(var_1.a.zx)), var_1.b.x == -(~(-var_1.d.c.x)));
    return firstTrailingBit(1i >> (countOneBits(0u) % 32u));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), func_3()), ~(u_input.b.x >> (u_input.a % 32u)), -u_input.b.x, -16089i));
    let var_1 = u_input.b.x > -1223i;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_dot_vec4_i32(-var_0, var_0);
    var var_4 = Struct_2(!(!vec3<bool>(var_1 || var_1, all(vec3<bool>(var_1, var_1, true)), any(vec2<bool>(true, true)))), -select(abs(vec4<i32>(1i, var_3, 0i, 2147483647i) << (vec4<u32>(u_input.a, 45065u, u_input.a, u_input.a) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(var_0.x, arg_0.x), arg_0.x, firstLeadingBit(35099i), -var_0.x), !select(vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, true, true, var_1))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(196f, 127f, -815f, -2222f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-444f, -213f, -213f, 939f)))))), Struct_1(~(firstLeadingBit(vec3<u32>(u_input.a, 0u, u_input.a)) >> ((vec3<u32>(0u, u_input.a, 4294967295u) | vec3<u32>(u_input.a, 59885u, u_input.a)) % vec3<u32>(32u))), (var_3 <= _wgslsmith_add_i32(u_input.b.x, -1i)) & true, _wgslsmith_mult_vec2_i32(vec2<i32>(select(11845i, var_0.x, false), u_input.b.x), vec2<i32>(0i, var_3) >> (~vec2<u32>(4294967295u, 36552u) % vec2<u32>(32u))), select(select(select(vec4<bool>(var_1, false, false, false), vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, true, var_1, var_1)), select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, true, true, var_1), vec4<bool>(true, true, var_1, var_1)), !vec4<bool>(false, false, var_1, var_1)), !vec4<bool>(false, var_1, true, true), var_1)), false);
    return Struct_3(vec3<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, var_0.x, u_input.b.x), u_input.b.xyx), abs(vec3<i32>(5440i, var_3, var_3))) | -1i, -var_3, reverseBits(var_0.x)), var_4.d, -265f, Struct_2(var_4.a, var_0, var_4.c, var_4.d, true), arg_0);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = min(vec4<u32>(19071u, 1u, 4294967295u << (arg_2.d.a.x % 32u), reverseBits(19710u)), abs(select(vec4<u32>(_wgslsmith_mod_u32(27417u, u_input.a), ~arg_2.d.a.x, 52506u, arg_0.d.d.a.x), abs(vec4<u32>(4294967295u, arg_0.d.d.a.x, 4294967295u, 4294967295u)), arg_0.b.d.x)));
    let var_1 = ~(vec2<u32>(~(4294967295u << (u_input.a % 32u)), ~32783u) >> (arg_0.b.a.xz % vec2<u32>(32u)));
    let var_2 = arg_0.d;
    var var_3 = 13819i;
    var var_4 = func_2(var_2.b.yy);
    return Struct_3(-func_2(-vec2<i32>(arg_2.b.x, var_4.b.c.x)).a << (arg_0.d.d.a % vec3<u32>(32u)), arg_0.d.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f))), func_2(-select(u_input.b.wx & var_2.d.c, ~var_2.d.c, var_4.e.x > 2147483647i)).d, vec2<i32>(arg_2.b.x, min(func_2(var_4.e).a.x, -u_input.b.x << (min(39831u, var_2.d.a.x) % 32u))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(u_input.b.zyz, Struct_1(arg_1.d.d.a, arg_1.d.e, arg_1.a.zz, arg_1.d.d.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) + arg_0.x)), arg_1.d, u_input.b.xw);
    let var_1 = Struct_2(select(select(func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(-54562i, var_0.b.c.x), u_input.b.ww)).b.d.zwz, vec3<bool>(arg_1.b.d.x, false, true), arg_1.d.a), var_0.b.d.yyz, false), var_0.d.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.d.c.x)), var_0.c, var_0.c, _wgslsmith_div_f32(516f, _wgslsmith_div_f32(arg_1.c, 645f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(373f, 2132f, var_0.c, 352f))) + arg_1.d.c)), var_0.d.d, true);
    var var_2 = var_1.b.xzw;
    var var_3 = _wgslsmith_mod_vec4_u32(abs(~(~vec4<u32>(var_0.d.d.a.x, 810u, arg_1.b.a.x, 60085u))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14375u, 2932u, 69754u, 0u) | vec4<u32>(9609u, 4294967295u, 1u, arg_1.b.a.x), firstTrailingBit(vec4<u32>(arg_1.d.d.a.x, var_1.d.a.x, 20564u, 8336u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_1.d.d.a.x, var_0.b.a.x), vec4<u32>(4294967295u, arg_1.d.d.a.x, 41012u, 4294967295u)) | abs(var_1.d.a.x), ~min(arg_1.d.d.a.x, var_1.d.a.x), u_input.a) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, 29180u, var_0.d.d.a.x, arg_1.b.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.d.a.x, var_0.d.d.a.x, 1u, 0u), abs(vec4<u32>(arg_1.b.a.x, var_1.d.a.x, 0u, var_0.d.d.a.x)))));
    var_3 = vec4<u32>(17371u, arg_1.b.a.x, 3678u ^ ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.a.x, ~(~var_0.d.d.a.x), var_1.d.a.x | func_4(arg_1, var_1.c.x, Struct_2(arg_1.b.d.xxz, var_1.b, vec4<f32>(var_0.d.c.x, -257f, arg_0.x, -725f), var_0.b, true)).b.a.x, arg_1.b.a.x), _wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(7957u, 0u, 1u, arg_1.b.a.x), vec4<u32>(1u, 31913u, var_3.x, 20663u)), ~vec4<u32>(40384u, 30538u, 49755u, 1u) ^ vec4<u32>(arg_1.b.a.x, 1u, 4294967295u, u_input.a), vec4<u32>(_wgslsmith_div_u32(var_3.x, arg_1.d.d.a.x), ~4294967295u, 1u << (var_1.d.a.x % 32u), reverseBits(var_1.d.a.x)))));
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> vec2<bool> {
    var var_0 = vec4<bool>(true, func_2(min(firstLeadingBit(arg_0.a.yz) & (u_input.b.wz << (vec2<u32>(13243u, arg_0.b.a.x) % vec2<u32>(32u))), u_input.b.zz >> (max(arg_0.d.d.a.xx, vec2<u32>(1u, arg_0.d.d.a.x)) % vec2<u32>(32u)))).d.d.d.x, !arg_0.b.b, false);
    var var_1 = vec2<u32>(arg_0.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, u_input.a, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(6907u, 4294967295u), arg_0.b.a.yy)), select(firstLeadingBit(vec4<u32>(1u, 0u, 4294967295u, 30522u) >> (vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u))), ~max(vec4<u32>(76097u, 1u, arg_0.d.d.a.x, u_input.a), vec4<u32>(4294967295u, arg_0.d.d.a.x, 1u, 4294967295u)), vec4<bool>(arg_0.d.c.x >= -286f, true, !arg_0.b.b, var_0.x))));
    var var_2 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    let var_3 = arg_0.d.d;
    let var_4 = vec4<i32>(0i, countOneBits(1i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.b.x, u_input.b.x), -vec2<i32>(1i, 2147483647i), true), u_input.b.zw), reverseBits(vec2<i32>(arg_0.e.x, func_2(vec2<i32>(2147483647i, var_3.c.x)).d.b.x))), -var_3.c.x);
    return vec2<bool>(arg_0.d.e, any(!vec3<bool>(all(vec4<bool>(false, var_0.x, var_3.b, true)), true, 18952i < u_input.b.x)));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = func_6(func_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(270f, _wgslsmith_f_op_f32(step(401f, -2340f)), _wgslsmith_f_op_f32(select(1000f, 327f, false))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(922f, 1490f, -1075f)))))), func_4(func_2(abs(u_input.b.wy)), -218f, func_2(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), u_input.b.xx)).d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(u_input.b.yyx, Struct_1(vec3<u32>(u_input.a, 4294967295u, u_input.a), false, u_input.b.zx, vec4<bool>(arg_0, arg_0, arg_0, arg_0)), 597f, Struct_2(vec3<bool>(true, arg_0, true), vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<f32>(-222f, 306f, -2142f, -989f), Struct_1(vec3<u32>(5812u, 4294967295u, u_input.a), false, vec2<i32>(21211i, 22657i), vec4<bool>(false, arg_0, arg_0, true)), true), u_input.b.yy), 712f, Struct_2(vec3<bool>(false, true, false), vec4<i32>(u_input.b.x, u_input.b.x, 7609i, u_input.b.x), vec4<f32>(-676f, 872f, 1164f, -561f), Struct_1(vec3<u32>(u_input.a, u_input.a, 32911u), arg_0, u_input.b.wz, vec4<bool>(arg_0, arg_0, true, arg_0)), false)).c + 280f), _wgslsmith_f_op_f32(2129f * -1559f), _wgslsmith_f_op_f32(f32(-1f) * -1468f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1622f + -184f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(-2147483647i, u_input.b.x)).d.c + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 461f, 2966f, -473f)))))), _wgslsmith_mod_i32(u_input.b.x, func_3()));
    let var_1 = select(arg_0, arg_0, _wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.a, 1u), u_input.a | u_input.a) <= 8591u);
    var var_2 = -_wgslsmith_div_vec4_i32(~_wgslsmith_clamp_vec4_i32(func_5(vec3<f32>(269f, -1706f, 458f), Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec3<u32>(u_input.a, 27502u, 0u), arg_0, u_input.b.xw, vec4<bool>(true, arg_0, var_0.x, var_1)), -1000f, Struct_2(vec3<bool>(true, true, arg_0), u_input.b, vec4<f32>(-645f, -1819f, 759f, -931f), Struct_1(vec3<u32>(u_input.a, 1u, 72929u), true, u_input.b.yz, vec4<bool>(arg_0, var_1, var_0.x, var_1)), true), vec2<i32>(u_input.b.x, u_input.b.x))).d.b, vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), ~u_input.b), _wgslsmith_sub_vec4_i32(u_input.b, func_2(~u_input.b.xx).d.b));
    var var_3 = Struct_3(~(~(select(vec3<i32>(2147483647i, -1i, 42666i), vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<bool>(true, var_1, var_0.x)) << (abs(vec3<u32>(25810u, 0u, u_input.a)) % vec3<u32>(32u)))), Struct_1(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6565u, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.a, _wgslsmith_mod_u32(89817u, 4308u)), any(!vec3<bool>(false, true, arg_0)), vec2<i32>(51732i, 0i), vec4<bool>(false, select(arg_0, var_1, true) == false, true, var_1)), _wgslsmith_f_op_f32(sign(-772f)), Struct_2(!vec3<bool>(all(var_0), any(var_0), true), -(-vec4<i32>(12662i, u_input.b.x, 0i, 0i) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(func_4(Struct_3(vec3<i32>(var_2.x, 23158i, var_2.x), Struct_1(vec3<u32>(4294967295u, 0u, u_input.a), true, var_2.yx, vec4<bool>(var_0.x, true, arg_0, var_0.x)), 1193f, Struct_2(vec3<bool>(true, var_1, arg_0), vec4<i32>(var_2.x, 2147483647i, -7543i, u_input.b.x), vec4<f32>(-1124f, 126f, 549f, 780f), Struct_1(vec3<u32>(1u, 30553u, 66960u), true, vec2<i32>(u_input.b.x, 14065i), vec4<bool>(var_0.x, false, false, var_0.x)), var_1), vec2<i32>(-5394i, var_2.x)), -1377f, Struct_2(vec3<bool>(arg_0, true, true), u_input.b, vec4<f32>(-507f, 1000f, -451f, -1562f), Struct_1(vec3<u32>(u_input.a, 0u, 7986u), var_1, var_2.wy, vec4<bool>(true, false, false, false)), false)).d.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(707f, 939f, 1470f, -177f) + vec4<f32>(452f, -1726f, 1000f, -1554f)))), func_5(vec3<f32>(1f, 1f, 1f), Struct_3(max(vec3<i32>(var_2.x, var_2.x, 27461i), vec3<i32>(u_input.b.x, var_2.x, u_input.b.x)), Struct_1(vec3<u32>(u_input.a, 1u, u_input.a), true, vec2<i32>(1i, var_2.x), vec4<bool>(true, false, true, var_1)), -783f, Struct_2(vec3<bool>(false, var_1, arg_0), vec4<i32>(var_2.x, var_2.x, 21187i, var_2.x), vec4<f32>(289f, 741f, -162f, 454f), Struct_1(vec3<u32>(u_input.a, 27768u, u_input.a), false, var_2.xy, vec4<bool>(var_1, arg_0, false, false)), arg_0), vec2<i32>(u_input.b.x, 1i))).d.d, !var_0.x), -vec2<i32>(func_5(vec3<f32>(1000f, 1125f, 239f), Struct_3(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), Struct_1(vec3<u32>(u_input.a, 1u, 179u), arg_0, vec2<i32>(17668i, 0i), vec4<bool>(var_0.x, false, true, false)), -630f, Struct_2(vec3<bool>(arg_0, true, true), u_input.b, vec4<f32>(1368f, -210f, -1000f, 387f), Struct_1(vec3<u32>(1u, u_input.a, 4294967295u), var_0.x, var_2.ww, vec4<bool>(false, var_1, false, false)), false), var_2.yx)).d.d.c.x, _wgslsmith_div_i32(u_input.b.x, -13898i)) >> (vec2<u32>(~1u, _wgslsmith_mod_u32(25476u, ~u_input.a)) % vec2<u32>(32u)));
    var var_4 = var_3.b;
    return _wgslsmith_add_u32(~func_2(vec2<i32>(-2147483647i, var_2.x)).d.d.a.x & u_input.a, min(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, var_3.c, var_3.d.c.x)), Struct_3(vec3<i32>(var_4.c.x, 1i, var_3.e.x), var_3.d.d, -513f, var_3.d, u_input.b.yw)).b.a.x, 9815u)) != ~38999u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec4<bool>(u_input.b.x < -1i, func_1(true), func_4(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec3<u32>(u_input.a, 0u, 1875u), false, u_input.b.zx, vec4<bool>(false, false, false, false)), 1000f, Struct_2(vec3<bool>(false, false, true), vec4<i32>(25646i, u_input.b.x, u_input.b.x, -31688i), vec4<f32>(783f, -749f, 460f, -205f), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), true, u_input.b.xx, vec4<bool>(false, false, true, true)), true), u_input.b.yy), -986f, Struct_2(vec3<bool>(false, true, true), vec4<i32>(u_input.b.x, 0i, -1i, u_input.b.x), vec4<f32>(-123f, -1029f, 862f, 1122f), Struct_1(vec3<u32>(22771u, 549u, u_input.a), false, u_input.b.zz, vec4<bool>(false, true, true, true)), true)).d.d.d.x, 36140i != u_input.b.x), vec4<bool>(true, true, false, true), any(vec4<bool>(true, true, true, true))), func_4(Struct_3(_wgslsmith_clamp_vec3_i32(u_input.b.zzw, vec3<i32>(2147483647i, -26444i, u_input.b.x), u_input.b.zyx), func_4(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), Struct_1(vec3<u32>(4294967295u, 27945u, 1u), true, vec2<i32>(-1i, u_input.b.x), vec4<bool>(true, true, false, true)), -1000f, Struct_2(vec3<bool>(false, false, true), u_input.b, vec4<f32>(1382f, -616f, 1000f, 1067f), Struct_1(vec3<u32>(u_input.a, 4294967295u, 48582u), false, vec2<i32>(u_input.b.x, -1i), vec4<bool>(true, false, false, true)), false), u_input.b.wx), 832f, Struct_2(vec3<bool>(true, false, false), vec4<i32>(39013i, u_input.b.x, -1i, u_input.b.x), vec4<f32>(1572f, 195f, 618f, -1000f), Struct_1(vec3<u32>(34587u, 105783u, 4294967295u), true, u_input.b.xz, vec4<bool>(false, false, true, false)), false)).b, _wgslsmith_f_op_f32(-451f * -1707f), Struct_2(vec3<bool>(false, true, false), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(1197f, 242f, 332f, -1129f), Struct_1(vec3<u32>(u_input.a, 1495u, u_input.a), true, u_input.b.wz, vec4<bool>(true, true, true, false)), true), vec2<i32>(1i, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -748f)), func_2(~vec2<i32>(-27452i, u_input.b.x)).d).b.d, false);
    let var_1 = -305f;
    let var_2 = 4294967295u;
    var var_3 = 1u;
    var var_4 = _wgslsmith_mod_i32(-1i, ~u_input.b.x);
    var_3 = 6546u;
    let var_5 = var_1;
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(1u, u_input.a))));
}

