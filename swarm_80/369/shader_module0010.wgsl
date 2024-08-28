struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    global0 = _wgslsmith_add_i32(arg_1 >> (arg_3.b % 32u), ~arg_1 ^ arg_1);
    global0 = arg_1;
    global0 = arg_1;
    var var_0 = true;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))), arg_2.x);
    return arg_1;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1234f))))));
    global0 = func_3(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, 1u), max(u_input.b, u_input.b), u_input.b << (u_input.a.x % 32u)) | u_input.b, u_input.b), 17465i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1021f * 276f), -792f, _wgslsmith_f_op_f32(floor(-490f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_div_f32(1000f, -1464f), -140f))), Struct_1(0u, ~_wgslsmith_add_u32(~4294967295u, ~52079u), vec4<bool>(true, true, arg_2.x, arg_2.x), min(u_input.a.x, ~52543u | u_input.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(787f)))), 163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(597f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1052f + 177f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1008f * -756f)), _wgslsmith_div_f32(-413f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-568f - -1435f), -717f)), true));
    let var_2 = Struct_2(select(select(select(!vec4<bool>(false, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), !arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x && true, arg_2.x), true), !vec4<bool>(true, !arg_2.x, arg_2.x, !arg_2.x), true), u_input.a.x, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.a.zw) & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 62179u, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.b, 30292u)), select(_wgslsmith_mult_u32(0u, u_input.a.x), 85542u, true), select(!(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(!arg_2.x, !arg_2.x, -1243f < var_1.x, arg_2.x && true), !select(vec4<bool>(arg_2.x, false, true, arg_2.x), vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, false))), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1000f) - 555f)) - _wgslsmith_f_op_f32(select(-822f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x), false))));
    var var_3 = -arg_0;
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    global0 = _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-1i, -1i, 7375i) ^ reverseBits(vec3<i32>(12583i, arg_3.x, arg_2))), arg_3);
    var var_0 = Struct_1(_wgslsmith_clamp_u32(firstTrailingBit(4210u), 0u, arg_0.b), arg_1, !vec4<bool>(arg_2 <= _wgslsmith_div_i32(arg_2, arg_2), !arg_0.c.c.x, arg_0.a.x, true), 40917u);
    var var_1 = func_2((-1i >> (_wgslsmith_sub_u32(u_input.b ^ arg_1, arg_0.c.a & var_0.d) % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(min(0u, 1u), 4294967295u, 26859u), ~_wgslsmith_mult_vec3_u32(u_input.a.zxy, u_input.a.wyz)) % 32u), ~(~arg_3.x ^ (countOneBits(23292i) ^ (2147483647i & arg_3.x))), select(!func_2(i32(-1i) * -63304i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, 15300i, 9041i), vec3<i32>(arg_3.x, 2147483647i, arg_3.x)), vec3<bool>(arg_0.a.x, var_0.c.x, true)).c.c.yyw, !(!var_0.c.xzz), any(arg_0.c.c.zzw))).c;
    let var_2 = arg_0.c;
    let var_3 = func_2(-17140i, -arg_3.x, func_2(arg_2, _wgslsmith_add_i32(arg_3.x, arg_3.x), arg_0.a.wwz).c.c.wyz).c;
    return arg_0;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    return Struct_1(_wgslsmith_mult_u32(arg_0.c.a, ~19300u), max(_wgslsmith_sub_u32(countOneBits(_wgslsmith_mult_u32(0u, 1u)), _wgslsmith_mod_u32(~65457u, _wgslsmith_dot_vec3_u32(u_input.a.ywz, vec3<u32>(u_input.b, u_input.a.x, 4294967295u)))), 1u), !(!func_2(-1i, select(26513i, 5661i, false), vec3<bool>(true, arg_0.c.c.x, arg_0.a.x)).c.c), _wgslsmith_add_u32(arg_0.c.b, u_input.a.x));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = func_4(Struct_2(select(!(!vec4<bool>(true, arg_1.c.x, arg_1.c.x, arg_1.c.x)), vec4<bool>(arg_3.c.x, 0u == arg_3.b, arg_0, true), 2147483647i >= select(-32986i, -1i, true)), ~max(1u, arg_3.a), func_5(Struct_2(arg_1.c, 1u, func_4(Struct_2(vec4<bool>(false, false, arg_1.c.x, false), arg_2.b, Struct_1(72063u, arg_3.b, arg_3.c, 75248u), 1006f), arg_3.b, -27227i, vec3<i32>(-23752i, -8450i, -2147483647i)).c, _wgslsmith_f_op_f32(-236f - 452f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -322f)))), ~func_5(func_2(2147483647i >> (arg_1.a % 32u), firstTrailingBit(0i), select(arg_1.c.wxx, vec3<bool>(true, arg_2.c.x, arg_1.c.x), vec3<bool>(true, true, true)))).b, -2147483647i, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(1579i, 6708i, 67353i), vec3<i32>(4476i, 11979i, -14382i), arg_1.c.wwy)), ~vec3<i32>(0i, 11846i, 1i) & select(vec3<i32>(-19607i, 16252i, 18779i), vec3<i32>(26561i, 0i, 0i), false))));
    let var_1 = func_2(13684i, firstLeadingBit(~(-2147483647i)), func_4(var_0, u_input.a.x << (~arg_2.b % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(-26990i, -57321i, -1i) >> (~u_input.a.xxy % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 0i, 10396i)), max(firstLeadingBit(abs(vec3<i32>(0i, 1i, 4454i))), vec3<i32>(func_3(vec2<u32>(arg_1.b, 519u), -2147483647i, vec3<f32>(1067f, 1404f, var_0.d), Struct_1(arg_3.d, 88527u, arg_2.c, arg_3.b)), max(2147483647i, 3637i), _wgslsmith_dot_vec4_i32(vec4<i32>(-76112i, -1i, 10478i, 1i), vec4<i32>(0i, -30864i, -14720i, -22946i))))).a.www).c.c.x;
    var var_2 = arg_1.a;
    var var_3 = Struct_1(_wgslsmith_sub_u32(~(~firstTrailingBit(60283u)), ~(~4294967295u)), _wgslsmith_mult_u32(func_4(var_0, ~(var_0.c.d >> (4294967295u % 32u)), -_wgslsmith_clamp_i32(-1i, 1i, 15098i), ~(-vec3<i32>(13745i, 0i, 2147483647i))).b, arg_1.d), arg_3.c, func_2(_wgslsmith_add_i32(func_3(u_input.a.xz | vec2<u32>(4294967295u, 13450u), 1i >> (0u % 32u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1388f, -543f, -1913f), vec3<f32>(-1166f, var_0.d, 422f), arg_1.c.zxz)), Struct_1(19308u, u_input.b, arg_2.c, arg_1.a)), ~0i), _wgslsmith_clamp_i32(countOneBits(-1i), firstLeadingBit(1i), 2147483647i), !(!vec3<bool>(arg_3.c.x, false, arg_3.c.x))).c.b);
    let var_4 = vec3<i32>(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(17184i, -21106i, 2147483647i, 17434i), ~vec4<i32>(0i, 2147483647i, 35590i, 2147483647i)), -86128i), -_wgslsmith_mod_i32(1i, ~(-13873i)), -firstTrailingBit(1i));
    return 0i | func_3(vec2<u32>(8457u, arg_2.d), 6272i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 543f, var_0.d) + vec3<f32>(var_0.d, var_0.d, -431f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, -1863f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(284f, var_0.d, var_0.d) + vec3<f32>(var_0.d, -1000f, 849f))), arg_1);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    let var_0 = arg_0;
    global0 = abs(-4313i);
    let var_1 = -(i32(-1i) * -(~(-33290i)));
    global0 = ~func_6(true, Struct_1(max(~u_input.a.x, 1u), 1u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(_wgslsmith_clamp_u32(19606u, u_input.b, 4294967295u), 90379u, true)), func_5(func_4(func_2(var_0.x, -1i, vec3<bool>(false, false, true)), _wgslsmith_div_u32(32830u, u_input.a.x), -14358i, vec3<i32>(-1i, -2147483647i, 21999i))), Struct_1(u_input.b, ~(u_input.b | 1u), vec4<bool>(true, true, true, true), u_input.b));
    var var_2 = arg_0;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-17776i, ~0i, select(-31613i, i32(-1i) * -16735i, true)), ~1i >> (~(~u_input.b) % 32u)), vec2<i32>(-(~(~(-66227i))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(reverseBits(-5667i), 1i, i32(-1i) * -38809i), 12038i)));
    let var_0 = 239f;
    var var_1 = all(vec4<bool>(true, true, -47572i < (37649i << (u_input.a.x % 32u)), all(vec4<bool>(true, true, true, true)))) && (0u >= u_input.b);
    global0 = _wgslsmith_mult_i32(~(-1i), _wgslsmith_mult_i32(-(~(-36355i)), _wgslsmith_mod_i32(-1i, func_1(vec2<i32>(1i, 1i)))));
    var var_2 = func_5(Struct_2(func_2(select(_wgslsmith_add_i32(-1i, -7659i), 1i, all(vec4<bool>(true, true, true, false))), 47283i, !func_5(Struct_2(vec4<bool>(true, true, false, false), 1u, Struct_1(u_input.b, u_input.a.x, vec4<bool>(false, true, true, false), 0u), -1330f)).c.xxx).c.c, _wgslsmith_dot_vec2_u32(vec2<u32>(3360u >> (u_input.a.x % 32u), 32578u), ~vec2<u32>(48933u, 0u) ^ vec2<u32>(u_input.a.x, u_input.b)), Struct_1(0u, ~_wgslsmith_clamp_u32(49754u, 50681u, u_input.b), vec4<bool>(any(vec3<bool>(false, false, false)), true, true, false), func_4(func_2(1i, -6252i, vec3<bool>(false, true, true)), 1u, 2147483647i, ~vec3<i32>(-68636i, 1i, -25838i)).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0, var_0)), _wgslsmith_f_op_f32(-var_0)))))).c.yx;
    var var_3 = func_4(func_4(Struct_2(!(!vec4<bool>(var_2.x, true, true, var_2.x)), _wgslsmith_mod_u32(u_input.b >> (4294967295u % 32u), 0u | u_input.b), Struct_1(_wgslsmith_div_u32(969u, 4294967295u), ~9615u, !vec4<bool>(var_2.x, true, false, true), ~u_input.b), var_0), 4294967295u, ~26023i, _wgslsmith_div_vec3_i32(~vec3<i32>(15613i, 15038i, -1i) | firstTrailingBit(vec3<i32>(2147483647i, -2147483647i, 51625i)), countOneBits(abs(vec3<i32>(1i, -8817i, -2147483647i))))), 9840u, 1i, ~countOneBits(vec3<i32>(-1i) * -vec3<i32>(-1i, 10666i, 28017i)));
    var_1 = !any(!var_3.c.c);
    global0 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_3.b, var_3.b, u_input.a.x, var_3.b)), ~u_input.a), 0u, _wgslsmith_add_u32(u_input.a.x, select(u_input.a.x, var_3.c.d, false)), var_3.b), vec4<u32>(max(select(46831u, var_3.b, var_2.x), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(37266u, 90175u) >> (u_input.a.x % 32u), 4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(83198u, 0u), var_3.c.a))), vec2<f32>(var_3.d, -663f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2121f, -660f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, var_3.d))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, 110f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_3.d)))))), 1i << (select(_wgslsmith_sub_u32(38618u, min(var_3.b, u_input.b)), ~(~73024u), var_2.x) % 32u));
}

