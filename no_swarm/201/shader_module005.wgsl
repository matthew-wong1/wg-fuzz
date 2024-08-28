struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 203f) + vec2<f32>(1017f, -293f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1385f, arg_2) * vec2<f32>(-558f, arg_2)))), vec2<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), ~((~vec2<u32>(u_input.a, 34147u) & firstTrailingBit(u_input.c)) ^ ~(~arg_1.a)), u_input.b.x >> (~u_input.c.x % 32u), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), arg_0.b.x);
    var var_1 = vec3<i32>(~(arg_1.b.x ^ 55538i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, -2147483647i, 9307i, arg_1.b.x) & vec4<i32>(8853i, var_0.c, 0i, var_0.c)), vec4<i32>(var_0.c, -arg_1.b.x, -2147483647i, -18951i)) & -(abs(arg_1.b.x) & -15266i), 16675i);
    var_1 = reverseBits(-vec3<i32>(0i, u_input.b.x, var_0.c));
    var var_2 = Struct_2(_wgslsmith_sub_vec2_u32(~var_0.b, vec2<u32>(_wgslsmith_mult_u32(12066u, ~u_input.a), _wgslsmith_div_u32(~2955u, u_input.c.x))), vec3<i32>(~_wgslsmith_div_i32(44316i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, 0i, arg_0.b.x), u_input.b.xzw)), -4526i, _wgslsmith_div_i32(arg_0.b.x, -(~2147483647i))));
    var_2 = arg_0;
    return -reverseBits(_wgslsmith_add_i32(-abs(var_2.b.x), -33274i));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_add_u32(45566u, arg_2.a.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, -269f), vec2<f32>(-1910f, arg_1)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 219f), vec2<f32>(1000f, -1274f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(693f, -138f))), _wgslsmith_add_vec2_u32(vec2<u32>(~(~66800u), 39572u >> (var_0 % 32u)), ~(~(vec2<u32>(var_0, 0u) | vec2<u32>(58837u, arg_0)))), _wgslsmith_sub_i32(17181i, u_input.b.x | _wgslsmith_mod_i32(func_3(arg_2, Struct_2(u_input.c, vec3<i32>(25743i, -2147483647i, -736i)), arg_1), u_input.b.x)), !(!any(vec4<bool>(true, true, false, true))) || true, -((u_input.b.x >> (arg_0 % 32u)) & 1i) ^ -52055i);
    let var_2 = select((_wgslsmith_div_u32(var_0, 33131u) ^ _wgslsmith_div_u32(~var_1.b.x, 13259u)) != (var_0 & (arg_2.a.x | 0u)), false, true);
    var var_3 = Struct_2(min(var_1.b, u_input.c), arg_2.b);
    var var_4 = Struct_2(~abs(~select(var_1.b, u_input.c, vec2<bool>(true, false))), vec3<i32>(-1i) * -select(vec3<i32>(var_1.e, 35142i, arg_2.b.x), vec3<i32>(arg_2.b.x, -2147483647i, arg_2.b.x) & vec3<i32>(var_1.c, var_1.e, u_input.b.x), false));
    return _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_mult_i32(var_4.b.x, -u_input.b.x), ~17091i, var_1.e)), -var_4.b & arg_2.b, vec3<i32>(-firstTrailingBit(_wgslsmith_sub_i32(-1i, arg_2.b.x)), arg_2.b.x, countOneBits(~1i)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~(-reverseBits(~_wgslsmith_dot_vec2_i32(arg_0.b.xz, vec2<i32>(-16442i, u_input.b.x))));
    var var_1 = Struct_2(vec2<u32>(countOneBits(1u), ~53374u) >> ((arg_0.a >> (_wgslsmith_div_vec2_u32(u_input.c, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(-(~arg_0.b)));
    var var_2 = vec4<i32>(~var_1.b.x, _wgslsmith_mult_i32((-1i ^ min(-1i, u_input.b.x)) ^ abs(_wgslsmith_mult_i32(var_0, 1i)), 25998i), -32881i, 14180i);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(1f, -1000f))), min(var_1.a, arg_0.a), -1i, false, ~firstLeadingBit(abs(_wgslsmith_mod_i32(var_1.b.x, var_1.b.x))));
    var_1 = arg_0;
    return Struct_2(~(~vec2<u32>(var_1.a.x, ~18018u)), _wgslsmith_clamp_vec3_i32(u_input.b.zwy, var_2.yxw, ~vec3<i32>(1i, arg_0.b.x, arg_0.b.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -103f;
    var var_1 = Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.b.x, arg_2.b.x), abs(abs(vec2<u32>(arg_1.b.x, 4294967295u) << (arg_1.b % vec2<u32>(32u))))), select(vec3<i32>(abs(abs(arg_2.e)), i32(-1i) * -1i, -firstTrailingBit(-40142i)), vec3<i32>(firstTrailingBit(2147483647i), 3697i, u_input.b.x), true));
    var var_2 = func_4(Struct_2(_wgslsmith_add_vec2_u32(~u_input.c, ~(~u_input.c)), func_2(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1339f), arg_0)));
    var_2 = Struct_2(arg_0.a, var_1.b);
    var var_3 = min(abs(u_input.b.xx), u_input.b.xx >> (_wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, arg_0.a.x), vec2<u32>(arg_2.b.x, var_2.a.x), arg_1.d), ~var_1.a) % vec2<u32>(32u))) >> (~abs(firstLeadingBit(arg_1.b)) % vec2<u32>(32u));
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = func_4(Struct_2(~arg_1.b, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 45984i, -1i), vec3<i32>(2147483647i, arg_1.e, arg_1.c)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, arg_0.b.x, 0i), u_input.b.xxy))));
    var var_1 = vec2<i32>(-1i) * -func_4(arg_0).b.yy;
    var var_2 = arg_1.a.x;
    let var_3 = arg_1.a.x;
    var_2 = _wgslsmith_f_op_f32(-1312f - _wgslsmith_f_op_f32(-1440f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x))))));
    return Struct_2(arg_0.a, u_input.b.xyy ^ var_0.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = func_6(Struct_2((max(vec2<u32>(arg_1.a.x, arg_0.b.x), vec2<u32>(4294967295u, 39766u)) << (u_input.c % vec2<u32>(32u))) >> (vec2<u32>(u_input.c.x | arg_1.a.x, arg_0.b.x) % vec2<u32>(32u)), vec3<i32>(firstTrailingBit(-4662i), ~u_input.b.x, arg_0.c)), func_5(func_4(Struct_2(_wgslsmith_clamp_vec2_u32(arg_0.b, vec2<u32>(arg_1.a.x, u_input.a), arg_1.a), func_2(u_input.a, -1000f, arg_1))), arg_0, arg_0));
    let var_1 = arg_0.a.x;
    let var_2 = var_0.a.x;
    return reverseBits(u_input.c.x) >= 25709u;
}

fn func_7(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = Struct_2(vec2<u32>(30239u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(arg_1.x, 15417u)), vec2<u32>(~0u, ~4294967295u))), (u_input.b.xxw ^ arg_3) ^ select(u_input.b.zyy, u_input.b.xzx >> (firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, arg_1.x)) % vec3<u32>(32u)), vec3<bool>(arg_0, true, arg_0 && true)));
    var var_1 = _wgslsmith_clamp_i32(~min(_wgslsmith_mult_i32(-2147483647i, func_3(Struct_2(vec2<u32>(var_0.a.x, 0u), vec3<i32>(var_0.b.x, 31422i, var_0.b.x)), Struct_2(u_input.c, vec3<i32>(-1i, 9086i, u_input.b.x)), 550f)), _wgslsmith_mod_i32(var_0.b.x, arg_3.x)), -(~(0i << (func_6(Struct_2(u_input.c, vec3<i32>(var_0.b.x, 21137i, -12583i)), Struct_1(arg_2.yw, arg_1, var_0.b.x, arg_0, var_0.b.x)).a.x % 32u))), ~2147483647i);
    var var_2 = -arg_3.x != u_input.b.x;
    var var_3 = 1537f;
    var var_4 = var_0;
    return StorageBuffer((~vec4<u32>(u_input.a, var_4.a.x, 8145u, 4294967295u) << (select(~vec4<u32>(var_4.a.x, 24786u, u_input.a, var_4.a.x), vec4<u32>(1u, arg_1.x, arg_1.x, var_0.a.x) ^ vec4<u32>(var_4.a.x, 20661u, arg_1.x, 1u), !vec4<bool>(arg_0, arg_0, false, true)) % vec4<u32>(32u))) & ~(vec4<u32>(79168u, arg_1.x, 77636u, var_4.a.x) & min(vec4<u32>(41899u, var_0.a.x, var_0.a.x, u_input.c.x), vec4<u32>(u_input.c.x, var_0.a.x, var_0.a.x, 3150u))), ~var_4.b.x, 11461i, -288f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(any(vec4<bool>((u_input.b.x != -19047i) & true, !func_1(Struct_1(vec2<f32>(1337f, -810f), vec2<u32>(u_input.a, 0u), -22487i, false, -2147483647i), Struct_2(u_input.c, vec3<i32>(48456i, 0i, u_input.b.x))), true, true)), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, 24975u, 41900u))), max(vec4<u32>(u_input.a, 0u, u_input.c.x, u_input.a), ~vec4<u32>(u_input.c.x, u_input.a, 15733u, u_input.c.x))), ~(u_input.c.x & u_input.a) ^ func_5(func_6(Struct_2(u_input.c, vec3<i32>(-7787i, u_input.b.x, 34403i)), Struct_1(vec2<f32>(-1000f, 1000f), u_input.c, -2147483647i, true, u_input.b.x)), func_5(Struct_2(vec2<u32>(u_input.c.x, u_input.a), vec3<i32>(2147483647i, 53713i, u_input.b.x)), Struct_1(vec2<f32>(-1171f, 140f), u_input.c, u_input.b.x, false, u_input.b.x), Struct_1(vec2<f32>(880f, -685f), vec2<u32>(29250u, 0u), u_input.b.x, true, -2147483647i)), func_5(Struct_2(u_input.c, vec3<i32>(5544i, u_input.b.x, 2147483647i)), Struct_1(vec2<f32>(600f, 1038f), vec2<u32>(34260u, u_input.a), u_input.b.x, false, -47709i), Struct_1(vec2<f32>(-831f, -388f), vec2<u32>(u_input.a, u_input.a), -21748i, false, 29889i))).b.x), vec4<f32>(func_5(Struct_2(max(u_input.c, vec2<u32>(u_input.c.x, u_input.a)), vec3<i32>(1i, u_input.b.x, 2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-412f, -402f), vec2<f32>(-564f, -1956f))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), u_input.c, u_input.c), select(-2147483647i, u_input.b.x, true), true, 1i), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1103f, -1000f)), u_input.c, _wgslsmith_sub_i32(u_input.b.x, 0i), true, 18837i)).a.x, -242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-185f, 546f, false)) * _wgslsmith_f_op_f32(-169f + 780f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 296f)), -1492f), u_input.b.wzw);
}

