struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_3(1372f, arg_0, ~vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, u_input.c.x)), ~0u));
    var var_1 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1509f, var_0.a))) < _wgslsmith_f_op_f32(select(var_0.a, 946f, all(vec4<bool>(false, true, false, false)))), 25575u, _wgslsmith_mod_vec2_i32(select(_wgslsmith_add_vec2_i32(arg_0.zz, vec2<i32>(var_0.b.x, 8294i)), var_0.b.zw, vec2<bool>(true, true)), arg_0.wx), !all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 1816f, -508f, -648f))))))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a * -108f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), ~(~(u_input.a.x >> (1u % 32u))), vec2<i32>(_wgslsmith_sub_i32(0i, firstTrailingBit(1i)), reverseBits(0i)), true));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-516f, var_1.a), _wgslsmith_f_op_f32(ceil(1f)))))), var_1.b, _wgslsmith_f_op_vec4_f32(trunc(var_1.c)), Struct_1(true, 98u, var_0.b.xx, ~var_0.b.x < _wgslsmith_sub_i32(-2147483647i, -1i)));
    let var_3 = Struct_1(!(u_input.b.x < var_2.d.c.x), var_2.b.b, ~(vec2<i32>(-2147483647i, 1i) << (~(~vec2<u32>(var_1.d.b, var_0.c.x)) % vec2<u32>(32u))), var_2.b.d);
    let var_4 = Struct_2(_wgslsmith_div_f32(1176f, 2188f), Struct_1(!any(vec2<bool>(true, true)), ~min(_wgslsmith_div_u32(var_3.b, 4294967295u), ~u_input.a.x), reverseBits(var_1.b.c), all(!select(vec3<bool>(false, false, var_3.a), vec3<bool>(var_3.a, var_3.d, var_1.b.a), vec3<bool>(true, true, true)))), var_1.c, var_3);
    return _wgslsmith_f_op_f32(sign(1000f));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.x, -898f)), arg_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(arg_1.b, u_input.d, true)))), arg_1.a, 328f));
    let var_1 = Struct_2(-649f, Struct_1(any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, true), any(vec3<bool>(false, false, true)))), u_input.a.x, _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-37864i, arg_0.x) | vec2<i32>(2147483647i, 1i)), abs(vec2<i32>(arg_1.b.x, arg_1.b.x))), (0u | ~u_input.c.x) >= arg_1.c.x), _wgslsmith_f_op_vec4_f32(abs(var_0)), Struct_1(true, _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.c.x, ~arg_1.c.x, arg_1.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.c.x, 0u, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, 17818u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, 38050u), u_input.a) % vec3<u32>(32u))), ~u_input.b.zw, !(!(4294967295u <= arg_1.c.x))));
    var var_2 = Struct_3(-113f, arg_1.b, abs(_wgslsmith_div_vec2_u32(abs(arg_1.c), abs(u_input.c.yy))) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.c ^ vec2<u32>(0u, 0u), vec2<u32>(4294967295u, u_input.a.x)), min(_wgslsmith_sub_vec2_u32(u_input.a.zz, vec2<u32>(var_1.d.b, 65577u)), _wgslsmith_add_vec2_u32(vec2<u32>(103412u, var_1.b.b), u_input.c.xz)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, arg_1.c.x), abs(vec2<u32>(u_input.c.x, 9157u)))));
    let var_3 = arg_1.a;
    let var_4 = arg_1;
    return _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, arg_3.x), countOneBits(vec3<i32>(u_input.d.x, u_input.d.x, -46609i))) << (~(~63036u) % 32u), 1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_3.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(10207i, -46203i, arg_0.x, var_2.b.x), var_4.b), arg_1.b >> (vec4<u32>(arg_1.c.x, 1u, arg_1.c.x, var_2.c.x) % vec4<u32>(32u)))), min(_wgslsmith_mult_i32(arg_1.b.x, -1i), -var_4.b.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1009f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec4<i32>(u_input.b.x, u_input.b.x, arg_2.x, 1i))))), Struct_1(false & all(select(arg_0.yx, arg_0.zz, arg_3.wz)), countOneBits(~4294967295u), arg_2.xz, all(arg_3.ww)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1344f, 712f, 256f, -654f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-670f, -1000f, -1318f, 558f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(359f, 474f, 1529f, -228f) - vec4<f32>(-2718f, -1152f, -100f, 223f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(352f)) * -982f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(230f - -1809f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1245f, 1000f)), 316f, any(vec4<bool>(false, true, arg_0.x, arg_3.x)))), 1000f)), Struct_1(((arg_3.x || true) & arg_0.x) || !(!arg_3.x), 1u, vec2<i32>(-2147483647i & u_input.d.x, _wgslsmith_div_i32(-6361i, abs(2147483647i))), any(!vec4<bool>(true, true, arg_3.x, false))));
    let var_1 = var_0.c;
    let var_2 = Struct_1(arg_3.x, _wgslsmith_dot_vec2_u32(~(~u_input.c.xw), vec2<u32>(firstLeadingBit(var_0.b.b), _wgslsmith_div_u32(0u, u_input.c.x))) << (var_0.b.b % 32u), select(vec2<i32>(-1i) * -abs(vec2<i32>(var_0.d.c.x, 52962i)), abs(u_input.d.zz), u_input.a.x < 52733u), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(var_1.x, 771f), var_0.d.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 269f) + _wgslsmith_f_op_f32(max(-936f, var_1.x)))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -2221f) - _wgslsmith_f_op_f32(var_0.a + var_0.a))), 623f, true)), Struct_1(!arg_0.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(38230u, 4294967295u, 87240u, var_0.d.b), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(var_2.b, arg_1.x, 39402u, 93546u))), ~u_input.c), firstLeadingBit(select(-vec2<i32>(-1i, var_2.c.x), vec2<i32>(var_0.d.c.x, -1i), select(vec2<bool>(false, arg_3.x), vec2<bool>(var_0.d.a, true), true))), true | (u_input.c.x <= arg_1.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.c + var_0.c)))), _wgslsmith_f_op_vec4_f32(-var_1))), var_2);
    let var_4 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.a, var_1.x)))) - var_1.x), 796f)), _wgslsmith_f_op_f32(func_3(vec4<i32>(arg_2.x | -16660i, var_0.d.c.x, _wgslsmith_clamp_i32(3227i, arg_2.x, 0i), u_input.d.x) << (countOneBits(~u_input.c) % vec4<u32>(32u)))));
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = -505f;
    return arg_0;
}

fn func_1(arg_0: vec3<bool>) -> bool {
    var var_0 = select(arg_0.x, any(vec2<bool>(true, true)), true);
    var var_1 = func_5(func_4(!select(vec3<bool>(false, arg_0.x, true), select(vec3<bool>(true, arg_0.x, true), arg_0, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, false), arg_0, arg_0.x)), ~u_input.c.wx, vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, u_input.d.x)), reverseBits(0i), -func_2(vec3<i32>(u_input.b.x, u_input.d.x, u_input.b.x), Struct_3(1194f, u_input.b, vec2<u32>(u_input.c.x, u_input.c.x)), vec2<f32>(-1824f, -304f), vec2<i32>(0i, 63571i)), -u_input.d.x), vec4<bool>(all(arg_0), select(true, false, true), arg_0.x, false)), u_input.c.x ^ ~u_input.a.x, arg_0.zz, select(select(!(!vec4<bool>(true, true, arg_0.x, false)), select(!vec4<bool>(false, arg_0.x, true, arg_0.x), select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, false, true), vec4<bool>(false, true, arg_0.x, false)), !vec4<bool>(true, true, arg_0.x, true)), !(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))), !vec4<bool>(arg_0.x, true, true, true), select(!vec4<bool>(arg_0.x, false, true, arg_0.x), !select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), arg_0.x), vec4<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), false, -23249i <= u_input.d.x, false && arg_0.x))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, -1996f)) - var_1.a), var_1.c.x)), u_input.d | -(~(u_input.b ^ u_input.d)), ~(~select(_wgslsmith_mod_vec2_u32(u_input.c.zy, u_input.a.zx), max(u_input.a.xx, u_input.a.zy), vec2<bool>(arg_0.x, false))));
    var_0 = true;
    var_2 = Struct_3(778f, -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 1i, _wgslsmith_sub_i32(-1i, var_1.b.c.x), -7293i), firstLeadingBit(var_2.b)), ~var_2.c | _wgslsmith_add_vec2_u32(u_input.c.zx, vec2<u32>(~58793u, var_2.c.x)));
    return select(arg_0.x, false, (select(~4294967295u, var_1.d.b, var_1.d.a) < abs(_wgslsmith_add_u32(var_2.c.x, 70166u))) || !var_1.d.a);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    var var_0 = u_input.d;
    var_0 = vec4<i32>(func_4(vec3<bool>(true, func_1(select(vec3<bool>(false, false, arg_0.d), vec3<bool>(true, arg_0.d, arg_0.d), arg_1.a)), any(!vec4<bool>(false, false, arg_1.a, arg_0.d))), select(~(~vec2<u32>(arg_1.b, arg_1.b)), vec2<u32>(_wgslsmith_add_u32(arg_0.b, u_input.c.x), 32929u >> (arg_0.b % 32u)), vec2<bool>(func_5(Struct_2(1079f, Struct_1(arg_0.a, 42923u, var_0.wz, arg_1.d), vec4<f32>(-1569f, -733f, 1000f, -744f), arg_0), 5533u, vec2<bool>(true, arg_0.d), vec4<bool>(arg_0.a, arg_0.d, false, arg_1.a)).d.d, !arg_1.d)), -u_input.b, vec4<bool>(var_0.x <= 0i, true, arg_1.a, arg_1.a)).b.c.x, 2147483647i, _wgslsmith_mod_i32((i32(-1i) * -arg_1.c.x) ^ abs(-2147483647i), -36701i), _wgslsmith_div_i32(-1i | (9284i ^ u_input.b.x), func_5(func_5(Struct_2(-1071f, Struct_1(false, 13190u, vec2<i32>(arg_0.c.x, -1i), true), vec4<f32>(1739f, -497f, 101f, -1689f), arg_0), arg_1.b, vec2<bool>(true, true), !vec4<bool>(true, arg_1.a, arg_1.d, arg_0.d)), u_input.a.x, vec2<bool>(arg_0.d, arg_1.a), vec4<bool>(false, !arg_0.d, false, arg_1.a)).d.c.x));
    var_0 = ~vec4<i32>(-1i, _wgslsmith_div_i32(firstLeadingBit(arg_0.c.x << (arg_1.b % 32u)), func_4(!vec3<bool>(true, true, arg_1.a), vec2<u32>(arg_1.b, arg_0.b), countOneBits(u_input.b), vec4<bool>(false, false, true, arg_1.d)).d.c.x), -(arg_1.c.x & _wgslsmith_add_i32(1i, u_input.b.x)), -arg_1.c.x);
    var_0 = u_input.d;
    let var_1 = arg_0.d;
    return Struct_3(func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(188f, -655f)) * 177f), arg_0, vec4<f32>(-160f, _wgslsmith_f_op_f32(round(-1121f)), _wgslsmith_f_op_f32(f32(-1f) * -992f), _wgslsmith_f_op_f32(318f * 231f)), arg_0), arg_0.b, vec2<bool>(true, true), vec4<bool>(any(!vec4<bool>(false, arg_1.a, var_1, false)), false, var_1, func_1(vec3<bool>(var_1, true, arg_1.a)) != !var_1)).c.x, u_input.d, ~(~(~(~vec2<u32>(0u, arg_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(!any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), u_input.a.x >> (5681u % 32u), vec2<i32>(countOneBits(993i), u_input.b.x) & vec2<i32>(min(-32539i, -41808i), ~u_input.d.x), all(vec4<bool>(false, true, false, func_1(vec3<bool>(true, false, false))))), func_5(Struct_2(_wgslsmith_f_op_f32(abs(1f)), func_4(vec3<bool>(true, true, true), ~u_input.a.yy, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, 2147483647i, -16222i), u_input.b), vec4<bool>(true, true, true, true)).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1017f, -1771f, -347f, 337f) - vec4<f32>(1686f, -613f, 348f, 1978f))), Struct_1(false, ~u_input.a.x, u_input.d.xw >> (vec2<u32>(u_input.c.x, u_input.a.x) % vec2<u32>(32u)), true)), reverseBits(reverseBits(u_input.c.x)), vec2<bool>(false, true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, false, false)), !any(vec3<bool>(true, false, false)))).b);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-var_0.a), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.b.x, -8114i), var_0.b.x) | u_input.d.x, u_input.b.x << (firstTrailingBit(_wgslsmith_mod_u32(60060u, var_0.c.x)) % 32u), u_input.d.x, _wgslsmith_clamp_i32(26691i, _wgslsmith_mult_i32(~0i, -43211i & var_0.b.x), 18898i)), var_0.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(var_0.a, 778f)), func_4(vec3<bool>(false, true, true), vec2<u32>(1u, 23352u), var_0.b, vec4<bool>(true, true, false, false)).c.xy) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(683f, var_0.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(135f, var_0.a)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1796f, var_0.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -278f) * vec2<f32>(var_0.a, var_0.a))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 453f) * vec2<f32>(var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(var_0.a, -689f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.a, _wgslsmith_f_op_f32(func_3(vec4<i32>(var_0.b.x, 52782i, u_input.b.x, 20332i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1412f, var_0.a, var_0.a))), func_5(func_4(vec3<bool>(false, true, false), u_input.a.yx, vec4<i32>(1i, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(true, false, true, true)), u_input.a.x, vec2<bool>(true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)).d.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1031f, var_0.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1186f, var_1.x, var_0.a)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(488f * -1000f), _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)))))));
    var_0 = func_6(func_5(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1669f), Struct_1(true, abs(31216u), -vec2<i32>(u_input.b.x, var_0.b.x), true), func_4(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), var_0.c, -vec4<i32>(-16167i, var_0.b.x, -1i, u_input.b.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true)).c, func_5(func_4(vec3<bool>(false, true, true), var_0.c, var_0.b, vec4<bool>(true, false, true, true)), u_input.a.x, vec2<bool>(true, false), vec4<bool>(true, true, true, true)).d), func_4(vec3<bool>(true, true, true), select(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(var_0.c.x, u_input.c.x), true), var_0.b, vec4<bool>(true, false, false, true)).b.b << (func_5(Struct_2(-263f, Struct_1(true, var_0.c.x, vec2<i32>(0i, var_0.b.x), true), vec4<f32>(651f, -538f, var_2.x, var_2.x), Struct_1(true, u_input.a.x, u_input.d.zz, false)), u_input.c.x, select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec4<bool>(true, true, true, true)).d.b % 32u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)).d, Struct_1(func_1(vec3<bool>(true, true, true)), 1u, ~max(vec2<i32>(var_0.b.x, 1489i), vec2<i32>(50158i, var_0.b.x)), 45628u > u_input.a.x));
    var var_3 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(25731u, 1u, 32137u), max(u_input.a, u_input.a)), u_input.c.xxw), vec3<u32>(var_0.c.x, ~u_input.c.x, firstLeadingBit(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, -u_input.d.yz, _wgslsmith_div_u32(~(select(27836u, u_input.c.x, false) & ~u_input.a.x), var_0.c.x), min(u_input.d.x, _wgslsmith_add_i32(u_input.d.x, -var_0.b.x)));
}

