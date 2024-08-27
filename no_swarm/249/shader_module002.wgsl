struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32>;

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: u32 = 86507u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_1(global2.a, -296f, all(!vec4<bool>(global2.c, false, global2.a.x, 4294967295u <= global1.x)));
    var var_1 = Struct_1(!(!var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-464f, 279f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(589f + -550f)))), (_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), 9265i) ^ 1i) >= u_input.b);
    var var_2 = firstLeadingBit(select(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<i32>(u_input.b, 18903i, 2147483647i, u_input.b)), -vec4<i32>(-9376i, -13756i, u_input.b, -5597i)), firstLeadingBit(~vec4<i32>(u_input.b, u_input.b, 1i, 1i))), u_input.b, ~1u < u_input.c));
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_1(global2.a, 556f, global2.a.x);
    var var_1 = ~arg_2;
    var var_2 = global2.a;
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(48338u << (abs(global1.x) % 32u), ~0u, _wgslsmith_add_u32(1u, 1u), func_3(global1.x)), ~(~vec4<u32>(u_input.c, global1.x, 1u, 4294967295u) << (vec4<u32>(1u, _wgslsmith_clamp_u32(4294967295u, global1.x, u_input.a.x), _wgslsmith_mult_u32(global1.x, 40906u), ~79426u) % vec4<u32>(32u))));
    var var_4 = ~vec3<u32>(6816u, firstLeadingBit(60709u), global1.x) << (~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a | global1.zww, u_input.a & vec3<u32>(u_input.c, global1.x, u_input.a.x)), global1.yxx) % vec3<u32>(32u));
    return vec3<f32>(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(var_0.b * global2.b)) - _wgslsmith_f_op_f32(f32(-1f) * -1401f)), _wgslsmith_f_op_f32(f32(-1f) * -354f));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1956f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * 1210f)), _wgslsmith_f_op_f32(-global2.b), -2247f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b, global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), 1f, global2.b)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), 729f, _wgslsmith_f_op_f32(max(-1283f, -190f)), _wgslsmith_f_op_f32(arg_1.x - -381f)))))));
    return vec4<bool>(!all(global2.a), true, global2.a.x, global2.a.x);
}

fn func_1() -> f32 {
    var var_0 = func_4((vec2<i32>(-1i, 0i) & select(vec2<i32>(1i, -51803i), -vec2<i32>(23248i, u_input.b), global2.a)) << (global1.wz % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(func_2(reverseBits(0i), _wgslsmith_clamp_vec3_i32((vec3<i32>(u_input.b, 2147483647i, u_input.b) << (vec3<u32>(u_input.c, 4294967295u, u_input.a.x) % vec3<u32>(32u))) | (vec3<i32>(u_input.b, -2147483647i, u_input.b) | vec3<i32>(u_input.b, u_input.b, -2147483647i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 929i, u_input.b), vec3<i32>(-33710i, u_input.b, u_input.b)), countOneBits(vec3<i32>(u_input.b, u_input.b, -1i))), firstTrailingBit(reverseBits(vec4<i32>(-38429i, u_input.b, u_input.b, u_input.b))) ^ _wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -1i, 32715i)), min(vec4<i32>(-20176i, -1i, u_input.b, u_input.b), vec4<i32>(19702i, 0i, u_input.b, u_input.b))))));
    var var_1 = Struct_1(vec2<bool>(true, func_4(~(-vec2<i32>(u_input.b, -2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-972f, -704f, global2.b) * vec3<f32>(global2.b, global2.b, 1073f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.b, 879f, global2.b))))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2.b)), _wgslsmith_f_op_f32(-global2.b))))), global2.b >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(804f - -432f)) - _wgslsmith_f_op_f32(-global2.b)));
    global1 = ~reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d, global1.x, 4294967295u), vec4<u32>(0u, u_input.c, 68627u, 54948u)), vec4<u32>(u_input.a.x, global1.x, u_input.d, global1.x))) | (~_wgslsmith_add_vec4_u32(vec4<u32>(98450u, 24601u, u_input.c, u_input.a.x) >> (vec4<u32>(u_input.c, u_input.c, global1.x, 0u) % vec4<u32>(32u)), max(vec4<u32>(u_input.a.x, global1.x, 0u, 4998u), vec4<u32>(19427u, 0u, u_input.a.x, global1.x))) ^ ~vec4<u32>(u_input.a.x << (15531u % 32u), 52156u, 81703u << (u_input.d % 32u), _wgslsmith_sub_u32(465u, 0u)));
    var_0 = select(func_4(vec2<i32>(reverseBits(abs(u_input.b)), -12998i), vec3<f32>(global2.b, -1557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b, -660f))))), vec4<bool>(global2.c || true, var_0.x & any(!var_0.ywz), true, !(true && (var_1.b < -107f))), select(vec4<bool>(true, all(!var_0.yx), true, true | any(vec3<bool>(var_0.x, false, global2.c))), vec4<bool>(select(true, var_0.x, true), !any(vec4<bool>(false, false, global2.c, var_1.c)), _wgslsmith_f_op_f32(-global2.b) < _wgslsmith_f_op_f32(step(-836f, -631f)), _wgslsmith_mult_i32(u_input.b, 1i) <= u_input.b), !select(vec4<bool>(true, true, var_0.x, var_1.c), vec4<bool>(var_0.x, var_0.x, var_0.x, true), func_4(vec2<i32>(1i, 0i), vec3<f32>(global2.b, 693f, 1000f)))));
    let var_2 = !(!(~(~global1.x) > 17500u));
    return -1052f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = firstTrailingBit(~u_input.a.x);
    var var_0 = vec4<bool>(global2.a.x, !global2.a.x, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2.b)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(step(-1214f, -1000f)), !global2.a.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.b, -259f)) + _wgslsmith_f_op_f32(-global2.b))));
    var var_1 = Struct_1(select(!select(func_4(vec2<i32>(u_input.b, 0i), vec3<f32>(-187f, -797f, global2.b)).zy, vec2<bool>(false, false), true), global2.a, func_4(max(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)), select(vec2<i32>(4961i, u_input.b), vec2<i32>(-2147483647i, -948i), false)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.b, -1287f, global2.b), vec3<f32>(global2.b, 2235f, global2.b))).yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b))), func_4(~abs(vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(1i, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, 230f, 1476f), vec3<f32>(global2.b, global2.b, global2.b)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.b, global2.b) + vec3<f32>(global2.b, global2.b, -704f)), _wgslsmith_f_op_vec3_f32(func_2(u_input.b, vec3<i32>(u_input.b, u_input.b, u_input.b), vec4<i32>(0i, u_input.b, 3436i, -19689i))))))).x);
    global2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-103f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) * _wgslsmith_f_op_f32(var_1.b + global2.b)))) + var_1.b), false);
    var var_2 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(global1.x, global1.x, 4294967295u, 4294967295u)), vec4<u32>(37445u, abs(u_input.c), 39359u, u_input.c << (global1.x % 32u))), ((vec4<u32>(21686u, 0u, 14465u, 4294967295u) ^ vec4<u32>(u_input.d, 4294967295u, 64114u, 5493u)) & vec4<u32>(u_input.d, 4294967295u, global1.x, u_input.d)) >> ((~vec4<u32>(56131u, 74978u, 59402u, u_input.a.x) & (vec4<u32>(global1.x, u_input.d, 19443u, u_input.d) << (vec4<u32>(32145u, 3276u, 1u, global1.x) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_3 = Struct_1(select(!(!var_0.yy), select(vec2<bool>(true, true), !vec2<bool>(false, var_1.a.x), select(vec2<bool>(global2.a.x, false), !global2.a, true)), vec2<bool>(global2.a.x, func_4(vec2<i32>(0i, u_input.b), vec3<f32>(var_1.b, var_1.b, global2.b)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + _wgslsmith_div_f32(1161f, global2.b)) - var_1.b), false);
    let var_4 = !select(vec4<bool>(true, u_input.b < _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(38080i, u_input.b, u_input.b)), var_0.x | (var_2.x <= 20243u), any(var_1.a) & var_3.c), func_4(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-5407i, 0i), vec2<i32>(18717i, 25312i)), vec3<f32>(147f, _wgslsmith_f_op_f32(var_1.b + var_1.b), -1313f)), vec4<bool>(var_3.c | (global2.b > var_3.b), !all(var_0.xxx), true, var_1.c && (var_3.a.x || global2.a.x)));
    let var_5 = Struct_1(select(vec2<bool>(~global1.x <= 1u, false), func_4(vec2<i32>(_wgslsmith_sub_i32(u_input.b, 24456i), u_input.b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -198f, 1058f) * vec3<f32>(-567f, var_1.b, var_1.b)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(818f, global2.b, var_1.b), vec3<f32>(var_1.b, -445f, global2.b)))))).yy, !(!(var_2.x < 73170u))), _wgslsmith_f_op_f32(var_3.b * var_3.b), !(true == func_4(vec2<i32>(-1i, u_input.b), vec3<f32>(-1000f, 1770f, -516f)).x));
    var var_6 = _wgslsmith_f_op_f32(-var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 1i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -2147483647i))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, 43615i)) >> (vec3<u32>(var_2.x, u_input.d, var_2.x) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b, select(0i, u_input.b, false))), abs(select(vec3<i32>(abs(u_input.b), 2147483647i, u_input.b >> (u_input.c % 32u)), ~vec3<i32>(u_input.b, -23888i, -27294i) | _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.b, -52604i), vec3<i32>(u_input.b, 0i, -59848i)), vec3<bool>(!var_1.c, all(vec4<bool>(true, global2.c, true, var_5.c)), !var_3.c))));
}

