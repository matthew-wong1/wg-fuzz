struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = any(select(select(!vec3<bool>(arg_0.x, true, true), !select(vec3<bool>(arg_1.a.x, true, arg_0.x), vec3<bool>(arg_1.a.x, true, true), arg_0), !select(arg_0, vec3<bool>(true, false, true), false)), arg_0, vec3<bool>(true, !select(true, arg_1.a.x, arg_1.a.x), !arg_0.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(700f - 1113f)), _wgslsmith_f_op_f32(min(arg_1.b.x, -891f)))))), arg_1.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1896f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -224f), arg_1.b.x))), -1033f);
    var var_2 = Struct_4(arg_1, arg_1, !vec3<bool>(!(var_1.x < -1188f), false, arg_1.a.x), arg_1.d, Struct_2(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, arg_1.c, arg_1.c), u_input.b.yzw) >> (u_input.a.x % 32u), 17755u, var_0), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1832f, -680f, arg_1.b.x, -933f)) - var_1))), -2409f, arg_1, all(vec4<bool>(false, true, all(vec2<bool>(arg_1.a.x, true)), arg_0.x && arg_0.x))));
    var var_3 = ~abs(vec3<i32>(u_input.c, _wgslsmith_mult_i32(-18592i, 0i), 1i)) | (vec3<i32>(-(~(-1i)), -13632i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, -23907i), abs(-2147483647i))) | (~vec3<i32>(u_input.c, u_input.c, u_input.c) << (~_wgslsmith_div_vec3_u32(u_input.b.yxz, u_input.b.xyw) % vec3<u32>(32u))));
    var_3 = max(abs((~vec3<i32>(u_input.c, -21593i, var_3.x) | (vec3<i32>(var_3.x, -1i, 19176i) << (u_input.b.yzy % vec3<u32>(32u)))) << (max(~vec3<u32>(29000u, 0u, 49400u), ~u_input.b.ywx) % vec3<u32>(32u))), reverseBits(countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(-1333i, -46035i, u_input.c), vec3<i32>(-1284i, var_3.x, u_input.c)))));
    return ~_wgslsmith_add_vec4_i32(~(firstLeadingBit(vec4<i32>(0i, -25352i, 9568i, u_input.c)) & vec4<i32>(u_input.c, var_3.x, -28290i, var_3.x)), vec4<i32>(var_3.x | 2147483647i, 23439i, min(1i, u_input.c), -1i) << (_wgslsmith_add_vec4_u32(~u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b)) % vec4<u32>(32u)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.c, arg_0, arg_0, -1i)), func_3(vec3<bool>(false, true, false), Struct_1(vec3<bool>(true, false, false), vec3<f32>(139f, 1343f, -1312f), 4294967295u, u_input.b.ww)) & -vec4<i32>(u_input.c, u_input.c, 4439i, -14650i)), ~_wgslsmith_sub_vec4_i32(max(vec4<i32>(23406i, 2147483647i, -14743i, u_input.c), vec4<i32>(30225i, -13798i, arg_0, -4094i)), vec4<i32>(arg_0, arg_0, 1i, -1i) << (vec4<u32>(35840u, u_input.b.x, u_input.b.x, 16088u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(~vec4<i32>(-72217i, 22923i, -231i, u_input.c), abs(vec4<i32>(15876i, u_input.c, u_input.c, 2147483647i))));
    var_0 = vec4<i32>(-var_0.x, -_wgslsmith_mult_i32(var_0.x, -min(arg_0, 43412i)), 1i & var_0.x, _wgslsmith_mod_i32(-(abs(u_input.c) | ~2147483647i), _wgslsmith_sub_i32(11632i, countOneBits(max(arg_0, arg_0)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-802f, 1613f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(838f - -1456f))), 450f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1246f, 1743f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-733f, -428f), vec2<f32>(-510f, 1715f), false)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1980f, -171f) - vec2<f32>(734f, 1469f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1347f + -2324f), _wgslsmith_f_op_f32(2457f + 1566f)), vec2<f32>(_wgslsmith_f_op_f32(384f + -1222f), _wgslsmith_f_op_f32(-619f + -986f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1);
    var var_3 = all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)))) && false;
    return Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1052f * -490f), -1000f)), 444f, var_1.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -436f, var_2.x)), vec3<f32>(var_2.x, var_1.x, var_1.x), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(892f, var_1.x, 1399f), vec3<f32>(var_1.x, var_2.x, var_1.x), vec3<bool>(true, false, false))) - vec3<f32>(var_2.x, 207f, 134f))))), ~u_input.a.x, u_input.b.zx >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_4(func_2(arg_0), func_2(-8897i), select(!vec3<bool>(true, 30200u >= u_input.b.x, 255i <= arg_0), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), all(vec2<bool>(true, true))), ~(~u_input.b.zw), Struct_2(91013u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(927f, 578f, -792f, 2025f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1178f, -1015f, -1006f, -479f), vec4<f32>(913f, 1309f, 288f, -731f)))))), _wgslsmith_f_op_f32(1f * -537f), func_2(-u_input.c), true));
    let var_1 = Struct_2(_wgslsmith_sub_u32(~var_0.e.d.c, 21992u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.d.b.x, 1694f, _wgslsmith_f_op_f32(var_0.b.b.x + var_0.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.b.x)) - _wgslsmith_f_op_f32(var_0.e.c - -1497f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_f_op_f32(var_0.b.b.x + -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.x + var_0.b.b.x) + _wgslsmith_f_op_f32(640f * -276f)), 1415f)), var_0.a, false);
    var var_2 = _wgslsmith_f_op_f32(floor(var_1.b.x));
    var var_3 = func_2(-(~(-9381i)));
    let var_4 = var_0.d.x;
    return func_2(~(~(-arg_0)) ^ u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(~u_input.c), Struct_1(select(vec3<bool>(true, true, u_input.a.x > u_input.a.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-func_2(-2147483647i).b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(200f, -299f, 945f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(588f, -1000f, -742f))), !func_1(2147483647i).a)), 59547u, ~u_input.b.zw), !vec3<bool>(select(25784u <= u_input.b.x, u_input.c > 0i, true), 5280i >= (u_input.c >> (1u % 32u)), true), func_2(_wgslsmith_div_i32(u_input.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-702i, u_input.c, u_input.c), vec3<i32>(1i, u_input.c, u_input.c)), ~u_input.c))).d, Struct_2(firstLeadingBit(countOneBits(4294967295u) >> (u_input.b.x % 32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(floor(-626f)), -698f, _wgslsmith_f_op_f32(f32(-1f) * -536f), -1000f))), 424f, Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(552f, 1000f, 415f)))), 48303u, u_input.a ^ abs(vec2<u32>(0u, u_input.b.x))), true));
    var var_1 = func_2(abs(1i)).b.x;
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(30113i, _wgslsmith_clamp_i32(min(u_input.c, -22360i), 1i, u_input.c & u_input.c) << (~u_input.b.x % 32u)), -(vec2<i32>(_wgslsmith_div_i32(-2147483647i, u_input.c), -u_input.c) >> (vec2<u32>(~u_input.a.x, _wgslsmith_clamp_u32(var_0.d.x, 11219u, u_input.a.x)) % vec2<u32>(32u))));
    let var_3 = var_0.b.a;
    var_1 = _wgslsmith_f_op_f32(var_0.b.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.e.b.x, -263f)), _wgslsmith_div_f32(-1952f, var_0.e.b.x))), -891f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e.b)))), countOneBits(_wgslsmith_sub_i32(var_2, -u_input.c)), vec2<i32>(i32(-1i) * -func_3(var_0.a.a, var_0.b).x, u_input.c));
}

