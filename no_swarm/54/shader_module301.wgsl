struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_u32(u_input.c.x, 1u));
    var var_1 = Struct_3(Struct_2(-_wgslsmith_add_i32(arg_1.x, 18176i) >> ((37911u | _wgslsmith_sub_u32(u_input.d, var_0.a)) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1710f, 326f, _wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(1015f * arg_0.x))), 16351i, abs(-35862i) < arg_1.x), vec3<i32>(~1i << (var_0.a % 32u), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), arg_1.x), 1i), Struct_1(~reverseBits(6572u)), !(!select(select(true, false, true), any(vec2<bool>(false, true)), false)), Struct_2(firstTrailingBit(_wgslsmith_mod_i32(abs(arg_1.x), arg_1.x)), arg_0, arg_1.x, any(vec2<bool>(true, true))));
    var_1 = Struct_3(var_1.a, var_1.b, var_1.c, false, var_1.e);
    var var_2 = any(vec3<bool>(var_1.a.d, var_1.a.d, var_1.e.d));
    var_1 = Struct_3(var_1.a, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-44386i, 30009i), var_1.e.c), _wgslsmith_dot_vec3_i32(var_1.b, var_1.b), _wgslsmith_mult_i32(-673i, arg_1.x)), ~firstLeadingBit(vec3<i32>(u_input.a, var_1.a.a, 1i))), Struct_1(var_1.c.a), all(vec4<bool>(var_1.e.d, true, 1u < ~var_0.a, arg_0.x >= _wgslsmith_f_op_f32(arg_0.x * var_1.e.b.x))), var_1.a);
    return var_1.a.d & !all(!(!vec2<bool>(var_1.d, var_1.a.d)));
}

fn func_4(arg_0: vec2<f32>) -> bool {
    let var_0 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false)), vec2<bool>(true, true)));
    var var_1 = Struct_3(Struct_2(u_input.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.x, arg_0.x, 1018f) + vec4<f32>(arg_0.x, -1443f, -391f, 1478f))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + -823f), _wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2076f), _wgslsmith_f_op_f32(-arg_0.x))), -abs(-u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1281f)) > arg_0.x), _wgslsmith_div_vec3_i32(vec3<i32>(1i << (u_input.d % 32u), select(reverseBits(u_input.a), -1i ^ u_input.a, true), (-42946i >> (u_input.d % 32u)) >> (36927u % 32u)), firstLeadingBit(vec3<i32>(u_input.a, ~u_input.a, -1i))), Struct_1(_wgslsmith_sub_u32(u_input.c.x, 45122u | ~u_input.d)), !var_0.x, Struct_2(i32(-1i) * -firstTrailingBit(2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(733f, arg_0.x, arg_0.x, arg_0.x)) * vec4<f32>(-779f, arg_0.x, arg_0.x, arg_0.x)) - vec4<f32>(_wgslsmith_f_op_f32(-822f + -775f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), 1393f)), max(2147483647i, u_input.b.x), !var_0.x));
    var_1 = Struct_3(var_1.a, vec3<i32>(-18827i, _wgslsmith_add_i32(~_wgslsmith_mult_i32(-1i, 23137i), ~11501i), -4447i), var_1.c, abs(3265i) > (i32(-1i) * -(u_input.b.x ^ 840i)), var_1.e);
    let var_2 = 2071f;
    let var_3 = var_1.c;
    return var_0.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1503f), _wgslsmith_f_op_f32(f32(-1f) * -354f), (u_input.b.x != -30690i) != func_3(vec4<f32>(295f, -296f, 112f, -167f), vec3<i32>(u_input.b.x, -4990i, -2147483647i)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(763f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(938f)), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f * -1052f))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), var_1.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(427f, -1000f, false))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x - 116f), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, 150f)))))))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_add_i32(~min(u_input.b.x, 2147483647i), 0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -609f, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x))), u_input.b.x, true), vec3<i32>(u_input.a, 0i, -790i), Struct_1(42832u), true | all(vec2<bool>(var_0, func_4(vec2<f32>(var_1.x, -455f)))), Struct_2(19887i, vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.x, var_1.x))))), u_input.a, true));
    return var_2.c;
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    return !select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), u_input.a < u_input.a), vec2<bool>(true, true), false), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), true || select(true, true, true));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = 8063i;
    let var_1 = any(func_5(func_2(Struct_1(4294967295u))));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.x))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b.x, _wgslsmith_f_op_f32(sign(-1668f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(1627f)))), !func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-309f, arg_0), _wgslsmith_f_op_vec2_f32(ceil(arg_1.b.zz)), vec2<bool>(arg_1.d, arg_1.d)))), false, _wgslsmith_mult_u32(u_input.c.x, 0u) >= ~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), u_input.c.yy) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_2.a), u_input.c.wwz)));
    let var_3 = 41034u;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-322f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(ceil(1566f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))))));
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> StorageBuffer {
    var var_0 = -(~vec3<i32>(_wgslsmith_mult_i32(countOneBits(-1i), i32(-1i) * -58282i), _wgslsmith_add_i32(~(-1i), 1i << (u_input.d % 32u)), _wgslsmith_mult_i32(~arg_0.a, 2147483647i)));
    return StorageBuffer(u_input.b, select(select(~_wgslsmith_mod_vec2_i32(vec2<i32>(-8274i, -1i), u_input.b), u_input.b, func_5(Struct_1(u_input.c.x))), u_input.b, any(!vec4<bool>(arg_0.d, true, true, false))), 29629i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), 630f, 1f)), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_2(_wgslsmith_mult_i32(u_input.a << (u_input.c.x % 32u), firstLeadingBit(~0i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(501f, 603f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(641f, Struct_2(1i, vec4<f32>(-700f, 1161f, -1000f, 1225f), 0i, true), Struct_1(u_input.c.x), u_input.b.x))), -752f, _wgslsmith_f_op_f32(f32(-1f) * -894f)), countOneBits(-50445i), true), vec2<f32>(-798f, -504f), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, u_input.a), _wgslsmith_clamp_i32(u_input.a, -1i, 83535i)), u_input.a) | 20170i, 40120i);
}

