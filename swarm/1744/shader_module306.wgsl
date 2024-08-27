struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> vec2<f32> {
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1442f - -1015f), 1212f))), 1f), -1886f);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = !(arg_0.a.x != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_1)), arg_0.a.x)))));
    let var_1 = _wgslsmith_clamp_vec3_i32(~select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -9085i, 16976i), vec3<i32>(45511i, -37839i, u_input.a)), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-18229i, u_input.a, u_input.a), vec3<i32>(0i, -1476i, 63963i))), abs(vec3<i32>(-9317i, u_input.a, u_input.a) << (vec3<u32>(arg_2.b, 62705u, arg_2.b) % vec3<u32>(32u))), !vec3<bool>(arg_0.d.x, var_0, var_0)), select(vec3<i32>(u_input.a | u_input.a, ~u_input.a, 40617i), select(vec3<i32>(i32(-1i) * -2147483647i, max(u_input.a, u_input.a), -30166i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -31451i, 1i)), false), (select(true, arg_2.d.x, arg_0.d.x) || !arg_0.d.x) | (-1068f <= arg_2.a.x)), vec3<i32>(u_input.a << (u_input.b % 32u), u_input.a, u_input.a));
    var var_2 = arg_2.c.zx;
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, 648f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.a.x, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(exp2(arg_2.a.x))))), max(var_2.x, arg_2.b | reverseBits(~4294967295u)), countOneBits(arg_0.c), arg_0.d);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(651f, arg_0.a.x) * vec2<f32>(arg_2.a.x, -1161f)), _wgslsmith_f_op_vec2_f32(var_3.a - var_3.a), false)))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2()))))), u_input.b, arg_2.c, vec3<bool>(countOneBits(firstLeadingBit(arg_2.c.x)) < (~0u >> (arg_2.b % 32u)), arg_2.a.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), arg_3));
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) * var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_2, arg_2.a.x, Struct_1(vec2<f32>(arg_2.a.x, var_0.a.x), 0u, var_0.c, var_0.d)))), var_0.d.zx))));
    var var_2 = _wgslsmith_f_op_f32(-arg_2.a.x);
    var var_3 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 4294967295u) & u_input.c.xw, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 0u | u_input.b), vec2<u32>(20115u, ~u_input.c.x))), _wgslsmith_div_u32(4294967295u, 113592u));
    var_0 = vec4<u32>(var_0.x, 4294967295u, u_input.d, u_input.b);
    var var_2 = vec3<i32>(~(~u_input.a), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a), ~u_input.a, ~(-1i), u_input.a)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 32919i) | vec4<i32>(u_input.a, u_input.a, 14826i, u_input.a)), _wgslsmith_mult_i32(-14490i, -u_input.a), -(u_input.a | 0i), i32(-1i) * -13384i)), ~(-2147483647i));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(842f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-390f))))))));
    var var_4 = func_1(max(19196i, u_input.a), u_input.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(261f * _wgslsmith_f_op_f32(663f + var_3)), 228f), 4294967295u, reverseBits(~_wgslsmith_mult_vec3_u32(u_input.c.zzw, u_input.c.xwx)), vec3<bool>(true, any(vec3<bool>(false, true, true)), true)), any(vec4<bool>(true, true, true, true)));
    let var_5 = func_1(41578i, min(_wgslsmith_sub_i32(countOneBits(-16792i), -var_2.x), u_input.a), Struct_1(var_4.a, _wgslsmith_clamp_u32(u_input.c.x, ~(91722u | var_4.c.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x, 0u), _wgslsmith_mod_u32(u_input.c.x, 4294967295u))), var_4.c, func_1(select(u_input.a >> (var_0.x % 32u), firstTrailingBit(-2147483647i), var_4.d.x), -(~u_input.a), func_1(i32(-1i) * -1i, u_input.a, Struct_1(vec2<f32>(-1665f, -815f), var_0.x, vec3<u32>(u_input.d, var_0.x, var_4.c.x), var_4.d), var_4.d.x), !any(vec4<bool>(var_4.d.x, true, true, false))).d), !(!all(vec2<bool>(var_4.d.x, var_4.d.x))) & var_4.d.x);
    var_4 = func_1(reverseBits(max(-abs(var_2.x), u_input.a)), 1i, var_5, false);
    let var_6 = ~(-3833i);
    let x = u_input.a;
    s_output = StorageBuffer(47003u);
}

