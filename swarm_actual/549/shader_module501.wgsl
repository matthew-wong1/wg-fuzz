struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(arg_3.b.zy, _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-381f, arg_3.b.x)) * _wgslsmith_f_op_vec2_f32(-arg_2)))))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(576f, arg_3.b.x) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.b.x, arg_2.x), arg_3.d))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-238f))), 1000f)));
    let var_2 = select(_wgslsmith_mod_vec4_u32(~abs(~vec4<u32>(0u, 53683u, 27098u, arg_3.c.a)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(25350u, 7159u, 4294967295u, 26953u), vec4<u32>(1u, 4294967295u, arg_3.c.a, 0u)), vec4<u32>(arg_3.c.a, 0u, 1u, 1u)), firstLeadingBit(vec4<u32>(arg_3.c.a, arg_3.c.a, arg_3.c.a, 65903u)))), ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.c.a, arg_3.c.a, arg_3.c.a, 1u), vec4<u32>(4294967295u, 10107u, 4294967295u, arg_3.c.a)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.c.a, arg_3.c.a, arg_3.c.a, arg_3.c.a), vec4<u32>(75518u, arg_3.c.a, 4294967295u, 29370u), vec4<u32>(1u, arg_3.c.a, 4294967295u, 78999u)))), false);
    let var_3 = any(vec4<bool>(true, true, true, true)) && false;
    return !(!any(select(vec4<bool>(false, var_3, var_3, var_3), select(vec4<bool>(var_3, true, true, var_3), vec4<bool>(false, false, false, var_3), false), arg_2.x < var_1)));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec4<i32>) -> vec2<f32> {
    let var_0 = Struct_4(0i);
    let var_1 = vec3<i32>(-(~(-7587i)), arg_0.a, _wgslsmith_add_i32(-arg_2.x, ~_wgslsmith_mod_i32(arg_2.x, 23507i)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-536f, 786f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(824f, 1324f, -675f), vec3<f32>(-1000f, -436f, 286f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-686f, -1000f, 674f))), false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, -1020f, -2285f)) - vec3<f32>(-854f, 394f, -175f)), vec3<f32>(-125f, -1000f, -1393f))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(225f, 977f))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(-483f, _wgslsmith_f_op_f32(var_2.x * -1209f), true))));
    let var_3 = func_3(abs(var_1.x), var_0, var_2.zx, Struct_2(select(vec2<i32>(~16295i, -40359i), min(min(var_1.xy, vec2<i32>(-25888i, var_1.x)), arg_2.zx), !select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-500f, -940f, var_2.x) + vec3<f32>(-262f, -1090f, var_2.x)))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30308u, 53171u, 1u), vec3<u32>(0u, 1u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 77505u, 0u, 7121u), vec4<u32>(4294967295u, 13749u, 0u, 1u)), 1u), var_1), var_2.zz, vec3<i32>(-(~var_1.x), arg_2.x, ~var_1.x)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.zz - var_2.yy)), _wgslsmith_f_op_vec2_f32(max(var_2.xy, var_2.xz)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1568f, -305f)), var_2.x)));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(arg_1, func_3(countOneBits(~(-1i)), arg_1, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1430f, arg_0)), all(vec2<bool>(false, true)))), Struct_2(-vec2<i32>(u_input.a, arg_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), Struct_1(114083u, vec3<i32>(arg_1.a, -17442i, -2147483647i)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1183f), vec2<f32>(arg_0, arg_0)), vec3<i32>(1i, arg_1.a, u_input.a))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(2250i, 38196i, -1i, u_input.a), firstLeadingBit(vec4<i32>(65982i, 11741i, u_input.a, -2147483647i) | vec4<i32>(77784i, -24903i, arg_1.a, -1i)), -vec4<i32>(14327i, u_input.c, -2147483647i, 1i)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_0) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(525f * -1000f)), _wgslsmith_f_op_f32(sign(-468f)))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_4(Struct_4(arg_1.a), true, ~vec4<i32>(-38210i, -1i, -15577i, u_input.b))).x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-115f, _wgslsmith_f_op_f32(-arg_0)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-462f, var_0.x) + vec2<f32>(arg_0, 1268f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -964f, true))))));
    var var_1 = max(_wgslsmith_mult_i32(u_input.a, arg_1.a), u_input.a);
    var var_2 = false;
    return 13620i;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>) -> StorageBuffer {
    let var_0 = !select(!(!vec4<bool>(true, arg_2.x, arg_2.x, true)), !vec4<bool>(arg_2.x, true, arg_2.x | arg_2.x, any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false))), arg_2.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(380f, 377f, _wgslsmith_f_op_f32(select(-1898f, -1592f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(451f, 242f, 102f)))));
    let var_2 = !(!(func_2(_wgslsmith_div_f32(var_1.x, 202f), Struct_4(25918i)) > -_wgslsmith_clamp_i32(arg_0.b.x, 40507i, -23695i)));
    var var_3 = arg_0.b.x;
    let var_4 = Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1), var_1))), _wgslsmith_f_op_vec3_f32(var_1 * var_1))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1) * _wgslsmith_f_op_vec3_f32(var_4.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-107f, -873f, -577f), vec3<f32>(-1595f, var_4.b.x, 1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.a, 75524i), vec4<i32>(u_input.a, u_input.c, u_input.b, u_input.b)), ~(reverseBits(vec4<i32>(u_input.a, u_input.c, u_input.c, 2147483647i)) >> (~vec4<u32>(51004u, 20316u, 33524u, 2580u) % vec4<u32>(32u)))), u_input.a);
    let var_1 = -(~(-(~_wgslsmith_mod_i32(var_0.x, 1i))));
    let x = u_input.a;
    s_output = func_1(Struct_1(abs(abs(1u)), _wgslsmith_mod_vec3_i32(select(~vec3<i32>(-2147483647i, u_input.a, 1i), max(vec3<i32>(2147483647i, u_input.b, var_1), vec3<i32>(1i, 55392i, u_input.a)), false), _wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.x, var_1, u_input.b), min(vec3<i32>(-2147483647i, 17673i, 1i), vec3<i32>(u_input.b, var_0.x, var_1))))), -vec3<i32>(-(3740i << (0u % 32u)), -countOneBits(2147483647i), _wgslsmith_sub_i32(u_input.b, -u_input.b)), vec3<bool>(false, any(vec2<bool>(false, var_0.x == var_1)), true));
}

