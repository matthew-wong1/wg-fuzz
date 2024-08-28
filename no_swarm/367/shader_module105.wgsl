struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    var var_0 = Struct_4(Struct_3(u_input.b, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), true))), u_input.b.wyx, Struct_3(_wgslsmith_div_vec4_u32(~u_input.b, ~_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.c, arg_0.x, 4294967295u, 32961u))), true));
    var var_1 = -(~vec2<i32>(_wgslsmith_mult_i32(select(9110i, -1i, var_0.c.b), select(1i, 2147483647i, false)), reverseBits(_wgslsmith_div_i32(1370i, 1i))));
    let var_2 = true;
    var_1 = -max(vec2<i32>(-var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.x, -2147483647i, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x))), -(vec2<i32>(1925i, var_1.x) ^ vec2<i32>(var_1.x, 13398i))) ^ select(min(vec2<i32>(_wgslsmith_div_i32(1i, var_1.x), var_1.x), vec2<i32>(var_1.x >> (0u % 32u), 11216i)), vec2<i32>(firstLeadingBit(max(1i, var_1.x)), 18164i), select(!(!vec2<bool>(var_2, true)), select(!vec2<bool>(var_0.a.b, var_0.a.b), vec2<bool>(var_0.a.b, var_2), vec2<bool>(var_0.a.b, var_2)), select(any(vec3<bool>(true, true, var_0.a.b)), false, 90643u < u_input.b.x)));
    var var_3 = Struct_2(!(!any(vec4<bool>(true, false, var_0.c.b, true))), !var_2, Struct_1(vec2<bool>(all(!vec3<bool>(var_2, true, var_0.a.b)), !all(vec4<bool>(true, var_2, true, false))), vec2<f32>(global0.x, -1124f)));
    return var_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = Struct_3(vec4<u32>(0u, ~41546u, ~u_input.a.x, ~(~1u)), arg_0.a);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(477f, 1041f, _wgslsmith_f_op_f32(trunc(-913f))));
    let var_1 = arg_0.c;
    var var_2 = all(select(select(vec3<bool>(false, var_1.b.x != global0.x, var_1.a.x), vec3<bool>(true, all(var_1.a), 78450u < arg_3), vec3<bool>(1306f <= var_1.b.x, true, select(false, var_1.a.x, false))), !(!(!vec3<bool>(arg_1, false, var_1.a.x))), select(var_0.b, arg_0.c.b.x >= _wgslsmith_f_op_f32(f32(-1f) * -843f), any(select(vec2<bool>(arg_1, true), var_1.a, arg_1)))));
    var_2 = true;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f) + _wgslsmith_f_op_f32(floor(-1934f)))));
}

fn func_2() -> Struct_3 {
    let var_0 = 2147483647i;
    var var_1 = u_input.b;
    var var_2 = firstLeadingBit(var_0);
    let var_3 = global0.zy;
    global0 = vec3<f32>(global0.x, 272f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(-var_3.x), false)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_2(false, false, Struct_1(vec2<bool>(true, false), vec2<f32>(-318f, -1953f))), true, func_3(vec2<u32>(u_input.a.x, u_input.b.x), 1226f), 36958u))))));
    return Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~select(u_input.b, u_input.b, true), u_input.b), abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(9228u, 17362u, 1u, 1u), vec4<u32>(1u, var_1.x, u_input.b.x, var_1.x), vec4<u32>(4294967295u, 74416u, u_input.b.x, 1u)))), !any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_1 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(arg_3.b, arg_3.b, Struct_1(vec2<bool>(false, arg_3.b), global0.zy)), true, -arg_1, select(0u, arg_3.a.x, arg_3.b))) + 2058f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_2(arg_3.b, true, Struct_1(vec2<bool>(false, arg_3.b), vec2<f32>(arg_0.x, 1000f))), false, arg_2.x, u_input.a.x)))))), -336f);
    global0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(191f, _wgslsmith_f_op_f32(-arg_0.x), global0.x)));
    var var_0 = 0u;
    var_0 = 10506u;
    let var_1 = Struct_2(false, true && all(select(!vec2<bool>(arg_3.b, true), select(vec2<bool>(true, arg_3.b), vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(arg_3.b, true)), !vec2<bool>(arg_3.b, false))), Struct_1(select(select(!vec2<bool>(arg_3.b, false), vec2<bool>(true, arg_3.b), !vec2<bool>(arg_3.b, true)), !select(vec2<bool>(true, arg_3.b), vec2<bool>(arg_3.b, arg_3.b), arg_3.b), true), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, -1959f))))), global0.zz))));
    return var_1.c;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = max(vec4<i32>(-34548i, firstTrailingBit(1i), select(countOneBits(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(16626i, -2147483647i), vec2<i32>(-1i, -36654i)), true) >> (abs(min(4294967295u, u_input.a.x)) % 32u), min(-34919i, abs(1i))), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(-34238i), 1i) | ~firstTrailingBit(-53178i), 1i, -(~_wgslsmith_add_i32(-1i, -5094i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(32623i, 2147483647i), vec2<i32>(1i, 1i))));
    let var_1 = !select(!select(select(vec4<bool>(true, false, arg_0.a.x, arg_0.a.x), vec4<bool>(true, arg_1.x, true, false), vec4<bool>(false, arg_1.x, arg_0.a.x, true)), select(vec4<bool>(true, arg_0.a.x, true, false), vec4<bool>(arg_1.x, arg_0.a.x, arg_0.a.x, true), vec4<bool>(true, arg_0.a.x, arg_0.a.x, true)), true), select(!select(vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), true), select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, true), vec4<bool>(true, arg_1.x, false, false), func_2().b), arg_1.x), arg_0.a.x && false);
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, ~u_input.b.x, _wgslsmith_sub_u32(firstTrailingBit(u_input.c << (0u % 32u)), ~(~1u)), 86243u), abs(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(19837u, 23168u, 51434u, u_input.c)), abs(select(u_input.b, vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.b.x), true)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(func_4(Struct_2(!arg_1.x, arg_1.x, func_5(vec4<f32>(arg_2.x, arg_0.b.x, -974f, arg_2.x), -27777i, var_0.yz, Struct_3(u_input.b, var_1.x))), !(var_1.x | true), select(-13376i, 1i, true), _wgslsmith_clamp_u32(min(var_2.x, u_input.a.x), 525u, ~1u)))));
    var var_4 = arg_0;
    return func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-986f, global0.x, var_4.b.x, global0.x)), vec4<f32>(-2417f, var_3, var_3, var_4.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 286f, var_3, -267f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3)) + global0.x), 232f, -1171f)), 2147483647i, var_0.yx, func_2());
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(739f)), 1924f, -331f))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global0.x) + 1254f), _wgslsmith_f_op_f32(f32(-1f) * -672f), global0.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-251f, 1000f, global0.x) - vec3<f32>(global0.x, 1689f, 1108f)))))))));
    var var_0 = vec4<i32>(-9559i, firstLeadingBit(reverseBits(13308i)), _wgslsmith_sub_i32(~(-_wgslsmith_add_i32(74345i, -13647i)), ~1i), reverseBits(-16336i));
    var var_1 = func_6(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))))), abs(-1i), vec2<i32>((i32(-1i) * -45934i) << (~u_input.b.x % 32u), _wgslsmith_mod_i32(select(-1i, -3236i, false), var_0.x << (u_input.b.x % 32u))), func_2()), vec3<bool>(all(vec4<bool>(true, true, true, true)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), false)), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x)), global0.x, _wgslsmith_div_f32(1f, global0.x))));
    var_0 = vec4<i32>(countOneBits(var_0.x), var_0.x, var_0.x, -countOneBits(-2793i)) & select(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(-1i, -31389i, var_0.x, -58873i) << (vec4<u32>(u_input.a.x, u_input.c, 0u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 27361i, 1i, var_0.x), vec4<i32>(22337i, var_0.x, -2147483647i, 7480i) ^ vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<i32>(func_3(u_input.a, 493f), 5426i, 1i, var_0.x)), vec4<i32>(var_0.x, var_0.x, ~(-2147483647i), -71334i), !(!vec4<bool>(true, true, true, var_1.a.x)));
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_7(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -516f))) * global0.x), _wgslsmith_f_op_f32(-542f * 1200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, arg_0.x))));
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(1633f)), _wgslsmith_f_op_f32(func_4(Struct_2(arg_2, true, func_5(vec4<f32>(-610f, -841f, 1172f, -868f), -1i, vec2<i32>(2147483647i, 12546i), Struct_3(u_input.b, arg_2))), true, i32(-1i) * -17505i, _wgslsmith_mod_u32(~12234u, ~arg_1.x))), 893f), var_0, true));
    global0 = _wgslsmith_f_op_vec3_f32(sign(var_0));
    let var_1 = !(!vec2<bool>(true, !(arg_2 || true)));
    global0 = _wgslsmith_f_op_vec3_f32(sign(var_0));
    return Struct_1(vec2<bool>(!any(vec4<bool>(arg_2, true, false, true)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, 1000f), 1404f)))));
}

fn func_8(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(min(func_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, arg_0.x, global0.x, global0.x))), 2966i, vec2<i32>(-1i) * -vec2<i32>(25635i, -1i), func_2()).b.x, _wgslsmith_f_op_f32(arg_2.b.x - 1735f))), _wgslsmith_f_op_f32(-global0.x), global0.x);
    let var_0 = arg_2.b;
    var var_1 = Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 37946u), u_input.c ^ u_input.a.x), u_input.c, arg_1, _wgslsmith_add_u32(arg_1, 26215u) | abs(arg_1)), _wgslsmith_sub_vec4_u32(u_input.b, select(vec4<u32>(4294967295u, 4294967295u, 68700u, arg_1), u_input.b ^ u_input.b, vec4<bool>(true, false, false, arg_2.a.x))), u_input.b), arg_2.a.x & !func_5(vec4<f32>(-1258f, arg_2.b.x, arg_2.b.x, arg_2.b.x), 1i, _wgslsmith_add_vec2_i32(vec2<i32>(-13200i, -8837i), vec2<i32>(-21069i, 2691i)), Struct_3(vec4<u32>(0u, arg_1, 43123u, arg_1), arg_2.a.x)).a.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 1000f, 1114f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -782f, 1455f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1043f, -1000f, 734f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, -1601f, 312f) * vec3<f32>(675f, 544f, global0.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -224f, global0.x) - vec3<f32>(-1337f, arg_2.b.x, -1203f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, -519f, 656f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x)))))));
    var var_2 = _wgslsmith_mult_u32(24199u, u_input.a.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_div_f32(global0.x, 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-875f, 590f, -340f), vec3<f32>(-1684f, global0.x, -3092f), vec3<bool>(true, true, false)))))));
    var var_1 = select(vec2<bool>(!(_wgslsmith_f_op_f32(-377f + var_0.x) >= var_0.x), !(var_0.x >= _wgslsmith_f_op_f32(floor(557f)))), vec2<bool>(true, true), true);
    let var_2 = -vec3<i32>(1i, 1i, -select(reverseBits(30350i), _wgslsmith_sub_i32(-2147483647i, 1i), var_1.x));
    var var_3 = Struct_4(func_8(var_0.yy, 4294967295u, func_7(vec2<f32>(_wgslsmith_f_op_f32(func_1()), global0.x), vec3<u32>(u_input.b.x, ~u_input.a.x, u_input.b.x), any(!vec3<bool>(false, var_1.x, false)))), ~_wgslsmith_mod_vec3_u32(~u_input.b.xxy & select(u_input.b.xzw, u_input.b.wzy, vec3<bool>(var_1.x, true, var_1.x)), _wgslsmith_div_vec3_u32(max(vec3<u32>(23293u, u_input.c, 0u), u_input.b.zzz), ~u_input.b.zxx)), func_8(global0.zy, 45836u, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 873f, global0.x, -318f)))), var_2.x >> (100058u % 32u), ~select(var_2.yz, var_2.yy, vec2<bool>(true, var_1.x)), func_8(global0.zx, 62389u, Struct_1(vec2<bool>(false, var_1.x), global0.yy)))));
    let var_4 = ~(~_wgslsmith_div_vec4_u32(min(u_input.b, vec4<u32>(u_input.a.x, 0u, var_3.a.a.x, 4294967295u)), vec4<u32>(18875u, 53297u, u_input.a.x, u_input.b.x))) >> (u_input.b % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, _wgslsmith_f_op_f32(select(var_0.x, global0.x, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_6(Struct_1(vec2<bool>(false, false), global0.zy), vec3<bool>(true, var_3.a.b, false), vec3<f32>(global0.x, global0.x, -761f)).b.x)) * var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f))) - func_7(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_div_f32(655f, var_0.x)), vec3<u32>(u_input.c, 29709u, ~var_3.a.a.x), (var_1.x || false) || var_3.a.b).b.x), ~(-vec2<i32>(1i, min(var_2.x, -2147483647i))));
}

