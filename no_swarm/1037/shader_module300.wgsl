struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> bool {
    return false;
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = true;
    let var_1 = Struct_3(countOneBits(select(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_0.d.c, 43768i, arg_0.b.x) << (vec4<u32>(1u, arg_0.d.b, 36983u, 23608u) % vec4<u32>(32u)), abs(vec4<i32>(arg_0.b.x, -3875i, arg_0.d.c, arg_0.a.x))), ~arg_0.b, vec4<bool>(arg_0.d.b < u_input.a, arg_0.e, all(vec4<bool>(true, true, arg_0.d.a, false)), func_3(Struct_2(arg_0.d.a, u_input.a, arg_0.a.x), vec2<f32>(-419f, 363f))))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(arg_0.a, ~arg_0.a), vec4<i32>(min(arg_0.b.x, arg_0.b.x), _wgslsmith_add_i32(arg_0.b.x, arg_0.a.x), arg_0.b.x, _wgslsmith_mult_i32(arg_0.d.c, arg_0.d.c))) | arg_0.a, false, arg_0.d, true);
    var_0 = !var_1.c;
    var var_2 = arg_0.e;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1732f, -461f)))) - 551f);
    return var_1.d.b < ~24621u;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_3 {
    global0 = _wgslsmith_add_u32(_wgslsmith_div_u32(0u, ~6974u), ~(~arg_2.d.b)) << (_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.b, u_input.a), select(~arg_2.d.b, ~arg_1.b, true) & _wgslsmith_mod_u32(47751u, arg_2.d.b)) % 32u);
    let var_0 = Struct_1(select(firstTrailingBit(arg_1.c | arg_2.d.c), arg_1.c, !arg_2.e));
    global0 = firstLeadingBit(~arg_2.d.b);
    let var_1 = arg_1;
    global0 = max(_wgslsmith_mod_u32(arg_2.d.b, 26182u), ~reverseBits(arg_1.b));
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.d.c, arg_1.b.x), -2147483647i), 2147483647i), -(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_1.b.zyy, arg_1.b.zxz), arg_1.a.zww) ^ ~arg_1.d.c));
    let var_1 = func_4(vec4<bool>(any(vec3<bool>(arg_1.e, arg_1.e, arg_1.d.a)) && true, !arg_1.e, all(!vec2<bool>(arg_1.e, true)), true), arg_1.d, Struct_3(arg_1.b, -vec4<i32>(-1i, ~arg_1.d.c, arg_1.a.x, i32(-1i) * -19539i), !func_2(Struct_3(arg_1.b, vec4<i32>(-15919i, 0i, 11975i, 21100i), arg_1.e, arg_1.d, true)) | all(vec3<bool>(true, false, true)), Struct_2(arg_1.e, 0u, firstLeadingBit(_wgslsmith_add_i32(-8885i, var_0.x))), arg_1.d.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 3061f) - vec2<f32>(-1384f, -416f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1435f, arg_0)), vec2<f32>(_wgslsmith_f_op_f32(min(-909f, -1435f)), -486f), vec2<bool>(arg_1.e, all(vec2<bool>(true, arg_1.d.a))))), vec2<bool>(false, true))));
    var var_2 = var_1.d;
    let var_3 = Struct_3(arg_1.b << ((vec4<u32>(arg_1.d.b, 1u, 69494u, ~39718u) << (~firstTrailingBit(vec4<u32>(1u, 36794u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~19085i, abs(-16266i), ~var_2.c, 1i), ~(-arg_1.b)), var_1.a), !var_1.c, Struct_2(all(vec4<bool>(any(vec2<bool>(var_1.d.a, true)), func_2(Struct_3(vec4<i32>(arg_1.b.x, var_1.d.c, var_1.d.c, 0i), vec4<i32>(-2147483647i, var_0.x, var_0.x, arg_1.b.x), arg_1.d.a, var_1.d, arg_1.d.a)), 1000f <= arg_0, true)), ~u_input.a, var_0.x), _wgslsmith_f_op_f32(arg_0 + arg_0) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_div_f32(arg_0, -749f))));
    var_2 = arg_1.d;
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    let var_0 = arg_1.d.b;
    global0 = 51490u;
    let var_1 = Struct_2(true, func_1(-1000f, func_1(_wgslsmith_f_op_f32(sign(-188f)), func_4(vec4<bool>(arg_0.a, arg_1.d.a, true, arg_1.d.a), func_4(vec4<bool>(arg_0.a, arg_1.c, false, true), Struct_2(true, arg_1.d.b, arg_0.c), Struct_3(vec4<i32>(arg_0.c, 2147483647i, 0i, 0i), vec4<i32>(0i, -6206i, arg_0.c, -2147483647i), true, Struct_2(true, arg_1.d.b, arg_1.d.c), arg_1.e), vec2<f32>(1533f, 571f)).d, Struct_3(vec4<i32>(arg_1.b.x, -1i, 22733i, 1i), arg_1.b, arg_0.a, Struct_2(arg_1.d.a, 102085u, arg_1.d.c), arg_1.c), vec2<f32>(-625f, 2763f)))).d.b, i32(-1i) * -1i);
    global0 = var_1.b;
    let var_2 = Struct_1(max(-arg_1.d.c, _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.c >> (15341u % 32u), var_1.c), arg_1.d.c, firstLeadingBit(arg_0.c))));
    return (i32(-1i) * -2147483647i) < _wgslsmith_div_i32(_wgslsmith_div_i32(~var_2.a, var_2.a) | (-var_2.a ^ countOneBits(60733i)), 1i);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_2(func_2(func_4(select(select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), !vec4<bool>(arg_0.x, false, true, arg_0.x), arg_0.x), Struct_2(arg_0.x || false, _wgslsmith_mod_u32(4984u, u_input.a), arg_1.a), func_4(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), func_4(vec4<bool>(false, false, arg_0.x, false), Struct_2(true, u_input.a, arg_1.a), Struct_3(vec4<i32>(-1i, 40846i, arg_1.a, 2147483647i), vec4<i32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), false, Struct_2(true, 73136u, arg_1.a), true), vec2<f32>(-642f, -642f)).d, Struct_3(vec4<i32>(arg_1.a, -8713i, 69320i, -22367i), vec4<i32>(-2147483647i, arg_1.a, arg_1.a, -1233i), arg_0.x, Struct_2(false, 57269u, arg_1.a), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(158f, 1486f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1303f, 899f) + vec2<f32>(844f, -776f))))), u_input.a, min(~(~arg_1.a), 1i));
    let var_1 = Struct_1(0i);
    var var_2 = Struct_1(select(firstLeadingBit((i32(-1i) * -1i) << (_wgslsmith_div_u32(4294967295u, var_0.b) % 32u)), select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, var_0.c, -6951i), vec3<i32>(1i, var_1.a, 2147483647i)), true), 4294967295u == (_wgslsmith_div_u32(u_input.a, u_input.a) & countOneBits(u_input.a))));
    let var_3 = var_1;
    let var_4 = select(vec4<bool>((var_0.c ^ abs(-8781i)) != 3343i, !all(select(arg_0, arg_0, var_0.a)), true, (_wgslsmith_add_i32(var_1.a, 34992i) ^ 4863i) >= -57351i), vec4<bool>(var_0.a, all(select(vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(var_0.a, arg_0.x, false), true)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-217f, -1243f))) != 1620f), _wgslsmith_f_op_f32(-164f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(403f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -358f)))) <= 242f);
    return _wgslsmith_f_op_f32(-460f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), -1247f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(-136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(376f)) * 526f)), !any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(func_6(vec3<bool>(select(any(vec3<bool>(true, false, true)), true, true), -1311f <= _wgslsmith_f_op_f32(select(227f, 428f, false)), func_5(Struct_2(true, 0u, -4816i), func_1(181f, Struct_3(vec4<i32>(-2147483647i, -10097i, 10994i, -48743i), vec4<i32>(-7000i, -2147483647i, -2147483647i, 0i), false, Struct_2(true, u_input.a, 2147483647i), false)))), Struct_1(-2147483647i))));
    let var_1 = Struct_1(-37927i >> (0u % 32u));
    global0 = ~u_input.a;
    let var_2 = -13668i;
    var var_3 = var_1.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(434f, var_0.x, var_0.x), vec3<f32>(-322f, var_0.x, -333f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-575f, var_0.x, -529f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -926f, 239f), vec3<f32>(var_0.x, var_0.x, -563f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 445f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_6(vec3<bool>(true, true, true), var_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1081f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x)))))))));
    global0 = 57225u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-100f, _wgslsmith_f_op_f32(func_6(vec3<bool>(true, false, true), Struct_1(var_2))), func_1(var_0.x, Struct_3(vec4<i32>(var_1.a, 101215i, var_2, -51976i), vec4<i32>(14070i, 0i, -1i, var_1.a), false, Struct_2(false, 31082u, var_2), true)).c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_4.x))))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1004f - var_0.x)))));
}

