struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(61904u, u_input.b.x), u_input.b.yy) & vec2<u32>(~u_input.c.x, u_input.d.x | 1u), abs(~_wgslsmith_div_vec2_u32(u_input.d.xx, u_input.d.yz))));
    var_0 = Struct_2(~var_0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0);
    let var_2 = Struct_3(_wgslsmith_clamp_u32(3734u, 45590u, abs(1u)), Struct_2(~countOneBits(4294967295u) >> (var_0.a % 32u)), any(vec3<bool>(true, (1u == var_0.a) & true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))))), arg_0, Struct_2(~u_input.c.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-827f, var_1.x))), var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(step(arg_0.x, 214f)))))));
    return _wgslsmith_add_vec3_u32(u_input.d, u_input.d) & _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.d, ~vec3<u32>(var_0.a, 1u, 13372u), _wgslsmith_div_vec3_u32(u_input.d, _wgslsmith_clamp_vec3_u32(u_input.b.zzw, u_input.d, u_input.d))), u_input.d);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> u32 {
    var var_0 = min(34884u, arg_1.b.a);
    var_0 = arg_1.a << (_wgslsmith_dot_vec3_u32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d))), vec3<u32>(abs(1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(25445u, 4294967295u, 26356u)), vec3<u32>(1u, u_input.b.x, u_input.d.x) ^ vec3<u32>(1u, u_input.d.x, arg_1.b.a)), arg_1.a)) % 32u);
    let var_1 = arg_0.x;
    var var_2 = -568f;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(-1072f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -727f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1105f)))), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(414f, -517f, arg_1.d.x, 1127f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(288f, arg_1.d.x, arg_1.d.x, 1769f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(245f, arg_1.d.x, arg_1.d.x, arg_0.x), vec4<f32>(-457f, arg_1.d.x, 741f, 424f))), true)))))));
    return arg_1.b.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2) -> bool {
    var var_0 = u_input.b.x;
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d.yz)), arg_0) >> (~4294967295u % 32u);
    var_0 = countOneBits(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.d.x, 4294967295u, u_input.b.x), abs(88834u)), ~(arg_0.b.a | u_input.c.x), 1u));
    let var_1 = Struct_3(abs(max(arg_2.a, firstLeadingBit(1u))), Struct_2(_wgslsmith_mult_u32(arg_0.b.a, 0u)), !arg_0.c, _wgslsmith_f_op_vec3_f32(floor(arg_0.d)), arg_2);
    var_0 = ~abs(var_1.b.a);
    return true;
}

fn func_1(arg_0: f32) -> vec3<f32> {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = select(!(!vec4<bool>(var_0.x, !var_0.x, false, any(vec3<bool>(var_0.x, var_0.x, var_0.x)))), vec4<bool>(func_4(Struct_3(~5627u, Struct_2(65579u), arg_0 <= 683f, vec3<f32>(arg_0, arg_0, -1348f), Struct_2(17013u)), ~(-vec4<i32>(u_input.e, u_input.a, u_input.e, u_input.a)), Struct_2(func_2(vec2<f32>(arg_0, arg_0), Struct_3(39735u, Struct_2(28509u), true, vec3<f32>(arg_0, 1514f, arg_0), Struct_2(u_input.b.x))))), var_0.x, var_0.x, var_0.x), any(!vec3<bool>(u_input.b.x == 1u, func_4(Struct_3(u_input.d.x, Struct_2(u_input.d.x), var_0.x, vec3<f32>(arg_0, arg_0, -669f), Struct_2(1u)), vec4<i32>(1i, -43321i, u_input.e, u_input.e), Struct_2(u_input.c.x)), any(vec3<bool>(false, true, false)))));
    var_0 = !(!vec4<bool>(_wgslsmith_clamp_i32(0i, u_input.e, -87462i) <= _wgslsmith_mult_i32(-76963i, -1i), true, true, !(false | var_0.x)));
    var_0 = vec4<bool>(all(select(var_0.yyx, var_0.xxx, all(!vec2<bool>(false, var_0.x)))), !var_0.x, var_0.x, !select(true & var_0.x, true, all(var_0.xxz)));
    var var_1 = -(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(23698i, u_input.e, u_input.e, u_input.e), -vec4<i32>(u_input.a, -11267i, u_input.e, 2147483647i)), select(vec4<i32>(1i, u_input.e, -25878i, u_input.a), vec4<i32>(u_input.a, -2147483647i, -42169i, u_input.e), false) << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 0u, u_input.c.x), u_input.b) % vec4<u32>(32u))) | -select(u_input.a, ~(-4076i), all(var_0.xzw)));
    return vec3<f32>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(893f - arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), arg_0), all(select(vec2<bool>(true, var_0.x), var_0.xy, vec2<bool>(var_0.x, false))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(-1762f))))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = u_input.d.x;
    var_0 = u_input.c.x;
    var_0 = _wgslsmith_mult_u32(1u, 5121u);
    let var_1 = Struct_3(firstLeadingBit(_wgslsmith_add_u32(max(23514u, 1u), _wgslsmith_div_u32(~14403u, func_2(vec2<f32>(198f, arg_1.d.x), Struct_3(4294967295u, arg_1.b, true, arg_1.d, Struct_2(72360u)))))), arg_1.e, arg_1.c, arg_0.a, Struct_2(arg_1.a));
    let var_2 = vec3<i32>(u_input.e, u_input.e, u_input.e);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1588f) - _wgslsmith_f_op_f32(f32(-1f) * -299f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(1000f)), vec3<f32>(-193f, 426f, 2109f)), -245f), Struct_3(u_input.c.x, Struct_2(countOneBits(1u)), func_4(Struct_3(u_input.d.x, Struct_2(0u), true, vec3<f32>(-1462f, 148f, -417f), Struct_2(1u)), ~vec4<i32>(u_input.e, -1i, -2147483647i, u_input.a), Struct_2(1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1705f, -569f)), Struct_2(u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1053f, 1655f, 182f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -262f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-296f, 260f, -634f))), _wgslsmith_div_f32(-1000f, 709f)), Struct_3(u_input.c.x, Struct_2(u_input.d.x), true, vec3<f32>(1f, 1f, 1f), Struct_2(u_input.d.x)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(350f, -265f, -1187f))), _wgslsmith_f_op_vec3_f32(func_1(1000f)).x))).x)));
    let var_2 = Struct_2(~u_input.d.x);
    let var_3 = vec2<i32>(-15575i, u_input.e) | vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.e << (var_2.a % 32u), u_input.e | u_input.a), _wgslsmith_add_i32(u_input.e, u_input.a) ^ ~u_input.a), u_input.e);
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec3<i32>(u_input.e, _wgslsmith_div_i32(abs(min(u_input.e, -1i)), max(-1i, u_input.e)), -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)));
}

