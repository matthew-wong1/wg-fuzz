struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_2(all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, false), false), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-267f))), _wgslsmith_f_op_f32(floor(487f)), firstLeadingBit(-vec3<i32>(1i, 1i, 1i)), ((i32(-1i) * -1i) >> (_wgslsmith_mult_u32(u_input.a, 1u) % 32u)) >> (1u % 32u), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 25006u), vec2<u32>(0u, u_input.a)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f + 1258f))), 1996f, select(vec3<i32>(~(-20745i), ~(-1i), abs(4966i)), vec3<i32>(_wgslsmith_mult_i32(23181i, -40771i), 1i, reverseBits(62754i)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), abs(-_wgslsmith_mult_i32(-327i, 20702i)), _wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(21899u, u_input.a)), vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(u_input.a, u_input.a)) ^ ~firstTrailingBit(vec2<u32>(u_input.a, 78050u))));
    var_0 = Struct_2(var_0.a == false, var_0.b, var_0.c);
    var_0 = Struct_2(false, var_0.b, Struct_1(var_0.b.a, _wgslsmith_div_f32(535f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(119f - var_0.b.b), _wgslsmith_f_op_f32(max(var_0.c.b, -1997f)))), reverseBits(vec3<i32>(var_0.c.d, 1i, var_0.b.c.x) | var_0.b.c) & select(_wgslsmith_add_vec3_i32(var_0.b.c, vec3<i32>(var_0.b.d, var_0.c.d, 1i)), -vec3<i32>(var_0.b.d, 0i, 22834i), var_0.a || var_0.a), var_0.b.c.x, vec2<u32>(~u_input.a, 1u)));
    let var_1 = var_0.b.a;
    let var_2 = vec4<bool>(1u > var_0.c.e.x, any(select(vec3<bool>(var_0.a, var_0.a, true), select(select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(false, var_0.a, true), var_0.a), select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a), var_0.a), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, true, false), var_0.a)), select(vec3<bool>(var_0.a, true, true), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), false), vec3<bool>(var_0.a, true, var_0.a)))), true, any(!vec4<bool>(true, true, true, var_0.a)));
    return ~_wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(u_input.a, var_0.b.e.x, u_input.a))), vec3<u32>(~var_0.b.e.x, 37727u, _wgslsmith_add_u32(~var_0.b.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 19533u), vec2<u32>(u_input.a, 0u)))));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_1(1000f, _wgslsmith_f_op_f32(-547f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(696f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1432f + 249f))))), -(vec3<i32>(~arg_0, arg_0, 38168i) << (func_3() % vec3<u32>(32u))), arg_0, select((_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(50590u, 10846u)) >> (~vec2<u32>(23387u, u_input.a) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(12687u, u_input.a), vec2<u32>(u_input.a, u_input.a)), abs(select(reverseBits(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(1u, u_input.a), all(vec3<bool>(true, false, false)))), vec2<bool>(false, true)));
    var var_1 = Struct_1(-432f, -837f, vec3<i32>(-12221i, arg_0, -8715i), ~arg_0, vec2<u32>(var_0.e.x, u_input.a));
    return _wgslsmith_add_i32(~var_1.d, abs(arg_0));
}

fn func_1() -> f32 {
    let var_0 = true;
    var var_1 = 1i;
    let var_2 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1169f, -752f))), -613f, vec3<i32>(_wgslsmith_mult_i32(22654i >> (u_input.a % 32u), i32(-1i) * -50519i), -func_2(-42077i), _wgslsmith_mod_i32(-1i, abs(-1i))), -1i, countOneBits(vec2<u32>(1u, 1u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -858f), -1720f, select(-abs(vec3<i32>(-38349i, 2147483647i, -1i)), select(vec3<i32>(7052i, -23193i, 0i), countOneBits(vec3<i32>(1i, 16361i, 0i)), true), vec3<bool>(true & var_0, var_0, true)), -39080i, countOneBits(~(~vec2<u32>(4294967295u, 47381u)))));
    let var_3 = 6452u;
    var var_4 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(1f * var_2.b.a), _wgslsmith_f_op_f32(var_2.b.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.b + -1248f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1084f, _wgslsmith_f_op_f32(trunc(483f)), -901f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-139f)), _wgslsmith_f_op_f32(-var_2.c.b), var_2.a))))));
    return 591f;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = all(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, select(true, false, false) || true, true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), all(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))));
    var_0 = !(!(!any(vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-2922f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-168f, _wgslsmith_f_op_f32(min(var_1, -175f)))))) != -427f;
    let var_3 = ~vec4<u32>(arg_1.e.x, arg_2.e.x ^ arg_2.e.x, abs(arg_2.e.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(8907u, arg_2.e.x), arg_1.e.x), arg_2.e.x));
    return Struct_1(var_1, arg_0.x, _wgslsmith_sub_vec3_i32((vec3<i32>(31027i, 2147483647i, arg_2.c.x) >> (select(var_3.xzz, vec3<u32>(1u, u_input.a, 0u), true) % vec3<u32>(32u))) & vec3<i32>(firstTrailingBit(arg_2.d), arg_1.c.x, ~arg_1.c.x), vec3<i32>(2147483647i, reverseBits(0i) & arg_2.c.x, arg_2.d)), _wgslsmith_add_i32(arg_2.d, arg_2.c.x), _wgslsmith_div_vec2_u32(arg_1.e, func_3().xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(-422f, -828f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(trunc(-1984f)), -761f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, -381f, -320f, -160f)), true)), Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f * -1066f)), -vec3<i32>(1i, -1i, -3809i) & (vec3<i32>(-2147483647i, 31087i, 0i) << (vec3<u32>(4294967295u, u_input.a, 21098u) % vec3<u32>(32u))), 0i, select(_wgslsmith_add_vec2_u32(vec2<u32>(42744u, u_input.a), vec2<u32>(u_input.a, 0u)), ~vec2<u32>(u_input.a, u_input.a), true)), Struct_1(1f, 1f, firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(12923i, -1i, -49618i), vec3<i32>(-2147483647i, -54295i, 37576i))), -2147483647i, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 57472u)))), func_4(vec4<f32>(-1896f, _wgslsmith_f_op_f32(select(-1265f, _wgslsmith_f_op_f32(f32(-1f) * -343f), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1613f, -362f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(662f)) - _wgslsmith_f_op_f32(f32(-1f) * -236f))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, 1610f, -820f, -978f))), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -386f, -1045f, -1000f), vec4<f32>(-1836f, -2073f, 1000f, 276f)), Struct_1(-375f, 240f, vec3<i32>(-15590i, 11788i, -52035i), 2147483647i, vec2<u32>(u_input.a, u_input.a)), Struct_1(-595f, 455f, vec3<i32>(2147483647i, 0i, 1054i), -11586i, vec2<u32>(30554u, 43158u))), func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2052f, 611f, -1247f, 1073f))), func_4(vec4<f32>(-334f, -808f, -849f, -300f), Struct_1(-301f, -371f, vec3<i32>(61997i, -47577i, -15031i), 1i, vec2<u32>(u_input.a, 52592u)), Struct_1(359f, -661f, vec3<i32>(-2147483647i, 42031i, 50871i), 27382i, vec2<u32>(u_input.a, 1u))), func_4(vec4<f32>(845f, -1387f, 858f, -146f), Struct_1(1408f, 217f, vec3<i32>(-2147483647i, 74030i, 1i), 1i, vec2<u32>(u_input.a, 1u)), Struct_1(-257f, -1171f, vec3<i32>(6118i, -1i, -2147483647i), 120532i, vec2<u32>(u_input.a, u_input.a))))), func_4(vec4<f32>(-1785f, _wgslsmith_f_op_f32(select(2029f, -732f, true)), 931f, _wgslsmith_div_f32(789f, -208f)), Struct_1(-939f, _wgslsmith_f_op_f32(f32(-1f) * -2105f), vec3<i32>(1i, 40355i, -36073i), -14753i, select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 112826u), vec2<bool>(false, false))), Struct_1(_wgslsmith_f_op_f32(1113f + 814f), 1000f, _wgslsmith_mod_vec3_i32(vec3<i32>(5216i, 6990i, -29486i), vec3<i32>(-50526i, 2147483647i, -36982i)), _wgslsmith_div_i32(2147483647i, -2147483647i), vec2<u32>(20426u, u_input.a)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a, _wgslsmith_f_op_f32(step(365f, 110f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(512f)), _wgslsmith_f_op_f32(-var_0.b.a))), _wgslsmith_f_op_f32(func_1()))));
    var var_2 = -vec2<i32>(2147483647i, 31702i);
    var var_3 = var_2.x << (~(~0u) % 32u);
    var_2 = var_0.b.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_div_u32(var_0.b.e.x, 14527u), ~0u, u_input.a) >> (_wgslsmith_mult_vec3_u32(abs(countOneBits(vec3<u32>(39036u, 0u, var_0.b.e.x))), countOneBits(vec3<u32>(var_0.b.e.x, u_input.a, 13899u))) % vec3<u32>(32u)), ~vec2<u32>(~_wgslsmith_div_u32(1u, u_input.a), var_0.c.e.x), 69116u, var_2.x, abs(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -179f, var_1.x, var_0.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, 909f, var_1.x, 1422f)), false)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-832f, var_1.x, -1272f, var_1.x)), func_4(vec4<f32>(var_1.x, 1464f, var_0.b.a, var_0.c.a), Struct_1(var_1.x, var_1.x, vec3<i32>(var_0.b.c.x, 0i, var_2.x), var_2.x, var_0.c.e), Struct_1(-571f, -409f, var_0.c.c, var_0.b.d, var_0.c.e)), func_4(vec4<f32>(var_0.c.a, 962f, -1000f, var_0.c.b), Struct_1(-122f, -1478f, vec3<i32>(1i, -204i, var_2.x), var_2.x, vec2<u32>(u_input.a, 812u)), var_0.c)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, var_0.b.a, -184f, -739f)), var_0.b, var_0.c)).c.x));
}

