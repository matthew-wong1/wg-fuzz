struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(-62i, Struct_1(vec2<u32>(0u, 52949u), false, true, 52378u)), Struct_2(34323i, Struct_1(vec2<u32>(110064u, 1u), false, false, 0u)), Struct_2(2147483647i, Struct_1(vec2<u32>(1u, 21412u), false, true, 0u)), Struct_2(44186i, Struct_1(vec2<u32>(1u, 146814u), true, true, 4294967295u)), Struct_2(i32(-2147483648), Struct_1(vec2<u32>(0u, 4294967295u), true, false, 1u)), Struct_2(-1i, Struct_1(vec2<u32>(1u, 1u), true, false, 0u)), Struct_2(-4443i, Struct_1(vec2<u32>(23805u, 0u), true, true, 31244u)), Struct_2(13442i, Struct_1(vec2<u32>(78428u, 1u), true, false, 14473u)), Struct_2(0i, Struct_1(vec2<u32>(1u, 41411u), true, false, 11228u)), Struct_2(1i, Struct_1(vec2<u32>(0u, 67497u), true, true, 31512u)), Struct_2(-1i, Struct_1(vec2<u32>(32895u, 1u), true, true, 0u)), Struct_2(21143i, Struct_1(vec2<u32>(4294967295u, 69484u), false, true, 0u)), Struct_2(i32(-2147483648), Struct_1(vec2<u32>(27464u, 13006u), true, false, 1u)), Struct_2(1i, Struct_1(vec2<u32>(37746u, 102395u), true, true, 5014u)), Struct_2(12846i, Struct_1(vec2<u32>(0u, 72499u), true, false, 36130u)), Struct_2(-22792i, Struct_1(vec2<u32>(1u, 24694u), false, true, 29844u)), Struct_2(2147483647i, Struct_1(vec2<u32>(68734u, 32994u), true, false, 1u)), Struct_2(2147483647i, Struct_1(vec2<u32>(4454u, 4294967295u), false, true, 44932u)), Struct_2(-1i, Struct_1(vec2<u32>(4294967295u, 4294967295u), true, true, 7664u)), Struct_2(-1i, Struct_1(vec2<u32>(4294967295u, 1u), false, false, 4294967295u)), Struct_2(i32(-2147483648), Struct_1(vec2<u32>(1u, 3499u), false, true, 0u)), Struct_2(-1i, Struct_1(vec2<u32>(29312u, 1154u), false, false, 1u)), Struct_2(6629i, Struct_1(vec2<u32>(1u, 36730u), false, true, 0u)), Struct_2(-19621i, Struct_1(vec2<u32>(47939u, 1u), true, false, 8006u)), Struct_2(15832i, Struct_1(vec2<u32>(0u, 0u), true, true, 0u)), Struct_2(1i, Struct_1(vec2<u32>(1u, 0u), true, true, 7169u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_5) -> vec4<u32> {
    var var_0 = arg_1.e.xwx;
    var_0 = arg_0.e.yxy;
    let var_1 = Struct_1(arg_1.a.a, true, var_0.x, 1u);
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-(vec4<i32>(-2147483647i, u_input.d, -2147483647i, -16649i) | vec4<i32>(u_input.b.x, u_input.c.x, -75388i, arg_0.d)) | firstLeadingBit(min(vec4<i32>(arg_1.d, 15887i, -1i, 0i), vec4<i32>(1i, 108i, -5839i, -1i))), (-vec4<i32>(arg_2.a, arg_0.d, arg_0.d, 0i) | vec4<i32>(arg_2.a, arg_0.d, u_input.d, arg_0.d)) << ((~vec4<u32>(59114u, 1u, 0u, arg_0.b) << ((vec4<u32>(arg_2.d, 82661u, 1u, 1u) | vec4<u32>(1u, 38120u, 77650u, arg_1.b)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_1.d, arg_1.d, arg_1.d, 25632i), countOneBits(vec4<i32>(arg_1.d, 1i, -17532i, 9539i))), vec4<i32>(max(abs(arg_0.d), 17510i), _wgslsmith_mod_i32(-arg_0.d, 12104i), firstLeadingBit(-1i), _wgslsmith_add_i32(-32337i, _wgslsmith_clamp_i32(arg_1.d, arg_1.d, 1i)))));
    var_0 = arg_0.e.yww;
    return max(min(select(vec4<u32>(1u, 74068u, 0u, 75567u) >> (~vec4<u32>(4294967295u, u_input.e, var_1.d, var_1.d) % vec4<u32>(32u)), max(vec4<u32>(u_input.e, 3154u, arg_0.b, 41472u), vec4<u32>(arg_1.b, 23286u, arg_1.b, arg_0.a.a.x)) >> (~vec4<u32>(u_input.e, var_1.d, 54972u, 4294967295u) % vec4<u32>(32u)), true), vec4<u32>(16742u, 47825u, ~countOneBits(0u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.e, arg_2.b, arg_2.d, arg_0.b), vec4<u32>(0u, arg_1.a.a.x, 105934u, 0u), vec4<bool>(arg_2.c, true, arg_0.c, false)), ~vec4<u32>(1u, u_input.e, arg_0.a.d, 4294967295u)))), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(arg_2.d >> (u_input.e % 32u), _wgslsmith_sub_u32(arg_1.a.d, 0u), _wgslsmith_clamp_u32(arg_0.a.d, 41161u, var_1.a.x), u_input.e)), ~countOneBits(~vec4<u32>(0u, 55259u, arg_2.b, arg_1.b))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(-u_input.c.x, arg_1.b);
    var var_1 = ~reverseBits(~0u);
    var_0 = Struct_2(-_wgslsmith_add_i32(1i, ~firstLeadingBit(-68813i)), Struct_1(_wgslsmith_sub_vec2_u32(~arg_1.b.a, vec2<u32>(~arg_2.a.x, u_input.e >> (arg_0.x % 32u))), false, false & !arg_1.b.c, arg_1.b.a.x));
    var var_2 = vec4<i32>(firstTrailingBit(arg_1.a), countOneBits(reverseBits(-(i32(-1i) * -48050i))), ~(var_0.a ^ 43437i), arg_1.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-571f, 127f)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(561f, 777f), vec2<f32>(1f, 1f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(-412f - _wgslsmith_f_op_f32(f32(-1f) * -1808f)))), vec2<f32>(1064f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1154f))))))));
    return var_3.x;
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(func_4(~vec4<u32>(u_input.e, u_input.e, 4294967295u, 28413u) & reverseBits(func_3(Struct_3(Struct_1(vec2<u32>(u_input.e, u_input.e), true, true, 1u), u_input.e, true, u_input.a, vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec2<u32>(u_input.e, u_input.e), true, true, 20184u), u_input.e, true, 2545i, vec4<bool>(true, true, true, false)), Struct_5(-5539i, 36566u, false, 0u))), Struct_2(u_input.d, Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(1u, u_input.e)), true, false, u_input.e)), Struct_1(firstLeadingBit(firstLeadingBit(vec2<u32>(u_input.e, 4294967295u))), true, false, 39006u))));
    var var_1 = _wgslsmith_clamp_u32(u_input.e, 0u, _wgslsmith_add_u32(~(~_wgslsmith_div_u32(u_input.e, u_input.e)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 0u, u_input.e), vec3<u32>(u_input.e, u_input.e, u_input.e)), abs(vec3<u32>(47648u, u_input.e, 24691u)))));
    var_1 = min(u_input.e, 22516u);
    var var_2 = Struct_2(u_input.d, Struct_1(~(~vec2<u32>(56218u, u_input.e)), any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, false, true), 255f >= var_0.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)) & true, 61013u));
    let var_3 = u_input.b.yy;
    return Struct_3(Struct_1(select(abs(var_2.b.a), var_2.b.a, select(vec2<bool>(var_2.b.b, var_2.b.b), !vec2<bool>(var_2.b.b, var_2.b.b), var_2.b.c)), false, (var_2.b.b & true) && all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), var_2.b.a.x), var_2.b.d, !((_wgslsmith_mod_i32(1i, var_3.x) << (116846u % 32u)) != min(abs(var_3.x), _wgslsmith_div_i32(2147483647i, var_2.a))), firstLeadingBit(-46148i), select(select(select(!vec4<bool>(var_2.b.c, var_2.b.c, var_2.b.b, false), vec4<bool>(var_2.b.c, false, var_2.b.b, false), false), !select(vec4<bool>(var_2.b.b, false, true, var_2.b.b), vec4<bool>(false, false, var_2.b.b, false), true), !(!vec4<bool>(false, var_2.b.c, var_2.b.c, var_2.b.c))), vec4<bool>(true, ~var_2.b.d >= reverseBits(0u), false, var_2.b.c), var_2.b.b));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 26>();
    var var_0 = func_2();
    global0 = array<Struct_2, 26>();
    var var_1 = firstTrailingBit(1u) ^ u_input.e;
    var var_2 = var_0.a;
    return Struct_3(func_2().a, 1u, any(func_2().e.xxy) && !var_0.c, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, firstTrailingBit(4218i)), abs(u_input.b.xy)), vec4<bool>(false, true, !var_0.c, all(!var_0.e.zwx)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>) -> f32 {
    let var_0 = ~arg_0.a.a;
    var var_1 = abs(vec4<u32>(~_wgslsmith_mult_u32(~43128u, u_input.e), 1u, _wgslsmith_mult_u32(var_0.x, firstLeadingBit(var_0.x)), u_input.e >> (abs(u_input.e) % 32u)));
    var var_2 = ~(-54662i);
    global0 = array<Struct_2, 26>();
    let var_3 = 1f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f)));
}

fn func_6(arg_0: f32, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_5(u_input.d << (func_3(Struct_3(func_1().a, u_input.e, true, ~u_input.b.x, vec4<bool>(true, true, true, true)), func_2(), Struct_5(-36794i, 0u, true, u_input.e)).x % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.e, u_input.e), 66537u), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, 4189u, u_input.e), vec3<u32>(4294967295u, u_input.e, u_input.e)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.e, 4294967295u), vec3<u32>(4294967295u, 34637u, 4294967295u))))), func_2().b <= 0u, func_2().b);
    let var_1 = ~_wgslsmith_sub_vec2_i32(-u_input.c.zy, vec2<i32>(-2147483647i, select(firstTrailingBit(u_input.c.x), ~arg_1.x, u_input.c.x <= 2147483647i)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(arg_0, -609f, true)), _wgslsmith_f_op_f32(ceil(622f)), 824f);
    var var_3 = Struct_4(~(~(vec3<u32>(16732u, 27222u, 1245u) << (vec3<u32>(var_0.b, u_input.e, var_0.b) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 51849u, u_input.e), vec3<u32>(var_0.b, var_0.b, var_0.d)) % vec3<u32>(32u))), vec2<u32>(~u_input.e, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.e, 65777u), countOneBits(4294967295u))) ^ _wgslsmith_clamp_vec2_u32(~(vec2<u32>(var_0.d, 0u) ^ vec2<u32>(var_0.d, 54512u)), vec2<u32>(var_0.d, ~1u), ~(~vec2<u32>(49337u, var_0.b))), !(!var_0.c), countOneBits(select(vec4<i32>(~0i, arg_1.x, 2147483647i, _wgslsmith_clamp_i32(21096i, var_0.a, var_1.x)), select(arg_1, vec4<i32>(var_0.a, u_input.c.x, -13756i, 0i) << (vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.e) % vec4<u32>(32u)), false), var_0.c)), Struct_2(u_input.a, Struct_1(~vec2<u32>(0u, 0u), func_1().c, false, func_3(func_2(), func_1(), Struct_5(-2147483647i, 36732u, var_0.c, u_input.e)).x)));
    let var_4 = Struct_4(var_3.a, ~((~vec2<u32>(1u, var_3.e.b.d) & ~var_3.e.b.a) >> (var_3.e.b.a % vec2<u32>(32u))), var_0.c, select(firstLeadingBit(_wgslsmith_add_vec4_i32(reverseBits(arg_1), vec4<i32>(var_0.a, var_3.d.x, 72142i, -28876i))), abs(var_3.d), true), global0[_wgslsmith_index_u32(var_3.a.x, 26u)]);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    var var_0 = select(vec4<bool>(true, false, false, any(vec2<bool>(true, true))), vec4<bool>(!(u_input.c.x <= u_input.c.x) | true, true, true & all(vec3<bool>(true, true, true)), false), select(vec4<bool>(false, true, !any(vec4<bool>(false, true, true, true)), select(57080u == u_input.e, all(vec4<bool>(true, false, false, false)), true)), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true, min(u_input.e, 31969u) < ~4294967295u, select(true, false, true)), any(vec3<bool>(true, true, true))));
    global0 = array<Struct_2, 26>();
    var var_1 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(), select(~vec4<i32>(404i, 20237i, u_input.d, 26072i), vec4<i32>(559i, u_input.a, 1i, u_input.d) & vec4<i32>(64342i, 0i, u_input.b.x, 81062i), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))) + -917f), _wgslsmith_clamp_vec4_i32(vec4<i32>(7410i, -_wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(u_input.d, u_input.a)), u_input.a, ~_wgslsmith_mod_i32(u_input.c.x, u_input.d)), ~countOneBits(vec4<i32>(-22463i, 46581i, u_input.d, 2147483647i)), reverseBits(vec4<i32>(_wgslsmith_mult_i32(-32810i, 0i), abs(u_input.a), u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, -22322i), vec3<i32>(-5122i, -23427i, u_input.a))))));
    let var_2 = select(var_0.yz, !var_0.xz, !vec2<bool>(all(vec2<bool>(var_0.x, var_0.x)), true));
    let var_3 = Struct_2(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(624f))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-16313i, u_input.b.x, 15811i, var_1.e.a), ~var_1.d, false), vec4<i32>(u_input.d, var_1.d.x, 1i, -2021i) ^ (vec4<i32>(14359i, u_input.a, 2147483647i, 2147483647i) ^ var_1.d))).d.x, func_1().a);
    var_0 = !func_1().e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f)), abs(-u_input.a), countOneBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-60102i, _wgslsmith_mod_i32(u_input.c.x, 0i)), _wgslsmith_clamp_i32(-9426i, 7046i, var_3.a) | u_input.b.x)), abs(min(firstTrailingBit(firstLeadingBit(vec3<u32>(4294967295u, var_1.a.x, 96881u))), var_1.a)));
}

