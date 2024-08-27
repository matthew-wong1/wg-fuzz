struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(21058u, 1u, 81198u, 0u)), Struct_1(vec4<u32>(32598u, 36422u, 45284u, 53689u)), vec3<f32>(378f, -419f, -1000f), vec2<bool>(true, false));

var<private> global1: Struct_3;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_0));
    var_0 = -826f;
    let var_1 = Struct_2(global1.b, Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~global1.b.a, u_input.a), vec4<u32>(~global0.b.a.x, countOneBits(58421u), 9997u, ~global1.b.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0, 557f)), -1125f, -133f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, global0.c.x)))) - vec3<f32>(_wgslsmith_f_op_f32(357f + -1582f), _wgslsmith_f_op_f32(f32(-1f) * -599f), -123f)), vec2<bool>(true, !(select(global1.a, global0.d.x, global0.d.x) & true)));
    let var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(1i, 1i, 1i) << (vec3<u32>(21554u, u_input.a.x, arg_1.a.x) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-25428i, 23594i, -3508i), vec3<i32>(-27951i, -4047i, -2147483647i)), select(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(16901i, 59450i, -2147483647i), false), -vec3<i32>(0i, -16411i, 0i)))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~firstLeadingBit(vec3<i32>(51047i, -34803i, -24798i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -5364i, -1i), vec4<i32>(-7906i, -1i, 1i, -66997i)), 22259i, _wgslsmith_sub_i32(14862i, 62980i))), _wgslsmith_sub_vec3_i32(~vec3<i32>(1i, 1i, 1i), ~select(vec3<i32>(-31645i, -1181i, -2147483647i), vec3<i32>(7158i, 13618i, 2147483647i), false))));
    let var_3 = vec3<u32>(firstLeadingBit(4294967295u), arg_1.a.x | global0.b.a.x, ~abs(var_1.a.a.x)) >> (reverseBits(~firstTrailingBit(vec3<u32>(63783u, 5545u, u_input.a.x))) % vec3<u32>(32u));
    return select(var_1.b.a, ~vec4<u32>(u_input.a.x, 36761u, ~abs(1u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, arg_1.a.x, 2685u, 14742u), vec4<u32>(arg_1.a.x, var_1.a.a.x, var_1.b.a.x, 1u), vec4<bool>(global1.a, var_1.d.x, global0.d.x, global0.d.x)), countOneBits(vec4<u32>(34139u, 1u, 38244u, 0u)))), false || (countOneBits(1i ^ var_2.x) < -firstLeadingBit(-41611i)));
}

fn func_2() -> Struct_1 {
    var var_0 = global1.b.a.x;
    global0 = Struct_2(global0.a, Struct_1(~(~func_3(183f, Struct_1(vec4<u32>(global1.b.a.x, 0u, 0u, 1u))))), global0.c, select(!global0.d, vec2<bool>(global0.d.x, false), true));
    var var_1 = vec3<bool>(true, true, true);
    let var_2 = 51674u;
    global0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(global0.b.a, u_input.a)), global1.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -362f), -720f, -924f), !select(select(select(var_1.yz, vec2<bool>(global0.d.x, global0.d.x), true), !vec2<bool>(global0.d.x, false), select(var_1.zz, vec2<bool>(false, false), var_1.x)), !vec2<bool>(global0.d.x, true), select(vec2<bool>(global1.a, true), select(vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x), global0.d.x), any(vec4<bool>(global1.a, false, false, global1.a)))));
    return Struct_1(u_input.a);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(abs(select(_wgslsmith_div_vec4_u32(global1.b.a, global0.a.a), vec4<u32>(u_input.a.x, 1u, 25915u, 10220u) | vec4<u32>(global1.b.a.x, 0u, u_input.a.x, 1u), vec4<bool>(false, arg_0, false, true)))), func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 1849f, global0.c.x) + vec3<f32>(global0.c.x, global0.c.x, -982f)), vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), global0.c.x, _wgslsmith_f_op_f32(abs(257f))), false)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.c.x - 525f), _wgslsmith_f_op_f32(trunc(1239f)), _wgslsmith_f_op_f32(-global0.c.x)))), global0.d);
    var var_1 = _wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, -1i << (0u % 32u)), _wgslsmith_mult_i32(1i, firstTrailingBit(-14828i)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(3101i, -2147483647i, -21533i, 0i), vec4<i32>(1i, 2147483647i, 2147483647i, 762i)), _wgslsmith_add_i32(-2147483647i, 1i)) ^ _wgslsmith_sub_i32(2147483647i >> (var_0.a.a.x % 32u), 32123i));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1289f))))), _wgslsmith_f_op_f32(round(-2487f)), true)), false && any(select(select(vec3<bool>(false, global1.a, false), vec3<bool>(false, global1.a, true), global1.a), vec3<bool>(true, arg_0, global1.a), var_0.d.x)));
    var var_3 = vec4<f32>(global0.c.x, var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f)), _wgslsmith_f_op_f32(trunc(-764f)));
    var var_4 = _wgslsmith_sub_u32(~abs(0u), global1.b.a.x);
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = func_1(any(vec2<bool>(true, !global0.d.x)), arg_0.a.x << (arg_0.a.x % 32u));
    global0 = Struct_2(Struct_1(firstTrailingBit(~arg_0.a)), global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1740f, arg_1.a, arg_2)), -1000f, -1693f)) + vec3<f32>(global0.c.x, arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, -1000f))))), vec2<bool>(all(vec3<bool>(true, false, all(vec4<bool>(false, global1.a, true, true)))), all(select(vec2<bool>(false, true), global0.d, !global0.d))));
    let var_1 = Struct_3(arg_1.a != -603f, Struct_1(select(~_wgslsmith_mult_vec4_u32(var_0.a, vec4<u32>(var_0.a.x, 1u, arg_0.a.x, 97661u)), ~vec4<u32>(u_input.a.x, 0u, 10719u, 52600u), any(vec3<bool>(true, global0.d.x, arg_1.b)))));
    var var_2 = Struct_2(func_1(true, 0u & ((4294967295u >> (var_1.b.a.x % 32u)) | ~1u)), Struct_1(vec4<u32>(var_1.b.a.x, ~_wgslsmith_sub_u32(3323u, var_1.b.a.x), reverseBits(func_2().a.x), ~4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -1592f, -1276f) * _wgslsmith_f_op_vec3_f32(-global0.c)) - _wgslsmith_f_op_vec3_f32(-global0.c)), vec2<bool>(true, false));
    let var_3 = arg_1;
    return Struct_1(global1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_4(func_1(any(!vec2<bool>(global1.a, global0.d.x)), countOneBits(~92501u)), Struct_4(_wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(min(-1300f, global0.c.x)), all(vec2<bool>(global0.d.x, global0.d.x)))), all(global0.d)), true, _wgslsmith_f_op_f32(-351f + 1733f)), Struct_1(u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + global0.c.x)), _wgslsmith_f_op_f32(240f - -213f))), !select(global0.d, vec2<bool>(true, global0.d.x), select(!global0.d, select(global0.d, vec2<bool>(true, global1.a), true), !vec2<bool>(false, global0.d.x))));
    let var_0 = all(vec4<bool>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.a.x), min(63127u, global1.b.a.x), ~56125u) <= global0.b.a.x, _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(round(107f))) >= _wgslsmith_f_op_f32(-global0.c.x), global1.a, !any(vec4<bool>(true, true, true, global1.a))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(floor(1f)), false);
    global0 = Struct_2(func_1(true, u_input.a.x), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -151f, -1628f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, var_1.a))))), vec2<bool>(all(select(vec4<bool>(var_1.b, global0.d.x, true, false), vec4<bool>(true, true, true, true), true)), var_0));
    var var_2 = _wgslsmith_mult_i32(-11546i, _wgslsmith_sub_i32(26817i, -31038i));
    var var_3 = Struct_2(func_2(), Struct_1(global0.a.a), global0.c, global0.d);
    var_2 = 14951i;
    let var_4 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(global1.b.a, var_3.a.a, ~abs(global1.b.a)), ~countOneBits(vec4<u32>(63876u, 46099u, 1u, global0.a.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_3.c.x, -875f)), _wgslsmith_f_op_f32(685f + var_3.c.x)), -1247f, true))), firstTrailingBit(vec2<i32>(~17810i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -3656i, -2147483647i), vec4<i32>(13188i, -2184i, 0i, 42446i)))) ^ max(vec2<i32>(~4282i, i32(-1i) * -17285i), vec2<i32>(-22245i, -1i)), vec2<f32>(global0.c.x, -1000f), vec3<i32>(~(~firstTrailingBit(1i)), _wgslsmith_sub_i32(1i, 9281i), _wgslsmith_mult_i32(-31274i, select(15702i << (var_4.a.x % 32u), firstLeadingBit(5719i), true))));
}

