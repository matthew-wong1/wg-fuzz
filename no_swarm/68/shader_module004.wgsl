struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec2<u32>(0u, 0u), 19192u, Struct_1(true), Struct_1(false), vec2<bool>(false, true)), Struct_2(vec2<u32>(40305u, 7404u), 12590u, Struct_1(false), Struct_1(true), vec2<bool>(false, false)), Struct_2(vec2<u32>(13792u, 26486u), 4294967295u, Struct_1(true), Struct_1(false), vec2<bool>(false, false)), Struct_2(vec2<u32>(0u, 1u), 0u, Struct_1(false), Struct_1(true), vec2<bool>(true, false)), Struct_2(vec2<u32>(1u, 0u), 100484u, Struct_1(true), Struct_1(false), vec2<bool>(false, true)), Struct_2(vec2<u32>(20375u, 56795u), 3284u, Struct_1(true), Struct_1(true), vec2<bool>(false, false)), Struct_2(vec2<u32>(73816u, 55818u), 30546u, Struct_1(false), Struct_1(true), vec2<bool>(true, false)), Struct_2(vec2<u32>(4294967295u, 1u), 4294967295u, Struct_1(false), Struct_1(true), vec2<bool>(false, false)), Struct_2(vec2<u32>(1u, 8185u), 11461u, Struct_1(false), Struct_1(false), vec2<bool>(false, true)), Struct_2(vec2<u32>(1u, 1u), 4294967295u, Struct_1(false), Struct_1(false), vec2<bool>(true, true)), Struct_2(vec2<u32>(0u, 4294967295u), 6013u, Struct_1(true), Struct_1(true), vec2<bool>(false, false)), Struct_2(vec2<u32>(1u, 66334u), 0u, Struct_1(true), Struct_1(false), vec2<bool>(true, false)), Struct_2(vec2<u32>(414u, 1u), 1u, Struct_1(true), Struct_1(false), vec2<bool>(true, true)), Struct_2(vec2<u32>(1u, 1u), 0u, Struct_1(false), Struct_1(true), vec2<bool>(false, true)), Struct_2(vec2<u32>(1u, 4294967295u), 0u, Struct_1(true), Struct_1(false), vec2<bool>(false, false)), Struct_2(vec2<u32>(75072u, 0u), 0u, Struct_1(false), Struct_1(false), vec2<bool>(false, false)), Struct_2(vec2<u32>(56857u, 79143u), 36765u, Struct_1(false), Struct_1(false), vec2<bool>(true, true)), Struct_2(vec2<u32>(0u, 69322u), 1u, Struct_1(true), Struct_1(false), vec2<bool>(false, false)), Struct_2(vec2<u32>(1u, 1u), 135729u, Struct_1(true), Struct_1(false), vec2<bool>(true, false)), Struct_2(vec2<u32>(0u, 33443u), 44848u, Struct_1(false), Struct_1(false), vec2<bool>(true, false)), Struct_2(vec2<u32>(4294967295u, 4832u), 7032u, Struct_1(true), Struct_1(true), vec2<bool>(true, false)), Struct_2(vec2<u32>(4690u, 0u), 671u, Struct_1(true), Struct_1(true), vec2<bool>(false, false)), Struct_2(vec2<u32>(30624u, 52468u), 2351u, Struct_1(false), Struct_1(true), vec2<bool>(false, false)), Struct_2(vec2<u32>(1u, 0u), 4294967295u, Struct_1(true), Struct_1(false), vec2<bool>(false, false)), Struct_2(vec2<u32>(96669u, 4294967295u), 4294967295u, Struct_1(false), Struct_1(true), vec2<bool>(false, false)));

var<private> global1: f32;

var<private> global2: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = ~firstLeadingBit(~(select(vec4<u32>(12811u, u_input.b.x, u_input.b.x, 10509u), vec4<u32>(0u, 6030u, 1u, u_input.b.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(21001u, 4017u, 40811u, u_input.b.x))));
    let var_1 = Struct_1(false);
    let var_2 = select(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4059u, var_0.x), var_0.wwz), 4294967295u), _wgslsmith_clamp_u32(~1u, ~u_input.b.x, 1u ^ _wgslsmith_sub_u32(19895u, var_0.x)), 4294967295u), ~vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(var_0.x, ~36402u), ~_wgslsmith_mult_u32(1u, 29495u)), true);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1849f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f)) + 509f), 380f);
    var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(558f, 1001f, var_3.x))), vec3<f32>(_wgslsmith_f_op_f32(1000f + 3128f), 431f, var_3.x), arg_0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(var_3.x - var_3.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.x, -786f, var_3.x)))))))));
    return !(!select(vec4<bool>(all(arg_0.yz), any(arg_0), true, arg_0.x || false), vec4<bool>(true, all(vec4<bool>(arg_0.x, var_1.a, true, true)), 5602u > u_input.b.x, true), true));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_1(true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-429f, -242f, var_0.a)) * _wgslsmith_f_op_f32(min(-902f, -1369f))) * arg_0), _wgslsmith_f_op_f32(-1f)));
    let var_2 = u_input.d;
    var var_3 = func_3(!(!vec3<bool>(var_0.a, true, all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)))));
    global0 = array<Struct_2, 25>();
    return func_3(vec3<bool>(var_3.x, any(vec2<bool>(var_3.x, true)), true));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = select(-abs(~vec4<i32>(28694i, u_input.c.x, u_input.d.x, 0i)), ~(~vec4<i32>(u_input.a, -39473i, -1i, u_input.a)), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-455f * 775f), 407f)), (u_input.d & vec3<i32>(u_input.c.x, u_input.d.x, 54276i)) << (vec3<u32>(0u, 13291u, 1u) % vec3<u32>(32u)))) & vec4<i32>(-59069i, u_input.d.x, ~0i, _wgslsmith_add_i32(u_input.c.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(43822i, -2147483647i, -2147483647i, u_input.d.x), vec4<i32>(u_input.c.x, u_input.d.x, 3313i, u_input.d.x)))));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 10345u >> (arg_0 % 32u)) ^ vec2<u32>(~arg_0, 1u), ~abs(reverseBits(~u_input.b)));
    var var_2 = vec4<i32>(10204i, 2147483647i, _wgslsmith_mod_i32(~var_0.x, 1i), _wgslsmith_sub_i32(-358i, 0i));
    global2 = abs(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, var_0.x), firstLeadingBit(u_input.d.x)), var_2.x));
    let var_3 = false;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 2147483647i;
    let var_0 = func_1(firstTrailingBit(~10130u) << (u_input.b.x % 32u));
    let var_1 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, firstTrailingBit(_wgslsmith_mult_i32(u_input.d.x, u_input.a)), ~(i32(-1i) * -89038i)), -(u_input.d & (u_input.d >> (vec3<u32>(u_input.b.x, 0u, 21514u) % vec3<u32>(32u)))));
    var var_2 = Struct_3(_wgslsmith_mod_vec3_i32(min(~(~vec3<i32>(u_input.d.x, 0i, u_input.a)), var_1), select(u_input.d, -u_input.d, true)), u_input.b.x);
    global2 = i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~u_input.c.x), vec2<i32>(abs(var_1.x), _wgslsmith_div_i32(-2147483647i, -26041i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(var_2.b), ~var_2.b, var_0, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, 4294967295u, 1u, 49716u), vec4<u32>(u_input.b.x, var_0, 14091u, var_2.b)))), vec3<f32>(1230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1286f)) + _wgslsmith_f_op_f32(sign(807f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-379f * -1247f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1183f, 1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-202f, 1163f, 325f, 435f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1133f, -1311f, -198f, -442f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, 1128f, -711f, 2062f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1632f, -1000f, 232f, 1272f))) + vec4<f32>(204f, -391f, 1000f, 1139f))))), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(31392u, u_input.b.x, var_2.b, 44306u)), ~vec4<u32>(8274u, 4294967295u, 4294967295u, var_2.b)), _wgslsmith_mult_u32(var_0 | var_2.b, ~var_2.b)), 16097u));
}

