struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-798f - _wgslsmith_f_op_f32(floor(1170f))))));
    var var_1 = u_input.a.x;
    var_1 = abs(u_input.c);
    var_1 = _wgslsmith_sub_u32(4294967295u, ~reverseBits(u_input.c));
    var var_2 = _wgslsmith_div_u32(~1u, u_input.a.x);
    return Struct_1(i32(-1i) * -36696i, reverseBits(abs(min(_wgslsmith_mod_u32(1u, 1u), 1u))), -1476f);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = func_2(false, _wgslsmith_add_vec3_i32(abs(_wgslsmith_div_vec3_i32(u_input.b.yyz, u_input.b.yxx)), u_input.b.xyy)).c;
    var_0 = arg_1.x;
    let var_1 = ~(~u_input.a.wwy & select(vec3<u32>(31742u, 1u, 555u) >> (vec3<u32>(arg_0.b.b, arg_2.x, 0u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, arg_0.b.b, u_input.c), !vec3<bool>(true, arg_0.c.x, arg_0.a.x))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(~(~4294967295u), 44318u, arg_2.x), vec3<u32>(abs(~54608u), func_2(arg_0.b.a <= arg_0.b.a, vec3<i32>(-80808i, -1i, -2147483647i)).b, 4294967295u));
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(~(-2147483647i), 13568i, _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, u_input.d), 1i), select(-arg_0.b.a, _wgslsmith_dot_vec3_i32(u_input.b.wwy, vec3<i32>(23777i, 1i, arg_0.b.a)), !arg_0.a.x));
    var var_3 = _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(u_input.b.x, var_2.x, -2147483647i) << (~vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, arg_0.b.a), u_input.b.zxw) ^ vec3<i32>(u_input.b.x | var_2.x, -36903i, 1i)) >= ~abs(~_wgslsmith_mult_i32(var_2.x, var_2.x));
    return arg_0;
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = func_3(Struct_2(vec3<bool>((u_input.c > u_input.c) && false, true, true), func_2(true, u_input.b.xyw), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -1000f, arg_0.x, 543f))))))), u_input.a.xx);
    let var_1 = Struct_2(func_3(Struct_2(!var_0.a, func_3(func_3(Struct_2(vec3<bool>(var_0.a.x, false, false), Struct_1(u_input.b.x, 4294967295u, arg_0.x), var_0.c), vec4<f32>(253f, 1710f, -537f, 535f), u_input.a.zy), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, 318f, -703f, var_0.b.c))), u_input.a.xw >> (u_input.a.wz % vec2<u32>(32u))).b, vec4<bool>(var_0.a.x, all(var_0.c.zz), var_0.c.x, 54372u >= u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(368f, var_0.b.c)) * _wgslsmith_f_op_f32(var_0.b.c * -141f)), 455f, -334f, arg_0.x), u_input.a.yw).a, func_3(func_3(func_3(Struct_2(var_0.a, Struct_1(u_input.b.x, var_0.b.b, -573f), vec4<bool>(var_0.a.x, false, true, var_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(954f, arg_0.x, var_0.b.c, 709f) + vec4<f32>(arg_0.x, 127f, arg_0.x, 1373f)), max(vec2<u32>(23171u, 26383u), u_input.a.xx)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_0.b.c, var_0.b.c, arg_0.x)) * vec4<f32>(var_0.b.c, var_0.b.c, 343f, arg_0.x)), ~(~u_input.a.wz)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(var_0.b.c, 128f, -1000f, arg_0.x))), true)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.b, 0u) << ((u_input.a.xx | vec2<u32>(u_input.c, var_0.b.b)) % vec2<u32>(32u)), ~abs(vec2<u32>(u_input.a.x, u_input.c)))).b, vec4<bool>(any(var_0.c), func_3(func_3(func_3(Struct_2(var_0.c.wyy, Struct_1(var_0.b.a, u_input.c, arg_0.x), vec4<bool>(var_0.c.x, false, true, var_0.a.x)), vec4<f32>(var_0.b.c, arg_0.x, 1769f, var_0.b.c), vec2<u32>(37437u, 0u)), vec4<f32>(var_0.b.c, arg_0.x, -598f, 1451f), u_input.a.xx | vec2<u32>(var_0.b.b, 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -493f, arg_0.x, _wgslsmith_div_f32(-1529f, 749f)), ~(~u_input.a.xx)).c.x, true, var_0.c.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(624f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    let var_3 = _wgslsmith_add_vec4_u32(reverseBits(~select(vec4<u32>(var_0.b.b, 4294967295u, 40280u, 78281u), firstTrailingBit(u_input.a), !var_1.c.x)), abs(~(~(~u_input.a))));
    let var_4 = all(var_0.c.yxw);
    return -((~u_input.b | min(vec4<i32>(var_0.b.a, -2147483647i, 1637i, 1i), u_input.b)) << (vec4<u32>(_wgslsmith_div_u32(~var_1.b.b, func_3(var_1, vec4<f32>(var_1.b.c, var_2.x, arg_0.x, -2032f), vec2<u32>(11807u, u_input.a.x)).b.b), reverseBits(u_input.c), u_input.c, u_input.a.x) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(abs(u_input.b.x), _wgslsmith_add_u32(26268u, arg_1), 1010f);
    let var_1 = firstLeadingBit(~vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.x, 21158i, 15438i, 1i)), vec4<i32>(28095i, var_0.a, arg_0.x, -60945i) >> (vec4<u32>(arg_1, 123164u, u_input.c, 11876u) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(arg_0.xz, firstLeadingBit(vec2<i32>(1i, u_input.d)))));
    var var_2 = func_3(Struct_2(vec3<bool>(true, true, true), func_3(Struct_2(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), var_0, select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_0.c, var_0.c, var_0.c)))), max(vec2<u32>(var_0.b, 8016u) | u_input.a.yw, min(u_input.a.yw, u_input.a.xw))).b, !func_3(Struct_2(vec3<bool>(false, true, true), Struct_1(-18689i, arg_1, -1000f), vec4<bool>(true, false, false, false)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-143f, var_0.c, var_0.c, 1000f))), _wgslsmith_div_vec2_u32(vec2<u32>(52526u, var_0.b), vec2<u32>(u_input.a.x, 4240u))).c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 337f, 659f, var_0.c)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1863f), 969f, -1472f, _wgslsmith_f_op_f32(trunc(var_0.c)))))), vec2<u32>(reverseBits(_wgslsmith_div_u32(func_2(false, arg_0.wyz).b, arg_1)), ~(~func_3(Struct_2(vec3<bool>(false, false, true), var_0, vec4<bool>(false, true, false, true)), vec4<f32>(var_0.c, -651f, var_0.c, var_0.c), u_input.a.xy).b.b)));
    let var_3 = any(vec3<bool>(var_2.a.x, true, select(var_2.a.x, any(var_2.c), !var_2.c.x))) | (!(var_1.x != (i32(-1i) * -6096i)) || var_2.c.x);
    var var_4 = func_3(func_3(func_3(Struct_2(select(vec3<bool>(true, var_2.a.x, var_2.a.x), vec3<bool>(false, false, true), var_2.a), var_2.b, var_2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-186f, var_0.c, -781f, var_0.c) * _wgslsmith_div_vec4_f32(vec4<f32>(405f, 352f, 271f, -358f), vec4<f32>(-1195f, 117f, var_2.b.c, -887f))), firstTrailingBit(vec2<u32>(0u, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_2.b.c, var_2.b.c, 985f) + vec4<f32>(-1031f, var_0.c, 281f, 241f)))), u_input.a.zz >> (~countOneBits(u_input.a.yz) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c, -2773f, var_2.b.c, 509f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-561f, var_2.b.c, var_2.b.c, var_0.c) * vec4<f32>(831f, 1324f, -719f, var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1727f, var_0.c, 444f, var_0.c)))), func_3(Struct_2(vec3<bool>(var_2.a.x, true, true), Struct_1(2147483647i, 64230u, -2035f), vec4<bool>(true, false, var_3, false)), vec4<f32>(var_0.c, var_0.c, -582f, var_0.c), vec2<u32>(arg_1, 0u)).a.x | all(var_2.c.yx))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.c, var_2.b.c, var_2.b.c, var_0.c) * vec4<f32>(var_2.b.c, 402f, var_2.b.c, var_2.b.c)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1359f, -908f, var_2.b.c), vec4<f32>(var_0.c, -1002f, -1516f, 170f), true))))), select(_wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(var_0.b, 4294967295u)), firstTrailingBit(u_input.a.wz)), reverseBits(vec2<u32>(40996u, var_2.b.b)) ^ u_input.a.yx, all(!var_2.c)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f + 340f)), -1000f)), _wgslsmith_mod_u32(select(min(~13551u, ~u_input.c), u_input.a.x | ~u_input.a.x, true), select(u_input.a.x, func_2(true, vec3<i32>(30215i, u_input.b.x, u_input.d)).b, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))))));
    let var_1 = -vec4<i32>(firstLeadingBit(u_input.b.x) & u_input.b.x, ~u_input.b.x, _wgslsmith_mult_i32((19906i & u_input.b.x) ^ var_0.a, _wgslsmith_add_i32(var_0.a, abs(u_input.b.x))), -u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(11808i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 418f) * vec2<f32>(var_0.c, var_0.c)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1226f, -1160f), vec2<f32>(var_0.c, -1490f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) + vec2<f32>(_wgslsmith_div_f32(-2125f, 1498f), _wgslsmith_f_op_f32(-var_0.c))), !vec2<bool>(any(vec3<bool>(true, true, false)), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1331f + var_0.c), _wgslsmith_f_op_f32(266f - -1000f), _wgslsmith_f_op_f32(-227f + 1427f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c, var_0.c, 1674f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c, -1310f, var_0.c))))))), vec3<u32>(~(~4640u ^ (u_input.a.x & 51408u)), 78779u, u_input.c), var_1.wz);
}

