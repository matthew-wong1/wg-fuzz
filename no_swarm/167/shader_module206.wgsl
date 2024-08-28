struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(1i, vec3<f32>(656f, 1857f, -2602f), Struct_1(-1221f, vec3<f32>(576f, -674f, 140f), false, true));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * global1.c.b.x), global1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), global1.b.x)));
    let var_1 = -(~vec2<i32>(u_input.c.x, ~global1.a ^ -46426i));
    let var_2 = _wgslsmith_f_op_f32(abs(-1023f));
    var var_3 = ~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), var_1), ~global1.a), -2147483647i), -41758i);
    let var_4 = !(!((all(vec3<bool>(global1.c.d, global1.c.d, false)) & any(vec3<bool>(true, global1.c.c, global1.c.c))) & (375f >= _wgslsmith_f_op_f32(min(527f, global1.c.b.x)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2111f, 435f, 234f, -125f)))), vec4<f32>(_wgslsmith_f_op_f32(var_2 - -792f), _wgslsmith_f_op_f32(f32(-1f) * -1224f), global1.b.x, _wgslsmith_f_op_f32(select(var_0.x, var_2, global1.c.c))), true == (var_4 | global1.c.c)))) + vec4<f32>(var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c.b.x * -1000f), global1.c.a, any(vec4<bool>(true, false, var_4, true)))))), _wgslsmith_f_op_f32(-1402f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758f - 2096f) - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(-var_2)))));
}

fn func_3() -> u32 {
    var var_0 = -1148f;
    var var_1 = Struct_4(77595u, Struct_3(u_input.b.xy), _wgslsmith_sub_vec3_i32(u_input.c.zzz | -select(u_input.c.zxx, u_input.c.zzy, vec3<bool>(false, global1.c.d, global1.c.d)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(15310i, 2147483647i), global1.a, -3082i), min(vec3<i32>(global1.a, global1.a, u_input.c.x), -vec3<i32>(-8790i, 52864i, global1.a)))));
    var_1 = Struct_4(select(var_1.a, 0u, true), var_1.b, vec3<i32>(-2147483647i, -96374i, -reverseBits(firstTrailingBit(6360i))));
    return _wgslsmith_clamp_u32(firstTrailingBit(var_1.b.a.x) | _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(13446u, 18950u, u_input.a, var_1.a), vec4<u32>(u_input.a, var_1.a, 18856u, 1769u) & vec4<u32>(u_input.a, u_input.d.x, 0u, var_1.b.a.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1012u, u_input.b.x, 18384u, var_1.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.d.x))), var_1.b.a.x, var_1.a);
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = (firstLeadingBit(~(~1u)) << (1u % 32u)) >> (1u % 32u);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(_wgslsmith_f_op_f32(190f + _wgslsmith_f_op_f32(f32(-1f) * -595f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b.x)), global1.c.a, _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(sign(868f))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-global1.c.a), global1.b, !any(vec3<bool>(true, true, false)), var_1);
    var var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(func_3(), ~arg_0.x), ~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_clamp_u32(11397u, 1u, u_input.a)), abs(~4294967295u)), u_input.b);
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(-6105i, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.a, -54483i, u_input.c.x), u_input.c)) | ~countOneBits(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-16258i, -4984i, -66370i, u_input.c.x))), ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(max(-1i, 1i), _wgslsmith_add_i32(u_input.c.x, u_input.c.x), _wgslsmith_mod_i32(-53540i, 2147483647i)), ~global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(u_input.b.xz), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(629f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c.a))), global1.c.b.x))), Struct_1(855f, vec3<f32>(_wgslsmith_f_op_f32(1018f - -562f), global1.c.b.x, _wgslsmith_f_op_f32(global1.c.b.x * _wgslsmith_div_f32(349f, 2015f))), !global1.c.c, (_wgslsmith_f_op_f32(round(-132f)) > _wgslsmith_f_op_f32(-445f + -1000f)) | true));
    let var_1 = u_input.b.xy;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(global1.b.x + var_0.c.a)) * 1f), global1.b.x, true))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1109f), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c.b.x))) - global1.c.a) - 967f));
    let var_4 = 884f;
    var var_5 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, var_4, 1f), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(ceil(-366f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, -797f) - -462f))), ~_wgslsmith_clamp_u32(~(18283u & var_1.x), abs(~var_1.x), ~abs(var_1.x)), 25493u << ((var_1.x >> (var_1.x % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a, 680f, -131f, -2192f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-778f, var_3.x, -1145f, var_4), vec4<f32>(var_3.x, 1000f, var_5.b.x, 1469f))))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, var_4, 138f, var_0.b.x))))))));
}

