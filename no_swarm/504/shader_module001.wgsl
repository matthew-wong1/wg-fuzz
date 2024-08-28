struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13>;

var<private> global1: Struct_3 = Struct_3(vec4<bool>(false, false, true, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<vec3<f32>, 13>();
    var var_0 = countOneBits(u_input.a);
    let var_1 = ~(~(~((u_input.b >> (u_input.a % 32u)) >> (~u_input.b % 32u))));
    var_0 = 26171u;
    global1 = Struct_3(vec4<bool>(all(global1.a.yyx), global1.a.x, !all(vec2<bool>(arg_1.c.x, true)), true & (9760u > _wgslsmith_mult_u32(u_input.a, var_1))));
    return vec2<u32>((var_1 >> (~(~u_input.b) % 32u)) ^ abs(firstTrailingBit(91559u)), (u_input.b ^ u_input.b) | var_1);
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-535f, -1130f, global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(floor(-2365f)), 452f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1930f, 1694f, -1209f, 279f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, 830f, -298f, -891f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-576f, -1017f, -554f, 157f), vec4<f32>(408f, 570f, 596f, 1389f), true)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(492f * _wgslsmith_f_op_f32(f32(-1f) * -363f)), -135f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(124f)), _wgslsmith_f_op_f32(step(-224f, -1217f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1430f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, -561f, 1396f, -542f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(391f)), -208f, _wgslsmith_f_op_f32(752f * 1834f), -277f)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * 1000f))) * _wgslsmith_f_op_f32(-var_0.x)), var_0.x, -1125f, 725f);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + var_0.x))), 1000f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1813f)), _wgslsmith_f_op_vec2_f32(min(var_0.zy, var_0.ww)), true)))), _wgslsmith_f_op_vec2_f32(-var_0.xw)));
    var var_2 = Struct_2(72678i, Struct_1(-select(_wgslsmith_add_i32(-1i, 0i), ~(-2147483647i), true)), !select(select(global1.a.yx, vec2<bool>(true, true), global1.a.x), select(vec2<bool>(global1.a.x, false), select(global1.a.zz, global1.a.yw, vec2<bool>(false, global1.a.x)), true), any(select(global1.a.xwx, global1.a.wzz, vec3<bool>(global1.a.x, global1.a.x, true)))));
    let var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-417f - -262f), var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1151f, 716f, global1.a.x)))))), Struct_2(var_2.b.a, Struct_1(var_2.a), var_2.c), Struct_1(~var_2.a)).x;
    return select(select(global1.a, global1.a, vec4<bool>(true && !var_2.c.x, true, all(vec4<bool>(false, false, true, true)) && true, all(vec4<bool>(global1.a.x, var_2.c.x, true, false)))), select(vec4<bool>((0i ^ var_2.a) == _wgslsmith_div_i32(var_2.a, var_2.b.a), true, -2147483647i != min(var_2.b.a, 30404i), global1.a.x), vec4<bool>(var_2.c.x, false, any(select(vec2<bool>(var_2.c.x, global1.a.x), global1.a.yz, true)), any(!global1.a)), any(global1.a.xz)), var_2.c.x);
}

fn func_2() -> u32 {
    var var_0 = Struct_3(select(func_3(), !global1.a, all(global1.a)));
    var var_1 = vec4<f32>(956f, _wgslsmith_f_op_f32(round(-1281f)), -589f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f * -715f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-273f - -1548f), _wgslsmith_f_op_f32(ceil(162f)))))));
    var var_2 = !var_0.a.yww;
    var_2 = select(!select(vec3<bool>(any(global1.a.wxw), !var_0.a.x, true), global1.a.zxy, select(!var_0.a.zxx, select(vec3<bool>(false, false, var_0.a.x), vec3<bool>(var_2.x, global1.a.x, false), global1.a.wzz), global1.a.zxx)), select(select(var_0.a.wwz, global1.a.xzz, min(0u, u_input.b) != u_input.a), !var_0.a.yxx, !select(vec3<bool>(var_0.a.x, var_0.a.x, global1.a.x), !global1.a.xzz, func_3().wzz)), select(func_3().yzz, !var_0.a.wyz, vec3<bool>(all(global1.a.xwx) & func_3().x, false || var_2.x, false)));
    var var_3 = vec4<i32>(abs(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 6876i), vec3<i32>(0i, -7031i, 95i)), 1i, ~min(-15935i, -1i))), ~(-1i), firstLeadingBit(1i), _wgslsmith_mult_i32(-1i, ~(-firstTrailingBit(1i))));
    return ~(((~u_input.b << ((u_input.a << (0u % 32u)) % 32u)) | u_input.b) | ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, u_input.a)), ~vec3<u32>(8502u, 26105u, u_input.a)), ~(~1u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(19036u, u_input.a), vec2<u32>(1u, 49430u), false), func_1(296f, Struct_2(1i, Struct_1(4131i), global1.a.yz), Struct_1(-1i))), 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, 40329u), vec3<u32>(59808u, u_input.a, u_input.a), vec3<u32>(20493u, 1u, 1u))), u_input.a, func_2(), u_input.a));
    let var_1 = Struct_2(-2147483647i, Struct_1(_wgslsmith_clamp_i32(0i, -2147483647i, _wgslsmith_sub_i32(abs(1i), i32(-1i) * -2147483647i))), !vec2<bool>(true | global1.a.x, !global1.a.x));
    var var_2 = _wgslsmith_div_vec3_i32(min(select(reverseBits(vec3<i32>(-56251i, 21134i, var_1.a)), vec3<i32>(var_1.a, -7034i, 1i) << (vec3<u32>(18015u, var_0.x, u_input.b) % vec3<u32>(32u)), true) & ((vec3<i32>(-1i, 32591i, 12979i) & vec3<i32>(var_1.b.a, var_1.b.a, -2147483647i)) & _wgslsmith_div_vec3_i32(vec3<i32>(36506i, -2147483647i, 2147483647i), vec3<i32>(25588i, var_1.b.a, 56246i))), vec3<i32>(var_1.b.a, _wgslsmith_sub_i32(var_1.b.a, select(var_1.b.a, -2147483647i, var_1.c.x)), -1i)), vec3<i32>(-var_1.b.a, -var_1.a >> (1u % 32u), -2147483647i));
    var var_3 = !global1.a.yzy;
    var var_4 = _wgslsmith_f_op_f32(max(1836f, -477f));
    var var_5 = vec3<bool>(var_3.x, func_3().x, var_1.c.x);
    let var_6 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-989f)) * _wgslsmith_f_op_f32(min(895f, -152f)))))), select(u_input.a, _wgslsmith_mult_u32(u_input.b, _wgslsmith_mod_u32(~var_0.x, 1u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -477f), _wgslsmith_f_op_f32(-1075f + -1110f))) == _wgslsmith_f_op_f32(select(-881f, _wgslsmith_f_op_f32(1852f * 162f), true))));
}

