struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = select(!any(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true)), vec2<bool>(true, true))), true);
    var var_1 = Struct_1(~u_input.b.x);
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -36123i), u_input.b.yy));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(610f, -649f) + vec2<f32>(-664f, -1435f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, -461f)), vec2<bool>(var_0, var_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1292f, -442f), vec2<f32>(1629f, 766f))))), vec2<f32>(_wgslsmith_f_op_f32(-124f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(897f)), _wgslsmith_f_op_f32(floor(-244f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1f)))))));
    let var_4 = Struct_1(~(~u_input.b.x));
    return var_3.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    var var_0 = Struct_1(~arg_1.a);
    var var_1 = _wgslsmith_sub_vec3_i32(countOneBits(abs((vec3<i32>(-2147483647i, -1i, -2147483647i) & u_input.b.zzy) & -u_input.b.xyw)), vec3<i32>(firstTrailingBit(arg_1.a), -firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, arg_2)), -var_0.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(326f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(936f, 306f)), 1f))) + _wgslsmith_f_op_f32(func_3())));
    var var_3 = Struct_1(~1i >> (u_input.a.x % 32u));
    let var_4 = ~_wgslsmith_dot_vec4_u32(~u_input.a, abs(select(vec4<u32>(1u, arg_3.x, 1u, u_input.c.x), vec4<u32>(u_input.a.x, 18326u, arg_3.x, 31790u), arg_0.x))) ^ max(_wgslsmith_add_u32(18553u, min(~4294967295u, _wgslsmith_sub_u32(17667u, 1u))), ~u_input.d.x);
    return firstTrailingBit(~(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, var_0.a, u_input.b.x), u_input.b.xyw)) >> (_wgslsmith_clamp_u32(~11234u, _wgslsmith_mod_u32(arg_3.x, u_input.d.x), var_4) % 32u)));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = !select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)));
    var var_2 = ~countOneBits(u_input.d);
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(u_input.b.x, 17082i, 2147483647i, u_input.b.x))), u_input.b), u_input.b.x), u_input.b.x);
    return u_input.b.x;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = ~vec2<i32>(min(u_input.b.x, ~u_input.b.x), u_input.b.x);
    let var_1 = Struct_1(abs(u_input.b.x));
    var var_2 = u_input.b;
    var var_3 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-318f)) - -1871f)), arg_1), 35064i, Struct_1(_wgslsmith_add_i32(2147483647i, func_2(vec2<bool>(true, false), Struct_1(var_1.a), var_2.x, u_input.a.xx)) >> ((~u_input.c.x >> (u_input.c.x % 32u)) % 32u)));
    var var_4 = Struct_1(var_1.a);
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = -1295f;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-416f * 818f))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(343f + var_0), -528f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))))));
    var var_2 = vec4<u32>((u_input.a.x >> (1u % 32u)) ^ max(u_input.a.x, u_input.a.x), u_input.d.x, 0u << (~_wgslsmith_add_u32(~u_input.c.x, 1u | u_input.d.x) % 32u), 57453u);
    var var_3 = _wgslsmith_clamp_vec2_i32(u_input.b.zy, ~(~(~vec2<i32>(u_input.b.x, arg_0.a))), -abs(-(~u_input.b.yz)));
    return !arg_1.x;
}

fn func_6(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> StorageBuffer {
    return StorageBuffer(0u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i);
    let x = u_input.a;
    s_output = func_6(~select(select(u_input.b.xz, vec2<i32>(u_input.b.x, 2147483647i), vec2<bool>(true, true)), _wgslsmith_add_vec2_i32(u_input.b.yx, u_input.b.zw), true) | (vec2<i32>(firstLeadingBit(1i), _wgslsmith_mod_i32(17144i, var_0.a)) & _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_0.a) >> (u_input.c % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, -52846i), vec2<i32>(u_input.b.x, -44175i)))), !func_5(Struct_1(-u_input.b.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), all(vec2<bool>(false, false))), func_1(u_input.c.x | u_input.d.x, _wgslsmith_f_op_f32(max(-299f, -176f))), Struct_1(countOneBits(21295i))), 1u);
}

