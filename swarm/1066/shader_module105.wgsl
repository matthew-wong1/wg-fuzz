struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1470f, 270f, 1778f, 669f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_3) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -370f, -1580f, -623f) * vec4<f32>(-632f, arg_2.a.a.b.x, 434f, arg_2.a.c.x)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(522f, arg_2.a.a.b.x, -437f, -828f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, arg_2.a.a.b.x, 1350f, 166f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1039f, -2187f, 814f, global0.x) * vec4<f32>(arg_2.a.c.x, -631f, global0.x, -591f))), vec4<bool>(all(arg_1), false, arg_1.x, any(vec2<bool>(arg_2.a.a.a, arg_1.x)))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_2.a.a.b.x, arg_2.a.a.b.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(399f - global0.x), _wgslsmith_f_op_f32(-657f + global0.x), _wgslsmith_f_op_f32(-arg_2.a.b), _wgslsmith_f_op_f32(global0.x * -1105f))))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a.c.x) > arg_2.a.c.x, vec2<f32>(_wgslsmith_f_op_f32(-896f * arg_2.a.a.b.x), _wgslsmith_f_op_f32(sign(global0.x))));
    return vec3<i32>(u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(0u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 16348u), vec3<u32>(90229u, 1u, 4294967295u)), 1u), firstLeadingBit(select(vec3<u32>(1u, 1u, 17399u), vec3<u32>(0u, 15489u, 55387u), false))) % 32u), ~_wgslsmith_clamp_i32(-min(u_input.a, 27044i), _wgslsmith_clamp_i32(arg_2.b, u_input.a, -1i), ~(i32(-1i) * -1i)), -u_input.a);
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_add_u32(~(~0u), _wgslsmith_div_u32(_wgslsmith_add_u32(28324u, 35576u), _wgslsmith_clamp_u32(~(~48118u), ~(~9751u), ~(~1u))));
    let var_1 = true;
    var var_2 = u_input.a >> (reverseBits(_wgslsmith_mult_u32(~reverseBits(1u), _wgslsmith_clamp_u32(var_0, var_0, var_0) ^ var_0)) % 32u);
    var var_3 = vec3<bool>(var_1, ~var_0 == var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -1223f)) - -1024f)) != global0.x);
    let var_4 = 0i <= abs(u_input.a);
    return _wgslsmith_mult_vec3_i32(select(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 78377i) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(var_0, 4294967295u, 30031u)) % vec3<u32>(32u)), select(vec3<i32>(-2147483647i, -2147483647i, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<bool>(false, var_3.x, var_4)) ^ abs(vec3<i32>(u_input.a, 36463i, u_input.a))), func_3(select(vec2<bool>(var_4, true), !var_3.yx, !vec2<bool>(var_3.x, var_4)), select(var_3.zx, var_3.xy, true), Struct_3(Struct_2(Struct_1(var_1, vec2<f32>(global0.x, global0.x)), global0.x, vec2<f32>(global0.x, global0.x)), -6572i)), (var_0 > var_0) || true), reverseBits(vec3<i32>(~(u_input.a << (75643u % 32u)), ~(u_input.a & u_input.a), u_input.a)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_mult_vec3_i32(select(vec3<i32>(0i | _wgslsmith_mod_i32(u_input.a, u_input.a), -1i, 2147483647i), max(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_3.b, 2147483647i), vec3<i32>(15439i, u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.b, u_input.a, u_input.a), vec3<i32>(-2147483647i, 52088i, u_input.a))), select(vec3<i32>(arg_3.b, 1i, -30005i), vec3<i32>(u_input.a, u_input.a, -1i), vec3<bool>(false, arg_3.a.a.a, arg_2)) | _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_3.b), vec3<i32>(0i, arg_3.b, -19072i))), true), ~(vec3<i32>(1i, 1i, 1i) & ~(-vec3<i32>(arg_3.b, -18272i, u_input.a))));
    var_0 = abs(~(vec3<i32>(-5675i, -28834i, var_0.x) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, u_input.a, -16016i))) ^ _wgslsmith_mod_vec3_i32(func_2(), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(30903i, arg_3.b, u_input.a), vec3<i32>(u_input.a, var_0.x, 1i)))));
    let var_1 = Struct_2(arg_3.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-arg_3.a.a.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -206f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(floor(-1344f)))))), _wgslsmith_f_op_vec2_f32(global0.wy - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_0)))));
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(48176u, 0u), ~44398u);
    let var_3 = Struct_2(arg_3.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2048f, -865f), _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_div_vec2_f32(global0.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-654f, arg_0) - vec2<f32>(var_1.c.x, var_1.c.x)))) + vec2<f32>(572f, arg_0))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1878f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - -832f), -294f, var_1.a.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, 345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.x, vec2<f32>(384f, -800f), true, Struct_3(Struct_2(Struct_1(true, vec2<f32>(1191f, global0.x)), 1000f, vec2<f32>(127f, global0.x)), 0i))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 836f, true)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-438f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-174f)))), -701f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(1594f, global0.x, 1000f, global0.x), true))))))));
    let var_0 = Struct_3(Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yz * vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-597f - _wgslsmith_f_op_f32(global0.x + 1304f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x)), -72816i);
    let var_1 = all(!(!select(select(vec3<bool>(false, true, var_0.a.a.a), vec3<bool>(var_0.a.a.a, false, false), vec3<bool>(var_0.a.a.a, false, var_0.a.a.a)), select(vec3<bool>(var_0.a.a.a, false, var_0.a.a.a), vec3<bool>(true, var_0.a.a.a, false), var_0.a.a.a), select(vec3<bool>(var_0.a.a.a, false, false), vec3<bool>(true, var_0.a.a.a, var_0.a.a.a), vec3<bool>(false, false, var_0.a.a.a)))));
    let var_2 = _wgslsmith_mult_vec3_i32(func_3(vec2<bool>(var_1, true), select(vec2<bool>(var_1, true), !vec2<bool>(var_0.a.a.a, var_0.a.a.a), !var_0.a.a.a), Struct_3(var_0.a, -13412i)) | -vec3<i32>(~1i, ~0i, ~(-27813i)), _wgslsmith_add_vec3_i32(func_3(!vec2<bool>(var_0.a.a.a, var_1), !select(vec2<bool>(true, var_0.a.a.a), vec2<bool>(var_0.a.a.a, true), vec2<bool>(false, var_1)), var_0), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, var_0.b, var_0.b)) >> (~vec3<u32>(75340u, 70821u, 1u) % vec3<u32>(32u)), vec3<i32>(2147483647i, u_input.a, var_0.b | -1i), ~func_2())));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(abs(-855f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-118f)) * var_0.a.b), -633f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-258f - var_0.a.a.b.x) - var_0.a.c.x)))));
    let var_3 = var_0.a.a.a | (var_1 || ((global0.x > _wgslsmith_div_f32(var_0.a.b, 780f)) & all(!vec4<bool>(true, var_0.a.a.a, var_1, false))));
    var var_4 = 4294967295u;
    var_4 = abs(1u);
    var var_5 = !select(!(!(!vec3<bool>(var_3, var_0.a.a.a, true))), select(vec3<bool>(true, any(vec2<bool>(var_0.a.a.a, var_0.a.a.a)), var_0.a.a.a), vec3<bool>(true, true, !var_0.a.a.a), select(select(vec3<bool>(false, var_1, true), vec3<bool>(var_0.a.a.a, var_3, var_3), var_1), vec3<bool>(true, true, false), vec3<bool>(var_3, var_3, true))), select(select(!vec3<bool>(true, false, var_3), select(vec3<bool>(var_1, var_1, var_0.a.a.a), vec3<bool>(var_3, var_3, var_3), var_1), select(vec3<bool>(true, true, var_0.a.a.a), vec3<bool>(var_3, var_1, true), var_1)), select(vec3<bool>(false, false, var_0.a.a.a), select(vec3<bool>(true, var_0.a.a.a, false), vec3<bool>(true, var_1, true), vec3<bool>(var_1, true, true)), all(vec2<bool>(false, var_1))), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1000f, vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(u_input.a), -u_input.a) | (firstTrailingBit(u_input.a) << (1u % 32u)), var_0.b, u_input.a));
}

