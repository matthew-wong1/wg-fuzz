struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(all(select(!vec2<bool>(true, arg_2.d), vec2<bool>(true, false), false)), !(arg_2.d | arg_1.b), _wgslsmith_div_f32(-1644f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.c)))), true, ~1u), ~arg_0.yz, min(arg_1.e, ~arg_1.e), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -countOneBits(43099i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, -43376i), _wgslsmith_div_i32(u_input.d, u_input.c), i32(-1i) * -56169i), u_input.a), vec4<i32>(-u_input.b.x, _wgslsmith_mod_i32(-1i, -2147483647i), i32(-1i) * -26425i, -(i32(-1i) * -17972i))));
    let var_1 = 1u;
    let var_2 = 942f;
    var_0 = Struct_2(var_0.a, vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_sub_u32(4294967295u, firstTrailingBit(arg_0.x)) | min(arg_2.e, 5958u)), 1u, select(min(firstTrailingBit(var_0.d) | _wgslsmith_sub_vec4_i32(var_0.d, var_0.d), _wgslsmith_mult_vec4_i32(var_0.d, _wgslsmith_sub_vec4_i32(var_0.d, vec4<i32>(u_input.d, var_0.d.x, 24500i, u_input.b.x)))), vec4<i32>(-1i) * -countOneBits(vec4<i32>(var_0.d.x, 0i, u_input.a, u_input.d)), false));
    var var_3 = Struct_2(Struct_1(reverseBits(arg_0.x) <= var_1, arg_1.a, _wgslsmith_f_op_f32(floor(136f)), !arg_1.b, ~(~arg_1.e) >> (arg_1.e % 32u)), arg_0.yz, arg_2.e, vec4<i32>(~(~var_0.d.x), _wgslsmith_dot_vec3_i32(abs(~var_0.d.yxw), var_0.d.wyx), abs(126354i | abs(var_0.d.x)), countOneBits(-6582i)));
    return ~arg_1.e;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_mod_u32(arg_1.e, arg_2);
    let var_3 = Struct_2(arg_1, vec2<u32>(func_3(vec3<u32>(0u, 59891u, 4294967295u), arg_1, arg_1) ^ var_2, max(_wgslsmith_clamp_u32(0u, 4294967295u, 57237u) >> (35509u % 32u), ~(arg_1.e | 1u))), 35694u, -(vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.a, u_input.c, 10672i, 1i))));
    var var_4 = vec3<bool>(abs(var_3.d.x) < firstLeadingBit(-2147483647i), true, var_1.b);
    return Struct_2(arg_1, var_3.b, arg_1.e, ~abs(_wgslsmith_div_vec4_i32(~var_3.d, vec4<i32>(65897i, -1i, u_input.e, var_3.d.x))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> vec3<u32> {
    return _wgslsmith_sub_vec3_u32(vec3<u32>(~arg_2.c, ~_wgslsmith_div_u32(abs(0u), ~arg_2.a.e), ~arg_2.c), vec3<u32>(arg_2.a.e, _wgslsmith_mult_u32(~min(arg_2.b.x, 43683u), ~_wgslsmith_sub_u32(arg_0.c, 1u)), reverseBits(max(_wgslsmith_sub_u32(arg_2.c, 4294967295u), arg_2.b.x >> (arg_0.c % 32u)))));
}

fn func_5(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true)))), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2055f - 592f) - _wgslsmith_f_op_f32(round(-641f)))), true, ~arg_0.x), abs(firstLeadingBit(min(vec2<u32>(17306u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 118831u), arg_0.yy, arg_0.yz)))), ~arg_0.x, ~select(reverseBits(vec4<i32>(18739i, u_input.c, 2147483647i, u_input.b.x) << (vec4<u32>(arg_0.x, 1u, arg_0.x, 5104u) % vec4<u32>(32u))), ~func_2(vec2<f32>(-244f, -738f), Struct_1(true, false, -1085f, false, arg_0.x), 9912u).d, func_2(vec2<f32>(-373f, -1028f), func_2(vec2<f32>(917f, -588f), Struct_1(false, true, -754f, true, 1u), arg_0.x).a, arg_0.x).a.b));
    var_0 = Struct_2(var_0.a, ~(~select(~vec2<u32>(arg_0.x, 19538u), arg_0.xx, var_0.a.a)), reverseBits(arg_0.x), vec4<i32>(var_0.d.x << (~0u % 32u), firstLeadingBit(2147483647i), -func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-606f, -1051f), vec2<f32>(2479f, var_0.a.c), vec2<bool>(var_0.a.d, var_0.a.d))), Struct_1(false, false, var_0.a.c, false, 25186u), countOneBits(arg_0.x)).d.x, -13979i));
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(854f + var_0.a.c), var_0.a.c) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c, var_0.a.c) * vec2<f32>(var_0.a.c, -469f)))))), func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c) - _wgslsmith_f_op_f32(step(var_0.a.c, 535f))), _wgslsmith_f_op_f32(exp2(var_0.a.c))), var_0.a, reverseBits(_wgslsmith_mod_u32(31944u, 6141u >> (arg_0.x % 32u)))).a, ~var_0.a.e);
    var_0 = Struct_2(Struct_1(false, true, var_0.a.c, (true & var_0.a.d) == var_0.a.a, ~_wgslsmith_mod_u32(50451u, select(4294967295u, var_0.b.x, var_0.a.d))), vec2<u32>(var_0.c, 0u), var_0.b.x, var_0.d);
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, -274f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-243f, -324f))), _wgslsmith_div_f32(var_0.a.c, var_0.a.c) >= var_0.a.c))), var_0.a, ~reverseBits(_wgslsmith_sub_u32(arg_0.x, 25765u)));
    return Struct_2(var_0.a, vec2<u32>(_wgslsmith_sub_u32(abs(~var_0.c), ~arg_0.x), ~max(select(64047u, 28201u, false), var_0.b.x)), 18868u, select(reverseBits(select(vec4<i32>(-5026i, var_0.d.x, 5480i, -1i), _wgslsmith_mod_vec4_i32(var_0.d, vec4<i32>(-1i, var_0.d.x, -30249i, var_0.d.x)), select(vec4<bool>(true, var_0.a.b, var_0.a.b, false), vec4<bool>(var_0.a.d, var_0.a.a, true, true), var_0.a.d))), var_0.d, select(select(select(vec4<bool>(var_0.a.d, var_0.a.b, true, false), vec4<bool>(true, var_0.a.d, true, var_0.a.b), vec4<bool>(var_0.a.a, true, false, false)), select(vec4<bool>(var_0.a.d, var_0.a.d, var_0.a.b, var_0.a.b), vec4<bool>(var_0.a.d, false, true, true), var_0.a.a), select(vec4<bool>(false, false, var_0.a.b, var_0.a.a), vec4<bool>(var_0.a.d, var_0.a.d, false, var_0.a.b), vec4<bool>(var_0.a.d, true, var_0.a.d, true))), !(!vec4<bool>(var_0.a.b, var_0.a.d, var_0.a.b, var_0.a.d)), vec4<bool>(true, all(vec4<bool>(true, var_0.a.d, var_0.a.d, var_0.a.a)), arg_0.x == var_0.b.x, all(vec2<bool>(var_0.a.d, var_0.a.a))))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(arg_1.a, countOneBits(~vec2<u32>(1u, arg_1.b.x)), _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.a.e, 1u), firstTrailingBit(1u) >> (_wgslsmith_div_u32(arg_1.c | arg_1.b.x, arg_1.c) % 32u)), -vec4<i32>(~(-70423i), -(arg_1.d.x ^ 49136i), ~38283i, arg_0.x));
    var var_1 = u_input.b;
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -418f)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1231f, _wgslsmith_f_op_f32(-1432f * arg_1.a.c))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, -1098f))), arg_1.a, ~select(4294967295u, var_0.b.x, true)).a, 0u >> (firstTrailingBit(abs(var_0.c)) % 32u)).a, 1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.a.c, 870f)))))))));
    let var_4 = vec3<i32>(func_5(~min(~vec3<u32>(var_2.b.x, arg_1.a.e, 38547u), vec3<u32>(4294967295u, 28651u, 1u))).d.x, arg_1.d.x, select(-2147483647i, 0i, !(!any(vec2<bool>(false, true)))));
    return ~_wgslsmith_add_vec3_u32(~(~abs(vec3<u32>(1u, 51357u, 0u))), ~func_4(func_2(vec2<f32>(-584f, 229f), var_2.a, 1u), _wgslsmith_f_op_f32(-996f * var_3.x), Struct_2(Struct_1(false, arg_1.a.d, 724f, var_2.a.d, arg_1.b.x), vec2<u32>(18115u, 4294967295u), var_2.c, vec4<i32>(2147483647i, u_input.c, var_0.d.x, u_input.c)), _wgslsmith_dot_vec4_i32(var_2.d, var_0.d)));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = u_input.c;
    let var_1 = func_6(vec4<i32>(-44323i, -2147483647i, ~_wgslsmith_add_i32(_wgslsmith_add_i32(1i, -1i), 0i), u_input.a), func_5(func_4(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-978f, arg_0.c), vec2<f32>(arg_0.c, -1000f)), arg_0, arg_0.e >> (1u % 32u)), arg_0.c, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(708f, arg_0.c) + vec2<f32>(arg_0.c, arg_0.c)), func_2(vec2<f32>(arg_0.c, 496f), arg_0, 0u).a, 61976u), _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -38786i, -1i), vec4<i32>(u_input.a, u_input.c, u_input.d, u_input.b.x))))));
    let var_2 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -u_input.a << (arg_0.e % 32u), u_input.e), vec3<i32>(u_input.d, 2147483647i, firstTrailingBit(u_input.c)));
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(529f, 1f)))), arg_0, _wgslsmith_dot_vec2_u32(~var_1.yx, firstLeadingBit(var_1.zy))).a;
    var_0 = 1i;
    return firstTrailingBit(~_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 3517u, arg_0.e, 0u), vec4<u32>(var_1.x, 1u, 31333u, var_1.x))), firstLeadingBit(abs(vec4<u32>(var_3.e, var_3.e, var_3.e, 16667u)))));
}

fn func_7(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_2(func_5(_wgslsmith_sub_vec3_u32(vec3<u32>(77117u, arg_3, ~0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, arg_3, arg_3), _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_3, 1u), vec3<u32>(63013u, arg_3, arg_3)), vec3<u32>(1u, 10996u, 4294967295u)))).a, vec2<u32>(48290u, 29188u), _wgslsmith_add_u32(1946u & ~(~arg_3), ~arg_3), ~(_wgslsmith_mult_vec4_i32(-arg_0, -arg_0) | -countOneBits(vec4<i32>(732i, 1i, arg_0.x, arg_0.x))));
    var var_1 = var_0.b;
    var var_2 = Struct_2(func_5(firstTrailingBit(vec3<u32>(~39078u, var_0.a.e, var_0.c | var_0.c))).a, var_0.b, 8962u, vec4<i32>(-1i) * -arg_0);
    var_2 = func_5(vec3<u32>(var_1.x, var_0.b.x, _wgslsmith_mod_u32(func_1(var_2.a).x | _wgslsmith_mod_u32(var_1.x, 1u), var_0.b.x)));
    var_1 = func_4(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(832f, var_0.a.c)))) - vec2<f32>(_wgslsmith_f_op_f32(var_2.a.c - var_2.a.c), 280f)), func_5(vec3<u32>(arg_3, func_3(vec3<u32>(4294967295u, 35927u, var_2.c), Struct_1(var_2.a.a, true, 1317f, var_0.a.a, 1u), Struct_1(false, false, 166f, false, var_0.c)), var_0.c)).a, ~20415u), _wgslsmith_f_op_f32(select(386f, -362f, var_0.a.b)), var_0, abs(min(~arg_0.x, arg_0.x) ^ ~13895i)).yz;
    return Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1146f)), func_5(~vec3<u32>(arg_3, 4294967295u, 36787u)).a, _wgslsmith_sub_u32(_wgslsmith_sub_u32(98408u, func_3(vec3<u32>(0u, 0u, 17416u), var_0.a, Struct_1(arg_2, arg_2, 847f, true, 88361u))), _wgslsmith_sub_u32(13457u, 4508u))).a, ~var_0.b, max(func_5(~func_4(var_0, -1000f, var_0, var_2.d.x)).a.e, var_1.x), vec4<i32>(func_5(~vec3<u32>(var_0.c, var_1.x, 4294967295u)).d.x, reverseBits(-9214i ^ (var_2.d.x >> (var_1.x % 32u))), -1448i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(32589i, countOneBits(-11177i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), var_0.d.wz), 10244i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec4<i32>(u_input.a, u_input.d, firstLeadingBit(-58196i), 15365i) << (firstLeadingBit(_wgslsmith_div_vec4_u32(func_1(Struct_1(true, true, -370f, true, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u)), vec3<bool>(!(!select(false, false, false)), u_input.b.x < (u_input.d | ~u_input.c), !select(true, func_5(vec3<u32>(101515u, 0u, 4294967295u)).a.a, true)), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_1(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, 1719f)), Struct_1(false, false, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, 39581u >> (1u % 32u)), 89068u).a).x);
    let var_1 = Struct_1(!(!all(vec4<bool>(var_0.a.d, var_0.a.d, var_0.a.d, var_0.a.d))), false, var_0.a.c, true, var_0.b.x);
    let var_2 = -(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 19431i, 1i, var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(u_input.b, ~u_input.b ^ vec2<i32>(-11715i, -2147483647i)), var_1.c, 63912u);
}

