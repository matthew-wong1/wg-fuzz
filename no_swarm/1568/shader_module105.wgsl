struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    return Struct_2(abs(0u), select(!vec2<bool>(all(vec2<bool>(false, true)), select(true, true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !all(vec2<bool>(false, true))), 1949f);
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    global0 = func_2().a;
    let var_0 = vec3<i32>(arg_0.e, abs(46425i) | -_wgslsmith_add_i32(_wgslsmith_mult_i32(0i, arg_0.e), -1i), 0i);
    var var_1 = -(~vec4<i32>(-var_0.x, -(~var_0.x), ~62805i, var_0.x));
    let var_2 = arg_0;
    global0 = max(88528u, _wgslsmith_clamp_u32(~0u, reverseBits(26099u), u_input.a.x >> (35707u % 32u)));
    return ~vec3<u32>(~u_input.a.x, u_input.a.x, ~(countOneBits(u_input.a.x) & arg_0.d.a));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> f32 {
    global0 = _wgslsmith_clamp_u32(arg_0.a.a, u_input.a.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xx, u_input.a.wy), ~vec2<u32>(63260u, arg_0.a.a)), ~(u_input.a.yx << (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))));
    global0 = 20256u;
    var var_0 = 4294967295u;
    var var_1 = ~u_input.a.zyy;
    var_1 = func_3(Struct_3(arg_0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.e), vec2<i32>(1i, u_input.c)), countOneBits(10042i)) >= min(i32(-1i) * -2147483647i, firstTrailingBit(2147483647i)), _wgslsmith_f_op_vec4_f32(-arg_0.c), func_2(), _wgslsmith_mult_i32(~arg_0.e | _wgslsmith_clamp_i32(1i, arg_0.e, 35376i), abs(45246i))));
    return -2527f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(0u & u_input.a.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), vec4<u32>(firstTrailingBit(u_input.a.x), 4294967295u, _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(0u, 0u)))));
    var var_1 = !select(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(true, true), 56531u != _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u)), vec2<bool>(false, any(vec3<bool>(false, true, true))), false);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(u_input.a.x, vec2<bool>(var_1.x, false), -699f), var_1.x, vec4<f32>(107f, 1264f, 217f, 405f), Struct_2(0u, vec2<bool>(var_1.x, var_1.x), 527f), u_input.b), -1000f)), -109f, _wgslsmith_f_op_f32(f32(-1f) * -281f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2033f, 485f, 935f, 1384f))) + vec4<f32>(-1318f, -696f, -331f, -1527f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(235f, 703f, 2001f, 1164f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(358f, -1194f, -240f, 1696f) + vec4<f32>(1410f, -478f, 753f, 1000f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, var_2.x, var_2.x, 1182f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1384f, var_2.x, var_2.x, var_2.x) * vec4<f32>(var_2.x, 734f, 215f, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -570f, -1000f, 1274f) * vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-767f, var_2.x, -899f, -622f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-155f, 1308f, 595f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -939f))))));
    var var_3 = Struct_2(0u, vec2<bool>(false, var_1.x), _wgslsmith_f_op_f32(132f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(149f, -309f))))));
    let var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~u_input.a.x), -_wgslsmith_mod_i32(var_4, firstLeadingBit(select(-2147483647i, 2147483647i, var_3.b.x))));
}

