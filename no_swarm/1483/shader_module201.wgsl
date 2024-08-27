struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(~u_input.a, 56372i) & (abs(31096i << (u_input.b.x % 32u)) & 42106i), 0i, ~(-13835i));
    var_0 = abs(_wgslsmith_mult_vec3_i32(~firstTrailingBit(vec3<i32>(arg_1, -2147483647i, var_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.x, -2147483647i), vec3<i32>(-33051i, 1i, -1i)) >> (_wgslsmith_div_vec3_u32(u_input.b.zyy, vec3<u32>(u_input.b.x, u_input.d, u_input.c.x)) % vec3<u32>(32u)))) << (u_input.b.yww % vec3<u32>(32u));
    var var_1 = abs(~9440u >> (_wgslsmith_mult_u32(u_input.c.x, u_input.d) % 32u));
    var var_2 = Struct_1(vec3<bool>(any(select(vec2<bool>(arg_0.x, true), select(arg_0.yx, vec2<bool>(false, arg_0.x), false), select(false, false, arg_0.x))), any(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.yx, select(arg_0.zy, vec2<bool>(arg_0.x, arg_0.x), false))), false), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 0i), vec2<i32>(var_0.x, 0i) >> (u_input.b.zy % vec2<u32>(32u))), var_0.x), arg_1), vec2<f32>(150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-486f, 1234f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f - 1117f) - _wgslsmith_div_f32(1000f, 1227f)))), u_input.c.x > (u_input.b.x ^ u_input.c.x), select(!select(vec3<bool>(false, true, arg_0.x), !arg_0, vec3<bool>(arg_0.x, arg_0.x, true)), select(arg_0, !arg_0, !(!arg_0)), vec3<bool>(!select(arg_0.x, false, true), false, !(false | arg_0.x))));
    var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(29327u, ~(~u_input.c.x), select(u_input.d, 25893u, var_2.d) >> (0u % 32u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(96138u, 62785u, 1u) ^ ~u_input.b.zxw, ~u_input.b.zxy));
    return min(u_input.c.x, 1u);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a - arg_2.c.c.x))), arg_2.c.c.x));
    let var_2 = ~_wgslsmith_clamp_u32(u_input.d, ~1u, func_3(select(arg_2.c.e, vec3<bool>(true, true, arg_1.x), arg_1.x), ~arg_3)) ^ 4294967295u;
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(539f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1)))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_2.a + -1000f)) * _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(max(arg_0, arg_2.d)))))));
    var var_4 = _wgslsmith_div_i32(countOneBits(2313i), arg_2.b);
    return Struct_1(vec3<bool>(true, true, true), (vec2<i32>(max(arg_3, 47856i), 0i) | max(arg_2.c.b, vec2<i32>(arg_3, arg_2.c.b.x))) & arg_2.c.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 408f) + 1314f), -474f)), !(true || any(!arg_2.c.a.xx)), vec3<bool>(true, arg_1.x, !arg_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = u_input.c;
    var var_1 = ~vec4<u32>(abs(firstTrailingBit(u_input.c.x) ^ _wgslsmith_mult_u32(0u, 35619u)), 7899u, 8427u, 7437u);
    var var_2 = ~func_2(_wgslsmith_f_op_f32(arg_0.c.x - 489f), !select(select(vec4<bool>(arg_0.d, arg_1.c.d, true, true), vec4<bool>(false, arg_2, arg_2, true), true), vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(arg_1.c.d, true, arg_2, arg_0.e.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - arg_1.d)), _wgslsmith_sub_i32(~arg_1.b, _wgslsmith_add_i32(0i, u_input.a)), Struct_1(!vec3<bool>(arg_0.d, arg_0.e.x, true), ~vec2<i32>(-2147483647i, arg_0.b.x), arg_1.c.c, true, select(arg_1.c.e, vec3<bool>(true, arg_2, false), arg_2)), arg_1.a), func_2(_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_div_f32(arg_0.c.x, arg_0.c.x)), vec4<bool>(arg_1.c.a.x, true, false, false), Struct_2(_wgslsmith_f_op_f32(step(1283f, arg_1.d)), i32(-1i) * -2147483647i, arg_1.c, arg_1.a), u_input.a).b.x).b.x;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(select(arg_0.b.x, ~arg_1.b, all(arg_0.a.yy)) & _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.c.b.x, arg_0.b.x, 1i), ~vec3<i32>(1i, 1734i, u_input.a)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-81525i, u_input.a, u_input.a, u_input.a) << (u_input.b % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.x, 8726i, 16145i, arg_0.b.x), vec4<i32>(-1i, -6454i, -41670i, -10306i))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, arg_1.b, -2147483647i), vec3<i32>(-2147483647i, 0i, arg_0.b.x), arg_1.c.a), -vec3<i32>(u_input.a, arg_0.b.x, -2147483647i))), arg_1.c.b.x), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(min(vec3<i32>(3412i, arg_1.b, 46767i), vec3<i32>(2147483647i, 1i, 1i)), vec3<i32>(39345i, arg_1.b, 18191i)));
    var var_4 = vec4<u32>(u_input.d, 15887u, abs(_wgslsmith_dot_vec3_u32(~u_input.b.ywx, select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 17510u, arg_3.x), u_input.b.wxw), u_input.b.wzx | vec3<u32>(0u, 78023u, 4294967295u), arg_1.c.a))), 1u);
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(396f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.x, -1554f) * -535f)), arg_0.a, arg_0.c.c.x));
    var var_1 = _wgslsmith_div_u32(77236u, ~95836u) ^ ~u_input.d;
    var var_2 = Struct_1(select(!(!arg_1.a), !select(arg_1.a, arg_1.e, true), vec3<bool>(arg_1.a.x, all(select(vec2<bool>(arg_0.c.d, arg_0.c.e.x), vec2<bool>(arg_0.c.a.x, true), arg_0.c.a.x)), arg_1.a.x)), arg_1.b, _wgslsmith_f_op_vec2_f32(arg_1.c + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) * 575f), arg_0.c.c.x)), arg_0.c.e.x, !vec3<bool>(true, (arg_0.c.d || true) & !arg_0.c.d, all(!vec3<bool>(arg_0.c.a.x, arg_0.c.d, false))));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 164f, -858f), vec3<f32>(arg_1.c.x, var_2.c.x, var_2.c.x))) * vec3<f32>(207f, -520f, -227f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-265f - var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_2.c.x, arg_1.c.x) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(273f, 2177f, var_2.c.x), vec3<f32>(var_0.x, var_2.c.x, var_0.x))))))));
    var var_3 = Struct_2(885f, var_2.b.x, func_4(Struct_1(vec3<bool>(arg_0.c.a.x, var_0.x != -908f, false), _wgslsmith_clamp_vec2_i32(vec2<i32>(-15210i, arg_1.b.x) >> (u_input.b.wy % vec2<u32>(32u)), vec2<i32>(u_input.a, 0i) & arg_1.b, vec2<i32>(arg_1.b.x, arg_0.c.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-818f, 1133f), vec2<f32>(var_2.c.x, 945f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_2.c.x) - var_2.c), func_4(arg_0.c, Struct_2(236f, 2147483647i, arg_0.c, 119f), true, u_input.c).c.e.zy)), _wgslsmith_dot_vec3_u32(u_input.b.ywy, u_input.b.zxz) <= 4294967295u, vec3<bool>(!arg_1.d, true, true | arg_0.c.e.x)), arg_0, !all(vec2<bool>(true, true)), vec2<u32>(_wgslsmith_add_u32(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, 71728u, u_input.c.x), u_input.b)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(29534u, u_input.c.x), ~u_input.c.x, _wgslsmith_mod_u32(u_input.b.x, 1u)))).c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)))))));
    return arg_0;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.c.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.c.c.x, arg_1.c.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.d, arg_1.c.c.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, arg_1.c.c.x, -420f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-145f, arg_1.c.c.x, -395f), vec3<f32>(-822f, 1626f, arg_1.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, arg_1.c.c.x) + vec3<f32>(arg_1.a, arg_1.a, 869f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, -1000f, 664f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.c.x, 808f, arg_1.c.c.x) + vec3<f32>(arg_1.d, arg_1.c.c.x, -169f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1380f, 653f, arg_1.d)))))));
    let var_2 = select(select(select(!select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0.x), select(vec4<bool>(arg_1.c.a.x, arg_1.c.d, arg_1.c.d, false), vec4<bool>(arg_0.x, arg_1.c.e.x, arg_1.c.a.x, false), select(vec4<bool>(arg_1.c.a.x, true, false, arg_0.x), vec4<bool>(arg_1.c.d, false, false, arg_0.x), false)), !(!arg_0.x)), vec4<bool>(arg_1.c.a.x || true, func_2(_wgslsmith_f_op_f32(round(var_1.x)), !vec4<bool>(arg_0.x, true, arg_1.c.a.x, false), Struct_2(var_1.x, arg_1.b, arg_1.c, -155f), countOneBits(46191i)).e.x, all(!vec2<bool>(arg_1.c.d, false)), true), select(vec4<bool>(arg_0.x, arg_1.c.d, !arg_1.c.d, all(vec3<bool>(false, true, arg_1.c.e.x))), select(!vec4<bool>(arg_0.x, false, true, arg_1.c.a.x), select(vec4<bool>(arg_1.c.e.x, true, arg_0.x, false), vec4<bool>(true, arg_1.c.a.x, arg_1.c.a.x, arg_1.c.d), vec4<bool>(false, false, false, arg_1.c.d)), select(vec4<bool>(arg_1.c.a.x, true, arg_0.x, arg_1.c.a.x), vec4<bool>(arg_1.c.e.x, true, arg_0.x, arg_0.x), false)), select(select(vec4<bool>(arg_1.c.e.x, false, true, true), vec4<bool>(true, arg_0.x, arg_1.c.e.x, arg_0.x), arg_1.c.e.x), !vec4<bool>(arg_1.c.e.x, arg_1.c.d, true, arg_1.c.e.x), arg_1.b <= arg_1.c.b.x))), select(!vec4<bool>(arg_1.c.d, any(vec2<bool>(true, false)), arg_0.x & arg_1.c.e.x, any(vec3<bool>(arg_0.x, false, arg_0.x))), !(!(!vec4<bool>(true, true, arg_0.x, true))), select(vec4<bool>(arg_0.x & true, true, any(arg_1.c.a), arg_1.c.d & arg_1.c.e.x), select(select(vec4<bool>(false, arg_0.x, arg_1.c.e.x, arg_1.c.e.x), vec4<bool>(arg_0.x, false, arg_1.c.a.x, false), arg_0.x), vec4<bool>(false, true, arg_0.x, arg_1.c.a.x), !vec4<bool>(true, true, arg_0.x, arg_1.c.e.x)), select(select(vec4<bool>(arg_1.c.d, false, false, arg_1.c.e.x), vec4<bool>(arg_0.x, arg_0.x, arg_1.c.a.x, arg_1.c.d), arg_0.x), select(vec4<bool>(arg_1.c.d, true, arg_1.c.e.x, false), vec4<bool>(false, arg_0.x, false, true), arg_1.c.e.x), arg_1.c.e.x))), select(!select(vec4<bool>(true, arg_1.c.a.x, false, false), select(vec4<bool>(arg_1.c.e.x, false, true, arg_1.c.d), vec4<bool>(arg_0.x, arg_1.c.d, arg_1.c.e.x, arg_0.x), true), !vec4<bool>(arg_1.c.a.x, arg_0.x, false, true)), !(!(!vec4<bool>(arg_0.x, false, true, arg_0.x))), !vec4<bool>(true, arg_0.x, !arg_1.c.a.x, arg_1.c.d)));
    var var_3 = !select(!(!arg_0), !(!(!vec2<bool>(arg_0.x, var_2.x))), func_4(arg_1.c, func_5(func_4(Struct_1(vec3<bool>(false, false, false), vec2<i32>(-41889i, arg_1.b), var_1.yy, var_2.x, arg_1.c.a), Struct_2(594f, arg_1.c.b.x, arg_1.c, arg_1.d), var_2.x, u_input.b.yx), arg_1.c), true, ~vec2<u32>(4294967295u, u_input.b.x)).c.a.x);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(arg_1.c.c.x - var_1.x), _wgslsmith_f_op_f32(1135f * -460f)))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.d)), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, arg_1.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 197f, arg_1.d) - vec3<f32>(-175f, var_1.x, 1000f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-967f, var_1.x, -1211f) * vec3<f32>(arg_1.a, var_1.x, -966f)))))));
    return Struct_1(vec3<bool>(false, false, (var_2.x | (arg_1.c.d || true)) && any(!var_2)), arg_1.c.b, _wgslsmith_f_op_vec2_f32(-var_1.zx), true, vec3<bool>(func_4(arg_1.c, Struct_2(221f, 2147483647i, Struct_1(var_2.zxx, arg_1.c.b, vec2<f32>(-2099f, -345f), var_3.x, vec3<bool>(var_2.x, arg_0.x, false)), func_5(arg_1, Struct_1(var_2.wxx, vec2<i32>(u_input.a, -24388i), var_1.yx, false, arg_1.c.a)).a), true, ~_wgslsmith_mult_vec2_u32(u_input.c, u_input.b.yy)).c.e.x, select(func_2(-1811f, select(var_2, vec4<bool>(true, arg_0.x, false, false), var_2), arg_1, 1i).e.x, arg_1.c.b.x > ~(-61511i), arg_0.x), all(func_4(arg_1.c, func_4(Struct_1(vec3<bool>(var_3.x, true, true), arg_1.c.b, var_1.zz, true, vec3<bool>(arg_0.x, true, true)), arg_1, true, vec2<u32>(1u, u_input.d)), true | arg_0.x, u_input.c).c.e.yz)));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = func_6(select(vec2<bool>(arg_0.a.x, 65614u >= u_input.d), select(!select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(false, arg_0.e.x), arg_0.a.x), select(arg_0.e.yz, !arg_0.a.xy, select(arg_0.a.yx, arg_0.e.xy, arg_0.e.yx)), true), any(!vec2<bool>(false, arg_0.a.x))), func_5(func_4(func_2(_wgslsmith_f_op_f32(1656f + arg_0.c.x), !vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), Struct_2(arg_0.c.x, u_input.a, Struct_1(vec3<bool>(arg_0.e.x, false, true), vec2<i32>(arg_0.b.x, arg_0.b.x), arg_0.c, arg_0.a.x, vec3<bool>(false, false, false)), 226f), arg_0.b.x), Struct_2(arg_0.c.x, u_input.a, Struct_1(arg_0.a, vec2<i32>(-1881i, -55371i), arg_0.c, true, vec3<bool>(false, false, arg_0.a.x)), arg_0.c.x), all(!vec3<bool>(false, true, arg_0.a.x)), select(u_input.c, countOneBits(vec2<u32>(1849u, 109356u)), true)), Struct_1(vec3<bool>(arg_0.d, true, any(arg_0.e)), firstLeadingBit(vec2<i32>(u_input.a, arg_0.b.x)), arg_0.c, false, !select(vec3<bool>(false, true, false), vec3<bool>(arg_0.a.x, arg_0.e.x, arg_0.a.x), arg_0.e))));
    var var_1 = 1u;
    var var_2 = any(vec4<bool>(!any(var_0.e.yz), func_5(func_4(arg_0, Struct_2(var_0.c.x, u_input.a, arg_0, var_0.c.x), u_input.c.x != 3874u, u_input.c | u_input.b.wx), func_4(func_6(vec2<bool>(arg_0.d, var_0.d), Struct_2(arg_0.c.x, arg_0.b.x, Struct_1(vec3<bool>(arg_0.e.x, arg_0.e.x, true), vec2<i32>(u_input.a, u_input.a), vec2<f32>(-1959f, var_0.c.x), true, vec3<bool>(var_0.d, var_0.d, false)), -592f)), func_4(Struct_1(var_0.a, arg_0.b, vec2<f32>(var_0.c.x, 1313f), var_0.e.x, arg_0.a), Struct_2(-1000f, u_input.a, arg_0, 949f), false, u_input.c), true, vec2<u32>(u_input.c.x, 97108u) >> (u_input.c % vec2<u32>(32u))).c).c.e.x, !(_wgslsmith_f_op_f32(abs(-632f)) == func_5(Struct_2(var_0.c.x, 3385i, arg_0, var_0.c.x), Struct_1(vec3<bool>(false, false, true), vec2<i32>(arg_0.b.x, u_input.a), vec2<f32>(arg_0.c.x, arg_0.c.x), var_0.e.x, vec3<bool>(var_0.a.x, true, arg_0.a.x))).a), false | var_0.a.x));
    let var_3 = ~u_input.c.x;
    var var_4 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(~0u, u_input.c.x), ~33584u, ~u_input.c.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(true, func_1(Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec2<i32>(u_input.a, -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(295f, 891f)), all(vec2<bool>(true, true)), vec3<bool>(true, true, true))), func_1(func_6(vec2<bool>(true, true), func_4(Struct_1(vec3<bool>(false, false, true), vec2<i32>(u_input.a, u_input.a), vec2<f32>(-345f, -775f), false, vec3<bool>(false, false, true)), Struct_2(-1176f, u_input.a, Struct_1(vec3<bool>(false, false, true), vec2<i32>(-63720i, u_input.a), vec2<f32>(469f, 721f), true, vec3<bool>(true, false, true)), -1000f), false, u_input.b.xz)))), -vec2<i32>(_wgslsmith_sub_i32(-2734i, _wgslsmith_add_i32(37165i, u_input.a)), u_input.a >> (u_input.c.x % 32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-813f, -461f))))))), true, select(func_4(func_2(_wgslsmith_f_op_f32(sign(-390f)), vec4<bool>(false, false, false, false), Struct_2(-159f, u_input.a, Struct_1(vec3<bool>(true, true, false), vec2<i32>(9162i, 28387i), vec2<f32>(-108f, 300f), false, vec3<bool>(true, true, false)), 1000f), -2147483647i), func_4(Struct_1(vec3<bool>(false, true, false), vec2<i32>(1i, 25415i), vec2<f32>(650f, -255f), false, vec3<bool>(true, true, true)), func_5(Struct_2(1865f, 54708i, Struct_1(vec3<bool>(true, false, true), vec2<i32>(u_input.a, u_input.a), vec2<f32>(1843f, 290f), true, vec3<bool>(true, false, true)), -1107f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(2147483647i, 0i), vec2<f32>(273f, -618f), true, vec3<bool>(true, false, false))), false, abs(u_input.c)), true, ~(~u_input.c)).c.a, !func_2(_wgslsmith_f_op_f32(floor(-422f)), vec4<bool>(true, true, false, false), func_4(Struct_1(vec3<bool>(true, true, true), vec2<i32>(u_input.a, u_input.a), vec2<f32>(-977f, 470f), true, vec3<bool>(true, false, false)), Struct_2(1580f, u_input.a, Struct_1(vec3<bool>(false, false, true), vec2<i32>(0i, u_input.a), vec2<f32>(-1071f, -1912f), true, vec3<bool>(true, false, false)), 474f), true, u_input.b.xy), ~u_input.a).a, true));
    let var_1 = ~abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u)), reverseBits(1u) << (u_input.b.x % 32u), ~(~u_input.c.x)));
    var var_2 = u_input.b.zxy;
    var_2 = _wgslsmith_mod_vec3_u32(u_input.b.xyw, _wgslsmith_sub_vec3_u32(~max(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, var_2.x, 1u), u_input.b.wyy), u_input.b.wzz & u_input.b.zwx), ~vec3<u32>(38486u, 4294967295u, 78165u)));
    let var_3 = var_0;
    let var_4 = u_input.b.yyz;
    var var_5 = select(!vec4<bool>(!var_3.d, false, 1u < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 65277u, u_input.c.x, u_input.d), vec4<u32>(24307u, 4294967295u, 4294967295u, 3474u)), var_0.d), vec4<bool>(true, var_0.d, all(!select(vec4<bool>(var_0.a.x, false, var_0.e.x, false), vec4<bool>(var_0.e.x, var_3.a.x, true, var_0.e.x), vec4<bool>(true, true, true, false))), any(vec3<bool>(func_1(var_0), true, !var_3.e.x))), true);
    var_2 = select(u_input.b.zzy, vec3<u32>(func_3(func_4(Struct_1(vec3<bool>(true, false, var_5.x), vec2<i32>(1i, 32767i), vec2<f32>(-1200f, -209f), false, var_5.wzx), func_4(var_3, Struct_2(var_0.c.x, u_input.a, var_0, var_3.c.x), var_0.a.x, vec2<u32>(var_1, 72547u)), func_6(vec2<bool>(false, var_0.e.x), Struct_2(var_0.c.x, 1i, Struct_1(vec3<bool>(var_5.x, false, var_5.x), vec2<i32>(8246i, 3341i), vec2<f32>(var_3.c.x, var_0.c.x), var_5.x, var_3.e), -1311f)).a.x, ~vec2<u32>(1u, 7691u)).c.e, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, var_0.b.x), -67501i)), ~var_2.x, 25925u), !(!vec3<bool>(all(var_0.e), true, var_0.e.x)));
    var var_6 = ~(~max(firstTrailingBit(~vec4<i32>(var_3.b.x, -37443i, -12881i, var_0.b.x)), -vec4<i32>(u_input.a, 0i, -25283i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-606f, _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_div_f32(-454f, var_3.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.c.x - var_0.c.x)))), var_0.c.x, -938f, _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(sign(-483f)))), ~(~0u));
}

