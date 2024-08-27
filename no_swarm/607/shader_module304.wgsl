struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(1553f - arg_1.x), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(round(193f))), arg_1.x, arg_1.x), arg_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-391f + arg_1.x), arg_1.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_f_op_f32(732f * arg_1.x)), _wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(arg_1.x, -174f, 571f)), !any(vec4<bool>(false, false, false, true))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x));
    return _wgslsmith_f_op_f32(floor(arg_0.b.x));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(func_2(vec2<i32>(arg_0, _wgslsmith_sub_i32(2028i, arg_0)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(843f, 1077f, 1323f))), ~1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-458f, -292f, 376f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(290f, -1522f, -1707f) + vec3<f32>(318f, 2096f, -1000f))))))), _wgslsmith_div_f32(func_2(vec2<i32>(2147483647i, u_input.a.x) & u_input.a, vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, -804f)), -1505f, _wgslsmith_f_op_f32(step(-208f, 620f))), -2147483647i << (0u % 32u)).b.x, -1867f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1338f, _wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1187f + 1254f) * -1016f))));
    var var_1 = ~(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(0u, 0u, u_input.b)) | _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4429u, 0u), vec3<u32>(1u, u_input.b, u_input.b)), vec3<u32>(4294967295u, _wgslsmith_add_u32(u_input.b, 82621u), 4294967295u)));
    var var_2 = var_0.a;
    let var_3 = -2517i;
    var_2 = 118f;
    return -1i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: f32) -> StorageBuffer {
    var var_0 = vec2<u32>(u_input.b << (max(4294967295u, ~select(4294967295u, 248u, false)) % 32u), u_input.b);
    var var_1 = Struct_1(-196f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1712f), arg_1.x, -191f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 * arg_1.x), 119f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1155f, _wgslsmith_div_f32(arg_1.x, -127f), arg_2)));
    var var_2 = select(vec3<i32>(_wgslsmith_mod_i32(-39266i, -arg_0.x >> (_wgslsmith_div_u32(0u, u_input.b) % 32u)), firstTrailingBit(-(arg_0.x & -1i)), 0i), arg_0, !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(405f, 209f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * var_1.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1685f)) - _wgslsmith_f_op_f32(arg_2 - -883f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -289f, -1325f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, arg_1.x, -492f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-571f - -1873f) * _wgslsmith_f_op_f32(func_3(func_2(vec2<i32>(0i, u_input.a.x), var_1.d, reverseBits(-2147483647i))))), vec3<f32>(-157f, arg_1.x, _wgslsmith_div_f32(-1207f, -761f)));
    var var_4 = func_2(~vec2<i32>(-2147483647i, -_wgslsmith_mod_i32(var_2.x, var_2.x)), vec3<f32>(-2069f, _wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_f_op_f32(-arg_1.x))), -361f), (_wgslsmith_div_i32(-10155i, var_2.x) ^ firstLeadingBit(1i)) >> (select(~(~0u), u_input.b, true) % 32u));
    return StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(arg_0.x ^ var_2.x, _wgslsmith_sub_i32(0i, u_input.a.x), var_2.x, 15884i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, u_input.a.x), func_1(0i)), u_input.a.x), ~(u_input.a.x << (4294967295u % 32u)), u_input.a.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-50626i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-1i, u_input.a.x, 64638i, -2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -2385f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(985f, -244f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(882f, -332f)) * _wgslsmith_f_op_f32(abs(561f))))));
}

