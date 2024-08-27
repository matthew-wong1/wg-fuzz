struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(i32(-2147483648), 1i, 25203i, 34154i), vec4<i32>(20262i, 29238i, -1i, 1i), vec4<i32>(1856i, 1i, -1i, 25008i), vec4<i32>(23496i, -1i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, -21131i, 52967i, i32(-2147483648)), vec4<i32>(-1901i, -104126i, 2147483647i, 14212i), vec4<i32>(10860i, 16120i, 23292i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(-48431i, 1i, 50397i, -1i), vec4<i32>(37538i, -56654i, 2147483647i, i32(-2147483648)), vec4<i32>(-10241i, 23516i, i32(-2147483648), 31772i), vec4<i32>(-10813i, -19970i, -46858i, -46343i), vec4<i32>(-1i, -1i, -1i, 21644i), vec4<i32>(0i, 22170i, 1i, 2147483647i), vec4<i32>(-23716i, -29643i, 1i, 0i), vec4<i32>(i32(-2147483648), -1247i, 0i, -14448i), vec4<i32>(1i, 2147483647i, 8663i, i32(-2147483648)), vec4<i32>(-15402i, 0i, 46380i, -5753i), vec4<i32>(i32(-2147483648), -34786i, 1i, -28069i), vec4<i32>(-21190i, -1i, -2313i, -10644i), vec4<i32>(i32(-2147483648), -84464i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -758i), vec4<i32>(2147483647i, 62266i, -19379i, 6198i), vec4<i32>(2147483647i, 9350i, 0i, -36494i), vec4<i32>(1i, 21892i, -14567i, 594i));

var<private> global1: Struct_3 = Struct_3(vec2<i32>(1i, i32(-2147483648)), 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<bool>) -> u32 {
    let var_0 = !arg_0.d.yx;
    let var_1 = Struct_2(countOneBits(-vec2<i32>(abs(arg_1.b.x), _wgslsmith_sub_i32(arg_1.b.x, -40365i))), Struct_1(arg_1.a.x, abs(_wgslsmith_sub_vec4_u32(max(vec4<u32>(arg_0.b.x, u_input.c.x, arg_0.b.x, 1u), vec4<u32>(arg_0.b.x, arg_0.b.x, 39264u, 31671u)), abs(arg_0.b))), vec2<bool>(!arg_2.x, !(!var_0.x)), arg_0.d));
    global0 = array<vec4<i32>, 25>();
    global1 = Struct_3(firstTrailingBit(arg_1.b), ~abs(~u_input.e.x));
    global1 = Struct_3(abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(-26598i, u_input.b), -global1.a)), abs(~(~0u) << (u_input.d % 32u)));
    return 14045u;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool) -> bool {
    var var_0 = func_3(Struct_1(_wgslsmith_f_op_f32(max(-1335f, arg_1.a.x)), ~(~(vec4<u32>(global1.b, 55313u, 76260u, u_input.c.x) ^ vec4<u32>(global1.b, global1.b, 36424u, 1u))), !select(!vec2<bool>(true, arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(false, true), vec2<bool>(arg_2, true)), false), !select(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, true), arg_2), !vec3<bool>(false, arg_2, true), true)), arg_1, vec4<bool>(_wgslsmith_sub_i32(-1i, u_input.a) < 0i, arg_2, arg_2, -2147483647i <= (_wgslsmith_add_i32(-18478i, global1.a.x) << (1u % 32u))));
    var_0 = _wgslsmith_dot_vec2_u32(~abs(_wgslsmith_mod_vec2_u32(abs(u_input.e), vec2<u32>(global1.b, global1.b) | u_input.e)), ~u_input.e);
    var var_1 = vec3<i32>(arg_1.b.x, _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(-1i, global1.a.x)), -vec2<i32>(global1.a.x, -1i) >> (~u_input.c.xx % vec2<u32>(32u))), 2147483647i) | vec3<i32>(~(~(~(-519i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(global1.b, 25u)], vec4<i32>(global1.a.x, u_input.a, global1.a.x, -8436i)), ~(-13909i)), -select(u_input.a, -2147483647i, all(vec4<bool>(arg_2, arg_2, true, true))));
    global1 = Struct_3(vec2<i32>(-12976i, max(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-9801i, 5931i, global1.a.x), vec3<i32>(-1i, global1.a.x, -1i)), -vec3<i32>(0i, arg_1.b.x, 11545i)))), u_input.d);
    let var_2 = _wgslsmith_mult_vec4_u32(~((vec4<u32>(7817u, u_input.c.x, 28430u, u_input.c.x) << (vec4<u32>(u_input.e.x, global1.b, 15067u, 0u) % vec4<u32>(32u))) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.b, 1u, global1.b, 1u), vec4<u32>(5303u, 0u, 0u, 0u)) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 38609u), vec4<u32>(global1.b, 1u, 39233u, 15149u)), ~vec4<u32>(u_input.c.x, 1u, 8041u, u_input.e.x)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, global1.b, global1.b)), ~vec4<u32>(u_input.e.x, 34485u, 0u, global1.b)), vec4<u32>(~global1.b, max(u_input.d, 0u), ~37539u, u_input.d)));
    return (true != arg_2) || true;
}

fn func_1() -> Struct_2 {
    return Struct_2(-vec2<i32>(-(i32(-1i) * -81193i), global1.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1393f, -642f)) * 1184f) - _wgslsmith_f_op_f32(f32(-1f) * -798f)), abs(vec4<u32>(~global1.b, ~global1.b, ~global1.b, global1.b)), vec2<bool>(true, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, 924f, -604f, -1145f)), Struct_4(vec4<f32>(1040f, 1049f, -345f, -257f), vec2<i32>(global1.a.x, 56880i)), select(false, false, false))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(764f, 604f, 586f, 2045f), vec4<f32>(1337f, 456f, -983f, 961f), vec4<bool>(true, false, false, true))), Struct_4(vec4<f32>(1604f, 979f, 118f, -167f), global1.a), false))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.a);
    global0 = array<vec4<i32>, 25>();
    global0 = array<vec4<i32>, 25>();
    var var_1 = func_1().b;
    var var_2 = -(~abs(-1617i));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec4<f32>(1f, _wgslsmith_f_op_f32(round(1208f)), -1122f, 1f), vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_add_i32(-1i, u_input.b), 72711i), -2147483647i));
    let var_1 = all(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, true))));
    global0 = array<vec4<i32>, 25>();
    var var_2 = ~_wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(~vec3<i32>(-37673i, 1i, global1.a.x), -vec3<i32>(u_input.a, -2147483647i, global1.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.a), 2147483647i, 1i), ~vec3<i32>(1i, u_input.b, global1.a.x) & ~vec3<i32>(global1.a.x, var_0.b.x, var_0.b.x)));
    var_2 = abs(vec3<i32>(i32(-1i) * -63221i, countOneBits(-var_0.b.x) & var_0.b.x, _wgslsmith_mod_i32(i32(-1i) * -456i, -2147483647i)));
    global0 = array<vec4<i32>, 25>();
    let var_3 = select(vec4<bool>(func_4(firstTrailingBit(global1.b ^ 105672u), Struct_1(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), abs(vec4<u32>(30622u, 11368u, global1.b, 0u)), vec2<bool>(false, var_1), !vec3<bool>(false, var_1, var_1)), ~global1.b ^ ~4294967295u, func_1()), any(!select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, true))), var_1, !(!(var_1 | var_1))), !(!select(vec4<bool>(false, var_1, true, var_1), vec4<bool>(var_1, true, false, var_1), true)), select(select(!select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(var_1, true, true, var_1)), select(vec4<bool>(var_1, false, false, var_1), select(vec4<bool>(false, false, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, var_1, true, false)), vec4<bool>(true, var_1, true, false)), !any(vec4<bool>(var_1, false, var_1, true))), vec4<bool>((1i >= var_0.b.x) | false, true, false, !var_1), vec4<bool>(all(!vec4<bool>(var_1, false, var_1, var_1)), true, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), global0[_wgslsmith_index_u32(u_input.d, 25u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-237f, var_0.a.x, 598f, -790f), vec4<f32>(377f, 1000f, var_0.a.x, -345f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-881f, -996f, var_0.a.x, var_0.a.x))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, 1641f, var_0.a.x, var_0.a.x), var_0.a)) * _wgslsmith_f_op_vec4_f32(var_0.a * var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1562f, 1056f, var_0.a.x, var_0.a.x)))))));
}

