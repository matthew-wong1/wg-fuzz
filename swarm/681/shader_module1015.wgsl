struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = -154f;
    var_0 = 1579f;
    return u_input.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(~abs(u_input.b), u_input.b, reverseBits(abs(15568i)), -10568i), ~reverseBits(-vec4<i32>(u_input.b, -13796i, 1i, -1593i))), arg_1);
    let var_1 = !(!arg_1.c.xx);
    let var_2 = reverseBits(~1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(~17454u, arg_0.b.x, 13382u), ~arg_0.b));
    var var_3 = arg_3;
    let var_4 = reverseBits(var_2);
    return Struct_2(Struct_1(false, vec3<u32>(~(~u_input.a), firstLeadingBit(arg_3.x) & arg_3.x, arg_3.x), !var_0.a.c), firstTrailingBit(var_0.b), arg_1);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(func_3(arg_0.a, func_3(arg_0.a, Struct_1(all(vec4<bool>(arg_0.a.a, arg_0.a.a, false, true)), arg_0.c.b, vec3<bool>(true, false, true)), vec3<bool>(false, !arg_0.a.c.x, true), firstLeadingBit(~arg_0.c.b)).a, !arg_0.c.c, min(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, arg_0.c.b.x, 42901u) % vec3<u32>(32u)), ~arg_0.c.b) & abs(~vec3<u32>(u_input.a, 8665u, 0u))).a, countOneBits((u_input.b | arg_0.b) >> (1u % 32u)) & (i32(-1i) * -2147483647i), Struct_1(!(-u_input.b > 35518i), _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a, arg_0.c.b.x, 0u), vec3<u32>(1u, arg_0.c.b.x, arg_0.c.b.x)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c.b.x, arg_0.a.b.x, arg_0.a.b.x), arg_0.a.b), _wgslsmith_div_vec3_u32(vec3<u32>(29371u, u_input.a, 0u) & vec3<u32>(0u, 1u, u_input.a), vec3<u32>(0u, 4294967295u, 4294967295u))), !vec3<bool>(true, func_3(Struct_1(arg_0.a.a, vec3<u32>(arg_0.a.b.x, arg_0.c.b.x, 0u), vec3<bool>(arg_0.c.a, true, arg_0.c.c.x)), arg_0.c, arg_0.c.c, vec3<u32>(0u, arg_0.c.b.x, 22053u)).c.a, arg_0.c.c.x)));
    let var_1 = (min(firstTrailingBit(~1u), 39491u) << (1u % 32u)) ^ 1858u;
    var_0 = Struct_2(var_0.c, _wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(15752i, _wgslsmith_add_i32(-10002i, 1i), ~0i, 1625i), -(vec4<i32>(0i, arg_0.b, -45968i, -27464i) & vec4<i32>(-15059i, 2147483647i, arg_0.b, 1i)))), Struct_1(arg_0.a.a, reverseBits(~vec3<u32>(20819u, var_1, 7979u)) | var_0.a.b, vec3<bool>(!(!arg_0.a.c.x), !arg_0.c.a, true)));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_mod_i32(-21095i, var_0.b)), (1i & u_input.b) << ((arg_0.a.b.x << (var_1 % 32u)) % 32u), arg_0.b, ~min(arg_0.b, var_0.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(13632i, -1i, arg_0.b, 2147483647i), vec4<i32>(2147483647i, var_0.b, -19023i, var_0.b)) & -vec4<i32>(2147483647i, -1i, var_0.b, -57984i), (vec4<i32>(u_input.b, 2147483647i, 0i, -1i) << (vec4<u32>(38778u, var_0.a.b.x, var_1, 43439u) % vec4<u32>(32u))) | vec4<i32>(0i, var_0.b, u_input.b, arg_0.b))) & (vec4<i32>(-1i) * -(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b, -63591i, 0i, 2147483647i), vec4<i32>(18971i, var_0.b, arg_0.b, 1i), vec4<i32>(arg_0.b, -42591i, -3048i, u_input.b)) >> ((vec4<u32>(arg_0.a.b.x, u_input.a, 50166u, u_input.a) >> (vec4<u32>(var_0.c.b.x, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return func_3(Struct_1(true, ~vec3<u32>(68773u, 35005u, var_1) << (firstTrailingBit(select(var_0.c.b, var_0.c.b, arg_0.c.c)) % vec3<u32>(32u)), vec3<bool>(true, select(var_0.a.c.x == var_0.a.a, false, true), !select(arg_0.a.c.x, false, var_0.a.c.x))), func_3(var_0.a, arg_0.a, !(!vec3<bool>(true, var_0.a.a, var_0.c.c.x)), ~(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, arg_0.a.b.x, u_input.a), vec3<u32>(var_1, var_1, arg_0.a.b.x)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(43381u, arg_0.c.b.x, 1u), var_0.a.b) % vec3<u32>(32u)))).a, select(vec3<bool>(all(select(vec4<bool>(arg_0.a.c.x, false, var_0.c.a, true), vec4<bool>(false, false, arg_0.a.c.x, true), vec4<bool>(var_0.c.a, var_0.a.c.x, false, var_0.c.c.x))), arg_0.c.c.x, true), vec3<bool>(true, !var_0.c.c.x, true), select(!(!arg_0.c.c), select(func_3(Struct_1(false, var_0.a.b, var_0.a.c), arg_0.a, vec3<bool>(arg_0.c.c.x, true, var_0.a.a), var_0.c.b).c.c, vec3<bool>(true, false, arg_0.c.a), vec3<bool>(false, false, true)), true)), ~(~abs(arg_0.a.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_3(Struct_1(!any(vec2<bool>(false, true)), vec3<u32>(u_input.a, ~0u, u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), Struct_1(false, ~(~vec3<u32>(4294967295u, u_input.a, 1u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(func_2(u_input.b, Struct_2(Struct_1(true, vec3<u32>(0u, u_input.a, 1u), vec3<bool>(true, false, true)), 20824i, Struct_1(true, vec3<u32>(1u, u_input.a, u_input.a), vec3<bool>(false, true, true)))) > (-2147483647i | u_input.b), 35613i == (1i << (u_input.a % 32u)), all(vec3<bool>(true, true, true))), vec3<u32>(4294967295u, u_input.a, max(u_input.a, 1u << (u_input.a % 32u)))));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, ~(-52298i), var_0.b ^ _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0.b, u_input.b), 0i, firstLeadingBit(u_input.b))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(max(52889i, var_0.b), _wgslsmith_mod_i32(u_input.b, var_0.b)), ~func_2(10653i, Struct_2(var_0.a, u_input.b, Struct_1(var_0.a.a, var_0.c.b, vec3<bool>(var_0.a.a, var_0.c.c.x, true))))), reverseBits(vec3<i32>(var_0.b, u_input.b, -1i)) | -(vec3<i32>(u_input.b, u_input.b, 8707i) >> (vec3<u32>(26714u, u_input.a, var_0.c.b.x) % vec3<u32>(32u)))));
    var var_2 = true;
    var var_3 = func_3(Struct_1((true && func_3(var_0.c, var_0.c, vec3<bool>(true, var_0.c.a, true), vec3<u32>(u_input.a, u_input.a, var_0.a.b.x)).a.a) | var_0.c.a, select(func_4(Struct_2(Struct_1(var_0.c.c.x, vec3<u32>(var_0.c.b.x, 0u, u_input.a), var_0.a.c), 1i, Struct_1(var_0.a.c.x, var_0.c.b, var_0.a.c))).c.b, ~vec3<u32>(154u, var_0.a.b.x, 4294967295u), var_0.a.b.x >= 1u) | vec3<u32>(var_0.c.b.x, var_0.a.b.x, 35953u & u_input.a), var_0.c.c), var_0.a, !vec3<bool>(abs(0u) == (var_0.c.b.x ^ 35802u), true, false), func_3(func_3(var_0.a, Struct_1(!var_0.c.c.x, var_0.a.b, vec3<bool>(true, true, true)), var_0.a.c, ~firstTrailingBit(vec3<u32>(u_input.a, 0u, var_0.a.b.x))).a, var_0.c, var_0.c.c, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.c.b.x), ~var_0.c.b.zz), var_0.a.b.x, var_0.a.b.x >> (4294967295u % 32u))).c.b);
    let var_4 = vec3<bool>(!func_3(var_3.c, var_0.a, vec3<bool>(var_3.c.c.x || true, var_0.a.a, any(vec2<bool>(var_0.c.a, false))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, var_3.a.b.x, 1u), var_0.a.b >> (var_0.a.b % vec3<u32>(32u)))).c.a, true, !(func_4(var_0).c.b.x != 23467u));
    return Struct_1(!(var_1.x < -12783i), reverseBits(func_4(var_0).c.b) << (select(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, var_0.a.b.x, u_input.a), abs(var_3.c.b)), ~(~var_0.c.b), var_3.a.c) % vec3<u32>(32u)), vec3<bool>(27227u != ~(~var_3.c.b.x), u_input.b == _wgslsmith_sub_i32(-27020i, _wgslsmith_clamp_i32(var_3.b, -16529i, -1i)), true));
}

fn func_5(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = 4294967295u;
    let var_1 = Struct_2(func_4(arg_0).a, 0i, Struct_1(all(arg_0.a.c.zx), ~arg_0.c.b, func_3(func_1(), Struct_1(any(arg_0.c.c), func_3(arg_0.a, arg_0.c, vec3<bool>(arg_0.c.c.x, true, true), arg_0.c.b).c.b, !vec3<bool>(false, false, arg_0.a.a)), select(vec3<bool>(true, true, true), select(arg_0.a.c, vec3<bool>(true, true, arg_0.a.c.x), arg_0.a.a), arg_0.c.c.x), ~arg_0.a.b).a.c));
    var var_2 = 2147483647i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -314f))));
    var_2 = func_4(Struct_2(var_1.c, func_3(func_3(var_1.c, func_1(), vec3<bool>(var_1.c.c.x, var_1.a.a, false), vec3<u32>(arg_0.c.b.x, 12917u, 13952u)).c, arg_0.c, arg_0.c.c, vec3<u32>(u_input.a, var_1.c.b.x, ~arg_0.c.b.x)).b, Struct_1(any(arg_0.c.c.xy), vec3<u32>(23537u, 46519u, func_3(var_1.c, Struct_1(false, arg_0.c.b, var_1.a.c), var_1.c.c, arg_0.a.b).a.b.x), func_4(func_3(arg_0.c, arg_0.a, vec3<bool>(arg_0.a.a, var_1.a.c.x, false), vec3<u32>(0u, 1u, 1u))).a.c))).b;
    return func_3(var_1.c, func_4(func_4(arg_0)).c, !arg_0.a.c, ~vec3<u32>(func_4(func_4(var_1)).a.b.x, ~firstTrailingBit(1u), 1u)).c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(f32(-1f) * -260f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2563f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(604f - 506f) - -625f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(335f, 1324f)))))));
    let var_2 = select(!func_5(Struct_2(func_1(), 2147483647i, Struct_1(false, vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, false, true)))), vec3<bool>(func_5(Struct_2(func_4(Struct_2(Struct_1(false, vec3<u32>(u_input.a, u_input.a, 0u), vec3<bool>(true, false, false)), 31955i, Struct_1(false, vec3<u32>(u_input.a, 1718u, u_input.a), vec3<bool>(false, false, false)))).c, u_input.b, Struct_1(true, vec3<u32>(0u, u_input.a, 0u), vec3<bool>(false, false, true)))).x, true, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, u_input.a) | vec2<u32>(u_input.a, 0u)) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), !(var_1.x >= 1015f));
    let var_3 = var_2.x;
    var var_4 = func_1().c.xy;
    let var_5 = Struct_1(true, max(~(~vec3<u32>(u_input.a, 4294967295u, 1u) >> (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u))), ~((vec3<u32>(0u, u_input.a, u_input.a) | vec3<u32>(u_input.a, 4294967295u, 4294967295u)) ^ vec3<u32>(39401u, 1u, 23145u))), func_5(func_4(Struct_2(func_3(Struct_1(var_4.x, vec3<u32>(u_input.a, u_input.a, u_input.a), var_2), Struct_1(var_3, vec3<u32>(0u, u_input.a, 19677u), var_2), vec3<bool>(var_4.x, false, true), vec3<u32>(u_input.a, u_input.a, u_input.a)).c, ~u_input.b, func_4(Struct_2(Struct_1(true, vec3<u32>(u_input.a, u_input.a, u_input.a), var_2), 2147483647i, Struct_1(false, vec3<u32>(7229u, u_input.a, 0u), vec3<bool>(var_4.x, var_3, false)))).a))));
    let var_6 = u_input.a;
    var var_7 = u_input.b;
    var var_8 = func_4(Struct_2(var_5, 0i, var_5)).a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1)), vec2<f32>(var_1.x, var_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, 1610f, var_1.x))))), _wgslsmith_div_vec2_u32(vec2<u32>(var_5.b.x, 1u), var_5.b.zx), vec4<f32>(-750f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)) + var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -669f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(var_1.x - var_1.x)));
}

