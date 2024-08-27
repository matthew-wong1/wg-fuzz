struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: Struct_3,
    d: Struct_3,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    var var_0 = arg_0.b;
    let var_1 = _wgslsmith_dot_vec3_u32(~(~(~countOneBits(vec3<u32>(37275u, u_input.a, u_input.b.x)))), abs(abs(firstLeadingBit(vec3<u32>(41763u, u_input.a, u_input.a)) ^ (vec3<u32>(4294967295u, 42742u, u_input.b.x) << (vec3<u32>(18529u, u_input.b.x, u_input.a) % vec3<u32>(32u))))));
    var var_2 = arg_0.a;
    var var_3 = reverseBits(abs(var_1)) < var_1;
    var_3 = true;
    return 0u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = ~(-_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-55281i, -1i, 0i), vec3<i32>(0i, -1i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-29505i, 1i, 0i), vec3<i32>(56102i, 49173i, -31960i), vec3<i32>(1i, 22670i, -13007i))), -vec3<i32>(47458i, -17024i, -24523i)));
    let var_1 = Struct_2(vec2<i32>(-var_0.x, _wgslsmith_sub_i32(-(~var_0.x), countOneBits(16306i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1125f + _wgslsmith_f_op_f32(f32(-1f) * -2456f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1201f - 1723f))), -26137i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1878f, -2180f, -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1899f, 1150f, 474f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(478f, 581f, -1143f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1029f, -814f, -1000f), vec3<f32>(-1479f, 1586f, 129f), true)))), true))), _wgslsmith_sub_vec2_i32(var_0.yy, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~var_0.zx, max(var_0.yz, var_0.zy)), _wgslsmith_mod_vec2_i32(-var_0.yz, vec2<i32>(15387i, var_0.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-528f)) + 602f) - _wgslsmith_f_op_f32(sign(-463f))), firstLeadingBit(var_0.x)));
    var_0 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(17505i, -22194i), -vec2<i32>(2147483647i, 0i), ~vec2<i32>(19133i, var_1.a.x)), var_0.zz), var_1.b.b, 36430i);
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i, _wgslsmith_mult_i32(-var_1.d.x, 18776i), countOneBits(1i)), -vec3<i32>(min(_wgslsmith_clamp_i32(var_1.d.x, var_0.x, var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(31018i, -16193i, var_1.a.x), vec3<i32>(var_1.a.x, var_0.x, -30006i))), select(abs(-13202i), _wgslsmith_add_i32(1i, var_0.x), arg_0.x <= u_input.a), 34925i));
    var_0 = -vec3<i32>(-_wgslsmith_add_i32(max(var_1.a.x, var_1.a.x), 13064i), abs(_wgslsmith_mod_i32(~(-54960i), var_0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-46352i, var_1.d.x, 13605i) | vec3<i32>(-2147483647i, -1i, -1i), ~(~vec3<i32>(12981i, 2147483647i, var_0.x))));
    return Struct_4(select(!vec3<bool>(all(vec2<bool>(false, true)), true, all(vec3<bool>(false, false, false))), !vec3<bool>(true, true, any(vec2<bool>(false, false))), (1128f < var_1.b.a) != true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a))), 654f)), Struct_3(Struct_2(_wgslsmith_add_vec2_i32(select(vec2<i32>(7929i, 2147483647i), vec2<i32>(2147483647i, 0i), false), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_1.e.b), var_1.d, vec2<i32>(var_1.b.b, -15564i))), var_1.e, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(663f, 1210f, 1271f) * var_1.c), _wgslsmith_f_op_vec3_f32(floor(var_1.c)))), ~var_0.xz, var_1.e), Struct_1(_wgslsmith_f_op_f32(-658f + var_1.e.a), -firstTrailingBit(var_0.x)), var_1.b, ~(~(-var_0.zx))), Struct_3(Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_1.a.x), firstLeadingBit(vec2<i32>(var_1.e.b, -2147483647i))), var_1.b, _wgslsmith_f_op_vec3_f32(step(var_1.c, _wgslsmith_f_op_vec3_f32(step(var_1.c, var_1.c)))), _wgslsmith_mod_vec2_i32(countOneBits(var_0.yy), firstTrailingBit(var_0.zy)), Struct_1(_wgslsmith_f_op_f32(-var_1.b.a), 2147483647i)), Struct_1(_wgslsmith_f_op_f32(var_1.e.a * _wgslsmith_f_op_f32(-var_1.c.x)), min(~(-42788i), var_1.d.x)), Struct_1(var_1.c.x, -6498i), vec2<i32>(abs(-12885i), countOneBits(var_0.x))), var_1.c);
}

fn func_1() -> vec3<bool> {
    var var_0 = select(_wgslsmith_dot_vec4_u32(vec4<u32>(~firstTrailingBit(4294967295u), u_input.b.x, _wgslsmith_mult_u32(1u, ~u_input.a), _wgslsmith_mult_u32(~u_input.b.x, 58690u)), abs(~vec4<u32>(u_input.a, 4294967295u, u_input.b.x, 1u))), 37726u, !any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)) & any(vec2<bool>(any(vec4<bool>(true, false, true, true)), false)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1502f * 524f), -max(-42527i, -47606i));
    var var_2 = func_3(max(~vec4<u32>(48812u, _wgslsmith_mod_u32(7335u, 59221u), ~u_input.a, func_2(Struct_3(Struct_2(vec2<i32>(var_1.b, 0i), Struct_1(1578f, 2147483647i), vec3<f32>(var_1.a, var_1.a, 1000f), vec2<i32>(var_1.b, var_1.b), Struct_1(160f, var_1.b)), Struct_1(var_1.a, -2147483647i), Struct_1(var_1.a, var_1.b), vec2<i32>(var_1.b, var_1.b)), -1i, vec4<f32>(var_1.a, var_1.a, 616f, 721f))), ~(vec4<u32>(0u, 0u, 55025u, 17372u) << (~vec4<u32>(18185u, 4294967295u, 4294967295u, u_input.a) % vec4<u32>(32u)))), vec2<u32>(u_input.a, u_input.a ^ ~u_input.b.x));
    var var_3 = Struct_3(var_2.c.a, func_3(~vec4<u32>(u_input.a, ~u_input.a, ~u_input.b.x, _wgslsmith_mult_u32(14601u, 1u)), u_input.b).c.a.e, Struct_1(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_dot_vec2_i32(select(var_2.d.a.d, var_2.c.d, true) << (~u_input.b % vec2<u32>(32u)), var_2.c.a.a)), vec2<i32>(2147483647i, _wgslsmith_mod_i32(var_2.c.b.b << (u_input.a % 32u), var_2.d.a.e.b) << (abs(4294967295u) % 32u)));
    var var_4 = var_2.d.a.c;
    return select(var_2.a, !func_3(_wgslsmith_add_vec4_u32(vec4<u32>(99834u, 76971u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 1u, u_input.a, u_input.a)) & min(vec4<u32>(u_input.a, 4294967295u, u_input.b.x, 4294967295u), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a)), vec2<u32>(u_input.b.x, func_2(Struct_3(Struct_2(var_2.c.d, var_3.c, var_3.a.c, vec2<i32>(-25491i, 2147483647i), var_3.c), var_3.b, Struct_1(var_4.x, var_1.b), var_3.a.d), var_2.d.b.b, vec4<f32>(var_2.c.c.a, 702f, 525f, -1776f)))).a, all(!var_2.a.yz) && true);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_5) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(vec2<i32>(arg_2.a.x << (u_input.b.x % 32u), arg_2.a.x), func_3(countOneBits(abs(vec4<u32>(2426u, 1u, 0u, 0u))), ~(~vec2<u32>(u_input.b.x, u_input.a)) >> (~(vec2<u32>(u_input.b.x, 4294967295u) << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))).c.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-787f, -298f, -470f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1288f, 173f, 429f), vec3<f32>(-1450f, 116f, 170f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(409f, -255f, 950f))))), arg_2.a.zy, Struct_1(187f, 63405i));
    let var_2 = _wgslsmith_mod_i32((_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, var_1.e.b, -8720i, arg_2.a.x), ~vec4<i32>(var_1.e.b, 10909i, -2147483647i, var_1.a.x)) & (_wgslsmith_mod_i32(-8963i, arg_2.a.x) >> (u_input.a % 32u))) | 2147483647i, arg_2.a.x);
    var var_3 = vec4<u32>(0u, u_input.b.x & 4294967295u, ~4294967295u, countOneBits(u_input.a));
    var var_4 = ~26577u;
    return Struct_1(-263f, countOneBits(-var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(1i, 1i), func_4(func_1(), false, Struct_5(vec3<i32>(0i, -2147483647i, -42630i))), vec3<f32>(-814f, -142f, _wgslsmith_f_op_f32(f32(-1f) * -416f)), reverseBits(vec2<i32>(1i, 1i)), Struct_1(1f, func_3(min(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) >> (~vec4<u32>(4294967295u, u_input.a, u_input.a, 3644u) % vec4<u32>(32u)), u_input.b).d.d.x));
    let var_1 = ~vec2<i32>(firstLeadingBit(i32(-1i) * -2147483647i), 19311i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2279f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)) + -760f) - _wgslsmith_f_op_f32(var_0.b.a + var_0.e.a))) * 287f);
    var var_3 = var_0.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_f_op_f32(-var_0.e.a), all(vec2<bool>(true, true))))) < _wgslsmith_f_op_f32(round(191f));
    let var_5 = ~abs(vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_1.x, -10467i, var_1.x)) << (_wgslsmith_add_vec4_u32(abs(~vec4<u32>(u_input.a, 0u, u_input.a, 2155u)), reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 167869u)) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(36837u, 101521u, 92205u, u_input.b.x), vec4<u32>(0u, 4294967295u, u_input.a, u_input.b.x), max(vec4<u32>(1u, 63824u, u_input.a, u_input.b.x), vec4<u32>(4294967295u, 0u, u_input.a, 31686u)))) % vec4<u32>(32u));
    var var_6 = Struct_3(func_3(vec4<u32>(21104u, _wgslsmith_div_u32(~u_input.a, ~u_input.a), max(u_input.b.x, firstLeadingBit(74431u)), abs(0u)), ~countOneBits(~vec2<u32>(5339u, 0u))).c.a, Struct_1(_wgslsmith_f_op_f32(var_0.e.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1173f + -570f))), func_3(~vec4<u32>(u_input.b.x, 1u, u_input.a, 61602u), ~u_input.b).c.c.b), func_3(vec4<u32>(firstTrailingBit(18924u), _wgslsmith_div_u32(u_input.b.x, u_input.a) & u_input.b.x, _wgslsmith_clamp_u32(abs(u_input.a), u_input.b.x, ~u_input.b.x), 4294967295u), vec2<u32>(~(6287u ^ u_input.a), 1u)).d.a.b, var_0.a);
    let var_7 = func_3(~vec4<u32>(~u_input.a, ~u_input.a, 1u, ~u_input.b.x) ^ countOneBits(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(20026u, 18803u, u_input.a), vec3<u32>(u_input.b.x, 66146u, 1u)), 4294967295u, ~u_input.b.x)), ~max(~_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 4294967295u), u_input.b), u_input.b)).d;
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(~vec2<i32>(var_0.b.b, 0i)), vec4<i32>(_wgslsmith_mult_i32(var_6.d.x, var_0.e.b), firstTrailingBit(34033i), 14497i, var_6.b.b));
}

