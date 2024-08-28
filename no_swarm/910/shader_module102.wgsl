struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1750f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -628f))) - 249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(687f + -1000f))), _wgslsmith_f_op_f32(-288f - 1f)))));
    var var_0 = reverseBits(-arg_0.xz);
    var var_1 = Struct_1(select(vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, false))), select(vec4<bool>(true, u_input.a == var_0.x, true, any(vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, 18298i != u_input.a), vec4<bool>(true, true, true, arg_0.x > -41291i))), -247f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1531f, -1495f, 437f) * vec3<f32>(513f, -1530f, 1307f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1700f, 1513f, 650f)))))), 1u);
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(711f - var_1.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b, var_1.c.x, var_1.b))))))), _wgslsmith_mod_u32(~var_1.d, ~0u));
    var var_3 = true || var_1.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-166f * var_1.b), -1657f)))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(arg_2))));
    let var_0 = Struct_1(select(select(select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(true, true, true, true), arg_1), vec4<bool>(true, true, arg_0.a.x <= -433f, !arg_1), !any(vec2<bool>(arg_1, false))), !select(select(vec4<bool>(true, false, false, arg_1), vec4<bool>(false, false, false, true), vec4<bool>(arg_1, arg_1, arg_1, false)), vec4<bool>(arg_1, false, arg_1, arg_1), !vec4<bool>(arg_1, arg_1, arg_1, true)), !select(select(vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(arg_1, true, arg_1, arg_1), false), select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(false, true, false, false), arg_1), any(vec4<bool>(false, arg_1, arg_1, arg_1)))), -307f, vec3<f32>(_wgslsmith_f_op_f32(step(-158f, arg_0.a.x)), arg_0.a.x, -353f), ~23615u);
    global0 = _wgslsmith_f_op_f32(1853f - _wgslsmith_f_op_f32(-var_0.c.x));
    let var_1 = Struct_1(select(vec4<bool>(any(select(vec3<bool>(var_0.a.x, true, arg_1), var_0.a.wyx, var_0.a.x)), !(!var_0.a.x), true, var_0.a.x), select(var_0.a, var_0.a, any(select(var_0.a.xw, var_0.a.yx, arg_1))), select(vec4<bool>(true, false, !var_0.a.x, !arg_1), select(!var_0.a, select(var_0.a, vec4<bool>(false, arg_1, false, arg_1), false), true), var_0.a)), _wgslsmith_f_op_f32(-494f + -1000f), _wgslsmith_f_op_vec3_f32(exp2(var_0.c)), u_input.b);
    global0 = _wgslsmith_f_op_f32(824f * -303f);
    return !(!select(var_0.a.ww, vec2<bool>(false, true != var_0.a.x), false != (var_0.d <= 0u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = 2782u;
    let var_1 = max(~firstTrailingBit(~(~vec3<u32>(u_input.b, 1u, 0u))), vec3<u32>(~1u, 4294967295u, ~_wgslsmith_mult_u32(u_input.b, u_input.b)) << (min(min(vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 44802u, 3903u), vec3<u32>(u_input.b, 4294967295u, 4409u))), vec3<u32>(31004u, u_input.b, firstLeadingBit(4294967295u))) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_add_vec3_i32(-(~vec3<i32>(u_input.a, u_input.a, 1i)), _wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.a, -1i, 0i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(12228i, u_input.a, u_input.a))), countOneBits(vec3<i32>(1i & u_input.a, 0i, u_input.a))));
    let var_3 = (min(firstTrailingBit(~vec4<u32>(43918u, u_input.b, 66339u, u_input.b)), firstTrailingBit(firstLeadingBit(vec4<u32>(var_1.x, u_input.b, var_1.x, 70693u)))) >> (firstLeadingBit(vec4<u32>(~u_input.b, var_1.x & var_1.x, ~27271u, ~1u)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, var_1.x), 4294967295u, var_1.x, var_1.x), ~vec4<u32>(var_1.x, select(var_1.x, u_input.b, true), 33269u, u_input.b));
    let var_4 = _wgslsmith_div_i32(var_2.x, 1i);
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_3(select(vec3<i32>(51825i, var_4, var_2.x), vec3<i32>(1i, 20648i, var_4), true))), arg_2, -715f, _wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_f32(sign(arg_2)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    return Struct_1(!vec4<bool>(true, true, !(u_input.a <= u_input.a), false), -1000f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1322f), _wgslsmith_f_op_f32(ceil(274f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(111f - -3126f), _wgslsmith_f_op_f32(-arg_3.a.x)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, select(arg_0.x, u_input.b, true)), ~0u), ~countOneBits(u_input.b) ^ (~25002u << (u_input.b % 32u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = u_input.b;
    var var_1 = func_5(firstLeadingBit(vec3<u32>(arg_0.x, 1u, _wgslsmith_mult_u32(u_input.b, firstTrailingBit(0u)))), func_4(vec2<bool>(any(func_2(Struct_2(vec4<f32>(569f, -1481f, arg_1.a.x, -1509f), -759f), false, vec3<i32>(32733i, u_input.a, u_input.a))), true), vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), true, true | all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(func_3(vec3<i32>(i32(-1i) * -2147483647i, u_input.a, ~(-2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b)))), arg_1.a.wxx, arg_1);
    let var_2 = select(vec4<bool>(var_1.a.x, true & !(var_1.a.x && false), !any(func_2(arg_1, true, vec3<i32>(-1i, u_input.a, 18430i))), (u_input.a >= -879i) || var_1.a.x), !func_5(arg_0.wxy, arg_1, var_1.c, arg_1).a, !var_1.a.x);
    let var_3 = select(vec2<u32>(reverseBits(~0u), 0u), ~vec2<u32>(_wgslsmith_add_u32(~arg_0.x, u_input.b), 1u), select(func_2(arg_1, true, ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(13768i, u_input.a, 2147483647i))), select(vec2<bool>(any(vec4<bool>(var_1.a.x, var_1.a.x, var_2.x, var_1.a.x)), !var_1.a.x), vec2<bool>(false == var_1.a.x, any(vec2<bool>(true, true))), !var_2.x), vec2<bool>(false, var_1.a.x)));
    var_1 = func_5(_wgslsmith_sub_vec3_u32(arg_0.wzx & ~reverseBits(arg_0.zwy), _wgslsmith_div_vec3_u32(vec3<u32>(var_3.x, 1533u, var_1.d), vec3<u32>(_wgslsmith_mult_u32(1u, 1u), var_1.d, 9991u << (var_3.x % 32u)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(214f, arg_1.b, var_1.c.x, -1274f), arg_1.a)), arg_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(648f, -1998f, _wgslsmith_f_op_f32(1204f + 1766f)), vec3<f32>(1959f, arg_1.a.x, var_1.c.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(arg_1.a, vec4<f32>(-114f, 203f, var_1.b, 412f))), _wgslsmith_f_op_vec4_f32(-arg_1.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(356f + arg_1.b))))));
    return vec4<bool>(true, ~(_wgslsmith_sub_u32(u_input.b, 1u) | 18443u) <= abs(select(arg_0.x, 0u, var_2.x) & countOneBits(24696u)), any(func_5(arg_0.wxx, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(456f, arg_1.b, -1000f, arg_1.a.x) + arg_1.a), var_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(218f, arg_1.b, var_1.b)))), func_4(!vec2<bool>(var_2.x, true), var_1.a.yww, _wgslsmith_f_op_f32(-var_1.c.x), -550f)).a.zy), func_5(vec3<u32>(var_3.x, 7893u, func_5(arg_0.wxw, arg_1, vec3<f32>(var_1.c.x, var_1.c.x, arg_1.a.x), Struct_2(vec4<f32>(arg_1.a.x, -425f, arg_1.b, -1916f), var_1.c.x)).d ^ (25553u >> (arg_0.x % 32u))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1520f, 2563f, 235f, arg_1.a.x)))), _wgslsmith_f_op_f32(max(arg_1.b, func_4(vec2<bool>(false, var_2.x), var_1.a.wzw, var_1.b, 576f).b))), _wgslsmith_f_op_vec3_f32(step(arg_1.a.xyw, _wgslsmith_f_op_vec3_f32(step(var_1.c, _wgslsmith_div_vec3_f32(var_1.c, arg_1.a.zzy))))), arg_1).a.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<f32>) -> bool {
    let var_0 = func_5(arg_2, func_4(vec2<bool>(!arg_0.a.x, !arg_0.a.x), select(arg_0.a.xxx, !func_1(vec4<u32>(arg_2.x, 4294967295u, 21357u, arg_1.d), Struct_2(vec4<f32>(815f, arg_3.x, arg_1.c.x, arg_3.x), arg_1.b)).wxx, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), arg_3.x)), 426f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.c.x, arg_3.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_1.c.x, arg_1.c.x), arg_0.c, true))), vec3<f32>(-884f, -1253f, _wgslsmith_f_op_f32(trunc(-187f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, arg_3.x, false))), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(select(arg_0.b, arg_3.x, arg_0.a.x & arg_1.a.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1105f, 860f, -1567f, -444f), vec4<f32>(817f, arg_0.b, -1717f, arg_1.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1666f, 1596f, arg_1.c.x, 839f) + vec4<f32>(-1000f, -228f, -1835f, 577f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(186f, 1877f, arg_0.b, arg_0.b))))), -164f));
    let var_1 = countOneBits(var_0.d);
    var var_2 = !all(vec3<bool>(select(func_5(arg_2, Struct_2(vec4<f32>(arg_0.b, 141f, 148f, 1165f), -818f), vec3<f32>(var_0.c.x, 356f, 1132f), Struct_2(vec4<f32>(689f, -1237f, arg_0.b, -512f), 682f)).a.x, arg_0.a.x, all(vec4<bool>(var_0.a.x, arg_1.a.x, arg_0.a.x, false))), var_0.a.x, arg_1.a.x));
    global0 = 817f;
    var_2 = func_5(~(countOneBits(arg_2 >> (arg_2 % vec3<u32>(32u))) | reverseBits(vec3<u32>(694u, var_1, 4294967295u))), func_4(arg_0.a.ww, !vec3<bool>(var_0.a.x && arg_0.a.x, false, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.x - var_0.c.x), -828f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.c.x * var_0.c.x))), 775f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.b) * 100f), -466f, _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.c)))), select(func_1(vec4<u32>(arg_2.x, 32586u, 1u, 4294967295u) | vec4<u32>(u_input.b, 15030u, 13819u, var_1), func_4(var_0.a.zz, arg_0.a.zwy, arg_0.c.x, arg_3.x)).xwy, vec3<bool>(true, true, true), !select(vec3<bool>(false, false, var_0.a.x), arg_0.a.xyw, true)))), func_4(select(!(!arg_1.a.xy), select(select(arg_1.a.yz, vec2<bool>(false, arg_1.a.x), arg_1.a.x), func_2(Struct_2(vec4<f32>(arg_3.x, arg_3.x, var_0.c.x, -461f), 1000f), true, vec3<i32>(-2147483647i, u_input.a, -1i)), var_0.a.yy), !arg_1.a.x && (4294967295u < arg_0.d)), !(!(!arg_0.a.zyx)), 1000f, -1673f)).a.x;
    return !(func_5(arg_2, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(514f, arg_1.b, arg_3.x, arg_3.x)), 1102f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-683f, arg_0.b, 133f) * _wgslsmith_f_op_vec3_f32(-var_0.c)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 1000f, -389f, 1006f)), _wgslsmith_f_op_f32(f32(-1f) * -445f))).a.x | false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(func_6(Struct_1(func_1(vec4<u32>(u_input.b, 1u, 4294967295u, 1u), Struct_2(vec4<f32>(1000f, -1124f, -1106f, 543f), -1923f)), -1984f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-768f, 1000f, 374f)), 4294967295u), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(1509f * 683f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, -1203f, 700f)), 50872u << (u_input.b % 32u)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(22267u, 70725u, 24137u)), ~vec3<u32>(1u, 1u, u_input.b)), func_4(vec2<bool>(true, true), func_5(vec3<u32>(62814u, 1u, u_input.b), Struct_2(vec4<f32>(262f, -247f, 135f, 1466f), 1680f), vec3<f32>(1000f, 1480f, 541f), Struct_2(vec4<f32>(508f, -737f, 2305f, 2595f), -764f)).a.zxz, _wgslsmith_f_op_f32(max(-342f, 1307f)), _wgslsmith_f_op_f32(-777f * -1000f)).a.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f + -565f)) < func_4(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec3<bool>(false, false, false), -510f, _wgslsmith_div_f32(-1234f, -201f)).a.x, true, !any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), 880f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -435f), 412f, _wgslsmith_f_op_f32(sign(-827f)))), ~(~(~_wgslsmith_div_u32(0u, u_input.b))));
    var var_1 = func_4(func_5(max(reverseBits(vec3<u32>(48669u, var_0.d, 127227u)) >> (abs(vec3<u32>(4294967295u, 25038u, u_input.b)) % vec3<u32>(32u)), ~min(vec3<u32>(1u, 39648u, u_input.b), vec3<u32>(var_0.d, var_0.d, u_input.b))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1571f, var_0.b, var_0.c.x, var_0.b) * vec4<f32>(-236f, var_0.c.x, -189f, 1494f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 546f, -1436f, -969f))), -1136f), vec3<f32>(_wgslsmith_f_op_f32(floor(-2247f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1921f * var_0.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(1084f - 518f), u_input.a >= u_input.a))), func_4(!func_1(vec4<u32>(101151u, 47881u, 46756u, 1u), Struct_2(vec4<f32>(-442f, var_0.b, var_0.b, var_0.b), -215f)).wy, var_0.a.yxy, var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1108f))).a.zz, select(var_0.a.yyz, vec3<bool>(var_0.a.x, var_0.a.x, any(!var_0.a.zw)), var_0.a.x), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-480f * -1031f), _wgslsmith_f_op_f32(floor(-598f))))) + _wgslsmith_f_op_f32(-var_0.b)));
    var var_2 = 1u;
    var_2 = ~20662u;
    var var_3 = vec4<bool>(!all(!(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x))), var_0.a.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a >> (4294967295u % 32u), u_input.a), min(~2147483647i, abs(u_input.a))) > ~((u_input.a >> (u_input.b % 32u)) & abs(-2147483647i)), !var_0.a.x);
    var_3 = !select(var_0.a, func_1(vec4<u32>(u_input.b, 5237u, reverseBits(u_input.b), max(0u, u_input.b)), func_4(var_0.a.yw, vec3<bool>(var_0.a.x, true, false), var_0.b, -496f)), var_3.x || ((var_0.a.x != var_3.x) | var_3.x));
    var var_4 = select(~select(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a), false), ~vec2<i32>(-1i, 0i)), abs(~vec2<i32>(u_input.a, -38239i)), true), _wgslsmith_sub_vec2_i32(~(~(~vec2<i32>(u_input.a, u_input.a))), -vec2<i32>(-51913i, i32(-1i) * -24370i)), vec2<bool>(!var_3.x, 406f <= _wgslsmith_f_op_f32(round(652f))));
    let var_5 = firstTrailingBit(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, 1u), vec2<u32>(u_input.b, 67712u)), (1u ^ var_0.d) | _wgslsmith_sub_u32(var_0.d, var_0.d)) & reverseBits(~(~vec2<u32>(u_input.b, 0u))));
    var var_6 = _wgslsmith_dot_vec2_i32(~vec2<i32>(var_4.x, 8511i) | _wgslsmith_mod_vec2_i32(max(~vec2<i32>(25679i, var_4.x), ~vec2<i32>(19482i, var_4.x)), -max(vec2<i32>(49912i, -48178i), vec2<i32>(var_4.x, var_4.x))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_4.x), vec2<i32>(-46117i, var_4.x), vec2<i32>(var_4.x, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(25023i, u_input.a), vec2<i32>(var_4.x, u_input.a))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, 2147483647i), -vec2<i32>(var_4.x, 2147483647i), -vec2<i32>(1i, 10883i)), reverseBits(firstTrailingBit(vec2<i32>(2147483647i, var_4.x)))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_4.x, 2147483647i) >> (var_5 % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(-26679i, u_input.a)), vec2<i32>(0i, var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_4.x, 22240i, u_input.a), vec3<i32>(1i, u_input.a, var_4.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 1i), vec3<i32>(-47766i, var_4.x, -13355i))));
}

