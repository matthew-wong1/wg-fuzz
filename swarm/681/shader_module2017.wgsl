struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = !vec2<bool>(var_0.a.d.x <= reverseBits(_wgslsmith_dot_vec2_u32(arg_1.a.d, arg_1.a.d)), any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))));
    let var_2 = !(!select(vec3<bool>(1u == arg_1.a.d.x, !var_1.x, true), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, true), var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), false), false));
    let var_3 = Struct_2(arg_1.a, Struct_1(_wgslsmith_sub_i32(-arg_1.a.a, 1i), _wgslsmith_f_op_vec4_f32(-var_0.a.b), select(17074u, countOneBits(arg_1.a.e), false) >> (var_0.a.e % 32u), vec2<u32>(0u, ~_wgslsmith_clamp_u32(4294967295u, var_0.a.c, 0u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14509u, arg_1.a.c) << (vec2<u32>(var_0.a.e, 18504u) % vec2<u32>(32u)), ~arg_1.a.d), var_0.a.c, abs(4294967295u))), vec2<bool>(!var_2.x, max(0u, arg_1.a.d.x) <= 1u), var_0.a, -278f);
    var var_4 = 31586u;
    return vec4<u32>(_wgslsmith_mod_u32(3237u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 17919u, var_0.a.d.x), vec4<u32>(var_3.a.e, var_3.b.e, 76463u, var_0.a.c))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d.d.x, 42211u) | var_0.a.d, var_0.a.d) % 32u), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1175u, var_0.a.c, var_0.a.c, 4294967295u), vec4<u32>(84260u, 9111u, var_3.b.c, arg_1.a.e))), min(vec4<u32>(var_3.a.c, ~arg_1.a.e, max(72200u, 1u), 1u), vec4<u32>(1429u, 51694u, 1u, var_3.b.d.x) >> (vec4<u32>(var_0.a.c, 96992u, 105688u, var_3.d.d.x) % vec4<u32>(32u)))), 1u, _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(54576u, var_3.d.d.x))), vec2<u32>(~var_3.a.e, arg_1.a.e)));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-714f + -2067f);
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32((func_3(vec4<i32>(-1i, 21926i, -1i, arg_3.a), Struct_4(arg_3, vec3<f32>(arg_0.b.x, arg_3.b.x, 2021f))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.c, arg_0.a.c, arg_2.x, arg_3.e), vec4<u32>(arg_0.a.c, 1u, arg_2.x, 0u), vec4<u32>(0u, arg_2.x, arg_3.d.x, 26952u)) % vec4<u32>(32u))) & ~abs(vec4<u32>(4294967295u, arg_3.e, arg_2.x, arg_0.a.d.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 1u), vec2<u32>(9403u, arg_2.x)) ^ 50900u, arg_2.x, min(arg_3.c, 9775u & arg_0.a.c), 5002u ^ arg_3.c)), _wgslsmith_sub_u32(62604u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.d, vec2<u32>(arg_0.a.e, 47218u)), ~4294967295u, 1u), firstTrailingBit(vec3<u32>(23844u, arg_0.a.e, 23034u)))));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(~(~countOneBits(u_input.a)), u_input.b.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, abs(0i), -u_input.a), _wgslsmith_dot_vec2_i32(u_input.b, ~vec2<i32>(u_input.a, arg_0.a.a))) | arg_3.a);
    let var_3 = _wgslsmith_add_vec2_i32(u_input.b, u_input.b);
    let var_4 = Struct_1(var_2, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))))), arg_0.a.b.x, _wgslsmith_f_op_f32(ceil(-1830f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - arg_3.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x + 765f) - 1f))), 15853u, _wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(12255u, 0u)), ~(~_wgslsmith_mod_vec2_u32(arg_0.a.d, arg_2.xz))), 7863u);
    return var_4;
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_2(arg_1.a, arg_1.a, vec2<bool>(select(!all(vec2<bool>(false, false)), 23150u < arg_0, true), any(vec3<bool>(false, arg_1.b.x == 1444f, true))), func_2(arg_1, 892f, select(~_wgslsmith_mult_vec4_u32(vec4<u32>(76820u, 1u, 20052u, arg_0), vec4<u32>(arg_0, arg_1.a.c, arg_0, arg_0)), select(~vec4<u32>(arg_1.a.c, 3085u, 17518u, 4294967295u), min(vec4<u32>(1u, arg_1.a.c, arg_1.a.c, arg_0), vec4<u32>(arg_0, arg_0, arg_0, arg_1.a.c)), vec4<bool>(false, true, true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))), func_2(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(329f))), min(abs(vec4<u32>(arg_1.a.e, 74236u, arg_1.a.e, 11917u)), ~vec4<u32>(arg_1.a.e, 53617u, 0u, 1u)), func_2(arg_1, _wgslsmith_f_op_f32(-arg_1.a.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.e, 1u, arg_0, 77542u), vec4<u32>(4294967295u, arg_0, arg_0, arg_0)), Struct_1(u_input.b.x, arg_1.a.b, arg_0, arg_1.a.d, arg_1.a.d.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * arg_1.b.x), _wgslsmith_f_op_f32(ceil(arg_1.a.b.x))))));
    let var_1 = firstTrailingBit(3604u);
    var var_2 = vec3<bool>(false, all(!vec2<bool>(any(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x)), all(vec3<bool>(false, var_0.c.x, var_0.c.x)))), false);
    var_2 = select(vec3<bool>(true, true, var_0.c.x != (false && any(vec2<bool>(true, true)))), !vec3<bool>(!select(true, false, var_2.x), true, !(var_2.x == false)), !vec3<bool>(!all(vec3<bool>(var_2.x, false, true)), arg_1.a.b.x < _wgslsmith_f_op_f32(-var_0.e), var_0.c.x));
    var_2 = !select(select(!(!vec3<bool>(true, false, var_2.x)), select(select(vec3<bool>(false, false, true), vec3<bool>(var_2.x, true, var_0.c.x), var_2.x), !vec3<bool>(true, false, var_0.c.x), !var_0.c.x), !var_2.x), vec3<bool>(var_0.c.x, all(select(vec4<bool>(var_0.c.x, var_2.x, var_2.x, var_0.c.x), vec4<bool>(var_2.x, var_0.c.x, true, var_2.x), vec4<bool>(false, false, true, var_2.x))), true | !var_2.x), var_2.x);
    return arg_1.a.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-788f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1713f, arg_1.d.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(959f)) - _wgslsmith_f_op_f32(arg_1.d.d.b.x - 2556f)), _wgslsmith_f_op_f32(-1747f - arg_1.d.d.b.x) == _wgslsmith_f_op_f32(arg_1.d.a.b.x - 588f)))));
    var var_1 = vec4<i32>(-func_4(~arg_1.d.a.e, Struct_4(func_2(Struct_4(arg_1.d.d, arg_1.a.b.xxx), 1000f, arg_1.c, Struct_1(-2147483647i, vec4<f32>(var_0, 355f, 1249f, var_0), 34442u, vec2<u32>(48868u, 34408u), 42380u)), _wgslsmith_f_op_vec3_f32(sign(arg_1.a.b.wzw)))), -(~arg_1.e), func_2(Struct_4(Struct_1(u_input.b.x & -20593i, vec4<f32>(var_0, arg_1.d.d.b.x, arg_1.d.a.b.x, var_0), ~arg_0.x, _wgslsmith_mod_vec2_u32(arg_0, vec2<u32>(9871u, 34037u)), arg_1.a.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(131f, -1001f, var_0) + arg_1.d.d.b.wyw) - arg_1.d.d.b.ywz)), 1488f, vec4<u32>(abs(min(1u, 54329u)), countOneBits(arg_0.x), _wgslsmith_mod_u32(44580u, _wgslsmith_add_u32(arg_0.x, 1u)), 1u), arg_1.d.b).a, func_4(func_2(Struct_4(func_2(Struct_4(arg_1.a, vec3<f32>(var_0, -403f, arg_1.d.e)), arg_1.a.b.x, vec4<u32>(arg_0.x, arg_0.x, 1u, 0u), Struct_1(u_input.a, arg_1.d.b.b, 0u, arg_0, arg_1.a.e)), vec3<f32>(var_0, -1228f, -199f)), _wgslsmith_f_op_f32(-arg_1.d.a.b.x), vec4<u32>(4294967295u, firstTrailingBit(14634u), _wgslsmith_mod_u32(arg_1.d.d.d.x, arg_1.a.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.c, 38563u, 3412u, arg_0.x), arg_1.c)), arg_1.a).c, Struct_4(arg_1.d.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, 763f, var_0), arg_1.d.b.b.yyz))))));
    var var_2 = Struct_3(func_2(Struct_4(Struct_1(-var_1.x, _wgslsmith_f_op_vec4_f32(-arg_1.d.d.b), 8078u, firstTrailingBit(arg_1.d.b.d), 1u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.b.x, 979f, var_0), _wgslsmith_f_op_vec3_f32(-arg_1.d.b.b.wwy)))), 1503f, reverseBits(~(vec4<u32>(4294967295u, 1u, arg_0.x, 1u) << (vec4<u32>(0u, 38831u, arg_0.x, arg_1.a.e) % vec4<u32>(32u)))), arg_1.a), var_1.x, abs(min(arg_1.c | vec4<u32>(arg_1.d.a.d.x, 30175u, 1u, arg_0.x), arg_1.c)), arg_1.d, 68993i);
    let var_3 = _wgslsmith_div_vec4_i32(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.d.a.a, -47573i, 22859i, -1i), vec4<i32>(arg_1.e, -43792i, u_input.b.x, 54041i))), -vec4<i32>(1i, _wgslsmith_mod_i32(-1i, -1i), -arg_1.d.b.a, ~1i)) ^ abs(max(_wgslsmith_div_vec4_i32(min(vec4<i32>(var_1.x, u_input.b.x, var_2.e, 1i), vec4<i32>(1i, -2147483647i, 0i, -1i)), vec4<i32>(50804i, 0i, u_input.a, var_2.b) ^ vec4<i32>(u_input.a, -20694i, var_1.x, arg_1.d.b.a)), vec4<i32>(var_2.b, firstLeadingBit(u_input.a), _wgslsmith_div_i32(16138i, u_input.a), -var_1.x)));
    var_1 = -_wgslsmith_add_vec4_i32(firstTrailingBit(min(vec4<i32>(var_1.x, -20378i, 16230i, -25891i) ^ vec4<i32>(0i, 27822i, -14946i, 1i), -var_3)), ~(var_3 >> (vec4<u32>(arg_1.d.b.d.x, 14297u, 97226u, arg_0.x) % vec4<u32>(32u))) & var_3);
    return 49295u;
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> StorageBuffer {
    var var_0 = -2260f;
    var var_1 = Struct_3(Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1130f, 928f, -284f, 610f))))), 54380u, vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, arg_0, 0u, 1u)), ~vec4<u32>(arg_0, arg_0, arg_0, arg_0)), 1u), 107392u), -15490i, ~(~max(vec4<u32>(0u, 1u, arg_0, 11361u), ~vec4<u32>(82878u, 0u, arg_0, arg_0))), Struct_2(func_2(Struct_4(func_2(Struct_4(Struct_1(u_input.a, vec4<f32>(-100f, 396f, 776f, -193f), arg_0, vec2<u32>(arg_0, arg_0), 1u), vec3<f32>(1222f, -603f, 500f)), -734f, vec4<u32>(35573u, 0u, arg_0, arg_0), Struct_1(-69261i, vec4<f32>(1333f, 234f, -2203f, 1680f), 65785u, vec2<u32>(0u, arg_0), 4294967295u)), vec3<f32>(-736f, 2066f, 1507f)), _wgslsmith_f_op_f32(floor(1196f)), ~(vec4<u32>(19126u, 1u, arg_0, arg_0) | vec4<u32>(arg_0, 41434u, arg_0, arg_0)), func_2(Struct_4(Struct_1(10304i, vec4<f32>(912f, 1591f, 240f, 701f), arg_0, vec2<u32>(0u, arg_0), 0u), vec3<f32>(139f, -293f, -1049f)), 894f, ~vec4<u32>(arg_0, arg_0, arg_0, 66339u), Struct_1(-51633i, vec4<f32>(-1000f, 543f, -1690f, -2120f), 0u, vec2<u32>(arg_0, 7674u), arg_0))), func_2(Struct_4(Struct_1(u_input.a, vec4<f32>(1006f, -122f, -299f, 1376f), arg_0, vec2<u32>(0u, arg_0), arg_0), vec3<f32>(1f, 1f, 1f)), -1000f, _wgslsmith_add_vec4_u32(select(vec4<u32>(arg_0, arg_0, arg_0, 1u), vec4<u32>(arg_0, 4294967295u, arg_0, 22851u), vec4<bool>(arg_1.x, arg_1.x, true, false)), vec4<u32>(1u, arg_0, 0u, arg_0)), func_2(Struct_4(Struct_1(23410i, vec4<f32>(467f, 326f, 853f, 1000f), arg_0, vec2<u32>(arg_0, arg_0), arg_0), vec3<f32>(1092f, 987f, 748f)), _wgslsmith_f_op_f32(min(1257f, -508f)), abs(vec4<u32>(arg_0, 0u, arg_0, 60005u)), Struct_1(2368i, vec4<f32>(372f, 371f, -681f, 663f), 1u, vec2<u32>(arg_0, arg_0), 42367u))), vec2<bool>(arg_1.x, !(arg_0 >= arg_0)), Struct_1(-1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1401f, -635f, 1832f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1130f, -1000f, -1194f, -1312f) * vec4<f32>(2278f, 583f, 2500f, 1997f))), ~(arg_0 & arg_0), ~func_2(Struct_4(Struct_1(u_input.a, vec4<f32>(340f, -470f, 226f, 1410f), arg_0, vec2<u32>(1u, arg_0), 1u), vec3<f32>(-386f, 1889f, -1058f)), 1486f, vec4<u32>(0u, 55437u, arg_0, 89491u), Struct_1(2147483647i, vec4<f32>(-2263f, -2068f, 726f, 1436f), 4294967295u, vec2<u32>(7046u, 0u), arg_0)).d, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 18298u, 0u, 45960u) | vec4<u32>(0u, arg_0, arg_0, 1201u), countOneBits(vec4<u32>(31969u, arg_0, arg_0, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), 36745i);
    let var_2 = ~firstTrailingBit(4294967295u);
    let var_3 = func_2(Struct_4(Struct_1(-27862i, vec4<f32>(_wgslsmith_f_op_f32(1487f * var_1.a.b.x), _wgslsmith_f_op_f32(exp2(var_1.a.b.x)), 1635f, _wgslsmith_f_op_f32(-var_1.a.b.x)), 31241u, var_1.d.a.d, reverseBits(min(1u, var_2))), _wgslsmith_f_op_vec3_f32(round(func_2(Struct_4(Struct_1(arg_2, vec4<f32>(var_1.d.e, -345f, var_1.a.b.x, var_1.a.b.x), var_2, vec2<u32>(52796u, 1u), var_2), vec3<f32>(656f, 538f, 1857f)), _wgslsmith_f_op_f32(-646f * -790f), abs(var_1.c), var_1.a).b.ywy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d.d.b.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d.a.b.x)))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u << (var_1.d.b.c % 32u), select(79558u, 4294967295u, var_1.d.c.x)), 2614u), abs(var_2), _wgslsmith_mult_u32((var_1.c.x << (4294967295u % 32u)) ^ var_1.a.c, ~func_3(vec4<i32>(23804i, arg_2, 2147483647i, arg_2), Struct_4(Struct_1(-10636i, var_1.d.b.b, var_1.a.e, vec2<u32>(0u, var_2), var_1.d.d.d.x), var_1.a.b.xyz)).x), _wgslsmith_dot_vec4_u32(~(~var_1.c), var_1.c)), Struct_1(_wgslsmith_clamp_i32(firstTrailingBit(0i), select(_wgslsmith_div_i32(-1i, 2147483647i), u_input.a, var_1.d.c.x), min(~var_1.e, -5957i)), _wgslsmith_f_op_vec4_f32(-var_1.d.b.b), reverseBits(var_1.c.x), (abs(var_1.d.d.d) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_2, var_1.d.b.e), var_1.a.d)) ^ countOneBits(var_1.d.d.d), var_1.c.x << (abs(~0u) % 32u)));
    let var_4 = Struct_3(Struct_1(u_input.b.x << (~(var_1.c.x << (60594u % 32u)) % 32u), vec4<f32>(_wgslsmith_f_op_f32(1000f + var_1.a.b.x), -155f, -466f, var_3.b.x), countOneBits(arg_0 | 26728u), func_3(-vec4<i32>(-2147483647i, arg_2, 16218i, 2147483647i) | ~vec4<i32>(arg_2, var_3.a, -25307i, 20440i), Struct_4(Struct_1(11276i, vec4<f32>(var_1.a.b.x, var_3.b.x, -1156f, 257f), arg_0, vec2<u32>(32374u, var_3.d.x), 4294967295u), var_1.a.b.xwy)).xy, func_1(~abs(var_1.d.a.d), Struct_3(Struct_1(arg_2, var_1.a.b, 32418u, var_1.d.b.d, 3019u), ~13176i, vec4<u32>(1u, var_2, 9454u, 3348u), Struct_2(var_3, var_3, var_1.d.c, Struct_1(-2663i, var_3.b, 31213u, var_3.d, 20017u), var_3.b.x), ~var_3.a))), -1i, ~vec4<u32>(1u, ~firstLeadingBit(10107u), abs(var_2), firstTrailingBit(var_2)), var_1.d, select(_wgslsmith_sub_i32(min(firstLeadingBit(u_input.a), var_1.d.d.a), _wgslsmith_dot_vec2_i32(-vec2<i32>(-25198i, 23186i), u_input.b & u_input.b)), _wgslsmith_add_i32(_wgslsmith_sub_i32(~(-1i), -13076i), var_3.a), !arg_1.x));
    return StorageBuffer(var_4.d.d.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.b.x), vec4<i32>(-1i, -40762i, u_input.a, -10084i)), firstLeadingBit(vec4<i32>(u_input.a, 2147483647i, u_input.b.x, u_input.a))), u_input.a, -2147483647i, abs(abs(11806i))) & vec4<i32>(u_input.b.x, _wgslsmith_div_i32(-2147483647i, firstTrailingBit(u_input.b.x)), _wgslsmith_mod_i32(u_input.a, -18078i), i32(-1i) * -u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(-5672i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(-1i, u_input.a, 2147483647i, u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 73962i, 56539i, -25872i), vec4<i32>(u_input.b.x, u_input.b.x, -36290i, u_input.a))), u_input.a, ~_wgslsmith_mod_i32(1i, -45384i)), select(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, 1i, u_input.a), vec4<i32>(-45680i, 2147483647i, -1i, -1i)), ~(-vec4<i32>(-1i, 32919i, -14764i, 9668i)), true)));
    var_1 = u_input.a;
    var_1 = ~u_input.b.x;
    var var_2 = ~_wgslsmith_mult_u32(~abs(~0u), 1u);
    var_1 = abs(_wgslsmith_sub_i32(~(~abs(u_input.a)), -24580i));
    let x = u_input.a;
    s_output = func_5(countOneBits(~(~13237u) << (_wgslsmith_clamp_u32(reverseBits(0u), ~50399u, func_1(vec2<u32>(0u, 0u), Struct_3(Struct_1(u_input.a, vec4<f32>(1241f, 1000f, 385f, 2428f), 44342u, vec2<u32>(1u, 18113u), 4294967295u), 1i, vec4<u32>(29328u, 41723u, 53329u, 9946u), Struct_2(Struct_1(u_input.a, vec4<f32>(-389f, 380f, 181f, -891f), 494u, vec2<u32>(53792u, 1u), 1u), Struct_1(u_input.a, vec4<f32>(1256f, 392f, -674f, 582f), 36835u, vec2<u32>(29458u, 73282u), 4294967295u), vec2<bool>(var_0, var_0), Struct_1(-1i, vec4<f32>(1545f, -1835f, 180f, -1000f), 17823u, vec2<u32>(11289u, 0u), 3043u), -805f), u_input.b.x))) % 32u)), vec2<bool>(true, true), firstLeadingBit(i32(-1i) * 0i));
}

