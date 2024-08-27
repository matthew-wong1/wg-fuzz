struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = Struct_2(Struct_1(-1i << (firstTrailingBit(u_input.b & 1u) % 32u)), Struct_1(arg_0.a.a), arg_0.c, Struct_1(_wgslsmith_add_i32(u_input.a.x >> (~58489u % 32u), _wgslsmith_mod_i32(arg_0.d.a, _wgslsmith_clamp_i32(-1i, u_input.a.x, 54185i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.e)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.e.x, 928f, arg_0.e.x) + vec4<f32>(arg_0.e.x, 457f, arg_0.e.x, arg_0.e.x)))))));
    let var_1 = arg_0.e;
    let var_2 = Struct_2(Struct_1(~(-3461i)), Struct_1(arg_0.b.a), var_0.b, arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(max(var_1.x, 355f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -1000f) - 185f)));
    let var_3 = !vec2<bool>(all(vec2<bool>(true, true)), (var_2.c.a > u_input.a.x) && true);
    var var_4 = vec2<bool>(!(all(vec2<bool>(true, true)) && !(u_input.b != u_input.b)), arg_0.a.a < arg_0.a.a);
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_3(select(select(vec3<bool>(true, false, select(false, true, false)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(false, func_3(Struct_2(arg_1, arg_1, Struct_1(-5418i), Struct_1(-35340i), vec4<f32>(-1855f, arg_0, -940f, arg_0))), false)), !select(true, true, any(vec2<bool>(false, true)))), arg_1, abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(-26856i, u_input.a.x, 1i, u_input.a.x)), vec4<i32>(arg_1.a, countOneBits(arg_1.a), -1i, 1i))), select(vec2<i32>(-1i) * -u_input.a.yy, reverseBits(-u_input.a.zz & vec2<i32>(arg_1.a, -2147483647i)), true && !any(vec2<bool>(true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - _wgslsmith_f_op_f32(arg_0 - -1219f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, arg_0))))))));
    let var_1 = Struct_1(2147483647i);
    let var_2 = Struct_1(var_0.d.x);
    let var_3 = Struct_3(vec3<bool>(var_0.a.x || true, all(!(!vec4<bool>(true, var_0.a.x, false, true))), true), var_1, ~1i, vec2<i32>(-_wgslsmith_clamp_i32(var_1.a, reverseBits(arg_1.a), _wgslsmith_mult_i32(748i, var_2.a)), -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_0.c, var_1.a, -2147483647i)), ~u_input.a)), _wgslsmith_div_f32(-155f, _wgslsmith_f_op_f32(-arg_0)));
    let var_4 = _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, abs(2147483647i) | _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_3.c, -2147483647i), vec3<i32>(-5486i, 1i, var_3.d.x)), select(var_2.a, var_2.a, false), ~arg_1.a), 1i), ~vec4<i32>(_wgslsmith_mod_i32(0i, -2147483647i) >> (abs(u_input.b) % 32u), 0i, -2147483647i, ~(-2147483647i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.e, -1697f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.e))), var_3.a.x)))));
}

fn func_4(arg_0: f32) -> vec2<u32> {
    var var_0 = u_input.a.zz;
    let var_1 = Struct_1(u_input.a.x);
    var_0 = vec2<i32>(-1i, ~(-abs(~(-29423i))));
    var_0 = vec2<i32>(countOneBits(-(~(~var_1.a))), 92499i);
    var_0 = u_input.a.zy;
    return _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(min(26332u, 13597u), _wgslsmith_div_u32(~u_input.b, u_input.b)), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, u_input.b), _wgslsmith_mod_u32(34109u, 32917u))), abs(select(~select(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b), true), countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, 1u))), reverseBits(u_input.a.x) == (34034i & var_1.a))));
}

fn func_1() -> i32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2229f + 640f))), Struct_1(max(u_input.a.x, -12277i)))) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1772f))), Struct_1(u_input.a.x | 16297i)))));
    let var_1 = Struct_2(Struct_1(u_input.a.x), Struct_1(abs(_wgslsmith_mod_i32(1i, max(u_input.a.x, u_input.a.x)))), Struct_1(~2147483647i), Struct_1(abs(_wgslsmith_mod_i32(-17841i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2932i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1200f), _wgslsmith_f_op_f32(1060f * -350f), _wgslsmith_f_op_f32(1000f * -1741f), _wgslsmith_f_op_f32(f32(-1f) * -612f))), vec4<f32>(_wgslsmith_f_op_f32(-447f - _wgslsmith_f_op_f32(floor(1350f))), -1447f, 1f, _wgslsmith_f_op_f32(-195f + _wgslsmith_div_f32(1365f, 1776f)))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, -1000f, var_1.e.x, _wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(abs(var_1.e.x))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-343f, 970f, 1700f, 2723f)))), _wgslsmith_f_op_vec4_f32(var_1.e * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, 294f, var_1.e.x, -1633f) * vec4<f32>(1359f, -1221f, var_1.e.x, var_1.e.x))))))));
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.yy));
    var var_4 = var_1.e.x;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(~u_input.a.x >= func_1()));
    var_0 = all(!vec4<bool>(func_3(Struct_2(Struct_1(u_input.a.x), Struct_1(-2147483647i), Struct_1(u_input.a.x), Struct_1(u_input.a.x), vec4<f32>(-1291f, -552f, 302f, 1000f))), all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), all(vec2<bool>(true, false))));
    var var_1 = -965f;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2145f + -852f) - _wgslsmith_f_op_f32(sign(1256f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1840f))));
    var var_2 = Struct_1(9260i);
    let var_3 = Struct_1(var_2.a);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(258f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(325f, 209f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -929f) * _wgslsmith_f_op_f32(ceil(-146f)))))), 1426f);
    var var_5 = -212f;
    var var_6 = Struct_2(Struct_1(i32(-1i) * -2147483647i), Struct_1(var_3.a), Struct_1(_wgslsmith_mult_i32(-1i, ~1i)), Struct_1(-41586i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1695f, var_4.x), _wgslsmith_f_op_f32(max(var_4.x, -267f)), var_4.x, 550f))));
    let x = u_input.a;
    s_output = StorageBuffer(63152u, vec2<u32>(~_wgslsmith_div_u32(1u, abs(1u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(13094u, 0u), max(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 0u)))));
}

