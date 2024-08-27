struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-1i, 2147483647i), vec2<i32>(41247i, 2147483647i), vec2<i32>(0i, 52936i), vec2<i32>(26694i, 1i));

var<private> global1: u32 = 51432u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    global1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c, ~(vec2<u32>(arg_3.b, 0u) << (u_input.c % vec2<u32>(32u)))), ~(countOneBits(4294967295u) ^ arg_1.b)), u_input.c.x, _wgslsmith_add_u32(arg_1.b, arg_1.b));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(571f * -1067f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(204f - -2458f), 1355f)) + -698f));
    return select(arg_1.b, _wgslsmith_sub_u32(_wgslsmith_div_u32(7273u, arg_1.b << (1u % 32u)), ~select(0u, arg_3.b, true)) ^ 3943u, false);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~(15133i << (u_input.c.x % 32u)), 3398i, countOneBits(u_input.a)), ~(~vec4<i32>(u_input.a, -76555i, 1i, u_input.b))), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x));
    var var_1 = _wgslsmith_mod_vec4_i32(var_0.a, firstTrailingBit(-max(~vec4<i32>(u_input.a, -1i, -19363i, 1i), -vec4<i32>(var_0.a.x, 1559i, var_0.a.x, -34457i))));
    let var_2 = var_0.a;
    var var_3 = -621f;
    var var_4 = Struct_1(var_0.a, u_input.c.x);
    return var_4.b & func_3(false, Struct_1(-(~var_4.a), 1u >> (u_input.c.x % 32u)), vec2<bool>(any(vec4<bool>(true, true, true, true)), (0u <= var_4.b) | (0u != var_4.b)), Struct_1(var_0.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.b, 0u, var_0.b), vec3<u32>(u_input.c.x, var_0.b, var_4.b))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global1 = firstTrailingBit(1u);
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1143f, -458f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(252f, -1027f), _wgslsmith_f_op_f32(-1091f + -657f))), 1872f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = !(!(arg_3.a.x < (max(-2147483647i, -34901i) & arg_0.a.x)));
    let var_2 = arg_3.a.ywy;
    global0 = array<vec2<i32>, 4>();
    return select(!vec4<bool>(var_1, all(vec3<bool>(var_1, true, false)), false, false), vec4<bool>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x * var_0.x)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), true, !(!var_1), false), !(!select(!vec4<bool>(true, false, false, var_1), !vec4<bool>(var_1, false, var_1, var_1), select(vec4<bool>(false, false, var_1, var_1), vec4<bool>(false, var_1, var_1, false), vec4<bool>(false, var_1, false, var_1)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32) -> vec2<u32> {
    global1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~(~0u)), ~1u, select(37751u, ~(~0u), all(select(arg_0.zx, vec2<bool>(false, false), false))), u_input.c.x), ~(max(~vec4<u32>(6139u, u_input.c.x, arg_1, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, arg_1, 57602u, 1u), vec4<u32>(63062u, 0u, 55986u, arg_1))) | vec4<u32>(2218u, arg_1 >> (u_input.c.x % 32u), 4294967295u ^ u_input.c.x, _wgslsmith_sub_u32(21357u, 1u))));
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 41474u), select(1u, 0u, any(arg_0.xw)), arg_1) << (vec3<u32>(_wgslsmith_mult_u32(reverseBits(arg_1), 19262u), _wgslsmith_div_u32(1u, ~arg_1), reverseBits(arg_1) >> (~4294967295u % 32u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(1u, arg_1), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, u_input.c.x, 0u, u_input.c.x), ~vec4<u32>(u_input.c.x, 47934u, arg_1, 13290u)), u_input.c.x));
    global1 = 1u;
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2967i, u_input.b, 31384i, -5353i), vec4<i32>(u_input.b, 65295i, -2147483647i, 2147483647i))), firstTrailingBit(min(-vec4<i32>(32634i, u_input.b, u_input.a, -1i), vec4<i32>(u_input.a, 2147483647i, -1i, u_input.a))), _wgslsmith_div_vec4_i32(select(-vec4<i32>(-18014i, 2147483647i, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.b, u_input.a, u_input.b), vec4<bool>(true, arg_0.x, arg_0.x, true)), -vec4<i32>(u_input.a, -2147483647i, 1i, u_input.a))), 6994u);
    global0 = array<vec2<i32>, 4>();
    return u_input.c;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global0 = array<vec2<i32>, 4>();
    let var_1 = arg_2;
    let var_2 = var_1;
    global0 = array<vec2<i32>, 4>();
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: f32) -> i32 {
    var var_0 = arg_1;
    global1 = 16286u;
    let var_1 = false;
    global1 = _wgslsmith_mod_u32(abs(~((u_input.c.x | u_input.c.x) >> (_wgslsmith_sub_u32(0u, u_input.c.x) % 32u))), 13174u);
    var var_2 = func_6(Struct_1(~(~(~vec4<i32>(-1i, arg_0, u_input.a, 3162i))), 5436u), func_5(func_4(Struct_1(~vec4<i32>(1i, 2147483647i, arg_0, 0i), ~23299u), ~0u, Struct_1(select(vec4<i32>(2147483647i, 0i, arg_0, -35935i), vec4<i32>(u_input.b, -60940i, 2147483647i, u_input.a), var_1), u_input.c.x), Struct_1(firstTrailingBit(vec4<i32>(0i, u_input.a, arg_0, -2147483647i)), func_2())), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 400u), u_input.c | u_input.c))), Struct_1(select(vec4<i32>(reverseBits(arg_0), -u_input.b, _wgslsmith_sub_i32(u_input.a, -2147483647i), ~u_input.b), abs(-vec4<i32>(1i, 2147483647i, u_input.b, 43162i)), true), 79854u));
    return _wgslsmith_dot_vec2_i32(countOneBits(firstTrailingBit(~vec2<i32>(1i, arg_0))), firstLeadingBit(firstTrailingBit(~var_2.a.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 4>();
    let var_0 = -vec3<i32>(~_wgslsmith_mult_i32(u_input.a, 1i), -_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, 48716i), u_input.a), func_1(1i, -1131f));
    var var_1 = Struct_1(vec4<i32>(firstLeadingBit(var_0.x | 2147483647i), _wgslsmith_add_i32(1i, var_0.x | -7797i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 23028i, var_0.x), ~vec4<i32>(u_input.a, -54570i, u_input.a, 0i))) | vec4<i32>(u_input.b, (49703i ^ u_input.a) & -56829i, u_input.a >> (select(u_input.c.x, 30425u, false) % 32u), u_input.a), countOneBits(~u_input.c.x));
    let var_2 = var_1.b;
    global1 = 1027u;
    var_1 = func_6(Struct_1(var_1.a << (firstTrailingBit(vec4<u32>(var_1.b, u_input.c.x, var_1.b, var_1.b) | vec4<u32>(54315u, 0u, 42071u, 11229u)) % vec4<u32>(32u)), 66127u), vec2<u32>(~(~(var_1.b << (var_1.b % 32u))), 11833u), Struct_1(~vec4<i32>(var_1.a.x & -2577i, ~u_input.b, var_0.x, -2147483647i), 52051u));
    var var_3 = func_6(Struct_1(-(firstTrailingBit(var_1.a) | vec4<i32>(-9537i, u_input.b, 29222i, var_1.a.x)), u_input.c.x), countOneBits(min(~vec2<u32>(var_1.b, 48418u), func_5(vec4<bool>(true, false, true, true), 3060u))) >> (u_input.c % vec2<u32>(32u)), Struct_1(reverseBits(var_1.a), u_input.c.x));
    var var_4 = !any(vec2<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(false, true, true)))) | !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), false));
    var var_5 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1325f + -736f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1589f)) - _wgslsmith_f_op_f32(min(1653f, -1452f))), 888f))), ~select(u_input.c, u_input.c, func_4(func_6(Struct_1(vec4<i32>(-1i, 51009i, var_0.x, var_1.a.x), u_input.c.x), u_input.c, Struct_1(vec4<i32>(var_0.x, u_input.b, u_input.b, 2147483647i), 81191u)), abs(var_1.b), Struct_1(var_3.a, u_input.c.x), Struct_1(var_1.a, u_input.c.x)).x));
}

