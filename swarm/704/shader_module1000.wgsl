struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = ~vec2<u32>(0u, ~(~27418u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * 1f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = select(select(vec4<bool>(!arg_2.b != (u_input.c.x < 0i), !(-335f < arg_2.a), true, true), select(!vec4<bool>(true, arg_2.b, true, arg_2.b), !select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), vec4<bool>(false, arg_2.b, global0.x, true), true), true), select(true, !select(false, arg_0.b, arg_0.b), all(vec4<bool>(true, arg_0.b, false, global0.x)))), !(!(!(!vec4<bool>(global0.x, true, arg_0.b, false)))), (_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, 589u), ~u_input.b) >= 0u) | ((arg_0.b == (arg_2.b | global0.x)) && arg_0.b));
    let var_1 = arg_0;
    let var_2 = arg_0;
    global0 = vec2<bool>(any(vec3<bool>(false, select(arg_0.b, func_3(), true), true)), arg_2.b);
    var var_3 = arg_2;
    return vec2<bool>(any(select(vec4<bool>(true, true, !var_0.x, var_2.b || var_3.b), !select(vec4<bool>(var_3.b, var_2.b, var_1.b, false), vec4<bool>(true, var_0.x, var_3.b, true), vec4<bool>(false, false, true, true)), true)), any(select(vec4<bool>(true, !var_0.x, !global0.x, u_input.a <= u_input.a), vec4<bool>(any(vec4<bool>(var_1.b, false, false, var_0.x)), true, true, global0.x || arg_2.b), select(select(vec4<bool>(global0.x, arg_0.b, false, var_2.b), vec4<bool>(var_2.b, false, true, var_2.b), vec4<bool>(false, true, false, var_1.b)), vec4<bool>(true, true, false, true), all(var_0.xzy)))));
}

fn func_2() -> vec3<u32> {
    global0 = func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -142f), global0.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-507f, 1000f, 251f), vec3<f32>(782f, 1000f, 213f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, 1416f, -188f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2074f, -761f, 366f)))), global0.x))), u_input.b, Struct_1(-924f, func_3(), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(720f, 121f), 229f, -420f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2122f, 984f, 126f)))))));
    global0 = vec2<bool>(false & !func_4(Struct_1(976f, global0.x, vec3<f32>(-1470f, 172f, -657f)), _wgslsmith_add_u32(70135u, u_input.b), Struct_1(-607f, global0.x, vec3<f32>(1115f, 281f, 400f))).x, func_3());
    global0 = !select(select(select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x), !(!vec2<bool>(global0.x, global0.x)), func_4(Struct_1(1650f, global0.x, vec3<f32>(529f, -482f, -910f)), u_input.b | 54885u, Struct_1(683f, false, vec3<f32>(786f, 278f, 232f)))), func_4(Struct_1(_wgslsmith_div_f32(-270f, 947f), any(vec2<bool>(global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(497f, -1000f, 1000f))), u_input.b, Struct_1(_wgslsmith_f_op_f32(445f * 369f), true, vec3<f32>(-740f, -199f, -333f))), select(vec2<bool>(global0.x, !global0.x), select(!vec2<bool>(true, global0.x), !vec2<bool>(global0.x, global0.x), !global0.x), func_4(Struct_1(-1000f, global0.x, vec3<f32>(103f, 1626f, -285f)), u_input.b, Struct_1(559f, global0.x, vec3<f32>(224f, -491f, -622f)))));
    var var_0 = ~(u_input.b >> (min(select(4294967295u, 77041u & u_input.b, global0.x), ~0u) % 32u));
    var_0 = 1u;
    return ~(~_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b, 4294967295u, 61663u) << (vec3<u32>(83060u, 0u, 1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(3089u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, true, global0.x))), ~(~vec3<u32>(21088u, 0u, 1u))));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>) -> f32 {
    var var_0 = arg_1.xx;
    let var_1 = arg_1;
    var_0 = var_1.xy;
    let var_2 = Struct_1(1f, func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-571f)) + _wgslsmith_f_op_f32(floor(-424f))), all(vec4<bool>(global0.x, false, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-610f, -332f, 576f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-237f, 239f, -645f)))), 0u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(197f))), _wgslsmith_f_op_f32(sign(-1007f)) != _wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-168f, -1026f, 449f) - vec3<f32>(104f, -605f, 1008f)))).x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(451f, -1001f, 850f) * vec3<f32>(3023f, -1000f, -925f)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(366f, 1029f, -2197f)), vec3<f32>(1f, 1f, 1f), vec3<bool>(global0.x, false, true))), 6704u < _wgslsmith_add_u32(arg_1.x, var_1.x)))));
    let var_3 = Struct_1(-101f, !select(false, true, true), _wgslsmith_f_op_vec3_f32(select(var_2.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c)))), global0.x)));
    return _wgslsmith_f_op_f32(-2892f * -1418f);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, 2566f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) - _wgslsmith_f_op_f32(f32(-1f) * -575f))))));
    var_0 = _wgslsmith_f_op_f32(func_5(-14130i, _wgslsmith_sub_vec3_u32(~func_2(), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(30321u, u_input.b, u_input.b), _wgslsmith_div_u32(u_input.b, u_input.b)), 54745u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(30692u, 0u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))))));
    var var_1 = Struct_1(-804f, global0.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-783f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-868f * 1231f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-322f, 1112f))), _wgslsmith_f_op_f32(1382f + _wgslsmith_f_op_f32(sign(-505f)))))));
    let var_2 = true;
    let var_3 = vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(~u_input.a, 1i)), u_input.a, abs(44571i), firstTrailingBit(1i));
    return _wgslsmith_clamp_i32(-76729i, u_input.c.x, _wgslsmith_mod_i32(min(-u_input.c.x, 68242i << (reverseBits(0u) % 32u)), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(247f))))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1178f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1177f) - _wgslsmith_f_op_f32(-443f - 2003f))), -458f));
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.wx), -40245i, -(~func_1()), u_input.c.x), -min(u_input.c, vec4<i32>(0i, 52456i, u_input.c.x, 5205i) >> (~vec4<u32>(0u, 81596u, u_input.b, u_input.b) % vec4<u32>(32u))));
    var var_2 = -4346i;
    var_1 = ~select(vec4<i32>(~u_input.c.x, -34426i, (u_input.a & -21694i) >> (54411u % 32u), -1i), u_input.c, vec4<bool>(any(vec3<bool>(false, global0.x, global0.x)), u_input.b >= max(u_input.b, 1u), !(!global0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x) > 407f));
    let var_3 = ~_wgslsmith_dot_vec3_i32(~(-vec3<i32>(1i, u_input.c.x, var_1.x)), vec3<i32>(1i, u_input.c.x ^ 0i, ~2147483647i)) & 0i;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 489f), var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), 987f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-502f, var_0.x, _wgslsmith_div_f32(-575f, 1275f), _wgslsmith_f_op_f32(var_0.x + var_0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-895f + -256f) * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f) - var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)), var_0.x), 457f));
    var var_4 = ~abs(~(_wgslsmith_add_vec2_u32(vec2<u32>(15109u, u_input.b), vec2<u32>(56644u, u_input.b)) << (firstTrailingBit(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select((-var_1.zy << (_wgslsmith_add_vec2_u32(vec2<u32>(4095u, 17361u), vec2<u32>(49226u, u_input.b)) % vec2<u32>(32u))) >> (vec2<u32>(~var_4.x, abs(40662u)) % vec2<u32>(32u)), vec2<i32>(~0i, var_1.x), func_4(Struct_1(853f, false, _wgslsmith_f_op_vec3_f32(-var_0.yyx)), ~0u, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1486f), global0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1966f, var_0.x))))), vec4<i32>(u_input.c.x, u_input.a, -u_input.c.x & -var_1.x, -var_1.x), -vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-14271i, var_1.x, -22655i, -23128i), reverseBits(vec4<i32>(-1i, u_input.c.x, 0i, -1i))), -2147483647i, var_3), u_input.c.x >> (func_2().x % 32u));
}

