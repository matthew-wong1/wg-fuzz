struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(vec4<i32>(abs(reverseBits(arg_0.a.a.x)), abs(0i), _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.a.b.x, arg_0.a.a.x), max(-1i, arg_0.a.b.x)), -arg_0.a.b.x >> (arg_0.a.c % 32u)), i32(-1i) * -62908i), -vec3<i32>(_wgslsmith_div_i32(arg_0.a.b.x & arg_0.a.b.x, -arg_0.a.b.x), ~arg_0.a.b.x, ~(-28929i >> (0u % 32u))), _wgslsmith_sub_u32(~(~select(1u, 14802u, false)), arg_0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.d)) - -1341f));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(~(~_wgslsmith_dot_vec4_i32(var_0.a, arg_0.a.a)), ~countOneBits(-47359i)), 1i);
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(reverseBits(-6269i), i32(-1i) * -var_1.x), countOneBits(select(4438i, _wgslsmith_dot_vec2_i32(arg_0.a.a.zw, arg_0.a.a.yz), true)), ~_wgslsmith_dot_vec2_i32(~arg_0.a.b.zy, ~vec2<i32>(-2147483647i, var_1.x)), var_1.x), var_0.a);
    var var_3 = arg_0.a;
    let var_4 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), 23257i <= select(-26095i, abs(-1i), select(false, true, true))));
    return 4294967295u;
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = arg_0.a;
    let var_1 = arg_0.a;
    var var_2 = Struct_2(var_1);
    let var_3 = vec4<i32>(~_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(arg_0.a.a.x), var_1.a.x), 1i >> (var_0.c % 32u)), var_2.a.b.x, 2147483647i, var_2.a.a.x & -_wgslsmith_mult_i32(arg_0.a.b.x, var_2.a.b.x));
    var_2 = arg_0;
    return abs(var_1.a & vec4<i32>(firstLeadingBit(1i), var_3.x | _wgslsmith_mult_i32(arg_0.a.b.x, 6596i), firstLeadingBit(-2127i), ~(-1726i) << (0u % 32u)));
}

fn func_2() -> u32 {
    let var_0 = all(select(select(vec2<bool>(select(true, true, true), true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_add_vec4_i32(func_4(Struct_2(Struct_1(-vec4<i32>(-978i, 1i, 1i, 0i), ~vec3<i32>(-12377i, -1i, 26493i), func_3(Struct_2(Struct_1(vec4<i32>(-3755i, -1i, -22105i, 50033i), vec3<i32>(1i, -2147483647i, 1i), 4294967295u, 1000f))), -541f))), vec4<i32>(1688i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-14679i, 2147483647i, 10941i, -35356i), vec4<i32>(-36290i, 11493i, 2147483647i, -30402i)) & min(~2147483647i, _wgslsmith_clamp_i32(-48583i, -38496i, 1i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 2147483647i), vec3<i32>(-1i, -26922i, 251i)), func_4(Struct_2(Struct_1(vec4<i32>(-12539i, 6190i, -1i, 43145i), vec3<i32>(15114i, 0i, 8605i), 27466u, -103f))).x), min(_wgslsmith_clamp_i32(1i, 26811i, 2147483647i), -22298i))));
    var var_2 = var_1;
    var var_3 = Struct_2(Struct_1(var_1, var_1.xyy, _wgslsmith_add_u32(_wgslsmith_div_u32(min(63162u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 25508u, 5626u), vec3<u32>(1u, u_input.a.x, 3107u))), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f))));
    var var_4 = Struct_1(~vec4<i32>(_wgslsmith_add_i32(var_1.x, var_1.x), -46354i, i32(-1i) * -36105i, _wgslsmith_dot_vec3_i32(-var_3.a.a.yxy, var_1.xyz)), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, _wgslsmith_mult_i32(25415i, 52845i) >> (u_input.a.x % 32u), -33759i), var_2.yxz), ~reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(13627u, 143225u, u_input.a.x), vec3<u32>(var_3.a.c, 4294967295u, u_input.a.x)), firstTrailingBit(vec3<u32>(1u, u_input.a.x, var_3.a.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f + 476f)))));
    return var_4.c;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = arg_3;
    let var_1 = vec2<bool>(639i != (0i | arg_3.b.x), true);
    var var_2 = arg_1.a;
    let var_3 = vec4<u32>(~(~(~arg_3.c)) << (arg_1.a.c % 32u), abs(arg_1.a.c), 9287u, func_2());
    var_2 = arg_3;
    return vec3<bool>(var_1.x, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))), !vec4<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(false, true)), select(false, false, true), true), 1000f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f))))), vec4<bool>(true, true, true, false), vec4<bool>(!any(vec3<bool>(false, true, false)), any(!func_1(vec3<i32>(0i, 2147483647i, -2147483647i), Struct_2(Struct_1(vec4<i32>(2147483647i, -48962i, 0i, 47126i), vec3<i32>(1i, 31i, 15665i), u_input.a.x, 528f)), vec2<i32>(-21058i, 1i), Struct_1(vec4<i32>(62726i, 2147483647i, -6157i, -1i), vec3<i32>(0i, 1i, -3494i), u_input.a.x, 1000f))), true, (u_input.a.x << (61350u % 32u)) > 2346u));
    let var_1 = !(!vec2<bool>(false, !any(vec2<bool>(var_0.x, false))));
    let var_2 = ~(-33900i);
    var var_3 = var_2;
    var_3 = max(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(var_2, var_2, var_2)), select(vec3<i32>(-1i, var_2, 67004i), vec3<i32>(-30159i, 1i, 33774i), false) << ((vec3<u32>(0u, u_input.a.x, u_input.a.x) ^ vec3<u32>(54218u, 1u, u_input.a.x)) % vec3<u32>(32u))), ~vec3<i32>(firstLeadingBit(var_2), max(0i, 2147483647i), var_2)), _wgslsmith_mult_i32(-8547i | max(-27945i, var_2), -var_2));
    var_3 = max(firstTrailingBit(-27761i), ((i32(-1i) * -3306i) ^ -select(15658i, -32303i, true)) | _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, var_2, var_2), ~vec4<i32>(2147483647i, 34032i, 45040i, 58301i)), vec4<i32>(~(-9382i), var_2, firstLeadingBit(2147483647i), ~187i)));
    var_3 = ~(~(-firstLeadingBit(var_2)));
    var var_4 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(58984u, 1u, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 62772u, u_input.a.x, 4294967295u), vec4<u32>(42299u, u_input.a.x, u_input.a.x, 42421u))), u_input.a.x, _wgslsmith_mult_u32(u_input.a.x >> (66672u % 32u), _wgslsmith_add_u32(1u, u_input.a.x))), select(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(7913u, 100384u, 34793u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x ^ u_input.a.x, func_3(Struct_2(Struct_1(vec4<i32>(0i, -679i, var_2, var_2), vec3<i32>(var_2, 1i, 68146i), 35992u, 1704f))), u_input.a.x ^ ~u_input.a.x), select(vec3<bool>(true, !var_0.x, false), select(func_1(vec3<i32>(var_2, -1i, 0i), Struct_2(Struct_1(vec4<i32>(-2147483647i, 34681i, 56049i, -56844i), vec3<i32>(41779i, 2147483647i, var_2), 0u, 992f)), vec2<i32>(var_2, -4081i), Struct_1(vec4<i32>(var_2, var_2, 42465i, 1i), vec3<i32>(-19609i, -2147483647i, var_2), u_input.a.x, -1000f)), !var_0.wxz, !vec3<bool>(var_0.x, true, false)), func_1(-vec3<i32>(var_2, var_2, -527i), Struct_2(Struct_1(vec4<i32>(-32963i, -34265i, -2147483647i, var_2), vec3<i32>(var_2, 14106i, var_2), u_input.a.x, -1375f)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 9605i), vec2<i32>(var_2, var_2)), Struct_1(vec4<i32>(20098i, 19483i, var_2, var_2), vec3<i32>(var_2, 1i, -1i), 4294967295u, -1019f)))));
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_mult_vec2_i32(countOneBits(abs(vec2<i32>(-1i, var_2) | vec2<i32>(-1i, 2147483647i))), countOneBits(select(vec2<i32>(var_2, 2147483647i), vec2<i32>(var_2, var_2), vec2<bool>(var_0.x, var_1.x))) & _wgslsmith_sub_vec2_i32(~vec2<i32>(var_2, var_2), select(vec2<i32>(var_2, 1i), vec2<i32>(var_2, 17326i), vec2<bool>(var_0.x, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-918f - 1512f) - _wgslsmith_f_op_f32(ceil(-238f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(335f, 965f) + _wgslsmith_f_op_f32(1047f - 926f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-925f, -879f, var_0.x))), _wgslsmith_f_op_f32(sign(1206f)))), 574f, -1000f), reverseBits(_wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(1i, 10465i))), vec2<i32>(var_2, var_2), abs(vec2<i32>(-21486i, -32626i)))), vec3<i32>(reverseBits(2147483647i), max(48569i, ~(-2147483647i)), ~abs(var_2)) | ~min(max(vec3<i32>(-79562i, var_2, var_2), vec3<i32>(var_2, -2433i, -2147483647i)), vec3<i32>(1i, var_2, -36810i)));
}

