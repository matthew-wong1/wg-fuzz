struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1082f, 1324f, arg_2, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, 879f, arg_2, arg_1.c)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -454f, -681f, arg_1.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c, 375f, -1173f, arg_1.b.x), vec4<f32>(258f, -1000f, 1216f, arg_2), vec4<bool>(true, true, arg_1.d.x, false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-218f, arg_2, 209f, -1115f) * vec4<f32>(2338f, arg_2, 1088f, -1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_2), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f * arg_1.b.x)) * arg_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1003f)) + 838f)));
    let var_1 = _wgslsmith_div_f32(-1628f, arg_1.a.x);
    let var_2 = var_0;
    var var_3 = 4294967295u;
    var_3 = ~22081u;
    return true;
}

fn func_3(arg_0: vec2<u32>) -> vec2<f32> {
    let var_0 = -_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a << (56506u % 32u), u_input.a, firstTrailingBit(u_input.a))), ~select(_wgslsmith_div_vec3_i32(vec3<i32>(30126i, 1i, u_input.b), vec3<i32>(u_input.a, 0i, 2147483647i)), max(vec3<i32>(33881i, u_input.a, 2147483647i), vec3<i32>(-2147483647i, u_input.a, u_input.a)), true));
    let var_1 = vec2<u32>(arg_0.x, select(arg_0.x, _wgslsmith_add_u32(min(4294967295u, 56782u), ~arg_0.x) | abs(1u), true));
    let var_2 = vec4<i32>(0i, u_input.b, _wgslsmith_div_i32(reverseBits(abs(_wgslsmith_mod_i32(u_input.b, var_0.x))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.x, -33741i, ~var_0.x), countOneBits(~u_input.a))), -_wgslsmith_add_i32(var_0.x, -2147483647i));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(793f, -1699f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1933f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1246f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1464f, 633f, -1000f) + vec3<f32>(-1294f, 626f, 1916f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1370f, -179f, -1266f))))) + vec3<f32>(-882f, -1676f, _wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_4 = vec4<f32>(-235f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-621f, _wgslsmith_f_op_f32(1511f + -772f))), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(floor(var_3.x))), true)), var_3.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_div_f32(-577f, _wgslsmith_f_op_f32(var_3.x + 234f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(951f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)))));
    return vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), var_3.x))));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = -868f;
    var var_1 = any(vec4<bool>(true, select(true || (u_input.b <= -1i), false, true && func_2(u_input.b, Struct_1(vec2<f32>(-233f, arg_0), vec2<f32>(-1000f, arg_0), arg_0, vec2<bool>(false, false)), -1278f)), true, arg_0 > arg_0));
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(firstLeadingBit(~vec2<u32>(1u, 50799u)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(arg_0, 206f), -462f)))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1784f - 419f) + arg_0)))), arg_0, select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, true)));
    let var_3 = 10224u;
    var_1 = !var_2.d.x;
    return _wgslsmith_clamp_u32(~0u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, var_3) & _wgslsmith_mod_u32(var_3, 28962u), var_3), 56324u), ~var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), true), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), func_1(-486f) >= 58893u), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true));
    let var_1 = select(~(~vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_clamp_u32(5555u, 1u, 4294967295u)), ~select(vec2<u32>(39333u, 1u), vec2<u32>(19689u, 39476u), true)), ~(~vec2<u32>(1u, 0u))), all(vec4<bool>(var_0.x, false, true, u_input.a <= -u_input.b)));
    var var_2 = var_1.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -1139f)), -394f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(2055f)), 1000f), vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, -617f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1561f, -311f) * vec2<f32>(236f, 522f)) + vec2<f32>(712f, 589f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(422f))), vec2<bool>(!any(!vec2<bool>(true, var_0.x)), func_2(-11119i, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(979f, -1565f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(619f, -1000f), vec2<f32>(229f, -470f))), _wgslsmith_f_op_f32(abs(189f)), var_0.yy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(456f, 2241f)), 110f))));
    var var_4 = Struct_1(var_3.a, _wgslsmith_f_op_vec2_f32(var_3.a - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(478f, var_3.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(115f, var_3.c) + vec2<f32>(-112f, var_3.b.x)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.a.x, 1792f)))), true))), _wgslsmith_f_op_f32(f32(-1f) * -1644f), select(!var_0.zx, select(var_0.zx, !vec2<bool>(var_3.d.x, var_0.x), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(9082i & u_input.a) << (var_1.x % 32u), -_wgslsmith_sub_i32(2147483647i, ~u_input.b), _wgslsmith_mod_i32(-_wgslsmith_sub_i32(u_input.b, u_input.b), countOneBits(_wgslsmith_sub_i32(u_input.a, 624i))), select(_wgslsmith_mod_i32(abs(2147483647i), max(6375i, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 5615i) | vec2<i32>(1i, u_input.a), min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.a))), false)), ~(~vec4<i32>(u_input.a << (var_1.x % 32u), firstTrailingBit(-1i), u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.a), vec3<i32>(6874i, 0i, u_input.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_4.b.x)), _wgslsmith_div_f32(var_3.b.x, var_3.a.x), true))))), -973i);
}

