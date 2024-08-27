struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = select(arg_1.a.wyw, arg_1.a.wwy, true);
    var var_1 = arg_1;
    var var_2 = vec2<i32>(-1i) * -max(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.b.x, 0i)), vec2<i32>(countOneBits(1i), ~u_input.b.x));
    let var_3 = ~_wgslsmith_mod_u32(67290u, _wgslsmith_sub_u32(max(u_input.c.x, u_input.c.x) | ~u_input.c.x, 1u));
    let var_4 = _wgslsmith_div_vec4_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 34214u, u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 1u, 10900u, 0u), vec4<u32>(u_input.c.x, 61245u, 80720u, 0u))))), select(select(_wgslsmith_add_vec4_u32(~vec4<u32>(var_3, u_input.c.x, 21500u, 1u), vec4<u32>(var_3, var_3, 4294967295u, 70053u) >> (vec4<u32>(4294967295u, u_input.c.x, var_3, 17470u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, var_3, u_input.c.x, u_input.c.x), vec4<u32>(var_3, 95798u, var_3, var_3), var_1.a), vec4<u32>(var_3, 26935u, var_3, u_input.c.x)), var_3 > u_input.c.x), ~(~vec4<u32>(var_3, u_input.c.x, 0u, var_3) & vec4<u32>(var_3, 1u, var_3, 4294967295u)), var_1.a));
    return 2147483647i;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> bool {
    var var_0 = 1068f;
    var_0 = _wgslsmith_f_op_f32(trunc(-1007f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = vec2<i32>(abs(_wgslsmith_clamp_i32(-arg_1, 2147483647i, 1i) >> (~arg_2.x % 32u)), func_3(u_input.b.x, Struct_1(vec4<bool>(true, false, any(vec4<bool>(arg_0, false, false, arg_0)), !arg_0), 1917f, vec4<f32>(1f, -868f, 1914f, _wgslsmith_f_op_f32(-910f + 215f)), false)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-307f)));
    return any(select(select(select(!vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, arg_0, arg_0, arg_0)), !select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, true)), !select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(true, arg_0, true, true), arg_0)), select(vec4<bool>(false, false && arg_0, true, true), select(!vec4<bool>(arg_0, true, true, false), !vec4<bool>(true, arg_0, true, true), arg_0), true), vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_4(vec4<f32>(-1069f, -303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-798f)))), 229f), 219f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(551f, -383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f - 520f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(161f)) * _wgslsmith_f_op_f32(step(-268f, 138f)))), vec3<f32>(-2109f, -992f, 446f), true)), false);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -458f, 1263f, 617f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-438f, var_0.c.x, -709f, 287f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(var_0.a)))))))), -2695f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, 534f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 1317f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(486f, var_0.c.x, -346f), var_0.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(377f, var_0.a.x, -358f) * var_0.c)), select(vec3<bool>(arg_2.x, arg_1.x, arg_1.x), select(arg_2, arg_2, arg_2.x), arg_2))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.a.x, -1043f)))))), true);
    var_0 = Struct_4(vec4<f32>(-1895f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1383f + var_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-487f))), _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(abs(-896f)), var_0.c, true);
    var var_1 = Struct_2(Struct_1(vec4<bool>(true, (true && var_0.d) & true, arg_1.x, arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + -782f)), var_0.a, (true || var_0.d) || (_wgslsmith_f_op_f32(max(var_0.a.x, -1000f)) > _wgslsmith_f_op_f32(sign(var_0.b)))), ~u_input.c.x, Struct_1(arg_0, -739f, _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_0.a, var_0.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, var_0.a.x, var_0.a.x, var_0.b), vec4<f32>(var_0.c.x, var_0.b, 629f, var_0.a.x))), true))), (0u > select(59175u, 27729u, arg_2.x)) | false), -425f, Struct_1(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))), _wgslsmith_f_op_vec4_f32(-var_0.a), true));
    var_1 = Struct_2(var_1.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(var_1.b, u_input.c.x), 8881u, var_1.b), countOneBits(u_input.c.x << (var_1.b % 32u))), Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812f * var_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1.c.c.x)), _wgslsmith_f_op_f32(max(var_1.e.b, 865f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, var_1.a.c.x))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -956f) != _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1723f - 401f)))))), var_1.c);
    return var_1.c;
}

fn func_1(arg_0: vec2<f32>) -> Struct_5 {
    let var_0 = Struct_2(func_4(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec3<bool>(true, func_2(false, countOneBits(u_input.b.x), vec3<u32>(0u, u_input.c.x, u_input.c.x)), true)), 71536u, Struct_1(select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), vec4<bool>(true, true, u_input.c.x >= u_input.c.x, false), vec4<bool>(true, true, u_input.b.x != -2147483647i, true)), -627f, vec4<f32>(229f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)), _wgslsmith_f_op_f32(-arg_0.x)), 4294967295u != ~u_input.c.x), _wgslsmith_f_op_f32(-875f + 115f), func_4(vec4<bool>(true, false, !all(vec4<bool>(true, true, true, true)), !(0u < u_input.c.x)), !vec2<bool>(any(vec2<bool>(true, true)), 9248u >= u_input.c.x), vec3<bool>(true, max(u_input.a.x, -34469i) < -4709i, true)));
    let var_1 = _wgslsmith_div_u32(4294967295u, ~var_0.b);
    var var_2 = Struct_2(var_0.c, _wgslsmith_sub_u32(u_input.c.x, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(59693u, 1u, u_input.c.x, 11808u), vec4<u32>(1u, 4294967295u, u_input.c.x, var_0.b), vec4<bool>(var_0.a.d, false, true, var_0.a.d)), vec4<u32>(u_input.c.x, 57235u, u_input.c.x, 1u) >> (vec4<u32>(0u, 1u, 34018u, 1u) % vec4<u32>(32u)))), Struct_1(vec4<bool>(var_0.a.d, var_0.c.d, any(select(vec2<bool>(false, true), var_0.e.a.xx, true)), true), _wgslsmith_div_f32(var_0.c.b, 996f), vec4<f32>(294f, _wgslsmith_f_op_f32(ceil(-961f)), 682f, _wgslsmith_div_f32(var_0.c.c.x, _wgslsmith_f_op_f32(sign(arg_0.x)))), var_0.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -678f), func_4(vec4<bool>(true, select(false && var_0.a.a.x, var_0.a.d, var_0.e.d), false, var_0.e.d), vec2<bool>(var_0.a.d, !(var_1 > var_1)), !(!(!var_0.c.a.wyy))));
    let var_3 = true;
    var var_4 = (_wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(var_1), var_2.b, 38789u, _wgslsmith_clamp_u32(0u, 4294967295u, 2127u)), vec4<u32>(28031u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, u_input.c.x, u_input.c.x), vec3<u32>(var_2.b, 4294967295u, 11295u)), firstTrailingBit(0u), 26404u)) ^ vec4<u32>(var_0.b, var_0.b, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_add_u32(var_1, u_input.c.x)), var_2.b)) ^ (~vec4<u32>(6012u, 4294967295u << (var_0.b % 32u), ~var_1, ~59779u) & (~(~vec4<u32>(48891u, var_0.b, var_0.b, 2736u)) & abs(vec4<u32>(var_0.b, 16429u, 4294967295u, var_2.b) << (vec4<u32>(u_input.c.x, 0u, var_1, 61599u) % vec4<u32>(32u)))));
    return Struct_5(any(var_2.a.a) && select(var_3 | (-10443i < u_input.b.x), any(!vec3<bool>(var_2.c.d, var_3, false)), all(!var_0.c.a.yzz)), -(~vec4<i32>(1i, 0i, u_input.b.x, 43723i)) & _wgslsmith_mod_vec4_i32(u_input.a, u_input.a));
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = func_4(!(!arg_3.a.a), arg_3.e.a.xy, vec3<bool>(any(!select(arg_3.a.a.yzy, vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_3.e.d, arg_2, true))), true, !(1000f <= _wgslsmith_f_op_f32(-arg_3.e.c.x))));
    var var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_div_f32(-1135f, arg_3.d))), var_0.c.x, arg_3.c.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.e.c.x, -359f)) + -2202f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.b, -1072f)))), -arg_0.b.x >= func_3(arg_0.b.x, arg_3.e)))), arg_3.d, _wgslsmith_f_op_vec3_f32(select(arg_3.e.c.zxz, var_0.c.zxz, select(!(u_input.b.x > 21860i), any(vec2<bool>(var_0.d, true)), false))), arg_2);
    let var_2 = arg_3;
    let var_3 = !select(~u_input.b.x >= arg_0.b.x, true && (false | arg_3.c.d), !all(vec2<bool>(true, true))) != !(arg_3.d >= var_0.c.x);
    var_1 = Struct_4(arg_3.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f - var_1.a.x)) * _wgslsmith_div_f32(1546f, _wgslsmith_div_f32(1000f, -1626f))) - -246f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -831f))), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-arg_3.e.b)))), !var_3);
    return vec4<i32>(2147483647i & -(~arg_0.b.x), 1i, -26628i, u_input.b.x) << (min(~(~(~vec4<u32>(var_2.b, u_input.c.x, 37855u, 87903u))), ~(vec4<u32>(29432u, arg_1, 0u, var_2.b) | vec4<u32>(arg_1, u_input.c.x, 31994u, arg_1)) << (~(vec4<u32>(arg_1, var_2.b, var_2.b, var_2.b) << (vec4<u32>(arg_3.b, var_2.b, arg_1, arg_3.b) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec2<f32>(-1352f, _wgslsmith_f_op_f32(abs(677f)))), u_input.c.x, select(!(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) <= ~u_input.c.x), 0u == _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, 0u), u_input.c.x), true), Struct_2(func_4(func_4(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec3<bool>(true, true, true)).a, vec2<bool>(true, true), !func_4(vec4<bool>(false, true, true, false), vec2<bool>(true, true), vec3<bool>(false, true, true)).a.zwz), u_input.c.x, func_4(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), any(vec4<bool>(false, false, true, false))), vec2<bool>(true, true), vec3<bool>(u_input.c.x < u_input.c.x, true, true)), _wgslsmith_f_op_f32(-1f), Struct_1(vec4<bool>(true, true, u_input.c.x <= 4294967295u, u_input.b.x <= u_input.b.x), 1780f, _wgslsmith_div_vec4_f32(vec4<f32>(837f, -103f, -1025f, -2307f), _wgslsmith_f_op_vec4_f32(vec4<f32>(526f, -1196f, 1000f, -632f) - vec4<f32>(711f, -360f, 3233f, 606f))), (u_input.a.x >> (u_input.c.x % 32u)) == -u_input.b.x)));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1675f, -335f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1988f, -2192f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1704f, -409f) + vec2<f32>(-341f, 318f))))));
    let var_3 = ~(-firstTrailingBit(reverseBits(_wgslsmith_add_vec3_i32(var_0.xzx, u_input.b))));
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(var_2.x)), var_2.x, _wgslsmith_f_op_f32(sign(var_2.x))))))), func_4(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, false, false), func_4(vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec3<bool>(false, false, false)).a), vec2<bool>(any(vec4<bool>(false, false, true, false)) & all(vec3<bool>(true, false, true)), all(vec2<bool>(false, false)) | (var_0.x >= 1i)), vec3<bool>(false, select(true, true, var_0.x <= u_input.b.x), all(vec2<bool>(false, false)))).c));
    var var_5 = Struct_2(func_4(func_4(!func_4(vec4<bool>(true, true, true, false), vec2<bool>(false, false), vec3<bool>(true, false, false)).a, vec2<bool>(true, true), vec3<bool>(true, true, true)).a, func_4(!func_4(vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec3<bool>(false, false, false)).a, vec2<bool>(true, true), vec3<bool>(func_2(false, -1391i, vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), -628f < var_2.x, true)).a.wx, !vec3<bool>(true, true, u_input.c.x != 1u)), ~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), Struct_1(func_4(vec4<bool>(true, true, true, true), vec2<bool>(false, u_input.c.x < 1u), vec3<bool>(true, true, true)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 825f) * var_4.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_4.x), -1457f, _wgslsmith_f_op_f32(min(var_4.x, 160f)), _wgslsmith_f_op_f32(trunc(-271f))) + vec4<f32>(-1293f, 647f, func_4(vec4<bool>(false, true, false, false), vec2<bool>(true, false), vec3<bool>(false, true, false)).b, var_4.x)), !func_2(all(vec3<bool>(true, true, false)), 0i, vec3<u32>(41390u, 52446u, u_input.c.x))), 1892f, func_4(vec4<bool>(false, true == (-2147483647i < var_0.x), !func_4(vec4<bool>(false, false, false, true), vec2<bool>(false, false), vec3<bool>(true, true, true)).a.x, func_4(vec4<bool>(false, true, true, false), vec2<bool>(false, true), vec3<bool>(false, false, false)).d && (-579f < var_2.x)), vec2<bool>(true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), func_4(vec4<bool>(true, false, false, true), vec2<bool>(false, false), vec3<bool>(true, true, false)).a.xyz)));
    let var_6 = var_5.c.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_0.x, ~(~11763i)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(663f + var_4.x), 1000f, var_5.e.d)), _wgslsmith_f_op_f32(exp2(var_2.x))), 538f)));
}

