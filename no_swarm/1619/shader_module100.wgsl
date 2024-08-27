struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-500f - 1054f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1798f + 981f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1716f, 1928f), vec2<f32>(921f, -1320f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-348f, 443f), vec2<f32>(1998f, -496f))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1060f + -1658f), -1158f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-670f * 1209f) + -1000f))));
    return _wgslsmith_f_op_f32(var_0.x + -547f);
}

fn func_4(arg_0: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-419f + 622f), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, false, false), vec2<i32>(u_input.a.x, -1i), u_input.c.x), true)))), arg_0.x)), -1486f);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(~u_input.e.x) >> (~min(u_input.b.x, 1u) % 32u), 0u, 12606u), u_input.e.xzw);
    var var_2 = vec4<bool>(true, !all(vec2<bool>(true, true)), -2147483647i == (_wgslsmith_dot_vec3_i32(-vec3<i32>(38755i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, 0i) & vec3<i32>(u_input.a.x, -17662i, 22099i)) ^ ~(u_input.a.x & u_input.a.x)), true);
    let var_3 = select(!vec2<bool>(all(var_2.xyy), true), vec2<bool>(var_2.x, false), select(vec2<bool>(true, ~u_input.e.x <= (39980u >> (u_input.c.x % 32u))), var_2.zz, false));
    var_2 = select(vec4<bool>(true, select(any(!vec3<bool>(var_3.x, var_3.x, false)), all(!vec3<bool>(false, true, var_3.x)), (2147483647i | u_input.a.x) <= -u_input.a.x), all(!vec2<bool>(false, var_2.x)), any(!vec2<bool>(var_3.x, var_3.x))), !vec4<bool>(true, var_3.x, var_3.x, true), select(vec4<bool>(-31430i > _wgslsmith_mult_i32(-37795i, u_input.a.x), var_3.x, all(!vec2<bool>(var_3.x, true)), var_3.x), vec4<bool>(var_2.x, false, all(vec4<bool>(var_3.x, var_2.x, false, var_2.x)), any(select(vec4<bool>(false, var_3.x, var_2.x, var_2.x), vec4<bool>(true, false, true, false), true))), true));
    return _wgslsmith_mult_vec2_u32(max(u_input.e.zw & (~u_input.e.zw >> (u_input.b % vec2<u32>(32u))), ~(~u_input.e.yx)), u_input.b | vec2<u32>(_wgslsmith_div_u32(~u_input.d, 21014u), _wgslsmith_div_u32(17792u, u_input.d) | ~u_input.c.x));
}

fn func_2() -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1028f * -785f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1533f))), _wgslsmith_f_op_f32(-3347f + _wgslsmith_f_op_f32(round(-704f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, false, false), vec2<i32>(1i, u_input.a.x), u_input.b.x), false)), _wgslsmith_f_op_f32(-1050f + -813f), _wgslsmith_f_op_f32(730f + 535f))))));
    let var_1 = 30104i;
    var var_2 = var_0.x;
    var_2 = select(reverseBits(1u), _wgslsmith_add_u32(firstLeadingBit(min(var_0.x, 31411u)), 0u) ^ reverseBits(3552u), (any(vec4<bool>(true, true, false, true)) & all(vec3<bool>(true, true, false))) | select(true, true, true));
    var_2 = 0u;
    return Struct_2(Struct_1(vec3<bool>(true, any(vec3<bool>(true, false, false)) && all(vec2<bool>(true, false)), true), max(u_input.a, u_input.a), u_input.c.x));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> Struct_4 {
    let var_0 = func_2();
    var var_1 = !vec2<bool>(var_0.a.a.x, false);
    var_1 = var_0.a.a.yz;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(749f, -1952f, 1119f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(408f, 459f, 1081f) - vec3<f32>(533f, 1000f, -1008f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1098f, 541f, -237f)))))));
    var_1 = select(vec2<bool>(any(vec2<bool>(-200f <= var_2.x, any(arg_1))), var_0.a.a.x), !vec2<bool>(var_1.x, func_2().a.a.x), vec2<bool>(var_0.a.a.x, true));
    return Struct_4(Struct_3(~(~(var_0.a.c | u_input.e.x)), arg_1.x));
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    var var_0 = arg_0.a;
    var var_1 = vec4<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), -26443i, -4532i) >> (vec4<u32>(abs(~3605u), var_0.a, u_input.b.x >> (u_input.c.x % 32u), firstTrailingBit(arg_0.a.a)) % vec4<u32>(32u));
    var var_2 = 4294967295u;
    var var_3 = ~u_input.e.zz;
    let var_4 = -vec4<i32>(u_input.a.x, firstTrailingBit((2147483647i & var_1.x) | 0i), max(_wgslsmith_sub_i32(var_1.x >> (24320u % 32u), _wgslsmith_sub_i32(2147483647i, var_1.x)), _wgslsmith_sub_i32(var_1.x, ~2147483647i)), -44714i);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -807f);
    let var_1 = vec3<bool>(false, false, _wgslsmith_f_op_f32(-var_0) <= _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    var var_2 = func_5(func_1(u_input.e.x, vec4<bool>(!(var_0 >= -236f), any(vec4<bool>(true, true, var_1.x, var_1.x)), all(var_1) || var_1.x, !var_1.x || all(var_1.xx))));
    var_2 = Struct_3(~57238u, var_1.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0), 639f, _wgslsmith_f_op_f32(f32(-1f) * -691f));
    let var_4 = any(select(!func_2().a.a, vec3<bool>(var_2.b, false, false), var_2.b));
    var_2 = func_5(func_1(~1u, vec4<bool>(var_4, func_2().a.a.x, true, var_4)));
    let var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2302f, var_3.x, var_0) * vec3<f32>(var_3.x, var_0, 162f)) + var_3), _wgslsmith_f_op_vec3_f32(ceil(var_3)))))), ~(~reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)))));
}

