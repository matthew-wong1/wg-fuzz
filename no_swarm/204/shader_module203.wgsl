struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-1119f, -735f), vec2<f32>(-1000f, -137f), vec2<f32>(1829f, 1812f), vec2<f32>(-122f, 129f), vec2<f32>(1108f, 116f), vec2<f32>(-2236f, -1630f), vec2<f32>(-1000f, -797f), vec2<f32>(780f, 106f), vec2<f32>(-2441f, 267f), vec2<f32>(-204f, -390f), vec2<f32>(1082f, 109f), vec2<f32>(-1281f, 1093f), vec2<f32>(1012f, -268f), vec2<f32>(-225f, -790f), vec2<f32>(-853f, 1106f), vec2<f32>(-1256f, 817f), vec2<f32>(214f, -202f), vec2<f32>(2610f, 558f), vec2<f32>(381f, -411f), vec2<f32>(485f, 814f), vec2<f32>(-511f, -594f), vec2<f32>(-251f, -902f), vec2<f32>(-472f, -459f), vec2<f32>(875f, 958f), vec2<f32>(343f, -327f), vec2<f32>(-169f, 243f), vec2<f32>(-1000f, -845f), vec2<f32>(2043f, 814f), vec2<f32>(-503f, -2321f), vec2<f32>(402f, -958f), vec2<f32>(-934f, -1682f), vec2<f32>(899f, -1301f));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(false, 23226u, vec4<u32>(0u, 0u, 1u, 1023u), 2147483647i, vec4<u32>(0u, 102546u, 36131u, 9820u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(global2.a, 15116u, _wgslsmith_div_vec4_u32(arg_2.e, vec4<u32>(firstLeadingBit(~global2.c.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, u_input.a), vec2<u32>(4294967295u, 1u)), _wgslsmith_div_u32(_wgslsmith_div_u32(arg_2.c.x, global1.e.x), reverseBits(arg_1)), abs(countOneBits(arg_3.e.x)))), countOneBits(arg_2.d), arg_3.c);
    var var_1 = ~(arg_2.e.x | 12755u);
    global1 = Struct_1(global2.a && arg_2.a, global2.e.x, var_0.c, arg_3.d, _wgslsmith_div_vec4_u32(abs(firstTrailingBit(global2.c)), arg_2.c));
    var var_2 = vec4<bool>(~min(global2.e.x, reverseBits(1u)) <= ~global1.b, global1.a, 0i <= (-5151i | global2.d), all(!vec2<bool>(true, arg_2.a)));
    let var_3 = ~40950u;
    return _wgslsmith_clamp_i32(1i, 2147483647i, 64624i);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    global2 = arg_0;
    var var_0 = arg_0;
    global0 = array<vec2<f32>, 32>();
    var_0 = Struct_1(false, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(countOneBits(global1.e.zxw), ~global2.c.wxz << (~global2.e.ywy % vec3<u32>(32u))), var_0.e.x), arg_0.c, ~select(func_3(arg_1, 0u, arg_0, arg_0), ~global1.d, true), abs(~(~(~global2.e))));
    var var_1 = arg_0;
    return _wgslsmith_div_f32(-274f, _wgslsmith_f_op_f32(trunc(1f)));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-1200f, arg_0)), _wgslsmith_div_f32(-872f, -791f), _wgslsmith_f_op_f32(func_2(Struct_1(global2.a, global1.c.x, global2.e, -2147483647i, vec4<u32>(global1.b, u_input.b, 30762u, 6272u)), _wgslsmith_div_vec4_f32(vec4<f32>(900f, 1806f, arg_1, arg_0), vec4<f32>(arg_0, arg_1, arg_0, 895f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, 295f, 1000f)))), true)));
    var var_1 = _wgslsmith_sub_i32(1i, ~1i);
    let var_2 = u_input.d;
    var var_3 = ~(~vec2<u32>(~1u, _wgslsmith_clamp_u32(54397u, u_input.b, reverseBits(var_2))));
    global0 = array<vec2<f32>, 32>();
    return Struct_1(any(vec3<bool>(true, true, true)) && (any(vec4<bool>(global1.a, true, global1.a, global2.a)) | (global1.a && (arg_1 > arg_0))), u_input.d, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(global2.c, ~vec4<u32>(6096u, var_3.x, global2.e.x, 4294967295u), vec4<u32>(_wgslsmith_div_u32(1u, 44294u), _wgslsmith_mult_u32(62296u, global2.c.x), global2.b, abs(65197u))), abs(~_wgslsmith_sub_vec4_u32(global2.e, vec4<u32>(var_3.x, 38813u, u_input.d, global2.c.x)))), 0i, ~(_wgslsmith_add_vec4_u32(abs(vec4<u32>(17494u, 21060u, var_2, 0u)), _wgslsmith_mod_vec4_u32(global2.c, global2.e)) >> (~vec4<u32>(77069u, global1.c.x, u_input.b, u_input.b) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -202f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-661f, -143f))), !global1.a))));
    let var_0 = true;
    let var_1 = global1.c.wx;
    global1 = func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1018f * -360f)), false)))), _wgslsmith_f_op_f32(abs(1603f)));
    global1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1850f, -1420f, var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-677f, -1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f + -319f)), 1374f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(541f)), _wgslsmith_f_op_f32(-510f - -1162f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-750f - 1865f) - _wgslsmith_f_op_f32(-540f * -898f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f))))), global1.e.x, reverseBits(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-394f * -309f), _wgslsmith_f_op_f32(trunc(-815f)))));
}

