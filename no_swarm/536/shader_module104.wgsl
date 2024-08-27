struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 1u, 0u)) << (58708u % 32u), arg_0.a.x, _wgslsmith_mult_u32(~(~arg_0.a.x), ~_wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(~arg_0.a.x, 4294967295u, _wgslsmith_div_u32(15303u, arg_0.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), ~vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x))));
    let var_1 = any(!(!(!vec2<bool>(true, arg_0.b.x)))) & arg_0.b.x;
    let var_2 = u_input.a;
    let var_3 = ~_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(14359i, select(1i, u_input.a, arg_0.b.x))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-8554i, 41061i), vec2<i32>(-25959i, u_input.a)) << (~arg_0.a % vec2<u32>(32u)), countOneBits(vec2<i32>(1i, var_2))));
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1881f, -2770f, -135f), vec3<f32>(-705f, -1039f, -1000f))))))));
    return var_4.zy;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = vec4<i32>(~(u_input.a | min(_wgslsmith_div_i32(1i, 2147483647i), 28607i)), u_input.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-56437i, 2147483647i), vec2<i32>(0i, u_input.a)))), vec2<i32>(1i, u_input.a)), -2147483647i & ~u_input.a);
    let var_1 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1266f, _wgslsmith_f_op_f32(-592f - -1373f))));
    var var_2 = arg_1.a.b;
    var_2 = arg_1.a.b;
    let var_3 = max(~(vec4<i32>(countOneBits(var_0.x), var_0.x, 1i, 2840i) ^ select(~var_0, -vec4<i32>(var_0.x, u_input.a, -49789i, var_0.x), !vec4<bool>(var_2.b.x, arg_1.a.c, true, true))), firstTrailingBit(var_0));
    return firstTrailingBit(~select(var_2.a, firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_1.a.a), vec2<u32>(1u, var_2.a.x))), var_2.b.x || true));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = Struct_1(func_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<u32>(0u, 60593u), !vec3<bool>(false, var_0.x, var_0.x)))), Struct_3(Struct_2(firstLeadingBit(62514u), Struct_1(vec2<u32>(2068u, 4294967295u), vec3<bool>(arg_2.x, var_0.x, var_0.x)), !var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-479f, 300f, 1859f) - vec3<f32>(arg_0, arg_0, -541f)), _wgslsmith_f_op_f32(floor(554f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, 277f, -1000f)))))), vec3<bool>(any(!select(vec4<bool>(var_0.x, arg_2.x, true, false), vec4<bool>(true, true, arg_2.x, true), vec4<bool>(var_0.x, false, arg_2.x, true))), !(!(0i < u_input.a)), any(vec3<bool>(var_0.x, any(vec3<bool>(true, arg_2.x, arg_2.x)), arg_2.x))));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~42726u, ~var_1.a.x, 45936u, ~var_1.a.x) >> (vec4<u32>(0u, min(var_1.a.x, var_1.a.x), ~59979u, ~var_1.a.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, var_1.a.x), vec4<u32>(var_1.a.x, 1u, 4294967295u, 1u), var_1.a.x <= 71399u), vec4<u32>(min(var_1.a.x, var_1.a.x), var_1.a.x, firstLeadingBit(var_1.a.x), _wgslsmith_add_u32(var_1.a.x, 10905u)))), ~var_1.a.x & var_1.a.x, var_1.a.x | ~(~1u), var_1.a.x);
    let var_3 = 1i;
    let var_4 = Struct_1(_wgslsmith_mod_vec2_u32(~firstLeadingBit(var_1.a) << (firstLeadingBit(vec2<u32>(var_2.x, 4294967295u)) % vec2<u32>(32u)), ~reverseBits(abs(vec2<u32>(var_1.a.x, var_1.a.x)))), select(vec3<bool>(var_1.b.x, false, true), var_1.b, false));
    return Struct_1(var_1.a, !select(select(select(var_0, vec3<bool>(arg_2.x, true, var_0.x), var_0), select(vec3<bool>(var_1.b.x, false, var_1.b.x), var_0, var_1.b), var_4.b), select(vec3<bool>(var_0.x, true, var_1.b.x), vec3<bool>(false, arg_2.x, var_0.x), !var_0), var_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = func_2(1371f, 0i, arg_2.yyx);
    var var_1 = arg_0.b.x;
    var_1 = arg_2.x;
    var_1 = ~u_input.a > _wgslsmith_dot_vec4_i32(select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(22210i, 0i, 1i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, -23822i), vec4<i32>(-1i, -2147483647i, 4301i, 3015i)), select(~vec4<i32>(-100183i, 9747i, u_input.a, u_input.a), abs(vec4<i32>(1i, -6216i, u_input.a, 10975i)), vec4<bool>(false, var_0.b.x, false, arg_0.b.x)), arg_2), vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.a, -1i, 0i, 84096i)));
    var_1 = !(!arg_0.b.x);
    return var_0;
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-977f, _wgslsmith_f_op_f32(-arg_3))) - _wgslsmith_f_op_f32(-arg_1.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.e) + _wgslsmith_f_op_f32(arg_3 - arg_3)))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(var_0 - 184f)));
    var var_3 = arg_1.a.b.b;
    return Struct_2(1u >> (~((arg_1.a.a >> (1u % 32u)) | arg_1.a.b.a.x) % 32u), func_5(func_5(func_5(func_5(arg_1.a.b, 627f, vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(-arg_1.b.x), select(vec4<bool>(arg_2.x, arg_2.x, arg_1.a.b.b.x, arg_2.x), vec4<bool>(arg_0, arg_1.a.b.b.x, arg_0, arg_1.a.c), false)), _wgslsmith_f_op_f32(min(1108f, _wgslsmith_f_op_f32(571f - var_0))), !(!vec4<bool>(false, arg_0, arg_1.a.b.b.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-583f * arg_3)))), select(select(select(vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_2.x, true, var_3.x, false), vec4<bool>(false, true, true, false)), vec4<bool>(var_3.x, false, arg_2.x, true), select(vec4<bool>(arg_2.x, arg_2.x, false, false), vec4<bool>(arg_2.x, false, false, var_3.x), arg_1.a.b.b.x)), select(select(vec4<bool>(arg_2.x, true, true, arg_1.a.b.b.x), vec4<bool>(true, true, arg_2.x, arg_2.x), arg_0), !vec4<bool>(true, arg_1.a.c, true, var_3.x), vec4<bool>(true, true, arg_1.a.b.b.x, true)), vec4<bool>(var_3.x, true, true, var_3.x))), false, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(arg_1.a.d.x + -1498f))), arg_1.b.x, arg_1.a.e), vec3<f32>(760f, arg_1.a.e, _wgslsmith_f_op_f32(-arg_3))), 392f);
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    var var_0 = func_6(true, Struct_3(Struct_2(1u, func_5(func_2(-396f, -4183i, vec3<bool>(true, false, false)), -1000f, select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(true, arg_0.x, true, false), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), true, vec3<f32>(_wgslsmith_f_op_f32(min(984f, 1323f)), -325f, _wgslsmith_f_op_f32(f32(-1f) * -2542f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-528f, -684f), _wgslsmith_f_op_f32(f32(-1f) * -2126f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(921f, _wgslsmith_div_f32(817f, 284f), -705f))), vec2<bool>(arg_0.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-943f, _wgslsmith_f_op_f32(105f + 1072f))))) + _wgslsmith_f_op_f32(floor(157f))));
    let var_1 = Struct_2(0u, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1028f, _wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x)))) + 1f), -5661i, vec3<bool>(!var_0.b.b.x, func_2(-1679f, 0i, var_0.b.b).b.x | true, arg_0.x)), true, vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), _wgslsmith_f_op_f32(464f * var_0.d.x), -1549f), _wgslsmith_div_f32(-2173f, var_0.e));
    var var_2 = u_input.a;
    let var_3 = var_1.d.x;
    let var_4 = ~(-17119i) > u_input.a;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~(-35280i), u_input.a, ~62405i), vec4<i32>(u_input.a, u_input.a, countOneBits(u_input.a), 2147483647i)) ^ ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, true);
    let var_1 = _wgslsmith_div_vec4_i32(-vec4<i32>(-_wgslsmith_div_i32(-1i, -1i), _wgslsmith_clamp_i32(func_1(vec2<bool>(var_0.x, false)), u_input.a, -13306i | u_input.a), -u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(-19652i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i)), vec4<i32>(u_input.a, ~_wgslsmith_div_i32(u_input.a, -9201i), 1i, -2147483647i), ~(~(vec4<i32>(u_input.a, 1128i, 1i, 64452i) | vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)))));
    var var_2 = func_6(true, Struct_3(func_6(select(var_0.x, var_0.x, var_0.x) != true, Struct_3(Struct_2(0u, Struct_1(vec2<u32>(0u, 109714u), vec3<bool>(var_0.x, var_0.x, var_0.x)), true, vec3<f32>(729f, -1038f, 1265f), -617f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1569f, 313f) - vec3<f32>(1809f, 1119f, -454f))), vec2<bool>(true, all(vec3<bool>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1933f - 471f), -1141f, all(vec3<bool>(var_0.x, true, var_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-937f, 122f, _wgslsmith_f_op_f32(abs(-831f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-667f, -376f, 200f) - vec3<f32>(898f, 449f, -1000f)))), vec2<bool>(true & var_0.x, true), -356f);
    var_2 = Struct_2(abs(~1u) ^ max(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_2.a, var_2.b.a.x, var_2.a), ~var_2.b.a.x), ~(~var_2.a)), var_2.b, true, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-788f, 318f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.d.x + 1184f)))), _wgslsmith_f_op_vec3_f32(var_2.d * vec3<f32>(_wgslsmith_f_op_f32(var_2.d.x + var_2.e), _wgslsmith_f_op_f32(max(var_2.d.x, -1000f)), _wgslsmith_div_f32(var_2.d.x, var_2.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e) + -961f))));
    var var_3 = _wgslsmith_f_op_f32(sign(var_2.d.x));
    let var_4 = countOneBits(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.b.a, var_2.b.a), 43431u, _wgslsmith_add_u32(1u, 0u))) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(3489u, var_2.b.a.x, 0u), ~vec3<u32>(var_2.a, 19568u, var_2.b.a.x), ~vec3<u32>(var_2.a, 0u, 0u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-var_1.x, -(i32(-1i) * -36611i)), var_4.x, firstTrailingBit(countOneBits(1i)) | -557i, vec2<f32>(719f, _wgslsmith_f_op_f32(ceil(-103f))), ~(~(~vec4<u32>(var_2.b.a.x, var_4.x, var_2.b.a.x, 3284u))));
}

