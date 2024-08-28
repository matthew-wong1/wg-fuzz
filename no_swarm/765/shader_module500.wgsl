struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(arg_1.a.c.b.x, 12797i, 1i, global0.c.c.b.x) << (vec4<u32>(u_input.b, global0.c.c.a, global0.c.c.a, 0u) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, 47051u), vec4<u32>(u_input.b, global1.c.a, 78747u, arg_1.e.c.a) << (vec4<u32>(global0.c.c.a, global1.c.a, global0.c.c.a, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(22241i, global1.c.b.x, arg_1.a.c.b.x, arg_0.a.c.b.x), global0.c.c.b) | (i32(-1i) * -38410i), _wgslsmith_dot_vec4_i32(global0.c.c.b | global1.c.b, vec4<i32>(arg_0.a.c.b.x, arg_0.a.c.b.x, -34734i, -29445i)), arg_1.e.c.b.x, i32(-1i) * -2147483647i), abs(global0.c.c.b)), (-global0.c.c.b >> (((vec4<u32>(1892u, 56076u, global0.c.c.a, global1.c.a) | vec4<u32>(68049u, arg_0.a.c.a, u_input.a.x, 6896u)) ^ reverseBits(vec4<u32>(global1.c.a, 1u, global0.c.c.a, arg_0.a.c.a))) % vec4<u32>(32u))) >> (vec4<u32>(~0u, ~u_input.b, (arg_1.e.c.a >> (67894u % 32u)) & ~102335u, firstLeadingBit(40713u >> (arg_0.a.c.a % 32u))) % vec4<u32>(32u)));
    var var_1 = arg_1.e;
    let var_2 = abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(min(1u, 0u), ~14117u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.c.a, u_input.b, u_input.a.x, 1u), vec4<u32>(28118u, global1.c.a, 22698u, 4752u))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), vec3<u32>(0u, 112745u, 21960u)), ~(~vec3<u32>(4294967295u, arg_0.a.c.a, global1.c.a))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_f_op_f32(min(-812f, -1908f))))), 1035f));
    let var_4 = -450f;
    return _wgslsmith_div_i32(-_wgslsmith_mod_i32(~abs(1i), firstTrailingBit(~var_1.c.b.x)), abs(-(i32(-1i) * -32628i)) << (~(~0u) % 32u));
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, global0.a), 1i), func_3(Struct_5(global0.c), Struct_3(global0.c, true, _wgslsmith_div_f32(global0.c.a.x, global0.c.b), Struct_1(20822u, vec4<i32>(37744i, 52307i, global1.c.b.x, global0.b), vec4<bool>(global1.c.c.x, global1.c.c.x, global0.c.c.c.x, true)), global0.c))), global1.c.b.x, Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.c.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, 541f))))), -1000f, Struct_1(7064u, ~firstLeadingBit(global1.c.b), vec4<bool>(global1.c.c.x, global0.c.c.c.x, global1.c.c.x, true))));
    let var_1 = var_0.c.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(154f * global0.c.a.x) * 1835f), -125f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -301f)))));
    var var_3 = Struct_1(u_input.a.x, vec4<i32>(abs(min(1i >> (global1.c.a % 32u), select(global1.c.b.x, 18017i, global1.c.c.x))), 2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(func_3(Struct_5(global0.c), Struct_3(Struct_2(vec2<f32>(global0.c.a.x, var_2.x), global0.c.b, Struct_1(global1.c.a, vec4<i32>(1i, global1.c.b.x, global0.c.c.b.x, -18672i), global1.c.c)), global0.c.c.c.x, var_2.x, global0.c.c, global0.c)), _wgslsmith_add_i32(global0.b, 1i)), -(~0i)), -1i & -_wgslsmith_mult_i32(global1.c.b.x, global1.c.b.x)), global0.c.c.c);
    var_3 = var_0.c.c;
    return Struct_4(-global1.c.b.x, var_3.b.x, global0.c);
}

fn func_4(arg_0: Struct_4) -> f32 {
    var var_0 = arg_0.c.b;
    let var_1 = true;
    var_0 = -942f;
    let var_2 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.a.x + 1076f), _wgslsmith_f_op_f32(global1.a.x - 2092f)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(global0.c.b)))), func_2(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.c.c.a, 102714u, arg_0.c.c.a, global0.c.c.a), ~vec4<u32>(4294967295u, arg_0.c.c.a, 42969u, global1.c.a))).c.c), false, 139f, Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(~23573u, u_input.b), 32223u), vec4<i32>(min(arg_0.a, ~0i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.b.x, global0.b, -1i), global1.c.b.yzw), 0i), min(-2147483647i, 1i), global1.c.b.x), global0.c.c.c), func_2(select(~(~vec4<u32>(global0.c.c.a, u_input.a.x, u_input.b, 0u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.c.a, global1.c.a, 1u, 1u), vec4<u32>(global1.c.a, 0u, arg_0.c.c.a, 0u)), vec4<u32>(u_input.a.x, 1u, global1.c.a, arg_0.c.c.a) >> (vec4<u32>(global0.c.c.a, arg_0.c.c.a, 4294967295u, 1u) % vec4<u32>(32u))), !(!vec4<bool>(arg_0.c.c.c.x, true, var_1, global0.c.c.c.x)))).c);
    var var_3 = vec3<u32>(countOneBits(42335u), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(func_2(vec4<u32>(4269u, u_input.b, global1.c.a, 1u)).c.c.a, 41686u, 72910u), _wgslsmith_dot_vec2_u32(u_input.a.zz, _wgslsmith_add_vec2_u32(vec2<u32>(90264u, 96721u), vec2<u32>(4294967295u, var_2.a.c.a)))), 10025u);
    return global0.c.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_3 {
    var var_0 = firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(-3879i, ~2147483647i, _wgslsmith_mult_i32(0i, 97186i)), global1.c.b.x, _wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(i32(-1i) * -42176i, global1.c.b.x))));
    global1 = global0.c;
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.a))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.c.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, global0.c.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1549f)), func_2(vec4<u32>(50097u, u_input.a.x, global0.c.c.a, global1.c.a)).c.c.c.xz)))), 685f, func_2(select(reverseBits(firstLeadingBit(vec4<u32>(u_input.a.x, 4840u, arg_1.a, 4294967295u))), abs(vec4<u32>(global1.c.a, arg_1.a, 1u, u_input.b)) & vec4<u32>(global0.c.c.a, global0.c.c.a, 4294967295u, 57670u), select(global1.c.c.x, false, arg_1.c.x) | arg_2.x)).c.c);
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(~func_3(Struct_5(Struct_2(global1.a, -281f, Struct_1(17331u, vec4<i32>(arg_1.b.x, global0.b, global1.c.b.x, arg_1.b.x), global0.c.c.c))), Struct_3(Struct_2(vec2<f32>(1664f, -998f), arg_0.x, arg_1), arg_2.x, 518f, global0.c.c, global0.c)) & 1i, _wgslsmith_add_i32(-61561i, _wgslsmith_mult_i32(arg_1.b.x, i32(-1i) * -10474i)), abs(-min(-70845i, 2147483647i))), ~((abs(vec3<i32>(global0.c.c.b.x, var_0.x, -2147483647i)) << ((vec3<u32>(1u, global1.c.a, arg_1.a) ^ u_input.a) % vec3<u32>(32u))) & firstLeadingBit(reverseBits(vec3<i32>(18934i, global1.c.b.x, 1i)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.x, global0.c.b, -2291f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.a.x, -165f, global0.c.b, global1.b), vec4<f32>(992f, arg_0.x, 140f, -1481f), arg_1.c))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, global1.a.x, global1.a.x, 917f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.x, arg_0.x, global0.c.b))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-815f, global0.c.b, 449f, global0.c.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.c.a.x, -563f, -632f) + vec4<f32>(-1824f, arg_0.x, -1611f, global1.a.x))))))) - vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_4(~1i, 6877i, global0.c))), _wgslsmith_f_op_f32(min(127f, global0.c.b)), _wgslsmith_div_f32(arg_0.x, 476f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(-2147483647i, arg_1.b.x, Struct_2(vec2<f32>(-1541f, arg_0.x), global0.c.b, Struct_1(global0.c.c.a, global0.c.c.b, global1.c.c))))) + global0.c.a.x)));
    return Struct_3(func_2(~select(vec4<u32>(28107u, u_input.a.x, u_input.b, arg_1.a), ~vec4<u32>(global1.c.a, 33554u, 17802u, arg_1.a), global0.c.b <= -1832f)).c, any(global0.c.c.c), global0.c.b, arg_1, global0.c);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> vec4<bool> {
    let var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.c.a, u_input.b, global1.c.a, u_input.b), vec4<u32>(global1.c.a, arg_1, arg_1, u_input.b), vec4<u32>(u_input.a.x, u_input.b, global0.c.c.a, global0.c.c.a))))), global0.c.a.x), func_2(vec4<u32>(~global1.c.a, ~0u, 1u, ~select(global0.c.c.a, global0.c.c.a, true))).c.c, !select(global0.c.c.c, !global1.c.c, vec4<bool>(global0.c.c.c.x, !global1.c.c.x, true, true)));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(-global0.c.b)))), _wgslsmith_f_op_f32(-1000f - var_0.c), global0.c.c);
    global1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(651f - _wgslsmith_f_op_f32(step(global0.c.b, 835f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, global0.c.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -841f) * _wgslsmith_f_op_f32(global1.a.x * 603f)))), Struct_1(global1.c.a, _wgslsmith_div_vec4_i32(vec4<i32>(5042i ^ global1.c.b.x, -global1.c.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.b.x, 12436i, global0.b, 0i), global1.c.b), _wgslsmith_clamp_i32(2147483647i, 2147483647i, -32063i)), -(~global0.c.c.b)), vec4<bool>(true, var_0.a.c.c.x, var_0.d.c.x, var_0.d.b.x < _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, 3091i, -1i, 0i), vec4<i32>(global0.b, global1.c.b.x, var_0.e.c.b.x, global1.c.b.x)))), !vec4<bool>(global0.c.c.c.x, global1.c.c.x, global1.c.c.x, 2147483647i > global0.c.c.b.x)).e;
    global0 = Struct_4(_wgslsmith_mod_i32(-23146i, global0.c.c.b.x), _wgslsmith_mod_i32(~abs(-13302i), _wgslsmith_add_i32(func_3(Struct_5(global0.c), Struct_3(global0.c, global1.c.c.x, global1.b, Struct_1(global0.c.c.a, vec4<i32>(-19036i, 41974i, var_0.a.c.b.x, global0.c.c.b.x), var_0.e.c.c), global0.c)), _wgslsmith_div_i32(min(-1i, global0.c.c.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1993i, var_0.a.c.b.x), global0.c.c.b.xyw)))), func_2(vec4<u32>(~arg_1 | 70313u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, 1u), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a)), (4294967295u >> (u_input.a.x % 32u)) << (14617u % 32u), _wgslsmith_mod_u32(var_0.d.a, func_5(global0.c.a, global0.c.c, var_0.a.c.c).d.a))).c);
    global1 = global0.c;
    return func_2(vec4<u32>(firstLeadingBit(var_0.d.a), reverseBits(global1.c.a) & abs(10784u), 44344u, 0u) >> ((((vec4<u32>(global0.c.c.a, 18471u, global1.c.a, global1.c.a) << (vec4<u32>(global0.c.c.a, 4294967295u, global0.c.c.a, 4294967295u) % vec4<u32>(32u))) & ~vec4<u32>(3066u, global0.c.c.a, global0.c.c.a, 76756u)) | countOneBits(reverseBits(vec4<u32>(global1.c.a, 4294967295u, global1.c.a, 110763u)))) % vec4<u32>(32u))).c.c.c;
}

fn func_6(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    return Struct_2(vec2<f32>(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(step(-931f, _wgslsmith_f_op_f32(sign(-1000f))))), global0.c.a.x), _wgslsmith_f_op_f32(step(global0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f * global1.b)))), Struct_1(arg_1, firstTrailingBit(global1.c.b), func_1(global0.c.a, ~42007u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(vec2<bool>(all(func_1(global0.c.a, ~u_input.b)), (select(global0.a, global1.c.b.x, true) << (u_input.b % 32u)) <= _wgslsmith_add_i32(0i << (global1.c.a % 32u), func_3(Struct_5(Struct_2(vec2<f32>(global1.b, global0.c.b), global0.c.a.x, Struct_1(25475u, global1.c.b, vec4<bool>(global1.c.c.x, global1.c.c.x, global1.c.c.x, global1.c.c.x)))), Struct_3(Struct_2(global0.c.a, 416f, Struct_1(u_input.a.x, global0.c.c.b, vec4<bool>(false, true, global1.c.c.x, global0.c.c.c.x))), true, global1.a.x, global0.c.c, global0.c)))), 23116u);
    global1 = global0.c;
    global1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(2147483647i, -26331i, global0.c)))) * _wgslsmith_f_op_f32(f32(-1f) * -1203f))), global1.c, global0.c.c.c).a;
    let var_0 = 87101u;
    var var_1 = _wgslsmith_div_f32(global1.b, 888f);
    let var_2 = select(vec4<i32>(~(~global1.c.b.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(-18037i, global0.b)), global0.c.c.b.x), -35407i, countOneBits(-(global0.c.c.b.x & global0.a))), global0.c.c.b, !(!global0.c.c.c));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -609f);
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(-62866i, 0i), ~(~abs(_wgslsmith_mult_vec2_i32(global1.c.b.wy, vec2<i32>(2147483647i, global1.c.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_6(vec2<bool>(false, global0.c.c.c.x & global0.c.c.c.x), ~u_input.b | var_0).c.b.x), select(select(vec4<u32>(var_0, global1.c.a, 17059u, var_0), ~vec4<u32>(global0.c.c.a, global0.c.c.a, global1.c.a, global0.c.c.a), true) ^ ~select(vec4<u32>(u_input.a.x, global1.c.a, var_0, u_input.a.x), vec4<u32>(global1.c.a, global0.c.c.a, u_input.a.x, u_input.b), global1.c.c.x), _wgslsmith_sub_vec4_u32((vec4<u32>(var_0, var_0, 1u, 0u) >> (vec4<u32>(51495u, 0u, 3920u, global1.c.a) % vec4<u32>(32u))) | select(vec4<u32>(47424u, var_0, 1u, u_input.a.x), vec4<u32>(var_0, 9283u, global1.c.a, 0u), global0.c.c.c), _wgslsmith_mod_vec4_u32(min(vec4<u32>(global0.c.c.a, global1.c.a, 83151u, 100431u), vec4<u32>(u_input.a.x, 4294967295u, var_0, 1u)), vec4<u32>(19019u, var_0, var_0, u_input.a.x))), all(vec3<bool>(global1.c.c.x, global0.c.c.c.x && false, func_1(global0.c.a, global1.c.a).x))), 1u, _wgslsmith_mult_i32(global1.c.b.x, select(-var_3.x, var_2.x >> (func_5(vec2<f32>(138f, global0.c.a.x), Struct_1(32649u, vec4<i32>(-2147483647i, 2147483647i, 52418i, -1i), global0.c.c.c), vec4<bool>(false, true, true, global0.c.c.c.x)).e.c.a % 32u), -1i != min(-2147483647i, var_2.x))));
}

