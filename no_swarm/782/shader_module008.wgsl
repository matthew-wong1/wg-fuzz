struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_4(Struct_2(arg_2.a, arg_2.a.x, Struct_1(~_wgslsmith_dot_vec4_u32(arg_2.d.c, arg_2.d.c), arg_2.c.b, vec4<u32>(~67771u, _wgslsmith_dot_vec2_u32(arg_2.c.d.yx, vec2<u32>(u_input.c, u_input.b.x)), _wgslsmith_sub_u32(u_input.b.x, 4030u), ~arg_0.x), arg_2.d.d), arg_2.c), countOneBits(41427i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 + 457f), 385f, _wgslsmith_f_op_f32(-arg_1)));
    var var_2 = _wgslsmith_f_op_f32(-arg_1);
    let var_3 = 4294967295u;
    var_2 = arg_1;
    return -2147483647i;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_4(arg_1, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, 14435i), abs(arg_1.a.wx)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_1.b), -arg_2.a.a.zy)));
    var_0 = Struct_4(Struct_2(arg_1.a ^ vec4<i32>(1i, -44532i, -1i, ~2147483647i), func_2(vec3<u32>(~arg_0.x, countOneBits(59688u), _wgslsmith_mod_u32(0u, arg_1.c.a)), 1f, Struct_2(_wgslsmith_sub_vec4_i32(arg_2.a.a, arg_2.a.a), u_input.a, Struct_1(23805u, true, var_0.a.c.c, vec3<u32>(63679u, 1u, arg_0.x)), Struct_1(4294967295u, true, vec4<u32>(u_input.b.x, var_0.a.c.c.x, 122748u, arg_2.a.c.c.x), arg_0))), Struct_1(~countOneBits(6144u), arg_3.x && true, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c.a, 1u, arg_1.c.d.x, arg_2.a.c.c.x), arg_1.c.c), _wgslsmith_div_vec4_u32(arg_1.c.c, vec4<u32>(arg_2.a.c.d.x, 58727u, 4294967295u, 42990u))), vec3<u32>(arg_2.a.c.c.x ^ var_0.a.c.d.x, arg_0.x, ~1u)), var_0.a.c), _wgslsmith_dot_vec2_i32(var_0.a.a.yx, abs(_wgslsmith_add_vec2_i32(-var_0.a.a.zy, arg_1.a.zx))));
    var_0 = arg_2;
    var var_1 = max(u_input.c, _wgslsmith_sub_u32(18382u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.c), arg_0.yx), arg_1.d.a)));
    var var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.a.c.c, vec4<u32>(abs(arg_2.a.c.a), 1u, 0u, firstTrailingBit(14375u)), ~vec4<u32>(var_0.a.c.c.x, arg_0.x, var_0.a.c.c.x, u_input.c)), abs(vec4<u32>(min(4294967295u, u_input.b.x), ~var_0.a.c.c.x, max(60032u, 1u), countOneBits(4179u))));
    return Struct_1(abs(_wgslsmith_mod_u32(4294967295u, 10557u)), arg_1.c.b, _wgslsmith_div_vec4_u32(reverseBits(arg_1.c.c), arg_1.d.c), arg_2.a.d.c.wxx);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), ~arg_1.c.zy), -46833i), min(_wgslsmith_div_i32(~2147483647i, ~(-9591i)), arg_1.c.x)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -30774i, u_input.a, u_input.a, u_input.a), min(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, -1i), vec4<i32>(-2147483647i, arg_1.c.x, u_input.a, -31909i)), abs(vec4<i32>(1i, u_input.a, arg_1.c.x, -2147483647i)), vec4<i32>(1i, 2147483647i, 17676i, u_input.a)), vec4<i32>(abs(-4036i), arg_1.c.x, 1i, arg_1.c.x))));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1438f, -1244f, -2492f) * vec4<f32>(-474f, -499f, 323f, 592f))))), vec4<f32>(-487f, 1f, _wgslsmith_f_op_f32(ceil(-943f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(-125f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    var var_4 = vec3<i32>(1i, abs(countOneBits(~(-2706i))), abs(arg_1.c.x)) & reverseBits(-(~(~var_0)));
    return vec3<f32>(_wgslsmith_f_op_f32(-498f + var_3), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(var_2.x * 1767f))), -977f);
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(func_3(~(vec3<u32>(1u, u_input.c, 113974u) | vec3<u32>(4107u, u_input.b.x, u_input.c)), Struct_2(vec4<i32>(i32(-1i) * -20864i, _wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, func_2(vec3<u32>(0u, u_input.b.x, 89u), -624f, Struct_2(vec4<i32>(0i, 0i, 42028i, 43220i), u_input.a, Struct_1(0u, true, vec4<u32>(u_input.b.x, 33206u, u_input.c, u_input.c), vec3<u32>(0u, u_input.b.x, 1u)), Struct_1(4294967295u, false, vec4<u32>(u_input.b.x, 1u, 63193u, 19784u), vec3<u32>(u_input.b.x, 33298u, u_input.c))))), 1i << (u_input.c % 32u), Struct_1(~u_input.c, any(vec3<bool>(true, true, false)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) | vec3<u32>(u_input.c, 6686u, u_input.b.x)), Struct_1(u_input.b.x, true, ~vec4<u32>(0u, 0u, 1556u, u_input.c), vec3<u32>(0u, 94924u, 4294967295u))), Struct_4(Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1891i, 3008i), vec4<i32>(u_input.a, 0i, -42320i, -57227i)), ~(-2147483647i), Struct_1(u_input.b.x, false, vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.c), vec3<u32>(u_input.c, 19911u, 16418u)), Struct_1(94403u, false, vec4<u32>(12228u, u_input.c, u_input.b.x, u_input.c), vec3<u32>(117189u, u_input.b.x, 4294967295u))), -min(u_input.a, -11076i)), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), Struct_3(vec4<bool>(true, false, false, true), u_input.c, _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, -35670i, u_input.a) >> (vec3<u32>(120889u, u_input.c, u_input.c) % vec3<u32>(32u))), countOneBits(min(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-1i, u_input.a, -1i)))), Struct_1(u_input.c, any(vec3<bool>(false, true, true)), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(47687u, 0u, u_input.c, u_input.b.x) % vec4<u32>(32u)), vec3<u32>(countOneBits(95987u), u_input.c, 4294967295u)))));
    let var_1 = select((~vec3<u32>(64315u, 4294967295u, u_input.b.x) ^ reverseBits(select(vec3<u32>(79215u, 44598u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(false, true, true)))) ^ ~vec3<u32>(u_input.c, max(18272u, 32484u), u_input.b.x), ~countOneBits(vec3<u32>(1u, 5225u, u_input.b.x) << ((vec3<u32>(u_input.c, u_input.c, 4294967295u) ^ vec3<u32>(4293u, 36808u, 42233u)) % vec3<u32>(32u))), vec3<bool>(true, !any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), !(_wgslsmith_add_i32(u_input.a, 0i) <= -11263i)));
    var var_2 = vec2<u32>(var_1.x, max(1u, ~u_input.c ^ ~var_1.x));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 761f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(u_input.c, false, vec4<u32>(0u, 4294967295u, var_1.x, var_2.x), vec3<u32>(4294967295u, var_1.x, 0u)), Struct_3(vec4<bool>(false, true, false, false), u_input.b.x, vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(0u, false, vec4<u32>(var_2.x, u_input.b.x, 4294967295u, 9219u), var_1)))))))));
    var_2 = _wgslsmith_div_vec2_u32(u_input.b | abs(vec2<u32>(1u, 4294967295u)), ~select(max(abs(vec2<u32>(4294967295u, var_1.x)), abs(vec2<u32>(1u, u_input.c))), vec2<u32>(_wgslsmith_mult_u32(20712u, var_1.x), ~2213u), true));
    return Struct_4(Struct_2(vec4<i32>(u_input.a, ~(~u_input.a), -1i, _wgslsmith_sub_i32(-2147483647i, -u_input.a)), _wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(57148i, u_input.a, 35601i)), vec3<i32>(-24718i, -63053i, u_input.a) >> (~var_1 % vec3<u32>(32u))), Struct_1(u_input.b.x, !all(vec3<bool>(true, false, true)), ~(~vec4<u32>(u_input.b.x, var_2.x, var_2.x, var_1.x)), var_1), Struct_1(_wgslsmith_mult_u32(9726u, _wgslsmith_sub_u32(var_1.x, u_input.b.x)), select(false, false, true), select(vec4<u32>(var_1.x, 4294967295u, 59733u, var_1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_2.x, 1u, 0u), vec4<u32>(1u, var_2.x, u_input.b.x, 30950u)), vec4<bool>(false, true, true, false)), vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_2.x), 4294967295u, 38301u))), u_input.a);
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_sub_u32(~(~(~arg_1)), ((arg_0.a.c.d.x << (1u % 32u)) << ((arg_0.a.d.c.x >> (33908u % 32u)) % 32u)) | arg_0.a.d.c.x), true, arg_0.a.c.c, func_3(reverseBits(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.a.c.c.wwy, vec3<u32>(33822u, 87999u, arg_0.a.c.d.x)), arg_0.a.d.d | vec3<u32>(40326u, 1u, arg_1))), func_1().a, func_1(), !(!select(vec4<bool>(true, false, false, arg_0.a.c.b), vec4<bool>(true, true, false, arg_0.a.d.b), vec4<bool>(arg_0.a.d.b, arg_0.a.c.b, false, arg_0.a.c.b)))).c.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(reverseBits(-u_input.a), -u_input.a);
    var var_1 = func_5(func_1(), ~reverseBits(u_input.c));
    let var_2 = select(vec3<bool>(var_1.b, (var_1.b | true) == var_1.b, false), select(vec3<bool>(all(!vec2<bool>(var_1.b, true)), var_1.b, !(!var_1.b)), !select(select(vec3<bool>(false, false, var_1.b), vec3<bool>(true, var_1.b, true), var_1.b), vec3<bool>(true, true, true), any(vec2<bool>(var_1.b, var_1.b))), -2147483647i == _wgslsmith_mult_i32(-var_0.x, 1i)), vec3<bool>(var_1.b, var_1.b, !(false | !var_1.b)));
    let var_3 = 0i;
    let var_4 = Struct_1(~(~var_1.a), var_1.b, ~(_wgslsmith_mult_vec4_u32(~var_1.c, ~vec4<u32>(var_1.d.x, var_1.d.x, 1u, var_1.d.x)) >> (vec4<u32>(_wgslsmith_mod_u32(61497u, 4294967295u), var_1.d.x, var_1.c.x << (u_input.b.x % 32u), func_1().a.d.c.x) % vec4<u32>(32u))), var_1.c.wxx);
    let var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f))), 725f, any(!select(var_2.xy, vec2<bool>(false, false), true)) & (func_3(_wgslsmith_sub_vec3_u32(var_4.d, vec3<u32>(u_input.c, 33041u, 0u)), func_1().a, Struct_4(Struct_2(vec4<i32>(var_3, var_3, -1i, var_3), -7907i, var_4, Struct_1(u_input.c, var_4.b, vec4<u32>(var_4.d.x, 0u, 16680u, 0u), vec3<u32>(var_4.a, 1u, var_4.c.x))), 0i), select(vec4<bool>(var_4.b, false, var_4.b, var_2.x), vec4<bool>(false, var_1.b, var_1.b, var_1.b), var_4.b)).b & var_4.b)));
    var var_6 = vec4<i32>(-25452i, 4604i, -(~(~countOneBits(-2147483647i))), -1i);
    var_6 = ~_wgslsmith_clamp_vec4_i32(max(-(~vec4<i32>(var_3, -20699i, u_input.a, 723i)), abs(~vec4<i32>(-1i, -10401i, -47772i, -23445i))), ~abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_3, 1i, u_input.a, u_input.a), vec4<i32>(-38330i, -2147483647i, -4918i, u_input.a))), firstLeadingBit(~(vec4<i32>(50323i, var_0.x, var_6.x, var_0.x) >> (vec4<u32>(79535u, var_4.d.x, 1u, 30315u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3), select(max(abs(vec4<u32>(1u, u_input.b.x, var_1.d.x, 1u)), select(vec4<u32>(u_input.b.x, u_input.c, var_1.d.x, var_4.c.x) << (var_4.c % vec4<u32>(32u)), ~vec4<u32>(0u, u_input.b.x, var_1.c.x, var_1.c.x), !vec4<bool>(var_2.x, var_1.b, var_4.b, var_1.b))), vec4<u32>(~countOneBits(var_1.c.x), _wgslsmith_clamp_u32(~23705u, 39137u ^ var_1.d.x, var_1.d.x), var_1.d.x, 515u), true));
}

