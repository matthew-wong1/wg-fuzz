struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    var var_0 = -_wgslsmith_sub_vec2_i32(vec2<i32>(~_wgslsmith_div_i32(u_input.b, u_input.e.x), u_input.b), -_wgslsmith_add_vec2_i32(~vec2<i32>(-33253i, -58784i), u_input.e));
    var var_1 = select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, true, false), true), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)))), vec4<bool>(false, any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), true), !vec4<bool>(true, false, select(true, false, false), true)), false);
    var_1 = vec4<bool>(!(var_0.x != _wgslsmith_add_i32(1i >> (u_input.a % 32u), -51498i)), var_1.x, false, true);
    var var_2 = Struct_2(vec3<bool>(true, !var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(479f, 471f, 2089f) + vec3<f32>(375f, -937f, 226f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1013f, -760f, 1171f) - vec3<f32>(1381f, -1108f, -785f))))))), _wgslsmith_f_op_f32(1f - -1000f), Struct_1(u_input.c.x ^ _wgslsmith_sub_u32(u_input.c.x, 103427u | u_input.d.x)));
    var var_3 = Struct_2(var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(step(-1466f, -535f)), _wgslsmith_f_op_f32(1185f + 427f))))), var_2.b.x, Struct_1(_wgslsmith_mult_u32(~reverseBits(u_input.a), 1u)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b.yy * var_3.b.xx));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_1(u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3())));
    let var_2 = Struct_2(vec3<bool>(all(vec2<bool>(all(vec3<bool>(true, false, false)), true)), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec2_f32(func_3()).x, -311f)))), _wgslsmith_f_op_f32(min(832f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3()).x)))), Struct_1(var_0.a));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.yz) * vec2<f32>(-975f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1757f - var_1.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(507f, 1174f) - var_2.b.zz))) + var_2.b.xx);
    return Struct_2(!var_2.a, _wgslsmith_f_op_vec3_f32(-var_2.b), 423f, var_2.d);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = func_2(u_input.d.x);
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), arg_0.x)))), func_2(1u).d);
    var_1 = func_2(~max(0u, u_input.d.x));
    var var_2 = func_2(~(~max(_wgslsmith_clamp_u32(var_1.d.a, var_1.d.a, 19267u), abs(8742u))));
    return var_2.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(543f))));
    let var_1 = u_input.c;
    let var_2 = func_2(var_1.x);
    return StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(abs(arg_2.x), ~var_1.x), ~u_input.a | 38803u, 10061u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, 23183u), u_input.d)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 14762u) << (vec4<u32>(u_input.a, var_1.x, 81484u, 1u) % vec4<u32>(32u)), vec4<u32>(0u, 28274u, var_1.x, 4294967295u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(33361u, var_2.d.a, 11391u, arg_0.a), countOneBits(vec4<u32>(65971u, 1u, 1u, 16779u))), min(_wgslsmith_mult_vec4_u32(vec4<u32>(42298u, 41997u, u_input.d.x, 28579u), vec4<u32>(6512u, arg_2.x, arg_3.a, arg_3.a)), vec4<u32>(arg_2.x, 22024u, 9082u, arg_0.a)))), vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_2.b.x, -1000f)), _wgslsmith_f_op_f32(var_2.c + var_2.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-251f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * _wgslsmith_f_op_f32(sign(var_2.b.x))))), var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b.x))) - var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~max(reverseBits(1i), u_input.b), 20337i) << (u_input.c % vec2<u32>(32u));
    let var_1 = 4294967295u;
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-676f, 1825f) + vec2<f32>(1012f, -621f)), vec2<f32>(1000f, -1000f)) + vec2<f32>(1f, 1f))), vec4<bool>(any(func_2(min(0u, 11319u)).a.xz), true & (true | all(vec4<bool>(false, true, true, true))), true, all(vec4<bool>(true, all(vec2<bool>(true, true)), any(vec2<bool>(false, true)), true))), countOneBits(vec3<u32>(_wgslsmith_mod_u32(~var_1, var_1), u_input.a, 1u)), func_2(~_wgslsmith_add_u32(func_2(var_1).d.a, 15577u)).d);
}

