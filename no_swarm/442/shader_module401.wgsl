struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = abs(_wgslsmith_add_i32(select(1i, firstTrailingBit(54274i), select(0i, 1i, false) > -u_input.d), ~(-69318i << (~u_input.c % 32u))));
    let var_1 = u_input.b.x;
    let var_2 = max(_wgslsmith_mult_i32(countOneBits(-_wgslsmith_mod_i32(var_0, u_input.a)), _wgslsmith_add_i32(-2147483647i, 2147483647i)), countOneBits(~_wgslsmith_mod_i32(1i, 1i << (var_1 % 32u))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1460f, -593f))))) - 483f));
    var var_4 = vec2<i32>(-2147483647i, 1i);
    return 2147483647i;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_3(arg_3, Struct_1(select(!select(vec3<bool>(arg_3.b, arg_3.b, arg_3.a.x), vec3<bool>(arg_3.a.x, arg_3.a.x, true), arg_3.a.x), arg_3.a, arg_3.a), arg_3.a.x), true, arg_0, Struct_2(_wgslsmith_div_i32(-func_3(), ~_wgslsmith_div_i32(-17561i, 2846i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(308f * _wgslsmith_f_op_f32(min(567f, 347f))))), 0u, abs(u_input.a)));
    var var_1 = _wgslsmith_sub_i32(firstTrailingBit(-29077i), (_wgslsmith_mod_i32(~u_input.d, -1i) << ((_wgslsmith_add_u32(97647u, u_input.c) & ~63220u) % 32u)) | -arg_0);
    let var_2 = var_0.e;
    var_1 = ~0i;
    var_1 = -var_2.a;
    return false;
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = select(vec2<bool>(all(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, false), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, true), vec3<bool>(false, true, false)))), ~(~0u) < u_input.b.x), select(vec2<bool>((u_input.e == u_input.e) & arg_0, func_2(u_input.e << (u_input.b.x % 32u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1000f))), vec2<f32>(1f, 1f), Struct_1(vec3<bool>(arg_0, arg_0, arg_0), false))), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), arg_0), any(vec3<bool>(true, arg_0, false)) == false);
    var var_1 = Struct_5(Struct_3(Struct_1(vec3<bool>(true, true, all(vec3<bool>(arg_0, false, arg_0))), all(!vec3<bool>(var_0.x, true, false))), Struct_1(vec3<bool>(arg_0, true, arg_0), -1i == u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1444f - 128f)) <= _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -1575f))), _wgslsmith_div_i32(firstTrailingBit(0i), -(i32(-1i) * -3674i)), Struct_2(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.a), vec2<i32>(-1i, 0i)), ~u_input.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1841f)))), 667f, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.c, 5939u, u_input.c), vec4<u32>(u_input.c, 1u, u_input.c, 110u)), reverseBits(u_input.b)), -35595i)), firstLeadingBit(1i), ~(u_input.c & ~u_input.b.x), Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -370f))), Struct_3(Struct_1(vec3<bool>(arg_0, arg_0, true), var_0.x), Struct_1(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, arg_0, true), var_0.x), var_0.x), !arg_0, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -26855i, -1i), ~vec3<i32>(u_input.d, 0i, u_input.e)), Struct_2(0i, -1649f, 298f, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.d, 0i), vec4<i32>(10172i, u_input.e, u_input.d, u_input.e)))), Struct_1(select(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0, true), vec3<bool>(true, false, true)), !vec3<bool>(var_0.x, false, false), !vec3<bool>(false, arg_0, false)), true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(697f, 173f, 271f)))))));
    let var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.d.b.e.d, ~4294967295u, ~var_1.a.e.d), vec3<u32>(abs(0u), 4294967295u, countOneBits(0u))) | u_input.b.ywz;
    var var_3 = u_input.b.ywx ^ ~select(u_input.b.zzy, select(vec3<u32>(var_1.c, 52360u, 0u), vec3<u32>(4294967295u, 29156u, var_2.x), select(var_1.a.a.a, vec3<bool>(true, false, true), true)), var_0.x);
    return var_1.d.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_i32(u_input.d, ~(-u_input.a));
    let var_1 = ~select(95525u, u_input.b.x | ~4294967295u, !func_1(true));
    let var_2 = u_input.b;
    let var_3 = vec3<bool>(func_1(any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), true, func_1(false));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-887f, 450f) + 934f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1154f, 141f) * -1000f))))), Struct_3(Struct_1(vec3<bool>(true, -1i != u_input.d, var_3.x), all(!vec3<bool>(true, var_3.x, var_3.x))), Struct_1(vec3<bool>(any(var_3), var_3.x, !var_3.x), !any(var_3.xx)), select(_wgslsmith_add_i32(20884i, 3653i) < _wgslsmith_add_i32(u_input.a, 25938i), false, func_2(_wgslsmith_div_i32(u_input.d, 0i), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 571f), vec2<f32>(147f, 1000f))), vec2<f32>(-632f, 281f), Struct_1(var_3, true))), ~_wgslsmith_sub_i32(~(-44468i), 54780i), Struct_2(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1614f), _wgslsmith_f_op_f32(f32(-1f) * -156f), var_2.x | (41143u ^ u_input.c), u_input.e)), Struct_1(select(var_3, var_3, select(!var_3, !var_3, vec3<bool>(var_3.x, var_3.x, var_3.x))), 4294967295u == _wgslsmith_dot_vec2_u32(~var_2.wy, vec2<u32>(27083u, var_1))), _wgslsmith_div_vec3_f32(vec3<f32>(-141f, -997f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(-2520f, _wgslsmith_f_op_f32(1326f - _wgslsmith_f_op_f32(-1222f - -1070f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-588f)), _wgslsmith_f_op_f32(trunc(1074f)))))));
    var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(var_4.b.e.a, max(2147483647i, -1i)), var_4.b.e.e);
    let var_5 = all(!vec3<bool>(~var_4.b.d > -2147483647i, any(var_3), !all(var_3)));
    let var_6 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(240f, 950f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.x, ~vec4<u32>(~(~var_4.b.e.d), var_2.x, 1u, _wgslsmith_clamp_u32(1u, u_input.b.x, countOneBits(var_4.b.e.d))));
}

