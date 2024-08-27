struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 30421u, 4294967295u, 53927u);

var<private> global1: vec2<i32> = vec2<i32>(66820i, 27448i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = Struct_1(firstTrailingBit(firstLeadingBit(global0.wy)) >> (vec2<u32>(~(u_input.c << (global0.x % 32u)), u_input.b) % vec2<u32>(32u)), arg_0.d, ~_wgslsmith_sub_u32(0u ^ u_input.b, 49029u));
    let var_1 = arg_0;
    let var_2 = Struct_2(vec3<i32>(u_input.d.x, ~(~35661i), var_0.b) | vec3<i32>(0i, ~var_0.b, reverseBits(var_1.d)), _wgslsmith_sub_vec3_i32(u_input.d, _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.d, global1.x, global1.x), -vec3<i32>(-10181i, var_1.d, 1i))) & firstTrailingBit(-countOneBits(u_input.d)), ~(min(~var_0.a.x, _wgslsmith_add_u32(4294967295u, global0.x)) >> (global0.x % 32u)), min(~_wgslsmith_dot_vec3_i32(vec3<i32>(-19850i, u_input.d.x, u_input.d.x), u_input.d), u_input.d.x) | u_input.a, Struct_1(countOneBits(global0.wy), _wgslsmith_dot_vec3_i32(vec3<i32>(-var_1.d, u_input.d.x >> (1u % 32u), var_1.d), vec3<i32>(57077i | var_1.d, min(-1i, 3416i), var_1.d)), countOneBits(var_0.c)));
    let var_3 = min(u_input.e.x, var_2.c | max(_wgslsmith_mult_u32(select(14749u, var_2.c, false), min(var_0.a.x, var_2.c)), _wgslsmith_div_u32(global0.x, ~12921u)));
    global0 = vec4<u32>(u_input.c >> (var_3 % 32u), firstTrailingBit(1u) | 61882u, ~(var_2.c >> (firstLeadingBit(var_0.a.x) % 32u)), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(~4294967295u, countOneBits(1u)), u_input.b));
    return ~(-2147483647i);
}

fn func_2() -> f32 {
    global1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(func_3(Struct_4(-710f, vec2<bool>(true, false), false, 1i)), abs(34235i)), -(u_input.d.x & global1.x)), vec2<i32>(2147483647i, ~1i)), u_input.a);
    var var_0 = Struct_3(36506i, u_input.d, true, !vec4<bool>(true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true)), true, true), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.b, ~0u), ~abs(global0.xz)), max(countOneBits(firstTrailingBit(-7180i)), -(~u_input.a)), 1u));
    global0 = vec4<u32>(1u, _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.e, var_0.e.a), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, var_0.e.a.x), ~vec2<u32>(var_0.e.a.x, u_input.b)))), var_0.e.c, _wgslsmith_sub_u32(countOneBits(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 477u, 70362u), vec4<u32>(4294967295u, 38963u, 1u, var_0.e.c)))), 1u));
    let var_1 = Struct_2(select(~select(vec3<i32>(global1.x, -22180i, 13983i), vec3<i32>(-17267i, var_0.e.b, -62546i), true), ~u_input.d, !vec3<bool>(any(var_0.d.zwx), all(vec2<bool>(false, var_0.c)), all(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x)))), vec3<i32>(global1.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(i32(-1i) * -8840i, 2145i, firstTrailingBit(global1.x)), -2147483647i), firstLeadingBit(8179i)), ~(1u >> (_wgslsmith_sub_u32(~global0.x, ~u_input.c) % 32u)), -1i, var_0.e);
    let var_2 = var_0.c;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1087f, 913f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-243f, 396f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1131f + -1823f) + _wgslsmith_f_op_f32(sign(1256f))))) - 186f);
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(f32(-1f) * -2155f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1382f)) + 1374f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f)), _wgslsmith_f_op_f32(round(437f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1076f, -294f)), _wgslsmith_f_op_f32(473f + 553f))) + -1000f)));
    let var_1 = ~func_3(Struct_4(158f, select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(false, false))), true, global1.x));
    var var_2 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(global1.x), ~(-2147483647i), u_input.d.x), abs(~vec3<i32>(16483i, -2147483647i, -6455i))), vec3<i32>(-21015i, 18272i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global1.x, 40210i), u_input.d)), any(vec2<bool>(true, true)) | any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true))) >> (_wgslsmith_mult_vec3_u32(select(~vec3<u32>(66401u, 157u, 4294967295u), global0.zyy, true), (reverseBits(vec3<u32>(u_input.b, 4294967295u, u_input.b)) & min(global0.zww, global0.zyy)) & ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 37547u, 4294967295u), vec3<u32>(u_input.b, 24857u, arg_0))) % vec3<u32>(32u));
    let var_3 = ~(-abs(max(~vec4<i32>(var_1, var_1, 33862i, -31702i), vec4<i32>(-2964i, global1.x, -2147483647i, 0i))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1012f, 535f) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), vec4<f32>(-450f, -131f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1582f)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(max(var_0.x, 194f))), _wgslsmith_f_op_f32(-var_0.x), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(var_0.x, 2019f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(721f)) - -264f) - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1167f)) - var_0.x) - 1321f)));
    return Struct_4(_wgslsmith_f_op_f32(step(924f, var_0.x)), !vec2<bool>(true, select(true, false, true)), false, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1, global1.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-30289i, var_2.x), -vec2<i32>(-1i, var_2.x), -vec2<i32>(global1.x, var_3.x))) << (u_input.e.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.xx, u_input.d.x, u_input.c);
    global1 = abs(u_input.d.xz);
    global1 = u_input.d.zz;
    let var_1 = func_1(~abs(4294967295u));
    var var_2 = Struct_2(vec3<i32>(-2147483647i, 12168i >> (var_0.c % 32u), _wgslsmith_sub_i32(-1i, 1i)) | countOneBits(vec3<i32>(var_0.b, max(u_input.a, 1i), ~2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -u_input.d, -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, -16348i, -23642i), u_input.d), u_input.d)), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, countOneBits(var_0.a.x) << (var_0.c % 32u)), 28734u), _wgslsmith_sub_i32(81i, 43848i), var_0);
    var_2 = Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(u_input.d) << (global0.yzz % vec3<u32>(32u)), vec3<i32>(var_1.d, _wgslsmith_sub_i32(0i, var_1.d), var_0.b)), _wgslsmith_div_vec3_i32(var_2.b, firstLeadingBit(u_input.d | vec3<i32>(32325i, global1.x, 19182i)))), u_input.d, select(~u_input.c, abs(~_wgslsmith_add_u32(u_input.c, var_2.e.c)), true), 34116i, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, ~vec2<u32>(var_0.a.x, global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(812f)) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a, var_1.a), -124f)))), _wgslsmith_div_i32(var_2.d, -2147483647i), _wgslsmith_div_i32(_wgslsmith_div_i32(~firstLeadingBit(1i), -16828i), u_input.d.x));
}

