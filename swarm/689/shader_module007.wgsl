struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    let var_0 = vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)))), all(select(vec3<bool>(true, select(true, true, false), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), true)), !all(vec2<bool>(any(vec3<bool>(false, true, false)), true)), true);
    let var_1 = u_input.b.xz;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f - 1372f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1427f, -222f)), 335f)))));
    let var_3 = u_input.b;
    let var_4 = var_0;
    return var_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(845f, -419f))))));
    let var_1 = ~(~reverseBits(14581u) >> (countOneBits(_wgslsmith_sub_u32(arg_0.a, u_input.b.x)) % 32u)) >> (abs(~abs(4294967295u)) % 32u);
    var_0 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))));
    var_0 = Struct_4(290f);
    var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -586f)) + -187f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-219f, var_0.a, arg_1.x))))))));
    return Struct_1(var_1, arg_0.e, reverseBits(~arg_0.e) ^ -(1i << (_wgslsmith_mod_u32(var_1, 0u) % 32u)), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.d, arg_0.c), vec2<i32>(-2147483647i, arg_0.d))), (vec2<i32>(arg_0.c, -2147483647i) | vec2<i32>(arg_0.b, arg_0.d)) << (vec2<u32>(28732u, 28211u) % vec2<u32>(32u))) >> (arg_0.a % 32u), max(arg_0.e, arg_0.b) & arg_0.c);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(vec3<bool>(false, any(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true))), -2147483647i > (_wgslsmith_clamp_i32(arg_1.c, firstTrailingBit(arg_1.d), firstTrailingBit(0i)) << (select(49717u, _wgslsmith_clamp_u32(85895u, 1u, u_input.b.x), u_input.b.x > u_input.a) % 32u)));
    var_0 = Struct_2(vec3<bool>(any(!(!vec2<bool>(var_0.a.x, var_0.b))), true, select(true, var_0.b, false)), true);
    var var_1 = firstLeadingBit(abs(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_1.b, arg_1.c, -52022i), -vec3<i32>(arg_1.b, arg_1.b, arg_1.b)))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.xyy, ~vec3<u32>(u_input.b.x, 17066u, arg_0)), ~max(~u_input.b.wyw, ~u_input.b.wxy)) % vec3<u32>(32u));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zy, ~vec2<u32>(4294967295u, 4294967295u)), ~arg_0) << (~(~max(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.b.x, arg_0))) % vec2<u32>(32u));
    let var_3 = Struct_2(vec3<bool>(var_0.a.x, var_0.b, !var_0.a.x), any(vec2<bool>(true, any(var_0.a.zz))));
    return select(true, all(!select(vec4<bool>(false, false, false, var_3.a.x), vec4<bool>(true, var_3.b, false, true), vec4<bool>(false, true, var_3.b, true))), (-reverseBits(var_1.x) & -3280i) >= ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, 2147483647i, var_1.x)), -vec3<i32>(arg_1.d, 27568i, arg_1.c)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = func_2(func_2(Struct_1(~u_input.b.x & _wgslsmith_add_u32(u_input.a, 0u), 2147483647i, select(-2147483647i, 15961i, true) << (13012u % 32u), _wgslsmith_div_i32(-2147483647i, 1i) & firstTrailingBit(-2164i), -2147483647i), select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), arg_1, arg_1.x), arg_1.x), arg_1, arg_1.x)), arg_1);
    var var_1 = ~vec3<i32>(var_0.e, _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(49177i, 2147483647i, var_0.e), vec3<i32>(var_0.d, var_0.b, 85888i)), firstLeadingBit(-1i)), 1i), abs(~(var_0.c ^ var_0.c)));
    var_1 = vec3<i32>(max(6459i, ~(~var_1.x)), i32(-1i) * -39637i, var_0.c);
    var_1 = -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, var_0.b, 15728i), vec3<i32>(~2147483647i, ~var_1.x, -2147483647i), -(vec3<i32>(2147483647i, var_0.c, 34564i) >> (u_input.b.wzw % vec3<u32>(32u)))), ~countOneBits(~vec3<i32>(-2147483647i, -1i, -2147483647i)));
    var var_2 = Struct_2(vec3<bool>(arg_1.x == all(arg_1), func_4(~1u, var_0), any(!vec4<bool>(arg_1.x, false, arg_1.x, true))), arg_1.x);
    return func_2(var_0, vec2<bool>(~38883i > func_2(func_2(var_0, vec2<bool>(arg_1.x, arg_1.x)), select(arg_1, vec2<bool>(var_2.a.x, false), arg_1)).c, true));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.b.wy;
    var var_1 = func_5(var_0 >> (~vec2<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.b.zzx, vec3<u32>(u_input.a, var_0.x, u_input.a))) % vec2<u32>(32u)), select(vec2<bool>(true, func_4(abs(1u), func_2(Struct_1(63332u, 11405i, 1i, -1i, 2147483647i), vec2<bool>(false, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, u_input.a <= 0u))));
    var_1 = Struct_1(var_0.x & countOneBits(_wgslsmith_mod_u32(u_input.b.x, 32335u) << ((7566u >> (var_1.a % 32u)) % 32u)), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(var_1.b, 2147483647i, var_1.b, var_1.e), -vec4<i32>(43770i, 0i, var_1.c, -66201i)), select(~(vec4<i32>(10020i, 2147483647i, var_1.e, var_1.d) & vec4<i32>(97i, 1i, var_1.c, var_1.b)), select(abs(vec4<i32>(var_1.e, var_1.b, var_1.d, var_1.d)), vec4<i32>(-2147483647i, 31667i, var_1.d, var_1.d), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)))), 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-(vec3<i32>(var_1.c, var_1.b, 19108i) & vec3<i32>(var_1.b, 0i, var_1.e)), ~(vec3<i32>(var_1.e, var_1.c, var_1.b) ^ vec3<i32>(var_1.d, -18629i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.e, 17766i, 1i) << (u_input.b.zzx % vec3<u32>(32u)), vec3<i32>(var_1.b, var_1.d, -34649i))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_1.d, var_1.b), -countOneBits(vec3<i32>(-2147483647i, 2147483647i, -6429i)))), ~var_1.e);
    let var_2 = !(all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))) != func_4(~4294967295u, Struct_1(4294967295u, select(-2819i, 1i, false), 1i, reverseBits(var_1.d), func_2(Struct_1(var_1.a, var_1.b, -62190i, var_1.b, var_1.d), vec2<bool>(true, false)).d)));
    var_1 = Struct_1(2254u, 34359i, -firstLeadingBit(_wgslsmith_mod_i32(10619i, var_1.e)), var_1.c, -reverseBits(var_1.c >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(36794u, 9459u, 0u, 4294967295u)) % 32u)));
    return Struct_2(vec3<bool>(var_2, false, !var_2), var_2);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec3<i32>(-max(max(~15581i, i32(-1i) * -2147483647i), ~_wgslsmith_clamp_i32(2147483647i, 2147483647i, -32231i)), 16307i, -2147483647i);
    var_0 = -(~(~vec3<i32>(max(var_0.x, var_0.x), -1i, -2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1866f), _wgslsmith_f_op_f32(1000f + -810f)))), _wgslsmith_f_op_f32(floor(-866f))));
    var_0 = max(reverseBits(vec3<i32>(var_0.x, countOneBits(firstLeadingBit(var_0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 0i, var_0.x), vec3<i32>(var_0.x, -2147483647i, var_0.x))))), -vec3<i32>(~firstLeadingBit(-1i), ~var_0.x & ~1i, var_0.x));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)), -689f));
    return Struct_1(~u_input.a, 1i & -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, var_0.x, 2147483647i)), vec3<i32>(1685i, -29984i, var_0.x)), -2147483647i, var_0.x, _wgslsmith_clamp_i32(var_0.x, -var_0.x, 5544i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1());
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(234f, -474f), _wgslsmith_f_op_f32(-129f * -1305f), all(vec4<bool>(true, true, false, false)))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-183f, 463f)), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-326f)))))));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - 335f))), -606f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 537f, 1954f))) + vec3<f32>(var_1.a, var_1.a, -380f)));
    let var_4 = -14860i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-45075i, var_4, var_2.e, ~(-1i) >> (_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(var_0.a, 44367u)) % 32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.yy) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_3.yz)), _wgslsmith_f_op_vec2_f32(var_3.yz - var_3.yy))))));
}

