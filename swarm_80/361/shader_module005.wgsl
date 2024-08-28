struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_4(select(any(vec2<bool>(true, true)), !(firstTrailingBit(52053i) >= (u_input.b.x << (u_input.c.x % 32u))), true), Struct_3(-_wgslsmith_div_i32(~u_input.b.x, -u_input.b.x)));
    var_0 = Struct_4(var_0.a, var_0.b);
    var_0 = Struct_4(var_0.a, var_0.b);
    var var_1 = vec3<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x) >> (vec2<u32>(u_input.a, u_input.c.x) % vec2<u32>(32u)), vec2<u32>(4294967295u, 4294967295u)) == _wgslsmith_clamp_u32(u_input.a, u_input.a & u_input.c.x, 1202u & u_input.c.x)) | any(!select(vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, false, true), true)), true, select(any(!vec4<bool>(true, var_0.a, var_0.a, false)), all(!select(vec2<bool>(true, var_0.a), vec2<bool>(false, var_0.a), var_0.a)), false));
    let var_2 = select(all(vec2<bool>(!all(vec4<bool>(var_1.x, false, var_0.a, false)), any(vec3<bool>(true, var_0.a, false)))), !var_1.x, true);
    return Struct_3(31203i);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = Struct_3(firstLeadingBit(u_input.b.x));
    let var_1 = all(!vec3<bool>(any(vec4<bool>(true, true, false, true)), !any(vec2<bool>(true, false)), true));
    let var_2 = -u_input.b;
    let var_3 = select((_wgslsmith_mod_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, -6307i, var_2.x), vec3<i32>(-23545i, 56613i, var_0.a))) & u_input.b) & max(~vec3<i32>(2147483647i, -7734i, 45211i), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, arg_0, -1i), vec4<i32>(u_input.b.x, arg_0, 2147483647i, -31407i)), _wgslsmith_clamp_i32(-19734i, u_input.b.x, var_0.a))), -vec3<i32>(14643i, _wgslsmith_mult_i32(select(12421i, -14604i, var_1), _wgslsmith_add_i32(65610i, var_2.x)), 0i), vec3<bool>(false, any(vec3<bool>(true, true, true)), true));
    let var_4 = select(vec3<bool>(var_1, any(!select(vec4<bool>(false, false, false, true), vec4<bool>(var_1, true, true, var_1), var_1)), var_1), vec3<bool>(true || all(select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(true, true, var_1, var_1), vec4<bool>(false, var_1, var_1, var_1))), var_1, !(arg_0 == (var_0.a ^ arg_0))), select(!select(select(vec3<bool>(false, var_1, false), vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_1, true)), select(vec3<bool>(false, var_1, var_1), vec3<bool>(true, false, var_1), true), select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, true), var_1)), vec3<bool>(var_1, var_1, !(!var_1)), !vec3<bool>(any(vec3<bool>(true, var_1, false)), var_0.a < arg_0, var_1)));
    return !vec4<bool>(var_1, !any(select(var_4, vec3<bool>(var_4.x, var_4.x, false), var_4.x)), false, var_4.x);
}

fn func_1() -> i32 {
    let var_0 = func_2(i32(-1i) * -24141i);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-272f, -2135f, -244f, 472f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1075f, 1000f, 139f, -686f)), func_3(1i))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, _wgslsmith_f_op_f32(-1204f - 248f), _wgslsmith_f_op_f32(min(227f, 854f)), -1944f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1306f, 262f, -2766f, -1785f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, 966f, 1000f, 327f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(649f * -1186f), _wgslsmith_div_f32(-2169f, 688f), _wgslsmith_f_op_f32(select(1221f, -395f, true)), -1413f)))));
    var var_2 = _wgslsmith_mult_u32(~abs(u_input.a) ^ 831u, ~(~1u));
    var var_3 = select(true, true, true);
    let var_4 = u_input.c.zx;
    return i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-37872i, firstLeadingBit(-1i)), func_2(-54051i).a, 38278i | -u_input.b.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    var var_0 = Struct_1(u_input.b.yx, select(u_input.c.zz << (~abs(vec2<u32>(47106u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(arg_2, 13321u) << (firstTrailingBit(vec2<u32>(4294967295u, arg_2)) % vec2<u32>(32u)), true), -_wgslsmith_clamp_vec2_i32(u_input.b.yz, select(vec2<i32>(-56021i, 86693i), vec2<i32>(4901i, u_input.b.x), all(vec2<bool>(true, true))), min(vec2<i32>(1i, u_input.b.x) ^ vec2<i32>(-33751i, arg_1.a), vec2<i32>(u_input.b.x, -5241i))), _wgslsmith_clamp_u32(138120u ^ arg_2, 1u >> (arg_2 % 32u), firstLeadingBit(~firstTrailingBit(1u))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(762f, -336f) * arg_0.x), arg_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(136f * _wgslsmith_f_op_f32(select(956f, 1464f, false))), _wgslsmith_f_op_f32(arg_0.x + arg_0.x))))));
    var var_2 = select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, false, true), true, !any(vec4<bool>(false, false, true, false)), select(all(vec4<bool>(false, true, true, true)), true, any(vec4<bool>(false, true, true, true)))), !vec4<bool>(false, arg_1.a != var_0.a.x, false, true)), vec4<bool>(any(vec3<bool>(23691u < u_input.c.x, true, any(vec4<bool>(false, false, false, false)))), -10493i > arg_1.a, !any(vec3<bool>(true, true, true)), true), any(vec3<bool>(true, func_3(var_0.c.x).x, true)));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(102f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-712f + 288f)), var_1.x)));
    var_2 = !(!(!select(!vec4<bool>(var_2.x, var_2.x, false, true), !vec4<bool>(false, true, true, var_2.x), any(vec4<bool>(var_2.x, true, var_2.x, true)))));
    return Struct_4(var_2.x, func_2(_wgslsmith_sub_i32(_wgslsmith_add_i32(65053i, ~1i), arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(451f, 896f, -436f, -345f) - _wgslsmith_div_vec4_f32(vec4<f32>(-576f, 832f, -1323f, 1587f), vec4<f32>(1000f, -742f, 1909f, 528f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-446f, -1246f, -711f, 831f) * vec4<f32>(-582f, -413f, -1435f, -434f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-885f, -697f, -1000f, 1320f)))))), Struct_3(func_1() | _wgslsmith_div_i32(~u_input.b.x, 2147483647i)), _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.c.x), vec2<u32>(67133u, 1u)), ~u_input.c.xx)) ^ _wgslsmith_sub_u32(1u, ~u_input.c.x));
    var var_1 = var_0.a;
    var var_2 = Struct_4(true, var_0.b);
    let var_3 = -1i;
    let var_4 = Struct_1(u_input.b.yy, ~(~(~u_input.c.yz)), _wgslsmith_div_vec2_i32(max(u_input.b.xy, vec2<i32>(-1i) * -vec2<i32>(var_2.b.a, var_3)), reverseBits(reverseBits(select(u_input.b.yx, u_input.b.xy, var_2.a)))), ~firstTrailingBit(u_input.a));
    var_1 = var_2.a;
    var_2 = func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1054f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(516f)), 1f, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1563f)))), var_2.b, _wgslsmith_mult_u32(~(~abs(u_input.a)), _wgslsmith_sub_u32(~u_input.c.x, 1u)));
    var_2 = Struct_4(false || var_0.a, Struct_3(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.b.a, -1i >> (var_4.b.x % 32u)), _wgslsmith_sub_i32(_wgslsmith_add_i32(33655i, 0i), _wgslsmith_add_i32(45114i, var_4.c.x)))));
    var var_5 = -2121f;
    let x = u_input.a;
    s_output = StorageBuffer(33485u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -461f))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1808f, -236f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-867f))), _wgslsmith_f_op_f32(f32(-1f) * -354f)))));
}

