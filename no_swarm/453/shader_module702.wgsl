struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(trunc(arg_2.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1606f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.x, 1364f, -2082f, -137f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -1208f, -655f, arg_0.e))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.e, _wgslsmith_f_op_f32(min(-275f, -1228f)), _wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_f_op_f32(-arg_2.x))))));
    let var_1 = u_input.c.x;
    return select(vec3<bool>(-52177i <= _wgslsmith_mult_i32(0i, ~u_input.d), arg_0.d, !(_wgslsmith_f_op_f32(round(177f)) > _wgslsmith_f_op_f32(arg_2.x + -236f))), vec3<bool>(arg_0.d, true, false), any(!arg_1.zyy));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_0.b.a, -vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-4779i, -2147483647i, arg_0.b.b.x, u_input.d), vec4<i32>(1i, 1i, arg_0.b.b.x, arg_0.b.b.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.b.b.x, -2147483647i), ~u_input.d)), all(vec4<bool>(true, !select(false, arg_0.a, false), !(arg_0.b.c || true), arg_0.a)), -2147483647i <= (firstTrailingBit(i32(-1i) * -2147483647i) | u_input.d), arg_0.b.e);
    let var_1 = Struct_2(all(func_3(Struct_1(1u, vec2<i32>(var_0.b.x, var_0.b.x), true, false, _wgslsmith_f_op_f32(-var_0.e)), select(vec4<bool>(arg_0.b.c, true, arg_0.a, false), !vec4<bool>(false, false, true, arg_0.a), select(vec4<bool>(arg_0.b.d, arg_0.b.d, true, false), vec4<bool>(var_0.c, var_0.c, arg_0.a, false), var_0.d)), vec3<f32>(-957f, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_div_f32(-212f, arg_0.b.e)))), arg_0.b);
    var var_2 = select(func_3(arg_0.b, vec4<bool>(func_3(Struct_1(arg_0.b.a, var_1.b.b, var_1.a, arg_0.a, -633f), select(vec4<bool>(false, var_1.a, arg_0.b.c, arg_0.b.c), vec4<bool>(true, true, var_0.d, true), vec4<bool>(true, true, var_1.b.c, false)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -1532f, var_1.b.e)))).x, any(select(vec4<bool>(false, arg_0.b.d, true, true), vec4<bool>(var_0.c, var_0.d, var_0.c, arg_0.b.c), var_1.a)), func_3(Struct_1(var_1.b.a, arg_0.b.b, false, false, var_1.b.e), select(vec4<bool>(true, var_0.c, false, false), vec4<bool>(true, var_0.d, false, arg_0.a), vec4<bool>(var_1.b.d, false, var_0.c, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, -726f, var_1.b.e) + vec3<f32>(var_0.e, 374f, var_1.b.e))).x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, var_0.e, 799f) * vec3<f32>(arg_0.b.e, 274f, -717f))))), vec3<bool>(-730f <= _wgslsmith_f_op_f32(-arg_0.b.e), true, true), !vec3<bool>(arg_0.a, arg_0.b.c, (-626f > var_1.b.e) & true));
    var var_3 = _wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(var_0.b.x, var_0.b.x), var_0.b.x), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.d, 1i) << (_wgslsmith_mult_vec2_u32(u_input.c.xy, u_input.c.yz) % vec2<u32>(32u)), max(~vec2<i32>(1780i, u_input.d), var_1.b.b))) | vec2<i32>(_wgslsmith_dot_vec3_i32(max(countOneBits(vec3<i32>(arg_0.b.b.x, -2147483647i, arg_0.b.b.x)), vec3<i32>(2147483647i, 0i, u_input.d) ^ vec3<i32>(44049i, u_input.d, -1i)), ~(vec3<i32>(-3484i, 20573i, arg_0.b.b.x) >> (vec3<u32>(u_input.b, var_0.a, var_1.b.a) % vec3<u32>(32u)))), ~5345i);
    global0 = ~abs(var_1.b.b.x);
    return Struct_1(5527u, vec2<i32>(-9778i, -70065i), var_0.d | var_1.b.d, var_1.b.b.x < _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.b.x, -33595i, var_0.b.x, var_0.b.x) & (vec4<i32>(-1i, arg_0.b.b.x, -1i, arg_0.b.b.x) & vec4<i32>(u_input.d, -91253i, 0i, arg_0.b.b.x)), vec4<i32>(select(1i, -2147483647i, true), -1i, arg_0.b.b.x, 1i)), arg_0.b.e);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(80353u, select(arg_0.b.b ^ -min(vec2<i32>(arg_0.b.b.x, arg_0.b.b.x), vec2<i32>(20979i, u_input.d)), _wgslsmith_div_vec2_i32(abs(arg_0.b.b), -arg_0.b.b) ^ vec2<i32>(2147483647i, i32(-1i) * -26945i), select(true, all(!vec3<bool>(false, false, arg_0.a)), 15265i <= u_input.d)), arg_0.b.d, arg_0.b.d, -1126f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1442f, var_0.e, arg_1.x, arg_0.b.e), vec4<f32>(arg_1.x, var_0.e, -1000f, 484f), vec4<bool>(true, var_0.d, true, true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1016f, var_0.e, -1000f, var_0.e))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1749f, arg_0.b.e, arg_1.x, 180f) + vec4<f32>(1290f, arg_1.x, var_0.e, var_0.e))))));
    let var_2 = func_2(Struct_2(!(_wgslsmith_div_f32(1000f, arg_1.x) >= -173f), arg_0.b));
    let var_3 = any(select(!vec4<bool>(func_2(arg_0).c, true, false, all(vec3<bool>(arg_0.b.c, var_2.d, false))), vec4<bool>(any(select(vec4<bool>(arg_0.a, false, false, true), vec4<bool>(arg_0.a, false, var_0.c, var_2.d), vec4<bool>(arg_0.b.d, var_2.c, true, true))), func_2(arg_0).c, true, -u_input.d <= 0i), true));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_2.e, var_0.e))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_f_op_f32(var_2.e * -1616f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-742f, _wgslsmith_div_f32(951f, var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1599f, 1394f) * var_1.yx)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(326f, -902f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, var_0.e) + arg_1)))));
    return Struct_1(~(var_0.a | u_input.a.x), ~arg_0.b.b, true, var_2.c, _wgslsmith_f_op_f32(round(func_2(arg_0).e)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = ~86580u;
    var var_1 = vec4<u32>(0u, ~abs(arg_2.b.a), ~_wgslsmith_clamp_u32(~10326u, u_input.a.x, ~(~arg_0.x)), countOneBits(u_input.a.x));
    var var_2 = arg_1.b.e;
    var var_3 = func_4(Struct_2(any(!(!vec3<bool>(arg_1.a, false, false))), func_2(arg_1)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) + arg_1.b.e) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(394f, 310f)), -343f, u_input.d < 19690i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b.e)) * arg_1.b.e)))));
    var_1 = select(abs(firstLeadingBit(vec4<u32>(29425u, arg_2.b.a, arg_0.x, 35026u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.a, 4294967295u, 4294967295u, 60887u), vec4<u32>(77380u, var_1.x, u_input.a.x, 4294967295u)) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(24401u), abs(0u), ~4294967295u, ~12253u), ~(vec4<u32>(1u, var_1.x, 24019u, arg_0.x) & vec4<u32>(1u, var_3.a, 4294967295u, u_input.b))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(298u, arg_2.b.a, var_3.a, arg_1.b.a) << (vec4<u32>(var_3.a, arg_1.b.a, 4294967295u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_1.b.a, 17725u, arg_2.b.a), vec4<u32>(1u, 4294967295u, arg_1.b.a, 1u)), vec4<u32>(18572u, arg_1.b.a, 1u, 1u))), vec4<u32>(select(0u, 35851u, arg_2.a) >> (4294967295u % 32u), ~(~11843u), arg_2.b.a >> (abs(arg_2.b.a) % 32u), func_2(arg_2).a)), !(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_3.c, true, arg_2.b.c), arg_2.b.d))));
    return _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(func_4(Struct_2(all(vec3<bool>(var_3.d, arg_1.a, false)), func_4(Struct_2(arg_2.a, arg_2.b), vec2<f32>(arg_2.b.e, -199f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2864f, -568f))).a, u_input.a.x));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = func_4(Struct_2(arg_1.c, Struct_1(38728u, arg_1.b, false, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e) + 1f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f * _wgslsmith_f_op_f32(f32(-1f) * -772f)) * arg_1.e), 1055f));
    let var_1 = Struct_2(var_0.d, func_2(Struct_2(var_0.d, func_2(Struct_2(var_0.c, Struct_1(4294967295u, vec2<i32>(u_input.d, var_0.b.x), false, arg_1.d, 660f))))));
    var var_2 = arg_1.b ^ firstTrailingBit(min(abs(max(vec2<i32>(u_input.d, var_0.b.x), vec2<i32>(-21889i, 40705i))), min(~vec2<i32>(2147483647i, 0i), countOneBits(arg_1.b))));
    global0 = u_input.d;
    var_2 = _wgslsmith_mult_vec2_i32(countOneBits(var_1.b.b), var_1.b.b);
    return Struct_2(!(all(vec4<bool>(false, false, arg_1.d, true)) & (true | !var_0.d)), func_4(Struct_2(!any(vec3<bool>(var_0.c, arg_1.d, var_1.a)), func_2(var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~_wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(1u, func_1(vec3<u32>(4294967295u, u_input.a.x, 0u), Struct_2(false, Struct_1(5237u, vec2<i32>(1i, -15771i), false, true, -959f)), Struct_2(true, Struct_1(u_input.b, vec2<i32>(-25678i, -71388i), true, true, 159f))))), Struct_1(countOneBits(_wgslsmith_add_u32(func_2(Struct_2(false, Struct_1(u_input.b, vec2<i32>(1i, -2147483647i), true, true, 664f))).a, u_input.b)), ((vec2<i32>(u_input.d, u_input.d) & vec2<i32>(0i, u_input.d)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 33460i), vec2<i32>(u_input.d, u_input.d))) | max(vec2<i32>(-19548i, 40819i), -vec2<i32>(-1i, u_input.d)), 0i >= u_input.d, all(vec4<bool>(all(vec2<bool>(false, true)), true, true, true)), _wgslsmith_div_f32(-522f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) - -238f))));
    var var_1 = -(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.d, u_input.d), _wgslsmith_add_vec3_i32(vec3<i32>(8142i, u_input.d, u_input.d), vec3<i32>(u_input.d, var_0.b.b.x, -49870i))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-13663i, -22772i, 40902i, u_input.d), vec4<i32>(-1i, var_0.b.b.x, -1i, -2147483647i)), vec4<i32>(-15295i, u_input.d, u_input.d, var_0.b.b.x) ^ vec4<i32>(var_0.b.b.x, u_input.d, var_0.b.b.x, var_0.b.b.x))) & vec2<i32>(_wgslsmith_add_i32(var_0.b.b.x, 2147483647i), -1i | func_4(Struct_2(true, var_0.b), vec2<f32>(var_0.b.e, -842f)).b.x));
    var var_2 = Struct_2(!func_2(var_0).d, var_0.b);
    global0 = ~_wgslsmith_dot_vec3_i32(select(reverseBits(~vec3<i32>(var_0.b.b.x, u_input.d, 2147483647i)), vec3<i32>(firstLeadingBit(var_1.x), 1i, abs(2147483647i)), !var_2.b.c || func_2(var_0).d), _wgslsmith_mult_vec3_i32(vec3<i32>(-8301i, firstTrailingBit(-2147483647i), var_1.x & 1i), vec3<i32>(0i, func_2(var_0).b.x, -60396i)));
    var_1 = _wgslsmith_div_vec2_i32(var_0.b.b, vec2<i32>(var_1.x, abs(var_0.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(466f, ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, 16697u, var_2.b.a), vec4<u32>(u_input.a.x, var_2.b.a, 0u, 148082u)), vec4<u32>(var_2.b.a, 46603u, u_input.a.x, var_2.b.a))), _wgslsmith_add_vec2_i32(-select(var_2.b.b, vec2<i32>(u_input.d, 53090i), var_2.b.c), var_2.b.b) & ~vec2<i32>(u_input.d, -26612i), firstLeadingBit(min(~u_input.c.xy, _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(var_0.b.a, u_input.b)), vec2<u32>(4294967295u, 4294967295u)))), _wgslsmith_f_op_f32(f32(-1f) * -1363f));
}

