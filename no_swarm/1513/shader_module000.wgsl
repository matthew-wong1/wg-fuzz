struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: Struct_3,
    d: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1005f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_4(u_input.b.x, vec4<u32>(_wgslsmith_clamp_u32(min(u_input.d.x, 2674u), firstTrailingBit(u_input.d.x) | ~1u, 20408u), 25183u, ~(~u_input.d.x), _wgslsmith_add_u32(u_input.d.x, ~1u)), Struct_3(vec3<f32>(1f, 1f, 1f), true, ~vec3<u32>(~49703u, 1u, 44094u), u_input.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(770f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-612f)) * 324f))));
    global0 = _wgslsmith_f_op_f32(-var_0.d.x);
    var var_1 = (var_0.b.x | 1u) & u_input.d.x;
    var var_2 = Struct_1(~0i, var_0.d.x);
    let var_3 = _wgslsmith_f_op_f32(select(-935f, _wgslsmith_f_op_f32(select(var_0.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a.x), -778f), true)), any(select(!vec4<bool>(var_0.c.b, true, var_0.c.b, false), select(vec4<bool>(var_0.c.b, var_0.c.b, true, var_0.c.b), select(vec4<bool>(false, var_0.c.b, false, var_0.c.b), vec4<bool>(false, false, false, true), var_0.c.b), select(vec4<bool>(true, true, false, var_0.c.b), vec4<bool>(var_0.c.b, true, true, var_0.c.b), false)), !select(vec4<bool>(var_0.c.b, var_0.c.b, false, var_0.c.b), vec4<bool>(var_0.c.b, false, true, var_0.c.b), true)))));
    return vec4<u32>(_wgslsmith_mult_u32(~25503u, (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, var_0.c.c.x, u_input.d.x), vec4<u32>(u_input.d.x, 61258u, 1258u, u_input.d.x)) >> (var_0.b.x % 32u)) << (u_input.d.x % 32u)), ~_wgslsmith_add_u32(~u_input.d.x, 1u), 14515u, ~_wgslsmith_add_u32(~4294967295u, 1613u) << (var_0.c.c.x % 32u));
}

fn func_2() -> vec4<f32> {
    var var_0 = -_wgslsmith_add_i32(max(1i, u_input.c), select(12629i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(2147483647i, u_input.b.x, -2147483647i)), vec3<i32>(u_input.a.x, 1i, 625i)), true));
    let var_1 = 14487u;
    var var_2 = _wgslsmith_clamp_i32(firstLeadingBit(u_input.a.x) << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(55827u, u_input.d.x, 22959u, 52256u), select(vec4<u32>(5714u, u_input.d.x, var_1, 1u), vec4<u32>(var_1, 1u, 4572u, var_1), true), vec4<bool>(false, false, true, false)), func_3()) % 32u), _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, 2147483647i), -u_input.a), vec4<i32>(min(~u_input.b.x, 1i), 78909i, 16730i, -(u_input.a.x & u_input.a.x))), u_input.a.x | u_input.c);
    let var_3 = vec3<bool>(true, true, true);
    var var_4 = 64836u;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-193f, _wgslsmith_f_op_f32(-237f + -159f)), 1f, _wgslsmith_f_op_f32(-347f + _wgslsmith_f_op_f32(max(-211f, 949f))), -1120f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, _wgslsmith_f_op_f32(172f * _wgslsmith_f_op_f32(floor(-2135f))), _wgslsmith_f_op_f32(ceil(-1466f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f * 404f) - _wgslsmith_f_op_f32(1000f + 171f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, i32(-1i) * -17760i, _wgslsmith_add_i32(0i, u_input.c)), min(vec3<i32>(u_input.a.x, u_input.a.x, arg_2.x) & vec3<i32>(1i, u_input.c, arg_3.x), abs(vec3<i32>(arg_2.x, 55009i, u_input.c)))), countOneBits(u_input.a.zzw));
    let var_1 = Struct_4(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(21133i, -2147483647i, arg_2.x)), u_input.a.zww >> (vec3<u32>(u_input.d.x, 48449u, 1u) % vec3<u32>(32u))) >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(54519u, u_input.d.x, 62588u, 0u), vec4<u32>(u_input.d.x, 43783u, u_input.d.x, 46113u)), u_input.d.x, arg_1.x) % 32u)), _wgslsmith_mod_vec4_u32(select(func_3(), _wgslsmith_add_vec4_u32(vec4<u32>(146256u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 15818u, u_input.d.x, 20630u)), select(!vec4<bool>(false, arg_1.x, arg_1.x, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_1.x, true, true), true), all(vec3<bool>(true, arg_1.x, true)))), reverseBits(~vec4<u32>(u_input.d.x, u_input.d.x, 36736u, u_input.d.x))), Struct_3(_wgslsmith_f_op_vec3_f32(abs(arg_0.yyy)), _wgslsmith_dot_vec2_u32(u_input.d, firstLeadingBit(u_input.d)) >= 15614u, ~(~vec3<u32>(34366u, 68757u, 1u)), u_input.d.x), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1422f * 1000f))))));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1949f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-971f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1226f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.c.a.x, 1227f)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(floor(var_1.d.x)))), 148f)));
    let var_2 = var_1.c;
    global0 = _wgslsmith_f_op_vec4_f32(func_2()).x;
    return Struct_1(_wgslsmith_add_i32(~select(abs(1i), var_1.a, true), -(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_2.x, arg_3.x, var_0.x), u_input.a) & firstTrailingBit(-29336i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1004f)));
}

fn func_1() -> f32 {
    let var_0 = u_input.a.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(244f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -506f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -962f)), _wgslsmith_f_op_f32(f32(-1f) * -1482f))), select(any(vec3<bool>(true, true, true)), true, (4294967295u >> (0u % 32u)) == u_input.d.x))));
    var var_1 = min(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -55046i, -1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(11862i, 0i), 1i), _wgslsmith_mod_i32(var_0, _wgslsmith_mult_i32(25507i, var_0))), u_input.a), ~u_input.a);
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-463f, 294f, 112f, -1660f))), _wgslsmith_f_op_vec4_f32(func_2())))), vec2<bool>(false, false), _wgslsmith_mod_vec3_i32(-var_1.xzy, vec3<i32>(~reverseBits(var_1.x), -10746i, abs(firstTrailingBit(-2147483647i)))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 2147483647i, u_input.a.x, -12607i), u_input.a)), -min(vec4<i32>(-28428i, 1i, u_input.b.x, 2147483647i), vec4<i32>(1i, 0i, var_0, 2147483647i))), vec4<i32>(~var_0, var_0, ~var_1.x, min(u_input.a.x >> (u_input.d.x % 32u), reverseBits(25632i)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_2.b)))), _wgslsmith_f_op_f32(-949f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1638f + _wgslsmith_f_op_f32(1196f + var_2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(~u_input.a.xw, countOneBits(-vec2<i32>(u_input.a.x, 1i)));
    var var_1 = vec4<u32>(1u, ~21213u, min(firstLeadingBit(~(~0u)), u_input.d.x), ~(~4294967295u));
    let var_2 = countOneBits(~var_0.x);
    let var_3 = _wgslsmith_f_op_f32(func_1());
    let var_4 = select(select(vec3<bool>(any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(func_2()).x >= _wgslsmith_f_op_f32(step(-1000f, -298f))), vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), false, true), var_3 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-725f - var_3))), vec3<bool>(true, !any(vec2<bool>(false, false)), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(1u, countOneBits(countOneBits(u_input.d.x)));
}

