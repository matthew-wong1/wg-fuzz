struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = -1i >> (_wgslsmith_clamp_u32(min(reverseBits(_wgslsmith_clamp_u32(0u, 1u, 24871u)), _wgslsmith_mult_u32(select(88085u, 28340u, true), ~arg_0.c)), 4294967295u, 4294967295u) % 32u);
    var var_1 = Struct_5(vec3<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(-55813i, arg_0.a, 24202i, 12994i) & vec4<i32>(arg_0.a, -68798i, arg_0.a, u_input.d)), vec4<i32>(countOneBits(u_input.b), i32(-1i) * -2147483647i, u_input.b ^ arg_0.a, arg_0.a << (16943u % 32u))), ~arg_0.a, -u_input.d), Struct_3(~(~vec4<u32>(1u, arg_0.c, 4294967295u, 0u)), firstLeadingBit(-reverseBits(u_input.b)), arg_0.a), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * arg_0.b.x)), _wgslsmith_f_op_f32(exp2(arg_0.b.x)));
    var_0 = u_input.d;
    let var_2 = !(!(all(vec2<bool>(true, true)) & var_1.c));
    var_0 = var_1.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d - arg_0.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-984f + _wgslsmith_f_op_f32(exp2(arg_0.b.x))) - 1f)));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(-1i, vec2<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(127f + -692f)))), arg_0.a.x), !vec3<bool>(false, true, any(vec2<bool>(true, arg_1))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1335f, 1344f, 183f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(984f, -1248f, 1841f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, 265f, -698f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1116f, 490f), vec3<f32>(-1000f, -629f, 218f), true))))), vec4<i32>(-2147483647i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, 0i), vec2<i32>(-37521i, arg_0.b) | vec2<i32>(arg_0.c, -8826i))), u_input.b, -20760i), Struct_1(i32(-1i) * -reverseBits(arg_0.c), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1959f, -648f) - _wgslsmith_f_op_f32(func_3(Struct_1(1i, vec2<f32>(122f, 850f), arg_0.a.x), 1u))), _wgslsmith_f_op_f32(max(362f, 1100f))), u_input.e));
    var var_1 = true;
    var var_2 = false;
    var_1 = true;
    var_0 = Struct_2(Struct_1(arg_0.b, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1004f * var_0.a.b.x), 383f), var_0.c.xy)), countOneBits((var_0.e.c << (12129u % 32u)) & 126403u)), !vec3<bool>(true, var_0.b.x, true), var_0.c, var_0.d, var_0.e);
    return !select(var_0.b, var_0.b, select(abs(arg_0.a.x), u_input.a, arg_0.a.x > 0u) != 44907u);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>) -> bool {
    let var_0 = arg_1;
    var var_1 = abs(1i);
    var var_2 = u_input.b;
    var var_3 = !vec4<bool>(select(any(vec3<bool>(var_0, false, false)) & true, !(var_0 | true), true), arg_1 & false, var_0, true);
    let var_4 = select(!all(func_2(Struct_3(arg_0.a, -1i, -18464i), arg_1)), all(!vec3<bool>(u_input.b <= arg_0.c, true, func_2(arg_0, var_0).x)), 1057f != _wgslsmith_f_op_f32(sign(719f)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, ~0u), abs(max(~u_input.c.xz, vec2<u32>(31133u, 35254u) | ~u_input.c.zz)));
    var var_1 = !select(vec3<bool>(firstLeadingBit(69047u) != _wgslsmith_add_u32(var_0.x, 6473u), true, true), vec3<bool>(false, true, true | any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true), false));
    var_1 = !vec3<bool>(select(true || var_1.x, func_1(Struct_3(vec4<u32>(u_input.c.x, 13113u, u_input.c.x, var_0.x), -1i, 4614i), true, vec2<u32>(u_input.a, var_0.x)), var_1.x != true), true, true);
    var_1 = !(!vec3<bool>(true, _wgslsmith_f_op_f32(-1000f + -2288f) != _wgslsmith_f_op_f32(step(1000f, -174f)), all(!vec3<bool>(var_1.x, var_1.x, var_1.x))));
    let var_2 = Struct_5(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(u_input.b << (121670u % 32u), u_input.b), min(reverseBits(-2147483647i), u_input.d), -u_input.b)), Struct_3(abs(~u_input.c), 2147483647i, firstTrailingBit(1i & min(u_input.b, u_input.d))), select(true, var_1.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-310f))))) * -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a);
}

