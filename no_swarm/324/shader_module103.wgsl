struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<bool>) -> i32 {
    let var_0 = arg_3.x;
    let var_1 = u_input.b.zz;
    let var_2 = -2147483647i;
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    return _wgslsmith_dot_vec2_i32((~reverseBits(vec2<i32>(var_2, -2147483647i)) << (_wgslsmith_sub_vec2_u32(var_1, ~vec2<u32>(arg_0, 0u)) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, var_2) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(var_2, 48309i), vec2<i32>(var_2, var_2)), select(-vec2<i32>(-56007i, var_2), vec2<i32>(var_2, -31112i) & vec2<i32>(0i, -67381i), !var_0)), ~vec2<i32>(-2147483647i, _wgslsmith_mod_i32(var_2, var_2)) ^ _wgslsmith_sub_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(-1i, var_2)), -vec2<i32>(var_2, 47228i)));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    global0 = array<Struct_3, 19>();
    var var_0 = Struct_2(!(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), arg_0.c, true);
    var var_1 = false;
    let var_2 = firstLeadingBit(-(~(-var_0.b.c)));
    let var_3 = Struct_3(var_0.b, Struct_1(_wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(trunc(-1917f)), -var_2, _wgslsmith_f_op_vec4_f32(-var_0.b.d)), arg_0.c);
    return countOneBits(vec2<i32>(0i, 0i));
}

fn func_4(arg_0: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-987f * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(2056f)))), 1304f, _wgslsmith_div_f32(-156f, -512f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1227f, -883f, 1000f, 1526f), vec4<f32>(-1833f, 838f, -1020f, 492f), vec4<bool>(false, false, false, false))))))));
    let var_1 = all(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    return 666f;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<i32> {
    var var_0 = Struct_2(all(vec4<bool>(!(arg_0 && true), false, true | !arg_0, false)), arg_1, !arg_0);
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(trunc(var_0.b.b)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_1.c, min(1i & arg_1.c, arg_1.c)), firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_2, arg_2)), -func_2(4294967295u, _wgslsmith_f_op_vec3_f32(var_0.b.d.xyx * arg_1.d.yzw), _wgslsmith_f_op_f32(step(184f, 1031f)), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, true, false), var_0.a))), vec4<f32>(-1074f, _wgslsmith_f_op_f32(func_4(func_3(Struct_3(Struct_1(1000f, 298f, arg_2.x, vec4<f32>(arg_1.d.x, -1303f, -1188f, arg_1.d.x)), Struct_1(arg_1.b, 500f, 0i, arg_1.d), Struct_1(255f, 226f, 51291i, vec4<f32>(1436f, -1785f, var_0.b.d.x, arg_1.a)))))), _wgslsmith_f_op_f32(var_0.b.b * _wgslsmith_f_op_f32(f32(-1f) * -2157f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-915f, 960f, var_0.c))))));
    let var_3 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1313f)) * _wgslsmith_f_op_f32(sign(var_2.a))), var_0.b.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.b.d * vec4<f32>(979f, 347f, 208f, arg_1.b)))) - arg_1.d))));
    var var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(firstLeadingBit(u_input.b.x), ~0u, ~4294967295u, _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(25897u, u_input.b.x)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 48686u, 1u, u_input.a.x), vec4<u32>(u_input.b.x, 1u, 52188u, 4294967295u), vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(9891u, u_input.a.x, 33842u, u_input.b.x))), firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u ^ u_input.a.x), ~(~u_input.a.x), ~max(1u, u_input.a.x), ~1u >> (~u_input.a.x % 32u))));
    return arg_2.xy;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(737f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.b + arg_2.b.a))), 2147483647i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.d.x + arg_2.b.a) + _wgslsmith_f_op_f32(func_4(vec2<i32>(1i, -1i)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(arg_1)), _wgslsmith_div_f32(-354f, 1392f))), _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.d.x)))), arg_2.b, arg_2.b);
    let var_1 = _wgslsmith_div_vec4_i32(-(~vec4<i32>(2147483647i, -1i, 5357i, func_2(u_input.a.x, vec3<f32>(-103f, var_0.a.a, 1000f), arg_2.b.b, vec3<bool>(true, arg_2.a, true)))), max(vec4<i32>((arg_1.x ^ arg_1.x) | 1i, 1i, ~(-1344i), 43057i), ~max(~vec4<i32>(1i, 1i, 0i, -8696i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -32100i, var_0.a.c, -4675i), vec4<i32>(1607i, 0i, var_0.a.c, -1i)))));
    let var_2 = vec2<bool>(select(select(u_input.a.x != 1u, arg_2.a, any(vec2<bool>(true, arg_2.c))), arg_2.c, false) != arg_2.c, _wgslsmith_add_u32(_wgslsmith_clamp_u32(40434u, 51496u, _wgslsmith_mult_u32(4294967295u, 0u)), reverseBits(_wgslsmith_div_u32(33518u, u_input.b.x))) != reverseBits(u_input.b.x));
    global0 = array<Struct_3, 19>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1023f, var_0.a.a, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b.b, arg_2.b.a))))), 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.d) - var_0.a.d)));
    return Struct_2(!(!all(!vec2<bool>(arg_2.c, var_2.x))), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.d.x), -392f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) - _wgslsmith_f_op_f32(f32(-1f) * -1368f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)), -487f, all(vec4<bool>(true, true, arg_2.c, arg_2.c)) && false)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0.c.c, reverseBits(16467i)), 2i, 1i), arg_2.b.d), arg_0.x < ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 0u, 70544u, 1u), vec4<u32>(u_input.b.x, 5920u, arg_0.x, 1u) | vec4<u32>(arg_0.x, 4294967295u, u_input.b.x, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.a, -firstTrailingBit(func_1(true, Struct_1(1462f, -1711f, -2147483647i, vec4<f32>(1757f, 1027f, 200f, 320f)), ~vec3<i32>(2147483647i, 18540i, 1i))), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_f_op_f32(sign(-261f)), -1i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1832f, -1530f, 109f, 935f))), vec4<f32>(-1088f, -466f, -444f, -1000f)))), !(!any(vec3<bool>(true, false, false)))));
    global0 = array<Struct_3, 19>();
    let var_1 = var_0.b;
    let var_2 = true;
    let var_3 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b - -403f) + _wgslsmith_f_op_f32(210f - 1517f)) * _wgslsmith_f_op_f32(-1040f * _wgslsmith_f_op_f32(select(var_0.b.d.x, var_0.b.a, false)))), var_0.b.b, var_0.b.c, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, var_0.b.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1297f), _wgslsmith_f_op_f32(var_1.d.x - var_0.b.a), var_0.b.a), vec4<f32>(_wgslsmith_f_op_f32(-2603f - var_1.d.x), _wgslsmith_f_op_f32(select(var_0.b.b, var_0.b.d.x, false)), _wgslsmith_f_op_f32(abs(var_0.b.d.x)), -977f))), var_2);
    global0 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.d.ww, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b)))) * var_3.b.d.x), abs(~abs(u_input.b)));
}

