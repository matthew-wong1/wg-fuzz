struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec2<bool> {
    var var_0 = arg_1;
    var_0 = Struct_1(u_input.a.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(~16789u & ~u_input.a.x, ~_wgslsmith_mod_u32(u_input.a.x, var_0.a), ~select(47404u, arg_1.a, true)), vec3<u32>(select(firstTrailingBit(0u), ~arg_1.b.x, false), 1u, arg_1.a), vec3<u32>(u_input.a.x, 1u, ~arg_1.a)), -vec3<i32>(_wgslsmith_div_i32(-24436i, _wgslsmith_mult_i32(arg_1.d.x, var_0.d.x)), var_0.c.x, -2147483647i), countOneBits(vec3<i32>(_wgslsmith_sub_i32(-22194i, 21232i), i32(-1i) * -18063i, _wgslsmith_mod_i32(14455i, -var_0.d.x))), abs(arg_0.x));
    var var_1 = ~4294967295u;
    let var_2 = ~_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a.zzy | vec3<u32>(u_input.a.x, arg_1.b.x, arg_1.a), vec3<u32>(u_input.a.x, var_0.a, 68066u) & var_0.b), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(60599u, 100452u, 4294967295u, var_0.a), max(u_input.a, u_input.a)), _wgslsmith_mod_u32(1u, arg_1.a) >> (1u % 32u), ~4294967295u));
    return select(select(vec2<bool>(false, any(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, false, false), arg_2))), vec2<bool>(!all(vec3<bool>(true, arg_2, true)), arg_2), arg_2 || true), select(select(!select(vec2<bool>(false, arg_2), vec2<bool>(false, arg_2), vec2<bool>(arg_2, false)), vec2<bool>(true, true), select(select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, false), vec2<bool>(arg_2, false)), vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2))), vec2<bool>(!select(arg_2, true, arg_2), arg_2), !all(!vec4<bool>(arg_2, arg_2, false, true))), vec2<bool>(any(vec3<bool>(!arg_2, arg_2, false)), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-(~(-12565i)), ~1i, abs(arg_0.d.x ^ -75083i)), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(-11467i, 0i, arg_0.e)), arg_2.d), -22684i, arg_2.d.x), countOneBits(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-18763i, 48717i, 2147483647i, arg_2.b.e), ~vec4<i32>(-56244i, 0i, arg_0.e, arg_0.d.x)), vec4<i32>(arg_0.e, -19805i, arg_2.d.x, 1i))));
    let var_2 = Struct_1(4294967295u, vec3<u32>(_wgslsmith_clamp_u32(arg_2.b.a, 3523u, 13351u), 1u, ~arg_2.b.b.x), _wgslsmith_div_vec3_i32(select(countOneBits(vec3<i32>(0i, 10955i, var_1.x)), _wgslsmith_add_vec3_i32(var_1.wwz, -vec3<i32>(-2147483647i, -15799i, arg_0.e)), !(!arg_2.a.x)), vec3<i32>(1i, 0i ^ var_1.x, -5718i) | (var_1.xww & vec3<i32>(arg_0.e, -10102i, var_1.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -11071i, arg_0.c.x), firstTrailingBit(~max(vec3<i32>(var_1.x, arg_0.e, var_1.x), arg_0.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c.x, ~arg_0.d.x, 1i), -arg_2.b.d)), 0i);
    return ~0u >> (u_input.a.x % 32u);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(arg_2.x, firstLeadingBit(~34513i)) | -19577i);
    var var_1 = func_4(Struct_1(0u, _wgslsmith_div_vec3_u32(abs(abs(u_input.a.wwy)), u_input.a.yyy), firstLeadingBit(_wgslsmith_clamp_vec3_i32(arg_2, abs(vec3<i32>(-1i, arg_2.x, 58759i)), countOneBits(arg_2))), ~firstTrailingBit(min(arg_2, vec3<i32>(arg_2.x, var_0, arg_2.x))), 2147483647i), ~vec4<u32>(u_input.a.x, ~abs(0u), ~0u, u_input.a.x), Struct_2(func_3(_wgslsmith_mult_vec4_i32(~vec4<i32>(26130i, arg_2.x, 6390i, var_0), vec4<i32>(-4655i, -2147483647i, arg_2.x, 68961i) | vec4<i32>(-1i, -28034i, 0i, 0i)), Struct_1(1u, u_input.a.zyx, vec3<i32>(43168i, 25157i, arg_2.x), arg_2, ~(-2147483647i)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f + 139f))), Struct_1(_wgslsmith_dot_vec3_u32(u_input.a.wxx, _wgslsmith_sub_vec3_u32(u_input.a.zzy, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.xxy, arg_2, vec3<i32>(1i, firstLeadingBit(arg_2.x), arg_2.x), _wgslsmith_mult_i32(reverseBits(0i), arg_2.x)), func_3(vec4<i32>(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-6897i, 5751i, var_0), arg_2), var_0, var_0), Struct_1(31277u, ~vec3<u32>(u_input.a.x, 4294967295u, 32500u), _wgslsmith_clamp_vec3_i32(arg_2, arg_2, arg_2), vec3<i32>(arg_2.x, 1i, arg_2.x), var_0 >> (u_input.a.x % 32u)), arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1479f)), _wgslsmith_f_op_f32(-658f + -2022f))), max(_wgslsmith_mult_vec3_i32(arg_2, countOneBits(vec3<i32>(var_0, 1i, var_0))), vec3<i32>(reverseBits(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, var_0, 6039i), arg_2), abs(arg_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 478f)))))));
    var_1 = ~u_input.a.x;
    var var_2 = u_input.a.x;
    var var_3 = !func_3(-vec4<i32>(var_0, 0i, abs(arg_2.x), abs(-3202i)), Struct_1(1u, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.zzy), vec3<i32>(1i, reverseBits(arg_2.x), var_0), (arg_2 | arg_2) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), countOneBits(_wgslsmith_add_i32(26524i, var_0))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(655f)), 1083f));
    return Struct_1(_wgslsmith_clamp_u32(40653u, 0u, reverseBits(~u_input.a.x & _wgslsmith_mult_u32(1u, u_input.a.x))), _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), u_input.a.wzw, vec3<u32>(1u, u_input.a.x, u_input.a.x)), min(u_input.a.zyy, u_input.a.yyy) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(44664u, 1u, u_input.a.x), abs(u_input.a.zxw)) % vec3<u32>(32u))), ~firstLeadingBit(arg_2), abs(~(-max(arg_2, vec3<i32>(-2147483647i, arg_2.x, -571i)))), -69095i);
}

fn func_1() -> i32 {
    let var_0 = func_2(true, true, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-42067i, 1i), vec2<i32>(-38757i, _wgslsmith_dot_vec3_i32(vec3<i32>(46180i, -45307i, 21370i), vec3<i32>(59256i, -1i, 1i)))), 0i, select(-1i, max(_wgslsmith_sub_i32(1i, -36974i), ~(-23925i)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))))));
    let var_1 = var_0;
    let var_2 = var_1.c.x;
    var var_3 = Struct_1(var_1.b.x, u_input.a.xww & func_2(true, !func_3(vec4<i32>(var_2, 1i, -1i, var_2), var_0, true, -627f).x, var_1.d).b, ~(-firstTrailingBit(var_1.d)), ~vec3<i32>(~(-1i), var_1.c.x, ~var_0.c.x | _wgslsmith_sub_i32(var_1.d.x, var_1.d.x)), var_0.c.x);
    let var_4 = _wgslsmith_div_i32(-421i, _wgslsmith_div_i32(-45564i & var_3.e, ~(_wgslsmith_mult_i32(var_3.d.x, -15389i) ^ _wgslsmith_div_i32(-39889i, -2147483647i))));
    return _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-var_1.e, -1i >> (var_1.b.x % 32u), countOneBits(2194i)), -26938i);
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, ~11151i, -41617i, -1i) & ~vec4<i32>(-2147483647i, arg_2.b.e, 21925i, -31192i), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-9377i, -10117i, -16806i, arg_2.d.x), vec4<i32>(0i, -2147483647i, 2147483647i, arg_2.d.x)), vec4<i32>(arg_2.b.d.x, arg_2.d.x, arg_2.d.x, 2147483647i)), -(~vec4<i32>(-29373i, arg_2.d.x, arg_2.b.d.x, 49955i))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.b.d.x, arg_2.b.c.x, -2147483647i, arg_2.d.x) ^ ~vec4<i32>(2147483647i, arg_2.d.x, -44542i, arg_2.b.c.x), select(vec4<i32>(-10430i, arg_2.d.x, -5618i, arg_2.d.x), select(vec4<i32>(1i, arg_2.d.x, -33980i, arg_2.d.x), vec4<i32>(arg_2.b.e, arg_2.b.c.x, -10958i, -1189i), vec4<bool>(arg_2.a.x, false, true, arg_1)), false))), vec4<i32>(_wgslsmith_mult_i32(arg_2.d.x, _wgslsmith_clamp_i32(-11480i >> (1u % 32u), -1i, arg_2.d.x)), arg_2.b.d.x, arg_2.b.d.x, func_1()));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1074f) * _wgslsmith_f_op_f32(sign(-838f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(141f * 447f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1393f * 1177f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-856f, -847f) * _wgslsmith_f_op_f32(-702f - 764f)))));
    return func_2(u_input.a.x <= ~arg_2.b.a, var_1, abs(arg_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(reverseBits(vec3<u32>(~(u_input.a.x >> (9564u % 32u)), _wgslsmith_add_u32(30881u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 0u)), true, Struct_2(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), Struct_1(~u_input.a.x, vec3<u32>(reverseBits(u_input.a.x), ~u_input.a.x, 0u), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -58271i), vec2<i32>(2147483647i, -1i)), ~22367i), -firstTrailingBit(3222i)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec3<i32>(max(select(-3195i, 7738i, true), i32(-1i) * -11654i), 95531i, -11854i)), any(vec3<bool>(true, true, all(vec3<bool>(true, false, true)))) || (-(~0i) <= _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, 2147483647i), func_1())));
    var var_1 = _wgslsmith_f_op_f32(-1113f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(842f, -1140f) * 208f)) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(298f)))));
    var_0 = func_5(~vec3<u32>(_wgslsmith_clamp_u32(44793u, func_5(vec3<u32>(u_input.a.x, 60888u, var_0.b.x), false, Struct_2(vec2<bool>(true, false), Struct_1(4294967295u, var_0.b, var_0.c, var_0.c, var_0.d.x), vec2<bool>(false, false), var_0.c), true).b.x, _wgslsmith_mod_u32(1u, u_input.a.x)), reverseBits(~var_0.a), max(~0u, _wgslsmith_add_u32(5956u, 0u))), true, Struct_2(vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), Struct_1(1u, firstTrailingBit(u_input.a.zwx), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d.x, 58213i, 1i), var_0.c)), max(var_0.d, func_5(u_input.a.wwz, false, Struct_2(vec2<bool>(true, true), Struct_1(0u, u_input.a.xyw, var_0.c, vec3<i32>(var_0.c.x, var_0.e, var_0.c.x), var_0.e), vec2<bool>(false, true), vec3<i32>(var_0.e, var_0.c.x, -2147483647i)), false).c), ~func_5(u_input.a.yyz, true, Struct_2(vec2<bool>(false, true), Struct_1(var_0.b.x, u_input.a.yyy, vec3<i32>(2147483647i, var_0.c.x, 33597i), var_0.c, -2147483647i), vec2<bool>(false, true), var_0.d), true).e), vec2<bool>(true, true), var_0.c), any(vec4<bool>(true, true, true, !(3181i >= var_0.d.x))));
    var var_2 = var_0.d.x;
    var_0 = Struct_1(u_input.a.x, _wgslsmith_div_vec3_u32(u_input.a.zxz, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) & _wgslsmith_add_vec3_u32(var_0.b, vec3<u32>(var_0.a, 4294967295u, u_input.a.x))), ~min(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.d.x, -13768i, -19683i), vec3<i32>(var_0.c.x, 5727i, var_0.d.x)), var_0.d), firstLeadingBit(var_0.c) & -var_0.c, 1i ^ var_0.c.x);
    var var_3 = var_0.b.x;
    var var_4 = firstTrailingBit(vec4<i32>(max(var_0.c.x, abs(1i)), var_0.e, -65922i, min(var_0.c.x, func_2(true, false, vec3<i32>(var_0.c.x, -1580i, -12472i)).d.x)) >> (~(abs(u_input.a) ^ vec4<u32>(var_0.a, 78129u, 11949u, 55818u)) % vec4<u32>(32u)));
    var var_5 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)));
    let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(546f, -607f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(239f, 246f), vec2<f32>(-478f, 401f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(215f, 125f) - vec2<f32>(-1434f, 891f)))) * vec2<f32>(_wgslsmith_f_op_f32(floor(1024f)), 2191f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -169f), -2499f), vec2<f32>(-589f, _wgslsmith_f_op_f32(trunc(-1119f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) * _wgslsmith_f_op_f32(f32(-1f) * -982f)), var_6.x), ~(i32(-1i) * -(var_0.e ^ 2147483647i)), 0i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(-var_6.x)), _wgslsmith_f_op_f32(-var_6.x), false)), _wgslsmith_f_op_f32(1977f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -526f)))))), u_input.a.yxy);
}

