struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = true;
    var var_1 = Struct_4(~vec4<i32>(14626i, u_input.b.x << (1u % 32u), -1i, _wgslsmith_add_i32(~72476i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 51408i, 0i, 50864i), vec4<i32>(2147483647i, u_input.a, -24457i, u_input.b.x)))));
    var_1 = Struct_4(vec4<i32>(firstLeadingBit(u_input.a), u_input.b.x ^ _wgslsmith_mod_i32(0i, ~var_1.a.x), 54944i, var_1.a.x));
    let var_2 = Struct_4(vec4<i32>(290i, -(~var_1.a.x), reverseBits(~max(3895i, -1i)), u_input.a));
    var var_3 = vec3<bool>(var_0, var_0, false);
    return !select(false, (1i <= reverseBits(var_1.a.x)) == (var_0 & false), !all(!var_3.zx));
}

fn func_2() -> Struct_4 {
    var var_0 = select(false, true, false);
    var_0 = func_3();
    var_0 = !all(vec4<bool>(_wgslsmith_f_op_f32(ceil(2264f)) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, func_3(), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true))));
    let var_1 = true;
    var var_2 = -(firstLeadingBit(-abs(vec4<i32>(u_input.a, u_input.a, u_input.b.x, 0i))) | _wgslsmith_add_vec4_i32(-(~vec4<i32>(9069i, -2147483647i, 33956i, u_input.b.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, -42477i), -vec4<i32>(-2147483647i, 0i, -21179i, -1i))));
    return Struct_4(firstLeadingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, var_2.x), vec4<i32>(0i, u_input.b.x, var_2.x, 2147483647i))) >> (vec4<u32>(4294967295u, ~(~33599u), ~1u, 1u) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_1(~firstTrailingBit(arg_1.x), vec3<u32>(~arg_1.x, ~(~min(4294967295u, arg_1.x)), arg_1.x), vec2<f32>(1f, -290f), _wgslsmith_clamp_u32(~arg_1.x, ~arg_1.x, arg_1.x), ~42688u);
    let var_1 = Struct_2(var_0);
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-659f, var_2.c.x) - vec2<f32>(var_1.a.c.x, -1962f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.c * vec2<f32>(-2068f, var_0.c.x)) * _wgslsmith_f_op_vec2_f32(-var_0.c)))))));
    var var_4 = !select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), true, true), !(var_2.a == var_0.d)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), any(vec2<bool>(true, false))), vec4<bool>(any(vec3<bool>(true, true, false)), true, false, func_3()), false));
    return Struct_1(max(_wgslsmith_sub_u32(firstLeadingBit(1u), var_0.d), _wgslsmith_dot_vec3_u32(firstTrailingBit(select(var_2.b, vec3<u32>(2408u, var_2.e, 46925u), var_4.xyz)), ~vec3<u32>(4294967295u, arg_1.x, arg_1.x))), select(vec3<u32>(0u, 28899u, min(0u, var_1.a.b.x)), _wgslsmith_clamp_vec3_u32(~var_0.b, ~var_1.a.b, var_1.a.b), all(vec3<bool>(var_4.x, true, false))) << (arg_1 % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_1.a.c), arg_1.x, ~(~(~abs(0u))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_i32(-(u_input.a << ((15117u >> (func_4(Struct_4(vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.a)), vec3<u32>(arg_2.x, arg_0.a, arg_2.x), Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, 1i))).e % 32u)) % 32u)), _wgslsmith_div_i32(~(-5985i), -(u_input.a ^ 1i)) >> (36749u % 32u));
    let var_1 = arg_0;
    var var_2 = ~_wgslsmith_mult_vec3_i32(abs(~vec3<i32>(var_0, var_0, 13936i) >> (vec3<u32>(var_1.d, 26921u, 16438u) % vec3<u32>(32u))), vec3<i32>(-(7557i & var_0), (i32(-1i) * -2147483647i) & ~u_input.a, -18478i));
    var_2 = vec3<i32>(_wgslsmith_mod_i32(var_0 & _wgslsmith_mult_i32(var_2.x, ~7672i), firstTrailingBit(var_2.x)), 0i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0, i32(-1i) * -2147483647i, 2147483647i & var_0, abs(var_2.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-9895i, var_0, var_2.x, 2147483647i), max(vec4<i32>(u_input.a, -1i, var_2.x, var_0), vec4<i32>(u_input.b.x, var_2.x, -55565i, 19537i)))), -select(~vec4<i32>(var_0, var_0, u_input.a, var_2.x), vec4<i32>(var_0, 27867i, u_input.a, 0i), vec4<bool>(true, false, false, true))));
    var_2 = ~_wgslsmith_div_vec3_i32(-reverseBits(~vec3<i32>(32336i, var_0, -2147483647i)), vec3<i32>(min(32183i, _wgslsmith_mult_i32(-65432i, var_0)), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -23261i, 2147483647i), vec3<i32>(var_2.x, u_input.a, -14547i))));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(0u, 37588u, 4294967295u, 0u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, arg_1, 1u, arg_0.d), vec4<u32>(arg_0.b.x, 93338u, 65342u, arg_2.x)) >> (select(_wgslsmith_sub_vec4_u32(vec4<u32>(26500u, 1u, 4294967295u, arg_0.d), vec4<u32>(4294967295u, arg_2.x, 4294967295u, 42734u)), ~vec4<u32>(var_1.b.x, arg_0.b.x, 36944u, arg_1), true) % vec4<u32>(32u))), firstLeadingBit(~(~vec4<u32>(arg_0.a, 8567u, 66282u, arg_1))));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(~arg_2.a.b.x, ~_wgslsmith_mod_vec3_u32(func_5(Struct_1(arg_0.x, vec3<u32>(arg_2.a.b.x, 13933u, arg_0.x), arg_1.zx, arg_0.x, 62856u), arg_0.x, vec3<u32>(arg_2.a.d, arg_0.x, arg_0.x)).xwx, func_5(Struct_1(arg_2.a.d, arg_0.wzy, vec2<f32>(444f, arg_1.x), arg_0.x, arg_0.x), arg_0.x, vec3<u32>(arg_0.x, arg_2.a.e, arg_2.a.b.x)).yww), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c.x, 248f)))), arg_1.zz), ~(~20970u), ~arg_2.a.d));
    var var_1 = _wgslsmith_clamp_vec4_u32(arg_0, _wgslsmith_div_vec4_u32(~func_5(Struct_1(var_0.a.d, vec3<u32>(1u, 4294967295u, 4294967295u), arg_2.a.c, 1u, 1u), 29270u, var_0.a.b) >> (vec4<u32>(select(arg_2.a.e, arg_2.a.a, true), 117507u, 7592u, ~arg_0.x) % vec4<u32>(32u)), ~arg_0), firstLeadingBit(arg_0));
    var_0 = Struct_2(Struct_1(~_wgslsmith_add_u32(arg_0.x, countOneBits(1u)), max(~(~var_1.ywx), ~var_1.xzz ^ var_1.wyz), arg_1.zz, arg_0.x, func_5(arg_2.a, var_1.x, _wgslsmith_mult_vec3_u32(max(arg_0.xyy, vec3<u32>(726u, arg_2.a.d, var_0.a.e)), var_0.a.b)).x));
    let var_2 = ~u_input.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_2.a.c.x), _wgslsmith_div_f32(-472f, arg_1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1536f, -950f) - arg_1)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1023f, 1000f, 633f)))), select(select(vec3<bool>(true, true, true), vec3<bool>(arg_2.a.c.x < -1665f, any(vec4<bool>(false, false, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), vec3<bool>(func_3() | true, false, true))));
    return Struct_3(func_4(func_2(), ~(~(~vec3<u32>(var_0.a.e, 0u, arg_2.a.b.x))), func_2()));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> i32 {
    let var_0 = func_6(_wgslsmith_clamp_vec4_u32(~reverseBits(min(vec4<u32>(20764u, arg_0, 0u, arg_0), vec4<u32>(0u, 14355u, arg_0, 6462u))), _wgslsmith_div_vec4_u32(select(vec4<u32>(arg_0, 11270u, arg_0, arg_0) ^ vec4<u32>(arg_0, 59325u, arg_0, 5572u), ~vec4<u32>(11019u, arg_0, arg_0, 4294967295u), true), firstTrailingBit(vec4<u32>(arg_0, arg_0, 1u, 56153u))), func_5(func_4(Struct_4(vec4<i32>(u_input.b.x, u_input.a, 0i, u_input.a)), firstLeadingBit(vec3<u32>(1u, 0u, arg_0)), func_2()), select(22716u, ~16167u, !arg_1.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0, 1u), vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, 0u, 95455u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 21618u, arg_0), vec3<u32>(8851u, arg_0, arg_0)), ~vec3<u32>(arg_0, arg_0, 53436u)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1058f, 673f, arg_1.x))), -862f, 678f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -205f, 943f)))))))), Struct_3(func_4(Struct_4(firstLeadingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, 51841i))), firstTrailingBit(vec3<u32>(arg_0, 8866u, arg_0)), func_2())));
    let var_1 = select(!arg_1, vec2<bool>(true, arg_1.x), true);
    var var_2 = var_0.a.c.x;
    var var_3 = Struct_2(func_4(func_2(), func_5(Struct_1(~var_0.a.a, var_0.a.b, _wgslsmith_f_op_vec2_f32(-var_0.a.c), var_0.a.d >> (0u % 32u), ~arg_0), ~_wgslsmith_mod_u32(arg_0, 1u), ~var_0.a.b).xwx, func_2()));
    var var_4 = -_wgslsmith_div_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.b, u_input.b), _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 0i))) | u_input.b;
    return 35929i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(min(~_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_sub_i32(0i, -37523i), 1i), u_input.b.x), _wgslsmith_div_i32(u_input.a, ~(-firstTrailingBit(u_input.a))));
    var_0 = _wgslsmith_mod_i32(u_input.b.x, 2147483647i) << (max(0u << (1u % 32u), _wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 25544u), vec2<u32>(11602u, 0u))), _wgslsmith_mod_u32(min(4294967295u, 4294967295u), 1u))) % 32u);
    var_0 = u_input.a;
    let var_1 = u_input.b.x;
    var_0 = -49702i & (-var_1 & ~(-1i));
    var_0 = _wgslsmith_div_i32(0i, func_1(~26227u, select(vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), false)));
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(vec4<u32>(min(var_2, var_2), var_2, ~33476u, 0u) & vec4<u32>(4103u, var_2, var_2, _wgslsmith_mult_u32(var_2, var_2)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-728f, 168f, -1814f))))), func_6(~vec4<u32>(4294967295u, 0u, 2232u, 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(132f, -1638f, -861f))), Struct_3(Struct_1(var_2, vec3<u32>(var_2, var_2, 4294967295u), vec2<f32>(-1000f, -156f), var_2, 4294967295u)))).a.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-453f, -3445f))))))), (var_1 << ((var_2 >> (min(var_2, var_2) % 32u)) % 32u)) & 36839i, vec4<i32>(_wgslsmith_div_i32(-5443i >> (~var_2 % 32u), ~0i), _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.b.x), vec2<i32>(u_input.b.x, 1i)), var_1), 1i, 0i), -1000f);
}

