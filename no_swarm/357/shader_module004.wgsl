struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -45771i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    return u_input.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    let var_0 = 3205i;
    let var_1 = 0i;
    let var_2 = Struct_1(vec3<i32>(func_3(), 1i, ~arg_2), -_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(1i, -1i, var_1)), -u_input.b, ~min(vec3<i32>(-2147483647i, -5597i, var_0), vec3<i32>(u_input.b.x, -1i, -2147483647i))), !(!select(select(true, arg_1.x, true), select(true, true, arg_1.x), false)), arg_0.x << (67745u % 32u));
    global0 = _wgslsmith_mult_i32(2147483647i, abs(var_2.a.x));
    global0 = 0i ^ _wgslsmith_dot_vec4_i32(select(-(vec4<i32>(u_input.b.x, 2147483647i, arg_2, -2147483647i) ^ vec4<i32>(u_input.a.x, var_2.a.x, var_1, u_input.a.x)), -select(vec4<i32>(var_2.a.x, -2147483647i, 1i, 38913i), vec4<i32>(-2147483647i, var_2.a.x, 10342i, 0i), vec4<bool>(false, var_2.c, true, arg_1.x)), select(vec4<bool>(var_2.c, true, arg_1.x, var_2.c), select(vec4<bool>(arg_1.x, var_2.c, true, true), vec4<bool>(false, arg_1.x, var_2.c, arg_1.x), arg_1.x), var_2.c)), vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, var_1, -22037i)), ~vec3<i32>(u_input.a.x, 1i, 2147483647i)), ~(~18667i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(40349i, var_1, -46892i), _wgslsmith_sub_i32(var_2.a.x, 36479i))));
    return min(_wgslsmith_clamp_i32(~(-var_0), -13304i, func_3()), 25287i);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> vec3<u32> {
    let var_0 = ~vec3<u32>(countOneBits(~arg_2 << (~70275u % 32u)), ~_wgslsmith_clamp_u32(min(16324u, 5671u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 4657u, 45754u), vec3<u32>(57189u, 37693u, 73617u)), arg_2), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 61196u, arg_2), vec3<u32>(arg_2, 43858u, arg_2)), vec3<u32>(0u, arg_2, 22614u)));
    let var_1 = vec3<u32>(85562u, ~(~var_0.x), 177u);
    global0 = 29754i;
    var var_2 = Struct_1(vec3<i32>(u_input.a.x >> (abs(var_1.x) % 32u), _wgslsmith_sub_i32(_wgslsmith_div_i32(~arg_0.x, ~0i), arg_0.x), _wgslsmith_dot_vec2_i32(arg_0.wy ^ ~vec2<i32>(0i, 1i), vec2<i32>(~1i, _wgslsmith_sub_i32(arg_0.x, 2147483647i)))), max(reverseBits(vec3<i32>(-1i) * -vec3<i32>(49245i, 24204i, arg_0.x)), vec3<i32>(arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -12443i), ~arg_0.yx), 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1959f, -1569f)))) > -171f, 3892u);
    var var_3 = Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(1i, -1i, firstLeadingBit(11976i))), vec3<i32>(var_2.a.x, var_2.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 25402i, arg_0.x, var_2.b.x), arg_0), -28779i))), -vec3<i32>(_wgslsmith_mult_i32(arg_0.x, _wgslsmith_mod_i32(arg_0.x, arg_0.x)), var_2.b.x, u_input.b.x), !all(select(vec4<bool>(false, var_2.c, arg_1, true), !vec4<bool>(false, true, false, arg_1), var_2.c)), ~arg_2 | 4294967295u);
    return vec3<u32>(var_3.d, ~4294967295u, ~arg_2);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = -2147483647i;
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(arg_2.b, arg_2.a), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_2.b.x, -47118i), vec3<i32>(-17081i, u_input.a.x, u_input.b.x)) & abs(-1i), (arg_2.b.x << (55136u % 32u)) | arg_2.a.x, u_input.b.x >> (_wgslsmith_mult_u32(0u, arg_0.x) % 32u)) >> (_wgslsmith_sub_vec3_u32(arg_0, ~arg_0) % vec3<u32>(32u)), select(select(0u < reverseBits(arg_2.d), _wgslsmith_f_op_f32(f32(-1f) * -440f) != arg_1.x, !(!arg_2.c)), 0i <= _wgslsmith_mod_i32(_wgslsmith_div_i32(-13166i, arg_2.a.x), ~arg_2.b.x), select(true, arg_2.c, ~(-11675i) > (1i | u_input.b.x))), arg_0.x);
    var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = vec2<u32>(~(~firstLeadingBit(arg_0.x)), firstLeadingBit((45072u << ((var_0.d << (var_0.d % 32u)) % 32u)) << (firstLeadingBit(var_0.d >> (30381u % 32u)) % 32u)));
    return Struct_1(vec3<i32>(0i, u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(37375u, 102794u, 0u), arg_0) % 32u), -(var_0.a.x >> (arg_2.d % 32u))) << (~(vec3<u32>(var_0.d, var_1.x, 22709u) & ~arg_0) % vec3<u32>(32u)), arg_2.a, arg_2.c, countOneBits(1u));
}

fn func_1() -> vec4<bool> {
    let var_0 = func_5(func_4(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 27027i), u_input.b.zy), -28908i ^ u_input.b.x, func_2(vec2<u32>(0u, 1u), vec2<bool>(true, true), -57685i), min(-2147483647i, u_input.b.x))), false, ~55796u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2015f, 374f, -103f), vec3<f32>(953f, 1324f, -1203f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-752f, 1000f, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1165f, -261f, 535f) * vec3<f32>(774f, -843f, -1858f))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -247f))), _wgslsmith_f_op_f32(f32(-1f) * -1199f), -1198f)), Struct_1(select(min(vec3<i32>(u_input.b.x, 28361i, 1i), u_input.b), abs(u_input.b), all(vec2<bool>(false, false))) << (abs(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, u_input.b), vec3<i32>(u_input.b.x, 1i, -21410i) >> (vec3<u32>(4294967295u, 36772u, 0u) % vec3<u32>(32u)))), !(!any(vec3<bool>(true, true, true))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(1u), 55144u, 1u), reverseBits(39164u))));
    global0 = -10859i;
    var var_1 = var_0;
    let var_2 = var_0.c & var_0.c;
    var var_3 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-1i, _wgslsmith_mult_i32(var_0.a.x ^ 2147483647i, ~var_1.b.x), var_0.a.x, u_input.b.x | -1i)), select(-select(vec4<i32>(-2147483647i, u_input.a.x, -1i, 0i), vec4<i32>(var_1.a.x, -2147483647i, -55276i, -7170i) >> (vec4<u32>(var_0.d, var_0.d, 49693u, var_0.d) % vec4<u32>(32u)), vec4<bool>(true, var_1.c, true, var_2)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(16439i, var_1.a.x, 41611i, u_input.a.x), -vec4<i32>(var_1.b.x, var_1.a.x, var_0.b.x, u_input.a.x)), ~vec4<i32>(20813i, 28837i, -1i, var_0.a.x) ^ (vec4<i32>(var_1.b.x, 8015i, u_input.a.x, -1i) ^ vec4<i32>(28559i, -49557i, var_0.a.x, var_1.b.x))), !vec4<bool>(var_0.c, !var_0.c, var_1.c & var_2, var_1.c)), select(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.b.x, var_0.b.x), vec4<i32>(36871i, -33208i, var_1.a.x, var_1.a.x)), vec4<i32>(var_1.b.x, -24275i, 41910i, -6242i)), _wgslsmith_add_vec4_i32(~vec4<i32>(var_0.a.x, 4895i, 1i, 17867i), vec4<i32>(u_input.a.x, 2147483647i, var_0.a.x, var_0.b.x)), -457f < _wgslsmith_f_op_f32(round(-240f))) << (~firstLeadingBit(vec4<u32>(24234u, 10770u, 4294967295u, 4529u)) % vec4<u32>(32u)));
    return !(!(!select(vec4<bool>(var_2, true, true, var_2), vec4<bool>(var_0.c, true, false, var_2), var_0.c)));
}

fn func_6(arg_0: vec3<bool>) -> Struct_1 {
    global0 = u_input.a.x;
    let var_0 = Struct_1(vec3<i32>(-u_input.b.x, u_input.b.x | 1i, u_input.b.x) & vec3<i32>(u_input.a.x, 1i, firstLeadingBit(-2147483647i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(3791i, 2147483647i, -1i), u_input.b | _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.a.x, 0i))), ~(~vec3<i32>(-7132i, u_input.a.x, u_input.a.x))), arg_0.x, _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 14706u), max(21581u, ~40628u)), 1u));
    global0 = countOneBits(0i);
    var var_1 = var_0;
    var var_2 = func_3();
    return Struct_1(u_input.b, abs(-_wgslsmith_add_vec3_i32(u_input.b, select(var_0.b, vec3<i32>(var_0.b.x, -1i, 0i), arg_0))), var_0.c, _wgslsmith_clamp_u32(var_1.d, var_0.d, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0.d, var_1.d), select(vec3<u32>(var_0.d, var_1.d, var_1.d), vec3<u32>(0u, 4294967295u, 0u), true))) & ~var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!vec3<bool>(true, all(func_1()), true));
    var_0 = Struct_1(var_0.a, vec3<i32>(var_0.b.x, ~0i, min(~1i, ~(-1i)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_0.d, 0u, 1u), vec4<u32>(20273u, var_0.d, var_0.d, 1u) >> (vec4<u32>(9383u, 53788u, var_0.d, 22588u) % vec4<u32>(32u))) % 32u)), !(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.a.x, -2147483647i), u_input.a.x) >= ~func_2(vec2<u32>(0u, 4294967295u), vec2<bool>(true, false), var_0.a.x)), firstLeadingBit(~countOneBits(_wgslsmith_clamp_u32(55545u, 4294967295u, var_0.d))));
    var var_1 = func_2(_wgslsmith_add_vec2_u32(abs(~(~vec2<u32>(var_0.d, 2853u))), ~vec2<u32>(var_0.d, 1u)), !(!(!vec2<bool>(var_0.c, var_0.c))), var_0.b.x);
    global0 = 2147483647i;
    var_1 = max(_wgslsmith_mult_i32(~countOneBits(0i), 58483i), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-311f, 841f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1662f))), _wgslsmith_f_op_f32(select(-994f, _wgslsmith_f_op_f32(floor(919f)), all(vec4<bool>(true, var_0.c, true, true))))))), i32(-1i) * -18204i);
}

