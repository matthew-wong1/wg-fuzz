struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1145f, 759f)), -914f, -454f) * _wgslsmith_f_op_vec3_f32(-arg_0.b)), max(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 80879u), u_input.a.wy), ~(1u << (_wgslsmith_div_u32(0u, u_input.a.x) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-681f, 343f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d, _wgslsmith_f_op_f32(arg_0.d * arg_0.b.x))))), ~vec4<i32>(arg_0.e.x, ~0i, 29985i, select(17567i << (u_input.a.x % 32u), 1i, true)));
    let var_1 = any(select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), true)));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1131f, -1679f, arg_0.b.x, 522f)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, 214f, var_0.d, arg_0.d), vec4<f32>(-713f, -234f, 178f, 1652f))))), vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d - 1095f), _wgslsmith_f_op_f32(-374f - var_0.d))), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-171f + _wgslsmith_f_op_f32(arg_0.b.x * -183f))), abs(arg_0.e.x & 1i) == -35145i)));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.b.yy)));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec4<i32>(-1i, -10905i, -1i, 2147483647i), vec3<f32>(-239f, 625f, 1449f), 38025u, 367f, vec4<i32>(1i, -16099i, -24229i, 9624i)))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-937f, 716f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(989f, -724f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(763f))))), !select(vec2<bool>(true, true), vec2<bool>(false, false), true))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1131f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), 553f, all(vec3<bool>(false, false, true))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1291f, -1401f), _wgslsmith_f_op_f32(f32(-1f) * -996f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(196f, 1000f), vec2<f32>(-1036f, 849f)))))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1095f - _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1751f, _wgslsmith_f_op_f32(f32(-1f) * -120f)) + 467f)));
    var var_2 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), true), select(vec3<bool>(var_1.x >= var_0.x, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(true, true, true)), !select(vec3<bool>(all(vec3<bool>(true, true, false)), true, all(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), true), !vec3<bool>(!all(vec4<bool>(false, false, true, true)), false, ~u_input.b.x > 1u));
    var_2 = !(!(!(!select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, true, var_2.x)))));
    let var_3 = false;
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, vec3<f32>(-553f, _wgslsmith_f_op_f32(func_2()), -885f), min(u_input.b.x, 4294967295u) | ~reverseBits(_wgslsmith_mult_u32(u_input.b.x, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f - arg_0.b.x)) * arg_0.d)), vec4<i32>(-arg_0.e.x, _wgslsmith_add_i32(arg_0.e.x, 1i) | countOneBits(-19614i), firstLeadingBit(~arg_0.a.x) << (4294967295u % 32u), arg_0.e.x));
    let var_1 = arg_0;
    var var_2 = var_1;
    let var_3 = !((-(arg_0.e.x ^ var_1.e.x) > (var_1.e.x >> (var_1.c % 32u))) || false);
    var_2 = arg_0;
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: f32) -> i32 {
    var var_0 = arg_1;
    var_0 = Struct_1(-_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(59731i, -17551i, 1i, 2147483647i), vec4<i32>(-44428i, 2147483647i, var_0.a.x, 23041i) << (vec4<u32>(58575u, 1u, 4294967295u, arg_1.c) % vec4<u32>(32u))), func_1(Struct_1(arg_1.a, arg_1.b, 105416u, arg_1.b.x, vec4<i32>(1i, -2147483647i, -2147483647i, arg_2.x)), u_input.a.xx ^ vec2<u32>(var_0.c, u_input.b.x)).e), arg_1.b, u_input.b.x, _wgslsmith_f_op_f32(-func_1(arg_1, countOneBits(vec2<u32>(arg_1.c, 38169u) ^ u_input.a.xx)).b.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, 1i, func_1(func_1(Struct_1(arg_1.a, var_0.b, 38703u, arg_1.d, arg_1.a), vec2<u32>(32349u, var_0.c)), ~vec2<u32>(arg_1.c, 42848u)).a.x, 1i), vec4<i32>(_wgslsmith_div_i32(-var_0.e.x, 1i), ~238i, 0i, -1i)));
    var var_1 = arg_1;
    var_1 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(var_1.a.wyz, vec3<i32>(-1i, var_0.e.x, var_1.e.x)), var_1.e.x), func_1(func_1(func_1(Struct_1(var_0.a, arg_1.b, 1u, arg_1.b.x, var_1.e), u_input.b), firstTrailingBit(vec2<u32>(var_1.c, u_input.a.x))), ~(~vec2<u32>(1u, arg_1.c))).a.x, arg_2.x, countOneBits(-1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(295f, 340f, arg_3) - _wgslsmith_f_op_vec3_f32(floor(arg_1.b))), firstTrailingBit(_wgslsmith_mod_u32(~var_1.c, var_1.c)) | countOneBits(4294967295u), func_1(arg_1, ~reverseBits(firstTrailingBit(vec2<u32>(u_input.b.x, 4294967295u)))).b.x, var_0.a | -arg_1.e);
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, u_input.b.x, ~_wgslsmith_add_u32(var_0.c, u_input.a.x)), countOneBits(u_input.a.wxz));
    return reverseBits(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec2<bool>(true, _wgslsmith_div_f32(1921f, -676f) <= _wgslsmith_f_op_f32(step(769f, 391f))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), any(vec3<bool>(false, false, false))), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(41096i, func_4(true, func_1(Struct_1(vec4<i32>(-13608i, -2147483647i, 10230i, -80931i), vec3<f32>(-1778f, -754f, 886f), 108756u, -1116f, vec4<i32>(1i, 1i, 814i, -7262i)), ~u_input.a.wz), vec2<i32>(i32(-1i) * -27211i, ~2147483647i), -1000f)), 25177u);
}

