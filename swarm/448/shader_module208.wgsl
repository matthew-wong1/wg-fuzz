struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<f32> {
    global0 = Struct_1(min(_wgslsmith_add_u32(~global0.e, ~_wgslsmith_clamp_u32(global0.e, 51282u, 11317u)), ~u_input.c), -12738i, -34603i, _wgslsmith_f_op_vec4_f32(select(global0.d, global0.d, any(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)))), 81271u);
    let var_0 = ~(~_wgslsmith_mod_i32(global0.b, _wgslsmith_div_i32(reverseBits(-18106i), _wgslsmith_mult_i32(global0.b, 1i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - -1393f)))) * _wgslsmith_f_op_f32(floor(global0.d.x))));
    var_1 = global0.d.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1275f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1873f)))));
    return _wgslsmith_f_op_vec2_f32(-global0.d.zy);
}

fn func_2(arg_0: i32, arg_1: u32) -> bool {
    global0 = Struct_1(global0.a, ~0i, global0.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(-global0.d.x), 1235f, _wgslsmith_f_op_f32(ceil(-153f))) + global0.d))), u_input.c);
    global0 = Struct_1(_wgslsmith_mod_u32(44743u, global0.a), -2147483647i, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-20069i, 1i) ^ u_input.d.zz, vec2<i32>(40045i, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d)), _wgslsmith_clamp_u32(0u, 7282u, arg_1));
    let var_0 = Struct_1(~(abs(_wgslsmith_mod_u32(20722u, 34811u)) & u_input.a), u_input.b, arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, -255f, -449f, 1651f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-165f, 2437f, -921f, global0.d.x) - global0.d))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(580f, global0.d.x, global0.d.x, 207f))) * global0.d)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-702f, global0.d.x, -746f, -847f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global0.d, vec4<f32>(674f, -245f, global0.d.x, global0.d.x))))))), ~1u);
    var var_1 = u_input.d.zx;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d.x), global0.d.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-152f, 1000f) + global0.d.yy) * _wgslsmith_f_op_vec2_f32(func_3()))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.d.xw, var_0.d.zy)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, global0.d.x), global0.d.xz))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.d.ww)) - _wgslsmith_f_op_vec2_f32(var_0.d.yy + global0.d.yw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d.ww * vec2<f32>(408f, 438f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(772f, global0.d.x))))))));
    return select(false, any(vec3<bool>(true, any(vec2<bool>(true, true)), true)) || !(firstTrailingBit(-12411i) < min(var_1.x, global0.b)), true);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = 4294967295u;
    var var_1 = func_2(arg_1.x, u_input.a);
    var var_2 = abs(countOneBits(arg_1.wwx));
    let var_3 = var_2.yy;
    var_2 = vec3<i32>(-1i, var_3.x, 2147483647i);
    return ~vec4<u32>(var_0, min(var_0, 71715u), ~u_input.a, _wgslsmith_clamp_u32(~(var_0 << (global0.e % 32u)), 0u, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(select(true, true, global0.e > reverseBits(~global0.e)), true, true);
    let var_1 = ~_wgslsmith_mult_vec4_u32(firstLeadingBit(func_1(1000f, vec4<i32>(global0.c, 1i, global0.c, global0.b)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 26305u, u_input.a, u_input.c), vec4<u32>(u_input.a, 37825u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(select(~vec4<u32>(global0.a, u_input.a, 1u, global0.a), vec4<u32>(u_input.a, 1u, 0u, global0.a) >> (vec4<u32>(u_input.a, 4294967295u, global0.e, global0.e) % vec4<u32>(32u)), true), ~(~vec4<u32>(u_input.c, 4294967295u, 0u, global0.e))));
    let var_2 = Struct_1(~(~1u), _wgslsmith_div_i32(u_input.b, 2147483647i), global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d * vec4<f32>(-1136f, _wgslsmith_f_op_f32(abs(global0.d.x)), _wgslsmith_f_op_f32(ceil(global0.d.x)), -217f))), 12941u);
    global0 = var_2;
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 31072u, firstLeadingBit(_wgslsmith_div_u32(global0.a >> (0u % 32u), global0.e))), _wgslsmith_div_vec3_u32(vec3<u32>(~0u, 130096u, var_1.x ^ 0u), ~var_1.wxw));
    global0 = var_2;
    var var_4 = var_2;
    let var_5 = select(!select(vec4<bool>(true != var_0.x, func_2(-15829i, 4294967295u), var_2.b > -1i, any(vec2<bool>(false, true))), !select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, false, var_0.x, var_0.x)), all(!vec2<bool>(var_0.x, var_0.x))), select(!(!(!vec4<bool>(true, var_0.x, true, false))), select(select(!vec4<bool>(var_0.x, var_0.x, false, true), !vec4<bool>(var_0.x, var_0.x, true, false), !vec4<bool>(false, var_0.x, false, false)), vec4<bool>(true, var_4.b >= 1i, var_0.x, true), vec4<bool>(true, func_2(var_2.b, var_2.a), true, false)), true), vec4<bool>(true, false, !var_0.x & func_2(var_4.b, ~global0.e), func_2(_wgslsmith_add_i32(_wgslsmith_add_i32(-9943i, var_4.c), min(-6173i, u_input.b)), 4294967295u)));
    var var_6 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1533f, -649f, global0.d.x, -144f) + vec4<f32>(-668f, global0.d.x, 333f, -1086f)) - var_2.d) * _wgslsmith_f_op_vec4_f32(ceil(var_4.d)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(var_1.yyz, var_1.ywx)), ~_wgslsmith_div_vec2_u32(var_1.wx, vec2<u32>(4294967295u, 4294967295u)))));
}

