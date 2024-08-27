struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<i32>;

var<private> global2: i32 = -43046i;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    global1 = arg_1.c;
    let var_0 = arg_1;
    global2 = -2147483647i;
    let var_1 = !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true))));
    global1 = firstTrailingBit(-max(vec4<i32>(arg_1.c.x, 14793i, -1i, 43715i) | arg_1.c, (vec4<i32>(arg_1.c.x, 2147483647i, var_0.c.x, arg_1.c.x) ^ var_0.c) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(29589u, 4294967295u, global0.x, 38517u), vec4<u32>(global0.x, 0u, arg_1.d, 1u), vec4<u32>(arg_1.d, var_0.d, 1u, var_0.d)) % vec4<u32>(32u))));
    return -1119f;
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = 849f;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(911f * -2153f), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0, -828f)), -705f, true))) * arg_0.b), _wgslsmith_mult_vec4_i32((_wgslsmith_clamp_vec4_i32(arg_0.c, arg_0.c, arg_0.c) | max(arg_0.c, vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, u_input.b))) | vec4<i32>(global1.x, 1i, u_input.a.x, global1.x << (1u % 32u)), vec4<i32>(1i, u_input.b, -29931i, arg_0.c.x)), firstTrailingBit(~_wgslsmith_clamp_u32(global0.x, 18231u, 13585u) | global0.x));
    let var_2 = _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(36310u, 18968u, global0.x) | (arg_0.d << (0u % 32u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.x, 4294967295u), 0u))) | (~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, global0.x, var_1.d), vec3<u32>(global0.x, 64497u, 15746u)) & abs(var_1.d)) << ((abs(firstTrailingBit(var_1.d)) >> (arg_0.d % 32u)) % 32u));
    global0 = ~(abs(~(vec2<u32>(var_2, var_2) << (vec2<u32>(0u, var_2) % vec2<u32>(32u)))) | (reverseBits(~vec2<u32>(global0.x, 34935u)) ^ countOneBits(abs(vec2<u32>(var_1.d, global0.x)))));
    let var_3 = vec2<bool>(!any(vec3<bool>(true, true, true)), all(vec4<bool>(true, !(4294967295u < var_1.d), all(vec2<bool>(true, false)) == true, abs(var_1.c.x) != 1i)));
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - -325f), 364f)), var_0);
}

fn func_2() -> f32 {
    global0 = ~(~(vec2<u32>(global0.x, global0.x & 1u) & select(min(vec2<u32>(global0.x, global0.x), vec2<u32>(1u, global0.x)), ~vec2<u32>(global0.x, global0.x), false)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(253f, 515f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2522f)), vec2<bool>(true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-950f, 1000f, true)) * -240f)) + 928f), ~select(~vec4<i32>(u_input.a.x, -2147483647i, -1150i, global1.x), -vec4<i32>(-11339i, -10191i, -8822i, u_input.b), vec4<bool>(false, true, true, true)) ^ _wgslsmith_mult_vec4_i32(~(vec4<i32>(38290i, global1.x, global1.x, 7180i) ^ vec4<i32>(51577i, u_input.b, global1.x, global1.x)), vec4<i32>(-1i, 1i, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.x, u_input.b, global1.x), vec4<i32>(41433i, u_input.a.x, global1.x, u_input.b)))), ~global0.x & max(global0.x, global0.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) - _wgslsmith_f_op_vec2_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.a.x) * 442f), vec4<i32>(-var_0.c.x, ~global1.x, var_0.c.x, abs(1i)), var_0.d))), _wgslsmith_f_op_f32(f32(-1f) * -1999f), ~(-_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(var_0.c.x, var_0.c.x, global1.x, u_input.b)), -var_0.c)), var_0.d);
    global2 = -1i;
    var var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(func_3(var_1)).x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.x;
    let var_0 = -(~0i);
    var var_1 = countOneBits(_wgslsmith_mod_i32(var_0, ~var_0));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(1142f, -1073f, 813f, 545f), Struct_1(vec2<f32>(-624f, 890f), 1531f, vec4<i32>(global1.x, var_0, 23360i, u_input.b), global0.x))), -556f), _wgslsmith_f_op_f32(f32(-1f) * -1527f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(332f)), _wgslsmith_f_op_f32(f32(-1f) * -1446f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-859f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(func_2()))))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(-19337i, global1.x, 2147483647i, global1.x) ^ vec4<i32>(-4452i, 0i, -1i, u_input.b), vec4<i32>(var_0, 2147483647i, -2147483647i, 18842i) | vec4<i32>(global1.x, var_0, u_input.a.x, u_input.b)), select(-vec4<i32>(var_0, 8793i, var_0, var_0), firstLeadingBit(vec4<i32>(-1i, var_0, u_input.a.x, -2147483647i)), true)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, var_0, var_0), vec4<i32>(-22390i, u_input.b, u_input.b, 24266i)) & -max(vec4<i32>(global1.x, global1.x, global1.x, -9043i), vec4<i32>(global1.x, global1.x, u_input.a.x, 2147483647i))), 57882u);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(629f, var_2.a.x) * var_2.a)) + var_2.a), _wgslsmith_f_op_f32(min(-1066f, -1000f)), var_2.c, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(5039u, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a, select(var_3.c.yxz ^ u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global1.x, -45613i), vec3<i32>(u_input.a.x, u_input.b, 37544i)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true))), _wgslsmith_mult_i32(-10124i, -1i)), ~abs(-1i) ^ -var_2.c.x, var_3.c.ywx | var_3.c.zzy, firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d, var_3.d, var_3.d), vec3<u32>(var_2.d, 33895u, 0u), vec3<u32>(global0.x, var_2.d, 82162u) | vec3<u32>(var_3.d, var_3.d, global0.x)))));
}

