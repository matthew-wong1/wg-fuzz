struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1320f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = Struct_3(vec4<i32>(-31968i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_0, 1i, 0i, -48094i) & vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.a)), vec4<i32>(~0i, countOneBits(u_input.a), u_input.a << (4294967295u % 32u), u_input.a & u_input.a)), firstLeadingBit(~(u_input.a & 0i)), arg_0 ^ 1i), Struct_2(vec4<u32>(~50821u, _wgslsmith_clamp_u32(~arg_3, ~arg_3, min(arg_3, 32485u)), arg_3, arg_3)), select(max(abs(vec2<u32>(arg_3, 4256u)), vec2<u32>(6327u, arg_3)) ^ (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3, 25330u), vec2<u32>(arg_3, 0u), vec2<u32>(27058u, arg_3)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(14471u, 64317u), vec2<u32>(1u, 33589u)) % vec2<u32>(32u))), firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1226u, 20655u), vec2<u32>(1u, 0u), vec2<u32>(262u, 1u))), vec2<bool>(0u >= arg_3, _wgslsmith_div_u32(arg_3, arg_3) > 1u)));
    let var_1 = 0i;
    let var_2 = Struct_2(vec4<u32>(arg_3, ~(~4294967295u) ^ (arg_3 >> (~var_0.b.a.x % 32u)), ~(_wgslsmith_sub_u32(var_0.b.a.x, 8316u) << (arg_3 % 32u)), firstLeadingBit(~var_0.c.x)));
    var var_3 = Struct_3(var_0.a, Struct_2(_wgslsmith_sub_vec4_u32(abs(var_2.a), ~vec4<u32>(var_0.b.a.x, 77041u, 4294967295u, 4294967295u))), ~var_0.b.a.xx);
    var var_4 = var_0.a;
    return 788f;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(42360i, vec4<f32>(-652f, 707f, -399f, 1000f), -967f, 28621u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1262f, -1000f)) + _wgslsmith_f_op_f32(func_3(-27003i, vec4<f32>(1227f, -1251f, -247f, 934f), -2103f, 4294967295u))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1204f, -975f, true))))))));
    let var_1 = ~select(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(26296u, max(1u, 4294967295u), ~0u, 1u), min(abs(vec4<u32>(0u, 1u, 0u, 4294967295u)), ~vec4<u32>(11386u, 1772u, 0u, 0u))), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)));
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(0u & _wgslsmith_mult_u32(0u, var_1.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(35395u, var_1.x, var_1.x))), var_1.x, _wgslsmith_dot_vec2_u32(var_1.ww, _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_1.x, var_1.x)), vec2<u32>(4294967295u, var_1.x), _wgslsmith_mult_vec2_u32(var_1.yx, vec2<u32>(22006u, 0u)))), (~var_1.x << (var_1.x % 32u)) | ~(var_1.x << (32334u % 32u))));
    let var_3 = _wgslsmith_mod_vec4_u32(var_1, vec4<u32>(_wgslsmith_mult_u32(9261u, 1u), var_2.a.x, 1u, 86122u));
    let var_4 = !(var_0.x <= _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -193f)));
    return 0i;
}

fn func_1() -> i32 {
    var var_0 = -(~func_2());
    let var_1 = Struct_1(!vec4<bool>(false, any(vec2<bool>(false, true)), true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(112f, 844f))), vec3<bool>(true, all(vec3<bool>(true, true, true)), !(!any(vec2<bool>(false, false)))));
    var_0 = _wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(u_input.a, -(~u_input.a)));
    var var_2 = !vec2<bool>(select(!var_1.c.x, ~(-1i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2147483647i, 1i, u_input.a)), !var_1.c.x), any(var_1.a.zxw));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1f)))))) + -332f);
    var var_0 = Struct_3(_wgslsmith_mod_vec4_i32(-vec4<i32>(-42146i, _wgslsmith_div_i32(u_input.a, 2147483647i), u_input.a, func_1()), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(80208i, 2131i, u_input.a, u_input.a)), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(73889i, 2147483647i, 2147483647i), vec3<i32>(u_input.a, 2147483647i, -1i)), ~u_input.a, -1i))), Struct_2(vec4<u32>(1u, 1u, 1u, 1u)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, firstTrailingBit(1516u)), ~vec2<u32>(78880u, 4294967295u), ~vec2<u32>(22661u, 26273u))));
    var var_1 = vec2<bool>(true || ((countOneBits(var_0.b.a.x) >> (_wgslsmith_div_u32(42805u, var_0.c.x) % 32u)) <= var_0.c.x), all(select(vec3<bool>(all(vec4<bool>(true, false, false, false)), select(true, false, true), var_0.a.x == 21697i), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))));
    let var_2 = 54518u;
    var var_3 = true;
    let var_4 = 176f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-191f, var_4, -553f), vec3<f32>(1440f, -564f, var_4)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, var_4, -598f))))));
}

