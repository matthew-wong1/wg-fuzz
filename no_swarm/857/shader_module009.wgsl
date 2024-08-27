struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(76530i, countOneBits(max(-12744i, -2147483647i)), 29852i), vec3<i32>(1i, 1i, 1i)), abs(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-41556i, 21346i), vec2<i32>(1i, -1i))) & vec2<i32>(-1i, select(-20886i, -1i, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f * -283f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(811f, -511f, true)))) * _wgslsmith_f_op_f32(select(1316f, 1f, false))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), true), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 508f, -657f)))))));
    var_0 = Struct_1(var_0.a, -vec2<i32>(_wgslsmith_add_i32(~var_0.a, 1i), _wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(var_0.b.x, var_0.a))), var_0.c, !var_0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1676f, var_0.e.x))))));
    var var_1 = vec2<u32>(0u, 89287u);
    let var_2 = ~reverseBits(_wgslsmith_mod_u32(7907u, 1u));
    var_1 = ~(~select(vec2<u32>(u_input.a, 12560u) ^ vec2<u32>(23616u, 4294967295u), firstLeadingBit(u_input.d), vec2<bool>(var_0.d.x, false)) & vec2<u32>(var_1.x, ~(~var_2)));
    return var_0.c;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(2147483647i, abs(-max(17727i, min(-2147483647i, arg_1))), arg_1);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3()), -1183f)), Struct_1(var_0, -max(vec2<i32>(-2147483647i, arg_1), firstLeadingBit(vec2<i32>(0i, var_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(196f * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(884f * 701f) - _wgslsmith_f_op_f32(f32(-1f) * -1104f)), !any(vec3<bool>(false, true, true)))), vec3<bool>(true, false, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -607f, 407f) * vec3<f32>(1472f, -284f, -163f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, -370f, 1649f))))), Struct_1(_wgslsmith_clamp_i32(var_0, _wgslsmith_sub_i32(var_0, ~(-10233i)), _wgslsmith_div_i32(reverseBits(12652i), i32(-1i) * -8709i)), -(vec2<i32>(-1i) * -vec2<i32>(arg_1, var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, -305f)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))), _wgslsmith_div_vec3_f32(vec3<f32>(-170f, _wgslsmith_f_op_f32(f32(-1f) * -563f), -353f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-528f, -776f, 1014f)))))), ~_wgslsmith_sub_vec3_i32(~vec3<i32>(-51913i, var_0, -1i) | abs(vec3<i32>(arg_1, -2147483647i, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(7026i, var_0, 2147483647i), ~vec3<i32>(arg_1, arg_1, arg_1), firstTrailingBit(vec3<i32>(var_0, -23574i, 30487i)))));
    let var_2 = ~(~var_1.b.b);
    var var_3 = 20476u;
    let var_4 = _wgslsmith_mult_vec4_u32(~vec4<u32>(select(countOneBits(arg_0.x), abs(0u), any(vec3<bool>(true, var_1.b.d.x, false))), u_input.a << (u_input.d.x % 32u), arg_0.x, _wgslsmith_clamp_u32(8442u, u_input.b.x, 42811u)), vec4<u32>(1825u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 117536u, 27514u, u_input.b.x), arg_0) | ~u_input.d.x), ~_wgslsmith_dot_vec2_u32(u_input.d, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, arg_0.x), vec2<u32>(arg_0.x, 19991u))), firstTrailingBit(select(u_input.a, ~u_input.b.x, arg_0.x <= 0u))));
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: i32) -> i32 {
    return -22418i;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = ~func_4(func_2(vec4<u32>(4294967295u, u_input.c, _wgslsmith_add_u32(37921u, u_input.d.x), select(69717u, 4294967295u, true)), 1i), !(arg_1 < _wgslsmith_f_op_f32(ceil(arg_0.a.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.b.e, vec3<f32>(arg_1, 1196f, arg_0.b.e.x)), vec3<f32>(arg_0.a.x, arg_0.a.x, 2494f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -119f, arg_0.a.x))))), arg_0.c.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.e.x, _wgslsmith_f_op_f32(382f * _wgslsmith_div_f32(1387f, arg_0.b.c)), 1576f, -570f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, _wgslsmith_div_f32(arg_1, arg_0.b.c), arg_1, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.e.x + 1000f) + _wgslsmith_f_op_f32(-243f * 983f)) < arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, 969f, arg_0.a.x, -283f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_0.a.x, arg_1, arg_1))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0.b.c, 720f, arg_1)) + vec4<f32>(-137f, -682f, arg_0.a.x, arg_0.b.e.x))))));
    var var_2 = arg_0.c;
    var_0 = var_2.a;
    var var_3 = Struct_2(arg_0.c.e.xz, Struct_1(reverseBits(-reverseBits(arg_0.b.b.x)), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.e.x)), arg_0.b.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.x, arg_1, false)) - arg_0.b.e.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(var_1.x, arg_0.c.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.e.x, 947f))))), func_2(firstTrailingBit(~(~vec4<u32>(0u, u_input.c, u_input.d.x, 4294967295u))), 27710i), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(arg_0.d), -arg_0.d), -arg_0.d) & arg_0.d);
    return func_2(vec4<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c, 4294967295u), ~u_input.a)), u_input.b.x, u_input.a, 8257u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.b.a >> (0u % 32u), ~arg_0.d.x, var_3.b.b.x) << (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.c, 1u, 26204u, 48120u)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 23628u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(arg_0.c.b.x, _wgslsmith_div_i32(0i, 1i)), var_3.d.x, abs(_wgslsmith_mult_i32(39850i, -22325i)), ~0i)));
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = func_2(max(vec4<u32>(min(44761u, 4294967295u), _wgslsmith_mult_u32(1u, u_input.d.x), u_input.c, u_input.a) >> (vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.d.x), _wgslsmith_div_u32(29852u, 1u), countOneBits(83618u), _wgslsmith_div_u32(u_input.c, 1u)) % vec4<u32>(32u)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(u_input.d.x | 0u, u_input.b.x), 21768u, 1u)), -2147483647i);
    let var_1 = arg_0.d.zy;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-754f, -1647f, arg_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-477f, arg_0.c, arg_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.e - vec3<f32>(arg_0.c, arg_0.c, -1101f)))))));
    var var_3 = Struct_1(-1i, ~arg_0.b ^ (var_0.b >> (u_input.d % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(-896f + arg_0.e.x), arg_0.d.x | true))) * arg_0.c), vec3<bool>(false, var_1.x, true), _wgslsmith_f_op_vec3_f32(var_0.e + _wgslsmith_f_op_vec3_f32(-var_2)));
    var_3 = func_2((vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(27276u, u_input.a, u_input.b.x)), abs(u_input.b.x), _wgslsmith_mod_u32(u_input.c, u_input.b.x), u_input.d.x) | select(_wgslsmith_clamp_vec4_u32(vec4<u32>(41443u, 48758u, u_input.a, u_input.c), vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, 4294967295u)), select(vec4<u32>(1u, u_input.d.x, 0u, u_input.a), vec4<u32>(50131u, u_input.a, u_input.d.x, u_input.b.x), vec4<bool>(var_3.d.x, true, var_0.d.x, arg_0.d.x)), !vec4<bool>(false, true, var_1.x, var_0.d.x))) << (vec4<u32>(min(~u_input.d.x, 4294967295u), u_input.d.x, u_input.c, 1u) % vec4<u32>(32u)), 2147483647i);
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-5481i, func_5(func_1(Struct_2(vec2<f32>(838f, -1000f), Struct_1(-1i, vec2<i32>(-75237i, 39216i), 896f, vec3<bool>(true, true, true), vec3<f32>(240f, -218f, -1425f)), Struct_1(-2147483647i, vec2<i32>(1i, -29078i), 1132f, vec3<bool>(true, true, false), vec3<f32>(-385f, -1240f, -1711f)), vec3<i32>(-2147483647i, 67038i, -26571i)), 1570f))), -(~(~0i)), ~func_4(func_1(Struct_2(vec2<f32>(-333f, 1480f), Struct_1(9372i, vec2<i32>(11626i, 0i), -124f, vec3<bool>(false, true, true), vec3<f32>(2007f, -1133f, 254f)), Struct_1(-16156i, vec2<i32>(15301i, -30787i), -534f, vec3<bool>(false, true, false), vec3<f32>(1908f, 700f, 246f)), vec3<i32>(-1i, 47648i, 2310i)), -381f), true, _wgslsmith_div_vec3_f32(vec3<f32>(-1172f, -1922f, 342f), vec3<f32>(-715f, 581f, 1000f)), -2147483647i)), vec2<i32>(31055i, 0i), 414f, vec3<bool>(true, true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(func_1(Struct_2(vec2<f32>(-1000f, -1000f), Struct_1(40895i, vec2<i32>(8872i, -2147483647i), -155f, vec3<bool>(false, true, false), vec3<f32>(871f, -343f, -1159f)), Struct_1(21588i, vec2<i32>(19462i, -2147483647i), 2657f, vec3<bool>(false, true, false), vec3<f32>(250f, 1546f, -435f)), vec3<i32>(0i, -1i, 0i)), 728f).e)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-879f, -547f, 1124f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a), countOneBits(u_input.b.x), _wgslsmith_div_u32(79275u, 1u), 51668u), ~(~vec4<u32>(0u, 14930u, u_input.b.x, u_input.d.x))) & countOneBits(~abs(vec4<u32>(u_input.d.x, 76509u, u_input.b.x, 1u))), var_0.e, 2147483647i, u_input.a, vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, (82391u >> (u_input.a % 32u)) | _wgslsmith_div_u32(26449u, u_input.a)), reverseBits(4294967295u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c, 4294967295u) ^ ~1u, ~(~u_input.a)), _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.d.x, u_input.a), vec4<u32>(82684u, u_input.b.x, 47789u, 5233u))), ~u_input.d.x)));
}

