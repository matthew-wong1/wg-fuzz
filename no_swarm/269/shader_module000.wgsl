struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = ~47400u;
    var var_1 = -u_input.b.x;
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    var_1 = u_input.b.x;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1724f), -1258f, -1059f, _wgslsmith_div_f32(arg_0.x, 1597f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.x, -1282f), -1066f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 2190f, arg_0.x, 1182f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-711f, arg_0.x, -1315f, -1000f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.x, -436f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2642f, 1206f))), arg_0.x)), all(select(vec2<bool>(select(true, false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true & all(vec3<bool>(false, false, true))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-184f, -1394f, -1297f), vec3<f32>(-937f, 308f, 409f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, 130f, 559f)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, 645f, -253f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(918f, 330f, -2322f) - vec3<f32>(-1000f, 207f, 593f)), true))))), vec4<f32>(-1221f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-711f, _wgslsmith_f_op_f32(abs(1656f)), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2079f - -1000f), _wgslsmith_f_op_f32(max(654f, -836f)), any(vec3<bool>(false, true, true))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)), 961f)), -144f)));
    global0 = array<Struct_2, 7>();
    let var_1 = !vec3<bool>(all(vec2<bool>(true, true)), true, false);
    var var_2 = all(vec4<bool>(var_1.x, var_1.x, var_0.x > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), true));
    let var_3 = Struct_3(Struct_1(max(2147483647i, -1i)));
    return ~(u_input.a >> (5546u % 32u));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-946f, -403f, 567f, -530f)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1140f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 211f, -1433f), vec4<f32>(633f, _wgslsmith_div_f32(899f, 400f), 919f, _wgslsmith_f_op_f32(-1999f + -300f)), true))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1272f, 1664f)), -420f, _wgslsmith_f_op_f32(-677f + -908f), _wgslsmith_f_op_f32(1558f + 388f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1149f, 1336f, -290f, 2310f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-810f, 836f, -1787f, -164f)))))));
    var var_1 = 4294967295u;
    var_1 = (u_input.d | func_2(~(vec3<u32>(u_input.d, 26680u, 11375u) >> (vec3<u32>(4294967295u, 39786u, u_input.a) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4189u, u_input.c, 0u), vec3<u32>(u_input.a, u_input.a, 8730u))))) >> (_wgslsmith_sub_u32(u_input.a, 1u) % 32u);
    let var_2 = select(!vec3<bool>(true, var_0.x > _wgslsmith_div_f32(var_0.x, var_0.x), true), select(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), true));
    var var_3 = Struct_3(Struct_1((-1i << (u_input.d % 32u)) & 0i));
    return StorageBuffer(_wgslsmith_f_op_f32(floor(227f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(var_0.xzz)).x, -1000f, 141f)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(29500u, u_input.d, u_input.d, 4294967295u) ^ vec4<u32>(0u, 19054u, u_input.d, 1u)) | ~(~vec4<u32>(u_input.d, 1u, 4294967295u, u_input.a)), vec4<u32>(firstLeadingBit(52653u), 0u, 1u, func_2(~vec3<u32>(1u, 4294967295u, 0u), max(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.c, u_input.a, 0u))))), ~countOneBits(var_3.a.a), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-28018i, var_3.a.a, u_input.b.x, 4419i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -9383i, -1i, -3915i), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

