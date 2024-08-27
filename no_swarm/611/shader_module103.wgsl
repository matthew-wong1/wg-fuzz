struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_5 {
    var var_0 = Struct_4(u_input.b.yzw);
    var var_1 = vec2<u32>(11875u, 4294967295u);
    var var_2 = ~(~(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(22637u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(85963u, 0u, 4294967295u, var_1.x)))));
    let var_3 = arg_0.d.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3, 977f, arg_1, -1220f), vec4<f32>(1647f, 911f, arg_0.d.x, -1140f))))))));
    return Struct_5(!arg_0.a.x, vec2<f32>(_wgslsmith_div_f32(-1241f, arg_0.d.x), -232f), vec3<i32>(-1i, _wgslsmith_sub_i32(-7883i, select(-31136i, 34508i, arg_0.b.b) | (var_0.a.x << (4294967295u % 32u))), i32(-1i) * -u_input.b.x), arg_0.c.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(var_4.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, var_3))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1376f, var_4.x), arg_0.d)))))));
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> Struct_4 {
    var var_0 = arg_1.c.yy;
    var_0 = u_input.b.xw ^ max(vec2<i32>(1i, abs(-49340i) | _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-79762i, 2147483647i, u_input.b.x, u_input.b.x))), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.b.yw, arg_1.c.yy), arg_1.c.zy));
    var var_1 = ~(u_input.a.zx >> (~u_input.a.xy % vec2<u32>(32u)));
    let var_2 = Struct_1(firstLeadingBit(2147483647i), true, arg_1.d);
    var_0 = -(~(u_input.b.xz ^ -arg_1.c.zx) >> (vec2<u32>((u_input.a.x ^ u_input.a.x) << (25825u % 32u), var_1.x) % vec2<u32>(32u)));
    return Struct_4(~_wgslsmith_mult_vec3_i32(-vec3<i32>(39014i, 2684i, 0i), vec3<i32>(var_0.x, 22852i, -1i) ^ firstTrailingBit(u_input.b.wxx)));
}

fn func_4(arg_0: Struct_4) -> vec3<u32> {
    return vec3<u32>(abs(0u), firstLeadingBit(41494u) | _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 23446u, 22704u, u_input.a.x), (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u)) >> (abs(vec4<u32>(u_input.a.x, 44113u, u_input.a.x, 1u)) % vec4<u32>(32u))), ~74149u);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> i32 {
    var var_0 = min(_wgslsmith_dot_vec3_i32(-u_input.b.www, u_input.b.yyx), 1i);
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, ~(~vec3<u32>(u_input.a.x, 1u, 0u))), vec3<u32>(34681u, min(min(u_input.a.x, 42198u), ~68477u), u_input.a.x)) & select(func_4(func_3(arg_2.a.x, func_2(Struct_2(vec4<bool>(arg_3, false, true, true), Struct_1(arg_2.a.x, true, vec4<bool>(arg_3, arg_1, true, arg_3)), Struct_1(7616i, true, vec4<bool>(arg_3, true, false, true)), vec2<f32>(1213f, 1176f)), -475f))), vec3<u32>(~58951u, (u_input.a.x << (9282u % 32u)) & ~u_input.a.x, abs(18987u)), (reverseBits(2147483647i) == u_input.b.x) | !all(vec4<bool>(arg_3, arg_1, true, true)));
    var_1 = reverseBits(u_input.a);
    var var_2 = select(vec2<bool>(arg_3, true), !vec2<bool>(true, any(select(vec3<bool>(false, arg_3, arg_1), vec3<bool>(false, arg_1, false), true))), vec2<bool>(arg_3, true));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) + 2701f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1086f, -1108f) * _wgslsmith_f_op_f32(770f * 442f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1603f)), _wgslsmith_f_op_f32(f32(-1f) * -848f))))), -783f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-825f, 430f, 1374f), vec3<f32>(879f, 1752f, 437f), arg_3)))))))));
    return func_3(_wgslsmith_mult_i32(arg_2.a.x, arg_2.a.x), Struct_5(all(vec3<bool>(arg_1, false, arg_0.x < u_input.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(1646f + 454f)) * _wgslsmith_f_op_vec2_f32(sign(func_2(Struct_2(vec4<bool>(var_2.x, arg_3, true, var_2.x), Struct_1(arg_2.a.x, false, vec4<bool>(false, true, arg_3, true)), Struct_1(-1i, arg_3, vec4<bool>(true, true, arg_1, var_2.x)), vec2<f32>(158f, var_3.x)), 407f).e))), u_input.b.zwx, vec4<bool>(!any(vec2<bool>(var_2.x, false)), true, any(vec2<bool>(arg_1, false)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.xy, _wgslsmith_f_op_vec2_f32(select(var_3.yz, vec2<f32>(1104f, var_3.x), vec2<bool>(true, arg_1))))))).a.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> Struct_4 {
    let var_0 = Struct_3(arg_1.c, Struct_2(vec4<bool>(arg_1.b, arg_1.c.x, !arg_0.b, !(arg_1.b & arg_1.c.x)), arg_0, Struct_1(-arg_1.a, func_1(arg_2.a.zx, arg_0.c.x, Struct_4(arg_2.a), true) > (arg_2.a.x >> (4294967295u % 32u)), select(func_2(Struct_2(arg_0.c, Struct_1(-2147483647i, false, arg_0.c), arg_0, vec2<f32>(1942f, 1000f)), -1134f).d, select(vec4<bool>(false, arg_1.c.x, true, arg_0.b), arg_1.c, arg_0.b), arg_1.c.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(196f, -1166f) * vec2<f32>(-576f, -401f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(941f, -1579f), vec2<f32>(-1123f, -410f), arg_0.c.wy)))))), Struct_2(select(!select(vec4<bool>(arg_0.c.x, false, true, true), arg_1.c, arg_0.b), vec4<bool>(!arg_1.c.x, arg_1.a != -3761i, -32321i <= arg_2.a.x, u_input.a.x < 0u), func_2(Struct_2(arg_0.c, arg_1, Struct_1(arg_2.a.x, false, arg_1.c), vec2<f32>(-903f, 863f)), _wgslsmith_f_op_f32(select(166f, 1206f, true))).d), Struct_1(arg_1.a >> (~48319u % 32u), any(!arg_0.c), !select(arg_0.c, vec4<bool>(false, arg_1.c.x, arg_0.c.x, true), false)), Struct_1(_wgslsmith_div_i32(arg_1.a, arg_1.a) << (arg_3 % 32u), arg_1.b | arg_1.b, arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(211f, 961f) * vec2<f32>(1665f, -259f)))))), arg_1.b | true);
    let var_1 = Struct_5(arg_0.b, var_0.b.d, ~firstTrailingBit(~arg_2.a), vec4<bool>(!(abs(arg_3) <= 37056u), 4294967295u != (4294967295u >> (~arg_3 % 32u)), arg_0.c.x, !(!any(vec4<bool>(false, true, arg_1.b, var_0.b.b.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(847f, _wgslsmith_f_op_f32(-385f + -119f)))));
    var var_2 = var_0.c.c;
    var var_3 = arg_0.c.zwy;
    var_2 = Struct_1(firstLeadingBit(_wgslsmith_mod_i32(~(-2147483647i), func_3(_wgslsmith_sub_i32(arg_0.a, arg_0.a), func_2(var_0.b, var_0.b.d.x)).a.x)), select(any(vec4<bool>(var_0.d, true, 13582u < arg_3, 0u == u_input.a.x)), var_1.a, true), select(!var_2.c, var_0.a, all(vec2<bool>(var_3.x, var_0.c.a.x))));
    return func_3(_wgslsmith_mult_i32(-1i, _wgslsmith_add_i32((i32(-1i) * -1i) ^ (u_input.b.x << (arg_3 % 32u)), u_input.b.x)), func_2(Struct_2(!var_2.c, arg_1, arg_1, vec2<f32>(_wgslsmith_div_f32(var_1.b.x, var_0.c.d.x), -492f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(-func_1(select(vec2<i32>(6423i, -5223i), u_input.b.yw, false), true, Struct_4(vec3<i32>(u_input.b.x, 42754i, 2147483647i)), false), true, !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true))), Struct_1(~_wgslsmith_sub_i32(-2147483647i, func_2(Struct_2(vec4<bool>(false, true, true, false), Struct_1(u_input.b.x, true, vec4<bool>(false, false, true, true)), Struct_1(-43510i, true, vec4<bool>(false, true, true, false)), vec2<f32>(755f, 780f)), -111f).c.x), true, select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(all(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, true, true)), false, true), true)), Struct_4(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.wyw, firstTrailingBit(vec3<i32>(-47842i, u_input.b.x, u_input.b.x))), (vec3<i32>(0i, -22923i, -11524i) & vec3<i32>(u_input.b.x, 0i, u_input.b.x)) | u_input.b.zwx)), ~1u);
    var var_1 = true;
    var_1 = 1u != u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(504f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1231f, -1428f) + -764f), _wgslsmith_f_op_f32(f32(-1f) * -1113f)), _wgslsmith_f_op_f32(max(-1582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-224f))))), 1f), ~u_input.b);
}

