struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-564f, 128323u, true, -3853i), Struct_1(-1468f, 34214u, true, 28187i), Struct_1(-1206f, 4294967295u, false, 1i), Struct_1(-1000f, 0u, false, 1i), Struct_1(-154f, 0u, false, -7332i), Struct_1(1219f, 53975u, true, i32(-2147483648)), Struct_1(-736f, 0u, true, -32932i), Struct_1(-1690f, 1u, true, 1i), Struct_1(460f, 48288u, true, 1i), Struct_1(512f, 1u, true, 53834i), Struct_1(243f, 4294967295u, true, 39715i), Struct_1(-1846f, 1u, true, 1i), Struct_1(-180f, 26856u, false, -27846i), Struct_1(2868f, 23523u, true, 16025i), Struct_1(-1687f, 50200u, false, 42045i), Struct_1(-984f, 0u, true, 63346i), Struct_1(-1048f, 0u, false, -1i), Struct_1(1021f, 76938u, false, 1i), Struct_1(-1284f, 97978u, false, -41127i), Struct_1(456f, 0u, false, 0i), Struct_1(1304f, 1u, false, 0i), Struct_1(-727f, 84258u, true, -1i), Struct_1(-1551f, 1u, false, -1i), Struct_1(1000f, 0u, true, 0i), Struct_1(1908f, 1236u, true, 61663i), Struct_1(-1280f, 29844u, false, i32(-2147483648)), Struct_1(1446f, 1u, true, 0i), Struct_1(1647f, 4294967295u, true, -44475i), Struct_1(3200f, 70572u, false, 0i), Struct_1(644f, 53216u, true, -17982i));

var<private> global1: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_add_vec2_i32(u_input.b, ~arg_1.zx);
    let var_1 = min(arg_1, _wgslsmith_div_vec3_i32(arg_1, select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_3, u_input.b.x) << (vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)), arg_1), vec3<i32>(1i, arg_3 << (4294967295u % 32u), -17068i), arg_2.yxx)));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-473f, -693f))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))))));
    let var_3 = ~(~abs(select(vec4<u32>(17626u, 1u, 42917u, 1u), vec4<u32>(66659u, 26342u, 0u, 27044u), arg_2.x)) | reverseBits(vec4<u32>(countOneBits(30749u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(29613u, 55344u), vec2<u32>(61337u, 0u)), ~75399u)));
    return ~9504u;
}

fn func_2(arg_0: vec3<bool>) -> vec2<f32> {
    let var_0 = ~(1i ^ -_wgslsmith_mult_i32(-2147483647i, u_input.b.x)) | u_input.b.x;
    var var_1 = max(max(1u, ~abs(10393u)), ~(~func_3(vec2<f32>(337f, 895f), vec3<i32>(1i, -34804i, 0i), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), 37459i)) | 1u);
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1241f, 1078f) - _wgslsmith_f_op_f32(-788f + 1386f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -266f), -993f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-943f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(317f)) * _wgslsmith_f_op_f32(round(-436f)))))));
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_4(Struct_2(-1170f, true));
    var var_1 = vec3<bool>(!var_0.a.b, !(!any(vec4<bool>(var_0.a.b, var_0.a.b, true, var_0.a.b)) | all(vec3<bool>(var_0.a.b, false, var_0.a.b))), true);
    let var_2 = global0[_wgslsmith_index_u32(1u, 30u)];
    var_1 = !(!select(select(vec3<bool>(var_1.x, true, false), select(vec3<bool>(false, true, var_0.a.b), vec3<bool>(var_0.a.b, false, var_2.c), vec3<bool>(var_2.c, var_0.a.b, false)), select(vec3<bool>(var_1.x, false, var_2.c), vec3<bool>(var_1.x, false, false), false)), !(!vec3<bool>(var_0.a.b, false, var_1.x)), select(!vec3<bool>(var_2.c, true, false), vec3<bool>(var_1.x, false, false), true)));
    let var_3 = abs(select(_wgslsmith_sub_vec2_i32(~abs(u_input.b), u_input.b), u_input.b, vec2<bool>(all(select(vec4<bool>(false, var_2.c, var_0.a.b, true), vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(true, true, var_2.c, false))), !var_1.x)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(532f, -441f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -1000f))))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(false, false, true))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) * var_0.a.a)), true)), vec2<f32>(1f, 1f), var_1.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (23045u >> (firstTrailingBit(reverseBits(~0u)) % 32u)) | abs(15977u);
    var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    global0 = array<Struct_1, 30>();
    let var_2 = Struct_3(!vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), true, _wgslsmith_f_op_f32(floor(var_1.x)) == _wgslsmith_f_op_f32(-109f + var_1.x), true), global0[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_mod_vec2_i32(select(-u_input.b, _wgslsmith_mult_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-25458i, 1i))), all(vec4<bool>(true, true, true, true))), u_input.b), abs(abs(abs(vec3<u32>(1u, 95978u, 73110u)))), Struct_2(_wgslsmith_f_op_f32(-var_1.x), true));
    let var_3 = var_1.x;
    let var_4 = Struct_4(var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(-select(vec3<i32>(5380i, -24459i, 0i), vec3<i32>(u_input.b.x, -9846i, var_2.b.d), vec3<bool>(var_4.a.b, var_2.e.b, var_2.a.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c.x, firstLeadingBit(1i), ~1i), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b.x, 0i, 20552i), _wgslsmith_sub_vec3_i32(vec3<i32>(30987i, 0i, 4444i), vec3<i32>(u_input.b.x, 43685i, var_2.c.x)))) >> (0u % 32u));
}

