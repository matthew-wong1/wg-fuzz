struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_mult_i32(global0.a, 40324i));
    let var_0 = !(!select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    global0 = Struct_1(global0.a);
    var var_1 = Struct_1(-29661i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1363f - _wgslsmith_div_f32(-239f, -466f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1419f, 1141f)) + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(163f - -1751f))))));
    return select(select(select(var_0, !vec4<bool>(var_0.x, false, var_0.x, var_0.x), true & select(false, true, var_0.x)), !vec4<bool>(false, all(vec4<bool>(true, true, true, true)), any(var_0), true), !(!select(var_0, var_0, var_0.x))), !select(!(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)), var_0, !select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0, var_0)), all(!vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, true, var_0.x & true)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = select(true, true, all(!func_3()) || !func_3().x);
    var_0 = false;
    let var_1 = Struct_2(Struct_1(global0.a), Struct_1(2147483647i), Struct_1(i32(-1i) * -6451i), countOneBits(vec3<u32>(~0u, ~1u, 0u)) | ~_wgslsmith_add_vec3_u32(u_input.c.zzy, u_input.c.wxw));
    let var_2 = Struct_1(select(global0.a, ~(~global0.a), ~countOneBits(88668u) < u_input.b));
    let var_3 = -353f;
    return Struct_1(_wgslsmith_div_i32(max(firstTrailingBit(~(-21173i)), 0i), -12314i & (var_1.b.a ^ -11116i)));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_div_f32(-182f, -376f), _wgslsmith_f_op_f32(floor(-459f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2263f, -1873f) * vec2<f32>(-281f, -292f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-651f, -767f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 347f) - vec2<f32>(1772f, 2005f))))));
    let var_1 = 49903u;
    var var_2 = func_2(~u_input.c.x);
    var_2 = func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(~vec3<u32>(u_input.a, arg_0, 24976u), countOneBits(vec3<u32>(59417u, 124367u, 4294967295u)), true), u_input.c.xzy), firstLeadingBit(~min(u_input.c.yyx, u_input.c.yyx))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(-855f * 1000f))))));
    return _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 78280u), vec4<u32>(var_1, 4294967295u, 6765u, 41778u)) | ~(~21514u)) ^ firstLeadingBit(~arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<u32>(_wgslsmith_mod_u32(u_input.d, ~firstTrailingBit(u_input.c.x)), u_input.a, u_input.c.x, u_input.c.x), vec4<u32>((~u_input.b & 4294967295u) ^ u_input.c.x, func_1(u_input.c.x), ~(~u_input.c.x), 0u), any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, false)), true), false)));
    var_0 = reverseBits(~(~(~vec4<u32>(0u, 0u, 1u, 26370u))));
    global0 = Struct_1(min(-19259i, ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(8711i, -1i, global0.a), vec3<i32>(-2147483647i, -40639i, 1i)))));
    var var_1 = _wgslsmith_add_u32(~func_1(~(1u >> (var_0.x % 32u))), min(var_0.x | var_0.x, max(_wgslsmith_div_u32(abs(u_input.d), var_0.x), 69048u)));
    let var_2 = Struct_2(Struct_1(global0.a), func_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(20010u, 0u), var_0.zz & var_0.yw)), func_2(1u), ~(~vec3<u32>(abs(u_input.d), u_input.d, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-104f)), 520f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-743f, 1f), 1f, _wgslsmith_f_op_f32(round(-409f))), vec3<f32>(1f, 1f, 1f), select(vec3<bool>(any(vec2<bool>(false, true)), false, false), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))))), var_0.xw, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * -815f), _wgslsmith_f_op_f32(f32(-1f) * -457f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(276f + 1593f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-936f, 217f)))), -393f, _wgslsmith_f_op_f32(-2183f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(948f)) - _wgslsmith_f_op_f32(-1118f - -2344f)))));
}

