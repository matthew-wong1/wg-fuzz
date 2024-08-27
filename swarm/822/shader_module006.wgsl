struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_1(min(~(-_wgslsmith_add_i32(arg_1.x, arg_1.x)), 9020i), firstLeadingBit(max(_wgslsmith_add_u32(abs(36366u), 1u), 10516u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-485f, arg_0, -1262f, -672f), vec4<f32>(816f, arg_0, arg_0, arg_0))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), 640f, -1879f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(810f, arg_0, 1020f, 852f)))))));
    return ~_wgslsmith_div_u32(1u, reverseBits(4294967295u));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = ~u_input.c.yzx;
    let var_1 = -26589i >> (~func_3(_wgslsmith_f_op_f32(-2007f - -762f), abs(var_0.zx) | ~u_input.c.yz) % 32u);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(742f, -645f))))), 591f));
    let var_3 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(select(u_input.c.yw, ~(vec2<i32>(u_input.b, -1670i) | u_input.c.zw), select(vec2<bool>(arg_0.x, false), arg_0, arg_0)), select(~_wgslsmith_mod_vec2_i32(var_0.yy, vec2<i32>(var_1, -2933i)), _wgslsmith_mult_vec2_i32(u_input.c.yx, vec2<i32>(u_input.c.x, u_input.c.x)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), select(arg_0, vec2<bool>(arg_0.x, true), true))));
    var var_4 = arg_0.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-803f * -580f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-290f)) * _wgslsmith_f_op_f32(ceil(var_2))))), _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-var_2))));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(~(~(-25036i)), 35912u, _wgslsmith_f_op_vec4_f32(arg_0.c * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))) + 448f), -255f, _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(sign(arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.x))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-182f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * var_0.c.x) - _wgslsmith_f_op_f32(min(-432f, _wgslsmith_div_f32(var_0.c.x, arg_0.c.x))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(317f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + -618f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1843f * _wgslsmith_f_op_f32(f32(-1f) * -1793f)), var_0.c.x)), _wgslsmith_f_op_f32(var_0.c.x + -1000f));
    let var_2 = select(vec2<bool>(true, any(vec3<bool>(false, false, true)) | false), vec2<bool>(_wgslsmith_mod_i32(-44723i, -524i) >= -var_0.a, false), true | !(any(vec2<bool>(true, false)) || false));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, 2361f, _wgslsmith_f_op_f32(round(-1000f))))), arg_0.c.yzx));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> StorageBuffer {
    var var_0 = select(!select(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), true), vec2<bool>(arg_0, false), true), select(vec2<bool>(true, any(!vec4<bool>(arg_0, arg_0, arg_0, false))), vec2<bool>(any(select(vec4<bool>(false, false, false, arg_0), vec4<bool>(arg_0, arg_0, false, true), arg_0)), arg_0), true), !(!(!vec2<bool>(arg_0, arg_0))));
    var_0 = select(vec2<bool>(all(select(!vec3<bool>(false, false, arg_0), select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, arg_0, var_0.x), arg_0), all(vec3<bool>(false, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(sign(1056f)) < 1f), !select(!vec2<bool>(false, var_0.x), vec2<bool>(all(vec4<bool>(arg_0, false, true, false)), any(vec2<bool>(true, var_0.x))), true), arg_0);
    var var_1 = -vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 20555i, u_input.b, -21341i), u_input.c), u_input.a.x, min(u_input.b, u_input.a.x));
    var var_2 = firstLeadingBit(1u) >> ((48106u & ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 1u))) % 32u);
    var_1 = vec4<i32>(30240i, _wgslsmith_mod_i32(8765i, 7437i), ~(abs(1i | u_input.b) << (~0u % 32u)), ~var_1.x);
    return StorageBuffer(32489i | _wgslsmith_clamp_i32(-2147483647i, max(6859i, 1i), var_1.x), _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-168f, 666f)))), arg_0)), -u_input.c.wyz, vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1125f, 104f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - arg_1.x))) * _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(2147483647i, 0u, vec4<f32>(-2123f, arg_1.x, arg_1.x, arg_1.x)))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f));
    let x = u_input.a;
    s_output = func_4(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(u_input.b, 11171u, vec4<f32>(145f, 678f, -373f, 281f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, -1730f, 534f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-497f, 109f, 1841f) - vec3<f32>(-1297f, -1642f, 1110f))))));
}

