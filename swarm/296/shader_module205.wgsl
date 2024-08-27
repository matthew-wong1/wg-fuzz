struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-276f, 975f, -922f), vec3<f32>(654f, -1456f, 1474f), vec3<f32>(-485f, -2224f, -436f), vec3<f32>(-1261f, 2359f, -372f), vec3<f32>(-488f, -562f, 1209f), vec3<f32>(-951f, -745f, -855f), vec3<f32>(-1090f, 795f, -788f), vec3<f32>(-587f, 1000f, -2166f), vec3<f32>(816f, 835f, 975f), vec3<f32>(-292f, 598f, -476f), vec3<f32>(1042f, -972f, -1000f), vec3<f32>(-467f, -309f, 652f), vec3<f32>(1050f, -1199f, -1284f), vec3<f32>(-650f, -381f, -132f), vec3<f32>(-2312f, 585f, 1000f), vec3<f32>(417f, -251f, -926f), vec3<f32>(-362f, -233f, 909f), vec3<f32>(-1243f, -543f, 1541f), vec3<f32>(-982f, 354f, 1272f), vec3<f32>(111f, 3696f, -1526f), vec3<f32>(758f, -1359f, -187f), vec3<f32>(-440f, -831f, -756f), vec3<f32>(659f, -765f, 186f), vec3<f32>(-1000f, -959f, -704f), vec3<f32>(-713f, -437f, 1000f), vec3<f32>(644f, -1142f, -1800f), vec3<f32>(380f, -471f, 424f), vec3<f32>(928f, -371f, -245f), vec3<f32>(595f, 1102f, 1944f));

var<private> global1: array<vec2<u32>, 26>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-3039f, 1f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1476f + _wgslsmith_f_op_f32(trunc(-842f))))));
    global0 = array<vec3<f32>, 29>();
    global0 = array<vec3<f32>, 29>();
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(~(_wgslsmith_add_u32(u_input.a, 60609u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, u_input.a), vec4<u32>(1u, u_input.a, u_input.c, u_input.c)) % 32u)), u_input.c, 4294967295u), reverseBits(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.c, 609u, 25765u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.e), vec3<u32>(0u, 26132u, u_input.a)))));
    let var_2 = 1f;
    return var_1.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = ~(1u | func_3());
    global1 = array<vec2<u32>, 26>();
    global1 = array<vec2<u32>, 26>();
    let var_1 = reverseBits(13851u);
    global0 = array<vec3<f32>, 29>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-884f)), 1f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(arg_1, vec2<i32>(-36224i, 30553i), u_input.c, arg_0)))), -289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1054f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f + _wgslsmith_f_op_f32(max(-234f, 1307f))) * -863f)));
    global1 = array<vec2<u32>, 26>();
    let var_1 = countOneBits(_wgslsmith_add_vec4_u32(reverseBits(select(~vec4<u32>(74271u, 4294967295u, 4294967295u, 1318u), firstLeadingBit(vec4<u32>(arg_0.d.x, 45955u, arg_1.x, 1u)), arg_0.a.x >= 2147483647i)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, arg_1.x, 59546u, arg_0.d.x)), countOneBits(~vec4<u32>(26110u, 57449u, arg_1.x, 35000u)))));
    var var_2 = global0[_wgslsmith_index_u32(~reverseBits(func_3()), 29u)];
    let var_3 = countOneBits(arg_0.d.x >> ((_wgslsmith_mult_u32(countOneBits(var_1.x), arg_1.x) | _wgslsmith_add_u32(6572u, ~45377u)) % 32u));
    return Struct_2(arg_0.c, select(arg_0.b && any(select(arg_0.c, vec2<bool>(false, arg_0.c.x), vec2<bool>(arg_0.c.x, arg_0.e))), all(vec3<bool>(!arg_0.b, false, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(arg_0.c.x, false, arg_0.c.x), arg_0.b))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(vec2<i32>(u_input.b.x, _wgslsmith_div_i32(1i, u_input.b.x)) >> (max(_wgslsmith_sub_vec2_u32(vec2<u32>(5242u, 85904u), global1[_wgslsmith_index_u32(u_input.e, 26u)]), vec2<u32>(u_input.c, u_input.e)) % vec2<u32>(32u)), !(u_input.c <= u_input.c) & true, vec2<bool>(any(vec3<bool>(true, true, true)) || true, all(vec2<bool>(true, true)) && true), ~_wgslsmith_mult_vec2_u32(reverseBits(global1[_wgslsmith_index_u32(u_input.e, 26u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(56377u, u_input.e), global1[_wgslsmith_index_u32(61624u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)])), ~_wgslsmith_add_i32(u_input.d.x, -12020i) < u_input.b.x), abs(_wgslsmith_mod_vec3_u32(select(~vec3<u32>(117418u, 47892u, 25350u), vec3<u32>(4294967295u, 50069u, 28563u) ^ vec3<u32>(u_input.a, u_input.e, u_input.a), true), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u) | vec3<u32>(0u, u_input.e, u_input.e), ~vec3<u32>(0u, 0u, 4294967295u)))));
    global1 = array<vec2<u32>, 26>();
    var var_1 = Struct_1(~select(u_input.d.ww, firstTrailingBit(vec2<i32>(-2147483647i, -14019i) >> (global1[_wgslsmith_index_u32(0u, 26u)] % vec2<u32>(32u))), !var_0.a.x), all(!(!select(vec3<bool>(true, true, var_0.c), vec3<bool>(var_0.b, var_0.a.x, var_0.a.x), false))), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(481f))) != -1000f, false), global1[_wgslsmith_index_u32(4294967295u, 26u)], !any(vec2<bool>(false, true)));
    let var_2 = func_1(Struct_1(select(vec2<i32>(2147483647i, var_1.a.x) | u_input.d.xy, _wgslsmith_add_vec2_i32(vec2<i32>(-57611i, -1i), ~var_1.a), select(func_1(Struct_1(var_1.a, var_0.b, vec2<bool>(var_1.e, false), vec2<u32>(8123u, u_input.c), true), vec3<u32>(1u, u_input.c, var_1.d.x)).a, vec2<bool>(false, var_1.e), var_0.a)), func_1(Struct_1(u_input.b.zz & u_input.b.yw, var_1.c.x, !var_0.a, ~global1[_wgslsmith_index_u32(u_input.c, 26u)], var_1.c.x != false), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.d.x, var_1.d.x, u_input.e) ^ vec3<u32>(u_input.e, u_input.c, 5195u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d.x, 4294967295u, u_input.e), vec3<u32>(30681u, 4294967295u, 15840u)), vec3<u32>(u_input.a, 62286u, 31165u))).b, func_1(Struct_1(abs(vec2<i32>(u_input.d.x, u_input.d.x)), !var_0.a.x, func_1(Struct_1(vec2<i32>(-12670i, 0i), true, vec2<bool>(var_1.b, false), var_1.d, var_0.b), vec3<u32>(4294967295u, 0u, u_input.c)).a, vec2<u32>(var_1.d.x, var_1.d.x), var_1.c.x), ~vec3<u32>(4294967295u, 35624u, 0u)).a, _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d.x, var_1.d.x), global1[_wgslsmith_index_u32(~4294967295u, 26u)]), true), vec3<u32>(var_1.d.x, ~(~1u) & (53866u & _wgslsmith_add_u32(4479u, var_1.d.x)), u_input.c));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))) * vec4<f32>(-103f, _wgslsmith_f_op_f32(-1234f - -474f), -764f, 122f)));
    var var_4 = _wgslsmith_mod_u32(~abs(min(var_1.d.x, 0u)), ~u_input.c);
    var var_5 = ~(min(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(48763u, 4294967295u)), min(vec2<u32>(u_input.e, 41317u), vec2<u32>(0u, 4294967295u))), abs(countOneBits(vec2<u32>(var_1.d.x, u_input.c)))) >> (~vec2<u32>(0u, _wgslsmith_clamp_u32(0u, var_1.d.x, 10340u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1132f)) + _wgslsmith_f_op_f32(1294f * var_3.x)))))), _wgslsmith_f_op_f32(-var_3.x), vec3<i32>(2147483647i, select(var_1.a.x ^ -1i, i32(-1i) * -61470i, true) ^ min(select(var_1.a.x, var_1.a.x, var_2.c), ~(-26362i)), 2147483647i));
}

