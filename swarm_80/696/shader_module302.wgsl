struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-5096i, 1i, 0i), vec3<i32>(-16433i, 2147483647i, 2147483647i), vec3<i32>(-1i, 2147483647i, 65225i), vec3<i32>(-29683i, 24552i, 0i), vec3<i32>(40689i, 0i, 2147483647i), vec3<i32>(0i, 22480i, 1i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(-21573i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), -1i, 21725i), vec3<i32>(29727i, i32(-2147483648), -1i), vec3<i32>(-21918i, -5853i, -26474i), vec3<i32>(681i, -10435i, i32(-2147483648)), vec3<i32>(31791i, -6832i, -21827i), vec3<i32>(32133i, 0i, 13987i), vec3<i32>(0i, 2147483647i, -45156i), vec3<i32>(-1i, -62189i, 7612i), vec3<i32>(-3420i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 25323i, 33974i), vec3<i32>(20823i, 1i, 2147483647i), vec3<i32>(-28308i, 84884i, 55712i), vec3<i32>(32897i, -1i, 2147483647i), vec3<i32>(-10916i, 0i, 30836i), vec3<i32>(1i, 6322i, 27211i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = Struct_4(vec2<bool>(true, true));
    return _wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(min(4294967295u, u_input.a), _wgslsmith_clamp_u32(4294967295u, 48u, u_input.a)), 0u), _wgslsmith_clamp_u32(23502u, ~(39379u >> (u_input.a % 32u)), ~(~u_input.a)), max(~4294967295u, u_input.a)), vec4<u32>(u_input.a, _wgslsmith_div_u32(~1u, u_input.a), ~reverseBits(~0u), _wgslsmith_add_u32(10377u, u_input.a)));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = func_3(-(~1i));
    global0 = array<vec3<i32>, 23>();
    var var_1 = vec2<i32>(1i, 1i);
    var_1 = vec2<i32>(var_1.x, _wgslsmith_mod_i32(~var_1.x, _wgslsmith_div_i32(var_1.x, ~min(var_1.x, -10767i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f - -1122f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(996f)), _wgslsmith_f_op_f32(step(494f, 247f)))), _wgslsmith_f_op_f32(-1147f - -294f), false))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    global0 = array<vec3<i32>, 23>();
    let var_0 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(197f + _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1263f)) * -1185f), _wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1113f, 371f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2564f, -284f, 858f, -383f), _wgslsmith_div_vec4_f32(vec4<f32>(856f, -816f, 384f, -687f), vec4<f32>(-309f, 214f, -565f, 140f)))))), Struct_1(!vec2<bool>(arg_1 <= 45743i, all(arg_0.yx)), ~_wgslsmith_clamp_vec4_i32(max(vec4<i32>(arg_1, arg_1, arg_1, -2147483647i), vec4<i32>(2147483647i, 0i, arg_1, 21279i)), -vec4<i32>(20606i, arg_1, arg_1, arg_1), vec4<i32>(arg_1, -1i, 14775i, arg_1))), Struct_1(vec2<bool>(true, true), vec4<i32>(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]), _wgslsmith_clamp_i32(arg_1, -2147483647i, -59403i), -arg_1, arg_1) >> (~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u))));
    var var_1 = Struct_1(vec2<bool>(var_0.b.a.x, firstTrailingBit(var_0.b.b.x) < (i32(-1i) * -2147483647i)), firstTrailingBit(abs(-vec4<i32>(arg_1, var_0.c.b.x, var_0.b.b.x, var_0.b.b.x))));
    var var_2 = Struct_3((_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 29093u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)), abs(vec3<u32>(u_input.a, 1u, 0u))) & vec3<u32>(35804u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1169u, 4294967295u), vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u)))) | ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 2771u, u_input.a), countOneBits(vec3<u32>(0u, u_input.a, 1u))), var_0, reverseBits(abs(~(~vec4<u32>(u_input.a, 46954u, 0u, u_input.a)))), -2105f, all(vec2<bool>(_wgslsmith_f_op_f32(round(var_0.a.x)) < 468f, var_0.b.a.x)));
    let var_3 = abs(countOneBits(-reverseBits(var_1.b.wzw)));
    return _wgslsmith_f_op_f32(1200f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, -1056f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), 2147483647i)), _wgslsmith_div_f32(180f, -331f))), _wgslsmith_f_op_f32(f32(-1f) * -285f), -720f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1561f, -1000f, -768f, -604f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(128f, -1431f, 1264f, 459f) - vec4<f32>(-1181f, 1510f, -805f, 1957f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-501f, 222f, -900f, 842f), vec4<f32>(-1673f, 1557f, -1545f, 1474f), false)), vec4<f32>(-413f, -439f, 277f, 1105f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, -282f, -1783f, -525f))), vec4<bool>(true, true, true, true)))), vec4<bool>(true, ~firstLeadingBit(6003i) <= _wgslsmith_dot_vec4_i32(-vec4<i32>(7518i, -33044i, -3706i, 1i), select(vec4<i32>(-2147483647i, -1i, -19248i, -10908i), vec4<i32>(42804i, 34704i, -4075i, -12287i), vec4<bool>(false, false, false, false))), true, ~(~u_input.a) < max(~u_input.a, ~1u))));
    let var_1 = _wgslsmith_div_u32(u_input.a, u_input.a);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(var_0.x)))), -422f, -1533f) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * var_0.x))), var_0.x, _wgslsmith_f_op_f32(func_2(~vec3<u32>(u_input.a, 70110u, u_input.a))), var_0.x));
    var var_2 = Struct_4(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, var_1 <= u_input.a), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec4<bool>(false, false, false, false)))), vec2<bool>(true, select(true, true, true)), true));
    var var_3 = Struct_3(~(~(vec3<u32>(0u, 7399u, var_1) >> (~vec3<u32>(u_input.a, 4294967295u, 7450u) % vec3<u32>(32u)))), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 910f, 1341f, var_0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1000f, -268f) - vec4<f32>(var_0.x, -352f, var_0.x, var_0.x))))), Struct_1(select(var_2.a, !vec2<bool>(var_2.a.x, false), any(vec2<bool>(false, true))), vec4<i32>(~(-1i), _wgslsmith_add_i32(0i, -1i), countOneBits(-33014i), ~25976i)), Struct_1(var_2.a, _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(65050i, -1i, 26043i, -1i), vec4<i32>(14905i, -29460i, 792i, 41590i))))), vec4<u32>(4294967295u, 1u, 39026u, var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(1322f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - var_0.x), all(select(select(select(vec4<bool>(false, var_2.a.x, var_2.a.x, true), vec4<bool>(false, var_2.a.x, false, var_2.a.x), var_2.a.x), select(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, true, true), vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x)), !vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x)), select(!vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(true, true, true, true), !vec4<bool>(false, var_2.a.x, false, true)), vec4<bool>(any(vec3<bool>(var_2.a.x, true, var_2.a.x)), false, true, false))));
    var_3 = Struct_3(vec3<u32>(~_wgslsmith_mod_u32(4294967295u, 30936u), 1u, ~select(6670u, ~var_3.a.x, true)), var_3.b, abs(~vec4<u32>(~0u, func_3(var_3.b.b.b.x).x, 681u, _wgslsmith_add_u32(var_3.a.x, 35087u))), _wgslsmith_f_op_f32(max(var_3.d, _wgslsmith_f_op_f32(func_1(!select(vec3<bool>(var_2.a.x, var_3.b.c.a.x, true), vec3<bool>(var_2.a.x, true, var_3.b.c.a.x), vec3<bool>(true, true, var_3.b.b.a.x)), ~var_3.b.b.b.x)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(-416f, vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1, 4294967295u), _wgslsmith_add_u32(var_1, 0u)), u_input.a, var_3.a.x, ~(~var_3.a.x)), var_0.x, var_3.b.c.b.zz);
}

