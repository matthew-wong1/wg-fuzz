struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-260f, -629f, 334f, -1351f);

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = abs(u_input.a.x >> (u_input.a.x % 32u));
    global1 = 1i;
    global1 = (i32(-1i) * -23391i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 68154i), vec2<i32>(2147483647i, 1446i << ((30340u | var_0) % 32u)));
    var var_1 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(~(-15513i), i32(-1i) * -56399i, _wgslsmith_div_i32(328i, 1i), _wgslsmith_div_i32(38258i, -28182i)), ~select(vec4<i32>(-52736i, -56841i, 7637i, 2147483647i), vec4<i32>(-1i, 0i, -1i, 4448i), true)), vec4<i32>(select(-76866i, 1i, arg_1) ^ reverseBits(-15848i), 1i, -(i32(-1i) * -1i), ~0i), !vec4<bool>(all(vec4<bool>(false, arg_1, true, arg_1)), select(true, arg_1, arg_1), any(vec4<bool>(arg_1, true, arg_1, arg_1)), any(vec4<bool>(false, true, false, arg_1)))), vec4<i32>(-1i, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, 1i), ~1i, ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -27904i, 1i, 0i), vec4<i32>(1i, 33968i, -10680i, -5171i)))));
    let var_2 = _wgslsmith_f_op_f32(-1f);
    return global0.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    let var_0 = arg_0.x;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global0.x + -245f), _wgslsmith_f_op_f32(exp2(global0.x)), global0.x), vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_3(982f, false)), -360f)))), Struct_1(~(~vec3<u32>(u_input.a.x, 14844u, 94122u))), 470f, Struct_1(u_input.a));
    global1 = -11376i;
    let var_2 = ~(~(~(~(4294967295u & u_input.a.x))));
    var var_3 = select(!(!vec2<bool>(0u != var_1.b.a.x, false)), vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false)) & (any(vec3<bool>(false, false, true)) & true), false || (991f < var_1.c)), select(!vec2<bool>(true, any(vec3<bool>(true, false, true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), 1170f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(var_1.c, true))))));
    return Struct_4(!(!(!select(vec4<bool>(false, false, var_3.x, false), vec4<bool>(false, false, var_3.x, false), vec4<bool>(var_3.x, var_3.x, var_3.x, false)))), arg_0, var_3.x);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global1 = -48763i;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -404f, 692f, -1904f))), vec4<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(global0.x, -1810f)), global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1018f, 1000f, 635f), vec4<f32>(-763f, global0.x, -1101f, -2094f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, global0.x, global0.x, -322f) + vec4<f32>(-1615f, 1091f, -235f, 227f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, global0.x, -183f), vec4<f32>(-1889f, -874f, global0.x, global0.x)))))));
    var var_0 = func_2(vec3<i32>(~(-2147483647i), ~(select(arg_0.x, arg_0.x, false) >> ((4294967295u | u_input.a.x) % 32u)), _wgslsmith_add_i32(20921i, arg_0.x)));
    var var_1 = Struct_2(vec3<i32>(var_0.b.x, _wgslsmith_mult_i32(arg_0.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, ~arg_0.x, 16394i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.b.x, _wgslsmith_div_i32(var_0.b.x, var_0.b.x)), -var_0.b.x, -(var_0.b.x << (1u % 32u)))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 17830u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 92949u, u_input.a.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 60772u, 1u, 1u), vec4<u32>(u_input.a.x, 17689u, 59138u, 0u)) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 19557u, 11857u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(~vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x))));
    var_0 = func_2(var_1.a);
    return Struct_1(max(min(vec3<u32>(select(u_input.a.x, 28083u, var_0.c), reverseBits(39411u), _wgslsmith_add_u32(39532u, var_1.b.x)), _wgslsmith_mod_vec3_u32(u_input.a, select(vec3<u32>(0u, var_1.b.x, u_input.a.x), vec3<u32>(u_input.a.x, var_1.b.x, u_input.a.x), true))), abs(_wgslsmith_add_vec3_u32(~u_input.a, vec3<u32>(35782u, 1u, var_1.b.x)))));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = arg_0.d;
    var var_1 = Struct_3(arg_0.a, Struct_1(u_input.a & vec3<u32>(u_input.a.x, select(28775u, arg_0.b.a.x, true), var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), arg_0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1831f)), func_1(vec2<i32>(-33729i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-32318i, -2147483647i, -1i), vec3<i32>(2147483647i, 0i, 2147483647i)), _wgslsmith_mod_i32(-2187i, -1i)))));
    var var_2 = ~func_1(-(vec2<i32>(1i, 1i) << (_wgslsmith_clamp_vec2_u32(var_0.a.zy, vec2<u32>(u_input.a.x, 31727u), arg_0.b.a.yx) % vec2<u32>(32u)))).a.x;
    var var_3 = vec3<bool>(!(!(func_1(vec2<i32>(7260i, -24594i)).a.x != _wgslsmith_dot_vec3_u32(var_0.a, u_input.a))), !(~_wgslsmith_clamp_u32(1u, arg_0.d.a.x, var_0.a.x) == 86989u), all(select(func_2(~vec3<i32>(0i, 40100i, 15629i)).a, vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, false)))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.x)) + _wgslsmith_f_op_f32(ceil(global0.x))))), -1152f, var_1.a.x, 143f)));
    return Struct_2(select(-func_2(vec3<i32>(0i, -39767i, 24563i)).b, -countOneBits(vec3<i32>(0i, 2882i, 1i)), !var_3.x) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(6993u, u_input.a.x, 0u), _wgslsmith_div_vec3_u32(var_1.b.a, func_1(vec2<i32>(1i, 39574i)).a)) % vec3<u32>(32u)), _wgslsmith_add_vec4_u32(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, 0u, 13906u, var_1.d.a.x), vec4<u32>(11305u, 61040u, 64608u, 56437u), vec4<u32>(var_1.b.a.x, 0u, var_1.b.a.x, u_input.a.x))), _wgslsmith_div_vec4_u32(firstLeadingBit(abs(vec4<u32>(var_1.b.a.x, arg_0.b.a.x, var_1.d.a.x, arg_0.d.a.x))), countOneBits(vec4<u32>(0u, u_input.a.x, var_0.a.x, var_1.b.a.x) ^ vec4<u32>(1u, 13781u, 43905u, 0u)))));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global1 = -33285i;
    var var_0 = func_1(vec2<i32>(0i, arg_0.a.x));
    let var_1 = vec4<bool>(true, ((i32(-1i) * -39890i) >> (~(~var_0.a.x) % 32u)) != (_wgslsmith_div_i32(abs(arg_0.a.x), ~(-2147483647i)) & -22841i), !(_wgslsmith_mult_i32(~1i, func_2(arg_0.a).b.x) > _wgslsmith_add_i32(0i, -15656i)), all(func_2(arg_0.a).a));
    var var_2 = var_1.x;
    global1 = select(arg_0.a.x, reverseBits(arg_0.a.x), true);
    return Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.wwz, vec3<f32>(global0.x, 647f, 739f)))))), func_1(arg_0.a.xy), global0.x, func_1(abs(arg_0.a.yx)));
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    var var_0 = arg_0.b.a.zx;
    var var_1 = func_4(Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-func_5(Struct_2(vec3<i32>(-48283i, -2147483647i, -1i), vec4<u32>(26143u, 10634u, u_input.a.x, arg_0.b.a.x))).a))), func_1(vec2<i32>(-1i) * -vec2<i32>(12374i, 3789i)), _wgslsmith_f_op_f32(abs(arg_0.c)), arg_0.d));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1591f, global0.x, 1065f, 1639f)))))));
    let var_2 = vec3<u32>(var_0.x, reverseBits(firstLeadingBit(30927u)), ~(~reverseBits(select(arg_0.d.a.x, 1u, false))));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(max(global0.x, 291f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + arg_0.a.x), _wgslsmith_f_op_f32(trunc(2836f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-683f * 2206f) + global0.x))))));
    return Struct_2(vec3<i32>(_wgslsmith_sub_i32(38072i, reverseBits(var_1.a.x)) ^ -2147483647i, reverseBits(-2147483647i), -12613i), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(Struct_3(global0.yxx, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_f32(651f, 1217f), func_1(vec2<i32>(-14264i, 28365i))))));
    var var_1 = !any(vec3<bool>(func_2(var_0.a).a.x, true, true));
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1127f, false))), global0.x))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1096f)) - global0.x)))));
    var_3 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-379f, (i32(-1i) * -20931i) | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, _wgslsmith_clamp_i32(var_2.a.x, var_0.a.x, var_0.a.x), _wgslsmith_mod_i32(var_2.a.x, var_0.a.x)), firstLeadingBit(var_0.a >> (vec3<u32>(u_input.a.x, var_0.b.x, var_2.b.x) % vec3<u32>(32u)))), select(firstTrailingBit(vec4<i32>(-21250i, 0i, var_2.a.x, 38951i) >> (var_2.b % vec4<u32>(32u))), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, 0i, var_0.a.x, var_0.a.x), vec4<i32>(38354i, -80612i, 1i, -1i))), vec4<bool>(true, true, true || select(true, false, true), _wgslsmith_f_op_f32(f32(-1f) * -641f) >= _wgslsmith_f_op_f32(func_3(506f, true)))), _wgslsmith_clamp_u32(75905u >> (~var_2.b.x % 32u), _wgslsmith_div_u32(17472u, _wgslsmith_dot_vec2_u32(vec2<u32>(9186u, 0u), vec2<u32>(4294967295u, 4294967295u))), abs(var_0.b.x) << (reverseBits(7945u) % 32u)) | var_2.b.x);
}

