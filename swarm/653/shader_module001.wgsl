struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f), 810f), 114f, _wgslsmith_f_op_f32(step(-270f, _wgslsmith_f_op_f32(-108f * 429f)))), vec3<f32>(1f, 1f, 1f))), vec4<i32>(1i, _wgslsmith_mod_i32(min(-2147483647i, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, 15734i))), u_input.b >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 78749u), vec2<u32>(72425u, 1u)), 1u) % 32u), ~abs(u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1546f, _wgslsmith_f_op_f32(trunc(-476f))) + _wgslsmith_div_f32(-1480f, -1656f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1354f)) * _wgslsmith_f_op_f32(-1000f + 1440f))))), true, ~(~(3293u >> (countOneBits(64545u) % 32u))));
    let var_1 = Struct_2(-_wgslsmith_div_i32(u_input.a, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1000f, 1028f, false)), _wgslsmith_f_op_f32(min(var_0.a.x, -1319f)), _wgslsmith_f_op_f32(floor(var_0.c)), _wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(171f, var_0.c))))));
    let var_2 = var_1;
    var var_3 = var_1.b;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(390f - _wgslsmith_div_f32(-1488f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(879f, 2221f, false)))))));
    return select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(any(select(vec4<bool>(false, var_0.d, true, var_0.d), vec4<bool>(true, false, var_0.d, true), false)), any(select(vec4<bool>(var_0.d, var_0.d, true, false), vec4<bool>(true, var_0.d, false, true), var_0.d)), _wgslsmith_f_op_f32(floor(var_4)) <= var_2.c)), !(!(!vec3<bool>(false, var_0.d, var_0.d))), vec3<bool>(var_0.d, !any(select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(true, var_0.d, false), vec3<bool>(true, var_0.d, false))), var_0.d));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = !select(vec3<bool>(all(vec3<bool>(arg_0, arg_1.d, true)), false, true), vec3<bool>(arg_0, true, !any(vec2<bool>(arg_0, false))), !func_3());
    var var_1 = arg_1;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.b.xwx * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.x, var_1.c, arg_2.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.c, -614f)), vec3<bool>(true, var_1.d, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-228f, arg_2.b.x, 1000f) * vec3<f32>(-750f, var_1.c, -871f)) * vec3<f32>(var_1.c, arg_2.c, arg_1.a.x)))), arg_1.b, arg_2.c, false, ~arg_1.e);
    var_0 = !(!(!(!vec3<bool>(true, true, arg_1.d))));
    var var_2 = arg_2;
    return any(vec4<bool>(!((var_1.e >> (arg_1.e % 32u)) > 0u), !(-824f == arg_1.c), select(!any(vec3<bool>(false, true, arg_0)), true, arg_0), arg_0));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = arg_1.b.x;
    var var_1 = arg_1;
    let var_2 = Struct_2(abs(_wgslsmith_sub_i32(-(-2147483647i | var_1.a), -2787i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b), vec4<f32>(1000f, arg_1.c, var_1.c, 1000f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 115f, var_1.b.x, -772f) + vec4<f32>(103f, var_1.c, var_0, arg_1.c)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.c, arg_1.c)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_2.b.yyx)) * arg_1.b.yzz), select(abs(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-23917i, 2147483647i, 2147483647i, u_input.b), vec4<i32>(1i, var_2.a, u_input.a, 26932i)))), -abs(vec4<i32>(-2147483647i, 25406i, -8971i, -36691i)), arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 453f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - 756f) - arg_1.b.x)) * var_0), arg_2.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_0, _wgslsmith_mult_u32(select(arg_0, arg_0, arg_2.x), arg_0)), arg_0));
    let var_4 = var_3;
    return !vec2<bool>(func_3().x, true);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(734f + _wgslsmith_f_op_f32(arg_3.c - 848f)), 1059f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.a))), vec4<i32>(-_wgslsmith_div_i32(arg_3.b.x, 1i), 109105i, 1i, 49088i), arg_2.c, (arg_2.b.x < 1000f) || any(vec2<bool>(!arg_3.d, true)), 65716u);
    let var_1 = vec2<u32>(abs((_wgslsmith_mult_u32(var_0.e, 36547u) & var_0.e) ^ _wgslsmith_mod_u32(70639u, 70798u | var_0.e)), (1u ^ abs(_wgslsmith_div_u32(arg_3.e, 0u))) >> (~var_0.e % 32u));
    let var_2 = countOneBits(~(-2147483647i));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(997f, _wgslsmith_f_op_f32(-599f + _wgslsmith_f_op_f32(arg_3.c - arg_2.b.x)))), _wgslsmith_div_f32(1342f, arg_2.b.x), var_0.c), firstTrailingBit((-arg_3.b << ((vec4<u32>(4294967295u, 1u, var_1.x, var_0.e) & vec4<u32>(23604u, 1u, var_1.x, arg_3.e)) % vec4<u32>(32u))) ^ vec4<i32>(-u_input.b, abs(-1i), firstTrailingBit(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.b.x), vec2<i32>(-11501i, u_input.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.b.x))), 1u >= var_0.e, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, var_1.x, arg_3.e), ~vec3<u32>(var_1.x, 3945u, var_1.x), vec3<bool>(true, true, true)) | select(vec3<u32>(0u, var_1.x, arg_3.e), ~vec3<u32>(21476u, var_0.e, 49571u), var_0.b.x < var_0.b.x), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_3.e, var_1.x, var_0.e) & _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.e, 15789u, var_1.x), vec3<u32>(4294967295u, var_0.e, arg_3.e)), select(firstLeadingBit(vec3<u32>(var_1.x, var_1.x, arg_3.e)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.e, var_1.x, 1u), vec3<u32>(81156u, var_1.x, 12104u)), !vec3<bool>(var_0.d, arg_0.x, var_0.d)))));
    let var_3 = Struct_2(arg_2.a, arg_2.b, 187f);
    return Struct_1(var_3.b.zxw, _wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(select(firstLeadingBit(arg_2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, arg_3.b.x), vec3<i32>(-8249i, 64878i, var_0.b.x)), false), -1i | var_0.b.x, _wgslsmith_mult_i32(var_3.a, var_0.b.x) ^ 25358i, _wgslsmith_div_i32(arg_3.b.x, arg_2.a << (arg_3.e % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -641f) * _wgslsmith_f_op_f32(sign(-1050f))) + 1021f), false, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e, 4294967295u, 0u, 35687u), vec4<u32>(18019u, var_0.e, 1u, 1u)), max(~vec4<u32>(var_1.x, 37294u, arg_3.e, 10725u), vec4<u32>(var_0.e, var_1.x, 1u, 32565u) | vec4<u32>(var_0.e, 8965u, arg_3.e, 3937u)), ~firstLeadingBit(vec4<u32>(var_0.e, var_0.e, 1u, var_0.e))), vec4<u32>(abs(_wgslsmith_div_u32(0u, var_1.x)), 1u, (41742u | arg_3.e) >> (var_1.x % 32u), var_0.e)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = var_0;
    var var_2 = i32(-1i) * -u_input.b;
    let var_3 = max(var_0.b.x, abs(firstLeadingBit(-2147483647i)));
    let var_4 = Struct_2(-_wgslsmith_mult_i32(~(-2476i), (2147483647i | u_input.a) << (_wgslsmith_mod_u32(arg_3, 0u) % 32u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_1.b, arg_1.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1450f, 1139f, 1317f, 229f))), select(select(vec4<bool>(var_1.d, arg_0.d, var_0.d, arg_0.d), vec4<bool>(var_0.d, var_0.d, true, var_0.d), var_0.d), !vec4<bool>(true, var_1.d, var_1.d, var_1.d), func_2(false, Struct_1(var_0.a, vec4<i32>(-21851i, var_1.b.x, arg_1.a, arg_1.a), var_0.a.x, false, var_1.e), Struct_2(var_1.b.x, vec4<f32>(-309f, arg_0.a.x, -1000f, -550f), arg_1.c))))))), _wgslsmith_f_op_f32(-var_1.a.x));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = vec3<f32>(-106f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1506f))))), 1f);
    var var_1 = !arg_2;
    var var_2 = var_0.x;
    var var_3 = -32305i;
    var_1 = arg_0;
    return func_6(func_5(func_4(firstTrailingBit(1u), Struct_2(u_input.a << (10326u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, -932f, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_f32(round(var_0.x))), vec4<bool>(-716f > var_0.x, func_2(true, Struct_1(vec3<f32>(var_0.x, var_0.x, -1333f), vec4<i32>(14267i, arg_1.x, 156i, u_input.b), var_0.x, true, 1u), Struct_2(u_input.a, vec4<f32>(var_0.x, -1000f, var_0.x, 320f), -1319f)), any(vec4<bool>(arg_2, true, arg_3, true)), arg_3 && true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(171f, -621f, 142f) - var_0)), var_0, vec3<bool>(true, true, true))), Struct_2(19780i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, 560f, -1580f))) * vec4<f32>(var_0.x, -1000f, 466f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -793f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0))), vec4<i32>(_wgslsmith_mult_i32(arg_1.x, -62979i), u_input.a ^ u_input.b, abs(66350i), 2147483647i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1437f)), _wgslsmith_f_op_f32(-var_0.x))), false, 13432u)), Struct_2(_wgslsmith_clamp_i32(countOneBits(abs(arg_1.x)), -1i, arg_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -967f, var_0.x, 869f)))), _wgslsmith_f_op_f32(round(var_0.x))), 2147483647i, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(4294967295u), ~1u), vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)), vec2<u32>(~_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_div_u32(118346u, 36339u) << (~4294967295u % 32u))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    let var_0 = vec4<bool>(!(!arg_0.d), true, func_1(arg_0.d, -_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_1.a), arg_0.b.yw), true, arg_0.d).d, arg_0.d);
    let var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~1u, arg_0.e, arg_0.e, 1u), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 1u, arg_2.x, arg_2.x), vec4<u32>(arg_2.x, 45498u, arg_0.e, arg_0.e))));
    var var_2 = -556f;
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_div_f32(-1896f, arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(612f - arg_1.b.x) * arg_0.c)), arg_1.b.x), arg_0.b, _wgslsmith_f_op_f32(abs(-160f)), func_3().x, var_1.x);
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c - arg_0.c)));
    return 6907u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<u32>(firstTrailingBit(~(~4294967295u)), countOneBits(min(firstLeadingBit(1u), 1u)), firstLeadingBit(1u), ~_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 25806u, 45142u), vec3<u32>(39195u, 1u, 2711u)))), max(vec4<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 99277u, 49498u), vec4<u32>(4294967295u, 432u, 1u, 27624u)), max(14127u, 9327u), ~1u), func_7(func_1(true, vec2<i32>(2101i, -1i), false, false), Struct_2(2147483647i, vec4<f32>(-1311f, 120f, 649f, 159f), 658f), vec3<u32>(32454u, 0u, 0u)), ~(~0u)), vec4<u32>(1u, 1u, 1u, 1u)), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true)));
    var var_1 = any(func_3());
    var var_2 = ~(1i & u_input.a);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-986f)))))) != func_6(func_6(Struct_1(func_6(Struct_1(vec3<f32>(-980f, -1000f, 1000f), vec4<i32>(-1i, u_input.a, u_input.b, -1i), 257f, true, 0u), Struct_2(-1i, vec4<f32>(-260f, 1000f, -1556f, -870f), 1207f), u_input.a, var_0.x).a, -vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b), 592f, all(vec4<bool>(false, false, true, false)), ~var_0.x), Struct_2(u_input.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-631f, -285f, 1018f, 642f))), _wgslsmith_f_op_f32(min(1268f, 1239f))), countOneBits(~0i), func_7(Struct_1(vec3<f32>(547f, 987f, 640f), vec4<i32>(u_input.b, u_input.b, 40965i, u_input.b), -347f, true, 4294967295u), Struct_2(17317i, vec4<f32>(-1000f, -2043f, 755f, -691f), -240f), abs(vec3<u32>(121897u, var_0.x, 25055u)))), Struct_2(u_input.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(534f, -2137f, 2017f, 1329f)))), _wgslsmith_f_op_f32(round(-2360f))), -20321i, var_0.x & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), ~vec4<u32>(51200u, 10353u, var_0.x, var_0.x))).a.x;
    var_2 = ~(u_input.a >> (var_0.x % 32u));
    var_2 = countOneBits(_wgslsmith_dot_vec3_i32(-func_1(true, vec2<i32>(u_input.b, -43479i), false, false).b.yww, reverseBits(abs(vec3<i32>(u_input.b, -42806i, u_input.a)))) & u_input.b);
    var var_3 = false;
    var var_4 = func_1(true, vec2<i32>(u_input.a | -25278i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27813i, -19873i, u_input.b | u_input.a, u_input.a << (var_0.x % 32u)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.b, u_input.a) >> (vec4<u32>(var_0.x, 66115u, 24264u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b)))), true, func_4(~17768u, Struct_2(u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-372f, 1000f, -1000f, -555f), vec4<f32>(361f, 234f, -224f, -1313f), true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1285f, -411f, -544f, -918f)))), _wgslsmith_f_op_f32(-1f)), !vec4<bool>(true, func_1(true, vec2<i32>(u_input.a, u_input.b), false, true).d, 0u < var_0.x, true)).x);
    var_4 = Struct_1(var_4.a, func_1(var_4.d, vec2<i32>(var_4.b.x, abs(func_6(Struct_1(var_4.a, var_4.b, -1000f, var_4.d, var_0.x), Struct_2(u_input.b, vec4<f32>(var_4.c, -1000f, var_4.a.x, var_4.c), var_4.a.x), u_input.a, 22723u).b.x)), !(!func_5(vec2<bool>(var_4.d, true), vec3<f32>(var_4.a.x, var_4.a.x, var_4.a.x), Struct_2(-21229i, vec4<f32>(1000f, -141f, 232f, var_4.c), var_4.a.x), Struct_1(var_4.a, vec4<i32>(var_4.b.x, 0i, var_4.b.x, 1i), 502f, true, 48354u)).d), any(func_3().yy)).b, var_4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, var_4.b.xz, false, false).a.x * var_4.a.x)) < 1993f, countOneBits(~var_4.e << (15880u % 32u)) | (var_4.e & func_1(!var_4.d, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -8515i), vec2<i32>(u_input.a, 20833i)), !var_4.d, true).e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 1i << (var_0.x % 32u), u_input.a, var_4.b.x), var_4.b | -vec4<i32>(2147483647i, -9524i, -17918i, 0i)) ^ u_input.b, -118f);
}

