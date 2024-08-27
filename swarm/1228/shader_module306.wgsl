struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: Struct_1 = Struct_1(false, vec4<u32>(56607u, 37944u, 0u, 5339u), vec3<bool>(false, false, true), -1i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global2 = Struct_1(global0.d <= -23647i, arg_0.b, global2.c, -32603i);
    var var_0 = -(-(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, global0.d, u_input.c), vec3<i32>(u_input.c, global2.d, global0.d)) << (vec3<u32>(0u, 0u, 68871u) % vec3<u32>(32u))) | vec3<i32>(-55395i, ~(i32(-1i) * -1i), -2147483647i));
    global0 = arg_0;
    var var_1 = Struct_1(true, _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(arg_0.b, ~global2.b), global2.b), arg_0.c, -21385i);
    var var_2 = ~vec3<i32>(arg_0.d, 30862i, -21811i);
    return arg_0;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = func_1(Struct_1(true, vec4<u32>(~1u, ~1u, 0u, 36898u) << (vec4<u32>(~26265u, ~arg_1.a, 4294967295u, abs(arg_2.b)) % vec4<u32>(32u)), select(vec3<bool>(false, any(vec4<bool>(global2.c.x, global0.a, global2.c.x, global2.a)), any(vec4<bool>(true, false, false, false))), global2.c, select(global2.c, global2.c, vec3<bool>(global2.a, false, true))), 0i), global1.x);
    global2 = Struct_1(!global0.c.x, vec4<u32>(var_0.b.x, 1u, _wgslsmith_dot_vec2_u32(~countOneBits(var_0.b.zy), abs(~vec2<u32>(28173u, 3341u))), global2.b.x), !vec3<bool>(global2.a, all(select(vec4<bool>(false, global0.a, true, global2.a), vec4<bool>(true, true, var_0.a, global0.a), false)), true), arg_0.x);
    let var_1 = Struct_2(min(12720u, 4294967295u), arg_2.b, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(0i ^ arg_1.c.x, -2147483647i), max(select(u_input.c, 44481i, global0.c.x), ~global0.d)), var_0.d, -9572i), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_2.d.x, 47980u), ~u_input.b, 0u), global2.b.zzz) ^ func_1(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -287f)))).b.yzx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 249f, 1413f, global1.x) * arg_2.e))));
    var var_2 = var_0;
    var var_3 = !func_1(var_0, _wgslsmith_f_op_f32(ceil(-1768f))).c.zz;
    return true;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-649f, -639f, global1.x, global1.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1001f, global1.x, 1031f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-209f, 1049f, global1.x, global1.x) * vec4<f32>(262f, -1172f, global1.x, global1.x)))))));
    global0 = func_1(Struct_1(all(vec4<bool>(global0.c.x, !global2.a, !arg_0, false)), ~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(107048u, 1u, global2.b.x, 0u), vec4<u32>(global0.b.x, global0.b.x, 57478u, global2.b.x))), vec3<bool>(true, true, true), 51494i), _wgslsmith_f_op_f32(524f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f * global1.x)))));
    let var_0 = Struct_2(_wgslsmith_add_u32(global0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 12076u, 91000u) << (~global2.b.zzw % vec3<u32>(32u)), select(global0.b.zyy, reverseBits(vec3<u32>(4294967295u, 30866u, arg_2.b.x)), func_1(arg_2, global1.x).a))), 1u, vec3<i32>(~47763i, arg_1.x & -_wgslsmith_div_i32(u_input.c, 2147483647i), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(5326i, arg_3.x, arg_1.x, arg_2.d)) << (_wgslsmith_clamp_vec4_u32(global2.b, vec4<u32>(arg_2.b.x, 0u, 0u, 4294967295u), global2.b) % vec4<u32>(32u)), ~(-vec4<i32>(arg_2.d, -2147483647i, 0i, arg_2.d)))), global2.b.xxz << (vec3<u32>(~u_input.b, ~_wgslsmith_mult_u32(u_input.d.x, 1u), ~1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global1.x, global1.x, global1.x))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(679f, -170f, global1.x, 611f) - vec4<f32>(1000f, -1326f, -814f, -1000f)) * vec4<f32>(-1326f, global1.x, 886f, global1.x))))));
    global1 = _wgslsmith_f_op_vec4_f32(-var_0.e);
    let var_1 = 4294967295u;
    return !vec3<bool>(global2.a, true, all(!select(vec4<bool>(arg_2.c.x, false, arg_2.a, false), vec4<bool>(arg_0, false, arg_2.a, false), global2.a)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-global1.x);
    let var_1 = arg_2.x;
    var var_2 = Struct_1(true, vec4<u32>(abs(abs(global0.b.x)), 34414u, abs(_wgslsmith_dot_vec4_u32(global2.b, global2.b)), _wgslsmith_mult_u32(~(~u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 29616u, arg_2.x), vec3<u32>(global0.b.x, 1u, 4294967295u) << (vec3<u32>(global0.b.x, arg_2.x, var_1) % vec3<u32>(32u))))), func_4(!func_3(firstTrailingBit(vec2<i32>(-9302i, u_input.c)), Struct_2(global0.b.x, u_input.b, vec3<i32>(1i, arg_0.d, global2.d), global0.b.zwy, vec4<f32>(2286f, -1173f, -490f, -647f)), Struct_2(0u, 38890u, vec3<i32>(2147483647i, global2.d, 1870i), vec3<u32>(44554u, 87705u, global2.b.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(abs(-18729i), max(-30124i, 0i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, arg_1), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, -37158i), vec2<i32>(-1i, -32398i)), vec2<i32>(-44270i, -1i))), Struct_1(!global0.c.x, max(arg_0.b, reverseBits(global0.b)), !vec3<bool>(false, arg_0.c.x, false), _wgslsmith_sub_i32(global2.d, abs(u_input.c))), vec2<i32>(-54635i, 1i)), ~(~arg_1));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2078f * global1.x))) * -776f)));
    global2 = arg_0;
    return Struct_2(~select(var_1, _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(arg_2.x, arg_0.b.x), ~u_input.a), func_1(func_1(Struct_1(true, vec4<u32>(global2.b.x, global0.b.x, 0u, var_2.b.x), vec3<bool>(false, true, false), -2147483647i), 300f), -1130f).c.x), ~(~110477u ^ firstLeadingBit(var_1)) << (global0.b.x % 32u), ~vec3<i32>(0i, firstTrailingBit(-9437i), -13813i), vec3<u32>(~u_input.d.x, _wgslsmith_mod_u32(arg_0.b.x, 1u) & firstLeadingBit(arg_2.x << (1u % 32u)), _wgslsmith_dot_vec2_u32(u_input.d.xx, arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, -1357f, global1.x), vec4<f32>(1116f, 349f, global1.x, 1432f), var_2.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 440f, global1.x, -708f))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    var var_0 = true;
    var var_1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(sign(arg_0.e.x)));
    var var_2 = Struct_2(~abs(~1u), 0u, vec3<i32>(u_input.c, arg_1.c.x, _wgslsmith_clamp_i32(u_input.c, u_input.c, -16252i)), ~func_2(Struct_1(!global2.c.x, countOneBits(global0.b), global2.c, _wgslsmith_dot_vec3_i32(arg_0.c, arg_0.c)), 0i, _wgslsmith_div_vec2_u32(~global0.b.xy, arg_1.d.yx)).d, vec4<f32>(var_1.x, global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -751f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.e.x, arg_3.x, global2.a))))));
    let var_3 = func_1(Struct_1(!any(global0.c) == func_4(global2.c.x, abs(vec2<i32>(global2.d, -30092i)), Struct_1(global0.c.x, global0.b, vec3<bool>(global2.a, false, true), 2147483647i), arg_0.c.zx).x, ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15074u, 4294967295u, global2.b.x), global2.b.zxy), 10172u, 0u, _wgslsmith_clamp_u32(global0.b.x, global2.b.x, u_input.d.x)), select(!(!vec3<bool>(global2.a, false, global0.a)), select(!global0.c, global0.c, vec3<bool>(global0.c.x, true, true)), func_4(arg_0.a <= arg_0.b, vec2<i32>(global0.d, var_2.c.x), func_1(Struct_1(global2.a, vec4<u32>(var_2.a, global2.b.x, global0.b.x, 0u), vec3<bool>(false, true, false), arg_0.c.x), -1519f), vec2<i32>(var_2.c.x, -8699i))), global0.d), arg_0.e.x);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.e * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, global1.x, 413f, -987f))) * arg_0.e)) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1104f, -1347f)))), arg_3.x, arg_1.e.x, var_1.x), vec4<f32>(1440f, _wgslsmith_f_op_f32(max(var_2.e.x, var_2.e.x)), _wgslsmith_f_op_f32(round(global1.x)), 2202f)));
    return var_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 377f, global1.x, 1112f) * vec4<f32>(global1.x, 1504f, 642f, 1130f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -1315f, -869f, 230f), vec4<f32>(global1.x, global1.x, global1.x, -781f)))), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 1226f, _wgslsmith_f_op_f32(trunc(-2500f)), -1397f)))) * vec4<f32>(global1.x, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))), global2.c.x)), global1.x));
    var var_0 = 880f;
    global2 = func_1(Struct_1(select(global2.c.x, any(global0.c), global2.c.x && global2.a), ~(~global2.b), vec3<bool>(any(!vec3<bool>(false, false, global2.c.x)), true, false), countOneBits(firstTrailingBit(-12827i))), 1356f);
    let var_1 = func_1(Struct_1(true, vec4<u32>(_wgslsmith_dot_vec4_u32(global2.b, global2.b) ^ ~u_input.a, global0.b.x, _wgslsmith_mult_u32(global2.b.x, u_input.d.x), _wgslsmith_clamp_u32(global2.b.x | u_input.a, 1u, u_input.d.x)), !vec3<bool>(false, any(global0.c), global0.c.x), _wgslsmith_div_i32(u_input.c, ~(-1i & global2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_2(Struct_1(global0.a, vec4<u32>(global2.b.x, global0.b.x, global2.b.x, 4294967295u), global0.c, -8892i), global2.d, vec2<u32>(77821u, 0u)), Struct_2(u_input.b, 1u, vec3<i32>(1i, -2147483647i, 1i), global2.b.xxy, vec4<f32>(-1083f, 573f, 496f, global1.x)), global0.d | global2.d, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -654f, -2511f, 1181f), vec4<f32>(-470f, global1.x, -1196f, global1.x))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x)))) * 214f));
    var var_2 = var_1;
    let var_3 = _wgslsmith_div_vec3_u32(var_1.b.wxw, func_1(Struct_1(global0.a, firstLeadingBit(_wgslsmith_add_vec4_u32(var_2.b, vec4<u32>(global0.b.x, var_1.b.x, 58495u, 61455u))), vec3<bool>(any(vec4<bool>(false, global2.c.x, false, false)), func_4(var_2.a, vec2<i32>(global0.d, -29365i), var_1, vec2<i32>(global2.d, var_1.d)).x, any(vec3<bool>(true, false, var_2.a))), ~min(global0.d, 2147483647i)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(1073f + 142f))).b.yyy);
    global2 = Struct_1(false, firstLeadingBit(global2.b), vec3<bool>(!func_1(func_1(var_1, global1.x), global1.x).c.x, true, var_1.c.x), _wgslsmith_mod_i32(-51129i, var_2.d));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.xzz)), _wgslsmith_f_op_vec3_f32(-global1.yxw), global0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.yzw)) - vec3<f32>(-1113f, 387f, _wgslsmith_f_op_f32(func_5(func_2(var_1, -16901i, var_2.b.xw), Struct_2(1u, global0.b.x, vec3<i32>(73608i, u_input.c, 23913i), vec3<u32>(34439u, var_1.b.x, var_1.b.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_div_i32(global2.d, 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 872f, -2952f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~func_1(func_1(Struct_1(global0.a, vec4<u32>(var_3.x, 1u, global0.b.x, var_3.x), vec3<bool>(false, global0.c.x, var_2.c.x), -1i), global1.x), _wgslsmith_f_op_f32(max(1344f, 1408f))).b.x), _wgslsmith_dot_vec3_i32(-max(vec3<i32>(49725i, global2.d, var_2.d), vec3<i32>(var_1.d, -19790i, global0.d)), abs(~vec3<i32>(u_input.c, 0i, var_2.d))) & ~_wgslsmith_add_i32(max(45665i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(-24448i, u_input.c))), -countOneBits(_wgslsmith_mult_i32(2455i, u_input.c << (46844u % 32u))));
}

