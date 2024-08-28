struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global0 = array<i32, 10>();
    global1 = vec3<bool>(false, !(!((global1.x == false) || false)), any(vec2<bool>(true, true | global1.x)));
    var var_0 = (~(~2617i) >> (arg_0.x % 32u)) << (46947u % 32u);
    global2 = array<vec4<bool>, 24>();
    let var_1 = _wgslsmith_mod_vec2_u32(arg_0.xw, arg_0.xy);
    return Struct_2(Struct_1(37863u | _wgslsmith_mod_u32(~var_1.x, 0u & arg_0.x)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_i32(~u_input.a, 18139i);
    global1 = select(vec3<bool>(true, true, !global1.x), select(vec3<bool>(all(select(global2[_wgslsmith_index_u32(51528u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)])), global1.x, true), !(!select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, true), vec3<bool>(true, global1.x, global1.x))), all(select(vec3<bool>(false, true, global1.x), vec3<bool>(true, true, false), vec3<bool>(true, global1.x, global1.x)))), vec3<bool>(true, select(all(global1.zy), true, global1.x), global1.x));
    global1 = !vec3<bool>(true, select(true, true, true), true);
    let var_1 = true;
    let var_2 = ~(abs(reverseBits(vec2<u32>(1u, 1u))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    return -181f;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> vec4<u32> {
    global2 = array<vec4<bool>, 24>();
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)) << (1u % 32u)), select(reverseBits(~vec3<u32>(0u, 1u, 4294967295u)), vec3<u32>(1u, 1u, 1u), true));
    let var_1 = func_2(~(~vec4<u32>(334u, 1237u, 1u, 1u)) ^ ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(58133u, 4294967295u, 34673u), vec3<u32>(533u, 1u, 2568u)), 1u, countOneBits(28169u), reverseBits(69742u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1949f)) * arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))), -131f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 760f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1581f, _wgslsmith_div_f32(409f, arg_1), _wgslsmith_f_op_f32(arg_1 - -897f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(395f, arg_1, 157f, -1274f), vec4<f32>(arg_1, arg_1, arg_1, -322f)))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) * _wgslsmith_f_op_f32(func_3())))), select(!select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a, 36472u), vec2<u32>(var_1.a.a, 0u)), 24u)], !global2[_wgslsmith_index_u32(var_1.a.a, 24u)], select(vec4<bool>(global1.x, false, arg_0.x, global1.x), global2[_wgslsmith_index_u32(4294967295u, 24u)], vec4<bool>(false, true, true, global1.x))), vec4<bool>(false, true, !select(arg_0.x, true, false), true), !all(!global1.yy))));
    let var_3 = -684f;
    return firstTrailingBit(~(~(~vec4<u32>(var_1.a.a, 0u, 0u, 0u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> vec3<bool> {
    global2 = array<vec4<bool>, 24>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-354f, -566f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1485f)) + -1135f))));
    global0 = array<i32, 10>();
    return !(!select(vec3<bool>(global1.x | false, global1.x || false, any(vec3<bool>(true, true, true))), vec3<bool>(global1.x, global1.x, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 10>();
    var var_0 = -vec3<i32>(global0[_wgslsmith_index_u32(1u, 10u)], reverseBits(reverseBits(u_input.a)) | 1i, u_input.a);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-309f)))), -1166f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1106f, -633f, false)) * _wgslsmith_div_f32(-766f, -329f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), -704f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(782f, var_1.x, _wgslsmith_f_op_f32(111f + var_1.x)))), func_4(vec4<u32>(15081u, 0u, 33740u, 64507u) | func_1(vec3<bool>(global1.x, global1.x, global1.x), -690f), Struct_2(Struct_1(0u))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(35604u, 10u)], u_input.a), u_input.b.x, -2147483647i, min(29452i, 33099i)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -4922i, global0[_wgslsmith_index_u32(4294967295u, 10u)], 51370i), vec4<i32>(u_input.a, var_0.x, u_input.b.x, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-5049i, u_input.a, global0[_wgslsmith_index_u32(0u, 10u)], -4633i), vec4<i32>(-1i, u_input.a, -41040i, 2147483647i))))), abs(-(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(21891u, 10u)], var_0.x, 2147483647i), vec3<i32>(-30446i, 2147483647i, u_input.b.x)) << (firstTrailingBit(vec3<u32>(4294967295u, 22672u, 1u)) % vec3<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2874f)))), _wgslsmith_f_op_f32(498f * var_1.x)));
}

