struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), true, vec4<u32>(71882u, 9186u, 84447u, 63002u), vec4<i32>(2147483647i, -12047i, -2018i, -6921i), vec2<i32>(1i, -15344i));

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = global1.d;
    global0 = Struct_1(global1.a, all(vec2<bool>(true, global0.b)), vec4<u32>(global0.c.x, global0.c.x, abs(max(41718u & global1.c.x, firstLeadingBit(4294967295u))), ~max(~global1.c.x, 283u)), arg_0.d, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, firstTrailingBit(0i)), vec2<i32>(22006i, global0.d.x)));
    var_0 = arg_0.d;
    global1 = Struct_1(vec4<bool>(!any(vec2<bool>(true, global0.a.x)), any(select(select(vec3<bool>(false, true, arg_0.a.x), vec3<bool>(true, global1.a.x, true), vec3<bool>(global1.a.x, arg_0.a.x, false)), select(vec3<bool>(global1.a.x, true, global1.a.x), arg_0.a.zzw, global1.a.www), !global1.b)), false, arg_0.b), false, ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(global1.c.x, arg_0.c.x, u_input.c, u_input.c), arg_0.c))), vec4<i32>(arg_0.d.x, -13956i, 2147483647i, 39398i), max(_wgslsmith_div_vec2_i32(arg_0.d.zz, abs(select(vec2<i32>(var_0.x, u_input.b), vec2<i32>(u_input.b, -1i), true))), _wgslsmith_add_vec2_i32(global1.e, vec2<i32>(1i, u_input.b))));
    global1 = Struct_1(!vec4<bool>(false, select(all(arg_0.a), all(vec2<bool>(true, arg_0.a.x)), arg_0.a.x), all(vec3<bool>(false, arg_0.b, false)) || (var_0.x >= 2147483647i), !(global0.c.x > 4294967295u)), !(!(2147483647i >= _wgslsmith_dot_vec4_i32(vec4<i32>(1552i, u_input.b, -2147483647i, 37414i), vec4<i32>(var_0.x, 0i, global1.e.x, global0.d.x)))), abs(vec4<u32>(arg_0.c.x, ~firstTrailingBit(u_input.c), ~_wgslsmith_sub_u32(global1.c.x, 38915u), firstTrailingBit(~57712u))), min(vec4<i32>(_wgslsmith_mult_i32(countOneBits(arg_0.e.x), i32(-1i) * -1i), arg_0.e.x | firstLeadingBit(-1i), global1.d.x, global0.d.x), reverseBits(~(-arg_0.d))), ~select(~vec2<i32>(global0.d.x, global0.e.x), (global0.e | vec2<i32>(var_0.x, 62370i)) >> (max(arg_0.c.xw, vec2<u32>(0u, arg_0.c.x)) % vec2<u32>(32u)), any(!vec4<bool>(true, false, arg_0.a.x, false))));
    return ~arg_0.c;
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_1(!vec4<bool>(!global0.a.x | true, true, any(global0.a.yxx) || false, any(vec4<bool>(true, true, true, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-924f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2423f, -1335f))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(128012u, global0.c.x), reverseBits(global0.c.x), max(0u, global0.c.x), ~global1.c.x) >> (func_3(Struct_1(vec4<bool>(true, global1.b, false, true), global0.b, vec4<u32>(37877u, 26855u, 0u, global1.c.x), vec4<i32>(2147483647i, arg_1, 0i, -2147483647i), global0.d.yy), vec4<f32>(325f, -1264f, 210f, -1924f)) % vec4<u32>(32u)), vec4<u32>(1u, u_input.a.x, ~(~3369u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(13771u, 0u, 0u, global0.c.x)), vec4<u32>(u_input.a.x, 4294967295u, global1.c.x, 0u) >> (vec4<u32>(global0.c.x, u_input.a.x, 1u, global1.c.x) % vec4<u32>(32u))))), max(global0.d, abs(-global1.d)), global1.e);
    var var_1 = !global1.a.wyx;
    var var_2 = var_0;
    let var_3 = Struct_1(global1.a, true, vec4<u32>(min(1u, firstLeadingBit(var_0.c.x) >> (11588u % 32u)), ~var_2.c.x, global0.c.x, ~(var_0.c.x & ~global1.c.x)), -vec4<i32>(_wgslsmith_div_i32(-1i, arg_1) << (firstLeadingBit(var_2.c.x) % 32u), 1i, abs(~var_2.d.x), -_wgslsmith_sub_i32(arg_0, u_input.b)), vec2<i32>(_wgslsmith_dot_vec4_i32(var_2.d, (vec4<i32>(1i, -1i, arg_0, arg_1) >> (vec4<u32>(18042u, global1.c.x, global0.c.x, var_0.c.x) % vec4<u32>(32u))) | -global0.d), 1i));
    var_1 = vec3<bool>(any(var_1.zz), true, global1.b);
    return var_2.a;
}

fn func_1() -> vec4<bool> {
    let var_0 = any(vec4<bool>(true, select(all(func_2(-2147483647i, u_input.b)), global0.b & (global1.a.x & false), !any(vec3<bool>(false, true, false))), any(global0.a.zw), false));
    var var_1 = ~0u;
    let var_2 = 2147483647i;
    global1 = Struct_1(global0.a, !(true && (!global0.b | true)), ~_wgslsmith_add_vec4_u32(global0.c, ~countOneBits(global1.c)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-9758i, global1.e.x, -1i, 0i), global0.d) ^ min(global0.d, global0.d)) ^ global0.d, global1.d.yx);
    var var_3 = vec2<bool>(var_0, false);
    return !vec4<bool>(global1.b, global1.a.x, true, select(true, any(select(vec2<bool>(false, true), global1.a.yy, false)), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec4<bool>(false, global1.a.x, all(select(global1.a.wy, select(global1.a.yw, vec2<bool>(false, global1.a.x), vec2<bool>(false, global0.b)), false)), !((global1.b && global1.b) == !global0.b)), !any(func_1()), global0.c, global0.d ^ firstTrailingBit(select(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.d.x, u_input.b, global0.e.x, -1i), global1.d), _wgslsmith_mod_vec4_i32(global1.d, global1.d), any(global0.a.zx))), global1.d.xy);
    let var_0 = vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1053f) * _wgslsmith_f_op_f32(floor(-1854f))), _wgslsmith_f_op_f32(1000f * 1f)) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-935f, 492f)))), global0.c.x >= 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1757f, -357f, global1.a.x)) * _wgslsmith_f_op_f32(min(493f, 289f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-438f)) + _wgslsmith_f_op_f32(step(-181f, 1430f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(592f, 320f) + -1000f)));
    let var_1 = all(func_1().yy);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(741f, 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(956f, -202f, global1.a.x)))))), -598f);
    var var_3 = Struct_1(vec4<bool>(!all(vec4<bool>(false, var_0.x, var_0.x, false)), var_0.x, var_0.x, any(func_1().ywy)), true, ~(vec4<u32>(~4294967295u, global0.c.x, _wgslsmith_clamp_u32(global0.c.x, u_input.c, 0u), 0u) >> (_wgslsmith_mod_vec4_u32(~global1.c, global1.c) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(global0.d | vec4<i32>(1i, i32(-1i) * -1i, global0.d.x, global1.e.x), firstLeadingBit(_wgslsmith_mod_vec4_i32(global1.d, vec4<i32>(u_input.b, -4529i, u_input.b, global1.d.x)) & ~vec4<i32>(-2147483647i, -1i, global0.d.x, 0i))), global1.e);
    let var_4 = Struct_1(var_0, all(vec3<bool>(any(func_2(global0.e.x, -29992i)), global1.b, any(global1.a.wzz) || true)), select(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(45410u, 107507u, 4294967295u, var_3.c.x), vec4<u32>(4294967295u, global0.c.x, var_3.c.x, u_input.c), var_3.c)), ~(~(vec4<u32>(0u, global1.c.x, 3818u, 0u) ^ global0.c)), vec4<bool>(var_0.x, select(!global0.a.x, any(vec4<bool>(var_0.x, false, true, var_1)), global0.a.x), select(1i <= global1.d.x, var_3.b, !global0.b), global0.b)), vec4<i32>((~var_3.e.x ^ -2147483647i) << (~u_input.c % 32u), 38883i, 25656i, ~global0.d.x), vec2<i32>(abs(1i), 2147483647i));
    let var_5 = 0u;
    let var_6 = var_0.x;
    let var_7 = select(false, global0.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(279f, -124f) + vec2<f32>(1000f, 2405f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(581f, -1000f), vec2<f32>(320f, -303f), global1.a.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 258f)))))));
}

