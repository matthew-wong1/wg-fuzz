struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-759f)), 646f, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))))), -1000f));
    return min(u_input.b, countOneBits(u_input.b));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_3(u_input.b, Struct_1(vec2<u32>(1u, ~_wgslsmith_add_u32(u_input.b.x, 43579u)), select(select(reverseBits(vec2<u32>(u_input.b.x, 1u)), ~vec2<u32>(arg_0.c.c, 6113u), true), u_input.b.yy, arg_0.a.xy), _wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(arg_0.c.c, 4364u, u_input.b.x))), func_3(!arg_0.a, vec3<f32>(-902f, 168f, 925f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, 1469f)), arg_0))));
    let var_1 = arg_0.b;
    var_0 = Struct_3(u_input.b ^ max(vec3<u32>(u_input.b.x, ~var_0.b.b.x, min(var_0.b.b.x, 0u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 9608u), vec3<u32>(0u, 1u, u_input.b.x))), var_0.b);
    var_0 = Struct_3(countOneBits(vec3<u32>((var_0.a.x | 43594u) << (u_input.b.x % 32u), 4294967295u, _wgslsmith_add_u32(44364u, 32925u))), Struct_1(~vec2<u32>(arg_0.c.c, _wgslsmith_dot_vec2_u32(vec2<u32>(27766u, arg_0.c.b.x), arg_0.c.b)), arg_0.c.a, firstTrailingBit(u_input.b.x)));
    let var_2 = var_0.b.b.x;
    return Struct_1(countOneBits(firstTrailingBit(u_input.b.zx)), ~(~(vec2<u32>(4294967295u, 1u) ^ ~vec2<u32>(var_0.b.b.x, 8855u))), ~(~21006u));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_5 {
    var var_0 = Struct_3(((vec3<u32>(113904u, u_input.b.x, arg_1.a.x) ^ min(vec3<u32>(1u, 14692u, arg_2.b.a.x), u_input.b)) | (arg_3 & ~arg_3)) << ((~_wgslsmith_sub_vec3_u32(arg_3, vec3<u32>(arg_2.b.a.x, u_input.b.x, 0u)) | vec3<u32>(_wgslsmith_mod_u32(1u, 1961u), ~17969u, ~0u)) % vec3<u32>(32u)), func_2(Struct_2(!(!vec3<bool>(false, true, arg_0.x)), abs(select(vec3<i32>(arg_2.c, -2147483647i, u_input.a), vec3<i32>(5480i, u_input.a, -2147483647i), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), Struct_1(u_input.b.yy, firstLeadingBit(vec2<u32>(arg_3.x, u_input.b.x)), 78118u), 966f), !(!arg_0.x) & false));
    var var_1 = arg_1;
    var var_2 = reverseBits(vec3<u32>(~(~(~17905u)), max(abs(4294967295u) >> (~4294967295u % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2.b.b.x, u_input.b.x), 100034u << (var_0.b.b.x % 32u))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1.a, ~vec2<u32>(32616u, 14025u)), arg_2.b.c)));
    var_2 = vec3<u32>(~(~1u), 53198u, var_0.b.a.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1689f) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -233f), 168f);
    return Struct_5(Struct_3(max(countOneBits(var_0.a), arg_3), Struct_1(arg_3.yy, arg_1.a & arg_3.xx, ~36672u)), _wgslsmith_div_vec3_u32(vec3<u32>(abs(4294967295u) | ~var_1.a.x, 4294967295u, u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.x, arg_1.b.a.x, var_1.b.b.x) | (vec3<u32>(51945u, u_input.b.x, var_2.x) >> (vec3<u32>(arg_1.a.x, 27308u, arg_2.b.c) % vec3<u32>(32u))), min(u_input.b, ~u_input.b))), Struct_3((_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(0u, 0u, 33744u)) & u_input.b) >> (select(var_0.a, vec3<u32>(u_input.b.x, 21150u, arg_1.a.x) & vec3<u32>(arg_3.x, 1u, 0u), !vec3<bool>(arg_0.x, true, arg_0.x)) % vec3<u32>(32u)), func_2(Struct_2(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x)), abs(vec3<i32>(32555i, u_input.a, u_input.a)), Struct_1(vec2<u32>(var_2.x, 27072u), vec2<u32>(var_2.x, arg_2.b.a.x), arg_3.x), _wgslsmith_f_op_f32(667f * var_3.x)), !arg_0.x)));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(0u, 4294967295u)), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yy << (u_input.b.xy % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(arg_0.a.b.b.x, u_input.b.x))), reverseBits(vec2<u32>(82530u, u_input.b.x))), max(_wgslsmith_div_vec2_u32(vec2<u32>(36066u, 1u) ^ arg_0.c.a.xz, vec2<u32>(arg_0.b.x, u_input.b.x)), vec2<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_div_u32(0u, u_input.b.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(Struct_2(vec3<bool>(true, arg_2, true), vec3<i32>(65510i, 0i, arg_1), arg_0.c.b, 230f), true).a.x, arg_0.b.x, arg_0.a.a.x, ~arg_0.a.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(43139u, 4294967295u, 1u, 76283u), abs(vec4<u32>(15861u, 1u, u_input.b.x, arg_0.c.b.c))))), -61129i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f));
    var_0 = Struct_4(func_3(!(!select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, arg_2, false), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(315f, 1143f, 960f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-625f, 741f, -608f), vec3<f32>(-1443f, -410f, 718f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1421f, 1426f, -1341f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1253f, _wgslsmith_f_op_f32(-414f + 378f)))), Struct_2(select(vec3<bool>(arg_2, arg_2, false), !vec3<bool>(false, arg_2, false), !arg_2), ~countOneBits(vec3<i32>(u_input.a, arg_1, -1i)), func_2(Struct_2(vec3<bool>(false, arg_2, arg_2), vec3<i32>(-1i, var_0.c, arg_1), var_0.b, -616f), u_input.b.x >= 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1547f))).yx, arg_0.c.b, _wgslsmith_mult_i32(-4532i, 0i));
    let var_2 = any(select(!vec4<bool>(any(vec2<bool>(arg_2, true)), arg_2, true, arg_2), select(select(vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, arg_2), arg_2), select(select(vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, true), arg_2), !vec4<bool>(arg_2, arg_2, arg_2, arg_2), !arg_2), !(!vec4<bool>(false, true, true, arg_2))), arg_2));
    var_0 = Struct_4(var_0.a, Struct_1(_wgslsmith_sub_vec2_u32(~arg_0.b.yx, ~vec2<u32>(arg_0.c.b.c, 4294967295u)), func_2(Struct_2(!vec3<bool>(true, var_2, var_2), firstLeadingBit(vec3<i32>(-44087i, -8623i, u_input.a)), var_0.b, _wgslsmith_f_op_f32(min(-1000f, 2234f))), arg_2).b, _wgslsmith_add_u32(u_input.b.x, firstLeadingBit(u_input.b.x))), -_wgslsmith_sub_i32(u_input.a, -2147483647i));
    return var_0.b;
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = Struct_2(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), vec3<bool>(true, any(vec3<bool>(true, true, true)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), u_input.a >= u_input.a)), (~vec3<i32>(u_input.a, 1885i, -2147483647i) ^ _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(u_input.a, 0i, 2147483647i))) & countOneBits(vec3<i32>(reverseBits(u_input.a), -1i, u_input.a)), func_5(func_4(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec4<bool>(false, true, true, false))), Struct_4(~vec2<u32>(arg_0, 39322u), func_2(Struct_2(vec3<bool>(false, false, false), vec3<i32>(u_input.a, -24985i, 1i), Struct_1(u_input.b.yx, u_input.b.zx, u_input.b.x), 1000f), false), reverseBits(u_input.a)), Struct_4(vec2<u32>(4294967295u, arg_0), Struct_1(u_input.b.xy, u_input.b.zz, 12809u), -1i), vec3<u32>(countOneBits(4294967295u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), ~53820u)), 2147483647i, true), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-2449f, 1276f)))), -836f))));
    let var_1 = Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, ~(~var_0.c.a.x)), vec2<u32>(var_0.c.a.x, ~61636u)), func_5(Struct_5(Struct_3(reverseBits(vec3<u32>(65970u, 28641u, var_0.c.c)), var_0.c), reverseBits(countOneBits(u_input.b)), func_4(var_0.a.zy, Struct_4(vec2<u32>(85163u, 3447u), Struct_1(vec2<u32>(0u, var_0.c.c), vec2<u32>(u_input.b.x, 28181u), u_input.b.x), -1i), Struct_4(var_0.c.b, Struct_1(vec2<u32>(var_0.c.b.x, 0u), var_0.c.a, u_input.b.x), var_0.b.x), u_input.b).a), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, 19792i, -1852i, 0i), vec4<i32>(41764i, u_input.a, 1i, var_0.b.x), false), _wgslsmith_add_vec4_i32(vec4<i32>(46441i, var_0.b.x, -2147483647i, u_input.a), vec4<i32>(28018i, 0i, u_input.a, var_0.b.x))) >> ((~12381u << (_wgslsmith_add_u32(10695u, var_0.c.c) % 32u)) % 32u), var_0.a.x | all(select(vec4<bool>(true, false, false, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, false), var_0.a.x))), -5310i);
    let var_2 = Struct_5(func_4(select(var_0.a.yy, var_0.a.xx, all(select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(var_0.a.x, var_0.a.x, false, true), vec4<bool>(var_0.a.x, true, false, var_0.a.x)))), Struct_4(func_5(func_4(vec2<bool>(false, var_0.a.x), Struct_4(var_1.a, Struct_1(vec2<u32>(46892u, var_1.a.x), vec2<u32>(51753u, 1u), var_1.a.x), u_input.a), var_1, vec3<u32>(var_0.c.c, arg_0, var_1.b.b.x)), -var_0.b.x, var_0.d > var_0.d).b, Struct_1(abs(var_1.b.b), u_input.b.zx, u_input.b.x), ~min(1i, -27486i)), var_1, u_input.b).c, ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, 0u, var_1.b.a.x)), ~vec3<u32>(arg_0, 29477u, 1u), u_input.b >> ((u_input.b | u_input.b) % vec3<u32>(32u))), Struct_3(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.b.x, var_1.a.x, 1u), ~u_input.b), Struct_1(vec2<u32>(abs(u_input.b.x), abs(var_1.a.x)), vec2<u32>(abs(7299u), ~19535u), u_input.b.x)));
    var_0 = Struct_2(var_0.a, abs(~vec3<i32>(1i, -2147483647i, var_1.c) ^ -vec3<i32>(-50753i, -1i, var_1.c)), func_5(Struct_5(var_2.c, ~(vec3<u32>(33723u, u_input.b.x, 24457u) << (vec3<u32>(0u, 14243u, var_2.c.a.x) % vec3<u32>(32u))), Struct_3(func_3(vec3<bool>(true, var_0.a.x, true), vec3<f32>(647f, var_0.d, -273f), vec2<f32>(388f, 880f), Struct_2(vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.b, var_2.a.b, 1107f)), var_2.c.b)), firstTrailingBit(_wgslsmith_mod_i32(var_0.b.x, var_0.b.x ^ var_0.b.x)), var_0.a.x), _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(round(-652f)))));
    var var_3 = func_5(Struct_5(Struct_3(~u_input.b, Struct_1(vec2<u32>(4294967295u, var_2.a.a.x), ~var_2.b.xx, var_1.a.x << (4294967295u % 32u))), func_4(vec2<bool>(any(vec3<bool>(true, var_0.a.x, var_0.a.x)), var_0.d != var_0.d), Struct_4(vec2<u32>(arg_0, var_0.c.c), var_1.b, 0i), Struct_4(~u_input.b.xx, Struct_1(var_1.b.b, var_1.a, u_input.b.x), 0i), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.c.a.x, var_2.c.b.b.x), u_input.b, u_input.b)).a.a, var_2.a), -u_input.a, all(!select(select(vec4<bool>(var_0.a.x, false, var_0.a.x, true), vec4<bool>(true, var_0.a.x, var_0.a.x, true), false), !vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(false, true, false, var_0.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1229f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(u_input.b.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~u_input.b.x)) - -166f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -633f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1555f)))))))));
    let var_1 = abs(abs(firstTrailingBit(vec3<i32>(-4919i, 2147483647i | u_input.a, -15436i))));
    let var_2 = false;
    let var_3 = ~(u_input.b.zz >> (u_input.b.zx % vec2<u32>(32u)));
    let var_4 = Struct_1(u_input.b.xy, u_input.b.yz << (u_input.b.xy % vec2<u32>(32u)), _wgslsmith_sub_u32(u_input.b.x, 1u));
    var var_5 = select(!vec4<bool>(false & (var_2 & var_2), var_2, all(select(vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(var_2, var_2, false, var_2))), var_2), vec4<bool>(var_2 | any(!vec3<bool>(var_2, true, true)), true, true, ~min(4294967295u, u_input.b.x) == ~var_4.a.x), !(!(!(!vec4<bool>(var_2, var_2, false, var_2)))));
    var_5 = select(!vec4<bool>(true, all(var_5.zyz), var_2, false), !vec4<bool>(true, true, true, any(!var_5.xzz)), !(!any(var_5.wyy) & true));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, abs(15845u), reverseBits(1u), ~var_1);
}

