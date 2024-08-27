struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<u32> {
    return ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, 4294967295u), ~arg_1.a << (arg_1.a % 32u), ~_wgslsmith_add_u32(arg_1.a, arg_1.a)), ~(~(~vec3<u32>(arg_1.a, 8273u, 53267u))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_2(arg_0.a, abs(~16605i), select(u_input.b.x, arg_0.b, 1254f != _wgslsmith_div_f32(343f, _wgslsmith_f_op_f32(step(153f, -1033f)))), u_input.a, vec2<bool>(any(!vec4<bool>(arg_1.e.x, true, arg_1.e.x, false)), true));
    var_0 = Struct_2(vec3<u32>(0u, var_0.a.x, ~4294967295u), -7496i, i32(-1i) * -1i, arg_0.b << (4294967295u % 32u), vec2<bool>((min(arg_0.a.x, arg_1.a.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(68984u, arg_0.a.x, 1u, var_0.a.x), vec4<u32>(arg_0.a.x, 19782u, 1u, arg_1.a.x)) % 32u)) <= (31692u >> (arg_1.a.x % 32u)), any(select(arg_1.e, !vec2<bool>(false, arg_1.e.x), true))));
    var_0 = arg_0;
    var var_1 = Struct_1(~min(select(18646u, ~var_0.a.x, true), ~_wgslsmith_sub_u32(arg_0.a.x, 0u)), -max(~min(-41192i, -76846i), var_0.d), -vec3<i32>(-var_0.c, -(~var_0.c), 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f - -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1542f, -561f), -1478f, select(arg_1.e.x, arg_0.e.x, true))), -565f) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-311f, -1587f, 550f, -1464f) * vec4<f32>(206f, -328f, -539f, -877f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1479f, 1000f, 471f), vec4<f32>(821f, -619f, -2520f, 176f)))))));
    var_1 = Struct_1(~var_1.a, 2147483647i, var_1.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.x, -1000f, -183f, var_1.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(184f, var_1.d.x, var_1.d.x, var_1.d.x) * var_1.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 855f, -239f, var_1.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.d.x)), _wgslsmith_f_op_f32(-797f * _wgslsmith_f_op_f32(var_1.d.x - var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1168f - var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), arg_0.e.x)));
    return var_0.c;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(arg_1.a, 3192i, -37641i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(-1i, u_input.c) & u_input.b, u_input.b | vec2<i32>(48419i, -22812i), select(arg_1.e, arg_1.e, arg_1.e.x)), ~(u_input.b & u_input.b)), select(reverseBits(-vec2<i32>(2147483647i, u_input.b.x)), vec2<i32>(0i, select(u_input.b.x, u_input.b.x, true)), vec2<bool>(arg_1.e.x, false))), select(arg_1.e, vec2<bool>(!arg_1.e.x, true | !arg_1.e.x), vec2<bool>(any(select(vec2<bool>(arg_1.e.x, arg_1.e.x), arg_1.e, false)), arg_1.e.x == all(vec3<bool>(true, true, false)))));
    var var_1 = abs(min(~(~vec4<u32>(34084u, 52472u, arg_0, 30573u)) << (vec4<u32>(0u | var_0.a.x, _wgslsmith_clamp_u32(arg_0, arg_1.a.x, 69268u), arg_0, 23497u) % vec4<u32>(32u)), ~(~(vec4<u32>(var_0.a.x, 44367u, 4294967295u, 4294967295u) >> (vec4<u32>(arg_1.a.x, arg_1.a.x, var_0.a.x, 58690u) % vec4<u32>(32u))))));
    var var_2 = Struct_3(83928u, -411f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1910f) - _wgslsmith_f_op_f32(step(-528f, -1662f))))))), -2147483647i);
    var_2 = Struct_3(62439u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-429f - var_2.b))), -153f, ~arg_1.d);
    var var_3 = arg_1;
    return Struct_3(5634u, _wgslsmith_f_op_f32(step(1000f, var_2.b)), _wgslsmith_f_op_f32(-1000f * var_2.b), -arg_1.d);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-592f)))));
    var var_1 = func_4(_wgslsmith_dot_vec2_u32(arg_1.a.xx, ~_wgslsmith_mod_vec2_u32(select(arg_1.a.yz, vec2<u32>(arg_2, arg_2), vec2<bool>(true, arg_0.x)), ~arg_1.a.zz)), Struct_2(~func_2(arg_0.x, Struct_1(0u, arg_1.c, vec3<i32>(u_input.b.x, -1i, 0i), vec4<f32>(var_0.x, -162f, -1544f, 1000f)), var_0), max(-22488i, arg_1.c), 1i, func_3(Struct_2(vec3<u32>(arg_2, 50907u, 1u), u_input.a, 24682i, -41601i, vec2<bool>(true, false)), arg_1) >> (arg_1.a.x % 32u), !arg_0.yy));
    var var_2 = _wgslsmith_mult_i32(func_4(18490u, Struct_2(_wgslsmith_mult_vec3_u32(arg_1.a & vec3<u32>(1u, arg_1.a.x, arg_2), vec3<u32>(arg_2, arg_2, 4294967295u)), 0i, arg_1.c, -1i, arg_1.e)).d, u_input.c);
    var_1 = func_4(_wgslsmith_sub_u32(abs(~var_1.a), ~(~(~4294967295u))), Struct_2(arg_1.a & ~abs(arg_1.a), firstTrailingBit(arg_1.d), u_input.a, -64504i, !(!select(arg_0.wy, vec2<bool>(true, false), false))));
    let var_3 = Struct_1(arg_2, abs(-39703i), ~_wgslsmith_mult_vec3_i32(max(-vec3<i32>(-417i, var_1.d, -57283i), ~vec3<i32>(var_1.d, -5973i, 1i)), ~(~vec3<i32>(41919i, -1i, 25338i))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -939f), -157f)), var_1.c, -2054f, 1111f))));
    return Struct_2(vec3<u32>(47607u << (arg_1.a.x % 32u), ~arg_1.a.x, 11292u) << (arg_1.a % vec3<u32>(32u)), _wgslsmith_div_i32(var_3.c.x, 1i), countOneBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-5216i, _wgslsmith_sub_i32(arg_1.d, 33913i)), 16198i)), select(2147483647i, -31971i, false), vec2<bool>(select(!arg_1.e.x, _wgslsmith_f_op_f32(var_0.x + var_1.b) <= -996f, arg_0.x & arg_1.e.x), _wgslsmith_div_i32(-30489i, _wgslsmith_sub_i32(var_3.b, 1i)) == _wgslsmith_div_i32(u_input.b.x, _wgslsmith_mult_i32(arg_1.c, var_3.b))));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    let var_0 = func_1(select(select(!vec4<bool>(false, true, true, arg_0.a.e.x), select(select(vec4<bool>(true, arg_0.a.e.x, false, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.a.e.x), true), !vec4<bool>(true, arg_0.b, true, true), true), func_1(select(vec4<bool>(false, true, arg_0.a.e.x, true), vec4<bool>(arg_0.b, arg_0.a.e.x, true, arg_0.b), true), Struct_2(vec3<u32>(44149u, 1u, 1615u), arg_0.a.c, 24366i, u_input.b.x, vec2<bool>(false, true)), 1u).e.x), vec4<bool>(true, select(true, false, false), false, !(!arg_0.b)), true), Struct_2(arg_0.a.a, func_3(Struct_2(arg_0.a.a, u_input.b.x, _wgslsmith_clamp_i32(u_input.c, -17905i, u_input.b.x), -1i, !vec2<bool>(arg_0.b, true)), func_1(!vec4<bool>(true, arg_0.a.e.x, arg_0.a.e.x, false), arg_0.a, ~46971u)), arg_0.a.b, -1918i, select(arg_0.a.e, arg_0.a.e, arg_0.a.e)), arg_0.a.a.x);
    var var_1 = arg_0.a;
    let var_2 = !(!vec4<bool>(true != any(vec2<bool>(var_0.e.x, var_1.e.x)), true, any(func_1(vec4<bool>(var_1.e.x, false, false, var_0.e.x), Struct_2(vec3<u32>(var_0.a.x, arg_0.a.a.x, 7517u), -49527i, 1i, 6746i, vec2<bool>(false, arg_0.a.e.x)), 4294967295u).e), true));
    var_1 = func_1(select(!(!(!vec4<bool>(var_2.x, arg_0.b, true, false))), var_2, all(vec2<bool>(true, var_0.e.x))), func_1(select(var_2, vec4<bool>(true, true, true, true), !select(var_2, vec4<bool>(arg_0.b, arg_0.a.e.x, true, var_0.e.x), vec4<bool>(true, var_0.e.x, false, var_1.e.x))), var_0, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.a.x, 1u, var_1.a.x, 75507u)) >> (~vec4<u32>(arg_0.a.a.x, var_0.a.x, 53585u, arg_0.a.a.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 47907u, var_0.a.x, var_0.a.x), ~vec4<u32>(arg_0.a.a.x, 42886u, arg_0.a.a.x, var_1.a.x), vec4<u32>(1u, 35473u, 1u, var_0.a.x) ^ vec4<u32>(27146u, 4294967295u, var_1.a.x, arg_0.a.a.x)))), ~max(~var_1.a.x, ~4294967295u));
    var var_3 = arg_0;
    return Struct_1(var_1.a.x, _wgslsmith_dot_vec3_i32((vec3<i32>(var_1.d, arg_0.a.c, arg_0.a.c) | abs(vec3<i32>(1i, var_3.a.c, -33461i))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 0i, var_1.c), vec3<i32>(47612i, 2147483647i, 52560i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, u_input.b.x, 18956i), vec4<i32>(-15223i, var_0.d, 0i, var_3.a.c)), u_input.b.x, i32(-1i) * -2147483647i) | (min(vec3<i32>(arg_0.a.b, -1i, u_input.c), vec3<i32>(u_input.b.x, arg_0.a.b, var_3.a.d)) ^ max(vec3<i32>(0i, var_0.d, var_0.b), vec3<i32>(-2147483647i, arg_0.a.c, -7234i)))), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(0i, -39468i, var_0.b) ^ abs(vec3<i32>(-1i, 0i, var_1.c))), -(~reverseBits(vec3<i32>(-1i, 0i, 4890i))), min(select(vec3<i32>(-2147483647i, u_input.b.x, 41171i), vec3<i32>(2360i, var_3.a.b, 23095i), var_2.x) ^ vec3<i32>(-1i, u_input.c, arg_0.a.c), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-8772i, var_0.b, 0i))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1433f, 367f, -170f, -1231f) - vec4<f32>(976f, -454f, -375f, -805f)), vec4<f32>(-294f, -214f, -269f, -534f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1085f)), _wgslsmith_f_op_f32(-1271f + _wgslsmith_f_op_f32(abs(955f))), _wgslsmith_f_op_f32(-func_4(var_3.a.a.x, Struct_2(var_1.a, arg_0.a.c, 2147483647i, var_0.d, arg_0.a.e)).c), _wgslsmith_f_op_f32(round(-109f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(func_1(vec4<bool>(true, true, true, true), Struct_2(~vec3<u32>(0u, 26825u, 6712u), ~(-28018i), 1i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), vec2<bool>(true, true)), 4294967295u), true));
    let var_1 = Struct_1(0u, var_0.b, _wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.x, var_0.b, var_0.c.x), vec3<i32>(var_0.c.x, 1i, 16807i), var_0.c), max(max(var_0.c, var_0.c), vec3<i32>(-47073i, u_input.a, var_0.c.x))) << ((vec3<u32>(var_0.a, ~var_0.a, _wgslsmith_sub_u32(var_0.a, var_0.a)) | abs(vec3<u32>(var_0.a, 0u, 4294967295u) << (vec3<u32>(25400u, 4294967295u, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.d))), var_0.d, vec4<bool>(true, true, true, true))), vec4<f32>(-260f, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(685f - 477f)), func_5(Struct_4(Struct_2(vec3<u32>(var_0.a, 4294967295u, var_0.a), u_input.b.x, var_0.b, var_0.b, vec2<bool>(false, false)), false)).d.x), all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))))));
    let var_2 = var_1.c;
    var var_3 = var_0.c;
    let var_4 = Struct_3(0u, var_1.d.x, _wgslsmith_f_op_f32(-var_1.d.x), var_1.b);
    let var_5 = Struct_4(func_1(vec4<bool>(true, true, true, true), func_1(vec4<bool>(true, 761f == var_0.d.x, true, false), Struct_2(vec3<u32>(var_1.a, var_0.a, var_0.a), var_2.x, -1i, _wgslsmith_div_i32(var_4.d, var_4.d), vec2<bool>(true, true)), 1u), reverseBits(~(~0u))), _wgslsmith_f_op_f32(max(var_0.d.x, 194f)) == var_4.b);
    var_3 = firstTrailingBit(-(~vec3<i32>(reverseBits(var_0.c.x), -var_5.a.d, i32(-1i) * -2941i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, ~vec4<i32>(-13817i, 2147483647i, -2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 5592u, 22569u, 15797u), vec4<u32>(0u, var_4.a, 57777u, 75429u)) % 32u), u_input.b.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_1.c.x, i32(-1i) * -39482i), vec2<i32>(-40312i, ~(-23388i)))));
}

