struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(true, 28393u, true, 1u, true);

var<private> global1: f32 = 1446f;

var<private> global2: Struct_4;

var<private> global3: vec2<f32> = vec2<f32>(1349f, -160f);

var<private> global4: vec2<f32> = vec2<f32>(1425f, 1377f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = !select(select(vec2<bool>(true, true), !(!vec2<bool>(global2.e, global2.e)), vec2<bool>(global0.e, all(vec4<bool>(global0.a, global0.c, true, true)))), !vec2<bool>(4294967295u != u_input.a, u_input.a <= 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2714f)) + global3.x) > global3.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1207f, global4.x, global3.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, global3.x, -582f, global3.x), vec4<f32>(498f, global3.x, -672f, 351f)))) - vec4<f32>(-1019f, _wgslsmith_f_op_f32(global3.x + -845f), -1317f, _wgslsmith_f_op_f32(global4.x + 266f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1298f, global4.x, -473f, global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-587f, global4.x, 1189f, 1188f), vec4<f32>(1476f, 530f, 222f, -731f)))), !(!global2.c)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global4.x, -1014f)))), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -766f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.x), global3.x)))))));
    global0 = Struct_4(any(!select(!vec4<bool>(false, var_0.x, var_0.x, global0.e), !vec4<bool>(var_0.x, false, var_0.x, false), !vec4<bool>(var_0.x, global2.a, global2.c, true))), firstLeadingBit(_wgslsmith_div_u32(~max(33066u, u_input.a), _wgslsmith_mod_u32(37106u, 44535u))), global0.e, u_input.a, false);
    let var_2 = u_input.a;
    var var_3 = select(arg_0.c, arg_0.c, !(!select(vec4<bool>(true, global0.c, true, false), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, global0.e), var_0.x), select(vec4<bool>(false, global2.e, true, false), vec4<bool>(false, global2.c, global0.e, true), global2.a))));
    return vec2<i32>(arg_0.a, ~max(firstLeadingBit(1i), abs(0i & arg_0.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<f32> {
    global0 = Struct_4(false, global0.b, ~(u_input.a | _wgslsmith_clamp_u32(global0.d, 0u, global0.b)) == ~u_input.a, min(global0.d, 1u), !any(select(!vec4<bool>(false, true, global0.a, global2.e), !vec4<bool>(true, false, global0.c, global2.e), vec4<bool>(true, false, global0.e, global0.c))));
    global1 = global3.x;
    global0 = Struct_4(global2.c, u_input.a << (firstTrailingBit(~(u_input.a >> (4294967295u % 32u))) % 32u), global0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 52559u, global2.b), vec3<u32>(4294967295u, select(1u, u_input.a, true), global2.d & 70396u) >> (vec3<u32>(~1u, 4294967295u, global0.b) % vec3<u32>(32u))), false);
    let var_0 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.b, global0.b), vec2<u32>(~arg_1.a.x, ~arg_1.a.x))), global2.d, firstTrailingBit(global2.b ^ _wgslsmith_dot_vec2_u32(arg_1.a.ww, arg_1.a.wx)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, arg_1.a.x), ~abs(vec3<u32>(1u, u_input.a, u_input.a))), select(u_input.a, firstLeadingBit(17743u), true)));
    var var_1 = Struct_2(_wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, 4294967295u), ~var_0)), ~(~vec4<u32>(global2.d, 42134u, 0u, arg_1.a.x))));
    return vec4<f32>(412f, _wgslsmith_f_op_f32(-global4.x), -1184f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f), _wgslsmith_div_f32(587f, global4.x))))));
}

fn func_5(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.yww))), _wgslsmith_div_vec3_f32(arg_0.wyw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1031f, -1000f, global4.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.yxx))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-292f, arg_0.x))))));
    var var_2 = Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(79714u, global0.b, 4294967295u, global0.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.b, 4294967295u, 39635u, global2.b), vec4<u32>(0u, global2.d, 4294967295u, u_input.a))), reverseBits(vec4<u32>(global2.d, global2.d, global2.d, u_input.a) | vec4<u32>(0u, 0u, 1u, global0.b))) | ~(~vec4<u32>(global0.d, 26601u, global0.d, 37645u) | (vec4<u32>(115047u, 35765u, u_input.a, u_input.a) << (vec4<u32>(global0.d, 4294967295u, 1u, 60988u) % vec4<u32>(32u)))));
    var var_3 = ~_wgslsmith_clamp_vec2_i32(u_input.c | _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-2147483647i, u_input.d.x)), u_input.d.yw), abs(firstLeadingBit(vec2<i32>(u_input.d.x, -2147483647i))), select(max(-u_input.d.zz, u_input.d.zy), abs(u_input.c), true));
    var var_4 = select(vec4<bool>(global0.c, all(vec4<bool>(global2.e != global0.c, all(vec2<bool>(false, global2.a)), true, global2.e)), global0.a, global2.a), vec4<bool>(!(4294967295u >= global2.d), global0.e, true, global2.c), vec4<bool>(!global2.a, true, global2.a, false));
    return global0.e;
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = ~(~1u);
    return Struct_4(global2.e, 58128u, global0.e, 68815u, func_5(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), func_3(Struct_3(42037i, vec3<i32>(4452i, 0i, u_input.c.x), vec4<u32>(27655u, u_input.a, 4294967295u, 4294967295u)))), Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, global2.d, 4294967295u, 1u), vec4<u32>(0u, 0u, 123209u, global2.d), vec4<u32>(4294967295u, 10864u, 26836u, 64326u)))))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(-(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x), arg_1.b)), -231f, global4.x, ~vec3<u32>(_wgslsmith_sub_u32(arg_0.d & 27460u, 1u), arg_0.b, _wgslsmith_add_u32(~global0.b, 44492u)), true);
    var var_1 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(30059u, 1296u, 1u)), vec3<u32>(50927u, firstTrailingBit(0u), firstTrailingBit(21410u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, 36101u, 4294967295u, 4294967295u), vec4<u32>(var_0.d.x, global0.b, 15460u, 10622u)), _wgslsmith_mult_u32(1u, var_0.d.x), 0u)), ~(~(vec3<u32>(arg_0.d, global0.b, 11951u) << (vec3<u32>(global2.b, 4294967295u, 18620u) % vec3<u32>(32u)))));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(528f, -323f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -530f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-766f, 1752f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(934f, -1402f), vec2<f32>(global3.x, -1434f))))))));
    let var_2 = Struct_1(min(max(arg_1.b, max(vec3<i32>(-55192i, arg_1.b.x, var_0.a.x), vec3<i32>(-1i, var_0.a.x, -1i)) & vec3<i32>(30721i, arg_1.b.x, arg_1.b.x)), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(66625i, arg_1.b.x, -3050i)), arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1471f)) * _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, var_0.b)))), _wgslsmith_f_op_f32(-361f + 1483f), ~vec3<u32>(23564u, ~min(14095u, global0.b), _wgslsmith_mult_u32(1u, global0.b)), true);
    var var_3 = vec4<i32>(60400i, 1i, (-1i | arg_1.a) | 2147483647i, -2147483647i) ^ (vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, select(2147483647i, u_input.b, global0.a)), _wgslsmith_dot_vec2_i32(~u_input.c, _wgslsmith_clamp_vec2_i32(var_2.a.yy, var_0.a.yy, arg_1.b.yz)), u_input.b, ~(-2302i)) << (arg_1.c % vec4<u32>(32u)));
    return Struct_3(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-_wgslsmith_div_i32(var_3.x, u_input.b), _wgslsmith_mod_i32(0i, var_2.a.x)), -u_input.b), -arg_1.b, arg_1.c);
}

fn func_7(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: bool) -> i32 {
    var var_0 = Struct_3(_wgslsmith_mod_i32(-u_input.c.x >> (global2.d % 32u), _wgslsmith_clamp_i32(countOneBits(~u_input.b), -2147483647i, func_3(arg_0).x)), min(vec3<i32>(arg_0.a, -2147483647i, arg_0.a), -(vec3<i32>(-2147483647i, 2147483647i, u_input.c.x) << (~arg_0.c.zxx % vec3<u32>(32u)))), abs(vec4<u32>(arg_0.c.x, 1u, abs(~4294967295u), ~u_input.a & countOneBits(36296u))));
    var var_1 = select(!(!select(!vec4<bool>(global2.c, arg_2, true, arg_2), !vec4<bool>(arg_3, global0.e, arg_3, arg_2), any(vec2<bool>(arg_3, arg_2)))), !(!vec4<bool>(false, arg_2, global0.a, arg_2)), !(!(!(!vec4<bool>(arg_3, arg_2, false, true)))));
    var var_2 = vec4<bool>(var_1.x, !select(true, arg_1, _wgslsmith_f_op_f32(exp2(global4.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -426f)), any(vec4<bool>(true, !var_1.x | !var_1.x, global2.c, var_1.x)), !func_5(vec4<f32>(1195f, _wgslsmith_f_op_f32(global3.x + -1093f), _wgslsmith_f_op_f32(select(global4.x, global3.x, true)), _wgslsmith_f_op_f32(1000f + global4.x))));
    let var_3 = ~(~global2.b);
    var var_4 = -(u_input.d << (vec4<u32>(var_3 ^ ~u_input.a, 1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_0.c.zx, var_0.c.zz), 42971u << (0u % 32u), 1u), _wgslsmith_sub_u32(global2.b, abs(global2.d))) % vec4<u32>(32u)));
    return -(~_wgslsmith_div_i32(arg_0.b.x, ~1i));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_4(!arg_0.e, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + _wgslsmith_f_op_f32(945f - arg_0.b)) <= 1311f, max(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_2.d.x, 1u, u_input.a)), reverseBits(~vec3<u32>(10492u, 7862u, global2.b))), _wgslsmith_clamp_u32(arg_0.d.x, global0.b, 19479u)), global0.e || (1664f > _wgslsmith_f_op_f32(-arg_2.c)));
    return Struct_1(vec3<i32>(func_7(func_6(func_2(0u), Struct_3(493i, vec3<i32>(arg_0.a.x, -2147483647i, 1i), vec4<u32>(1u, global0.b, arg_0.d.x, global2.b))), true, true, true | all(vec4<bool>(var_0.a, arg_0.e, true, true))), _wgslsmith_clamp_i32(-1i, ~reverseBits(u_input.c.x), -10992i), -((i32(-1i) * -1i) & -arg_1.x)), arg_2.c, _wgslsmith_f_op_f32(abs(-219f)), ~(reverseBits(~vec3<u32>(global2.b, global2.b, 1u)) & ~arg_2.d), abs(44932i) == (~arg_0.a.x & 1i));
}

fn func_8(arg_0: Struct_1) -> u32 {
    global0 = Struct_4(any(select(!vec4<bool>(true, global2.c, false, true), select(select(vec4<bool>(global2.a, global2.a, false, arg_0.e), vec4<bool>(true, arg_0.e, true, arg_0.e), global2.c), !vec4<bool>(arg_0.e, false, true, true), select(vec4<bool>(false, false, true, arg_0.e), vec4<bool>(global0.c, false, false, global2.a), vec4<bool>(global2.a, arg_0.e, global2.c, arg_0.e))), vec4<bool>(func_2(global0.b).c, false, global2.c, false))), global2.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 39069u), vec3<u32>(64019u, 1u, select(54129u, global0.d, true))) % 32u), func_2(reverseBits(global0.d) & global2.b).e || !(firstTrailingBit(arg_0.a.x) != u_input.c.x), 1u, false);
    let var_0 = 11974u;
    global0 = Struct_4(true, ~(~_wgslsmith_mult_u32(global2.d, arg_0.d.x | arg_0.d.x)), true, ~var_0, false);
    var var_1 = arg_0;
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(479f, 473f) * vec2<f32>(global3.x, global4.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-983f, -579f))), true)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(934f, global4.x), vec2<f32>(var_1.c, global3.x)))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.b, global4.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(-var_1.b))))));
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.b, u_input.d.yyz, vec4<u32>(_wgslsmith_sub_u32(~global2.d, countOneBits(5063u)), ~36456u, global2.d, global0.b) << (vec4<u32>(u_input.a, _wgslsmith_clamp_u32(~1u, 39349u >> (u_input.a % 32u), global2.d << (32627u % 32u)), global2.b, func_8(func_1(Struct_1(u_input.d.yyw, 592f, 1546f, vec3<u32>(49088u, 0u, u_input.a), false), u_input.c, Struct_1(vec3<i32>(u_input.d.x, 2147483647i, u_input.c.x), -210f, -214f, vec3<u32>(global0.b, global2.b, global0.b), global0.e), vec3<bool>(global2.a, global2.e, global0.e)))) % vec4<u32>(32u)));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.x, 1015f), vec2<f32>(func_1(Struct_1(var_0.b, global4.x, global4.x, var_0.c.xwx, global2.a), var_0.b.zy, Struct_1(u_input.d.zzx, global3.x, -1309f, var_0.c.yyx, global2.e), vec3<bool>(false, global2.a, global0.e)).c, _wgslsmith_f_op_f32(-global3.x)), vec2<bool>(true, true))))));
    let var_1 = Struct_2(select(min(~min(var_0.c, var_0.c), ~(var_0.c >> (vec4<u32>(global2.d, var_0.c.x, 4294967295u, global2.b) % vec4<u32>(32u)))), vec4<u32>(~var_0.c.x >> (func_6(Struct_4(true, global2.b, global2.e, u_input.a, true), Struct_3(var_0.a, var_0.b, var_0.c)).c.x % 32u), ~var_0.c.x, global0.d, 0u), _wgslsmith_mult_u32(global0.d, _wgslsmith_div_u32(global2.d, global0.b)) < ~(~7940u)));
    global0 = Struct_4(true, func_2(var_0.c.x).b, false, var_1.a.x, all(select(!(!vec4<bool>(false, global2.a, false, global0.a)), select(vec4<bool>(false, global0.c, true, global0.e), vec4<bool>(false, global0.e, global2.e, global2.e), true), select(!vec4<bool>(global2.e, false, false, global2.e), !vec4<bool>(global0.c, global0.e, global0.a, global2.a), vec4<bool>(true, global0.c, global2.c, false)))));
    let var_2 = u_input.d.x;
    global2 = func_2(min(7002u, firstTrailingBit(u_input.a)));
    let var_3 = global0.b;
    let var_4 = Struct_3(var_0.b.x, vec3<i32>(~(-2147483647i), var_2, u_input.c.x), ~var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(1268f, vec4<i32>(~0i, _wgslsmith_dot_vec3_i32(~firstLeadingBit(vec3<i32>(922i, var_4.b.x, 22149i)), u_input.d.wwy), firstLeadingBit(func_3(func_6(Struct_4(global2.e, global0.b, global0.e, global2.b, false), var_4)).x), ~_wgslsmith_sub_i32(var_0.a, -2147483647i) ^ _wgslsmith_dot_vec2_i32(func_1(Struct_1(u_input.d.wyy, global3.x, global4.x, var_0.c.xyx, global0.e), var_4.b.zy, Struct_1(vec3<i32>(u_input.d.x, var_4.b.x, var_0.b.x), global4.x, global4.x, vec3<u32>(global0.d, 0u, global0.d), true), vec3<bool>(false, global2.c, global2.e)).a.xx, vec2<i32>(1i, var_4.b.x))));
}

