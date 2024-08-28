struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(-1i, -6764i), vec2<i32>(42142i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(0i, -1i), vec2<i32>(-1932i, i32(-2147483648)), vec2<i32>(0i, 13337i), vec2<i32>(-32902i, 9410i), vec2<i32>(2147483647i, -25080i), vec2<i32>(3070i, -21352i), vec2<i32>(17527i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, 10776i), vec2<i32>(53218i, -1i), vec2<i32>(82949i, 36919i), vec2<i32>(48534i, -1i), vec2<i32>(i32(-2147483648), -35107i), vec2<i32>(i32(-2147483648), -26543i), vec2<i32>(19871i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 10065i), vec2<i32>(0i, 0i), vec2<i32>(-1i, -27181i), vec2<i32>(-1i, -55007i));

var<private> global1: f32;

var<private> global2: array<vec4<i32>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32) -> i32 {
    global2 = array<vec4<i32>, 30>();
    let var_0 = Struct_1(_wgslsmith_mod_i32(u_input.c, abs(firstTrailingBit(56438i))), select(_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(4294967295u, 4294967295u)) ^ ~arg_0, arg_0, false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(f32(-1f) * -926f), false)))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), min(min(abs(arg_0), ~arg_0) << (_wgslsmith_clamp_u32(~70605u, 0u, ~9601u) % 32u), ~(~(~u_input.a.x))));
    global1 = var_0.c;
    var var_1 = !select(vec4<bool>(true, any(var_0.d), select(var_0.e, var_0.b, var_0.d.x) < reverseBits(u_input.b), !var_0.d.x), !(!select(vec4<bool>(var_0.d.x, var_0.d.x, true, true), vec4<bool>(var_0.d.x, true, false, true), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))), false);
    global0 = array<vec2<i32>, 23>();
    return -53591i;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<i32>) -> vec3<i32> {
    return _wgslsmith_mod_vec3_i32(countOneBits(-(vec3<i32>(2147483647i, 15873i, 67021i) << (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u)))) | vec3<i32>(_wgslsmith_mod_i32(arg_2.x, arg_0.x ^ arg_2.x), min(-2147483647i ^ u_input.c, min(arg_2.x, u_input.c)), _wgslsmith_clamp_i32(-7306i, -arg_2.x, 0i)), select(-vec3<i32>(42596i, u_input.c, arg_2.x), vec3<i32>(~func_3(1u), 1i, countOneBits(arg_2.x & -6555i)), vec3<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), false)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(round(-323f));
    var var_0 = select(~_wgslsmith_sub_u32(55755u, u_input.a.x), ~40257u | min(~(~22230u), min(~u_input.b, 1u)), false);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(257f, _wgslsmith_f_op_f32(arg_1 * arg_1)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1708f, -1199f), vec2<f32>(248f, arg_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-487f, arg_1) * vec2<f32>(arg_1, 1425f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(501f, -2249f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-597f, arg_1) * vec2<f32>(arg_1, arg_1)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, arg_1), vec2<f32>(1229f, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -241f))))), _wgslsmith_div_vec2_u32(countOneBits(u_input.a.wx), select(u_input.a.xy, select(~vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, 43733u), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1543f, -1268f, arg_1))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1440f, arg_1, arg_1), vec3<f32>(arg_1, arg_1, -111f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, -132f, arg_1)))))))), Struct_2(_wgslsmith_dot_vec2_i32(-vec2<i32>(-11483i, -61060i) << (vec2<u32>(37798u, u_input.a.x) % vec2<u32>(32u)), arg_3.yx), Struct_1(arg_2.x, ~u_input.a.x ^ select(4294967295u, 17431u, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f + -2118f)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), u_input.a.x), Struct_1(1i, u_input.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_div_f32(arg_1, arg_1), true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), ~(~u_input.b)), Struct_1(~arg_2.x >> (1u % 32u), u_input.a.x, -995f, select(vec2<bool>(true, true), vec2<bool>(true, false), true), 13002u)));
    var_0 = u_input.a.x;
    global2 = array<vec4<i32>, 30>();
    return var_1.d.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_4) -> vec4<u32> {
    global2 = array<vec4<i32>, 30>();
    var var_0 = func_4(_wgslsmith_clamp_i32(-1i, arg_2.c.d.a >> (_wgslsmith_mod_u32(arg_3.c.b.x, abs(89161u)) % 32u), 8171i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1035f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.a.x * arg_1.x) + -966f))), global0[_wgslsmith_index_u32(arg_2.c.b.x, 23u)], _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_2.c.d.d.a, 3154i), vec3<i32>(u_input.c, -24260i, u_input.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 2147483647i, arg_2.c.d.c.a), vec3<i32>(-21943i, u_input.c, arg_2.e.b.a), vec3<i32>(arg_3.c.d.c.a, arg_3.e.b.a, u_input.c))), vec3<i32>(arg_3.c.d.b.a, _wgslsmith_div_i32(arg_2.e.b.a, 0i), u_input.c), func_2(abs(-vec2<i32>(arg_2.b.d.c.a, arg_2.c.d.a)), -599f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.yyx, vec3<u32>(arg_3.b.d.d.e, 45787u, arg_2.b.b.x)), max(u_input.a.wwx, vec3<u32>(arg_0.x, 4294967295u, 4294967295u))), 23u)])));
    let var_1 = arg_3.b;
    var var_2 = Struct_1(_wgslsmith_mult_i32(u_input.c, func_4(var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-155f, -819f)))), vec2<i32>(u_input.c | arg_2.e.d.a, var_0.a), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.c, var_0.a, var_0.a)), vec3<i32>(0i, 0i, 21557i))).a), reverseBits(u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !vec2<bool>(arg_2.e.b.d.x, true), arg_2.e.b.e);
    let var_3 = select(!(!vec3<bool>(var_0.d.x & false, any(vec3<bool>(arg_3.c.d.d.d.x, false, arg_2.b.d.c.d.x)), func_4(0i, -795f, global0[_wgslsmith_index_u32(u_input.b, 23u)], vec3<i32>(arg_3.e.b.a, -513i, 2147483647i)).d.x)), select(select(!vec3<bool>(arg_2.b.d.d.d.x, var_2.d.x, false), !vec3<bool>(arg_3.c.d.c.d.x, arg_3.e.b.d.x, arg_2.c.d.b.d.x), vec3<bool>(true, true, !var_2.d.x)), vec3<bool>(var_2.d.x, !var_0.d.x, arg_2.c.d.c.d.x), !(!select(vec3<bool>(false, arg_2.e.d.d.x, arg_2.c.d.b.d.x), vec3<bool>(false, var_0.d.x, true), vec3<bool>(false, var_2.d.x, false)))), var_0.d.x);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.a << (u_input.a % vec4<u32>(32u)), func_1(~vec2<u32>(u_input.b, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(760f, 953f) + vec2<f32>(999f, 325f)), Struct_4(u_input.b, Struct_3(vec2<f32>(-877f, 263f), u_input.a.yw, vec3<f32>(2179f, -1411f, -121f), Struct_2(u_input.c, Struct_1(40150i, u_input.b, 396f, vec2<bool>(true, false), u_input.a.x), Struct_1(-1i, 16081u, -1460f, vec2<bool>(false, false), 44207u), Struct_1(u_input.c, 27288u, -933f, vec2<bool>(true, true), 1u))), Struct_3(vec2<f32>(1207f, 111f), u_input.a.xz, vec3<f32>(-1733f, -462f, 1000f), Struct_2(-2814i, Struct_1(-2147483647i, u_input.b, 142f, vec2<bool>(true, true), 27256u), Struct_1(u_input.c, 4294967295u, 2494f, vec2<bool>(false, false), u_input.b), Struct_1(u_input.c, u_input.a.x, -747f, vec2<bool>(false, true), u_input.b))), 136f, Struct_2(u_input.c, Struct_1(-40093i, 0u, 1015f, vec2<bool>(false, false), 28173u), Struct_1(u_input.c, 0u, 123f, vec2<bool>(false, true), 1u), Struct_1(1i, u_input.a.x, 378f, vec2<bool>(true, false), u_input.b))), Struct_4(u_input.a.x, Struct_3(vec2<f32>(-158f, -1473f), u_input.a.xx, vec3<f32>(542f, 485f, -212f), Struct_2(-65107i, Struct_1(u_input.c, u_input.b, -200f, vec2<bool>(false, false), u_input.a.x), Struct_1(u_input.c, 4294967295u, -1904f, vec2<bool>(false, true), 13890u), Struct_1(u_input.c, 152876u, -1253f, vec2<bool>(true, true), 1u))), Struct_3(vec2<f32>(831f, -1000f), vec2<u32>(u_input.b, u_input.b), vec3<f32>(1226f, -641f, 249f), Struct_2(u_input.c, Struct_1(-1i, 0u, 1266f, vec2<bool>(true, true), u_input.b), Struct_1(u_input.c, u_input.b, -1044f, vec2<bool>(false, true), 1765u), Struct_1(u_input.c, 1u, 1000f, vec2<bool>(true, true), u_input.b))), -1000f, Struct_2(24025i, Struct_1(u_input.c, u_input.a.x, 809f, vec2<bool>(false, false), u_input.b), Struct_1(-2147483647i, 7996u, -113f, vec2<bool>(false, true), 21449u), Struct_1(-1i, u_input.a.x, 419f, vec2<bool>(false, true), u_input.a.x))))), abs(~u_input.a) >> (~_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.b, u_input.a.x, u_input.b, 1u)) % vec4<u32>(32u))));
    global1 = -1687f;
    let var_1 = Struct_2(countOneBits(_wgslsmith_mult_i32(u_input.c, 27443i)) | 0i, func_4(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-333f * _wgslsmith_f_op_f32(f32(-1f) * -725f))), ~reverseBits(vec2<i32>(-45272i, u_input.c) ^ global0[_wgslsmith_index_u32(var_0, 23u)]), vec3<i32>(u_input.c, ~u_input.c, i32(-1i) * -1i) | ~firstTrailingBit(vec3<i32>(u_input.c, 2147483647i, 2147483647i))), Struct_1(~16544i, var_0, _wgslsmith_f_op_f32(floor(-214f)), !func_4(1i, _wgslsmith_f_op_f32(sign(-477f)), ~global0[_wgslsmith_index_u32(78259u, 23u)], _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -1i, 1i), vec3<i32>(-61851i, -1i, 2147483647i))).d, var_0), func_4(func_4(~(-2147483647i), _wgslsmith_f_op_f32(-810f - -171f), vec2<i32>(u_input.c, 29231i), vec3<i32>(-10681i, -2147483647i, -25586i)).a ^ -(~2147483647i), 141f, -global0[_wgslsmith_index_u32(0u, 23u)] << (u_input.a.zx % vec2<u32>(32u)), reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(-74312i, 0i, -7687i), vec3<i32>(u_input.c, 1i, u_input.c))))));
    let var_2 = !vec4<bool>(false, false, true, !var_1.c.d.x);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c, -min(min(1i, 2147483647i), -13767i)), ~(~50652i));
    global0 = array<vec2<i32>, 23>();
    var var_4 = -global0[_wgslsmith_index_u32(~(var_0 | ~_wgslsmith_clamp_u32(var_0, var_0, 0u)), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.c.c + _wgslsmith_div_f32(var_1.c.c, 1000f)), var_1.b.c)), 4294967295u, -_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-1i, 52920i, -26524i), u_input.c ^ u_input.c), max(vec2<i32>(1i, 45295i), _wgslsmith_mult_vec2_i32(vec2<i32>(7905i, var_4.x), global0[_wgslsmith_index_u32(u_input.b, 23u)]))));
}

