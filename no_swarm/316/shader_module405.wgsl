struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec3<i32> {
    var var_0 = arg_0;
    return select(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a, arg_1.a, arg_1.a), vec3<i32>(var_0.a, var_0.a, -32360i)), -(vec3<i32>(arg_0.a, arg_0.a, arg_1.a) >> (vec3<u32>(arg_0.b.a.x, 9944u, var_0.b.a.x) % vec3<u32>(32u))), vec3<i32>(arg_0.a & arg_0.a, i32(-1i) * -1i, arg_1.a)) << (var_0.c.xzw % vec3<u32>(32u)), ((-vec3<i32>(1i, arg_0.a, -2147483647i) & ~vec3<i32>(arg_0.a, -2147483647i, arg_1.a)) | ~(-vec3<i32>(-15343i, var_0.a, -34223i))) ^ select(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_0.a, 1i), vec3<i32>(2147483647i, var_0.a, 19955i), vec3<i32>(arg_1.a, 2147483647i, -1i))), vec3<i32>(2147483647i, _wgslsmith_mod_i32(arg_1.a, -2147483647i), arg_0.a), vec3<bool>(arg_2, false, !var_0.d)), arg_1.d);
}

fn func_2() -> f32 {
    var var_0 = min(~max(func_3(Struct_2(2147483647i, Struct_1(vec2<u32>(0u, 33359u), -1635f, true, false, true), vec4<u32>(u_input.b, u_input.a, 41425u, u_input.b), false, Struct_1(vec2<u32>(52646u, u_input.a), -527f, false, false, false)), Struct_2(-857i, Struct_1(vec2<u32>(u_input.b, u_input.b), 906f, false, true, false), vec4<u32>(u_input.a, 25505u, 7201u, u_input.b), false, Struct_1(vec2<u32>(u_input.b, 19146u), 2768f, true, true, true)), true), ~vec3<i32>(-1702i, -28971i, 2147483647i)), vec3<i32>(countOneBits(_wgslsmith_mult_i32(-81889i, firstTrailingBit(53413i))), firstLeadingBit(-51369i), _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(1i, 2147483647i, 8823i, 0i)), vec4<i32>(-38549i, select(0i, -34726i, true), reverseBits(24479i), func_3(Struct_2(-2147483647i, Struct_1(vec2<u32>(4294967295u, 139753u), 907f, false, true, false), vec4<u32>(1127u, 0u, u_input.b, u_input.a), false, Struct_1(vec2<u32>(1u, u_input.b), -1113f, false, true, true)), Struct_2(0i, Struct_1(vec2<u32>(0u, 11280u), -1031f, false, false, false), vec4<u32>(72869u, u_input.b, 46686u, u_input.a), true, Struct_1(vec2<u32>(4294967295u, 65841u), 1247f, false, true, true)), true).x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-971f)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = arg_1.b > _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1129f - arg_1.b))) + arg_1.b);
    let var_1 = arg_1;
    var var_2 = Struct_2(_wgslsmith_mult_i32(func_3(Struct_2(-16950i, Struct_1(vec2<u32>(50694u, 1u), -1126f, var_1.d, true, true), ~vec4<u32>(var_1.a.x, 5262u, 24446u, 74459u), any(vec4<bool>(true, arg_0, true, false)), arg_1), Struct_2(2376i, Struct_1(var_1.a, 632f, false, arg_1.d, false), vec4<u32>(var_1.a.x, 18261u, arg_1.a.x, var_1.a.x), any(vec2<bool>(true, var_1.d)), Struct_1(vec2<u32>(49844u, u_input.b), 206f, arg_0, var_1.e, arg_0)), !(!arg_1.c)).x, countOneBits(~(-1i)) << (abs(_wgslsmith_sub_u32(var_1.a.x, arg_1.a.x)) % 32u)), Struct_1(countOneBits(_wgslsmith_mult_vec2_u32(var_1.a, vec2<u32>(arg_1.a.x, arg_1.a.x))), var_1.b, ~_wgslsmith_div_u32(var_1.a.x, u_input.a) < ((18776u | arg_1.a.x) >> (arg_1.a.x % 32u)), select(true, true, any(!vec4<bool>(false, true, arg_1.e, true))), abs(i32(-1i) * -1i) >= _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 68962i, -72893i), vec3<i32>(-29619i, 0i, -13869i)), ~(-9326i))), _wgslsmith_sub_vec4_u32(~max(~vec4<u32>(arg_1.a.x, 28267u, 8177u, var_1.a.x), vec4<u32>(u_input.b, arg_1.a.x, u_input.b, 0u)), vec4<u32>(u_input.a, ~u_input.a, max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 25626u, 0u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 85440u, var_1.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, arg_1.a.x), vec3<u32>(u_input.a, 0u, u_input.a))), var_1.a.x)), true, var_1);
    var var_3 = arg_1.b;
    var var_4 = vec4<bool>(!any(select(select(vec4<bool>(var_2.e.c, arg_1.e, false, true), vec4<bool>(var_2.d, true, false, var_1.c), var_2.d), select(vec4<bool>(true, false, arg_1.e, true), vec4<bool>(var_1.e, arg_1.d, true, arg_0), arg_1.c), vec4<bool>(arg_0, arg_0, var_1.d, true))), true, true, !any(select(!vec4<bool>(var_1.d, true, var_2.e.c, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(307f, 1575f))))))));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(-815f < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -163f))), _wgslsmith_f_op_f32(func_2()))), Struct_1(vec2<u32>(~_wgslsmith_mult_u32(u_input.a, 77818u), abs(4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f) - _wgslsmith_f_op_f32(911f - 453f)), true, true, true)));
    let var_1 = max(max(vec2<i32>(-12569i, 2147483647i) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<i32>(-33010i << (u_input.a % 32u), 1i)), ~(vec2<i32>(-1i) * -vec2<i32>(0i, -29411i))) ^ abs(~(-vec2<i32>(1i, 1i)));
    var var_2 = u_input.a;
    var_2 = 9450u;
    var_2 = 30543u;
    return vec3<i32>(~(~(-10597i) ^ _wgslsmith_div_i32(var_1.x, var_1.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.x, var_1.x, 2147483647i) >> (~vec4<u32>(u_input.b, 52232u, u_input.a, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x) | (vec4<i32>(var_1.x, 43415i, 30200i, -2147483647i) << (vec4<u32>(4294967295u, u_input.b, 1u, 1u) % vec4<u32>(32u)))), -10156i);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_1(~(~select(vec2<u32>(u_input.b, 73014u), select(vec2<u32>(u_input.b, u_input.a), vec2<u32>(1u, u_input.b), vec2<bool>(false, false)), all(arg_0.yww))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2124f, _wgslsmith_f_op_f32(f32(-1f) * -1757f))), true, arg_0.x, !(true | !(arg_0.x | false)));
    let var_1 = Struct_2((2147483647i ^ -max(32356i, arg_1.x)) >> ((~(~22640u) >> (1u % 32u)) % 32u), var_0, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(max(26354u, 1u), _wgslsmith_div_u32(70559u, u_input.b), u_input.a, 0u), vec4<u32>(63334u, 1u, 0u >> (var_0.a.x % 32u), u_input.b), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, 63595u, var_0.a.x, 1u), vec4<u32>(0u, 33118u, u_input.a, var_0.a.x)), ~vec4<u32>(580u, var_0.a.x, u_input.b, var_0.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 0u, var_0.a.x, var_0.a.x), vec4<u32>(41092u, u_input.a, 4294967295u, 29067u)))), arg_0.x, var_0);
    let var_2 = !(!select(!(!arg_0.xwx), select(arg_0.xzz, vec3<bool>(var_1.b.c, true, var_0.e), !arg_0.yyz), arg_0.xww));
    var var_3 = abs(var_1.c);
    var var_4 = abs(_wgslsmith_div_u32(var_0.a.x, _wgslsmith_add_u32(1u, var_1.b.a.x) << (1u % 32u)));
    return var_1.e.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(81009u | u_input.b);
    var var_1 = firstLeadingBit(-45899i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec4<bool>(true, true, true, true), func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-735f)))))));
    var var_3 = all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(all(vec3<bool>(false, true, false)), all(vec3<bool>(true, true, false))), all(vec4<bool>(true, true, true, true))));
    var_0 = u_input.a;
    let var_4 = Struct_1(vec2<u32>(46721u, 1u), 1258f, !any(vec2<bool>(true, true)), true, select(true, 9703u <= u_input.b, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.b, var_2, var_4.b), vec3<f32>(var_2, var_2, 1104f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, var_2, var_4.b)))) + vec3<f32>(_wgslsmith_f_op_f32(-1062f * var_2), var_4.b, _wgslsmith_f_op_f32(select(var_4.b, var_2, var_4.c)))))), vec3<u32>(var_4.a.x, abs(1u), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(752f, -1546f)))))), _wgslsmith_f_op_f32(-var_2));
}

