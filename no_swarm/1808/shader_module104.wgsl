struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> vec2<f32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-101f, 308f, 733f, _wgslsmith_f_op_f32(sign(arg_0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(989f, arg_0.x, arg_0.x, _wgslsmith_div_f32(arg_0.x, -539f)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1108f, arg_0.x, arg_0.x)), vec4<f32>(arg_0.x, arg_0.x, -206f, arg_0.x)))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * _wgslsmith_f_op_f32(-var_1.x)) == _wgslsmith_f_op_f32(-var_1.x);
    var_2 = false;
    let var_3 = arg_0.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - 1000f))))));
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = ~(~_wgslsmith_div_vec3_i32(firstLeadingBit(~vec3<i32>(7778i, -10478i, arg_0.b)), -abs(vec3<i32>(-1i, u_input.b, -2147483647i))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_vec2_f32(func_1(arg_0.c, all(!(!vec4<bool>(arg_1, arg_1, arg_1, arg_1))))).x, -1000f, arg_2);
    var var_2 = arg_0;
    let var_3 = 71666u;
    var var_4 = Struct_1(abs((var_2.a >> (var_3 % 32u)) >> (1u % 32u)), _wgslsmith_sub_i32(reverseBits(reverseBits(~49874i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-33876i, 65291i, arg_0.b), vec3<i32>(var_0.x, var_0.x, -1i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x + -1067f) - _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.x))))), _wgslsmith_f_op_vec3_f32(-var_1.zxw), reverseBits(arg_0.a >> (~1u % 32u)) | 35884u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3))), all(vec2<bool>(true, true)))) - var_2.c.x);
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(0u & u_input.a.x, _wgslsmith_sub_i32(u_input.b, -58604i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1887f, 497f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1540f, -178f, -429f))), u_input.c.x & u_input.a.x), all(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(f32(-1f) * -348f), _wgslsmith_f_op_f32(f32(-1f) * -896f))), _wgslsmith_f_op_f32(f32(-1f) * -1471f)));
    var var_1 = select(!(!(!(3132u == u_input.c.x))), true, true);
    var var_2 = ~vec2<i32>(-1i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(-1i, u_input.b, u_input.b)), vec3<i32>(u_input.b, 0i, u_input.b) & vec3<i32>(15064i, u_input.b, u_input.b)));
    var var_3 = -1451f;
    var var_4 = all(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), false)));
    return vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, 1183f)) * _wgslsmith_f_op_f32(sign(var_0))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 - -1221f), _wgslsmith_f_op_f32(trunc(var_0)), true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f + var_0) * _wgslsmith_f_op_f32(-var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(0i, countOneBits(2147483647i), ~u_input.b, 2147483647i);
    let var_1 = ~_wgslsmith_mod_u32(1795u, 7329u);
    var var_2 = u_input.a;
    var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1237f, -195f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(291f, -741f), false)) + vec2<f32>(734f, -492f))))));
    var var_4 = Struct_1(~48515u, -abs(-2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), 113f) + vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(var_1, 45553i, vec2<f32>(var_3.x, var_3.x), vec3<f32>(-1770f, -609f, var_3.x), var_1), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(var_3.x * 1089f), _wgslsmith_f_op_f32(var_3.x + 1000f))), 1448f, var_3.x)), _wgslsmith_clamp_u32(var_1, ~_wgslsmith_dot_vec4_u32(vec4<u32>(24454u, var_1, 49608u, 31459u), vec4<u32>(15092u, u_input.a.x, var_2.x, u_input.c.x)), 70854u));
    var var_5 = Struct_1(var_1, -9141i, var_4.d.yz, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(var_4.d, vec3<f32>(_wgslsmith_f_op_f32(abs(var_4.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(var_3.x + var_4.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_4.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.d.x, var_3.x, 1056f) - var_4.d))))), _wgslsmith_sub_u32(var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u) >> (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u)), u_input.a.yy)) >> (var_4.a % 32u));
    var var_6 = Struct_1(var_4.e, ~(-(~_wgslsmith_clamp_i32(-2147483647i, 2257i, 2147483647i))), _wgslsmith_f_op_vec2_f32(-var_5.d.xz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_5.c.x), var_3.x, 113f))), _wgslsmith_sub_u32(var_1, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(1u, 1u, true), ~min(var_4.a, var_4.a >> (45744u % 32u)), 0u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1486f, var_5.d.x, var_5.c.x, var_6.c.x), vec4<f32>(-597f, 1161f, -200f, -1063f), true)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, 436f, var_6.d.x, 664f)))))), vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_5.c.x + 1120f)), -406f, 503f, var_4.d.x))));
}

