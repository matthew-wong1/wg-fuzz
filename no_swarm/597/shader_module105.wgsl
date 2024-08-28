struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = vec3<bool>(true && (min(1i, global0.a.x) < abs(-2147483647i)), all(vec4<bool>(!any(global1[_wgslsmith_index_u32(u_input.b, 1u)]), true, true, true)), _wgslsmith_f_op_f32(min(1056f, _wgslsmith_div_f32(1936f, _wgslsmith_f_op_f32(max(1719f, -1070f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-717f)))));
    var var_1 = _wgslsmith_f_op_f32(-119f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(199f)))), _wgslsmith_f_op_f32(abs(-448f))));
    global1 = array<vec2<bool>, 1>();
    let var_2 = -203f;
    let var_3 = 2147483647i;
    return 73933i;
}

fn func_2(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = vec2<i32>(abs(global0.a.x >> (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 12012u, u_input.b), vec4<u32>(18504u, u_input.b, u_input.b, u_input.b))) % 32u)), 0i);
    let var_1 = !select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), !vec3<bool>(arg_0.d.x <= -499f, true, u_input.a <= 0i), all(vec3<bool>(true, true, -8540i <= var_0.x)));
    var var_2 = -22002i;
    global1 = array<vec2<bool>, 1>();
    global1 = array<vec2<bool>, 1>();
    return select(~vec4<i32>(-12344i, global0.a.x, -2147483647i, ~func_3()), vec4<i32>(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, global0.a.x), arg_0.b.a.xx), -2147483647i), 17828i, firstLeadingBit(2147483647i), 48628i), !var_1.x);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec2<bool>, 1>();
    global0 = Struct_1(arg_3.a >> (firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(36595u, u_input.b, 16598u)))) % vec3<u32>(32u)));
    global0 = arg_3;
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, func_3(), u_input.a >> (99838u % 32u)), func_2(Struct_3(arg_1.x, Struct_1(vec3<i32>(arg_1.x, 2147483647i, -58152i)), arg_3, vec2<f32>(arg_2, -1370f))).zxy)), Struct_1(_wgslsmith_clamp_vec3_i32(arg_3.a, max(vec3<i32>(0i, 70536i, arg_3.a.x), countOneBits(vec3<i32>(5558i, 9494i, -2147483647i))), vec3<i32>(arg_3.a.x, 1i ^ arg_3.a.x, ~global0.a.x))), _wgslsmith_f_op_f32(-arg_2), arg_3);
    var var_1 = Struct_3((i32(-1i) * -var_0.b.a.x) | (i32(-1i) * -_wgslsmith_div_i32(1i, 2147483647i)), Struct_1(select(vec3<i32>(-12372i, i32(-1i) * -2147483647i, i32(-1i) * -2147483647i), reverseBits(_wgslsmith_add_vec3_i32(arg_1.zyy, vec3<i32>(0i, 43769i, -16554i))), vec3<bool>(any(vec2<bool>(false, arg_0)), select(true, true, arg_0), false))), Struct_1(countOneBits(vec3<i32>(-1i, arg_3.a.x, select(arg_1.x, u_input.a, arg_0)))), vec2<f32>(-360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), arg_2, false)))));
    return var_1.b;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = 42847u;
    global0 = func_4(false, _wgslsmith_mult_vec4_i32(-select(vec4<i32>(14511i, 1128i, global0.a.x, global0.a.x), vec4<i32>(u_input.a, -34111i, u_input.a, global0.a.x), vec4<bool>(false, true, false, true)), func_2(Struct_3(global0.a.x, Struct_1(global0.a), Struct_1(global0.a), vec2<f32>(457f, -496f)))) << (~min(max(vec4<u32>(arg_1.x, u_input.b, 65610u, 612u), vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_1.x)), vec4<u32>(u_input.b, 25853u, 58670u, 47312u) ^ vec4<u32>(0u, 0u, 4294967295u, 26757u)) % vec4<u32>(32u)), -519f, Struct_1(vec3<i32>(global0.a.x, -34886i, i32(-1i) * -45315i)));
    global0 = Struct_1(vec3<i32>(-firstLeadingBit(91334i), global0.a.x, func_2(Struct_3(~u_input.a, func_4(true, vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), -1224f, Struct_1(vec3<i32>(global0.a.x, 54054i, 2147483647i))), func_4(true, vec4<i32>(global0.a.x, -22187i, 64867i, u_input.a), -1172f, Struct_1(vec3<i32>(2147483647i, global0.a.x, global0.a.x))), vec2<f32>(-506f, -300f))).x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), -879f);
    var var_2 = arg_0;
    return Struct_1(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec3<i32>(u_input.a, ~1i, _wgslsmith_mod_i32(-16353i ^ u_input.a, -8915i)));
    global1 = array<vec2<bool>, 1>();
    global0 = func_1(~select(~(~u_input.b), u_input.b, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), firstTrailingBit(vec3<u32>(143u, ~(u_input.b << (4294967295u % 32u)), u_input.b)));
    global1 = array<vec2<bool>, 1>();
    global1 = array<vec2<bool>, 1>();
    let var_1 = ~(~_wgslsmith_mult_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 0u))), ~vec3<u32>(u_input.b, 0u, u_input.b)));
    let var_2 = Struct_3(u_input.a, Struct_1(-global0.a), Struct_1(vec3<i32>(var_0.a.x, abs(global0.a.x), _wgslsmith_div_i32(var_0.a.x, 0i)) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(var_0.a, vec3<i32>(22718i, global0.a.x, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a), global0.a), global0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1323f, 1000f), vec2<f32>(791f, 701f), true)) + vec2<f32>(497f, -178f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1097f + var_2.d.x)), _wgslsmith_div_f32(173f, var_2.d.x), var_2.d.x, var_2.d.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x) + vec4<f32>(-503f, var_2.d.x, var_2.d.x, var_2.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, var_2.d.x, var_2.d.x, var_2.d.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(min(func_1(41400u, ~var_1).a.x, var_2.c.a.x)), 1000f, ~_wgslsmith_div_i32(func_1(~u_input.b, vec3<u32>(var_1.x, 1u, 0u)).a.x, -2147483647i ^ u_input.a));
}

