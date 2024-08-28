struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: f32 = 1262f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = select(vec3<i32>(3006i | ((u_input.c ^ 2147483647i) | _wgslsmith_sub_i32(u_input.c, 0i)), 20748i, i32(-1i) * -(-6443i << (u_input.a.x % 32u))), vec3<i32>(~(-_wgslsmith_clamp_i32(u_input.c, u_input.c, 73076i)), _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(u_input.c, u_input.c)), 8932i), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1164f))), _wgslsmith_f_op_f32(-1f))));
    global1 = var_1.x;
    global1 = _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f - var_1.x)))))));
    var var_2 = ~u_input.c;
    return _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 620f))) * 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

fn func_2() -> Struct_3 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_sub_i32(64390i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -26293i), vec2<i32>(u_input.c, u_input.c))), i32(-1i) * -u_input.c, ~(i32(-1i) * -12041i))), vec3<i32>(14092i, min(u_input.c, u_input.c), countOneBits(u_input.c)));
    var_0 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(586f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(719f + -388f)) * -1000f)));
    return Struct_3(Struct_1(!any(vec2<bool>(true, true))), false, vec2<i32>(_wgslsmith_add_i32(min(0i, 2147483647i), 2147483647i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 17131i), vec2<i32>(var_2, 0i), true), vec2<i32>(u_input.c, 0i))) | (vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-27234i, var_2)), _wgslsmith_div_i32(24102i, u_input.c)) | reverseBits(max(vec2<i32>(var_2, 0i), vec2<i32>(u_input.c, var_2)))));
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_4(vec3<bool>(all(select(select(vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.a.a, true), vec2<bool>(true, true)), !vec2<bool>(false, arg_0.a.a), true)), !all(vec3<bool>(arg_0.a.a, arg_0.b, arg_0.b)) && !(4294967295u > u_input.b.x), all(!(!vec4<bool>(arg_0.a.a, true, arg_0.b, arg_0.a.a)))), select(select(vec4<bool>(arg_0.b, true, true, all(vec3<bool>(true, false, arg_0.b))), vec4<bool>(arg_0.a.a, !arg_0.b, all(vec2<bool>(true, arg_0.a.a)), arg_0.a.a), select(vec4<bool>(arg_0.a.a, arg_0.b, true, arg_0.b), vec4<bool>(true, true, true, true), true)), !select(!vec4<bool>(false, arg_0.b, false, false), select(vec4<bool>(arg_0.b, false, false, arg_0.a.a), vec4<bool>(arg_0.a.a, arg_0.b, arg_0.a.a, true), vec4<bool>(false, arg_0.b, arg_0.b, false)), arg_0.a.a), vec4<bool>(arg_0.a.a || false, true, arg_0.a.a, arg_0.b)), -1271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1456f, 1801f))))) * -1000f), Struct_2(_wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(3559i, arg_0.c.x, u_input.c)), -(vec3<i32>(-985i, 18318i, 1i) | vec3<i32>(u_input.c, arg_0.c.x, u_input.c))), _wgslsmith_mult_i32(-reverseBits(u_input.c), -u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) - _wgslsmith_f_op_f32(f32(-1f) * -1102f)), func_2().a));
    global0 = reverseBits(-9348i) << (abs(u_input.b.x) % 32u);
    var var_1 = arg_0.a.a;
    let var_2 = Struct_4(!select(var_0.b.zxz, select(var_0.a, vec3<bool>(true, var_0.a.x, false), !var_0.b.xxz), true), select(vec4<bool>(arg_0.a.a, !any(vec2<bool>(true, var_0.a.x)), arg_0.c.x >= var_0.e.a, any(var_0.b)), vec4<bool>(true, false, (var_0.c < var_0.e.c) || (var_0.b.x || arg_0.b), true), false), var_0.e.c, _wgslsmith_f_op_f32(-var_0.d), var_0.e);
    global0 = -27329i;
    return 616f;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: i32, arg_3: i32) -> vec3<i32> {
    global1 = _wgslsmith_f_op_f32(func_4(func_2()));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1114f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f * 332f)) * _wgslsmith_f_op_f32(sign(-845f))), arg_2 >= (-24672i ^ ~u_input.c)))));
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, arg_2), reverseBits(vec2<i32>(-1i) * -min(vec2<i32>(arg_3, -49589i), vec2<i32>(-1i, 27627i))));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, -2147483647i) >> (u_input.a.x % 32u), _wgslsmith_sub_i32(0i, abs(-30352i))), select(arg_2, _wgslsmith_add_i32(47091i, 1i), false), countOneBits(i32(-1i) * -2147483647i)) | vec3<i32>(i32(-1i) * -var_0.x, _wgslsmith_add_i32(_wgslsmith_add_i32(~1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -2147483647i, var_0.x, arg_3), vec4<i32>(u_input.c, 53757i, -23085i, u_input.c)) << (4294967295u % 32u)), ~(~arg_3) | abs(arg_2));
    global0 = -var_0.x;
    return reverseBits(_wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_3, 2147483647i, arg_2), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, 8350i, -18025i), vec3<i32>(arg_3, 28545i, var_1.x))), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(1u, _wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(~u_input.b.x, abs(u_input.b.x))), ~u_input.c, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.c, u_input.c))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-262f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1818f))))), _wgslsmith_f_op_f32(max(168f, _wgslsmith_f_op_f32(-1f)))));
    global1 = _wgslsmith_f_op_f32(1136f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f + 163f))) * _wgslsmith_f_op_f32(f32(-1f) * -216f)));
    global0 = i32(-1i) * -var_0.x;
    var_1 = 511f;
    var var_2 = select(firstTrailingBit(-2068i) >> (_wgslsmith_add_u32(~72592u, 0u) % 32u), 22339i, !(all(vec3<bool>(false, false, false)) != any(vec2<bool>(false, false)))) & u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(756f - -473f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-834f - 769f), -1000f)))), _wgslsmith_clamp_vec4_i32(-(vec4<i32>(-10063i, var_0.x, var_0.x, 1753i) | vec4<i32>(var_0.x, -2147483647i, u_input.c, 0i)) | select(select(vec4<i32>(-8125i, 27216i, -58304i, var_0.x), vec4<i32>(38927i, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, true, false)), vec4<i32>(-40131i, var_0.x, u_input.c, 2147483647i), true), vec4<i32>(func_2().c.x, -2147483647i, 2147483647i, func_1(1u, ~vec2<u32>(u_input.b.x, 1u), select(u_input.c, -2147483647i, true), func_2().c.x).x), vec4<i32>(1i, -var_0.x, u_input.c, -(i32(-1i) * -36525i))), _wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, 2147483647i) & vec4<i32>(u_input.c, -1i, 0i, var_0.x), -vec4<i32>(2147483647i, -2147483647i, u_input.c, -1628i)), max(_wgslsmith_sub_vec4_i32(~vec4<i32>(-51289i, var_0.x, var_0.x, var_0.x), vec4<i32>(1i, 1i, u_input.c, var_0.x)), ~vec4<i32>(var_0.x, -29078i, -1i, u_input.c))), i32(-1i) * -u_input.c);
}

