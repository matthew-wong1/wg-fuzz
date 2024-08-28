struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(43915i, -20573i, -17397i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), -17918i, 13694i), vec3<i32>(1i, -22585i, 1i), vec3<i32>(-1i, 35141i, 23326i), vec3<i32>(63144i, 1084i, 1i), vec3<i32>(21200i, -1i, 22843i), vec3<i32>(i32(-2147483648), i32(-2147483648), 76611i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(i32(-2147483648), 14320i, -1i), vec3<i32>(-12663i, 26664i, -20559i), vec3<i32>(1i, 41673i, i32(-2147483648)), vec3<i32>(-18232i, -34687i, -1i), vec3<i32>(0i, -8500i, 0i), vec3<i32>(-19047i, -1i, 1i), vec3<i32>(-70775i, 1i, 1i), vec3<i32>(1i, -8324i, -25435i), vec3<i32>(-10487i, -10870i, -43296i), vec3<i32>(-12289i, -20170i, 25370i), vec3<i32>(33474i, 2147483647i, 6754i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(37280i, 7709i, -6961i), vec3<i32>(i32(-2147483648), -4021i, 1772i), vec3<i32>(i32(-2147483648), -63657i, 18193i), vec3<i32>(31046i, 2147483647i, 2147483647i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = !select(arg_0.x, false, arg_0.x);
    let var_1 = select(select(!vec3<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x, u_input.c.x < u_input.c.x), vec3<bool>(!all(vec3<bool>(arg_0.x, true, arg_0.x)), select(true, true, any(vec3<bool>(arg_0.x, false, false))), all(!vec4<bool>(true, arg_0.x, arg_0.x, false))), arg_0.x), select(vec3<bool>(-1i <= u_input.b.x, false, true), !(!vec3<bool>(arg_0.x, arg_0.x, false)), arg_0.x), 1u == u_input.c.x);
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(~(-(~u_input.b.x)), -2147483647i, u_input.b.x), global0[_wgslsmith_index_u32(u_input.c.x, 25u)]);
    var_2 = _wgslsmith_sub_vec3_i32(u_input.b, abs(vec3<i32>(0i, countOneBits(-23148i), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_2.x, var_2.x), var_2.x))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-425f, 157f, -860f), vec3<f32>(-1985f, -1000f, -553f)))))))), Struct_1(var_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(838f, 474f, 2066f, 313f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-671f, -1672f, 147f, -1103f))))));
    return ~_wgslsmith_mod_u32(u_input.c.x, ~countOneBits(u_input.a.x << (u_input.a.x % 32u)));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = true;
    let var_1 = _wgslsmith_clamp_u32(~(func_3(vec2<bool>(var_0, true)) >> (7461u % 32u)), ~14991u, ~0u);
    let var_2 = true;
    var var_3 = !any(vec3<bool>(var_2, any(vec2<bool>(true, true)), var_2));
    let var_4 = -u_input.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(323f, _wgslsmith_div_f32(-497f, _wgslsmith_f_op_f32(f32(-1f) * -1387f)))) + 1300f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(136f * -717f) + 1611f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-472f, _wgslsmith_f_op_f32(min(-1882f, 434f))), 1f))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<i32>, 25>();
    var var_0 = _wgslsmith_mult_u32(reverseBits(~32969u), u_input.a.x);
    let var_1 = Struct_1(select(20961i == u_input.b.x, any(vec4<bool>(false, true, true, true)), false), vec4<f32>(_wgslsmith_f_op_f32(-697f * _wgslsmith_f_op_f32(func_2(u_input.c.x << (9540u % 32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f - 1228f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-951f, 574f)) + _wgslsmith_f_op_f32(round(871f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) - _wgslsmith_f_op_f32(f32(-1f) * -203f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1797f, -426f)) + _wgslsmith_div_f32(-253f, 1502f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-3400f, -120f)))));
    var var_2 = Struct_4(var_1, Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_1.b.zwx, var_1.b.zwx))))), Struct_1(all(!vec4<bool>(var_1.a, false, true, true)), var_1.b)), Struct_2(Struct_1(any(select(vec2<bool>(false, var_1.a), vec2<bool>(true, var_1.a), vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -384f, var_1.b.x, -2198f)))), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 37666u), u_input.a.x), u_input.a.x), false, 12217i);
    var var_3 = ~vec4<i32>(~(_wgslsmith_dot_vec3_i32(vec3<i32>(3350i, -1i, u_input.b.x), vec3<i32>(var_2.e, 1i, u_input.b.x)) << (var_2.c.c % 32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-14646i, 15842i, var_2.e, u_input.b.x), -vec4<i32>(-30129i, var_2.e, -26204i, 35419i)), _wgslsmith_mod_i32(abs(var_2.e ^ var_2.e), var_2.e), firstTrailingBit(countOneBits(2147483647i)) | _wgslsmith_sub_i32(var_2.e, i32(-1i) * -1i));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), func_1());
    let var_1 = Struct_5(vec4<u32>(11818u, u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.a.x) ^ 0u, ~(~1u)), countOneBits(func_3(!vec2<bool>(false, var_0.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_f32(-1534f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x, true))));
}

