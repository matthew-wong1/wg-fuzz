struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-12477i), vec4<f32>(950f, 131f, 574f, 1981f), vec2<i32>(1i, -5410i), false);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: Struct_1 = Struct_1(-46924i);

var<private> global3: f32;

var<private> global4: Struct_3 = Struct_3(vec2<u32>(8815u, 17253u), Struct_2(Struct_1(54470i), vec4<f32>(184f, 1320f, 1720f, -503f), vec2<i32>(-2872i, 1i), false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    var var_0 = ~(-_wgslsmith_clamp_i32(global4.b.a.a, firstTrailingBit(global4.b.c.x) | ~global4.b.c.x, 1i));
    var var_1 = select(_wgslsmith_mod_i32(u_input.b, 2147483647i), ~global4.b.c.x, any(vec3<bool>(true, false, true)));
    var var_2 = arg_0;
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x)))));
    global4 = Struct_3(global4.a, Struct_2(Struct_1(arg_0.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 1000f, 585f, -622f))))), -_wgslsmith_sub_vec2_i32(vec2<i32>(2013i, -75570i), vec2<i32>(global0.c.x, -39846i)) | vec2<i32>(_wgslsmith_mod_i32(0i, arg_2), global2.a), false));
    return var_2.b;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: f32, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, global0.b.x, arg_2, -1807f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 1406f, 578f, -227f)))))) * _wgslsmith_f_op_vec4_f32(func_3(Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 752f, 501f, -984f) - vec4<f32>(-355f, -1047f, arg_2, -702f))), vec2<i32>(-67040i, global2.a), global0.d), Struct_1(-1i), _wgslsmith_sub_i32(2147483647i << (0u % 32u), ~_wgslsmith_div_i32(25173i, u_input.b)))));
    let var_1 = !select(select(!vec4<bool>(true, true, global1.x, global0.d), !select(vec4<bool>(global0.d, true, global4.b.d, false), vec4<bool>(true, true, false, false), global4.b.d), !vec4<bool>(true, false, global0.d, global4.b.d)), vec4<bool>(true, any(vec3<bool>(global4.b.d, global1.x, true)), false, !global1.x), vec4<bool>(!global1.x, !all(vec3<bool>(true, false, false)), !all(vec2<bool>(global4.b.d, true)), (false | global1.x) || true));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(global4.b, global0.a, ~(-2147483647i))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + -392f)), arg_2))));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1507f, var_2.x))), 592f, var_0.x, 1181f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1372f, global4.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -307f)), u_input.b != -_wgslsmith_mod_i32(global4.b.a.a, u_input.b))), select(~(~(~global0.c)), abs(vec2<i32>(min(global4.b.c.x, 0i), global2.a | 38219i)), select(var_1.wx, select(var_1.zz, vec2<bool>(global0.d, global0.d), select(global1.x, true, global1.x)), vec2<bool>(true, true))), !global0.d);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(668f * arg_2));
    return Struct_3(~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, u_input.d)), ~global4.a >> (reverseBits(vec2<u32>(arg_1.x, 9759u)) % vec2<u32>(32u))), global4.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_5) -> f32 {
    let var_0 = arg_3.b.a;
    var var_1 = func_2(5500u, firstTrailingBit(arg_0.a), 401f, -229f).b;
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x ^ 25897u, _wgslsmith_dot_vec3_u32(~u_input.c.xyx, u_input.c.wzy) | global4.a.x, ~(~global4.a.x)), _wgslsmith_div_vec3_u32(u_input.c.wyx, u_input.c.zwy));
    let var_3 = func_2(49801u, ~(~vec2<u32>(arg_0.a.x, global4.a.x)), -469f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.b.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.a.x, global0.b.x), -555f)))));
    var var_4 = arg_3.b;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-402f)), _wgslsmith_f_op_f32(arg_3.a.x + global4.b.b.x)));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_3 {
    global0 = func_2(global4.a.x >> (u_input.d % 32u), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), firstLeadingBit(vec2<u32>(global4.a.x, arg_1.x))), arg_1), ~select(vec2<u32>(arg_1.x, global4.a.x), _wgslsmith_add_vec2_u32(u_input.c.zx, vec2<u32>(global4.a.x, 0u)), !vec2<bool>(true, global4.b.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(938f + -664f) * arg_0)), -950f).b;
    let var_0 = global4.a.x;
    global0 = Struct_2(Struct_1(u_input.b), vec4<f32>(_wgslsmith_f_op_f32(865f * _wgslsmith_f_op_f32(f32(-1f) * -911f)), global4.b.b.x, _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -2483f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1822f, global4.b.b.x)), _wgslsmith_f_op_f32(arg_0 - global4.b.b.x), global4.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(global4.b, Struct_1(global2.a), 7783i)).x), true))), reverseBits(min(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2147483647i), firstTrailingBit(vec2<i32>(global0.c.x, -2147483647i))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(global4.b.c, vec2<i32>(global4.b.c.x, -1i)), vec2<i32>(2147483647i, u_input.b)))), !global0.d);
    var var_1 = select(!(!(!select(vec4<bool>(arg_2.d, global0.d, global1.x, true), vec4<bool>(true, global0.d, true, false), vec4<bool>(arg_2.d, false, global1.x, false)))), !select(vec4<bool>(arg_1.x == global4.a.x, any(vec3<bool>(true, true, false)), all(vec4<bool>(arg_2.d, false, false, true)), select(global1.x, false, global0.d)), vec4<bool>(func_2(u_input.c.x, vec2<u32>(0u, 4294967295u), 1178f, -141f).b.d, true, any(vec4<bool>(global0.d, global1.x, true, arg_2.d)), global0.d), select(!vec4<bool>(true, true, global0.d, false), vec4<bool>(global4.b.d, arg_2.d, false, global0.d), !global0.d)), vec4<bool>(!(!all(vec3<bool>(global0.d, false, true))), global0.d, global1.x, true));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2203f, -1380f)))))), func_2(_wgslsmith_dot_vec3_u32(abs(u_input.c.zwx), u_input.c.xyw ^ vec3<u32>(u_input.c.x, 4294967295u, global4.a.x)), global4.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.b.b.x)) + arg_0)).b.a);
    return Struct_3(~(~abs(arg_1)), Struct_2(func_2(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_1.x, 1u), _wgslsmith_div_u32(global4.a.x, 53029u), global4.a.x), ~vec2<u32>(0u, 34519u), _wgslsmith_f_op_f32(arg_2.b.x * -118f), arg_0).b.a, global0.b, vec2<i32>(-1i, func_2(global4.a.x >> (1u % 32u), global4.a, _wgslsmith_f_op_f32(global0.b.x + arg_2.b.x), _wgslsmith_f_op_f32(abs(-324f))).b.c.x), !any(vec3<bool>(global4.b.d, global0.d, global0.d))));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_5) -> vec3<u32> {
    var var_0 = func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_2(~u_input.d, _wgslsmith_mult_vec2_u32(u_input.c.xz, vec2<u32>(u_input.d, global4.a.x)), arg_1.a, _wgslsmith_f_op_f32(global0.b.x - 2010f)), func_2(22533u, firstLeadingBit(vec2<u32>(4294967295u, global4.a.x)), arg_1.a, 273f).b.b.xyw, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(221f, arg_3.a.x, 502f), _wgslsmith_div_vec3_f32(global0.b.xxw, global4.b.b.xyw), true)), Struct_5(global4.b.b.wz, func_2(44350u, vec2<u32>(10299u, 39356u), 730f, 108f).b.a))))), ~(~(~u_input.c.zx)) << (~(~_wgslsmith_div_vec2_u32(u_input.c.yw, vec2<u32>(global4.a.x, u_input.c.x))) % vec2<u32>(32u)), global4.b);
    var var_1 = var_0.b.c.x;
    let var_2 = var_0.b.c;
    let var_3 = func_5(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(global4.a, global4.b), vec3<f32>(1400f, global4.b.b.x, arg_3.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-351f, -1000f, -1968f)), Struct_5(global4.b.b.ww, Struct_1(110921i)))) + -504f), select(vec2<u32>(_wgslsmith_add_u32(32725u, var_0.a.x), 0u), vec2<u32>(firstLeadingBit(global4.a.x), countOneBits(var_0.a.x)), !any(vec2<bool>(false, true))), func_2(~_wgslsmith_mult_u32(u_input.d, global4.a.x), firstLeadingBit(~u_input.c.wz), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.b.b.x), _wgslsmith_f_op_f32(113f + var_0.b.b.x), true)), var_0.b.b.x).b).b.b.x, vec2<u32>(u_input.a, ~(~(~29231u))), func_2(u_input.d, vec2<u32>(u_input.a, ~abs(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(round(func_2(~44205u, firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)), global4.b.b.x, _wgslsmith_f_op_f32(-561f * -517f)).b.b.x))).b).b;
    var var_4 = arg_3.b.a < _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, -2147483647i, 0i), vec3<i32>(arg_0, -2147483647i, -2147483647i) << (vec3<u32>(1u, u_input.d, 0u) % vec3<u32>(32u))), abs(vec3<i32>(14493i, global0.a.a, var_2.x))), ~abs(2147483647i));
    return u_input.c.xxx;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    let var_0 = global4.b;
    global1 = arg_0;
    global4 = func_2(_wgslsmith_add_u32(global4.a.x | 73837u, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.b.b.x))), vec2<u32>(arg_1.x & 1u, arg_1.x), global4.b).a.x), vec2<u32>(4294967295u, u_input.c.x >> (~select(4294967295u, 16894u, arg_2) % 32u)), global0.b.x, _wgslsmith_f_op_f32(abs(549f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(var_0.b.x, func_1(-2147483647i, Struct_4(-1131f), 55255i, Struct_5(vec2<f32>(-797f, global0.b.x), Struct_1(1i))).xy, Struct_2(func_5(global0.b.x, vec2<u32>(arg_1.x, 4294967295u), Struct_2(global0.a, var_0.b, global0.c, global4.b.d)).b.a, vec4<f32>(var_0.b.x, global4.b.b.x, var_0.b.x, global0.b.x), vec2<i32>(-20632i, global0.c.x) << (vec2<u32>(u_input.a, global4.a.x) % vec2<u32>(32u)), false)).b.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1678f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(1876f * 628f)))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -275f));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1 - 1097f))), _wgslsmith_div_f32(432f, global0.b.x), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(!vec2<bool>(global0.d, !global0.d), max(u_input.c.zxw, _wgslsmith_div_vec3_u32(u_input.c.wwy ^ func_1(global2.a, Struct_4(-1184f), global2.a, Struct_5(vec2<f32>(global0.b.x, -220f), global4.b.a)), min(countOneBits(vec3<u32>(4294967295u, 1u, 4294967295u)), _wgslsmith_mod_vec3_u32(u_input.c.zyz, u_input.c.zyx)))), func_5(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(trunc(global0.b.x))), global4.a, global4.b).b.d, global0.a);
    global2 = global4.b.a;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.b.b.x)) + -260f), global0.b.x);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(select(_wgslsmith_sub_i32(u_input.b << (1u % 32u), firstTrailingBit(u_input.b)), _wgslsmith_add_i32(global0.c.x >> (0u % 32u), firstLeadingBit(-41426i)), !all(vec3<bool>(global1.x, global4.b.d, global1.x))), global2.a), vec2<i32>(-13476i, -14656i) << (~u_input.c.xz % vec2<u32>(32u)));
    let var_3 = func_2(firstTrailingBit(89744u), vec2<u32>(4294967295u, ~func_1(global4.b.a.a, Struct_4(global0.b.x), reverseBits(21916i), Struct_5(vec2<f32>(-654f, 601f), global0.a)).x), _wgslsmith_f_op_f32(810f - _wgslsmith_f_op_f32(-369f - 479f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x - -163f), _wgslsmith_f_op_f32(trunc(var_0.a)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -241f)))))))).b;
    var var_4 = ~firstLeadingBit(~_wgslsmith_dot_vec3_u32(u_input.c.zzy, vec3<u32>(global4.a.x, 20847u, u_input.a))) & ~u_input.a;
    global1 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(global4.b.d, global4.b.d), vec2<bool>(true, false), vec2<bool>(var_3.d, true))), !vec2<bool>(true, global0.d), select(vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, true), vec2<bool>(true, true))), select(select(select(vec2<bool>(false, true), vec2<bool>(global4.b.d, true), vec2<bool>(global0.d, false)), select(vec2<bool>(false, false), vec2<bool>(true, var_3.d), true), vec2<bool>(true, true)), vec2<bool>(func_5(-594f, vec2<u32>(global4.a.x, u_input.d), var_3).b.d, false), vec2<bool>(true, true)), !(!global1.x) | var_3.d), !vec2<bool>(select(global0.d, global1.x, func_5(global4.b.b.x, vec2<u32>(4294967295u, 1u), Struct_2(global4.b.a, vec4<f32>(-142f, -616f, var_3.b.x, 2147f), vec2<i32>(var_3.c.x, u_input.b), false)).b.d), global4.b.d), var_3.d);
    var var_5 = global4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~func_5(_wgslsmith_f_op_f32(-1875f * global4.b.b.x), _wgslsmith_div_vec2_u32(u_input.c.wz, vec2<u32>(1u, 0u)), func_5(var_0.a, u_input.c.zx, global4.b).b).a, -34683i, select((global4.a.x << ((global4.a.x ^ u_input.c.x) % 32u)) & _wgslsmith_div_u32(reverseBits(4294967295u), 79786u), func_1(global2.a, func_6(vec2<bool>(true, global0.d), min(vec3<u32>(u_input.d, 4294967295u, 15175u), vec3<u32>(global4.a.x, global4.a.x, global4.a.x)), global0.d, func_5(181f, vec2<u32>(global4.a.x, global4.a.x), Struct_2(Struct_1(global0.c.x), var_3.b, global4.b.c, global1.x)).b.a), -1i, Struct_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-818f, var_0.a))), Struct_1(2147483647i))).x, !(!all(vec2<bool>(true, global1.x)))), vec3<u32>(0u, ~_wgslsmith_mult_u32(~u_input.d, _wgslsmith_mod_u32(u_input.c.x, 77793u)), reverseBits(~u_input.a & u_input.a)), reverseBits(~firstLeadingBit(countOneBits(u_input.c))));
}

