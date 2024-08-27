struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = !(!(!select(!vec3<bool>(true, arg_1.x, false), arg_1.zwx, !arg_0)));
    return vec4<bool>(any(vec4<bool>(var_0.x, any(var_0.yx) != var_0.x, !arg_1.x, false)), any(vec3<bool>(var_0.x, arg_1.x, (arg_0.x & var_0.x) & var_0.x)), any(select(vec2<bool>(any(vec2<bool>(false, arg_0.x)), all(arg_0.yx)), !arg_0.zx, !vec2<bool>(arg_0.x, arg_1.x))), any(!vec3<bool>(arg_0.x, true, true)));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = select(vec3<bool>(true, true, all(vec3<bool>(true, true, true))), vec3<bool>(false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), all(func_3(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), u_input.d.zxw, func_2(u_input.b.x, Struct_1(arg_0.xwz), Struct_1(vec3<f32>(arg_0.x, -1001f, 809f)))))), select(vec3<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))), _wgslsmith_mult_i32(u_input.a, 2147483647i) <= u_input.d.x, false), !vec3<bool>(any(vec4<bool>(true, false, true, false)), any(vec4<bool>(false, false, true, false)), true), any(vec3<bool>(u_input.a < 1i, u_input.e <= u_input.c.x, true))));
    var_0 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, true, false), var_0.x))), func_3(!(!vec3<bool>(var_0.x, true, false)), !vec4<bool>(-1i >= u_input.d.x, true, all(vec2<bool>(true, false)), true), ~(vec3<i32>(-1i, 31664i, u_input.b.x) | u_input.d.wwy) ^ u_input.d.xwy, func_2(31068i, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) - arg_0.wzx)), func_2(abs(u_input.b.x), Struct_1(vec3<f32>(1612f, arg_0.x, arg_0.x)), func_2(-1i, Struct_1(vec3<f32>(arg_0.x, arg_0.x, -374f)), Struct_1(arg_0.zzz))))).yyy, select(!vec3<bool>(true, var_0.x, any(vec3<bool>(var_0.x, true, true))), vec3<bool>(select(true, select(false, false, var_0.x), false), true, var_0.x), vec3<bool>(!all(vec3<bool>(var_0.x, true, var_0.x)), false, var_0.x)));
    var var_1 = _wgslsmith_div_i32(select(u_input.d.x, select(-2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), u_input.b.zz), _wgslsmith_div_i32(64427i, -1i)), var_0.x), false), ~(-9001i));
    let var_2 = min(u_input.d.x, u_input.d.x);
    var_0 = vec3<bool>(select(any(func_3(vec3<bool>(true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, true), u_input.b, Struct_1(arg_0.xxz)).yyw), false, var_0.x || var_0.x) & false, !var_0.x, var_0.x);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1699f) * arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(273f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(457f, 660f, -445f, 1091f))) + _wgslsmith_f_op_f32(abs(1482f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-589f))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(257f))))))));
    var var_1 = firstLeadingBit(~firstLeadingBit(0i) | (abs(1i) << (~u_input.c.x % 32u)));
    var var_2 = !((30617u >> (u_input.e % 32u)) <= _wgslsmith_add_u32(u_input.e, firstLeadingBit(u_input.c.x))) != !all(vec2<bool>(true, any(vec3<bool>(true, true, false))));
    var_2 = var_0 < -1327f;
    var_1 = max(~_wgslsmith_dot_vec2_i32(u_input.d.yw, u_input.b.zy) | 53832i, ~u_input.b.x);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(-282f, -2111f), true)))));
    var var_4 = vec4<bool>((0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, u_input.e, 29121u), select(vec4<u32>(u_input.e, 18170u, u_input.e, u_input.e), vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.c.x), vec4<bool>(true, true, false, true)))) == _wgslsmith_div_u32(~u_input.c.x, u_input.e & (u_input.e >> (16141u % 32u))), !(!all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)))), (var_0 != 750f) || select(false, func_3(vec3<bool>(true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), u_input.d.zyw, Struct_1(var_3.a)).x, any(vec3<bool>(false, true, true)) & true), all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), func_3(func_3(vec3<bool>(false, false, false), vec4<bool>(true, false, true, true), u_input.d.wxw, var_3).wyw, vec4<bool>(true, true, true, true), -vec3<i32>(u_input.a, 0i, 42105i), Struct_1(var_3.a)))));
    var var_5 = false && var_4.x;
    var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~firstLeadingBit(u_input.e)), _wgslsmith_f_op_vec2_f32(abs(var_3.a.xz)), var_3.a.zy, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-844f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))))), 4294967295u | _wgslsmith_clamp_u32(u_input.e, 6259u & u_input.c.x, ~(u_input.c.x & 1u)));
}

