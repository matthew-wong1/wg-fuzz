struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = Struct_1(global0.a, 525f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(250f * _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-global0.c)))))), select(vec4<i32>(firstLeadingBit(18788i) >> (global0.e % 32u), abs(-global0.d.x), ~abs(-11379i), min(22619i, -50093i)), global0.d, all(vec2<bool>(true, true))), global0.e);
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b, global0.a.x, var_0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.zyz + var_0.a.xzw)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.a.zzx))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1576f, arg_0, -1403f, global1.x) - global0.a)) - vec4<f32>(var_0.a.x, global1.x, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -558f))) * vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(arg_0 * global1.x)), 491f, -882f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))))), global0.a.x, 479f, global0.d, 1u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1470f)));
    let var_2 = -1167f;
    return arg_0;
}

fn func_2() -> Struct_1 {
    var var_0 = abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, global0.e, 38513u, global0.e)), vec4<u32>(~14451u, firstLeadingBit(1u), global0.e, _wgslsmith_mult_u32(global0.e, global0.e))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.e, global0.e, 4294967295u, 4753u), vec4<u32>(global0.e, global0.e, global0.e, global0.e)) << (min(vec4<u32>(global0.e, 33021u, 1u, 1u), vec4<u32>(26496u, global0.e, global0.e, global0.e)) % vec4<u32>(32u)), vec4<u32>(min(20361u, global0.e), 1u, global0.e, 1u))));
    var var_1 = _wgslsmith_div_vec2_f32(global1.yy, vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-439f)), global0.c))));
    var var_2 = Struct_1(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(func_3(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, global0.a.x)) + -250f))), var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), var_1.x, global0.d, abs(_wgslsmith_div_u32(global0.e, ~var_0.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_2.b, 149f, 496f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(495f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1242f))))), var_1.x, _wgslsmith_div_vec4_i32(-(vec4<i32>(-1i, u_input.a, global0.d.x, u_input.a) << (vec4<u32>(4294967295u, 10347u, 0u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(var_2.d, _wgslsmith_add_vec4_i32(-global0.d, max(vec4<i32>(-2147483647i, 1i, 9132i, -18534i), vec4<i32>(0i, var_2.d.x, global0.d.x, u_input.a))))), 1u);
    var_2 = Struct_1(var_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(step(-2211f, var_3.b)))))), global0.a.x, ~vec4<i32>(49441i << (var_2.e % 32u), reverseBits(1i), global0.d.x, _wgslsmith_div_i32(countOneBits(var_3.d.x), 1i)), var_0.x >> (global0.e % 32u));
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, global1.x, -1000f, -694f)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -595f), global0.b, var_2.b))), var_2.a), global1.x, _wgslsmith_f_op_f32(step(396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)))), -_wgslsmith_mod_vec4_i32(min(abs(vec4<i32>(global0.d.x, u_input.a, var_3.d.x, var_2.d.x)), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.d.x, -18882i, global0.d.x, -1749i), var_2.d)), var_2.d), _wgslsmith_clamp_u32(var_2.e, ~(var_0.x | var_2.e), min(global0.e, var_0.x) >> (select(var_3.e, var_3.e, false) % 32u)) ^ 48472u);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    let var_0 = any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), all(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true)))));
    var var_1 = global0.e;
    let var_2 = func_2();
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(-817f - _wgslsmith_f_op_f32(global1.x * 318f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b)))), vec4<i32>(_wgslsmith_sub_i32(1i, 36185i & (21161i & arg_1.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-4571i, -492i), vec2<i32>(-1i, arg_1.x)), _wgslsmith_div_i32(u_input.a, 13209i), 1i), var_2.e | ~33442u);
    var_1 = 35270u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(531f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1027f, global0.c)))) * -980f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1106f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.d.x, 0i, u_input.a, 4654i), global0.d), global0.d.x)), _wgslsmith_f_op_f32(global0.b + -290f), global1.x) - _wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(379f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, 476f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))), 2161f, countOneBits(max(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.d.x, -8841i, global0.d.x, 37251i), global0.d), global0.d) >> (max(~vec4<u32>(global0.e, 44335u, global0.e, 60052u), vec4<u32>(67248u, 1u, 4294967295u, 9085u) << (vec4<u32>(global0.e, 65497u, global0.e, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), reverseBits(global0.e));
    global0 = func_2();
    let var_0 = _wgslsmith_clamp_u32(~reverseBits(0u) << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, global0.e), 1u ^ global0.e) % 32u), abs(4294967295u) | func_2().e, 5209u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1292f, _wgslsmith_f_op_f32(-global1.x), -2213f, -1413f), global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0.c, global1.x, global1.x) + vec4<f32>(global1.x, 1199f, global1.x, 517f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, 1184f, -634f, 842f))) - global0.a))), _wgslsmith_f_op_f32(-global1.x), global1.x, global0.d, (abs(31073u) ^ ~(~var_0)) | ~(~26501u));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(var_1.a)), _wgslsmith_f_op_f32(-global0.c), var_1.a.x, _wgslsmith_sub_vec4_i32(global0.d << (firstLeadingBit(vec4<u32>(var_0, 1u, 4294967295u, 1u) ^ vec4<u32>(var_1.e, var_0, 1u, global0.e)) % vec4<u32>(32u)), max(global0.d, vec4<i32>(var_1.d.x, 1i, u_input.a, global0.d.x) >> (vec4<u32>(0u, var_0, 36524u, 66609u) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, -1i, 22201i) & var_1.d, -vec4<i32>(-35999i, global0.d.x, 38663i, u_input.a))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.e, var_1.e, var_0, var_1.e), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_0, var_0, global0.e), vec4<u32>(51534u, var_0, 4294967295u, var_1.e))), vec4<u32>(_wgslsmith_mult_u32(0u, var_0), global0.e, _wgslsmith_mod_u32(var_1.e, 112728u), ~1u)), ~4294967295u));
    var_1 = func_2();
    var var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(max(var_1.a.x, -275f)), _wgslsmith_div_f32(global1.x, var_1.b)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.b, -372f), _wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(-var_1.b)))));
}

