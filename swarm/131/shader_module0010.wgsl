struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> vec3<i32> {
    var var_0 = ~_wgslsmith_mult_u32(max(~4294967295u, u_input.d) << (~42479u % 32u), 27120u);
    global0 = _wgslsmith_sub_vec2_i32(u_input.c.xw, abs(-vec2<i32>(arg_3.x & 30954i, _wgslsmith_add_i32(u_input.c.x, arg_3.x))));
    global0 = vec2<i32>(abs(max(~abs(global0.x), ~arg_3.x)), global0.x);
    var var_1 = vec4<bool>(!(all(vec2<bool>(false, arg_2)) & arg_0.x), arg_0.x && arg_2, arg_0.x, false);
    var_1 = vec4<bool>(false, !(!any(select(vec2<bool>(true, false), vec2<bool>(true, var_1.x), arg_2))), any(!(!(!vec4<bool>(arg_2, var_1.x, true, arg_0.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-2147483647i), 1i, arg_3.x, u_input.c.x), vec4<i32>(global0.x ^ u_input.c.x, _wgslsmith_clamp_i32(u_input.a, -1i, -3564i), -2147483647i, 2147483647i)) != -_wgslsmith_div_i32(global0.x, u_input.a));
    return ~u_input.c.zzw;
}

fn func_4(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), true, false), ~(vec3<i32>(-1i) * -u_input.c.yyx), firstTrailingBit(min(~u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1007f, 878f, 121f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-589f, 196f, 710f) - vec3<f32>(-378f, 293f, -1082f)))), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)));
    global0 = arg_0.zz;
    global0 = arg_0.yz;
    let var_1 = var_0.a.e;
    let var_2 = select(reverseBits(abs(~select(4294967295u, var_0.a.e, false))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(var_1, var_1, 4294967295u)), vec3<u32>(77560u, 99970u, var_0.a.e)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(35224u, var_0.a.c.x, 0u), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u)), ~vec3<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, var_0.a.c.x), var_0.a.e << (var_1 % 32u))), var_0.a.a.x & !(var_0.a.a.x && true));
    return ~vec3<u32>(57455u, 41794u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.a.e | 1u, u_input.b.x), 59844u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 23317u, 4294967295u), vec3<u32>(var_2, 26577u, var_0.a.e))));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(vec3<bool>(false, any(vec4<bool>(false, false, false, true)) && all(vec4<bool>(true, false, true, false)), true), abs(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, 1i, global0.x), firstLeadingBit(u_input.c.xyx))), reverseBits(vec2<u32>(_wgslsmith_div_u32(42402u, arg_3.x), arg_3.x >> (u_input.b.x % 32u))), vec3<f32>(327f, arg_0.x, -2435f), ~(~(511u << (1u % 32u)))), vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_3.x, 1u)), ~u_input.b), arg_1, _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, arg_1), ~50450u)) << (~(~(~vec3<u32>(arg_3.x, u_input.d, arg_3.x))) % vec3<u32>(32u)), Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), u_input.c.xxx, arg_3.yy, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -1113f, 389f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(187f, arg_2.x, 1314f))), 55574u)));
    var_0 = Struct_3(Struct_1(!select(vec3<bool>(false, var_0.c.a.a.x, false), !vec3<bool>(var_0.a.a.x, var_0.a.a.x, false), var_0.c.a.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, u_input.a) | (u_input.c.xyz << (var_0.b % vec3<u32>(32u))), var_0.a.b), var_0.b.zx, var_0.c.a.d, 0u), ~(countOneBits(_wgslsmith_mult_vec3_u32(arg_3, var_0.b)) & (var_0.b | abs(vec3<u32>(0u, arg_1, 49520u)))), var_0.c);
    var_0 = Struct_3(var_0.c.a, abs(vec3<u32>(~arg_1 & (1u | u_input.d), _wgslsmith_mod_u32(~10642u, 4294967295u), arg_3.x)), Struct_2(var_0.a));
    var_0 = Struct_3(var_0.c.a, _wgslsmith_div_vec3_u32(~((var_0.b << (var_0.b % vec3<u32>(32u))) | ~vec3<u32>(u_input.d, arg_3.x, u_input.b.x)), func_4(func_3(var_0.a.a.yx, _wgslsmith_add_u32(62951u, var_0.b.x), all(var_0.a.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c.a.b.x, global0.x, u_input.a, -29447i), u_input.c, vec4<i32>(u_input.a, var_0.a.b.x, -2147483647i, var_0.c.a.b.x))))), Struct_2(Struct_1(select(select(vec3<bool>(var_0.c.a.a.x, var_0.a.a.x, var_0.c.a.a.x), vec3<bool>(true, false, var_0.a.a.x), false), vec3<bool>(var_0.a.a.x, false, false), global0.x > 0i), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, 0i, u_input.c.x)), u_input.c.zyz, abs(var_0.c.a.b)), vec2<u32>(~0u, select(13692u, 8352u, true)), var_0.a.d, 17403u)));
    let var_1 = 10487i;
    return var_0.a;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = 1i;
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 213f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-148f, 2202f) + vec2<f32>(-1689f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, -1727f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-913f, 2035f)))))), u_input.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(774f, 1000f), vec2<f32>(-1080f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1470f, -693f))))))), (~(~vec3<u32>(4294967295u, u_input.b.x, 47426u)) ^ vec3<u32>(~arg_0, 7546u, 33405u | arg_0)) >> (firstLeadingBit(~(~vec3<u32>(83307u, arg_0, u_input.b.x))) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    global0 = vec2<i32>(0i, firstTrailingBit(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, -2147483647i), vec3<i32>(arg_0.a.b.x, -25204i, -13510i)))) << (u_input.d % 32u));
    global0 = u_input.c.xw;
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(func_2(arg_0.a.d.xz, 1u, vec2<f32>(arg_1, 321f), vec3<u32>(0u, u_input.b.x, 1u)).b.x << (~u_input.b.x % 32u)), 43546i), _wgslsmith_mod_vec2_i32(arg_0.a.b.yy, firstLeadingBit(arg_0.a.b.zz) >> (u_input.b % vec2<u32>(32u))));
    var var_0 = Struct_3(arg_0.a, ~(vec3<u32>(abs(7173u), _wgslsmith_sub_u32(58671u, u_input.d), _wgslsmith_clamp_u32(81291u, u_input.b.x, arg_0.a.c.x)) >> (~vec3<u32>(u_input.d, u_input.b.x, u_input.d) % vec3<u32>(32u))), Struct_2(func_1(~(~0u))));
    var_0 = Struct_3(var_0.a, countOneBits(vec3<u32>(4294967295u, ~var_0.a.e << (reverseBits(38541u) % 32u), 46156u)), var_0.c);
    return vec2<i32>(arg_0.a.b.x, firstTrailingBit(2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-57377i) ^ min(global0.x, _wgslsmith_mult_i32(1i, 0i));
    global0 = min(func_5(Struct_2(func_1(~u_input.d)), 453f), u_input.c.ww);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1550f)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(var_1 - func_1(24551u).d.x), 26216u, ~reverseBits(vec4<u32>(3416u, 15483u, u_input.d, countOneBits(u_input.d))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, reverseBits(98148u)), vec2<u32>(u_input.b.x, 27695u)));
}

