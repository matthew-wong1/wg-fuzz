struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = u_input.d.x;
    let var_1 = 4294967295u;
    let var_2 = ~vec4<i32>(-firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(41649i, 1i, 1i, 0i), arg_0.b)), -abs(2147483647i), max(_wgslsmith_sub_i32(u_input.b.x, arg_0.b.x), -max(288i, arg_0.b.x)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, u_input.b.x) >> (45653u % 32u), 15938i, _wgslsmith_dot_vec2_i32(arg_0.b.yw, u_input.c)));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(216f))), _wgslsmith_f_op_f32(round(1f)), 518f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1107f, arg_0.c, arg_0.c, arg_0.c))), vec4<f32>(_wgslsmith_f_op_f32(select(1034f, 1047f, true)), -1757f, _wgslsmith_div_f32(943f, -536f), _wgslsmith_f_op_f32(f32(-1f) * -913f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c + -682f), arg_0.c, arg_0.c, arg_0.c) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(164f, arg_0.c, arg_0.c, arg_0.c), vec4<f32>(-273f, 1260f, arg_0.c, arg_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-122f, arg_0.c, arg_0.c, arg_0.c) * vec4<f32>(arg_0.c, arg_0.c, arg_0.c, -1000f)))))));
    var var_4 = vec4<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec2<bool>(arg_0.a, true))), select(!vec3<bool>(arg_2, false, false), select(vec3<bool>(false, arg_1, false), vec3<bool>(false, arg_0.a, false), vec3<bool>(arg_0.a, true, true)), var_1 != 0u))), any(vec3<bool>(all(select(vec4<bool>(arg_2, false, arg_0.a, false), vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(false, arg_2, arg_1, false))), arg_0.c == _wgslsmith_f_op_f32(var_3.x + var_3.x), false)), false);
    return u_input.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> i32 {
    let var_0 = select(false, arg_1, arg_1);
    let var_1 = (true || (2147483647i == ~u_input.c.x)) && true;
    return _wgslsmith_add_i32(-2147483647i, func_3(Struct_1(all(!vec4<bool>(false, var_1, var_1, true)), -(vec4<i32>(1i, u_input.a, -6733i, -1i) & vec4<i32>(-1i, u_input.a, 33311i, u_input.a)), _wgslsmith_f_op_f32(-1935f * _wgslsmith_f_op_f32(abs(-1050f)))), true, false));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = func_2(u_input.d.xy << ((~u_input.d.zx & ~u_input.d.wy) % vec2<u32>(32u)), !any(vec3<bool>(true, true, true))) ^ 1i;
    var_0 = i32(-1i) * -_wgslsmith_mod_i32(abs(~18645i), u_input.b.x);
    var_0 = 0i;
    var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1094f, arg_1.x, arg_0, 500f) * arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_0) + vec4<f32>(arg_0, arg_0, arg_1.x, arg_1.x)))))) - vec4<f32>(-293f, 559f, -1000f, _wgslsmith_f_op_f32(round(187f))));
    return !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(-19450i, -19318i), countOneBits(u_input.a) & (u_input.a | -27290i)), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, 1i), vec3<i32>(29464i, 1i, 2147483647i)), 3471i << (1u % 32u))), u_input.c.x >> (6617u % 32u));
    let var_1 = select(vec4<bool>(_wgslsmith_div_u32(0u, firstTrailingBit(u_input.d.x)) == ~u_input.d.x, true, false, any(vec4<bool>(true, true, true, false))), !(!vec4<bool>(any(vec2<bool>(true, false)), u_input.a != -2147483647i, true, true)), vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) <= -1000f, !all(vec2<bool>(false, true)), any(select(vec3<bool>(true, true, false), func_1(-413f, vec4<f32>(547f, 1942f, 587f, 861f)), true)), all(vec3<bool>(false, true, select(false, false, false)))));
    let var_2 = Struct_2(vec3<bool>(true, true, true), vec2<bool>(var_1.x, true));
    var var_3 = u_input.c;
    let var_4 = vec2<i32>(min(var_0, var_3.x), 1i);
    let var_5 = select(any(var_1.yw), !var_2.a.x || select(var_2.b.x, true, true), abs(u_input.d.x) > _wgslsmith_mult_u32(~u_input.d.x, 0u));
    var_3 = vec2<i32>(~countOneBits(_wgslsmith_div_i32(var_4.x, var_0)) << (_wgslsmith_mult_u32(abs(u_input.d.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.d.x, 70351u), u_input.d.x, u_input.d.x)) % 32u), i32(-1i) * -11809i);
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-339f, -1492f, 699f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-579f, -639f, 408f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1859f, 499f, 653f)))));
    let var_7 = var_6.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_7.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(393f, var_6.x, true))))))), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, countOneBits(u_input.c.x)) << (u_input.d.xy % vec2<u32>(32u)), vec2<i32>(2147483647i, -30540i)));
}

