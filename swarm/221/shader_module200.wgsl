struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(max(select(~4294967295u, 15760u, true), ~1u), _wgslsmith_clamp_u32(~reverseBits(62043u), 1u, ~(~11371u)), 4294967295u, 1u), vec4<u32>(1u, 1u, abs(1u), min(1u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(513u, 0u, 38087u, 4294967295u), vec4<u32>(65488u, 93928u, 9781u, 1u)), ~2447u))), ~firstLeadingBit(reverseBits(reverseBits(vec4<u32>(1u, 1u, 4294967295u, 1u)))));
    var_0 = ~vec4<u32>(countOneBits(_wgslsmith_add_u32(var_0.x, var_0.x)), 18398u, ~(58014u << (var_0.x % 32u)), ~_wgslsmith_mult_u32(var_0.x, var_0.x)) | vec4<u32>(~(_wgslsmith_dot_vec2_u32(var_0.zz, var_0.zx) ^ var_0.x), var_0.x, max(var_0.x, 14905u), firstLeadingBit(36358u));
    let var_1 = !vec3<bool>(!any(vec3<bool>(true, true, true)), false, true);
    var var_2 = vec2<bool>(all(!select(select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, true, true), vec4<bool>(true, false, var_1.x, true)), !vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true))), (var_1.x && ((var_1.x == true) & select(var_1.x, var_1.x, var_1.x))) || true);
    var var_3 = ~firstLeadingBit(countOneBits(-vec3<i32>(u_input.a.x, u_input.a.x, -15684i)) | (vec3<i32>(-1i) * -u_input.a));
    return 1000f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> vec3<i32> {
    var var_0 = arg_0;
    let var_1 = Struct_1(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), ~arg_1.x, vec4<i32>(~min(var_0.d.x, countOneBits(arg_0.d.x)), abs(8486i), (i32(-1i) * -30568i) >> (var_0.e % 32u), ~_wgslsmith_mod_i32(firstTrailingBit(-24248i), var_0.d.x)), ~1u);
    var_0 = Struct_1(var_1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.b)))), ~arg_0.e, var_1.d, var_0.c);
    var_0 = Struct_1(all(vec2<bool>(!(!arg_2), (true && arg_2) || any(vec2<bool>(var_0.a, var_0.a)))), var_1.b, _wgslsmith_clamp_u32(min(132785u, 0u), _wgslsmith_clamp_u32(71468u, _wgslsmith_div_u32(max(var_1.e, var_1.c), ~arg_0.c), 254u), var_0.e), ~(min(vec4<i32>(18853i, -1i, 0i, 1i), arg_0.d << (vec4<u32>(0u, var_1.c, 1u, 22912u) % vec4<u32>(32u))) << (abs(vec4<u32>(arg_1.x, var_0.c, 1u, arg_1.x)) % vec4<u32>(32u))), 1u);
    var var_2 = arg_0.a;
    return _wgslsmith_clamp_vec3_i32((var_1.d.xzw ^ min(arg_0.d.xxz, -var_0.d.xzx)) >> (abs(~vec3<u32>(var_0.c, 55499u, var_1.c)) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -2147483647i, 1i, -2147483647i), select(vec3<i32>(abs(-var_0.d.x), min(firstTrailingBit(-14551i), reverseBits(1i)), -u_input.a.x), vec3<i32>(-9265i, select(arg_0.d.x ^ -2147483647i, var_0.d.x, !arg_2), 0i), all(select(!vec4<bool>(var_0.a, false, arg_0.a, true), vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(true, true, true, arg_2)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    return Struct_1((~(~arg_1.c) > 0u) & false, -1430f, 91607u, firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(select(arg_3.x, u_input.a.x, false), firstLeadingBit(arg_3.x)), arg_1.d.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 3971i, -2147483647i), arg_1.d.ywy), -1i), -1i)), abs(~(~arg_1.e)) ^ arg_1.e);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -2873i, u_input.a.x, -65383i), -vec4<i32>(u_input.a.x, 6429i, 1i, -38557i)), 12716i, i32(-1i) * -2147483647i), func_2(Struct_1(true, _wgslsmith_f_op_f32(1029f + 1311f), ~0u, ~vec4<i32>(u_input.a.x, -1i, -4969i, -2147483647i), 19108u), vec2<u32>(~36785u, 4294967295u), true)), Struct_1(any(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1255f, 1254f))) + _wgslsmith_f_op_f32(func_3())), ~1u, vec4<i32>(19413i, ~(-u_input.a.x), -1i, u_input.a.x), ~(~reverseBits(39120u))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -718f), 1f)), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_mult_vec3_i32(vec3<i32>(-62589i, _wgslsmith_mult_i32(u_input.a.x >> (49775u % 32u), 1403i >> (0u % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, 2147483647i), vec3<i32>(u_input.a.x, 17568i, -32634i)), u_input.a.x)), vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, 1497i ^ u_input.a.x, -14350i), 1i ^ ~u_input.a.x, min(~u_input.a.x, abs(u_input.a.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b, -252f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 224f) - vec2<f32>(var_0.b, 971f))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, var_0.b), vec2<f32>(var_0.b, -924f))), vec2<f32>(-1000f, -1000f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 332f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-366f, -502f), vec2<f32>(2204f, -275f))))))));
    let var_2 = true;
    let var_3 = func_4(vec3<i32>(-(~countOneBits(u_input.a.x)), -29648i, _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, var_0.d.x), var_0.d.zwy), var_0.d.xxw)), var_0, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1107f - -1000f) + -524f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 808f)), _wgslsmith_f_op_f32(1755f - _wgslsmith_f_op_f32(-var_0.b))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1912f - 1266f) * var_0.b), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x)))))), min(var_0.d.yxz, var_0.d.wwz));
    var var_4 = true;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(169f, 1354f));
    var_0 = func_4(vec3<i32>(1i, 2147483647i, -58122i), func_4(vec3<i32>(~var_0.d.x, min(_wgslsmith_mult_i32(35415i, -17533i), -10042i), 0i), Struct_1(true, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-1176f - -485f)), min(_wgslsmith_div_u32(var_0.e, var_0.c), firstTrailingBit(0u)), abs(vec4<i32>(60794i, var_0.d.x, var_0.d.x, u_input.a.x)) & -vec4<i32>(25184i, var_0.d.x, u_input.a.x, -2147483647i), var_0.e), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-313f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(var_1.x * -641f)), var_0.b), var_0.d.xxw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, _wgslsmith_f_op_f32(trunc(1923f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_add_vec3_i32(~(-(~u_input.a)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, var_0.d.x, var_0.d.x) << (vec3<u32>(7751u, var_0.e, var_0.c) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, var_0.d.x, var_0.d.x)), vec3<i32>(0i, abs(var_0.d.x), _wgslsmith_div_i32(u_input.a.x, 0i)))));
    var var_2 = Struct_1(var_0.a, var_1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 0u), abs(vec2<u32>(var_0.c, var_0.e))) | ~abs(vec2<u32>(0u, var_0.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(func_4(vec3<i32>(u_input.a.x, var_0.d.x, 26436i), Struct_1(true, var_0.b, 37552u, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 47736i), 1u), vec3<f32>(var_1.x, var_0.b, 968f), vec3<i32>(u_input.a.x, -1i, var_0.d.x)).e, ~var_0.c), vec2<u32>(~0u, ~var_0.e), _wgslsmith_sub_vec2_u32(min(vec2<u32>(var_0.c, 35791u), vec2<u32>(81019u, 1u)), vec2<u32>(var_0.e, var_0.e)))), -func_1().d, firstLeadingBit(80334u));
    var_0 = Struct_1(any(!select(select(vec4<bool>(var_0.a, var_2.a, var_2.a, var_0.a), vec4<bool>(false, var_2.a, var_0.a, var_2.a), var_0.a), vec4<bool>(false, var_2.a, var_2.a, var_0.a), select(vec4<bool>(var_2.a, var_0.a, var_2.a, var_2.a), vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(var_2.a, false, var_0.a, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), ~1u, var_2.d & var_0.d, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>((0u | var_2.c) & _wgslsmith_dot_vec4_u32(vec4<u32>(97247u, var_0.c, 4294967295u, 20010u), vec4<u32>(var_2.e, var_2.c, var_2.c, var_0.e)), max(var_0.e, _wgslsmith_add_u32(var_0.e, 4294967295u))), vec2<u32>(54420u, 8980u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 1000f, 1926f, 240f) + vec4<f32>(119f, var_1.x, -987f, 1048f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-311f, var_1.x, var_0.b, var_0.b), vec4<f32>(var_1.x, 412f, 175f, 613f), vec4<bool>(true, true, var_0.a, true))))) + vec4<f32>(-1443f, var_1.x, _wgslsmith_div_f32(452f, 977f), _wgslsmith_div_f32(-475f, var_0.b)))), 0i);
}

