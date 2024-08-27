struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-390f, arg_0.c.x))));
    var var_1 = Struct_1(reverseBits(~(~(~vec4<i32>(-1i, -1i, -1i, u_input.b)))), u_input.c > ~(-1i), true, u_input.a, true);
    var var_2 = -262f;
    var_1 = Struct_1(vec4<i32>(0i, -1i, 29086i, 1i), var_1.c, any(select(vec2<bool>(var_1.c, true), select(vec2<bool>(var_1.e, var_1.b), !vec2<bool>(var_1.e, var_1.c), select(vec2<bool>(var_1.c, var_1.b), vec2<bool>(var_1.c, var_1.e), vec2<bool>(false, var_1.b))), !(!vec2<bool>(var_1.b, var_1.c)))), _wgslsmith_add_i32(countOneBits(u_input.d), var_1.d << (25322u % 32u)), all(vec3<bool>(true, var_1.c, !(arg_0.b.x > 43408u))));
    var_2 = -1096f;
    return all(select(vec4<bool>(all(vec4<bool>(true, false, true, var_1.e)) | var_1.b, !var_1.e, true, true), !(!vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), 38091u < arg_0.a.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = 868f;
    var var_1 = Struct_2((vec3<u32>(arg_1, arg_3.x, 0u) & vec3<u32>(~0u, countOneBits(arg_1), ~arg_3.x)) << (vec3<u32>(9411u, ~select(0u, 51947u, true), arg_3.x) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_div_u32(~29043u, ~0u), ~1u, 1u), vec4<f32>(-982f, -1055f, _wgslsmith_f_op_f32(881f * var_0), var_0));
    var_1 = Struct_2(firstTrailingBit(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(29680u, arg_3.x, 84650u), var_1.b)))), var_1.a, _wgslsmith_f_op_vec4_f32(select(var_1.c, _wgslsmith_f_op_vec4_f32(-var_1.c), arg_2.x)));
    let var_2 = select(select(!(!arg_2), !select(arg_2, vec3<bool>(true, false, false), arg_2.x), select(arg_2, vec3<bool>(false, all(arg_2), !arg_2.x), true || (1i != arg_0.x))), vec3<bool>(false, arg_2.x, arg_2.x), !select(arg_2, select(vec3<bool>(false, false, false), vec3<bool>(arg_2.x, true, false), arg_2), !select(vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(false, arg_2.x, arg_2.x), arg_2)));
    var_1 = Struct_2(vec3<u32>(_wgslsmith_add_u32(arg_1, firstTrailingBit(countOneBits(var_1.b.x))), ~var_1.a.x, 4294967295u), ~var_1.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_1.c)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(-780f)), _wgslsmith_f_op_f32(-var_0), -267f, _wgslsmith_f_op_f32(select(var_0, var_1.c.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -2163f, var_0, var_1.c.x) - var_1.c)))), arg_2.x)));
    return !select(select(vec4<bool>(arg_2.x, var_1.c.x > 862f, select(arg_2.x, false, false), any(vec3<bool>(false, arg_2.x, false))), vec4<bool>(true, true, arg_3.x > 100455u, any(arg_2)), var_2.x), select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), !vec4<bool>(var_2.x, true, true, arg_2.x), select(vec4<bool>(true, false, arg_2.x, true), vec4<bool>(false, true, false, false), var_2.x)), !select(vec4<bool>(true, false, true, var_2.x), vec4<bool>(true, arg_2.x, var_2.x, false), arg_2.x), !arg_2.x), !(!select(vec4<bool>(arg_2.x, false, false, var_2.x), vec4<bool>(var_2.x, arg_2.x, var_2.x, false), vec4<bool>(arg_2.x, var_2.x, true, true))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(-(~(~(vec4<i32>(-2147483647i, u_input.b, u_input.a, u_input.d) ^ vec4<i32>(1i, u_input.b, u_input.c, -2147483647i)))), true, all(func_4(-countOneBits(vec3<i32>(u_input.d, u_input.d, u_input.e)), countOneBits(max(4294967295u, 13684u)), vec3<bool>(true, func_3(Struct_2(vec3<u32>(19707u, 4294967295u, 4294967295u), vec3<u32>(11979u, 16961u, 1u), vec4<f32>(184f, -577f, 835f, -1178f))), any(vec2<bool>(false, false))), ~vec2<u32>(1u, 1u))), -10480i >> (~_wgslsmith_dot_vec4_u32(~vec4<u32>(23603u, 0u, 9950u, 5236u), ~vec4<u32>(21627u, 14397u, 1u, 0u)) % 32u), false);
    let var_1 = select(select(select(select(vec3<bool>(false, true, var_0.c), vec3<bool>(false, var_0.b, var_0.c), !var_0.b), !(!vec3<bool>(var_0.e, true, false)), (u_input.e <= var_0.a.x) || true), vec3<bool>(true, true, all(!vec3<bool>(false, var_0.b, false))), func_3(Struct_2(~vec3<u32>(1u, 1u, 1u), vec3<u32>(10583u, 42234u, 0u), vec4<f32>(946f, 126f, 1727f, -530f)))), vec3<bool>(all(select(vec4<bool>(true, false, false, var_0.e), vec4<bool>(var_0.c, var_0.b, false, false), var_0.e)), !any(vec2<bool>(false, var_0.b)), true), select(select(vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), vec3<bool>(true, true, true), !select(vec3<bool>(var_0.b, var_0.e, false), vec3<bool>(var_0.b, false, true), var_0.b)), select(vec3<bool>(true, -1i > var_0.d, var_0.d != u_input.a), vec3<bool>(true, !var_0.e, !var_0.b), select(func_4(vec3<i32>(var_0.a.x, u_input.b, var_0.d), 4294967295u, vec3<bool>(true, true, var_0.c), vec2<u32>(92426u, 0u)).ywy, !vec3<bool>(var_0.e, var_0.e, false), true)), !vec3<bool>(true, any(vec3<bool>(false, false, true)), false)));
    var var_2 = vec4<bool>(true, true, true != ((-u_input.d > max(-24846i, var_0.d)) != true), true);
    let var_3 = Struct_2(~vec3<u32>(1u, 1u, 1u), ~abs(vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(206f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1893f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-818f))))));
    return Struct_1(vec4<i32>(_wgslsmith_clamp_i32(firstTrailingBit(~var_0.d), 21532i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, -2147483647i), vec2<i32>(24807i, -2147483647i)), var_0.d)), 0i, 29349i, -1i), var_1.x, var_2.x | (_wgslsmith_dot_vec4_i32(var_0.a, var_0.a >> (vec4<u32>(var_3.a.x, 33697u, 1u, var_3.b.x) % vec4<u32>(32u))) >= (-2147483647i << ((var_3.b.x | var_3.b.x) % 32u))), u_input.c, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) + _wgslsmith_f_op_f32(sign(var_3.c.x))) < -1000f));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = !select(func_4(arg_0.a.ywz, countOneBits(1u), !vec3<bool>(arg_0.b, arg_0.e, arg_0.e), vec2<u32>(abs(0u), ~38391u)).yy, select(vec2<bool>(func_3(Struct_2(vec3<u32>(1u, 13395u, 0u), vec3<u32>(35809u, 0u, 4294967295u), arg_1)), false | arg_0.c), select(select(vec2<bool>(true, true), vec2<bool>(arg_0.e, arg_0.e), false), vec2<bool>(arg_0.e, arg_0.c), false), func_4(-vec3<i32>(-1i, -4160i, arg_0.a.x), ~4294967295u, !vec3<bool>(arg_0.c, false, false), select(vec2<u32>(4294967295u, 1u), vec2<u32>(26234u, 4294967295u), vec2<bool>(arg_0.c, arg_0.b))).wz), arg_0.b);
    var var_1 = Struct_2(vec3<u32>(30925u, reverseBits(1u), ~66622u), _wgslsmith_add_vec3_u32(vec3<u32>(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 7766u), vec3<u32>(1u, 45501u, 1u))), 2984u << (1u % 32u), ~60041u), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 75433u), ~vec3<u32>(69528u, 1u, 4294967295u), ~vec3<u32>(16870u, 21697u, 44682u)), vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_f32(f32(-1f) * -353f), -949f, arg_1.x)));
    let var_2 = var_1.b;
    var_1 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(13113u, var_2.x, 4294967295u, 16165u), _wgslsmith_div_vec4_u32(vec4<u32>(95661u, 45963u, var_1.a.x, var_2.x), vec4<u32>(var_1.a.x, 8658u, var_1.a.x, var_2.x)), max(vec4<u32>(18039u, var_1.b.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 46901u, var_1.b.x, var_1.a.x))), ~select(vec4<u32>(21298u, 0u, var_1.a.x, 35357u), vec4<u32>(var_1.b.x, var_2.x, 1u, 25944u), vec4<bool>(arg_0.e, arg_0.b, false, var_0.x))), var_2.x, 434u), var_1.a ^ (var_1.b | vec3<u32>(~37618u, var_2.x, 2539u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.c.x, -261f), -1206f, var_1.c.x, var_1.c.x), vec4<f32>(-1202f, 798f, arg_1.x, -1245f)) + _wgslsmith_f_op_vec4_f32(exp2(arg_1))));
    let var_3 = 1u ^ var_2.x;
    return Struct_2(min(abs(min(firstTrailingBit(vec3<u32>(20682u, var_2.x, 0u)), ~vec3<u32>(var_1.a.x, 1u, var_3))), select(var_1.b, firstLeadingBit(vec3<u32>(var_2.x, var_3, var_1.b.x)), all(!vec2<bool>(false, var_0.x)))), var_1.b, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(356f * 1000f))))), -248f, var_1.c.x, 1000f));
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_2.c.x;
    let var_1 = u_input.a >> (countOneBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_2.b.x, arg_2.b.x, arg_2.a.x), reverseBits(arg_2.a.x)) | firstLeadingBit(66916u)) % 32u);
    var var_2 = arg_2;
    let var_3 = Struct_2(countOneBits(select(var_2.a, vec3<u32>(4294967295u, _wgslsmith_mult_u32(0u, var_2.b.x), _wgslsmith_div_u32(arg_2.a.x, arg_2.b.x)), func_4(-vec3<i32>(u_input.e, u_input.c, var_1), select(arg_2.a.x, 0u, arg_3.x), vec3<bool>(true, arg_1.x, arg_1.x), vec2<u32>(arg_2.a.x, var_2.a.x)).xzy)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b.x, _wgslsmith_mod_u32(4294967295u, arg_2.a.x), arg_2.b.x), abs(~var_2.b)), _wgslsmith_f_op_vec4_f32(abs(var_2.c)));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1799f - -712f), 227f)), _wgslsmith_f_op_vec3_f32(func_5(func_2(), vec4<f32>(2024f, arg_2.c.x, 631f, 626f)).c.xyx - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(778f, var_3.c.x, -267f)), _wgslsmith_f_op_vec3_f32(min(var_3.c.xxz, arg_2.c.wxz)), arg_3.x | arg_1.x))), select(arg_3.wxy, vec3<bool>(true, !arg_3.x, func_4(vec3<i32>(0i, -19525i, var_1), var_3.b.x, vec3<bool>(true, arg_1.x, arg_1.x), var_3.b.zx).x), any(vec2<bool>(false, false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-504f, var_3.c.x, var_0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(572f, -1479f, 775f)))));
    return Struct_1(-max(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, 0i, var_1, 1i), vec4<i32>(-1i, var_1, u_input.c, 1i) ^ vec4<i32>(2147483647i, var_1, 0i, -2147483647i), -vec4<i32>(-35269i, var_1, -30853i, u_input.d)), vec4<i32>(-1i, u_input.c, -2146i, 47398i) ^ vec4<i32>(var_1, var_1, var_1, -2147483647i)), false, true, ~var_1, arg_3.x);
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = !((~(~1u) <= arg_1) == any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = !(!(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)));
    var_2 = vec2<bool>(false, var_2.x);
    var var_3 = 0i;
    return func_6(_wgslsmith_f_op_f32(-var_1), vec4<bool>(var_2.x, true, var_2.x, true), func_5(func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, 1000f, -364f, 139f))) + vec4<f32>(var_1, _wgslsmith_f_op_f32(ceil(2230f)), -653f, -454f))), vec4<bool>(func_3(Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, arg_1, 1u), vec3<u32>(arg_1, arg_1, 1u)), vec3<u32>(arg_1, arg_1, 0u), vec4<f32>(arg_0, 731f, 522f, arg_0))), false, true, var_2.x));
}

fn func_7(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec4<f32>(1f, _wgslsmith_f_op_f32(max(1865f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1542f - _wgslsmith_f_op_f32(f32(-1f) * -1011f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f), -640f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1460f, _wgslsmith_f_op_f32(f32(-1f) * -1083f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1711f, _wgslsmith_f_op_f32(991f + _wgslsmith_f_op_f32(502f + -1000f))))));
    let var_1 = var_0.x;
    var var_2 = arg_0.a;
    var_2 = arg_0.a;
    var_2 = _wgslsmith_add_vec4_i32(max(vec4<i32>(-reverseBits(-31760i), _wgslsmith_mult_i32(countOneBits(-10737i), u_input.b), _wgslsmith_dot_vec4_i32(arg_0.a, func_1(var_1, 80068u).a), var_2.x), ~vec4<i32>(0i, var_2.x, var_2.x, 25761i)), _wgslsmith_mult_vec4_i32(max(-(arg_0.a & arg_0.a), ~arg_0.a), firstLeadingBit(arg_0.a)));
    return Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(~(~32483u), _wgslsmith_clamp_u32(~20215u, ~41268u, 1u), _wgslsmith_mod_u32(1u, ~21276u)), vec3<u32>(_wgslsmith_mult_u32(32502u, 1u) << (0u % 32u), 1u, ~(~26063u))), vec3<u32>(4294967295u, _wgslsmith_mult_u32(max(~1u, ~36388u), 1u), 1u), _wgslsmith_f_op_vec4_f32(floor(var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1580f))), 48310u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(384f * _wgslsmith_div_f32(-2049f, _wgslsmith_f_op_f32(-var_0.c.x))))) + -595f);
    var_1 = var_0.c.x;
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.d, -4794i, u_input.c, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.c), vec4<i32>(u_input.d, u_input.a, u_input.d, -2147483647i))), ~vec4<i32>(2147483647i, u_input.e, 0i, -1i)), vec4<i32>(min(_wgslsmith_add_i32(36700i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-1i, u_input.a))), -(~u_input.d), u_input.c, firstTrailingBit(-24165i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-113f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(-var_0.c.x)))) != var_0.c.x, true, u_input.b, ~(~abs(u_input.a)) > _wgslsmith_div_i32(2147483647i ^ u_input.d, min(u_input.c, u_input.a)));
    var var_3 = Struct_1(var_2.a, var_2.c, true, _wgslsmith_div_i32(0i, -4557i), func_3(var_0));
    var_2 = Struct_1(var_2.a, !(!(_wgslsmith_f_op_f32(var_0.c.x * -582f) < _wgslsmith_f_op_f32(-var_0.c.x))), true, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(var_2.a.zzy), abs(vec3<i32>(2147483647i, -2147483647i, u_input.a)) & vec3<i32>(17815i, 0i, 1i)), func_6(_wgslsmith_f_op_f32(-579f * var_0.c.x), vec4<bool>(var_2.e, !var_3.b, !var_2.e, var_0.a.x > var_0.a.x), func_7(func_6(var_0.c.x, vec4<bool>(var_3.e, var_2.b, var_3.e, false), var_0, vec4<bool>(false, false, var_2.b, false))), vec4<bool>(select(var_2.b, var_3.b, var_2.c), false, false, true)).a.ywz), true);
    let var_4 = var_0.a.x;
    var var_5 = -1012f;
    var_1 = _wgslsmith_f_op_f32(-var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_3.d));
}

