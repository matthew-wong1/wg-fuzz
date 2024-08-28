struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

var<private> global1: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    return -((reverseBits(abs(-103867i)) >> (u_input.a % 32u)) | countOneBits(51170i));
}

fn func_2() -> bool {
    var var_0 = countOneBits(-abs(vec2<i32>(1i, 1i))) ^ _wgslsmith_mod_vec2_i32(-select(firstTrailingBit(vec2<i32>(2147483647i, -1i)), ~vec2<i32>(-28917i, 1907i), true), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, 39092i, 2147483647i), 1i, -9309i), _wgslsmith_add_i32(1i, 1i)));
    let var_1 = func_3();
    var_0 = vec2<i32>(2147483647i, firstTrailingBit(abs(_wgslsmith_div_i32(-1i, var_0.x | -61778i))));
    global0 = array<vec2<u32>, 32>();
    let var_2 = vec3<u32>(35447u, ~u_input.a, _wgslsmith_add_u32(u_input.a, 1u)) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, ~u_input.a), abs(~vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), countOneBits(vec3<u32>(72982u, 4294967295u, u_input.a))));
    return true;
}

fn func_4(arg_0: u32, arg_1: bool) -> vec3<f32> {
    let var_0 = ~(~(vec3<u32>(1u, 4294967295u, _wgslsmith_div_u32(u_input.a, u_input.a)) ^ _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(14035u, u_input.a, u_input.a)), ~vec3<u32>(13085u, 4294967295u, 51500u))));
    let var_1 = -1i;
    global0 = array<vec2<u32>, 32>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-482f, -620f, -393f)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(floor(-1587f)), _wgslsmith_f_op_f32(f32(-1f) * -333f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1583f, -729f))))), select(select(global1[_wgslsmith_index_u32(firstTrailingBit(91250u), 25u)], select(vec2<bool>(true, arg_1), global1[_wgslsmith_index_u32(0u, 25u)], arg_1), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(false, true))), any(vec4<bool>(arg_1, any(vec3<bool>(false, false, arg_1)), arg_1, func_2())));
    var var_3 = var_2.b;
    return _wgslsmith_f_op_vec3_f32(-var_2.a);
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<bool>, 25>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(891f, 169f, -753f) * vec3<f32>(424f, 1261f, -597f))) - vec3<f32>(-2174f, -615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-826f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-434f, 1792f, _wgslsmith_f_op_f32(f32(-1f) * -1393f)), _wgslsmith_f_op_vec3_f32(func_4(firstLeadingBit(15817u), func_2()))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2546f, -814f, 132f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -242f, 281f)))))));
    var var_1 = Struct_4(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-893f, var_0.x, -165f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1194f, -359f, var_0.x), vec3<f32>(-837f, var_0.x, -873f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2534f, 525f, var_0.x))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-394f + 647f), var_0.x, var_0.x), vec2<bool>(func_2(), all(global1[_wgslsmith_index_u32(u_input.a, 25u)]))), all(vec3<bool>(any(vec2<bool>(false, false)), func_2(), true))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1571f, var_0.x)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(50770u, 4294967295u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), abs(vec2<u32>(u_input.a, u_input.a))), 25u)]), max(vec2<i32>(func_3(), _wgslsmith_div_i32(-21658i, 38070i)), vec2<i32>(-17384i, countOneBits(7017i))) & abs(vec2<i32>(_wgslsmith_sub_i32(-2396i, -20191i), i32(-1i) * -1i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1451f, 248f, var_0.x, 427f) * vec4<f32>(686f, var_0.x, var_0.x, 429f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -3073f, var_0.x, var_0.x))))))), abs(~(max(vec3<u32>(u_input.a, 28239u, u_input.a), vec3<u32>(u_input.a, u_input.a, 16722u)) ^ ~vec3<u32>(1u, 23878u, u_input.a))));
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    return var_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<bool>(true, true);
    var var_2 = (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a), 32u)] & _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(~u_input.a, 32u)], ~vec2<u32>(26475u, 1u)))) | ~(~select(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), firstTrailingBit(vec2<u32>(u_input.a, 0u)), true));
    var_2 = vec2<u32>(select(7023u, var_2.x, (_wgslsmith_f_op_f32(select(var_0.a.x, -661f, true)) < _wgslsmith_f_op_f32(abs(var_0.a.x))) & (_wgslsmith_f_op_f32(-var_0.a.x) <= _wgslsmith_f_op_f32(select(-2525f, 648f, var_0.b.x)))), u_input.a);
    var var_3 = Struct_4(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, var_0.a) - vec3<f32>(-311f, -1560f, var_0.a.x)), var_0.a), func_1(), var_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<f32>(var_0.a.x, 1354f, var_0.a.x)) + vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))), select(select(select(vec2<bool>(var_1.x, var_1.x), var_1, false), vec2<bool>(var_0.b.x, var_0.b.x), var_0.b.x), !var_0.b, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.x, u_input.a) >> ((659u & var_2.x) % 32u), 25u)])), vec2<i32>(-2147483647i, ~_wgslsmith_mult_i32(1i, 11601i)) | _wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, 4745i), vec2<i32>(-2147483647i, ~(-1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(42514i, 1i), vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -1814f, -1627f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 152f), vec4<f32>(var_0.a.x, -1631f, var_0.a.x, -538f))))))), ~(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.x, 1u, 1u), ~vec3<u32>(0u, 4294967295u, 1u), ~vec3<u32>(4294967295u, u_input.a, 4294967295u)) | vec3<u32>(19297u, ~84642u, ~49887u)));
    var var_4 = Struct_3(var_3.a, _wgslsmith_mod_vec2_i32(var_3.c, var_3.c), reverseBits(7867i), select(select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, false, false), vec3<bool>(var_3.a.c, var_3.a.c, var_0.b.x)), !select(vec3<bool>(var_0.b.x, true, var_1.x), vec3<bool>(true, var_0.b.x, var_3.a.b.b.x), var_1.x), var_1.x), vec3<bool>(true, (8544i < var_3.c.x) && select(var_3.a.b.b.x, var_3.a.c, var_1.x), !(var_3.b.b.x | var_0.b.x)), !(var_3.c.x <= 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.a.x * -312f) * _wgslsmith_f_op_f32(ceil(-1120f))))), abs(var_3.e), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, var_2.x) | vec4<u32>(34122u, var_3.e.x, 4294967295u, var_3.e.x), select(vec4<u32>(var_3.e.x, var_2.x, u_input.a, var_2.x), vec4<u32>(u_input.a, u_input.a, var_2.x, 1277u), var_1.x)) & vec4<u32>(~var_3.e.x, var_3.e.x, 0u, var_3.e.x)));
}

