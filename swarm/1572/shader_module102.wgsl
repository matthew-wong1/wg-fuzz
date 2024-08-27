struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    let var_0 = Struct_1(u_input.a, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -145f), -260f, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(219f, 421f))))), select(vec2<bool>(false, true), vec2<bool>(!all(vec2<bool>(true, false)), any(vec4<bool>(true, false, false, false))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_1 = vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2844i, -2147483647i, 1i), vec3<i32>(15017i, -11986i, -13788i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, -11468i), vec3<i32>(0i, 0i, -3900i), vec3<i32>(3189i, -15978i, -39394i))), _wgslsmith_clamp_i32(96271i << (u_input.a.x % 32u), i32(-1i) * -1i, ~(-22579i))), ~(-_wgslsmith_clamp_i32(select(49927i, 15457i, var_0.d.x), 2147483647i, _wgslsmith_mod_i32(-2147483647i, 12128i))));
    var var_2 = Struct_2(var_1.x, var_0, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c, var_0.c))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, var_0.c), vec2<f32>(-1000f, var_0.c))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1268f, var_0.c) * vec2<f32>(var_0.c, var_0.c))))))), abs(~(vec4<i32>(-1i) * -vec4<i32>(var_1.x, -3938i, 69916i, 0i))), Struct_1(vec3<u32>(~var_0.a.x, _wgslsmith_div_u32(~arg_0, ~0u), u_input.a.x >> (26399u % 32u)), vec3<u32>(abs(var_0.b.x & u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(17417u, 25615u), var_0.a.yy), firstLeadingBit(u_input.a.x), 0u | arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 21877u, arg_0), vec3<u32>(1u, 0u, 27192u))), _wgslsmith_f_op_f32(f32(-1f) * -200f), vec2<bool>(!(var_0.d.x && var_0.d.x), true)));
    var_2 = Struct_2(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(var_2.d.wx), min(_wgslsmith_mod_vec2_i32(var_1, vec2<i32>(1i, var_1.x)), var_2.d.xw)), 33121i), var_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.c, -629f)), var_2.c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 1000f)) + _wgslsmith_f_op_vec2_f32(exp2(var_2.c))), vec2<f32>(_wgslsmith_f_op_f32(var_2.b.c - var_0.c), _wgslsmith_f_op_f32(-var_2.e.c))), var_2.b.d.x)), vec4<i32>(firstTrailingBit(-1i), var_1.x, ~(~25421i), -54085i), Struct_1(~var_2.e.a, var_2.e.a, -1357f, var_0.d));
    var var_3 = var_1;
    return var_1;
}

fn func_2() -> vec3<i32> {
    var var_0 = vec3<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(17132i, 1i), vec2<i32>(34915i, -35964i), vec2<i32>(-2147483647i, 1i)) ^ vec2<i32>(1i, 1i), func_3(~4294967295u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(15657i, -1i, -20913i, 0i), vec4<i32>(0i, 1i, -23309i, 2147483647i)), max(0i, 0i), _wgslsmith_add_i32(0i, -53967i)), ~select(~vec3<i32>(49389i, 1i, -2147483647i), vec3<i32>(24458i, -69473i, 16962i), vec3<bool>(true, true, true))), 2147483647i);
    var_0 = select(-(~(-vec3<i32>(var_0.x, var_0.x, var_0.x))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, 65914u), firstLeadingBit(u_input.a.x), u_input.a.x), reverseBits(u_input.a)) % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x)), max(_wgslsmith_sub_vec3_i32(vec3<i32>(17343i, 63128i, 35957i), vec3<i32>(585i, -1i, var_0.x)), vec3<i32>(var_0.x, var_0.x, var_0.x))), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, true))), !vec3<bool>(true, true, select(true, true, false)), vec3<bool>(true, true, all(vec3<bool>(true, true, true)))));
    var_0 = vec3<i32>(~76682i, 1i, var_0.x);
    let var_1 = Struct_1(select(~u_input.a << (vec3<u32>(u_input.a.x, 40725u, u_input.a.x) % vec3<u32>(32u)), u_input.a, select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))) << (firstLeadingBit(~(u_input.a << (vec3<u32>(u_input.a.x, u_input.a.x, 85057u) % vec3<u32>(32u)))) % vec3<u32>(32u)), ~(~u_input.a), 256f, vec2<bool>(true, true));
    var var_2 = !all(var_1.d) && all(var_1.d);
    return -max(vec3<i32>(22824i, ~var_0.x, _wgslsmith_clamp_i32(var_0.x, var_0.x, -1i)), vec3<i32>(1i, var_0.x, var_0.x)) << (var_1.b % vec3<u32>(32u));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = var_0.zx;
    var var_2 = _wgslsmith_add_i32(var_1.x ^ ~(~var_0.x), abs(var_1.x >> (4294967295u % 32u)));
    var var_3 = Struct_1(abs(~vec3<u32>(u_input.a.x, u_input.a.x, reverseBits(u_input.a.x))), u_input.a, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + -1698f), arg_0.x)), vec2<bool>(true, select(all(vec3<bool>(true, true, true)), !(var_1.x > var_0.x), true)));
    var_2 = _wgslsmith_dot_vec4_i32(countOneBits(min(_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, var_0.x, var_1.x, 46511i), _wgslsmith_mod_vec4_i32(vec4<i32>(8225i, var_0.x, var_1.x, var_1.x), vec4<i32>(-55798i, -2405i, -2147483647i, var_1.x)), vec4<i32>(47055i, 21794i, 0i, 1i) << (vec4<u32>(1u, 46653u, u_input.a.x, 0u) % vec4<u32>(32u))), vec4<i32>(var_0.x, var_1.x, var_1.x, var_1.x) ^ vec4<i32>(var_0.x, var_1.x, var_0.x, var_0.x))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_0.x, ~(-6421i), -18623i, var_1.x >> (37011u % 32u)), vec4<i32>(abs(var_1.x), -var_0.x, abs(var_1.x), _wgslsmith_sub_i32(var_0.x, var_0.x)), select(true, false, var_3.d.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.x, 8856i), var_0.x << (var_3.a.x % 32u), var_1.x, var_0.x), vec4<i32>(~var_1.x, var_0.x, 1i, 26234i << (1u % 32u)), vec4<i32>(_wgslsmith_sub_i32(var_0.x, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-4976i, 5616i, 0i, var_0.x), vec4<i32>(2147483647i, 28816i, var_1.x, 16704i)), var_0.x, var_0.x))));
    return Struct_2(min(-54662i, countOneBits(abs(1i))), Struct_1(~(~(~var_3.a)), _wgslsmith_sub_vec3_u32(var_3.b, max(~u_input.a, vec3<u32>(1u, u_input.a.x, var_3.b.x))), _wgslsmith_f_op_f32(1000f - var_3.c), select(!var_3.d, vec2<bool>(true, var_3.d.x), select(!var_3.d, select(var_3.d, var_3.d, var_3.d.x), true))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(501f - arg_0.x) - arg_0.x), 566f))), countOneBits(vec4<i32>(2147483647i, firstTrailingBit(~2147483647i), _wgslsmith_add_i32(~19422i, 1i), ~_wgslsmith_clamp_i32(var_1.x, var_1.x, var_1.x))), Struct_1(abs(u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, select(0u, var_3.b.x, false), var_3.a.x), vec3<u32>(max(58336u, var_3.b.x), _wgslsmith_div_u32(u_input.a.x, var_3.b.x), 13706u)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c + var_3.c) + _wgslsmith_f_op_f32(f32(-1f) * -1319f))), var_3.d));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c + _wgslsmith_f_op_vec2_f32(exp2(arg_2.c))))).b.b.x;
    let var_1 = arg_1.e;
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(-arg_1.c)).c.x;
    let var_3 = _wgslsmith_f_op_f32(sign(-1644f));
    var var_4 = abs(~var_1.a.x);
    return (vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, arg_1.b.a.x, 35670u), vec4<u32>(4294967295u, u_input.a.x, 14502u, arg_2.b.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(9678u, 39165u, 62902u, arg_2.b.a.x), vec4<u32>(var_0, var_0, 1u, u_input.a.x))), arg_2.e.b.x) >> (~vec2<u32>(firstTrailingBit(arg_1.b.a.x), 1u) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(~u_input.a.zx, vec2<u32>(var_1.b.x, var_1.b.x));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = arg_2.xx;
    var var_1 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(221f, arg_1.c.x) + arg_3.c), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.b.c, -149f))))), arg_1.c, select(true, arg_1.b.d.x, arg_3.b.d.x) && true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c.x, 462f))))));
    var var_2 = !(!(!(!select(vec4<bool>(false, arg_3.e.d.x, true, true), vec4<bool>(true, true, true, true), vec4<bool>(arg_3.e.d.x, arg_1.b.d.x, arg_3.b.d.x, false)))));
    var_2 = select(select(vec4<bool>(var_1.d.x > (i32(-1i) * -1i), !arg_3.b.d.x, true, true), !vec4<bool>(true, any(vec4<bool>(arg_1.b.d.x, true, var_1.e.d.x, true)), false, true), true), !select(!vec4<bool>(var_1.e.d.x, false, true, var_1.e.d.x), select(select(vec4<bool>(var_1.b.d.x, false, false, true), vec4<bool>(arg_1.e.d.x, true, arg_1.e.d.x, arg_1.e.d.x), vec4<bool>(arg_1.e.d.x, true, false, false)), vec4<bool>(false, false, arg_1.e.d.x, arg_3.b.d.x), arg_1.b.d.x), false), vec4<bool>(_wgslsmith_f_op_f32(max(arg_3.b.c, arg_1.c.x)) == 1038f, true, true, var_1.b.d.x));
    let var_3 = !(!select(vec2<bool>(func_1(vec2<f32>(-1000f, -1699f)).e.d.x, false), !vec2<bool>(var_2.x, var_1.e.d.x), true));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_4(vec2<bool>(true, true), func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1539f), _wgslsmith_f_op_f32(f32(-1f) * -2620f))), Struct_2(~0i, Struct_1(~vec3<u32>(35703u, u_input.a.x, 0u), u_input.a, 1000f, vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(816f, -1767f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-303f, 1663f) - vec2<f32>(2280f, -227f))), ~vec4<i32>(6536i, -1i, 1i, 1i), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(902f, -275f) + vec2<f32>(-895f, 216f))).e)), Struct_2(19366i, func_1(vec2<f32>(_wgslsmith_f_op_f32(956f - -240f), _wgslsmith_f_op_f32(-365f * 855f))).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2062f, -1348f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(732f, -547f))), reverseBits(vec4<i32>(abs(-2147483647i), 1i, ~59065i, -1i)), Struct_1(~u_input.a, ~(u_input.a ^ u_input.a), -1489f, vec2<bool>(true, true))), -(~(~vec3<i32>(1i, 1i, 1i))), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1042f, 1961f), vec2<f32>(-624f, 324f)))).d.x, Struct_1(u_input.a, u_input.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1641f * 722f))), vec2<bool>(any(vec4<bool>(false, false, true, false)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, -2138f)), vec2<f32>(-728f, -1000f)))), _wgslsmith_add_vec4_i32(vec4<i32>(-7453i, -6335i, -34850i, 1i) & select(vec4<i32>(2147483647i, 12106i, -1i, -35609i), vec4<i32>(5481i, 13568i, 0i, 13973i), vec4<bool>(false, true, true, true)), vec4<i32>(1i, 1i, 1i, 1i)), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-206f, -1026f), vec2<f32>(754f, -882f)))).b)));
    var var_1 = vec4<f32>(-1378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(341f))), var_0.x, var_0.x);
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-336f, -1297f), _wgslsmith_f_op_f32(639f - 557f), true))), var_1.x, _wgslsmith_f_op_f32(var_0.x * 1000f), 255f));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 400f, 167f, var_0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec2_f32(func_5(vec2<u32>(4294967295u, 4841u), Struct_2(1i, Struct_1(u_input.a, u_input.a, -2363f, vec2<bool>(false, false)), var_1.yw, vec4<i32>(41537i, 25142i, -75950i, 1i), Struct_1(u_input.a, u_input.a, var_1.x, vec2<bool>(true, true))), vec3<i32>(32415i, -1i, -80047i), Struct_2(21093i, Struct_1(vec3<u32>(91531u, u_input.a.x, 4294967295u), vec3<u32>(16927u, u_input.a.x, u_input.a.x), 469f, vec2<bool>(false, true)), var_1.zx, vec4<i32>(-1i, -1i, 2147483647i, -23477i), Struct_1(vec3<u32>(u_input.a.x, 0u, 26499u), u_input.a, var_1.x, vec2<bool>(false, false))))).x, 1f, 1000f, var_0.x))));
    let var_3 = func_1(var_2.yz).b;
    var var_4 = ~(~vec3<i32>(1i, 1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(343f, 1000f, _wgslsmith_f_op_f32(var_0.x * 1f), var_0.x));
}

