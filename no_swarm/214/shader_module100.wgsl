struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    return ~arg_1.x;
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2195f, arg_0, 905f, arg_0) * vec4<f32>(261f, arg_0, -382f, arg_0))), vec4<f32>(-673f, _wgslsmith_f_op_f32(round(-424f)), _wgslsmith_div_f32(1060f, 1277f), _wgslsmith_f_op_f32(select(-238f, arg_0, false)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1320f)), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1104f), _wgslsmith_f_op_f32(-arg_0))))));
    let var_1 = vec3<u32>(reverseBits(_wgslsmith_mod_u32(~95644u, _wgslsmith_mod_u32(32461u, ~15403u))), 13277u, _wgslsmith_sub_u32(0u, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - arg_0) + -1000f), vec2<u32>(0u, _wgslsmith_add_u32(1u, 32937u)))));
    var var_2 = var_1.x;
    var var_3 = Struct_2(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, var_1.x >> (var_1.x % 32u), 59815u), min(vec3<u32>(66190u, var_1.x, var_1.x), vec3<u32>(0u, var_1.x, 1u)))));
    var_2 = var_3.a.x;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zxx))));
}

fn func_1() -> i32 {
    let var_0 = vec3<bool>(((_wgslsmith_f_op_f32(step(791f, -1193f)) < _wgslsmith_f_op_f32(min(802f, 147f))) && all(vec3<bool>(false, false, true))) == true, true, true && (_wgslsmith_div_f32(-499f, -138f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 566f)))));
    var var_1 = func_2(-104f, ~(~(~vec2<u32>(4294967295u, 0u))) << (firstTrailingBit(vec2<u32>(~0u, 4294967295u)) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_mod_i32(i32(-1i) * -(u_input.a.x >> (39614u % 32u)), -1226i) & -2147483647i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(511f, 1i)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1132f, -723f, -184f), vec3<f32>(361f, -736f, 222f))) * vec3<f32>(1900f, -654f, -966f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1293f, -602f, 1244f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1252f, -1000f, -1443f), vec3<f32>(1539f, -805f, -812f), false))))));
    var_2 = -_wgslsmith_sub_i32(_wgslsmith_mult_i32(~1i, 23310i), -u_input.b.x);
    return firstLeadingBit(-11096i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(func_1(), -1843i);
    var var_1 = max(-41903i, -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, var_0)), u_input.a.zx) ^ ~(~var_0));
    var var_2 = Struct_2(~(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(59034u, 0u, 51367u), vec3<u32>(23782u, 121267u, 4294967295u)), reverseBits(57522u), ~4294967295u)));
    var_1 = -u_input.b.x;
    var_2 = Struct_2(vec3<u32>(~max(~1u, _wgslsmith_mod_u32(var_2.a.x, var_2.a.x)), ~1u, abs(var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(vec4<u32>(4294967295u, 1u, 0u, var_2.a.x), vec4<u32>(32689u, var_2.a.x, var_2.a.x, var_2.a.x)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(30036u, var_2.a.x, var_2.a.x, var_2.a.x), abs(vec4<u32>(4294967295u, var_2.a.x, var_2.a.x, var_2.a.x))) % vec4<u32>(32u))), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(0u << (var_2.a.x % 32u), 66454u), var_2.a.x, ~var_2.a.x)), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), var_2.a.xx | var_2.a.yz), ~(~var_2.a.x), 1u)));
}

