struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_2);
    var var_1 = vec3<u32>(u_input.e, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(countOneBits(~u_input.b.x), 15u)] & firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, 23145u, 4294967295u)), ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 20332u, 1u, 4294967295u), vec4<u32>(0u, 17159u, u_input.e, u_input.b.x)), _wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], vec4<u32>(u_input.b.x, 53579u, u_input.e, u_input.b.x)))), ~(50686u | u_input.b.x) << (abs(u_input.b.x) % 32u));
    let var_2 = vec3<bool>(arg_0.x, !arg_0.x, !select(arg_1, true, select(all(vec3<bool>(arg_0.x, true, arg_1)), arg_1, true)));
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(var_1.x, 15u)], arg_2);
    return var_3.a.x;
}

fn func_2() -> Struct_5 {
    let var_0 = true;
    global0 = array<vec4<u32>, 15>();
    var var_1 = _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, func_3(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), false), all(vec3<bool>(false, var_0, var_0)), _wgslsmith_f_op_f32(abs(1367f))))) >> (~countOneBits(_wgslsmith_sub_vec3_u32(u_input.b, max(u_input.b, vec3<u32>(u_input.e, u_input.e, u_input.e)))) % vec3<u32>(32u));
    global0 = array<vec4<u32>, 15>();
    var_1 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(~var_1.x, ~4294967295u)), ~u_input.b.x), ~u_input.b.x, countOneBits(u_input.e));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-980f)), -1000f, -932f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-738f, -818f, -906f)))))), Struct_2(~(vec4<u32>(u_input.e, 4294967295u, var_1.x, u_input.b.x) << (global0[_wgslsmith_index_u32(max(var_1.x, 53705u), 15u)] % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(627f * 1051f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_5) -> f32 {
    let var_0 = arg_1;
    var var_1 = -1000f;
    var var_2 = func_2().b;
    let var_3 = arg_2.b;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.b), _wgslsmith_f_op_f32(ceil(-1352f))) + -1213f)), _wgslsmith_div_f32(func_2().b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-1778f * _wgslsmith_div_f32(-392f, 1439f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c, var_0.c)) - _wgslsmith_f_op_f32(624f + _wgslsmith_f_op_f32(f32(-1f) * -2496f))));
    return 149f;
}

fn func_1() -> i32 {
    var var_0 = -2147483647i < u_input.d;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(356f))))), -1000f, _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-498f, -1526f, -314f, 385f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1086f, -892f, 842f, 1000f) - vec4<f32>(-1971f, -1346f, 753f, 1486f))), vec4<f32>(-1749f, _wgslsmith_f_op_f32(trunc(-2560f)), _wgslsmith_f_op_f32(316f - 457f), _wgslsmith_f_op_f32(sign(-1205f)))), Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1497f * -1000f), _wgslsmith_f_op_f32(select(1000f, 1535f, true)))), vec4<u32>(u_input.e, u_input.e, u_input.b.x << (u_input.e % 32u), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-472f)))), func_2())));
    let var_2 = var_1.x;
    var_0 = false;
    global0 = array<vec4<u32>, 15>();
    return 1i;
}

fn func_5(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = abs(_wgslsmith_mod_u32(u_input.b.x >> (func_3(vec2<bool>(true, true), true, _wgslsmith_f_op_f32(211f + 1109f)) % 32u), select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.b.x), u_input.b), true) ^ u_input.e));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(262f))))), global0[_wgslsmith_index_u32(var_0, 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-481f, -2279f) * _wgslsmith_f_op_f32(1381f - -150f)) + -433f)));
    global0 = array<vec4<u32>, 15>();
    let var_2 = true;
    var var_3 = 14617i;
    return Struct_1(select(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 2147483647i, 2147483647i, 2147483647i) << (vec4<u32>(var_0, 4294967295u, 0u, 23109u) % vec4<u32>(32u)), countOneBits(vec4<i32>(arg_1, 11618i, arg_0, -43232i)))), _wgslsmith_div_vec4_i32(min(select(vec4<i32>(arg_0, arg_0, 32389i, u_input.c.x), vec4<i32>(arg_1, arg_0, 70214i, 2147483647i), vec4<bool>(true, true, var_2, var_2)), select(vec4<i32>(0i, arg_0, arg_1, -2147483647i), vec4<i32>(arg_0, arg_1, -47922i, -2147483647i), false)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 41618i, arg_1, -24707i), vec4<i32>(u_input.a.x, arg_0, -20451i, arg_0))), var_2), all(select(select(vec2<bool>(var_2, var_2), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false), any(vec4<bool>(var_2, var_2, var_2, false)))) && all(!vec3<bool>(var_2, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), _wgslsmith_dot_vec3_i32(u_input.c & ~u_input.c, u_input.a));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1197f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(526f))))), 165f));
    var_0 = func_5(firstLeadingBit(abs(abs(-1i))), 0i);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1688f * _wgslsmith_f_op_f32(-819f + 623f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-857f, 201f, var_0.b)) * _wgslsmith_div_f32(-1043f, 1636f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) * _wgslsmith_f_op_f32(select(-173f, -1000f, var_0.b)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-191f, 466f, -187f))) - vec3<f32>(719f, -241f, -531f))))));
    var var_3 = vec2<i32>(u_input.c.x, -_wgslsmith_add_i32(1i, -57505i)) | (vec2<i32>(1i, abs(countOneBits(var_0.a.x))) << (vec2<u32>(~0u, ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_2.x)));
    var_3 = vec2<i32>(-1i) * -vec2<i32>(firstLeadingBit(51728i), func_5(-2147483647i, func_1()).a.x);
    var var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(~countOneBits(var_0.a.x), u_input.c.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_3.x, -2147483647i), vec3<i32>(var_3.x, var_3.x, -2147483647i))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, -u_input.a.x, firstLeadingBit(var_0.a.x)) >> (_wgslsmith_sub_vec3_u32(abs(u_input.b), vec3<u32>(66319u, u_input.e, u_input.b.x)) % vec3<u32>(32u)), ~vec3<i32>(func_5(2147483647i, 16922i).a.x, 2147483647i, var_0.a.x), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.xy)));
}

