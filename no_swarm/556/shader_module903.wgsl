struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_3,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(9961u), 28669i, vec4<bool>(false, false, false, true));

var<private> global1: bool;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = Struct_1(~_wgslsmith_div_u32(arg_0.c.c.a.a, arg_0.c.c.a.a | arg_0.c.c.a.a));
    global1 = false;
    global1 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c.b, _wgslsmith_f_op_f32(-arg_0.c.b), -570f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-556f, arg_0.c.b, -1180f))), select(select(vec3<bool>(global2.x, true, true), vec3<bool>(any(vec3<bool>(arg_0.a, global2.x, true)), arg_0.a, any(vec2<bool>(false, true))), (arg_0.c.b < 801f) != global0.c.x), select(select(vec3<bool>(true, global2.x, global2.x), arg_0.c.c.c.xwx, select(arg_0.c.c.c.wzz, global2.wxz, false)), select(select(vec3<bool>(global0.c.x, global0.c.x, global0.c.x), vec3<bool>(false, global0.c.x, true), arg_0.c.c.c.wyx), select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, arg_0.c.c.c.x, false), global2.zwx), all(vec4<bool>(false, true, false, global2.x))), arg_0.c.c.c.zyy), vec3<bool>(false, !global0.c.x, ~u_input.e != _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.c.a.a, arg_0.c.c.a.a), vec2<u32>(u_input.a.x, u_input.e))))));
    var var_2 = global0.b;
    return vec2<i32>(-42706i, _wgslsmith_mult_i32(-41979i, global0.b));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_i32(-func_3(Struct_4(global0.c.x, u_input.c.xxw, Struct_3(0i, 481f, Struct_2(Struct_1(29943u), u_input.d.x, global0.c)), -1i, global0.b)), u_input.c.xy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(257f, 156f)))), Struct_2(global0.a, -countOneBits(_wgslsmith_mod_i32(5037i, global0.b)), !global0.c));
    let var_1 = Struct_4(global2.x, vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(var_0.a, var_0.c.b, global0.b) ^ vec3<i32>(var_0.a, var_0.c.b, global0.b)), var_0, ~0i << ((~max(1u, u_input.e) | u_input.a.x) % 32u), -15458i);
    global2 = select(vec4<bool>(true, true, any(select(!var_0.c.c.yxx, select(vec3<bool>(true, var_0.c.c.x, global2.x), vec3<bool>(false, false, var_0.c.c.x), vec3<bool>(global2.x, global2.x, false)), 2147483647i < global0.b)), global0.c.x), var_0.c.c, select(vec4<bool>(true, !(!global0.c.x), var_0.c.c.x, any(!var_1.c.c.c.xy)), var_0.c.c, var_0.c.c));
    global2 = var_1.c.c.c;
    var var_2 = global0.a;
    return ~_wgslsmith_sub_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.c.a.a, 6761u, 0u), vec3<u32>(u_input.e, var_0.c.a.a, var_2.a))), reverseBits(~vec3<u32>(global0.a.a, 1u, 31803u) >> (firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 0u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_2(global0.a, _wgslsmith_dot_vec2_i32(select(~arg_3, u_input.d.yx | _wgslsmith_add_vec2_i32(vec2<i32>(arg_3.x, global0.b), u_input.c.zz), select(global2.wz, !vec2<bool>(global2.x, global2.x), !global2.yy)), min(~_wgslsmith_mod_vec2_i32(vec2<i32>(1455i, -2147483647i), vec2<i32>(u_input.b, 2147483647i)), min(u_input.d.yy, vec2<i32>(-10986i, arg_3.x)) & abs(vec2<i32>(arg_3.x, -41654i)))), vec4<bool>(!select(arg_2.x != 65893u, all(vec3<bool>(true, global0.c.x, global2.x)), global0.c.x), global0.c.x, arg_0.x == _wgslsmith_div_f32(599f, _wgslsmith_div_f32(-331f, arg_0.x)), false));
    let var_1 = var_0.c.x;
    var var_2 = Struct_3(firstLeadingBit(30945i), _wgslsmith_f_op_f32(-arg_0.x), Struct_2(var_0.a, global0.b, global0.c));
    let var_3 = ~(~(~vec4<u32>(32118u, ~1u, arg_2.x << (u_input.a.x % 32u), 0u)));
    var var_4 = var_2.a;
    return arg_0.x;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1265f, 203f, -309f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, 195f, -330f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(732f, -1349f, -619f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(393f, -987f, -1000f)))))), global0.a.a, func_2(), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.zww, u_input.c.yxw), u_input.d.x), u_input.c.xy))), -1471f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-808f - _wgslsmith_f_op_f32(max(-505f, -1907f)))))));
    var var_1 = _wgslsmith_mult_vec4_u32(~abs(firstTrailingBit(firstLeadingBit(vec4<u32>(1u, 4294967295u, u_input.e, 46449u)))), _wgslsmith_sub_vec4_u32(~(vec4<u32>(1u, u_input.a.x, u_input.e, arg_0.a.a) & vec4<u32>(u_input.e, arg_0.a.a, u_input.e, arg_0.a.a)), ((vec4<u32>(1u, 55634u, u_input.e, 1u) | vec4<u32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, arg_0.a.a)) | vec4<u32>(global0.a.a, 12336u, 197u, global0.a.a)) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 8564u, arg_0.a.a, 0u), vec4<u32>(26165u, global0.a.a, 0u, 4294967295u), vec4<u32>(arg_0.a.a, 4294967295u, 17803u, global0.a.a))));
    var var_2 = global0.b;
    var var_3 = Struct_4(global2.x, ~vec3<i32>(abs(-global0.b), global0.b, reverseBits(~global0.b)), Struct_3(-26251i, -797f, Struct_2(arg_0.a, firstLeadingBit(firstTrailingBit(1241i)), vec4<bool>(false, false & global0.c.x, true, !global2.x))), u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~13461i, _wgslsmith_clamp_i32(global0.b, arg_0.b, global0.b)), -_wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), vec2<i32>(-28061i, _wgslsmith_add_i32(global0.b & -2147483647i, 45651i))));
    return Struct_4(!any(select(vec4<bool>(var_3.a, global0.c.x, global2.x, var_3.c.c.c.x), vec4<bool>(global0.c.x, false, arg_0.c.x, true), false)) && any(vec3<bool>(false, arg_0.c.x && global0.c.x, !var_3.a)), vec3<i32>(~_wgslsmith_mult_i32(-2147483647i, arg_0.b) | u_input.b, 9349i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(41855i, 11955i), ~u_input.d.yx)), var_3.c, global0.b, 0i | arg_0.b);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.c.b, arg_0.c.b), 977f), 898f, _wgslsmith_f_op_f32(ceil(arg_3)), 1000f));
    let var_1 = _wgslsmith_sub_u32(func_1(Struct_2(Struct_1(_wgslsmith_add_u32(22423u, arg_2.x)), func_3(Struct_4(true, vec3<i32>(-1i, arg_0.c.a, 2147483647i), Struct_3(u_input.d.x, arg_0.c.b, arg_0.c.c), -1i, global0.b)).x, func_1(Struct_2(Struct_1(arg_2.x), arg_0.b.x, global0.c)).c.c.c)).c.c.a.a, arg_0.c.c.a.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e, 9367u), arg_1.yx) % 32u));
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(vec3<bool>(global2.x || func_5(func_1(Struct_2(global0.a, u_input.c.x, vec4<bool>(false, true, false, global0.c.x))), vec3<u32>(32327u, u_input.a.x, u_input.a.x) ^ vec3<u32>(25476u, global0.a.a, u_input.e), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 4294967295u, global0.a.a), vec4<u32>(11133u, 4294967295u, 34155u, global0.a.a)), 855f), global2.x, true));
    let var_0 = Struct_3(0i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(376f))) * _wgslsmith_f_op_f32(step(-214f, _wgslsmith_div_f32(212f, -791f)))))), Struct_2(global0.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 1807i, u_input.d.x) | _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -46581i), u_input.c.zww), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(global0.b, global0.b, 35505i)), vec3<i32>(u_input.c.x, 10540i, 124i), vec3<i32>(u_input.d.x, 18381i, global0.b))), select(!vec4<bool>(true, global0.c.x, global2.x, global0.c.x), global0.c, true | (global0.c.x || global2.x))));
    global1 = func_1(func_1(func_1(var_0.c).c.c).c.c).a;
    global2 = var_0.c.c;
    var var_1 = Struct_2(Struct_1(15389u), -min(_wgslsmith_mult_i32(-2147483647i, firstLeadingBit(global0.b)), _wgslsmith_mult_i32(1i, u_input.d.x)), select(!(!func_1(Struct_2(global0.a, global0.b, vec4<bool>(global2.x, global2.x, global0.c.x, global0.c.x))).c.c.c), global0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * 600f), -949f)) == var_0.b));
    let var_2 = _wgslsmith_mult_u32(u_input.a.x, global0.a.a);
    let var_3 = _wgslsmith_div_i32(var_0.c.b, abs(global0.b));
    var_1 = func_1(var_0.c).c.c;
    global2 = vec4<bool>(false, ~4294967295u != _wgslsmith_sub_u32(global0.a.a, min(_wgslsmith_div_u32(var_0.c.a.a, var_0.c.a.a), var_0.c.a.a)), ((var_1.b ^ firstTrailingBit(var_3)) < max(~(-22137i), ~(-1i))) && global2.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-301f, var_0.b)))))), vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, global0.b), func_3(Struct_4(true, vec3<i32>(var_0.a, -16615i, u_input.d.x), Struct_3(global0.b, var_0.b, Struct_2(Struct_1(58701u), -1i, vec4<bool>(var_1.c.x, false, var_1.c.x, var_0.c.c.x))), var_0.a, global0.b)).x), ~var_0.c.b), var_0.b);
}

