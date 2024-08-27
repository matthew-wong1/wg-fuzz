struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32> = vec4<u32>(1u, 23360u, 50443u, 4294967295u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<bool>) -> bool {
    let var_0 = 0i;
    let var_1 = Struct_2(arg_0, all(arg_1), true, arg_1.x & !select(all(arg_1.wxz), all(arg_3), arg_2 < -690f));
    global0 = _wgslsmith_div_i32(i32(-1i) * -firstTrailingBit(~(-2147483647i)), ~_wgslsmith_mod_i32(select(countOneBits(var_1.a.c), 2537i, true), 22692i));
    var var_2 = -11424i;
    let var_3 = -206f;
    return (arg_0.c >= -1i) & arg_3.x;
}

fn func_4(arg_0: bool) -> i32 {
    let var_0 = Struct_1(vec4<u32>(~(~(~global1.x)), u_input.b, min(_wgslsmith_div_u32(u_input.b, 5223u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 30283u, global1.x), vec4<u32>(40323u, 0u, global1.x, u_input.d))) | 0u, abs(_wgslsmith_add_u32(global1.x, u_input.d) >> (~0u % 32u))), 104f, _wgslsmith_div_i32(1i, 6550i) | u_input.c, ~4294967295u);
    let var_1 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(265f, var_0.b)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b - var_0.b))), arg_0, false);
    var var_2 = Struct_3(false);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-210f - 818f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.b, 1603f), _wgslsmith_f_op_f32(-var_0.b)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(var_0.b * var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1148f * var_0.b), _wgslsmith_f_op_f32(round(-559f)), true)), -423f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(var_0.b + -227f), true)))), var_1));
    global0 = ~_wgslsmith_sub_i32(u_input.a, 1i);
    return countOneBits(0i);
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = vec3<i32>(-2147483647i, -func_4(func_3(Struct_1(vec4<u32>(global1.x, 0u, u_input.d, global1.x), 341f, u_input.a, u_input.d), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(-1204f * 2567f), vec2<bool>(false, false))), ~15542i);
    let var_1 = Struct_2(Struct_1(reverseBits(vec4<u32>(~u_input.d, 47066u, ~global1.x, global1.x)), 922f, _wgslsmith_mult_i32(i32(-1i) * -u_input.a, _wgslsmith_mod_i32(~u_input.c, abs(1i))), ~(~_wgslsmith_mult_u32(11207u, global1.x))), select(firstLeadingBit(~15496u) == (41342u << (~u_input.d % 32u)), true, all(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), false))), true, true);
    var_0 = vec3<i32>(2147483647i, ~((-62066i >> (var_1.a.d % 32u)) & abs(-arg_0.x)), firstLeadingBit(countOneBits(-var_0.x)));
    var var_2 = vec3<bool>(var_1.c, (2019i <= _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.zy, var_0.yx), vec2<i32>(var_0.x, u_input.c))) != var_1.d, all(vec3<bool>(true, !(38371i != var_1.a.c), var_1.d || !var_1.b)));
    let var_3 = vec3<bool>(var_2.x, all(!(!vec4<bool>(true, var_1.c, var_2.x, true))), !all(vec2<bool>(true, true)));
    return ~0u;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec4<u32> {
    var var_0 = func_2(_wgslsmith_div_vec2_i32(-vec2<i32>(1i, _wgslsmith_mult_i32(arg_0.x, -2147483647i)), arg_0.zz));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(481f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1222f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(308f))))), false));
    var_0 = _wgslsmith_add_u32(u_input.b, ~_wgslsmith_div_u32(arg_1.x, 1u));
    var_0 = 9725u;
    var var_2 = !vec4<bool>(!any(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), true == (func_3(Struct_1(vec4<u32>(0u, 4294967295u, 53673u, arg_1.x), var_1, arg_0.x, global1.x), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), 1759f, arg_2) | all(vec2<bool>(arg_2.x, false))), all(!arg_2), arg_2.x);
    return vec4<u32>(24009u << ((u_input.d << (1u % 32u)) % 32u), ~(global1.x << (global1.x % 32u)), global1.x, 44474u & (~1u >> (arg_1.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(~u_input.a, u_input.c, ~firstTrailingBit(-4266i)) | (abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-79363i, u_input.c, -1i), vec3<i32>(-12473i, u_input.c, -91931i))) | ~(-vec3<i32>(u_input.c, u_input.c, -32917i))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 66976u), vec2<u32>(global1.x, 4294967295u)) >> (global1.xx % vec2<u32>(32u)), vec2<u32>(u_input.d, 23759u), ~(vec2<u32>(global1.x, global1.x) << (vec2<u32>(0u, 29290u) % vec2<u32>(32u)))) ^ select(global1.xx, global1.zz, vec2<bool>(all(vec2<bool>(true, false)), true)), !vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(179f, 1430f)))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1402f, 910f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(116f, 1000f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-501f + 484f), _wgslsmith_div_f32(-654f, -640f)), _wgslsmith_div_vec2_f32(vec2<f32>(1358f, 1773f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-783f, 184f)))), vec2<bool>(true, true)))));
    var var_2 = Struct_1(var_0 ^ _wgslsmith_mult_vec4_u32(var_0, _wgslsmith_div_vec4_u32(var_0, var_0)), var_1.x, ~(i32(-1i) * -_wgslsmith_clamp_i32(u_input.a, u_input.c, u_input.a)), ~(~var_0.x));
    global1 = _wgslsmith_mult_vec4_u32(~(firstTrailingBit(vec4<u32>(var_2.d, 16329u, u_input.d, var_0.x)) | ~var_0), ~var_2.a | reverseBits(~var_0 ^ vec4<u32>(4294967295u, 29860u, 1912u, 1299u)));
    var var_3 = Struct_3(all(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    let var_4 = Struct_1(_wgslsmith_add_vec4_u32(~var_2.a, _wgslsmith_mod_vec4_u32(vec4<u32>(18027u, u_input.b, 4294967295u, 4294967295u), firstLeadingBit(var_0))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 55954u, _wgslsmith_mult_u32(var_0.x, var_0.x), _wgslsmith_sub_u32(63744u, var_2.d)), var_2.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(-1230f, -1437f)), var_2.c, 97283u);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_2.c, var_4.c), reverseBits(var_2.c)), var_2.c, ~(-u_input.c)), ~global1.xy, select(!vec2<bool>(true, var_3.a), vec2<bool>(true, true), select(vec2<bool>(var_3.a, false), !vec2<bool>(var_3.a, var_3.a), true))).x, select(global1.zwx, var_4.a.wyy, true), vec4<u32>(15365u, ~u_input.b, ~select(reverseBits(0u), _wgslsmith_dot_vec2_u32(global1.xy, vec2<u32>(54170u, var_2.d)), true), ~(~abs(global1.x))), vec4<u32>(~(~(~var_2.a.x)), ~countOneBits(min(3267u, global1.x)), _wgslsmith_add_u32(3314u, u_input.b), global1.x));
}

