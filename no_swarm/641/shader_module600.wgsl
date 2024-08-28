struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: i32 = 11281i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_5) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c, select(~u_input.c, ~arg_2.a.b.b, true), abs(1u)), min(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 17104u, u_input.c, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.c, u_input.c)), vec4<u32>(arg_2.a.b.b, arg_2.a.b.a.x, 65184u, arg_2.a.b.a.x), ~vec4<u32>(u_input.c, 0u, 0u, 11751u)), ~vec4<u32>(4294967295u, 3643u, arg_2.a.b.a.x, u_input.c))), vec4<u32>(~(~u_input.c), ~arg_2.a.b.a.x, ~(~4294967295u), arg_2.a.b.b));
    global1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.a, -arg_1.a, ~26193i, i32(-1i) * -1i), ~vec4<i32>(~(~(-2147483647i)), select(select(u_input.b, u_input.b, false), -24371i, true), -arg_1.a, arg_1.a));
    var var_1 = vec2<i32>(-arg_1.a, arg_1.a);
    var_1 = abs(-_wgslsmith_div_vec2_i32(-vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(44697i, arg_1.a))) ^ (vec2<i32>(-24415i, u_input.a) & _wgslsmith_sub_vec2_i32(vec2<i32>(-44403i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, arg_1.a, var_1.x), vec4<i32>(-1i, -1i, arg_1.a, var_1.x))), min(min(vec2<i32>(var_1.x, arg_1.a), vec2<i32>(u_input.b, arg_1.a)), vec2<i32>(u_input.b, 11645i))));
    var_0 = ~(_wgslsmith_add_vec4_u32(~vec4<u32>(32177u, 0u, 4294967295u, 30320u), vec4<u32>(18804u, 4294967295u, u_input.c, 7574u)) >> (~(~vec4<u32>(arg_2.a.b.a.x, 4294967295u, 31052u, u_input.c)) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(var_0.x), ~1u, _wgslsmith_mult_u32(u_input.c, arg_2.a.b.a.x), 45057u), max(vec4<u32>(4294967295u, u_input.c, u_input.c, var_0.x), vec4<u32>(0u, 29727u, 38765u, 1u) & vec4<u32>(0u, 1u, 4294967295u, var_0.x))), ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.c, 4294967295u, var_0.x)), select(vec4<u32>(u_input.c, 26740u, u_input.c, 1u), vec4<u32>(u_input.c, u_input.c, 0u, 1u), arg_2.a.b.c)));
    return vec4<bool>(true, !(all(!vec2<bool>(arg_2.a.b.c, arg_2.a.b.c)) && (_wgslsmith_dot_vec3_i32(vec3<i32>(41863i, var_1.x, 0i), vec3<i32>(u_input.a, var_1.x, arg_1.a)) > _wgslsmith_div_i32(var_1.x, var_1.x))), !(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_2.a.a)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f - -732f) + _wgslsmith_div_f32(-1173f, -1000f))), all(!select(!vec4<bool>(true, false, global0.x, false), vec4<bool>(arg_2.a.b.c, global0.x, global0.x, true), vec4<bool>(false, false, false, arg_2.a.b.c))));
}

fn func_2(arg_0: Struct_5, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a * arg_0.a.a)))))));
    let var_1 = !select(!vec4<bool>(select(true, true, arg_0.a.b.c), false, true, global0.x), select(func_3(_wgslsmith_f_op_f32(abs(arg_0.a.a)), Struct_3(32423i), arg_0), select(!vec4<bool>(arg_0.a.b.c, arg_0.a.b.c, arg_0.a.b.c, arg_0.a.b.c), select(vec4<bool>(global0.x, true, true, true), vec4<bool>(global0.x, false, false, false), arg_0.a.b.c), true), true), !func_3(1157f, Struct_3(1i), Struct_5(arg_0.a)));
    var var_2 = arg_0.a.b.b;
    var_0 = _wgslsmith_f_op_f32(621f + -224f);
    var var_3 = select(var_1.wzy, var_1.yxw, global0.x);
    return arg_0.a;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_2 {
    global1 = arg_2.a.x;
    let var_0 = func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.d.a + _wgslsmith_f_op_f32(-551f - arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.a))), _wgslsmith_mult_u32(1u, 1u) < ~arg_0)))), Struct_3(i32(-1i) * -1i), Struct_5(arg_1.a)).x;
    var var_1 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_add_i32(~arg_3.x, -u_input.b), abs(arg_2.a.x)) & -37084i);
    var var_2 = ~_wgslsmith_div_i32(_wgslsmith_mult_i32(0i, 0i), -1i);
    var var_3 = !select(global0.yyx, vec3<bool>(all(global0.xwx), global0.x, global0.x), any(vec4<bool>(all(global0.xzx), false, !arg_1.a.b.c, true)));
    return Struct_2(-1149f, arg_2.d.b);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    global1 = 22135i;
    var var_0 = arg_2.a.x;
    let var_1 = Struct_4(~(~vec4<i32>(-5504i, -2147483647i, arg_0.a, 21248i)), vec2<bool>(true, global0.x), vec2<f32>(-119f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(328f, _wgslsmith_f_op_f32(-795f + -809f)))), func_4(_wgslsmith_sub_u32(reverseBits(1u), ~arg_2.a.x) ^ 1u, Struct_5(func_2(Struct_5(Struct_2(-822f, Struct_1(arg_2.a, arg_2.b, true))), 390f)), Struct_4(reverseBits(vec4<i32>(arg_0.a, 24545i, 65097i, arg_0.a) ^ vec4<i32>(u_input.b, 2147483647i, -51552i, u_input.b)), select(func_3(-1000f, Struct_3(arg_0.a), Struct_5(Struct_2(373f, arg_2))).wz, !arg_1, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-669f, -1564f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(582f, 1000f) - vec2<f32>(-602f, -1777f))), func_2(Struct_5(Struct_2(-1000f, Struct_1(arg_2.a, 41103u, false))), _wgslsmith_f_op_f32(f32(-1f) * -1353f)), global0.x), -_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.a, -2147483647i, -2147483647i, u_input.b), ~vec4<i32>(arg_0.a, arg_0.a, 0i, arg_0.a))), arg_2.b < ~4294967295u);
    let var_2 = _wgslsmith_sub_i32(-64210i, -1i);
    var_0 = u_input.c;
    return _wgslsmith_div_i32(2447i, ~(~var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -10088i;
    var var_0 = min(~(65300i << (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u)), _wgslsmith_add_i32(u_input.a, func_1(Struct_3(2147483647i >> (u_input.c % 32u)), global0.zy, Struct_1(abs(vec3<u32>(u_input.c, 0u, 1u)), ~5844u, global0.x))));
    let var_1 = 0u | u_input.c;
    let var_2 = Struct_4(~(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-16152i, u_input.a, -2147483647i, u_input.b), vec4<i32>(u_input.b, -2147483647i, 55253i, 8859i)), u_input.a, 2147483647i, 0i << (var_1 % 32u))), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(ceil(1900f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -902f))))), func_2(Struct_5(Struct_2(-1315f, func_4(var_1, Struct_5(Struct_2(-1138f, Struct_1(vec3<u32>(74365u, var_1, 36721u), 1u, global0.x))), Struct_4(vec4<i32>(-81414i, -17876i, u_input.a, u_input.b), global0.zx, vec2<f32>(-310f, 368f), Struct_2(180f, Struct_1(vec3<u32>(var_1, u_input.c, 4294967295u), 1u, false)), global0.x), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)).b)), _wgslsmith_f_op_f32(-884f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-840f, 742f))))), select(any(vec3<bool>(true, global0.x, global0.x)) && !(!global0.x), false, true));
    var var_3 = ~(~func_4(var_2.d.b.a.x, Struct_5(Struct_2(var_2.d.a, var_2.d.b)), Struct_4(vec4<i32>(0i, 2147483647i, var_2.a.x, var_2.a.x) & vec4<i32>(-43888i, u_input.b, 2147483647i, -2147483647i), var_2.b, vec2<f32>(var_2.c.x, 1812f), func_4(42880u, Struct_5(var_2.d), var_2, vec4<i32>(var_2.a.x, var_2.a.x, u_input.b, 2147483647i)), !var_2.e), ~(~vec4<i32>(-64641i, 1i, -2147483647i, -8550i))).b.a.zx);
    let var_4 = Struct_3(i32(-1i) * -33594i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, var_2.a.x), 2147483647i), var_4.a, 7475i, ~countOneBits(u_input.b)), 0u);
}

