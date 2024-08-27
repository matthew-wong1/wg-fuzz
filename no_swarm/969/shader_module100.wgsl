struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = arg_2.a.b;
    var var_1 = arg_1;
    var var_2 = Struct_3(Struct_1(vec2<u32>(var_1.b, arg_2.d), _wgslsmith_div_vec2_i32(arg_2.b.b, select(-vec2<i32>(2147483647i, arg_2.c.d.b.x), arg_2.b.b << (var_1.d.a % vec2<u32>(32u)), true)), (abs(95527u) & arg_2.c.b) << (1u % 32u), _wgslsmith_f_op_vec2_f32(-var_1.d.d)), var_1.d, arg_0.c, ~(~arg_0.d ^ arg_0.d) & 92397u);
    var_1 = Struct_2(var_1.a, 48364u, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1716f, 1592f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1154f) - arg_0.b.d.x), _wgslsmith_f_op_f32(step(-460f, _wgslsmith_f_op_f32(arg_1.c.x - var_1.c.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(519f, arg_1.d.d.x, 1000f, 190f) + vec4<f32>(arg_1.a.d.x, 363f, arg_2.b.d.x, var_1.c.x))))))), var_1.a);
    var_2 = Struct_3(arg_2.a, Struct_1(~_wgslsmith_div_vec2_u32(max(arg_1.a.a, var_1.d.a), _wgslsmith_add_vec2_u32(var_2.c.d.a, vec2<u32>(4294967295u, arg_0.d))), -countOneBits(min(u_input.b.yz, vec2<i32>(u_input.b.x, var_2.a.b.x))), reverseBits(~(~45435u)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1790f, arg_0.a.d.x), _wgslsmith_f_op_vec2_f32(trunc(arg_0.a.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.d.d - vec2<f32>(arg_2.c.c.x, arg_0.b.d.x))))), var_2.c, arg_2.d);
    return select(vec3<bool>(false, true, !(~arg_2.c.a.c != ~arg_1.d.a.x)), vec3<bool>(!any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), ~(1u >> (0u % 32u)) > reverseBits(min(var_2.d, 0u)), true), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(~(~vec2<u32>(7462u, 24178u)), -(-vec2<i32>(-24453i, arg_1) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 81030u), vec2<u32>(1u, 8574u)) % vec2<u32>(32u))), 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(2146f, -989f)), _wgslsmith_f_op_f32(step(482f, -991f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(274f, -1057f))))), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 1u, 0u)) << (~(~4418u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1805f, -2354f, -608f, -1125f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2061f, -227f, 1138f, 215f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, -2208f, 1000f, 1646f))))), Struct_1(vec2<u32>(countOneBits(select(91138u, 18348u, true)), ~(~4294967295u)), vec2<i32>(arg_1, abs(countOneBits(12247i))), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) * vec2<f32>(1000f, -1000f))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(380f)), -969f))));
    var var_1 = Struct_2(var_0.d, var_0.a.a.x, vec4<f32>(_wgslsmith_f_op_f32(-191f - _wgslsmith_f_op_f32(-511f - _wgslsmith_f_op_f32(-var_0.c.x))), -833f, _wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(max(2395f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.d.d.x))))))), Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.a.x, var_0.b, 1u, var_0.a.c) << (vec4<u32>(4294967295u, var_0.a.c, 1u, var_0.a.c) % vec4<u32>(32u)), ~vec4<u32>(var_0.d.c, var_0.a.a.x, var_0.d.a.x, 49875u)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(33058u, var_0.b, var_0.a.a.x, var_0.a.a.x), vec4<u32>(0u, 4294967295u, var_0.a.a.x, var_0.a.a.x)), 2091u)), select(vec2<i32>(countOneBits(-2147483647i), u_input.c), var_0.d.b, true), ~(~4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c, 0u, var_0.b, 0u), vec4<u32>(var_0.a.c, var_0.a.a.x, 4294967295u, var_0.a.c)) % 32u)), var_0.c.yx));
    let var_2 = var_1.d.d.x;
    var var_3 = Struct_3(Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_0.a.a, abs(vec2<u32>(var_0.a.c, var_0.a.a.x))), ~var_0.a.a), u_input.b.zx, _wgslsmith_sub_u32(~(~57188u), abs(1u)), var_0.a.d), var_0.d, Struct_2(Struct_1(vec2<u32>(var_1.a.c, var_0.d.c), -(~var_1.d.b), var_0.d.c, _wgslsmith_f_op_vec2_f32(floor(var_1.a.d))), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.d.x, 777f, 910f, -227f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.d.x, -427f, var_0.c.x, -125f) - var_1.c))), var_0.a), ~32385u);
    var_1 = var_3.c;
    return 0u;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_3 {
    var var_0 = 2147483647i;
    var var_1 = ~vec4<u32>(arg_1, _wgslsmith_mod_u32(arg_1 ^ ~arg_1, 61182u), arg_1, func_4(select(func_3(Struct_3(Struct_1(vec2<u32>(arg_1, arg_1), vec2<i32>(u_input.c, -59766i), arg_1, vec2<f32>(-1000f, 734f)), Struct_1(vec2<u32>(70376u, arg_1), vec2<i32>(25486i, 0i), arg_1, vec2<f32>(2984f, 791f)), Struct_2(Struct_1(vec2<u32>(arg_1, arg_1), vec2<i32>(arg_0, u_input.c), arg_1, vec2<f32>(-871f, -952f)), 1u, vec4<f32>(1121f, 492f, 319f, -648f), Struct_1(vec2<u32>(1091u, arg_1), u_input.b.zy, 27784u, vec2<f32>(1252f, 495f))), 1u), Struct_2(Struct_1(vec2<u32>(arg_1, arg_1), u_input.b.zz, arg_1, vec2<f32>(-942f, 3725f)), 3545u, vec4<f32>(-2800f, 1490f, -1000f, -1861f), Struct_1(vec2<u32>(1u, 8012u), vec2<i32>(36594i, 1i), 69079u, vec2<f32>(368f, -1217f))), Struct_3(Struct_1(vec2<u32>(arg_1, arg_1), vec2<i32>(-1i, -1i), arg_1, vec2<f32>(858f, -1132f)), Struct_1(vec2<u32>(arg_1, arg_1), vec2<i32>(1i, -1i), 4294967295u, vec2<f32>(-1000f, 1248f)), Struct_2(Struct_1(vec2<u32>(10332u, 21948u), vec2<i32>(arg_0, u_input.a), 4294967295u, vec2<f32>(291f, 2222f)), 48257u, vec4<f32>(1321f, 125f, -389f, 1415f), Struct_1(vec2<u32>(4294967295u, 0u), u_input.b.yy, 1u, vec2<f32>(-1000f, -1523f))), 4294967295u)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), true), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0, -89560i), 1i), ~_wgslsmith_div_i32(2147483647i, u_input.b.x)));
    return Struct_3(Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(63709u, 0u), ~var_1.zx, abs(vec2<u32>(arg_1, arg_1))), (vec2<u32>(6215u, arg_1) | vec2<u32>(arg_1, 139565u)) | ~vec2<u32>(4294967295u, arg_1)), -(vec2<i32>(-1i) * -vec2<i32>(-5010i, u_input.b.x)), ~func_4(func_3(Struct_3(Struct_1(var_1.wy, u_input.b.yy, 0u, vec2<f32>(-498f, -600f)), Struct_1(vec2<u32>(arg_1, 36443u), vec2<i32>(6359i, u_input.b.x), 0u, vec2<f32>(-1478f, 779f)), Struct_2(Struct_1(var_1.zy, u_input.b.zz, var_1.x, vec2<f32>(-1000f, -446f)), arg_1, vec4<f32>(-530f, 1086f, 319f, 2253f), Struct_1(var_1.yx, u_input.b.zz, var_1.x, vec2<f32>(-1206f, -1153f))), var_1.x), Struct_2(Struct_1(var_1.xw, u_input.b.yz, arg_1, vec2<f32>(-564f, -1210f)), 4294967295u, vec4<f32>(120f, -1000f, -841f, 865f), Struct_1(var_1.zy, u_input.b.xx, 16508u, vec2<f32>(-395f, -729f))), Struct_3(Struct_1(vec2<u32>(0u, arg_1), vec2<i32>(-41934i, -32964i), 50491u, vec2<f32>(-587f, 1081f)), Struct_1(vec2<u32>(1u, 1u), u_input.b.xz, 7340u, vec2<f32>(853f, -375f)), Struct_2(Struct_1(var_1.yx, vec2<i32>(u_input.a, 0i), var_1.x, vec2<f32>(419f, 956f)), var_1.x, vec4<f32>(-822f, 359f, 354f, -135f), Struct_1(var_1.wy, u_input.b.xx, arg_1, vec2<f32>(-346f, 1736f))), 1u)), ~1i, 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-255f, -540f)))), Struct_1(var_1.yx, max(u_input.b.yy, reverseBits(vec2<i32>(-15128i, -2147483647i))), ~(~(~17519u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-357f, 624f) + vec2<f32>(-157f, 1115f))))), Struct_2(Struct_1(var_1.xy, countOneBits(u_input.b.yz), ~(~arg_1), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(454f, 888f)), select(true, false, false)))), max(countOneBits(_wgslsmith_add_u32(1820u, 0u)), _wgslsmith_mod_u32(var_1.x, 0u) ^ ~1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-418f, -170f, 1991f, -1169f) * vec4<f32>(-527f, -1461f, -916f, 1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-545f, -121f, 1817f, 450f), vec4<f32>(791f, 1077f, -389f, 203f), true))) * vec4<f32>(-749f, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_div_f32(1000f, 271f))), Struct_1(var_1.zz, abs(vec2<i32>(arg_0, 2147483647i)), arg_1 | 58569u, vec2<f32>(1f, 1f))), ~(~4294967295u));
}

fn func_1(arg_0: vec2<u32>) -> vec2<u32> {
    var var_0 = func_2(_wgslsmith_div_i32(~select(~0i, i32(-1i) * -16304i, true), reverseBits(0i)), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0.x, ~83672u), 8916u, ~1u));
    var var_1 = Struct_3(Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.a.x, 4294967295u), vec2<u32>(var_0.d, arg_0.x)), u_input.b.yz, func_2(countOneBits(~var_0.c.a.b.x), 0u).c.d.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.c.c.ww), vec2<f32>(var_0.a.d.x, var_0.b.d.x))), vec2<f32>(_wgslsmith_div_f32(-822f, var_0.a.d.x), _wgslsmith_div_f32(var_0.b.d.x, var_0.a.d.x)))), func_2(~u_input.b.x, var_0.a.a.x).a, func_2(var_0.c.d.b.x, var_0.a.c).c, 0u);
    var var_2 = Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(max(vec2<u32>(arg_0.x, 1u), arg_0) << ((vec2<u32>(79313u, arg_0.x) | vec2<u32>(var_1.a.c, 0u)) % vec2<u32>(32u)), vec2<u32>(arg_0.x, ~35139u)), abs(var_0.b.b), var_1.b.c, var_1.a.d), var_1.a, var_1.c, _wgslsmith_sub_u32(var_0.a.a.x, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 4294967295u, 6611u, arg_0.x), vec4<u32>(var_1.a.a.x, arg_0.x, 0u, var_0.a.c), true), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 88855u, arg_0.x, 4294967295u), vec4<u32>(76469u, var_0.b.c, 4294967295u, 4294967295u)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(func_2(-37000i << (var_1.a.a.x % 32u), var_0.d | 32029u).b.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, var_0.c.d.d.x)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.d.d.x, var_2.c.a.d.x))))))))));
    let var_4 = Struct_3(var_1.b, var_2.c.d, Struct_2(func_2(var_2.a.b.x, ~(~arg_0.x)).a, _wgslsmith_mult_u32(arg_0.x << (var_2.d % 32u), ~select(arg_0.x, var_2.d, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.c.c, var_2.c.c, vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_0.b.d.x, var_1.a.d.x, -1500f)))), Struct_1(~_wgslsmith_mult_vec2_u32(var_2.a.a, var_0.a.a), u_input.b.xy << (~arg_0 % vec2<u32>(32u)), 1u, vec2<f32>(var_2.c.d.d.x, 876f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(~var_1.a.a.x, _wgslsmith_div_u32(1u, var_2.a.a.x), 1u, _wgslsmith_div_u32(0u, 2558u)), ~(select(vec4<u32>(1u, 1448u, var_2.d, var_2.a.c), vec4<u32>(var_0.b.a.x, 46348u, 4294967295u, var_0.b.a.x), vec4<bool>(true, false, true, false)) | ~vec4<u32>(53455u, 15342u, 66392u, arg_0.x))));
    return _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 26830u), var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(func_1(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(36338u, 19333u), vec2<u32>(6048u, 29762u)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x | u_input.b.x), vec2<i32>(55765i, u_input.b.x), max(u_input.b.zy, vec2<i32>(23014i, u_input.a))), abs(~1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1230f, _wgslsmith_f_op_f32(trunc(-275f))))), Struct_1(vec2<u32>(~func_2(u_input.a, 326u).b.a.x, _wgslsmith_mod_u32(4294967295u, 30858u)), -_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xx, vec2<i32>(u_input.a, u_input.b.x)), u_input.b.zz), ~(~reverseBits(1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(325f, 1000f), vec2<f32>(-932f, 1645f))), vec2<f32>(-2498f, 130f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(127f, 1844f))))), func_2(~_wgslsmith_add_i32(u_input.a, u_input.a), firstTrailingBit(14053u)).c, 0u);
    let var_1 = select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), vec4<bool>(false, true, true, true), any(vec2<bool>(true, true))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))), !(true | (4294967295u <= var_0.a.a.x))), select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true)), vec4<bool>(func_3(func_2(var_0.a.b.x, var_0.c.b), Struct_2(Struct_1(vec2<u32>(var_0.b.a.x, var_0.d), vec2<i32>(var_0.b.b.x, 9413i), var_0.d, vec2<f32>(-224f, var_0.c.c.x)), var_0.c.d.a.x, vec4<f32>(var_0.a.d.x, 620f, -454f, -122f), Struct_1(var_0.a.a, u_input.b.yx, 54517u, var_0.b.d)), Struct_3(var_0.a, Struct_1(vec2<u32>(var_0.b.c, var_0.c.a.a.x), vec2<i32>(var_0.a.b.x, 16669i), 4294967295u, vec2<f32>(-686f, var_0.c.c.x)), Struct_2(var_0.c.a, var_0.a.c, vec4<f32>(var_0.a.d.x, var_0.a.d.x, 1307f, var_0.b.d.x), var_0.b), 0u)).x, all(vec2<bool>(false, false)) | true, false, func_3(var_0, func_2(-2147483647i, var_0.d).c, func_2(1i, 1u)).x), true), vec4<bool>(true, true | select(false, -371f >= var_0.c.a.d.x, true), func_3(func_2(u_input.c, var_0.c.d.a.x), func_2(u_input.b.x, 1u).c, var_0).x || true, ~(~51772u) == (var_0.b.c << (abs(24494u) % 32u))));
    let var_2 = ~(-max(~vec4<i32>(0i, 0i, -13228i, var_0.c.d.b.x), ~(~vec4<i32>(var_0.a.b.x, var_0.c.d.b.x, var_0.b.b.x, var_0.a.b.x))));
    var var_3 = true;
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_0.c.c.x)), var_0.b.d, vec4<u32>(var_0.d, 60116u, max(countOneBits(4731u), 28482u), _wgslsmith_div_u32(4294967295u, ~(var_0.b.c >> (var_0.d % 32u)))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(var_2, vec4<i32>(var_0.a.b.x, 29628i, reverseBits(-1i), countOneBits(-2147483647i))), _wgslsmith_sub_vec4_i32(var_2 >> (~vec4<u32>(var_0.c.d.c, var_0.b.a.x, var_0.a.a.x, var_0.a.c) % vec4<u32>(32u)), vec4<i32>(var_0.b.b.x, u_input.a, _wgslsmith_mod_i32(-16269i, var_0.c.d.b.x), max(-1i, -1i)))));
}

