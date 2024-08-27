struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    let var_0 = 1u;
    var var_1 = true;
    var_1 = true;
    let var_2 = Struct_1(vec2<u32>(var_0, 52507u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, _wgslsmith_f_op_f32(-980f * -455f), _wgslsmith_f_op_f32(f32(-1f) * -1782f), _wgslsmith_f_op_f32(159f * 347f)))), _wgslsmith_add_i32(u_input.a.x, -_wgslsmith_add_i32(42336i, -13949i)));
    global0 = false;
    return true;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_1(vec2<u32>(u_input.c, 1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, 2321f, arg_2, 270f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1266f, arg_2, -1873f) - vec4<f32>(1076f, 309f, arg_2, -1000f)))))), true)), arg_0.x);
    var var_1 = !(!arg_1.a.yx);
    let var_2 = Struct_2(~vec2<u32>(~0u, 6139u), Struct_1(var_0.a, vec4<f32>(502f, arg_2, 364f, var_0.b.x), u_input.a.x));
    var_1 = vec2<bool>((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(336f)) + _wgslsmith_div_f32(811f, 167f)) == arg_2) || !arg_1.a.x, arg_1.a.x);
    let var_3 = var_2.b.a;
    return arg_1.a.xz;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = vec2<u32>(1u, u_input.c);
    global0 = !(func_2() & false);
    var var_1 = _wgslsmith_f_op_f32(-arg_2.b.x);
    let var_2 = select(select(vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), true), !select(vec2<bool>(false, true), func_3(u_input.a.xx, Struct_4(vec4<bool>(true, true, false, true)), -159f), arg_2.b.x != 925f), !func_3(vec2<i32>(arg_1, arg_2.c), Struct_4(vec4<bool>(true, false, true, true)), -636f)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(vec3<bool>(true, any(vec4<bool>(true, true, false, true)), true)), any(vec2<bool>(true, func_2()))));
    var_1 = _wgslsmith_f_op_f32(arg_2.b.x - 1582f);
    return Struct_3(Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.a, vec2<u32>(31447u, var_0.x)), _wgslsmith_clamp_vec2_u32(arg_2.a, vec2<u32>(54728u, 0u), vec2<u32>(1u, 37982u))) >> (~_wgslsmith_mod_vec2_u32(arg_2.a, vec2<u32>(25110u, 1u)) % vec2<u32>(32u)), arg_2), arg_2);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> Struct_3 {
    var var_0 = func_1(arg_0, _wgslsmith_div_i32(reverseBits(_wgslsmith_div_i32(reverseBits(arg_0), -48062i >> (arg_1.a.b.a.x % 32u))), arg_0), Struct_1(max(~(vec2<u32>(35974u, u_input.c) << (vec2<u32>(arg_1.a.a.x, u_input.c) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(21575u, arg_1.a.b.a.x), arg_1.b.a), ~arg_1.b.a, _wgslsmith_mod_vec2_u32(arg_1.a.a, arg_1.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b.b.x, arg_1.a.b.b.x, -586f, arg_1.b.b.x))))), ~(i32(-1i) * -u_input.a.x)), arg_1.b.a);
    var var_1 = arg_1.a;
    let var_2 = arg_2;
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(min(var_0.b.b.x, var_1.b.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(120f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(347f)), -1000f)) * vec2<f32>(-838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f - -1689f)))));
    var var_4 = func_1(~var_0.a.b.c, ~_wgslsmith_mod_i32(min(arg_0, arg_1.a.b.c), ~firstLeadingBit(-1i)), Struct_1(_wgslsmith_sub_vec2_u32(arg_1.a.b.a, ~var_1.b.a) & _wgslsmith_sub_vec2_u32(var_0.b.a, ~vec2<u32>(4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1335f, var_0.a.b.b.x, 1064f, var_1.b.b.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, 1807f, var_0.a.b.b.x) - vec4<f32>(-439f, -550f, var_0.b.b.x, var_1.b.b.x))) + arg_1.a.b.b), arg_0), vec2<u32>(arg_1.b.a.x, ~_wgslsmith_mod_u32(~0u, var_0.a.b.a.x)));
    return Struct_3(Struct_2(~(var_0.a.a << (~vec2<u32>(arg_1.a.a.x, arg_1.b.a.x) % vec2<u32>(32u))), func_1(arg_1.a.b.c, 9184i, func_1(select(var_0.b.c, var_0.a.b.c, arg_3.a.x), func_1(-15783i, var_0.b.c, var_1.b, vec2<u32>(arg_1.a.b.a.x, arg_1.b.a.x)).a.b.c, func_1(2147483647i, 0i, var_0.b, vec2<u32>(4294967295u, 57973u)).b, ~vec2<u32>(u_input.b, var_4.a.a.x)).b, var_0.a.b.a & max(arg_1.b.a, var_0.a.a)).a.b), var_4.a.b);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: Struct_4) -> bool {
    global0 = arg_2;
    let var_0 = arg_0.b.b.x;
    var var_1 = func_4(-2147483647i, arg_0, arg_3, arg_3).b;
    var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, arg_0.a.b.b.x, arg_0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1206f)))))));
    return !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))))) == _wgslsmith_f_op_f32(sign(arg_0.a.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a.x, u_input.a.x >> (max(57865u, ~u_input.b) % 32u), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)) | min(~(~vec3<i32>(u_input.a.x, 29877i, 37955i) ^ (u_input.a | vec3<i32>(u_input.a.x, u_input.a.x, -1i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 12969i)), 1i) ^ _wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, -2147483647i, u_input.a.x), vec3<i32>(-6171i, -2147483647i, u_input.a.x)));
    global0 = !func_5(func_4(~0i, func_1(~(-53204i), _wgslsmith_mod_i32(-2624i, 19346i), Struct_1(vec2<u32>(u_input.b, 4294967295u), vec4<f32>(-1267f, 412f, 239f, 133f), 32612i), vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(0u, u_input.b)), Struct_4(vec4<bool>(true, false, true, false)), Struct_4(vec4<bool>(true, true, true, true))), true, (-213f > _wgslsmith_f_op_f32(step(-1000f, 1978f))) == func_2(), Struct_4(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))));
    global0 = any(vec4<bool>(select(any(vec3<bool>(false, false, false)), true, u_input.b < u_input.b), select(u_input.c, u_input.c, false) >= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(28190u, 26434u)), all(func_3(u_input.a.xz, Struct_4(vec4<bool>(true, true, true, true)), -507f)), !all(vec4<bool>(false, false, false, true)))) && any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false), all(vec3<bool>(false, false, false))), (u_input.c ^ u_input.c) >= 1u));
    var var_1 = firstTrailingBit(-23113i);
    var_1 = _wgslsmith_mod_i32(var_0.x, -23101i) >> (1u % 32u);
    global0 = !func_2();
    let var_2 = ~(~func_4(func_4(1i, Struct_3(Struct_2(vec2<u32>(1u, u_input.b), Struct_1(vec2<u32>(0u, u_input.c), vec4<f32>(-107f, -600f, 2064f, -528f), -1i)), Struct_1(vec2<u32>(u_input.b, u_input.b), vec4<f32>(-2107f, 1000f, -753f, -139f), 2969i)), Struct_4(vec4<bool>(true, false, true, true)), Struct_4(vec4<bool>(false, false, false, false))).a.b.c, func_1(firstLeadingBit(-6827i), abs(u_input.a.x), func_4(var_0.x, Struct_3(Struct_2(vec2<u32>(u_input.b, u_input.b), Struct_1(vec2<u32>(4294967295u, u_input.c), vec4<f32>(-686f, -795f, -1000f, -620f), 45958i)), Struct_1(vec2<u32>(34296u, u_input.c), vec4<f32>(745f, -1420f, -861f, 152f), 0i)), Struct_4(vec4<bool>(true, true, true, false)), Struct_4(vec4<bool>(false, true, true, true))).a.b, select(vec2<u32>(u_input.c, u_input.b), vec2<u32>(69671u, u_input.b), false)), Struct_4(vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(true, true, true, true))).b.a.x);
    let var_3 = -countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(38375i, var_0.x, -5309i) ^ u_input.a, -var_0), -47749i, var_0.x, 0i));
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-581f, 1000f)))), _wgslsmith_f_op_f32(-280f + _wgslsmith_f_op_f32(f32(-1f) * -1531f)), _wgslsmith_f_op_f32(sign(1053f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))) + -1371f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-183f, _wgslsmith_f_op_f32(f32(-1f) * -1154f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(693f, 585f)))), -776f, _wgslsmith_f_op_f32(696f - func_4(var_3.x, Struct_3(Struct_2(vec2<u32>(u_input.b, 16383u), Struct_1(vec2<u32>(u_input.b, 4294967295u), vec4<f32>(-683f, -1095f, -1249f, -1513f), u_input.a.x)), Struct_1(vec2<u32>(1u, u_input.b), vec4<f32>(252f, 869f, -1467f, 1134f), -20942i)), Struct_4(vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(true, true, false, false))).a.b.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a), -abs(var_0)), 17287i);
}

