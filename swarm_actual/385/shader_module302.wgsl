struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 60398u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(-(arg_0.yy & ~arg_0.zy), vec3<u32>(0u, ~8443u, arg_2) | _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, global0.x, 4294967295u), ~vec3<u32>(arg_2, 0u, 4294967295u)), vec3<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.x, u_input.a), vec3<i32>(-19758i, -16280i, -2147483647i)), -1i), ~_wgslsmith_div_i32(-7836i, 8581i), min(u_input.a, 9800i ^ u_input.a)), arg_1.x), vec2<u32>(~(~44987u) << ((~global0.x | countOneBits(arg_3)) % 32u), 0u), arg_1.x, all(select(arg_1.yw, vec2<bool>(false, true), true)), ~(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, arg_0.x, 0i), vec4<i32>(1i, -2147483647i, u_input.a, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.x), vec2<i32>(0i, -14925i))) | 16454i));
    var var_1 = 1i;
    var_1 = 0i;
    var_1 = -2147483647i;
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, global0.x), ~vec2<u32>(49113u, firstTrailingBit(_wgslsmith_mult_u32(0u, 1u))));
    return min(~select(var_0.a.b.xz, vec2<u32>(1u << (0u % 32u), ~1u), false), var_0.b);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<bool>) -> Struct_3 {
    global0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 41015u, 1u), vec4<u32>(arg_1.b.x, arg_0, 1u, 4294967295u)) >> ((arg_1.b.x | arg_1.b.x) % 32u)), vec2<u32>(0u, max(4294967295u, 4294967295u)) ^ vec2<u32>(max(arg_0, arg_0), arg_1.b.x << (1u % 32u)));
    global0 = func_3(vec3<i32>(65422i, i32(-1i) * -2147483647i, -(~arg_2.x) << (~(1u << (arg_0 % 32u)) % 32u)), vec4<bool>(false, arg_1.d, false, !arg_3.x || (false || all(vec2<bool>(arg_1.d, true)))), ~global0.x, arg_1.b.x);
    global0 = arg_1.b.zx;
    var var_0 = vec2<u32>(_wgslsmith_add_u32(global0.x, 49988u), ~(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(3016u, arg_0)), vec2<u32>(4294967295u, 1u)) | 1u));
    var var_1 = Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.a, _wgslsmith_div_i32(1i, arg_1.a.x)), ~vec3<u32>(2023u, global0.x, global0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -6374i, 49392i), arg_2.zyz, ~vec3<i32>(arg_2.x, u_input.a, -3242i)), arg_3.x), arg_1.b.yz, false, any(arg_3.zy), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-11730i, -1i, 9020i), -arg_1.c)), arg_1.b.yz);
    return Struct_3(Struct_2(arg_1, _wgslsmith_mod_vec2_u32(~vec2<u32>(28154u, arg_1.b.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.a.b.x, 43410u), vec2<u32>(var_1.a.b.x, arg_0)), ~var_1.a.a.b.xx, ~var_1.b)), true, all(!(!vec4<bool>(true, arg_3.x, var_1.a.c, true))), 2147483647i), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_1.b.x | var_0.x), ~(~arg_1.b.yy), _wgslsmith_clamp_vec2_u32(~arg_1.b.xz, ~arg_1.b.yy, select(vec2<u32>(arg_1.b.x, 1u), vec2<u32>(global0.x, 4294967295u), arg_3.yy))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = func_2(18581u, Struct_1(arg_0.a.a.a, _wgslsmith_mult_vec3_u32(func_2(global0.x, Struct_1(arg_0.a.a.c.zy, arg_0.a.a.b, vec3<i32>(7291i, arg_2.a.e, -33038i), arg_2.a.a.d), vec4<i32>(arg_0.a.a.a.x, u_input.a, u_input.a, arg_0.a.a.c.x), select(arg_3.xwy, arg_3.wwz, arg_3.xzx)).a.a.b, ~arg_0.a.a.b & arg_2.a.a.b), countOneBits(arg_0.a.a.c), false), _wgslsmith_mult_vec4_i32(~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.a.e, -7838i, -1i, arg_2.a.a.a.x)), -vec4<i32>(arg_2.a.a.a.x, u_input.a, arg_2.a.e, arg_2.a.a.a.x)), ~(~(vec4<i32>(u_input.a, -30384i, arg_0.a.a.c.x, arg_0.a.e) & vec4<i32>(u_input.a, -25801i, -2147483647i, u_input.a)))), arg_3.xwx).a;
    let var_1 = ~(~0u);
    let var_2 = func_2(_wgslsmith_dot_vec2_u32(~(~(vec2<u32>(arg_2.a.b.x, var_0.b.x) | arg_0.a.a.b.xy)), var_0.a.b.zz), arg_0.a.a, _wgslsmith_add_vec4_i32(abs(vec4<i32>(_wgslsmith_add_i32(0i, arg_2.a.e), _wgslsmith_mult_i32(27139i, arg_0.a.e), firstTrailingBit(-3696i), 1i)), -firstLeadingBit(vec4<i32>(arg_2.a.a.c.x, arg_0.a.e, -1i, arg_0.a.a.a.x) >> (vec4<u32>(14316u, var_1, global0.x, 45390u) % vec4<u32>(32u)))), !arg_3.ywy);
    global0 = abs(~(~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1, arg_0.a.a.b.x), vec2<u32>(arg_2.b.x, 1u)), countOneBits(vec2<u32>(98958u, var_0.b.x)))));
    let var_3 = 38838u;
    return func_2(~_wgslsmith_add_u32(abs(~1u), func_2(~0u, Struct_1(vec2<i32>(-2147483647i, 1i), vec3<u32>(25054u, 1u, var_0.a.b.x), vec3<i32>(1446i, var_2.a.e, var_2.a.e), arg_0.a.a.d), vec4<i32>(arg_2.a.e, var_0.e, var_0.e, 1i) >> (vec4<u32>(4294967295u, 0u, 0u, 4294967295u) % vec4<u32>(32u)), vec3<bool>(false, true, arg_2.a.a.d)).a.b.x), var_2.a.a, _wgslsmith_mult_vec4_i32(-vec4<i32>(~4299i, reverseBits(arg_0.a.e), -2147483647i, -4765i), -_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.a.c.x, -2147483647i, -28603i, -2147483647i), vec4<i32>(51991i, 29181i, 0i, 29445i)), firstLeadingBit(vec4<i32>(-34054i, 40136i, arg_2.a.e, -14235i)))), arg_3.wyz).a;
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = ~_wgslsmith_mult_u32(arg_0.a.b.x << (20175u % 32u), global0.x) ^ 16460u;
    let var_1 = vec2<bool>(false, arg_0.a.d);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1955f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1690f))));
    let var_3 = Struct_3(arg_0, reverseBits(vec2<u32>(~(global0.x >> (global0.x % 32u)), 49984u)));
    var var_4 = func_2(1u, func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(3076i, 49035i), arg_0.a.b, arg_0.a.c, true), func_4(var_3, var_2, var_3, vec4<bool>(var_1.x, var_1.x, false, false)).a.b.xz, true, any(vec3<bool>(false, false, var_1.x)), firstTrailingBit(-1i)), ~max(vec2<u32>(var_3.a.a.b.x, 10122u), vec2<u32>(1u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-312f * var_2))), var_3, select(select(vec4<bool>(true, arg_0.d, var_1.x, var_3.a.c), select(vec4<bool>(arg_0.a.d, var_3.a.c, var_1.x, var_3.a.c), vec4<bool>(false, false, false, true), false), vec4<bool>(var_3.a.a.d, var_1.x, var_3.a.c, var_1.x)), select(select(vec4<bool>(arg_0.c, var_3.a.c, var_3.a.c, true), vec4<bool>(var_1.x, var_1.x, var_3.a.c, var_1.x), vec4<bool>(false, var_3.a.d, var_3.a.d, var_3.a.a.d)), select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, var_3.a.a.d, true, var_1.x), false), vec4<bool>(true, true, true, true)), arg_0.a.d)).a, vec4<i32>(-33868i, arg_0.a.a.x << (_wgslsmith_div_u32(firstLeadingBit(var_3.b.x), max(10034u, 1u)) % 32u), u_input.a, 2147483647i), !select(select(!vec3<bool>(true, var_1.x, false), vec3<bool>(arg_0.a.d, false, var_1.x), vec3<bool>(var_1.x, true, var_3.a.d)), vec3<bool>(var_3.a.a.b.x >= var_3.b.x, !arg_0.d, true), vec3<bool>(var_3.a.e > var_3.a.a.c.x, true, var_1.x))).a.a;
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~var_4.b.x), arg_0.b.x, global0.x, 31317u), max(vec4<u32>(var_3.a.a.b.x, countOneBits(4294967295u), countOneBits(11233u), _wgslsmith_sub_u32(4294967295u, 8470u)), ~vec4<u32>(41517u, 4294967295u, var_3.b.x, 4294967295u))), _wgslsmith_mult_u32(~func_4(func_2(var_4.b.x, arg_0.a, vec4<i32>(24460i, -2147483647i, 16347i, var_3.a.a.c.x), vec3<bool>(false, var_4.d, true)), _wgslsmith_f_op_f32(858f * var_2), func_2(global0.x, Struct_1(var_4.c.xz, var_3.a.a.b, vec3<i32>(u_input.a, 0i, var_4.a.x), arg_0.c), vec4<i32>(-23832i, var_3.a.a.a.x, 13692i, -14096i), vec3<bool>(var_3.a.a.d, var_1.x, var_1.x)), select(vec4<bool>(var_4.d, true, false, false), vec4<bool>(var_4.d, var_4.d, true, true), var_3.a.d)).b.x, reverseBits(~var_3.a.b.x)));
}

fn func_6(arg_0: u32) -> Struct_1 {
    let var_0 = func_2(countOneBits(min(4294967295u | _wgslsmith_mult_u32(global0.x, global0.x), global0.x)), Struct_1(abs(select(func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec3<u32>(global0.x, 64006u, arg_0), vec3<i32>(2147483647i, u_input.a, u_input.a), true), vec2<u32>(arg_0, 1u), true, false, u_input.a), vec2<u32>(0u, 43327u)), 1017f, Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.a, 2147483647i), vec3<u32>(global0.x, 40108u, global0.x), vec3<i32>(-10254i, -16221i, -1i), true), vec2<u32>(1u, arg_0), false, false, u_input.a), vec2<u32>(4294967295u, arg_0)), vec4<bool>(false, false, true, true)).a.c.yy, countOneBits(vec2<i32>(u_input.a, u_input.a)), vec2<bool>(true, true))), vec3<u32>(_wgslsmith_div_u32(~global0.x, global0.x << (39028u % 32u)), _wgslsmith_sub_u32(global0.x, func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(-46138i, u_input.a), vec3<u32>(50301u, arg_0, 0u), vec3<i32>(-4534i, u_input.a, u_input.a), false), vec2<u32>(27023u, arg_0), false, true, 7572i), vec2<u32>(arg_0, 4294967295u)), -1000f, Struct_3(Struct_2(Struct_1(vec2<i32>(9310i, 1i), vec3<u32>(51928u, global0.x, global0.x), vec3<i32>(u_input.a, 2147483647i, u_input.a), false), vec2<u32>(global0.x, global0.x), true, true, u_input.a), vec2<u32>(global0.x, global0.x)), vec4<bool>(false, true, false, true)).b.x), global0.x), select(_wgslsmith_add_vec3_i32(min(vec3<i32>(1i, 46751i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(u_input.a, 0i, u_input.a)), vec3<i32>(u_input.a, -u_input.a, 0i), false), true || func_4(func_2(global0.x, Struct_1(vec2<i32>(-2147483647i, -2147483647i), vec3<u32>(0u, global0.x, arg_0), vec3<i32>(u_input.a, -1i, -1i), false), vec4<i32>(u_input.a, u_input.a, -2147483647i, -1i), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(574f * -901f), func_2(59138u, Struct_1(vec2<i32>(u_input.a, u_input.a), vec3<u32>(4294967295u, global0.x, global0.x), vec3<i32>(u_input.a, u_input.a, -5053i), true), vec4<i32>(u_input.a, -15696i, u_input.a, u_input.a), vec3<bool>(false, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))).d), countOneBits(-vec4<i32>(0i, ~u_input.a, -783i, -1i)), vec3<bool>(false, true, any(vec3<bool>(true, true, true)))).a;
    let var_1 = 1476f;
    var var_2 = _wgslsmith_f_op_f32(-var_1);
    var var_3 = -(~var_0.a.c.xy);
    let var_4 = func_2(~global0.x, func_2(countOneBits(global0.x), Struct_1(var_0.a.c.xy, var_0.a.b, ~(~vec3<i32>(-1i, u_input.a, 2147483647i)), select(true, true, true) != (var_0.a.b.x < arg_0)), select(-vec4<i32>(-1i, -2147483647i, var_3.x, var_0.a.a.x), ~firstTrailingBit(vec4<i32>(var_0.a.c.x, var_0.a.a.x, var_3.x, var_0.e)), vec4<bool>(var_0.c, false, true, !var_0.d)), !(!vec3<bool>(var_0.c, var_0.c, var_0.a.d))).a.a, select(min(select(vec4<i32>(29854i, var_3.x, 1i, -21659i) << (vec4<u32>(arg_0, arg_0, 50398u, var_0.b.x) % vec4<u32>(32u)), vec4<i32>(var_0.a.c.x, 33336i, var_3.x, -16540i), !vec4<bool>(true, var_0.d, var_0.c, var_0.c)), -vec4<i32>(0i, 10697i, var_0.a.c.x, 3238i)), vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -50667i, var_3.x, _wgslsmith_sub_i32(var_0.a.c.x, 25533i)), min(u_input.a, ~var_0.e), u_input.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, 0i), var_0.e)), var_0.a.d), !(!(!select(vec3<bool>(var_0.c, true, var_0.d), vec3<bool>(true, false, true), vec3<bool>(false, var_0.a.d, var_0.d)))));
    return func_2(global0.x, var_0.a, -_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_4.a.e, -1i, 71963i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 32548i, var_4.a.e), vec4<i32>(2147483647i, var_4.a.a.a.x, u_input.a, -110469i)) << ((vec4<u32>(var_4.b.x, 22434u, global0.x, arg_0) >> (vec4<u32>(var_0.b.x, 1u, var_4.b.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 27624i, -1i, var_4.a.e), vec4<i32>(var_4.a.a.a.x, 1i, 21591i, 0i)), -2147483647i, select(var_3.x, 17326i, var_4.a.a.d), max(var_0.a.a.x, var_3.x))), vec3<bool>(!(func_2(39800u, Struct_1(vec2<i32>(var_3.x, u_input.a), vec3<u32>(var_4.b.x, var_4.b.x, 4294967295u), vec3<i32>(var_4.a.a.a.x, var_3.x, 1i), false), vec4<i32>(-2147483647i, 2318i, 2147483647i, 9496i), vec3<bool>(true, var_4.a.d, true)).b.x >= var_0.b.x), false, 1u < global0.x)).a.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: i32) -> vec2<f32> {
    global0 = abs(vec2<u32>(global0.x, 69914u));
    var var_0 = reverseBits(~countOneBits(firstTrailingBit(min(vec3<u32>(global0.x, 26722u, global0.x), vec3<u32>(global0.x, 4294967295u, 0u)))));
    var var_1 = func_6(_wgslsmith_add_u32(var_0.x, func_5(func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(arg_0.x, 1i), vec3<u32>(41538u, 1u, var_0.x), arg_0.xwx, true), var_0.zy, arg_1.x, true, 16068i), var_0.zz), _wgslsmith_f_op_f32(step(1000f, 535f)), func_2(40003u, Struct_1(vec2<i32>(2147483647i, 28096i), vec3<u32>(0u, 41010u, var_0.x), vec3<i32>(u_input.a, -25828i, -49431i), arg_1.x), arg_0, arg_1), !vec4<bool>(true, arg_1.x, true, false)))));
    let var_2 = vec2<bool>(!(!arg_1.x), func_4(Struct_3(Struct_2(Struct_1(arg_0.zx, var_1.b, arg_0.xyy, var_1.d), vec2<u32>(var_1.b.x, 19967u) ^ vec2<u32>(24383u, var_1.b.x), !var_1.d, true, var_1.c.x), firstTrailingBit(vec2<u32>(0u, 0u))), 154f, Struct_3(func_4(Struct_3(Struct_2(Struct_1(arg_0.wz, vec3<u32>(global0.x, var_1.b.x, var_1.b.x), var_1.c, true), var_1.b.zz, arg_1.x, arg_1.x, -27843i), var_1.b.xy), -1228f, Struct_3(Struct_2(Struct_1(arg_0.zx, var_1.b, arg_0.ywx, false), vec2<u32>(var_1.b.x, var_1.b.x), false, false, var_1.a.x), var_0.yz), !vec4<bool>(true, false, true, arg_1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 42769u), min(vec2<u32>(16000u, 4294967295u), var_0.xy))), vec4<bool>(true, ~global0.x != 1u, arg_1.x, var_1.d)).c);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-371f, 1848f) - _wgslsmith_f_op_f32(trunc(956f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(max(1165f, var_3))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_3, 296f), vec2<f32>(749f, var_3)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3, var_3))), 0u >= var_0.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3, var_3), vec2<f32>(var_3, var_3)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_3)), _wgslsmith_f_op_f32(-var_3)), select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, arg_1.x), select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, arg_1.x), var_2.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-176f, -996f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3, -916f)))))), any(vec4<bool>(all(vec2<bool>(true, false)), func_4(func_2(4496u, Struct_1(vec2<i32>(var_1.a.x, var_1.a.x), vec3<u32>(1u, 29917u, 113636u), vec3<i32>(0i, 2147483647i, 2147483647i), var_1.d), vec4<i32>(0i, arg_0.x, 0i, -1i), vec3<bool>(var_2.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(-186f - -1000f), Struct_3(Struct_2(Struct_1(vec2<i32>(397i, 2147483647i), var_1.b, vec3<i32>(u_input.a, var_1.c.x, -19014i), false), var_1.b.zy, arg_1.x, false, 2147483647i), var_0.xx), !vec4<bool>(true, arg_1.x, arg_1.x, false)).a.d, !var_2.x, var_1.d | true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(max(vec4<i32>(u_input.a, 75640i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, 6268i)), vec3<bool>(false, false, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(20557i, -1i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(593f, -544f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, 1000f) * vec2<f32>(-971f, -358f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(282f)), 1f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -521f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-953f, 1378f) * vec2<f32>(249f, 618f))))));
    global0 = ~(~min(func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(1i, u_input.a), vec3<u32>(47881u, global0.x, 43066u), vec3<i32>(9796i, u_input.a, u_input.a), true), vec2<u32>(1u, 124343u), true, false, u_input.a), vec2<u32>(global0.x, 1u)), var_0.x, func_2(19349u, Struct_1(vec2<i32>(u_input.a, u_input.a), vec3<u32>(109012u, global0.x, 1u), vec3<i32>(-2147483647i, u_input.a, 2147483647i), true), vec4<i32>(15297i, 17549i, 2147483647i, u_input.a), vec3<bool>(true, false, false)), vec4<bool>(true, true, true, true)).b, vec2<u32>(select(global0.x, global0.x, false), 1u)));
    var var_1 = ~(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(2463u, global0.x, global0.x, 1u) << (vec4<u32>(global0.x, global0.x, global0.x, 76790u) % vec4<u32>(32u))), ~vec4<u32>(45549u, global0.x, global0.x, 12119u)));
    let var_2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-21619i, u_input.a, -1i, 53219i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(2225i, u_input.a, u_input.a, 20076i)), vec4<i32>(2147483647i, -2147483647i, u_input.a, u_input.a))), vec4<i32>(22389i, 8297i, _wgslsmith_add_i32(-_wgslsmith_add_i32(1i, -1i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, -34942i), u_input.a)), -max(1i, ~(-8574i))));
    global0 = vec2<u32>(max(~(func_6(var_1.x).b.x ^ (global0.x >> (0u % 32u))), global0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 14689u, 0u), ~(var_1.xww ^ vec3<u32>(77806u, 101574u, 0u))), (~var_1.xzw ^ vec3<u32>(var_1.x, var_1.x, var_1.x)) & var_1.zyy));
    var_1 = vec4<u32>(global0.x, 89023u, ~var_1.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(global0.x, ~(_wgslsmith_mult_u32(global0.x, 131201u) >> (_wgslsmith_add_u32(0u, 1u) % 32u))), abs(func_6(~_wgslsmith_mod_u32(var_1.x, 1u)).c.x), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(307f * var_0.x), var_0.x, func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.a, var_2), var_1.ywx, vec3<i32>(2147483647i, 17423i, var_2), false), var_1.yz, false, false, 1i), var_1.xx), -1042f, Struct_3(Struct_2(Struct_1(vec2<i32>(2142i, u_input.a), var_1.zxw, vec3<i32>(var_2, -29550i, -1i), true), var_1.yw, false, false, -24912i), vec2<u32>(0u, var_1.x)), vec4<bool>(false, false, true, true)).a.d)) - -267f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2299f)))));
}

