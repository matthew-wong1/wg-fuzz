struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(73617u, 1u);

var<private> global1: Struct_2 = Struct_2(505f, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a) - arg_0.a)))), arg_0.d);
    let var_0 = Struct_5(-1i, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(floor(global1.a))))), ~(~arg_0.c.x), arg_0.c, all(!select(vec4<bool>(true, true, true, global1.b), vec4<bool>(false, true, arg_0.d, false), true))), Struct_1(544f, firstTrailingBit(1u), vec3<u32>(14581u | global0.x, _wgslsmith_div_u32(4294967295u, ~u_input.a.x), 0u), all(vec3<bool>(false, !global1.b, !global1.b))));
    var var_1 = global0.x;
    global1 = Struct_2(global1.a, arg_0.d);
    var var_2 = _wgslsmith_sub_i32(2147483647i ^ var_0.a, countOneBits(-25893i)) << (~(~(select(arg_0.c.x, arg_0.b, arg_0.d) ^ global0.x)) % 32u);
    return 45274u ^ _wgslsmith_sub_u32(5664u, var_0.b.b);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    global0 = ~vec2<u32>(countOneBits(global0.x), ~arg_0.c.x);
    var var_0 = ~(vec4<u32>(0u, firstTrailingBit(0u) >> (func_3(arg_2) % 32u), 1u, _wgslsmith_mod_u32(reverseBits(u_input.a.x), global0.x)) >> (u_input.a % vec4<u32>(32u)));
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a), global1.a)))), 535f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(-global1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-902f, -1676f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, -389f)))))), vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(arg_0.a - -400f)))), abs(vec3<i32>(u_input.b, min(u_input.b, -u_input.b), _wgslsmith_sub_i32(u_input.b, u_input.b) | _wgslsmith_mod_i32(u_input.b, u_input.b))), firstTrailingBit(~abs(vec4<u32>(u_input.a.x, u_input.a.x, 17265u, arg_2.c.x)) << (u_input.a % vec4<u32>(32u))));
    var var_2 = _wgslsmith_mult_i32(-35553i, var_1.c.x);
    let var_3 = Struct_2(1f, arg_2.c.x > (var_0.x << (arg_0.c.x % 32u)));
    return firstLeadingBit(~(~(~_wgslsmith_sub_u32(var_0.x, 4294967295u))));
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    global0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.zzy, vec3<u32>(global0.x, 46323u, global0.x)), u_input.a.xyw), 1u), func_2(Struct_1(598f, 1u, countOneBits(vec3<u32>(4559u, 54127u, global0.x)), global1.b), all(!vec2<bool>(global1.b, false)), Struct_1(arg_0.x, u_input.a.x, vec3<u32>(55336u, global0.x, 0u), any(vec3<bool>(true, global1.b, global1.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -113f)), _wgslsmith_f_op_vec2_f32(arg_0.yx * vec2<f32>(global1.a, global1.a))))) | firstLeadingBit(u_input.a.wy);
    var var_0 = _wgslsmith_mod_vec4_i32(-countOneBits(-vec4<i32>(u_input.b, 1i, u_input.b, 2147483647i)) << (~_wgslsmith_sub_vec4_u32(u_input.a, firstLeadingBit(u_input.a)) % vec4<u32>(32u)), vec4<i32>(abs(-40012i) ^ -u_input.b, u_input.b, _wgslsmith_sub_i32(u_input.b, 1i), -2147483647i) | -vec4<i32>(u_input.b, _wgslsmith_add_i32(u_input.b, -8146i), u_input.b, _wgslsmith_mod_i32(33393i, u_input.b)));
    var var_1 = Struct_5(_wgslsmith_sub_i32(-(~(-2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(53224i, u_input.b, -17656i, u_input.b), vec4<i32>(u_input.b, -23068i, 38815i, -35212i))) >> (~64890u % 32u), Struct_1(arg_0.x, func_3(Struct_1(arg_0.x, global0.x, _wgslsmith_add_vec3_u32(vec3<u32>(9316u, u_input.a.x, 0u), u_input.a.zxx), u_input.a.x != 2435u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, ~17462u, abs(56405u)), vec3<u32>(26357u, _wgslsmith_dot_vec3_u32(u_input.a.xyz, vec3<u32>(global0.x, 0u, global0.x)), ~35769u)), !global1.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-794f - _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(exp2(global1.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, global0.x, global0.x), u_input.a) ^ ~u_input.a, ~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 135656u, 4294967295u))), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(u_input.a.x), 1u, u_input.a.x), vec3<u32>(_wgslsmith_clamp_u32(global0.x, 1u, global0.x), ~u_input.a.x, global0.x)), any(select(!vec2<bool>(global1.b, global1.b), !vec2<bool>(global1.b, true), false))));
    var_0 = vec4<i32>(-17375i, select(select(-3462i << (var_1.b.b % 32u), u_input.b >> (var_1.c.b % 32u), false), u_input.b, var_1.c.d) << (1u % 32u), -5914i, -var_1.a);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 2262f, global1.a, -223f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.a, global1.a, var_1.c.a, 655f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a, global1.a, var_1.c.a, -1094f) * vec4<f32>(765f, var_1.b.a, -825f, global1.a)))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(531f))), _wgslsmith_div_f32(156f, -324f))), var_1.c.a), vec3<i32>(-firstTrailingBit(1i), 1i, firstTrailingBit(var_1.a)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, u_input.a.x), firstLeadingBit(~vec3<u32>(global0.x, global0.x, 12368u))), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(global0.x, var_1.c.c.x, 4294967295u), 4294967295u), firstTrailingBit(countOneBits(abs(0u))), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 45702u), 4294967295u)));
    return !(!vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, var_1.c.d), vec2<bool>(var_1.c.d, global1.b))), -1000f >= _wgslsmith_f_op_f32(trunc(var_2.a.x))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_5 {
    global1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1303f, _wgslsmith_f_op_f32(f32(-1f) * -1353f), true)))), global1.b);
    let var_0 = arg_0.x;
    global1 = Struct_2(-1000f, var_0 == true);
    var var_1 = -u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.a, global1.a))))), vec2<f32>(_wgslsmith_div_f32(1656f, -2286f), _wgslsmith_f_op_f32(-1102f + -1004f)), vec2<bool>(false, arg_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-245f, -314f) + vec2<f32>(598f, global1.a))))) * vec2<f32>(-574f, _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) * global1.a))));
    return Struct_5(u_input.b, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global1.a)), 316f)), u_input.a.x, u_input.a.zwx, 1i >= select(26126i, firstLeadingBit(u_input.b), select(true, false, var_0))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - global1.a))) * _wgslsmith_f_op_f32(trunc(global1.a))), ~u_input.a.x, u_input.a.zxz, !select(var_0, all(vec3<bool>(false, true, arg_0.x)), true | arg_0.x)));
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = i32(-1i) * -1i;
    var var_1 = select(vec3<bool>(global1.b, global1.b, arg_2), select(vec3<bool>(arg_2, all(select(vec4<bool>(global1.b, false, arg_0.c.d, true), vec4<bool>(global1.b, true, false, false), arg_0.c.d)), !any(vec3<bool>(arg_0.b.d, false, global1.b))), !vec3<bool>(!arg_2, all(vec3<bool>(global1.b, arg_2, arg_0.c.d)), true), vec3<bool>(arg_0.c.d, func_4(vec3<bool>(false, global1.b, arg_0.b.d)).c.d, !(false & global1.b))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b.a, arg_1, arg_1))))).x);
    var_1 = !vec3<bool>(any(select(var_1.yz, !var_1.yz, func_1(vec3<f32>(830f, 872f, arg_0.b.a)).x)), true, u_input.b != select(-11324i, -2147483647i, any(var_1.zx)));
    global0 = func_4(!(!func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-148f, 2061f, arg_1) * vec3<f32>(global1.a, global1.a, -271f))))).b.c.xz;
    let var_2 = !(!func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, global1.a, arg_1), vec3<f32>(arg_0.b.a, arg_1, global1.a))))));
    return Struct_1(625f, ~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 135161u), firstLeadingBit(0u))), abs(reverseBits(u_input.a.yzw ^ u_input.a.yzw)), !all(!select(vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(true, false, arg_0.b.d, arg_0.b.d), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!(!(!vec4<bool>(false, global1.b, global1.b, global1.b))), select(vec4<bool>(!global1.b, any(vec3<bool>(global1.b, global1.b, global1.b)), u_input.b > u_input.b, global1.b), vec4<bool>(false, any(vec4<bool>(global1.b, global1.b, false, global1.b)), all(vec3<bool>(global1.b, false, false)), global1.b), true), global1.b), vec4<bool>(true, select(true, global1.b, global1.b), _wgslsmith_f_op_f32(946f * _wgslsmith_f_op_f32(551f - global1.a)) == global1.a, all(vec4<bool>(true, true, global1.b, !global1.b))), any(select(select(select(vec2<bool>(global1.b, false), vec2<bool>(global1.b, false), true), !vec2<bool>(global1.b, true), !global1.b), !vec2<bool>(global1.b, global1.b), false)));
    var var_1 = func_5(func_4(!func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a, global1.a, 342f))))), -184f, global1.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, global1.a, -986f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -645f, 1000f) - vec3<f32>(global1.a, var_1.a, -416f)))), vec3<f32>(global1.a, _wgslsmith_div_f32(global1.a, var_1.a), global1.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, global1.a, 1375f), vec3<f32>(global1.a, global1.a, global1.a), var_1.d)) - vec3<f32>(global1.a, var_1.a, 129f))))));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * global1.a), global1.a, var_1.d))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a << (u_input.a % vec4<u32>(32u)), vec3<u32>(86026u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x & u_input.a.x, func_3(Struct_1(var_2.x, var_1.c.x, vec3<u32>(4294967295u, 4294967295u, global0.x), var_0.x)), u_input.a.x), firstLeadingBit(~vec3<u32>(global0.x, 41968u, 1u))), var_1.c.x), -726f, _wgslsmith_sub_i32(~_wgslsmith_div_i32(1i, -u_input.b), u_input.b));
}

