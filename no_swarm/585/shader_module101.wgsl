struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0.b;
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2659f, -822f, 226f) + vec3<f32>(arg_0.b.x, arg_0.b.x, -400f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-854f, 689f, arg_0.b.x)), false)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1598f, _wgslsmith_f_op_f32(130f * arg_0.b.x), 298f)))))));
    var var_1 = arg_0;
    let var_2 = abs(-_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.d, arg_3.c.x), ~vec3<i32>(17622i, 1i, u_input.d)) << (~(~vec3<u32>(u_input.b.x, 34092u, arg_1.x)) % vec3<u32>(32u)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(var_0.x + -803f), Struct_1(vec2<u32>(_wgslsmith_mod_u32(31046u, ~var_1.a.x), firstTrailingBit(_wgslsmith_mult_u32(35311u, 0u))), _wgslsmith_f_op_vec3_f32(var_1.b * var_1.b), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(477f * 1115f))) * _wgslsmith_f_op_f32(sign(var_0.x)))));
    return firstLeadingBit(126362u);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(~_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0, arg_3.x), vec2<u32>(func_3(Struct_1(vec2<u32>(arg_0, 0u), vec3<f32>(1666f, 368f, 312f), vec2<i32>(arg_2.x, 24821i)), vec2<u32>(1u, 0u), vec3<bool>(false, false, false), Struct_1(vec2<u32>(19303u, 31610u), vec3<f32>(arg_1, -1000f, 1000f), u_input.e)), arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1117f, arg_1)), vec3<f32>(1098f, 697f, 506f)))) + vec3<f32>(arg_1, _wgslsmith_f_op_f32(ceil(-1148f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-866f, arg_1, false)) * 1000f))), countOneBits(vec2<i32>(arg_2.x, ~_wgslsmith_mod_i32(-39738i, arg_2.x))));
    var_0 = Struct_1(var_0.a, var_0.b, arg_2);
    let var_1 = vec4<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.c), _wgslsmith_mod_u32(136722u, 1u), min(4294967295u, 55132u)) >> (~_wgslsmith_add_u32(_wgslsmith_clamp_u32(54585u, 620u, u_input.a.x), _wgslsmith_add_u32(0u, arg_0)) % 32u), _wgslsmith_dot_vec2_u32(u_input.b.xz, ~_wgslsmith_add_vec2_u32(~u_input.b.zy, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.x, 8464u), vec2<u32>(arg_3.x, var_0.a.x)))), arg_0, (_wgslsmith_clamp_u32(select(arg_0, arg_0, true), _wgslsmith_mod_u32(26116u, 4294967295u), 7585u) >> (firstTrailingBit(72156u) % 32u)) | _wgslsmith_mod_u32(func_3(Struct_1(vec2<u32>(arg_3.x, 0u), var_0.b, arg_2), ~vec2<u32>(arg_0, 24420u), vec3<bool>(true, true, true), Struct_1(vec2<u32>(5068u, 19377u), var_0.b, var_0.c)), var_0.a.x));
    var_0 = Struct_1(vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(1u, 1u), arg_3.x << (~10828u % 32u))), vec3<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 - arg_1))) + arg_1), arg_1), u_input.e);
    var var_2 = ~vec2<u32>(62225u, 21521u);
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-2997f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1))), Struct_1(vec2<u32>(arg_3.x, ~(~arg_0)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)))), reverseBits(min(arg_2, ~u_input.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = vec3<bool>(false, arg_1.x, false);
    var var_1 = vec2<bool>(arg_2.b.b.x > _wgslsmith_f_op_f32(f32(-1f) * -1150f), select(true, -46363i >= _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_0.b.c.x, 20584i, -2147483647i)), vec3<i32>(arg_0.b.c.x, u_input.d, 5307i) ^ vec3<i32>(arg_2.b.c.x, u_input.d, -64294i)), !select(arg_0.b.a.x < u_input.b.x, any(vec4<bool>(false, var_0.x, arg_1.x, false)), any(vec2<bool>(false, false)))));
    var_1 = var_0.zx;
    var_1 = arg_1.zx;
    var var_2 = ~select(~countOneBits(~arg_3.wy), min(func_2(76524u, _wgslsmith_f_op_f32(-arg_2.c), arg_0.b.c >> (vec2<u32>(arg_2.b.a.x, 8361u) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, arg_2.b.a.x)).b.a, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(42128u, arg_3.x), vec2<u32>(u_input.a.x, 54352u)), vec2<u32>(arg_0.b.a.x, 3090u))), var_0.x);
    return arg_0.b;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(abs(_wgslsmith_add_vec2_u32(~vec2<u32>(39406u, u_input.c), vec2<u32>(min(u_input.b.x, 4294967295u), ~arg_0.a.x))), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.a.x, 23032u) >> (~vec2<u32>(4294967295u, arg_0.a.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(select(19213u, 70507u, true), 1u), ~(~u_input.b.zy))));
    var var_1 = true;
    var var_2 = -1i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.x - 443f))), arg_0.b.x, arg_0.b.x) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(arg_0.b))))));
    let var_4 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), select(vec3<bool>(true, true, -410f < var_3.x), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(all(vec3<bool>(true, false, false)), true, true)), ~1u >= firstLeadingBit(firstTrailingBit(1u))), !(!all(vec2<bool>(false, false))) == any(vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, true)));
    return Struct_1(reverseBits(u_input.a.yz), arg_0.b, abs(u_input.e));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> bool {
    let var_0 = func_5(func_4(func_2(u_input.b.x, _wgslsmith_f_op_f32(arg_1.x - arg_1.x), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.e.x), vec3<i32>(u_input.e.x, u_input.e.x, -3923i)), ~2147483647i), u_input.a.xx), vec3<bool>(any(select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), false)), arg_1.x <= _wgslsmith_f_op_f32(-arg_1.x), arg_0), Struct_2(arg_1.x, Struct_1(_wgslsmith_mult_vec2_u32(u_input.b.zz, u_input.b.xy), vec3<f32>(arg_1.x, 262f, -1349f), vec2<i32>(-20640i, u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f * arg_1.x))), _wgslsmith_add_vec4_u32((u_input.a | u_input.a) ^ firstTrailingBit(vec4<u32>(u_input.b.x, 0u, 33001u, 0u)), vec4<u32>(~u_input.b.x, countOneBits(u_input.c), ~u_input.a.x, 1u ^ u_input.b.x))));
    var var_1 = !(!(firstTrailingBit(_wgslsmith_add_u32(var_0.a.x, u_input.c)) <= ~u_input.b.x));
    let var_2 = Struct_2(402f, var_0, func_4(func_2(8050u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2785f)))), func_5(func_4(Struct_2(-519f, var_0, var_0.b.x), vec3<bool>(true, arg_0, arg_0), Struct_2(arg_1.x, var_0, arg_1.x), vec4<u32>(5558u, 70506u, var_0.a.x, 4294967295u))).c, vec2<u32>(1u >> (u_input.b.x % 32u), func_4(Struct_2(-1201f, Struct_1(vec2<u32>(4294967295u, 48008u), vec3<f32>(-685f, var_0.b.x, -921f), vec2<i32>(u_input.d, u_input.e.x)), -1449f), vec3<bool>(arg_0, false, arg_0), Struct_2(-1618f, Struct_1(u_input.b.xx, vec3<f32>(600f, arg_1.x, 757f), vec2<i32>(u_input.d, -20913i)), 1953f), vec4<u32>(u_input.c, 0u, var_0.a.x, 33296u)).a.x)), select(!vec3<bool>(true, true, arg_0), !(!vec3<bool>(arg_0, false, arg_0)), true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), var_0, 587f), ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, var_0.a.x, 1u, 8769u), u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, var_0.a.x, var_0.a.x, u_input.a.x), u_input.a))).b.x);
    var var_3 = true;
    var_1 = !(-410f > _wgslsmith_f_op_f32(var_0.b.x + -1000f));
    return all(select(vec3<bool>(arg_0, all(!vec3<bool>(false, arg_0, arg_0)), arg_0), !vec3<bool>(any(vec3<bool>(arg_0, arg_0, false)), true, arg_0 | false), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-508f, 1428f, -1412f, 1277f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, -318f, 126f, 2991f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1247f, -571f, 1271f, -661f))), func_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, 251f, 239f)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_2(select(_wgslsmith_add_u32(8382u, u_input.b.x), u_input.c, true), 1473f, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.e.x), vec2<i32>(u_input.e.x, 16375i)), u_input.e), vec2<u32>(u_input.c, 0u) ^ u_input.b.wx).b.b.x - func_2(~(~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -(~u_input.e), _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.c, u_input.a.x), vec2<u32>(u_input.a.x, 1u), true), u_input.a.wy)).a), func_5(func_5(func_5(Struct_1(u_input.b.xy, var_0.xww, vec2<i32>(35468i, u_input.d))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(func_2(u_input.c, -1025f, vec2<i32>(36324i, u_input.e.x), vec2<u32>(0u, 4294967295u)).b.b.x, _wgslsmith_f_op_f32(491f - -713f), true)), var_0.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - 701f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.x)), 2551f)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c, u_input.a << (vec4<u32>(8531u, _wgslsmith_dot_vec4_u32(vec4<u32>(77953u, var_1.b.a.x, var_1.b.a.x, 1u), ~vec4<u32>(4294967295u, 51171u, 26627u, 55945u)), firstLeadingBit(var_1.b.a.x), u_input.a.x) % vec4<u32>(32u)), 1u, ~vec3<i32>(countOneBits(2147483647i), ~2147483647i, ~firstLeadingBit(1i)), min(var_1.b.c.x, 1i));
}

