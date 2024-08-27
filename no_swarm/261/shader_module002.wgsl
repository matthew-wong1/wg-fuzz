struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.x), _wgslsmith_clamp_vec2_u32(arg_0, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, 0u), vec2<u32>(0u, 4294967295u)))) | 0u, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(24150u, 64417u, 66362u)), vec3<u32>(~arg_0.x, u_input.b, 4294967295u)), abs(vec3<u32>(~1u, arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(41157u, u_input.b, arg_0.x), vec3<u32>(u_input.b, 1u, 0u))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-260f, -1769f, -427f) + vec3<f32>(2195f, 1043f, 1526f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2475f, 1000f, -973f), vec3<f32>(454f, 501f, 520f)))), countOneBits(~(vec3<u32>(u_input.b, 13095u, 5498u) ^ vec3<u32>(16219u, 1u, u_input.b))), true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(364f, 1042f, -1313f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-881f, -809f, 1207f) - vec3<f32>(-1502f, -1165f, 298f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-802f, -635f, 2439f) - vec3<f32>(-876f, 1000f, 167f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_f_op_f32(f32(-1f) * -109f))))), Struct_1(vec3<f32>(_wgslsmith_div_f32(-1038f, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1562f, 2186f)), 1382f), min(reverseBits(min(vec3<u32>(22070u, arg_0.x, arg_0.x), vec3<u32>(1u, arg_0.x, u_input.b))), ~(vec3<u32>(arg_0.x, 45061u, arg_0.x) & vec3<u32>(arg_0.x, 1u, u_input.b))), true, any(vec2<bool>(true, true))));
    var_0 = Struct_2((37436u | var_0.e.b.x) & 0u, select(vec3<u32>(arg_0.x, _wgslsmith_mod_u32(~u_input.b, ~var_0.b.x), var_0.e.b.x), var_0.c.b, !any(select(vec2<bool>(true, var_0.e.c), vec2<bool>(var_0.e.c, var_0.e.d), vec2<bool>(var_0.c.c, var_0.c.c)))), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.d), ~(~vec3<u32>(62154u, var_0.e.b.x, arg_0.x)), !(max(u_input.a, -1i) <= min(u_input.a, 0i)), true), _wgslsmith_f_op_vec3_f32(var_0.e.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-310f, -323f, -264f), var_0.e.a, true)))))), var_0.c);
    var_0 = Struct_2(abs(~(~(arg_0.x << (var_0.e.b.x % 32u)))), var_0.c.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.c.a))), vec3<u32>(min(u_input.b, 83464u) >> (u_input.b % 32u), firstLeadingBit(~68021u), 72219u), var_0.c.c, false), var_0.e.a, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.a.x, -324f, _wgslsmith_div_f32(-516f, -1307f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.e.a, vec3<f32>(-490f, 216f, -1313f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 2333f, 1755f) + var_0.d)), vec3<bool>(all(vec2<bool>(var_0.c.d, var_0.e.c)), false, var_0.e.a.x <= 303f))), abs(select(countOneBits(var_0.e.b), ~var_0.b, vec3<bool>(var_0.c.c, var_0.e.c, var_0.e.c))), var_0.e.c, _wgslsmith_div_f32(1209f, _wgslsmith_f_op_f32(var_0.e.a.x * 181f)) == var_0.c.a.x));
    var_0 = Struct_2(firstLeadingBit(firstLeadingBit(_wgslsmith_mod_u32(u_input.b, var_0.b.x)) << ((~82539u >> (u_input.b % 32u)) % 32u)), ~_wgslsmith_sub_vec3_u32(min(var_0.c.b, min(var_0.e.b, vec3<u32>(u_input.b, arg_0.x, 12133u))), ~(~vec3<u32>(1u, arg_0.x, u_input.b))), Struct_1(vec3<f32>(-1864f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1276f * var_0.c.a.x), _wgslsmith_f_op_f32(abs(var_0.e.a.x)))), var_0.d.x), var_0.e.b, true, !(!(var_0.c.c | false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_0.c.a.x, var_0.c.a.x)), _wgslsmith_f_op_f32(max(927f, 871f)), var_0.c.a.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) - var_0.e.a)))), var_0.e);
    var var_1 = var_0.e.a.x;
    return vec3<bool>(_wgslsmith_f_op_f32(-var_0.c.a.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), false, false);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec3<i32>) -> vec2<f32> {
    let var_0 = all(func_3(arg_0.b.xz));
    var var_1 = Struct_2(~firstLeadingBit(arg_2 ^ abs(arg_0.b.x)), abs(vec3<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(u_input.b, 0u)), 98162u, arg_2)), arg_0, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(476f + _wgslsmith_f_op_f32(-126f - arg_1.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(step(arg_0.a.x, -763f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(sign(arg_1.b)))))), arg_0);
    var_1 = Struct_2(1u, vec3<u32>(0u, 9721u, ~32824u), var_1.c, arg_0.a, Struct_1(arg_0.a, var_1.e.b, !(func_3(arg_0.b.yy).x | func_3(vec2<u32>(41183u, 0u)).x), any(arg_1.a)));
    var_1 = Struct_2(abs(~(~var_1.c.b.x)), ~(~arg_0.b), Struct_1(_wgslsmith_f_op_vec3_f32(round(arg_0.a)), ~firstLeadingBit(arg_0.b), true, all(select(vec2<bool>(arg_0.d, var_0), !arg_1.a, arg_1.a))), var_1.d, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.a)))), vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(u_input.b), min(1u, 1u)), ~min(arg_2, 4294967295u), 1u), true, false));
    var_1 = Struct_2(4294967295u, select(_wgslsmith_div_vec3_u32(select(arg_0.b, var_1.c.b, select(true, true, var_1.c.d)), var_1.b), ~min(countOneBits(vec3<u32>(97175u, var_1.c.b.x, arg_2)), abs(vec3<u32>(0u, arg_2, 4294967295u))), arg_1.a.x), var_1.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-921f, -485f, 291f), vec3<f32>(-1018f, arg_0.a.x, var_1.c.a.x), vec3<bool>(arg_1.a.x, true, false))) * arg_0.a) * vec3<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(sign(var_1.d.x)), -409f)))), var_1.e);
    return var_1.d.yy;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1228f, arg_2.x) + _wgslsmith_div_f32(arg_1, arg_1)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-561f, arg_1, _wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(134f, 495f, arg_2.x) - vec3<f32>(arg_1, 1000f, -118f))))), vec3<u32>(u_input.b, ~(~30251u), select(9615u << (u_input.b % 32u), ~u_input.b, true) ^ (1u | (u_input.b ^ u_input.b))), false, all(func_3(vec2<u32>(1u, 1u))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: i32) -> bool {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 386f) - vec2<f32>(arg_0.b, arg_0.b))) + vec2<f32>(_wgslsmith_f_op_f32(floor(-898f)), _wgslsmith_f_op_f32(-arg_0.b))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-519f, _wgslsmith_f_op_f32(-arg_0.b)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b, 1488f), vec2<f32>(1231f, -556f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, 1319f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<f32>(arg_0.b, 612f, 1387f), vec3<u32>(80446u, 0u, u_input.b), false, false), Struct_3(arg_0.a, 308f, arg_0.c), arg_1.x, vec3<i32>(1i, -1i, 2147483647i))), vec2<f32>(-614f, 520f))))));
    var var_1 = 28548i;
    var var_2 = arg_0;
    var_2 = arg_0;
    var var_3 = Struct_3(select(vec2<bool>(var_2.a.x, arg_0.a.x), vec2<bool>(!(!var_0.d), !arg_0.a.x || true), vec2<bool>(var_2.a.x, !any(vec2<bool>(var_0.c, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_4(var_0.a.zy, var_2.b, var_0.a.xz).a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2432f, -926f)) - arg_0.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.b))), arg_0.b)), var_2.c | _wgslsmith_add_vec3_i32(var_2.c, vec3<i32>(2147483647i, 34785i, _wgslsmith_mod_i32(-1i, -18191i))));
    return var_3.a.x || any(vec2<bool>(reverseBits(0u) > min(var_0.b.x, 18947u), any(vec4<bool>(true, var_0.d, var_0.d, false))));
}

fn func_5(arg_0: vec4<bool>) -> u32 {
    var var_0 = u_input.a << (countOneBits(~21694u | (4294967295u ^ countOneBits(u_input.b))) % 32u);
    let var_1 = Struct_3(select(select(arg_0.wy, vec2<bool>(u_input.a != u_input.a, any(arg_0.xz)), all(vec2<bool>(true, true))), arg_0.zx, !(!vec2<bool>(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-894f, _wgslsmith_f_op_f32(max(-1358f, -204f))))))), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(u_input.a, -1i, u_input.a)), ~(vec3<i32>(u_input.a, -32674i, u_input.a) ^ vec3<i32>(u_input.a, 11049i, u_input.a)) ^ vec3<i32>(-21513i, -45907i, u_input.a)));
    var var_2 = Struct_2(87097u, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(min(~vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(15137u, 0u, u_input.b) & vec3<u32>(4294967295u, 0u, 4294967295u)), firstTrailingBit(vec3<u32>(0u, 57946u, u_input.b))), (abs(vec3<u32>(12629u, 64991u, u_input.b)) >> (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), u_input.b, u_input.b) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b, _wgslsmith_f_op_f32(var_1.b + var_1.b), var_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_1.b, -1000f) * vec3<f32>(var_1.b, var_1.b, 522f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -186f, 976f))))), firstLeadingBit(vec3<u32>(~u_input.b, 30385u, ~1u)), true, !func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(187f, var_1.b) + vec2<f32>(-114f, var_1.b)), _wgslsmith_f_op_f32(abs(-1080f)), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<f32>(var_1.b, 182f, var_1.b), vec3<u32>(u_input.b, 5753u, 21880u), false, true), var_1, 1u, var_1.c))).d), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -144f, 1266f) * vec3<f32>(_wgslsmith_f_op_f32(-674f + _wgslsmith_f_op_f32(max(666f, var_1.b))), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1311f)), var_1.b)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - 863f))), max(~abs(vec3<u32>(u_input.b, 0u, 4294967295u)), firstLeadingBit(abs(vec3<u32>(u_input.b, 23477u, 4294967295u)))), false, arg_0.x));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -851f)));
    return 5472u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_2(func_5(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0, true, false, var_0), !vec4<bool>(true, var_0, var_0, var_0), true), vec4<bool>(var_0, true, func_1(Struct_3(vec2<bool>(var_0, var_0), -1241f, vec3<i32>(-35095i, 0i, 2147483647i)), vec2<u32>(u_input.b, u_input.b), 1i), true))), ~(~func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-969f, 1000f) + vec2<f32>(2251f, 984f)), _wgslsmith_f_op_f32(trunc(-1211f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(560f, 593f) + vec2<f32>(1000f, 1035f))).b), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-699f, -1084f)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(802f)), 1202f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-945f, 971f)), 524f), _wgslsmith_f_op_f32(-580f + _wgslsmith_f_op_f32(1000f - 399f)))), vec2<f32>(1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), 603f, 1082f), func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(557f - 1092f), func_4(vec2<f32>(314f, -584f), 1955f, vec2<f32>(569f, 1066f)).a.x), 200f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1189f, 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -259f, true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-819f + 1000f) + _wgslsmith_f_op_f32(-416f * 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -253f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e.a.x, -343f, var_1.e.a.x, 914f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.a.x, -349f, var_1.c.a.x, -263f)), !var_0)), vec4<f32>(-462f, -2082f, _wgslsmith_f_op_f32(f32(-1f) * -298f), var_1.e.a.x), select(vec4<bool>(false, var_0, var_0, false), select(vec4<bool>(true, var_1.e.c, true, false), vec4<bool>(var_1.c.d, var_1.e.c, var_1.e.d, var_0), vec4<bool>(true, var_1.c.c, var_0, false)), false)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a.x, -548f, -1499f, -645f) - vec4<f32>(420f, 337f, var_1.d.x, -802f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1793f, -639f, var_1.e.a.x, 157f))) + vec4<f32>(587f, func_4(var_1.d.yz, var_1.e.a.x, vec2<f32>(var_1.e.a.x, 1224f)).a.x, var_1.d.x, _wgslsmith_f_op_f32(-var_1.e.a.x))))));
    let var_3 = Struct_2(~u_input.b, vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.e.b, vec3<u32>(var_1.a, var_1.c.b.x, 49468u)), ~54141u, ~10925u) << (vec3<u32>(31205u, 0u, 25255u ^ ~u_input.b) % vec3<u32>(32u)), var_1.c, vec3<f32>(var_2.x, _wgslsmith_f_op_f32(max(-336f, _wgslsmith_f_op_f32(max(var_1.d.x, var_2.x)))), -283f), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.e.a.x, -1621f, var_2.x))) + var_2.xzw), vec3<u32>(_wgslsmith_sub_u32(func_5(vec4<bool>(var_1.e.d, var_0, var_0, var_1.e.c)), 4294967295u), u_input.b, u_input.b), (var_0 && all(vec3<bool>(var_0, true, var_1.c.c))) & all(select(vec4<bool>(false, var_0, var_1.e.d, var_1.c.c), vec4<bool>(var_1.e.d, false, var_1.e.c, var_0), vec4<bool>(true, false, var_0, true))), false));
    var_1 = var_3;
    var_1 = var_3;
    var_1 = Struct_2(1u, vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), vec2<u32>(var_3.c.b.x, 4294967295u)), 4294967295u, firstTrailingBit(u_input.b)) | _wgslsmith_mod_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.a, 4294967295u), var_3.e.b), ~vec3<u32>(u_input.b, 1u, 4294967295u)), vec3<u32>(1u, max(53375u, var_3.a), firstLeadingBit(4294967295u))), var_3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_3.c.a)) + vec3<f32>(var_3.d.x, 2075f, var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d) - _wgslsmith_f_op_vec3_f32(abs(var_1.e.a))))), var_1.c);
    let var_4 = var_3.e.d || false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, 1i), var_1.b.xy, 23969u);
}

