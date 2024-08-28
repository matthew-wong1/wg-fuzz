struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -17543i, 31898i, -18491i);

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> i32 {
    global1 = 1i;
    return -u_input.b;
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: bool) -> vec4<i32> {
    global1 = _wgslsmith_dot_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(abs(reverseBits(vec4<i32>(arg_1, u_input.b, global0.x, 2147483647i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, global0.x, arg_1), vec4<i32>(1i, -1i, 273i, 8917i)), vec4<i32>(-1i) * -vec4<i32>(27012i, -5261i, u_input.b, 22952i))), max(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(26978i, u_input.b, 2147483647i, arg_1)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, arg_1, u_input.b, 2147483647i), vec4<i32>(0i, global0.x, 1968i, 16497i), vec4<i32>(arg_1, global0.x, global0.x, 0i))), vec4<i32>(2147483647i, global0.x, 4247i, -1i)));
    global0 = -_wgslsmith_sub_vec4_i32(select(reverseBits(firstLeadingBit(vec4<i32>(-41726i, 2147483647i, 0i, global0.x))), ~(vec4<i32>(-60082i, u_input.b, u_input.b, -2147483647i) ^ vec4<i32>(u_input.b, -9243i, 1i, -6980i)), select(!vec4<bool>(arg_2, arg_3, false, arg_2), vec4<bool>(arg_3, false, arg_3, arg_3), true)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(12771i, 17589i, -1i, global0.x), vec4<i32>(0i, -2147483647i, arg_1, -17354i)) & firstTrailingBit(vec4<i32>(global0.x, 0i, 2147483647i, 0i)), -vec4<i32>(-15265i, 0i, 1i, global0.x), false));
    var var_0 = 18418u;
    var var_1 = global0.x;
    var_0 = _wgslsmith_add_u32(~34271u >> (u_input.c % 32u), 2703u) | _wgslsmith_mod_u32(firstTrailingBit(firstTrailingBit(19327u)), ~34854u);
    return ~(-_wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.b, arg_1, u_input.b, -37329i)), vec4<i32>(802i, -1i, -17779i, 2147483647i) ^ ~vec4<i32>(1i, global0.x, -2147483647i, global0.x)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(true, -195f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(2052f, -584f)), arg_0);
    var var_1 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(global0.xxz, vec3<i32>(-21332i, func_2(), 9420i)), -global0.x, _wgslsmith_add_i32(_wgslsmith_add_i32(abs(~(-56523i)), -1i), global0.x));
    global0 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-415f, var_0.c, 313f, var_0.b)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, 377f, 999f, -909f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(431f, 1000f, -548f, var_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 275f, -1110f, var_0.b) - vec4<f32>(802f, var_0.c, 1525f, -1322f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 268f, -1362f, var_0.c) * vec4<f32>(-1090f, var_0.c, 214f, var_0.c)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b, 1000f, var_0.b, 380f), vec4<f32>(736f, var_0.b, var_0.c, -1547f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(946f, var_0.b, var_0.b, -532f)))))), global0.x, var_0.a, false);
    global1 = var_1.x ^ _wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(var_1.x, var_1.x, -40864i)), vec3<i32>(var_1.x, -2147483647i, 10763i) >> (vec3<u32>(66728u, 64250u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(global0.zwy, vec3<i32>(0i, 29060i, global0.x)), var_0.a), var_1.yzw);
    var var_2 = select(vec4<bool>(any(select(vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec3<bool>(var_0.a, true, true), vec3<bool>(true, true, var_0.a), vec3<bool>(var_0.a, var_0.a, true)), var_0.d.b <= var_0.d.b)), var_0.a, false, all(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false)))), select(!select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false)), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), select(!(!vec4<bool>(true, true, false, var_0.a)), select(select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(false, var_0.a, false, var_0.a)), vec4<bool>(var_0.a, true, var_0.a, true), var_0.a), all(!vec2<bool>(true, var_0.a))), select(select(!vec4<bool>(var_0.a, var_0.a, false, var_0.a), select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(true, true, true, var_0.a), vec4<bool>(true, var_0.a, false, var_0.a)), var_0.a | var_0.a), vec4<bool>(var_0.a, false, true, true), false)), !var_0.a);
    return Struct_1(44593u, firstTrailingBit(arg_0.b), abs(var_0.d.c & vec3<u32>(0u, ~47243u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(17783u, abs(u_input.a.x), reverseBits(u_input.a)));
    var var_1 = abs(var_0.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(237f, 317f)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_mod_u32(~var_1.x, 1u), u_input.a.x, vec3<u32>(94512u, _wgslsmith_div_u32(1290u, var_1.x), var_0.a)));
    var var_4 = 0u;
    var_4 = _wgslsmith_dot_vec2_u32(~var_1.xy >> (~vec2<u32>(var_3.a.a ^ 4464u, 37372u >> (u_input.c % 32u)) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_clamp_u32(32641u, _wgslsmith_clamp_u32(u_input.c, var_3.a.c.x, 1u), ~var_3.a.c.x), _wgslsmith_dot_vec3_u32(var_0.c, ~_wgslsmith_mult_vec3_u32(var_3.a.c, var_0.c))));
    let var_5 = Struct_2(select(select(true, true, true) | (-2095i == u_input.b), !(!any(vec2<bool>(true, true))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, 181f)) - -1349f) * var_2.x), var_3.a);
    var_1 = vec3<u32>(~26878u, 50885u | ~(max(20121u, var_5.d.b) ^ 0u), func_1(func_1(Struct_1(u_input.a.x, max(0u, var_5.d.c.x), u_input.a))).c.x);
    let var_6 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(global0.x, ~1i, abs(u_input.b))));
}

