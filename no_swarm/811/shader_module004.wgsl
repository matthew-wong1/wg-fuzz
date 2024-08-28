struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    var var_0 = !vec4<bool>(select(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), true), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), true, !(~arg_0 == _wgslsmith_div_i32(u_input.b, -16285i)));
    var_0 = !vec4<bool>(var_0.x, false, !(true | (false && var_0.x)), true);
    var var_1 = Struct_2(Struct_1(!var_0.zy, ~((vec4<i32>(arg_0, arg_0, arg_0, u_input.c) << (vec4<u32>(0u, arg_1.x, 0u, arg_1.x) % vec4<u32>(32u))) ^ (vec4<i32>(-25776i, arg_0, 28397i, u_input.c) << (vec4<u32>(arg_3.x, arg_3.x, u_input.d, 5812u) % vec4<u32>(32u)))), vec4<bool>(any(vec4<bool>(true, true, var_0.x, false)), false, true, (var_0.x && var_0.x) & !var_0.x), 1742f, 27464i), Struct_1(!vec2<bool>(true, var_0.x), -_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(1i, u_input.b, -9303i, arg_0)), abs(vec4<i32>(0i, 1i, -11515i, u_input.b))), !(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), var_0.x)), _wgslsmith_f_op_f32(-480f - 1053f), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-52465i, u_input.c, arg_0), vec3<i32>(0i, 22224i, 0i)), abs(1i), var_0.x)));
    var_0 = !vec4<bool>(var_1.b.a.x, var_1.a.a.x & !(!var_0.x), false, all(!vec4<bool>(true, var_1.b.a.x, var_1.b.c.x, var_0.x)));
    var_1 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_mod_vec4_i32(-var_1.b.b, max(vec4<i32>(-1i, -2147483647i, arg_0, 10320i), abs(vec4<i32>(-12807i, arg_0, u_input.c, arg_0)))), var_1.b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.d))), -435f), ~(~arg_0)), var_1.a);
    return countOneBits(~(select(123650u | u_input.d, ~19423u, any(var_0.xyy)) & ~(~0u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_mod_i32(u_input.c, -2147483647i);
    let var_1 = vec3<bool>(true, _wgslsmith_mod_u32(func_3(arg_2.b.b.x, vec3<u32>(56137u, 62884u, 1u), countOneBits(arg_0.a.x), arg_0.a.zz), ~abs(u_input.d)) == (arg_0.a.x >> (abs(77332u) % 32u)), arg_2.b.a.x);
    let var_2 = Struct_1(select(vec2<bool>(true, true), !arg_2.a.a, !all(arg_1.c.yyw)), abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, arg_0.b.x, 70214i, u_input.b), vec4<i32>(arg_2.a.b.x, u_input.c, arg_1.e, u_input.a.x)), arg_1.b, arg_1.b ^ vec4<i32>(69155i, arg_0.b.x, -26026i, arg_1.b.x))), arg_2.a.c, _wgslsmith_f_op_f32(arg_1.d - 627f), 1i);
    var_0 = max(arg_1.e, i32(-1i) * -countOneBits(arg_2.a.b.x));
    var var_3 = vec2<u32>(~_wgslsmith_mult_u32(arg_0.a.x, countOneBits(~arg_0.a.x)), ~4294967295u);
    return _wgslsmith_div_f32(arg_2.a.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1313f - arg_2.a.d) + -535f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = 535f;
    let var_1 = Struct_3((vec4<u32>(_wgslsmith_mult_u32(u_input.d, 4294967295u), u_input.d, _wgslsmith_div_u32(u_input.d, u_input.d), u_input.d) & (firstLeadingBit(vec4<u32>(111198u, 1u, 4294967295u, u_input.d)) ^ firstLeadingBit(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d)))) | select(vec4<u32>(abs(u_input.d), min(56658u, 10636u), ~0u, u_input.d), ~vec4<u32>(52763u, u_input.d, 5225u, 4294967295u), select(any(arg_1.a), false & arg_1.a.x, true)), reverseBits(vec3<i32>(-7395i, 1i, u_input.b) | arg_1.b.zwz));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.d))))));
    let var_3 = Struct_2(Struct_1(vec2<bool>(arg_1.a.x, -580f >= arg_1.d), vec4<i32>(arg_1.e, _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, 1i), _wgslsmith_sub_i32(arg_1.e, u_input.c), 1i), -2147483647i, -u_input.b), !arg_1.c, arg_1.d, u_input.c | abs(-37926i)), Struct_1(select(!select(vec2<bool>(arg_1.a.x, arg_1.c.x), arg_1.a, vec2<bool>(arg_1.a.x, true)), select(arg_1.a, vec2<bool>(arg_1.c.x, true), vec2<bool>(arg_1.a.x, false)), !arg_1.c.wz), vec4<i32>(1i ^ arg_1.e, 1i, _wgslsmith_clamp_i32(2147483647i, var_1.b.x, var_1.b.x) ^ (arg_1.b.x | arg_1.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(30070i, 15944i), arg_1.b.zx) & _wgslsmith_div_i32(2147483647i, -58406i)), vec4<bool>(false, !arg_1.c.x, arg_1.c.x, false), 244f, 22344i));
    var_2 = _wgslsmith_f_op_f32(min(-122f, var_0));
    return vec2<bool>(!(!var_3.b.c.x), any(select(select(var_3.a.c, select(var_3.a.c, var_3.a.c, arg_1.c), !var_3.b.c.x), select(arg_1.c, arg_1.c, arg_1.c), any(var_3.a.c.zxz))));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(select(select(!vec2<bool>(false, arg_0.x), vec2<bool>(arg_3.x, false), arg_3.x), select(func_4(vec3<f32>(arg_1, 855f, arg_1), Struct_1(vec2<bool>(true, arg_3.x), vec4<i32>(u_input.a.x, u_input.a.x, 1i, -24961i), vec4<bool>(false, true, arg_3.x, false), arg_1, u_input.a.x)), arg_3, select(arg_0.zy, arg_3, arg_3)), vec2<bool>(true, all(vec3<bool>(true, true, false)))), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, -116i), vec4<i32>(u_input.b, 0i, u_input.a.x, u_input.c)), vec4<i32>(u_input.b, 22994i, -1786i, u_input.b) & vec4<i32>(u_input.b, u_input.a.x, 8174i, 17301i), ~vec4<i32>(2147483647i, 30422i, u_input.a.x, u_input.a.x)), !vec4<bool>(true, !arg_3.x, arg_0.x, !arg_3.x), -577f, ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, u_input.c, -30978i), vec3<i32>(u_input.b, -1i, 7779i)), _wgslsmith_div_vec3_i32(vec3<i32>(68021i, -2147483647i, u_input.a.x), vec3<i32>(u_input.c, u_input.a.x, u_input.c)))), Struct_1(select(arg_0.zx, func_4(vec3<f32>(448f, 1990f, 2042f), Struct_1(vec2<bool>(false, arg_3.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x), vec4<bool>(true, arg_0.x, true, false), -1160f, u_input.c)), (arg_3.x | arg_0.x) & true), vec4<i32>(min(-1i, firstTrailingBit(u_input.a.x)), firstTrailingBit(_wgslsmith_add_i32(17559i, 1i)), u_input.a.x, u_input.b), !select(select(vec4<bool>(true, false, arg_0.x, arg_3.x), vec4<bool>(arg_3.x, arg_0.x, arg_0.x, true), arg_0.x), select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(false, true, true, false), arg_3.x), vec4<bool>(true, false, true, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-225f + _wgslsmith_f_op_f32(1000f + arg_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 501f))), -u_input.a.x));
    let var_1 = var_0.b;
    var var_2 = Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(_wgslsmith_sub_i32(~var_0.a.b.x, u_input.c), _wgslsmith_dot_vec4_i32(var_0.a.b, var_0.a.b >> (vec4<u32>(arg_2, u_input.d, 16540u, 1u) % vec4<u32>(32u))), ~(i32(-1i) * -41721i), ~0i & (var_1.b.x & -29364i)), vec4<bool>(true, false, true != any(vec2<bool>(var_1.c.x, arg_3.x)), 9403u > ~arg_2), arg_1, ~(var_0.a.b.x & 10567i) | _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.b.x, -13182i), _wgslsmith_clamp_i32(-2350i, 55371i, -5282i))), var_0.b);
    let var_3 = vec3<i32>(abs(u_input.a.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-36646i, -2147483647i), -var_1.b.ww), _wgslsmith_clamp_i32(-(~var_2.b.b.x), var_1.b.x, ~_wgslsmith_dot_vec4_i32(var_0.a.b, vec4<i32>(0i, var_1.e, 2147483647i, var_0.a.e)))), -1i);
    var var_4 = firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, ~var_1.e), 2147483647i));
    return var_1;
}

fn func_1() -> i32 {
    let var_0 = func_5(vec3<bool>(true, true, true), 1000f, ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), ~vec3<u32>(u_input.d, u_input.d, u_input.d))), !func_4(vec3<f32>(_wgslsmith_f_op_f32(select(1025f, -678f, true)), _wgslsmith_f_op_f32(func_2(Struct_3(vec4<u32>(39285u, u_input.d, u_input.d, 10871u), vec3<i32>(u_input.a.x, u_input.a.x, u_input.b)), Struct_1(vec2<bool>(true, true), vec4<i32>(-29258i, 0i, -2147483647i, 1i), vec4<bool>(false, false, false, true), 1036f, u_input.c), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.b), vec4<bool>(true, false, false, false), 1402f, -1i), Struct_1(vec2<bool>(false, true), vec4<i32>(-21442i, u_input.b, u_input.c, u_input.b), vec4<bool>(true, false, true, true), 1292f, -19578i)))), 290f), Struct_1(vec2<bool>(true, true), countOneBits(vec4<i32>(7207i, u_input.b, u_input.b, -1i)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), _wgslsmith_f_op_f32(f32(-1f) * -167f), firstLeadingBit(0i))));
    var var_1 = vec3<u32>(33045u, u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u | u_input.d, u_input.d), reverseBits(~vec2<u32>(u_input.d, 54103u)) << (vec2<u32>(u_input.d, ~u_input.d) % vec2<u32>(32u))));
    let var_2 = ~vec3<u32>(var_1.x, ~22097u, abs(u_input.d ^ u_input.d));
    var_1 = ~firstLeadingBit(max(vec3<u32>(select(u_input.d, u_input.d, var_0.a.x), countOneBits(76913u), 26611u), vec3<u32>(var_2.x, 1u, 9891u)));
    let var_3 = Struct_3(vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(54136u, 20631u, var_2.x), var_2), ~39759u, !var_0.a.x), ~_wgslsmith_dot_vec2_u32(var_1.xz, vec2<u32>(4294967295u, var_1.x)), 1u, u_input.d >> (~4294967295u % 32u)) >> (vec4<u32>(firstLeadingBit(var_2.x), ~0u, 46213u, 36984u) % vec4<u32>(32u)), vec3<i32>(var_0.e, _wgslsmith_dot_vec4_i32(select(var_0.b, var_0.b, var_1.x < var_2.x), var_0.b), -u_input.b));
    return -u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | (func_1() == _wgslsmith_mult_i32(select(43073i, u_input.b, all(vec2<bool>(false, false))), 1i));
    var var_1 = Struct_1(vec2<bool>(all(vec2<bool>(true, true)), !(!(3250i >= u_input.a.x))), ~vec4<i32>(func_5(vec3<bool>(false, true, false), 655f, u_input.d, vec2<bool>(true, true)).e | _wgslsmith_clamp_i32(8843i, -1i, u_input.a.x), 1i & ~u_input.b, countOneBits(u_input.c), max(~978i, u_input.a.x)), select(func_5(vec3<bool>(true, false, u_input.b == u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -634f), ~u_input.d, vec2<bool>(true, true)).c, vec4<bool>(true, true, true, true), false), 1416f, 58296i);
    var_1 = Struct_1(vec2<bool>(!select(var_1.a.x, true, var_1.c.x) & var_1.c.x, any(var_1.c)), func_5(func_5(vec3<bool>(var_1.c.x, u_input.b != -38392i, false), 1f, (u_input.d >> (u_input.d % 32u)) >> (_wgslsmith_clamp_u32(u_input.d, 4294967295u, u_input.d) % 32u), func_5(var_1.c.wzy, var_1.d, firstLeadingBit(15806u), vec2<bool>(var_1.c.x, var_1.a.x)).a).c.zwy, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(147f + var_1.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2184f, var_1.d) * _wgslsmith_f_op_f32(trunc(199f))), true)), _wgslsmith_mult_u32(~u_input.d, abs(~53905u)), select(vec2<bool>(true, var_1.a.x), vec2<bool>(u_input.b >= var_1.e, false), !any(vec3<bool>(false, var_1.a.x, var_1.c.x)))).b, !vec4<bool>(!all(var_1.a), any(select(var_1.c.zyz, var_1.c.yyy, vec3<bool>(false, var_1.c.x, var_1.c.x))), !(var_1.d == -1902f), true), -1955f, var_1.e);
    var var_2 = func_5(vec3<bool>(true, all(var_1.c), any(var_1.c.zw) != true), _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1616f)) * _wgslsmith_f_op_f32(func_2(Struct_3(vec4<u32>(4294967295u, u_input.d, 68715u, u_input.d), var_1.b.wwz), Struct_1(vec2<bool>(var_1.c.x, var_1.c.x), var_1.b, vec4<bool>(true, true, false, false), var_1.d, u_input.c), Struct_2(Struct_1(vec2<bool>(var_1.c.x, false), var_1.b, vec4<bool>(false, false, true, true), 464f, var_1.e), Struct_1(var_1.a, vec4<i32>(-9964i, 68180i, u_input.b, var_1.e), vec4<bool>(var_1.c.x, var_1.a.x, true, true), var_1.d, var_1.e)))))))), u_input.d, func_5(select(select(func_5(var_1.c.ywx, var_1.d, 33531u, var_1.c.yz).c.www, var_1.c.yxz, true), vec3<bool>(var_1.c.x, true, var_1.c.x && true), func_5(vec3<bool>(true, true, var_1.a.x), _wgslsmith_f_op_f32(-915f + -736f), u_input.d, !vec2<bool>(var_1.c.x, true)).c.xxx), var_1.d, u_input.d, vec2<bool>(true, any(vec2<bool>(false, var_1.a.x)) | var_1.a.x)).a);
    var_2 = Struct_1(!var_2.c.xx, firstTrailingBit(vec4<i32>(1i, -1i, _wgslsmith_add_i32(-17339i, ~var_1.e), -var_1.e)), var_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(547f - var_1.d), -2361f)))), -1256f), 0i);
    var var_3 = -firstTrailingBit(-var_1.b.wzy);
    var_1 = Struct_1(!var_1.c.zy, firstLeadingBit(var_2.b), var_1.c, var_2.d, -(_wgslsmith_mult_i32(max(u_input.b, u_input.b), var_2.b.x | var_3.x) << (~(~u_input.d) % 32u)));
    var var_4 = Struct_1(select(vec2<bool>(var_2.c.x, true), var_2.a, vec2<bool>(true, any(vec2<bool>(var_2.c.x, false)))), var_1.b, vec4<bool>(false, any(!vec3<bool>(true, true, var_1.c.x)) && !all(vec4<bool>(false, false, var_1.c.x, var_2.a.x)), true, var_2.c.x), var_2.d, ~(firstTrailingBit(countOneBits(-18770i)) & firstLeadingBit(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

