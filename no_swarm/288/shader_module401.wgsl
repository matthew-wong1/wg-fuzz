struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = Struct_3(arg_3.a);
    return Struct_4(~(~16491u), var_0.a.b, select(vec4<bool>(!(!var_0.a.b), (33094i == arg_0) && !var_0.a.b, arg_3.a.b, false), vec4<bool>(var_0.a.b, var_0.a.b, any(!vec2<bool>(false, arg_3.a.a)), false), arg_3.a.a));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    global0 = arg_1.a.yz;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.yz + _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.yx)))));
    var var_0 = vec3<bool>(arg_1.c.x, -1369f == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(324f, arg_1.a.x), _wgslsmith_f_op_f32(abs(257f)))))), !(arg_0 | (2516f > _wgslsmith_f_op_f32(-global0.x))));
    var var_1 = Struct_3(Struct_1(true, var_0.x, -10757i));
    var_0 = !arg_1.c.xyy;
    return 432f;
}

fn func_2() -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(594f + -715f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, Struct_2(vec3<f32>(1078f, global0.x, global0.x), global0.x, vec4<bool>(true, true, true, true)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-306f, global0.x)), _wgslsmith_f_op_f32(-global0.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 2132f)) * vec2<f32>(_wgslsmith_div_f32(-1164f, -1327f), _wgslsmith_f_op_f32(floor(global0.x)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(957f, -223f)))), func_1(-59302i, firstLeadingBit(u_input.a.zx), firstLeadingBit(vec3<i32>(u_input.b.x, 14054i, u_input.b.x)), Struct_3(Struct_1(false, false, u_input.b.x))).c.zx))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 1765f))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(444f, 1261f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(266f, global0.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f + global0.x)), _wgslsmith_div_f32(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -568f) - vec2<f32>(global0.x, 1000f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, 189f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<bool>(true, true))))));
    global0 = vec2<f32>(1569f, _wgslsmith_f_op_f32(f32(-1f) * -256f));
    let var_0 = !(!(!(!func_1(-2147483647i, u_input.a.yz, vec3<i32>(1i, -11374i, 0i), Struct_3(Struct_1(true, true, u_input.b.x))).c.xxz)));
    return _wgslsmith_dot_vec4_i32(reverseBits(-(vec4<i32>(u_input.b.x, 33796i, -28525i, -1i) << ((vec4<u32>(u_input.a.x, 17549u, 27960u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u)) % vec4<u32>(32u)))), vec4<i32>(i32(-1i) * -(u_input.b.x << (u_input.a.x % 32u)), _wgslsmith_add_i32(~2147483647i, -14045i >> (u_input.a.x % 32u)) << (u_input.a.x % 32u), 0i, ~(i32(-1i) * -32198i)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_4) -> f32 {
    global0 = vec2<f32>(-593f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b * arg_1.b))))));
    global0 = arg_1.a.yx;
    global0 = arg_1.a.zz;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-1813f - 1f), _wgslsmith_f_op_f32(ceil(-313f)));
    var var_0 = firstTrailingBit(vec3<u32>(~(~(~arg_0.a)), ~(_wgslsmith_sub_u32(arg_2.x, 2192u) & ~9164u), _wgslsmith_sub_u32(~_wgslsmith_div_u32(7135u, 1u), firstLeadingBit(arg_3.a))));
    return _wgslsmith_f_op_f32(f32(-1f) * -297f);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(113f + _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-arg_0.a.x))))), _wgslsmith_f_op_f32(min(-129f, -1414f)));
    let var_0 = Struct_2(vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_3(any(arg_0.c.wxz), arg_0)), global0.x), 924f, select(vec4<bool>(!arg_0.c.x, arg_0.c.x && (2090f < arg_0.b), !arg_0.c.x, !any(arg_0.c.yyx)), arg_0.c, arg_0.c));
    let var_1 = Struct_3(Struct_1(true, all(select(vec3<bool>(var_0.c.x, true, true), var_0.c.zwx, true)), -20187i));
    var var_2 = vec3<i32>(-1i) * -firstTrailingBit(-vec3<i32>(-1i, -34960i, 1074i) >> (~u_input.a % vec3<u32>(32u)));
    let var_3 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(func_1(var_1.a.c, u_input.a.xx, vec3<i32>(var_2.x, 23835i, u_input.b.x), Struct_3(Struct_1(arg_0.c.x, true, 2147483647i))), Struct_2(var_0.a, arg_0.a.x, vec4<bool>(false, true, var_1.a.b, var_1.a.b)), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u), func_1(-1i, vec2<u32>(u_input.a.x, 0u), vec3<i32>(1i, -2147483647i, 2147483647i), var_1)))))), vec4<bool>(false, var_1.a.a, global0.x > _wgslsmith_f_op_f32(-global0.x), false));
    return Struct_3(Struct_1(true & !(!var_0.c.x), true, i32(-1i) * -_wgslsmith_mod_i32(var_2.x, 8052i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(951f)));
    let var_1 = func_5(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -462f, global0.x) * vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -2282f, -523f))), _wgslsmith_f_op_f32(func_4(func_1(min(29047i, 2147483647i), u_input.a.yz >> (u_input.a.zy % vec2<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 4323i), vec3<i32>(-6063i, u_input.b.x, -15818i)), Struct_3(Struct_1(true, false, -2147483647i))), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 191f), vec3<f32>(1485f, -530f, 754f)), _wgslsmith_f_op_f32(-761f * -551f), vec4<bool>(false, false, false, true)), ~(~vec4<u32>(u_input.a.x, 1u, 0u, 3523u)), func_1(func_2(), vec2<u32>(u_input.a.x, u_input.a.x), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), Struct_3(Struct_1(false, true, -7637i))))), func_1(_wgslsmith_div_i32(u_input.b.x << (649u % 32u), _wgslsmith_div_i32(u_input.b.x, -2147483647i)), (u_input.a.yz & u_input.a.xz) >> (_wgslsmith_add_vec2_u32(u_input.a.zz, vec2<u32>(27553u, 5410u)) % vec2<u32>(32u)), select(vec3<i32>(u_input.b.x, u_input.b.x, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(-51630i, 0i, 2147483647i), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)), true), Struct_3(Struct_1(false, false, u_input.b.x))).c));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -796f)), _wgslsmith_f_op_f32(-var_0)))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 1000f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -985f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(-var_0)))), 1485f)));
    global0 = vec2<f32>(_wgslsmith_div_f32(-410f, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1746f), var_0, var_1.a.b)) + -1858f));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-130f, 771f) * vec2<f32>(global0.x, var_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(230f, 898f)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - var_0), global0.x), _wgslsmith_f_op_f32(f32(-1f) * -821f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-632f, 1597f) + vec2<f32>(global0.x, var_0)) * vec2<f32>(711f, global0.x)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f * global0.x) + _wgslsmith_f_op_f32(1252f * global0.x)) + 1000f) + _wgslsmith_f_op_f32(floor(2038f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-991f, 1747f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1360f + _wgslsmith_f_op_f32(global0.x + 412f)), _wgslsmith_f_op_f32(func_4(Struct_4(u_input.a.x, true, vec4<bool>(true, true, var_1.a.b, false)), Struct_2(vec3<f32>(-569f, 1000f, var_0), global0.x, vec4<bool>(true, var_1.a.a, true, var_1.a.a)), firstTrailingBit(vec4<u32>(0u, u_input.a.x, u_input.a.x, 49099u)), func_1(var_1.a.c, u_input.a.zx, vec3<i32>(2147483647i, var_1.a.c, -46221i), Struct_3(var_1.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(abs(~var_1.a.c), reverseBits(u_input.b.x)), 20933i ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.c, u_input.b.x, 49327i), vec3<i32>(var_1.a.c, var_1.a.c, u_input.b.x)), u_input.b.x), vec3<f32>(-979f, -470f, _wgslsmith_f_op_f32(trunc(global0.x))));
}

