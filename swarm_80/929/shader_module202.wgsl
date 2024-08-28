struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = !(_wgslsmith_div_u32(~37851u, _wgslsmith_add_u32(~4294967295u, ~arg_0.x)) == ~(~1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1));
    var var_2 = ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x);
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(-max(0i, -1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x), u_input.a.yyy), -43971i, 1i) | (u_input.a << (~vec4<u32>(arg_0.x, 20742u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), u_input.a | firstLeadingBit(u_input.a));
    let var_4 = Struct_3(~(~(~(~vec3<u32>(38007u, 8835u, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(361f, arg_1.x, -690f)))))), Struct_1(min(5468u, 41058u), select(vec2<bool>(true, any(vec4<bool>(true, false, false, true))), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, all(vec4<bool>(false, true, false, true)))), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), _wgslsmith_add_vec3_i32(u_input.a.wzx, ~(~vec3<i32>(47407i, var_3.x, var_3.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(-12988i, -1190i, var_3.x, -2147483647i), vec4<i32>(-2147483647i, 1i, u_input.c.x, 5747i) >> (vec4<u32>(33385u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) & max(vec4<i32>(2147483647i, u_input.a.x, 1i, 49858i), var_3 << (vec4<u32>(u_input.b.x, 1u, 7330u, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 585f, 104f)))), vec3<f32>(_wgslsmith_f_op_f32(round(-549f)), 288f, _wgslsmith_f_op_f32(step(arg_1.x, -361f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2574f, -2541f, var_1.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(270f, var_1.x, arg_1.x) - vec3<f32>(-479f, var_1.x, -1319f)))))));
    return select(!select(vec3<bool>(1i >= var_4.c.e.x, !var_4.c.c, u_input.b.x >= arg_0.x), select(select(vec3<bool>(var_4.c.b.x, false, var_4.c.c), vec3<bool>(false, true, var_4.c.c), false), vec3<bool>(true, true, false), var_4.c.c), !vec3<bool>(true, true, var_4.c.c)), select(vec3<bool>(any(!vec4<bool>(true, var_4.c.c, var_4.c.b.x, var_4.c.c)), true && var_4.c.c, (var_1.x < -194f) | (var_4.c.c && true)), !(!select(vec3<bool>(true, var_4.c.b.x, var_4.c.b.x), vec3<bool>(var_4.c.c, var_4.c.c, var_4.c.c), var_4.c.c)), ~0i <= (var_3.x >> (_wgslsmith_mod_u32(u_input.b.x, 34466u) % 32u))), false);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = -1140f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -1650f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, arg_2, arg_2, arg_2), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_2, 625f, -476f), vec4<f32>(arg_3.d.x, 1000f, arg_2, arg_2))), arg_3.c.d.x < 1i)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1236f, arg_2, arg_2, 1114f) - vec4<f32>(-916f, -1153f, arg_3.b.x, -584f)) * vec4<f32>(arg_2, 1226f, 2052f, -1773f))))));
    let var_2 = Struct_2(abs(firstLeadingBit(arg_3.c.e.yz)), arg_3.c, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-arg_3.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-arg_3.d.x)))), select(arg_0.zwy, !vec3<bool>(true, !arg_0.x, true), select(vec3<bool>(true, arg_3.c.e.x >= arg_3.c.e.x, !arg_0.x), vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, arg_3.c.c, false), !arg_0.xwy, func_3(arg_1.wx, vec2<f32>(arg_2, 480f))))));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1628f)) - _wgslsmith_f_op_f32(-var_2.c.x))), var_2.c.x));
    return Struct_1(1u, select(!(!vec2<bool>(arg_3.c.b.x, false)), arg_0.xx, !arg_0.wz), select(true, var_2.d.x, !var_2.d.x), vec3<i32>(-44213i, arg_3.c.d.x, abs(~(-8339i)) ^ -u_input.c.x), vec4<i32>(arg_3.c.e.x, min(-1i, i32(-1i) * -arg_3.c.d.x), firstLeadingBit(-1i), -1i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = max(countOneBits(~firstTrailingBit(firstLeadingBit(vec3<u32>(1u, 4294967295u, 14760u)))), ~vec3<u32>(arg_1.b.a, ~arg_1.b.a, 1u));
    var var_1 = func_2(!(!select(select(vec4<bool>(arg_3.x, arg_1.b.c, arg_1.b.c, arg_0.b.x), vec4<bool>(arg_3.x, true, arg_3.x, arg_0.c), vec4<bool>(arg_3.x, arg_1.b.c, false, arg_1.b.c)), select(vec4<bool>(false, arg_1.b.b.x, false, false), vec4<bool>(false, false, arg_0.c, true), vec4<bool>(arg_0.b.x, true, false, false)), arg_0.a != 81856u)), vec4<u32>(arg_0.a, u_input.b.x, 108164u, 69928u), arg_2.x, Struct_3(vec3<u32>(_wgslsmith_add_u32(29156u, arg_1.b.a) >> ((var_0.x >> (var_0.x % 32u)) % 32u), arg_0.a, 1u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 346f, arg_2.x) * vec3<f32>(-1108f, -535f, -769f)) + vec3<f32>(1093f, 1000f, 491f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, arg_2.x) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.c.x, arg_2.x, arg_2.x)))), func_3(~u_input.b, _wgslsmith_f_op_vec2_f32(step(arg_2, arg_2))))), Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_1.b.a), _wgslsmith_sub_vec2_u32(var_0.xy, var_0.yz)), select(arg_1.d.yy, vec2<bool>(arg_3.x, true), arg_0.a == var_0.x), arg_3.x || true, arg_0.d, ~(-vec4<i32>(u_input.a.x, arg_1.a.x, u_input.a.x, arg_1.b.e.x))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(arg_2.x)), 546f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, arg_1.c.x, arg_1.c.x), vec3<f32>(arg_2.x, arg_2.x, -1470f), vec3<bool>(arg_0.c, arg_0.c, arg_1.b.b.x))) - vec3<f32>(1159f, -473f, 1837f))))).a;
    var var_2 = Struct_2(u_input.a.xy, func_2(select(select(select(vec4<bool>(arg_1.b.b.x, arg_1.d.x, true, true), vec4<bool>(arg_0.c, arg_1.d.x, arg_1.d.x, false), vec4<bool>(arg_1.b.b.x, arg_3.x, arg_0.b.x, arg_0.c)), !vec4<bool>(arg_0.b.x, false, arg_3.x, arg_3.x), select(vec4<bool>(false, arg_1.d.x, false, arg_3.x), vec4<bool>(false, false, arg_1.b.c, true), vec4<bool>(true, arg_3.x, true, arg_1.d.x))), !select(vec4<bool>(false, false, arg_3.x, arg_0.b.x), vec4<bool>(arg_0.c, false, true, arg_3.x), false), vec4<bool>(true, any(arg_0.b), arg_2.x >= 1344f, arg_3.x)), ~vec4<u32>(func_2(vec4<bool>(true, arg_0.c, arg_1.d.x, arg_1.d.x), vec4<u32>(u_input.b.x, arg_1.b.a, arg_1.b.a, arg_0.a), arg_2.x, Struct_3(vec3<u32>(7859u, arg_1.b.a, arg_0.a), vec3<f32>(arg_2.x, arg_2.x, -184f), Struct_1(arg_0.a, vec2<bool>(true, true), false, arg_0.d, arg_0.e), vec3<f32>(-1050f, -1989f, 1607f))).a, firstLeadingBit(var_0.x), _wgslsmith_dot_vec2_u32(u_input.b, var_0.xy), _wgslsmith_sub_u32(var_0.x, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.c.x, 1719f)))), _wgslsmith_f_op_f32(-1336f - _wgslsmith_f_op_f32(select(-635f, 519f, arg_1.b.c)))), Struct_3(~(~vec3<u32>(arg_1.b.a, u_input.b.x, 46454u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1203f, arg_2.x, -539f), vec3<f32>(arg_2.x, -1231f, arg_1.c.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, -1177f, 109f))), true)), func_2(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_3.x, false), abs(vec4<u32>(0u, arg_1.b.a, 4294967295u, arg_1.b.a)), _wgslsmith_f_op_f32(arg_2.x + arg_2.x), Struct_3(var_0, vec3<f32>(-1337f, arg_1.c.x, 446f), Struct_1(1u, vec2<bool>(true, arg_0.b.x), true, vec3<i32>(-2147483647i, 1i, arg_0.e.x), arg_0.e), vec3<f32>(333f, arg_1.c.x, arg_2.x))), vec3<f32>(-1771f, _wgslsmith_f_op_f32(arg_2.x - 908f), arg_1.c.x))), arg_1.c, !func_3(vec2<u32>(1u, var_0.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2)))));
    var var_3 = arg_1.a.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, -493f, arg_2.x));
    return ~(_wgslsmith_div_u32(var_0.x, _wgslsmith_div_u32(7534u, 52728u)) ^ firstTrailingBit(4294967295u));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(i32(-1i) * -1i, 0i), firstLeadingBit(~(-2147483647i))) ^ u_input.a.x, u_input.c.x, firstTrailingBit(40566i), abs(1i << (_wgslsmith_sub_u32(5668u ^ arg_1.x, firstTrailingBit(1u)) % 32u)));
    var var_1 = _wgslsmith_add_vec3_u32(arg_1.wzz, vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.zwy, arg_1.zzw >> (vec3<u32>(0u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), ~_wgslsmith_mod_u32(arg_0.x, 44482u), reverseBits(countOneBits(0u))) << (arg_1.xyx % vec3<u32>(32u)));
    var_1 = _wgslsmith_div_vec3_u32(select(max(~(~vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), ~vec3<u32>(7990u, 96964u, 0u)), vec3<u32>(abs(~0u), 26477u, 1u), vec3<bool>(true, true, true)), vec3<u32>(~0u & func_4(func_2(vec4<bool>(false, false, false, false), arg_1, -375f, Struct_3(arg_1.yzz, vec3<f32>(-450f, 220f, -146f), Struct_1(arg_0.x, vec2<bool>(true, true), true, vec3<i32>(5699i, u_input.a.x, 3176i), vec4<i32>(18518i, -1i, var_0.x, u_input.c.x)), vec3<f32>(-181f, -538f, -267f))), Struct_2(vec2<i32>(u_input.a.x, var_0.x), Struct_1(39723u, vec2<bool>(true, true), true, var_0.wwx, var_0), vec2<f32>(-1000f, -746f), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(816f, 458f)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), firstTrailingBit(~8880u), u_input.b.x));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-395f))));
    var_1 = countOneBits(_wgslsmith_sub_vec3_u32(arg_1.xyw, vec3<u32>(~u_input.b.x, 1u, ~arg_0.x)));
    return Struct_2(~u_input.a.wy, Struct_1(~(~0u), func_2(vec4<bool>(true, true, true, true), arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2743f, -964f) - _wgslsmith_f_op_f32(f32(-1f) * -2417f)), Struct_3(vec3<u32>(1u, 4294967295u, arg_0.x), vec3<f32>(-263f, -1000f, 772f), Struct_1(arg_0.x, vec2<bool>(false, true), true, vec3<i32>(-997i, 0i, -41608i), var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-313f, 1263f, 1598f)))).b, func_3(vec2<u32>(arg_1.x, 4294967295u) | _wgslsmith_sub_vec2_u32(var_1.yy, var_1.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-625f, 728f)))).x, vec3<i32>(var_0.x, var_0.x, var_0.x), vec4<i32>(-2147483647i, u_input.c.x, -7862i, i32(-1i) * -4201i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -978f) - _wgslsmith_f_op_f32(ceil(-629f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-910f, -1243f)), _wgslsmith_f_op_f32(1744f + 343f))))), vec3<bool>(true, true, true));
}

fn func_5(arg_0: Struct_2) -> i32 {
    let var_0 = true;
    var var_1 = vec4<i32>(arg_0.b.e.x, 33046i, u_input.c.x, i32(-1i) * -2147483647i);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x) + _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(sign(arg_0.c.x))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(arg_0.c)))));
    var_1 = select(u_input.c, vec4<i32>(-90953i, _wgslsmith_mod_i32(func_1(vec4<u32>(arg_0.b.a, 1u, 25419u, 52008u), vec4<u32>(61834u, 4294967295u, u_input.b.x, 4776u)).b.d.x, ~22571i), var_1.x, _wgslsmith_add_i32(u_input.a.x, countOneBits(var_1.x))) ^ abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-5346i, arg_0.a.x, var_1.x, 0i), vec4<i32>(1i, var_1.x, 36355i, arg_0.a.x)), firstTrailingBit(1i), firstLeadingBit(u_input.c.x), _wgslsmith_div_i32(arg_0.b.d.x, u_input.c.x))), vec4<bool>(false, func_1(vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 25953u), _wgslsmith_mod_u32(arg_0.b.a, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_0.b.a, 93394u)), 24702u), firstTrailingBit(vec4<u32>(23546u, 1u, u_input.b.x, 30802u) ^ vec4<u32>(arg_0.b.a, u_input.b.x, 87507u, arg_0.b.a))).d.x, var_0, -238f < var_2.x));
    let var_3 = u_input.b;
    return ~48578i;
}

fn func_6(arg_0: f32, arg_1: Struct_4) -> vec2<f32> {
    let var_0 = Struct_1(~(~(~arg_1.d.a)), func_2(!select(!vec4<bool>(arg_1.b, arg_1.d.b.x, false, arg_1.b), vec4<bool>(arg_1.d.c, false, false, arg_1.b), all(vec4<bool>(true, true, arg_1.d.c, arg_1.d.b.x))), ~max(~vec4<u32>(4294967295u, 4294967295u, 96477u, u_input.b.x), select(vec4<u32>(1u, 1u, 4294967295u, 28767u), vec4<u32>(4294967295u, u_input.b.x, 17633u, arg_1.d.a), arg_1.b)), 107f, Struct_3(abs(vec3<u32>(0u, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1645f, arg_0, 384f)))), Struct_1(abs(u_input.b.x), !arg_1.d.b, arg_1.b, u_input.c.xzx, u_input.a), vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0, _wgslsmith_f_op_f32(-arg_0)))).b, true, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -func_2(vec4<bool>(arg_1.d.b.x, true, arg_1.b, false), vec4<u32>(3710u, arg_1.d.a, u_input.b.x, 16007u), arg_0, Struct_3(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<f32>(3507f, -807f, 365f), arg_1.d, vec3<f32>(-2634f, arg_0, 1163f))).e.x, u_input.a.x), _wgslsmith_clamp_vec3_i32(abs(~u_input.c.wxx), ~u_input.c.yww >> (~vec3<u32>(1u, arg_1.d.a, 0u) % vec3<u32>(32u)), abs(~u_input.a.xxx)), arg_1.d.e.yxz), abs(~(u_input.c << (vec4<u32>(arg_1.d.a, arg_1.d.a, 1u, u_input.b.x) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(11013u, u_input.b.x, 4294967295u, 4294967295u), ~vec4<u32>(1899u, 10080u, 15707u, 4294967295u)) % vec4<u32>(32u))));
    let var_1 = Struct_4(1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(func_4(Struct_1(4294967295u, var_0.b, true, arg_1.d.e.zzw, u_input.a), Struct_2(u_input.c.xz, Struct_1(arg_1.d.a, vec2<bool>(false, true), var_0.b.x, vec3<i32>(var_0.d.x, arg_1.c, 21862i), vec4<i32>(6080i, 0i, -2147483647i, 1i)), vec2<f32>(arg_0, 563f), vec3<bool>(arg_1.d.b.x, arg_1.d.b.x, arg_1.d.b.x)), vec2<f32>(arg_0, arg_0), vec2<bool>(arg_1.d.c, true)), var_0.a), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.d.a, 128252u), vec2<u32>(arg_1.d.a, u_input.b.x))) % 32u), any(select(!vec4<bool>(true, var_0.c, false, false), select(select(vec4<bool>(false, true, arg_1.b, true), vec4<bool>(arg_1.b, arg_1.b, true, var_0.c), vec4<bool>(var_0.b.x, arg_1.d.c, arg_1.d.c, true)), select(vec4<bool>(var_0.c, true, true, var_0.b.x), vec4<bool>(var_0.b.x, false, true, false), vec4<bool>(false, arg_1.d.c, true, true)), arg_1.a > u_input.c.x), !vec4<bool>(true, true, false, var_0.c))), 48053i, Struct_1(arg_1.d.a, func_2(select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_0.c, true, var_0.c), vec4<bool>(true, true, true, true)), countOneBits(~vec4<u32>(0u, arg_1.d.a, arg_1.d.a, arg_1.d.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -999f) - -403f), Struct_3(~vec3<u32>(u_input.b.x, 57137u, 1u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -492f, 1000f), vec3<f32>(729f, 1208f, arg_0))), func_1(vec4<u32>(var_0.a, 28334u, 25426u, var_0.a), vec4<u32>(36060u, arg_1.d.a, 1u, 4294967295u)).b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-396f, arg_0, 974f), vec3<f32>(-286f, arg_0, arg_0), vec3<bool>(var_0.c, arg_1.b, true))))).b, 67863i <= arg_1.c, _wgslsmith_add_vec3_i32(u_input.a.yxz, u_input.c.zzz >> (vec3<u32>(104846u, arg_1.d.a, 15791u) % vec3<u32>(32u))), u_input.c));
    let var_2 = _wgslsmith_mod_i32(max(arg_1.d.e.x, ~select(27584i, reverseBits(arg_1.c), any(var_1.d.b))), -1i);
    var var_3 = Struct_3(_wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(var_1.d.a, 77243u, 12963u)), vec3<u32>(func_4(Struct_1(0u, arg_1.d.b, true, vec3<i32>(var_0.e.x, var_1.c, var_0.d.x), var_1.d.e), Struct_2(vec2<i32>(u_input.a.x, var_0.e.x), arg_1.d, vec2<f32>(1582f, arg_0), vec3<bool>(arg_1.b, false, false)), vec2<f32>(arg_0, -749f), arg_1.d.b), 5304u, 4294967295u)) & ~(vec3<u32>(32901u, var_1.d.a, var_0.a) >> (firstTrailingBit(vec3<u32>(35474u, var_0.a, u_input.b.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, 106f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 481f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-819f, -198f, -133f) + vec3<f32>(arg_0, -1744f, 284f)))), vec3<f32>(335f, -1000f, _wgslsmith_f_op_f32(-1646f + _wgslsmith_f_op_f32(round(-139f)))), (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.a, 0u, 126510u, u_input.b.x), vec4<u32>(var_1.d.a, u_input.b.x, arg_1.d.a, u_input.b.x)) > arg_1.d.a) && all(!vec4<bool>(false, arg_1.d.c, true, var_0.c)))), var_0, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-896f * _wgslsmith_f_op_f32(abs(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + -618f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))))));
    let var_4 = func_1(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.a, 25882u), select(vec2<u32>(0u, 15718u), vec2<u32>(1u, var_3.c.a), true)), 6906u, ~_wgslsmith_sub_u32(~var_0.a, _wgslsmith_add_u32(var_0.a, var_0.a)), var_0.a), ~vec4<u32>(var_0.a, _wgslsmith_mod_u32(4294967295u, ~var_1.d.a), abs(var_0.a ^ var_0.a), u_input.b.x));
    return var_3.d.xz;
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_3(abs(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.a, 1u, 1u, arg_1.b.a), vec4<u32>(4294967295u, 1u, 0u, arg_1.b.a)), ~(~19324u), 64677u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.x, arg_1.c.x), -309f, arg_0.x), vec3<f32>(_wgslsmith_div_f32(-439f, 516f), -1223f, _wgslsmith_f_op_f32(trunc(arg_1.c.x))))), Struct_1(arg_1.b.a, select(arg_1.b.b, arg_1.d.zy, all(arg_1.d)), true, _wgslsmith_sub_vec3_i32(arg_1.b.e.yzz, vec3<i32>(firstLeadingBit(40307i), ~arg_1.a.x, 27898i)), ~(vec4<i32>(-1i) * -arg_1.b.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-821f, 1039f, 161f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_1.c.x, -1919f) * vec3<f32>(421f, 270f, arg_1.c.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 326f, 1168f)) * vec3<f32>(-1000f, -493f, arg_0.x)))));
    var_0 = Struct_3(~var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-824f, 1f, -339f) + vec3<f32>(arg_1.c.x, 133f, _wgslsmith_f_op_f32(2019f + 606f)))), var_0.c, _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) * var_0.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -124f))) != -1315f)));
    var_0 = Struct_3(vec3<u32>(firstTrailingBit(select(7129u, var_0.c.a, false) & min(u_input.b.x, var_0.a.x)), _wgslsmith_dot_vec2_u32(var_0.a.xx, _wgslsmith_clamp_vec2_u32(u_input.b, ~u_input.b, vec2<u32>(u_input.b.x, 24646u))), var_0.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_0.x, 1277f))))) - var_0.b), func_1(countOneBits(firstLeadingBit(vec4<u32>(4294967295u, arg_1.b.a, var_0.a.x, 4294967295u)) | max(vec4<u32>(82843u, arg_1.b.a, u_input.b.x, 45893u), vec4<u32>(4294967295u, arg_1.b.a, 1u, 17664u))), ~(~vec4<u32>(0u, var_0.a.x, 7526u, u_input.b.x) ^ countOneBits(vec4<u32>(4294967295u, var_0.a.x, 10969u, 1u)))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(747f, 570f, 373f), vec3<f32>(-773f, arg_1.c.x, -458f), var_0.c.b.x)))))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1092f * _wgslsmith_f_op_f32(f32(-1f) * -919f)) * _wgslsmith_f_op_f32(sign(1873f)))));
    var_0 = Struct_3(abs(var_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2628f, -254f, var_1))) + var_0.b), func_1(~vec4<u32>(var_0.a.x << (arg_1.b.a % 32u), 65599u, arg_1.b.a, _wgslsmith_clamp_u32(4294967295u, 1u, 42001u)), ~(~vec4<u32>(arg_1.b.a, u_input.b.x, u_input.b.x, 13104u))).b, vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, -468f)))), -1043f));
    return Struct_3(vec3<u32>(~_wgslsmith_dot_vec3_u32(~var_0.a, vec3<u32>(var_0.c.a, var_0.c.a, arg_1.b.a) | vec3<u32>(77807u, var_0.c.a, 4294967295u)), _wgslsmith_dot_vec3_u32(var_0.a, select(~var_0.a, vec3<u32>(1u, 17963u, var_0.c.a), false)), _wgslsmith_mod_u32(var_0.c.a, ~(var_0.a.x >> (u_input.b.x % 32u)))), var_0.b, Struct_1(_wgslsmith_div_u32(4294967295u, u_input.b.x), var_0.c.b, true, var_0.c.e.xzw, vec4<i32>(u_input.c.x, -1i, ~2147483647i, var_0.c.d.x)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_vec2_f32(func_6(761f, Struct_4(u_input.a.x, true & all(vec2<bool>(false, false)), func_5(func_1(vec4<u32>(4294967295u, 0u, u_input.b.x, 12218u), vec4<u32>(4294967295u, 0u, u_input.b.x, 39014u))), func_2(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), abs(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(-954f + 303f), Struct_3(vec3<u32>(u_input.b.x, 15966u, u_input.b.x), vec3<f32>(1656f, -188f, -209f), Struct_1(27806u, vec2<bool>(true, false), false, vec3<i32>(u_input.c.x, 38845i, 11041i), vec4<i32>(12784i, u_input.a.x, -8976i, 0i)), vec3<f32>(-1000f, -270f, -1700f)))))), Struct_2(select(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -u_input.a.x), -vec2<i32>(49211i, u_input.c.x), false), Struct_1(1u, vec2<bool>(true, true), true, ~select(u_input.a.yzw, u_input.c.xwz, vec3<bool>(true, false, false)), ~vec4<i32>(-2147483647i, u_input.c.x, 20717i, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1145f, -498f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-411f, -356f)))), vec3<bool>(any(func_3(u_input.b, vec2<f32>(364f, 564f))), u_input.a.x < 37525i, !all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2154f, 102f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-899f, -665f) * vec2<f32>(1000f, -901f))))))));
    let var_1 = var_0.a.xx;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(388f, var_0.b.x, var_0.d.x, var_0.d.x) + vec4<f32>(var_0.b.x, var_0.d.x, var_0.d.x, 836f))) + vec4<f32>(var_0.b.x, _wgslsmith_f_op_vec2_f32(func_6(var_0.b.x, Struct_4(var_0.c.d.x, var_0.c.c, -47108i, var_0.c))).x, _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.x, -2178f, -605f, _wgslsmith_f_op_f32(-var_0.d.x)))))));
    let var_3 = ~u_input.b;
    var_0 = Struct_3(_wgslsmith_mult_vec3_u32(var_0.a, ~select(abs(vec3<u32>(4294967295u, var_3.x, var_1.x)), _wgslsmith_clamp_vec3_u32(var_0.a, var_0.a, vec3<u32>(25848u, 1u, var_3.x)), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(var_0.d, var_0.d)), var_2.xxw, var_0.c.c)), var_0.c, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_div_f32(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + -1809f) + var_2.x), 357f));
    var_0 = func_7(var_2.yz, func_1(select(vec4<u32>(~u_input.b.x, var_0.c.a ^ var_1.x, 1u, firstLeadingBit(6674u)), countOneBits(vec4<u32>(var_1.x, 1u, u_input.b.x, 0u)), select(select(vec4<bool>(false, var_0.c.c, true, true), vec4<bool>(var_0.c.b.x, false, var_0.c.b.x, var_0.c.b.x), false), select(vec4<bool>(true, var_0.c.b.x, var_0.c.c, false), vec4<bool>(var_0.c.b.x, true, true, var_0.c.b.x), vec4<bool>(true, var_0.c.b.x, var_0.c.b.x, false)), u_input.c.x <= -6766i)), ~(countOneBits(vec4<u32>(0u, var_3.x, var_3.x, var_3.x)) ^ vec4<u32>(var_0.c.a, 0u, var_3.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, var_2.x)));
    let var_4 = Struct_4(_wgslsmith_add_i32(~34657i, _wgslsmith_mod_i32(~14411i, _wgslsmith_clamp_i32(u_input.c.x, abs(u_input.c.x), var_0.c.d.x))), true, _wgslsmith_add_i32(~_wgslsmith_add_i32(abs(0i), 1i), _wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_sub_i32(1i, 2147483647i)) | func_1(select(vec4<u32>(var_3.x, 10302u, var_1.x, var_1.x), vec4<u32>(1u, 7360u, 0u, 1360u), true), abs(vec4<u32>(var_1.x, var_0.a.x, 1u, var_0.c.a))).b.e.x), Struct_1(var_1.x, select(var_0.c.b, select(var_0.c.b, !var_0.c.b, !var_0.c.b), u_input.a.x >= -1i), all(!select(vec4<bool>(var_0.c.c, var_0.c.b.x, true, true), vec4<bool>(false, var_0.c.b.x, var_0.c.b.x, var_0.c.c), vec4<bool>(false, true, false, false))), max(vec3<i32>(_wgslsmith_sub_i32(16083i, u_input.a.x), _wgslsmith_mult_i32(u_input.c.x, var_0.c.d.x), _wgslsmith_mult_i32(-1i, -17185i)), -var_0.c.e.xyy), ~(-var_0.c.e)));
    let var_5 = _wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.zwz - var_2.zwz) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(134f, -201f, 514f))))))));
    let var_6 = Struct_2(select(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-18288i, -37729i), var_4.d.e.wz), -vec2<i32>(var_4.a, u_input.a.x), ~vec2<i32>(u_input.a.x, var_4.c)) & var_4.d.e.zy, vec2<i32>(_wgslsmith_div_i32(0i, var_4.c ^ 1i), u_input.a.x), !func_2(vec4<bool>(true, false, false, var_4.b), max(vec4<u32>(var_4.d.a, 51228u, u_input.b.x, 95211u), vec4<u32>(4294967295u, 13123u, u_input.b.x, var_1.x)), var_2.x, func_7(var_0.d.yx, Struct_2(var_4.d.d.yy, Struct_1(var_0.a.x, var_0.c.b, false, vec3<i32>(u_input.a.x, -1i, var_4.a), vec4<i32>(u_input.c.x, -44916i, -11994i, u_input.a.x)), var_0.b.zz, vec3<bool>(var_0.c.c, false, var_0.c.c)), vec2<f32>(434f, -951f))).c), func_7(_wgslsmith_f_op_vec2_f32(sign(var_2.zw)), func_1(vec4<u32>(4294967295u, min(1u, 13346u), 4294967295u, countOneBits(u_input.b.x)), ~vec4<u32>(var_4.d.a, 24611u, var_1.x, 4294967295u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, 1u, u_input.b.x, var_0.a.x), vec4<u32>(1u, var_0.a.x, var_3.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(var_0.d.yz - vec2<f32>(_wgslsmith_div_f32(-1981f, var_0.d.x), var_0.b.x))).c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-944f, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(round(var_0.b.x)))) * var_5.xx), !func_3(~select(vec2<u32>(var_4.d.a, var_3.x), vec2<u32>(1u, 4294967295u), var_4.b), var_0.b.yy));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, vec4<u32>(~var_4.d.a, _wgslsmith_mult_u32(4294967295u, var_3.x), u_input.b.x >> (u_input.b.x % 32u), 1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_0.b.x) - -751f), func_1(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.a, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(var_3.x, 4294967295u, u_input.b.x, 1u)), ~vec4<u32>(74507u, var_1.x, 1u, u_input.b.x)).c.x)))), func_1(~(~select(vec4<u32>(0u, 0u, var_0.c.a, 16344u), vec4<u32>(var_6.b.a, var_3.x, 86413u, 4294967295u), true)), abs(countOneBits(~vec4<u32>(var_4.d.a, 1u, var_0.a.x, var_6.b.a)))).b.a, ~u_input.b);
}

