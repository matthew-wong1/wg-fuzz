struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = max(~u_input.c.x, reverseBits(~(arg_2.c & arg_3)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1454f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(abs(arg_2.b.x))))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f), arg_2.b.x);
    var var_2 = arg_0.x << ((~(u_input.b.x >> (_wgslsmith_mod_u32(1u, 4294967295u) % 32u)) >> (1u % 32u)) % 32u);
    var var_3 = 1i;
    var_3 = -(~arg_2.c);
    return -30153i;
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), func_3(vec4<u32>(1u, 4294967295u, 45589u, u_input.b.x), false, arg_1.a, arg_1.a.c)), min(vec2<i32>(arg_1.a.c, 11137i), vec2<i32>(-2147483647i, -893i)) << ((vec2<u32>(u_input.b.x, u_input.b.x) | u_input.a) % vec2<u32>(32u)))));
    var_0 = Struct_4(var_0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.b.x, 330f, arg_1.b.b)) - -722f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(arg_1.a.b.x, 248f, arg_0))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.b.x)) * _wgslsmith_f_op_f32(floor(arg_1.a.b.x))))), 480f));
    var_0 = Struct_4(vec2<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -44761i, arg_1.a.c), vec4<i32>(-1715i, arg_1.a.c, 29540i, u_input.c.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, 17047i, -56992i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, arg_1.a.c, 1i))), ~_wgslsmith_add_i32(4109i, var_0.a.x)));
    var_0 = Struct_4(vec2<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(-select(vec4<i32>(0i, -4284i, u_input.c.x, var_0.a.x), vec4<i32>(-2147483647i, u_input.c.x, 29803i, 58554i), vec4<bool>(arg_0, arg_0, false, true)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_1.a.c, 63829i, u_input.c.x, u_input.c.x), vec4<i32>(13906i, var_0.a.x, var_0.a.x, u_input.c.x), vec4<bool>(arg_0, false, arg_1.b.b, true)), -vec4<i32>(2147483647i, -1i, 43326i, var_0.a.x), ~vec4<i32>(2147483647i, var_0.a.x, u_input.c.x, -2147483647i)))));
    return Struct_4(-(~u_input.c.xx));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_3(Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, 701f, 1000f, 777f) * vec4<f32>(-1541f, -343f, -192f, 1301f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-211f, 432f, 1145f, -349f) - vec4<f32>(483f, -227f, -1000f, 1207f)), vec4<f32>(-437f, 1000f, -970f, -1417f))), -2147483647i), Struct_1(30579u, arg_0.b));
    let var_1 = _wgslsmith_f_op_f32(451f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.b.x, 1651f)) + var_0.a.b.x) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -3120f)))), true)));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(-1760f, var_1, 507f), vec3<f32>(_wgslsmith_f_op_f32(-344f + -778f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1243f, var_0.a.b.x)) * var_0.a.b.x)), -101f));
    var_2 = var_0.a.b.wzx;
    var var_3 = Struct_1(u_input.a.x, !(!(!(var_0.b.b & var_0.a.a.b))));
    return _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(~max(~0u, _wgslsmith_add_u32(3217u, var_0.a.a.a)), var_0.b.a, reverseBits(1867u)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = ~u_input.b;
    let var_1 = firstTrailingBit(~vec3<u32>(func_4(Struct_1(u_input.b.x, true), func_2(arg_0.b, Struct_3(Struct_2(arg_0, vec4<f32>(328f, -1786f, -631f, -1033f), u_input.c.x), Struct_1(var_0.x, false)))), arg_0.a, ~0u));
    let var_2 = min(~_wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, 66456u), firstTrailingBit(u_input.b))), countOneBits(~(min(u_input.a.x, var_0.x) ^ ~20399u)));
    var var_3 = 30554u;
    var var_4 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1942f, 1250f, -129f, 654f) + vec4<f32>(321f, 396f, -1000f, -171f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, -2639f, 497f, 1441f)))) + vec4<f32>(_wgslsmith_f_op_f32(select(-1633f, -384f, arg_0.b)), _wgslsmith_f_op_f32(120f - 432f), -1303f, _wgslsmith_f_op_f32(f32(-1f) * -668f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, -592f, -705f, -1443f))) * _wgslsmith_div_vec4_f32(vec4<f32>(1107f, -500f, -1000f, -1024f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1340f, -845f, 414f, 520f))))))), u_input.c.x);
    return _wgslsmith_sub_u32(var_1.x, ~(~4294967295u));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(~(arg_0.x | 1u), ~arg_0.x), firstTrailingBit(u_input.c.x) <= 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1004f, -429f, -313f)) + vec4<f32>(-1250f, _wgslsmith_f_op_f32(ceil(-1588f)), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(614f + -498f)))), u_input.c.x);
    var var_1 = vec4<f32>(393f, 1707f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -250f))), var_0.b.x);
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), 122f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-128f)), 688f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-354f))))));
    return vec3<i32>(-1i, abs(u_input.c.x), var_0.c >> (_wgslsmith_mod_u32(16663u & u_input.a.x, u_input.a.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(16722i, u_input.c.x, u_input.c.x, 49362i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, -13783i, u_input.c.x, 15627i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), vec4<i32>(~(-u_input.c.x), ~_wgslsmith_sub_i32(0i, u_input.c.x), firstTrailingBit(u_input.c.x) >> (~1u % 32u), u_input.c.x)), -33514i);
    var_0 = ~(-firstLeadingBit(u_input.c));
    var_0 = countOneBits(abs(vec3<i32>(17963i ^ var_0.x, 1091i, -u_input.c.x)));
    var_0 = func_5(~vec4<u32>(2070u, 54398u, min(u_input.a.x, 19919u), func_1(Struct_1(u_input.a.x, true))) ^ vec4<u32>(max(u_input.a.x, u_input.a.x) >> (~23993u % 32u), 68715u, abs(~u_input.b.x), ~(u_input.b.x >> (u_input.b.x % 32u))), vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)), true, true));
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, abs(select(u_input.b, ~min(u_input.b, u_input.b), true)), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.x, 4482i), abs(vec3<i32>(0i, 2147483647i, -6087i))), u_input.c), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-422f, -313f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2207f, 825f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1900f));
}

