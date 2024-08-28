struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-860f * -691f)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.b)), 1061f, arg_0.b))));
    var var_1 = select(!(!vec4<bool>(arg_0.a, true, true, arg_0.b == 1794f)), !select(select(!vec4<bool>(arg_0.a, arg_0.a, true, true), !vec4<bool>(true, arg_0.a, arg_0.a, false), !arg_0.a), vec4<bool>(any(vec3<bool>(arg_0.a, true, arg_0.a)), !arg_0.a, all(vec2<bool>(arg_0.a, arg_0.a)), u_input.a > u_input.a), vec4<bool>(false, var_0.x < -332f, arg_0.a, true)), !select(select(select(vec4<bool>(false, false, false, arg_0.a), vec4<bool>(true, arg_0.a, true, arg_0.a), true), select(vec4<bool>(false, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, false, false, false), false), false), !(!vec4<bool>(false, true, true, arg_0.a)), select(select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, true), false), vec4<bool>(false, arg_0.a, false, arg_0.a), any(vec2<bool>(arg_0.a, arg_0.a)))));
    global0 = array<Struct_1, 17>();
    var var_2 = vec4<i32>(-15443i, max(-u_input.a, u_input.a), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, u_input.a), 1i), u_input.a) | vec4<i32>(min(abs(u_input.a) << (~1u % 32u), min(1i, _wgslsmith_div_i32(2147483647i, u_input.a))), min(u_input.a, u_input.a), min(u_input.a, -u_input.a), 5528i);
    return _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(580f - -1446f))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = Struct_1(!all(select(select(arg_2.b.yw, arg_0.zz, arg_2.d.b.a), !vec2<bool>(arg_2.a.a, arg_2.d.b.a), any(arg_2.b.wyw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -757f)));
    var var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x) | u_input.b.x, ~u_input.b.x, firstTrailingBit(u_input.b.x)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(~(u_input.a | firstTrailingBit(u_input.a)), -(~u_input.a) | _wgslsmith_sub_i32(1i, -38300i)), -(~(-_wgslsmith_sub_i32(-9060i, -1i))));
    let var_3 = Struct_3(Struct_1(any(arg_0.yx), 369f), select(!(!arg_2.b), vec4<bool>(!all(arg_0), var_0.a, arg_0.x, (u_input.a == -18399i) != arg_0.x), vec4<bool>(true, any(vec3<bool>(true, false, var_0.a)), true, true)), _wgslsmith_f_op_vec2_f32(-arg_2.e), Struct_2(arg_2.d.a, Struct_1(true, -249f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_div_f32(arg_2.d.b.b, -625f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1082f, arg_1, arg_2.a.a))))) - _wgslsmith_f_op_vec2_f32(func_3(arg_2.a))));
    let var_4 = select(select(select(var_3.b, var_3.b, _wgslsmith_f_op_f32(var_0.b * -556f) < 670f), !vec4<bool>(all(var_3.b), true, true, arg_0.x), !select(vec4<bool>(arg_2.b.x, false, arg_2.a.a, var_0.a), select(vec4<bool>(false, var_3.b.x, true, false), vec4<bool>(false, true, arg_2.a.a, var_0.a), false), all(var_3.b))), !arg_2.b, select(!vec4<bool>(any(arg_2.b.yx), !var_0.a, arg_0.x, false), !vec4<bool>(all(vec3<bool>(arg_0.x, arg_2.b.x, true)), arg_0.x, all(vec2<bool>(true, var_0.a)), true), var_3.b.x));
    return _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~(vec3<i32>(-2147483647i, u_input.a, u_input.a) | vec3<i32>(0i, 1i, u_input.a)), vec3<i32>(u_input.a, -30418i, u_input.a) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 13583i, -45988i))), vec3<i32>(-1i) * -vec3<i32>(55264i, u_input.a, u_input.a)), -(vec3<i32>(u_input.a, 0i, 676i) ^ -vec3<i32>(8845i, u_input.a, u_input.a)) >> (~((vec3<u32>(11545u, 4294967295u, u_input.b.x) & vec3<u32>(6899u, 0u, 70420u)) << (abs(vec3<u32>(u_input.b.x, 0u, 46831u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1438f, -344f, 1042f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(955f, 401f, -384f, -510f)))))));
    let var_3 = Struct_1(true, _wgslsmith_f_op_f32(func_1()));
    let var_4 = select(~countOneBits(vec3<i32>(2147483647i, u_input.a, u_input.a)) ^ vec3<i32>(~(-31429i), firstTrailingBit(_wgslsmith_div_i32(1715i, u_input.a)), 1i), select(-(vec3<i32>(-13654i, u_input.a, -27123i) ^ -vec3<i32>(-1i, u_input.a, 29181i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, 2147483647i, -4036i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, -8488i))) & func_2(!vec3<bool>(true, var_3.a, false), _wgslsmith_f_op_f32(f32(-1f) * -683f), Struct_3(Struct_1(var_3.a, 872f), vec4<bool>(var_3.a, false, var_3.a, var_3.a), vec2<f32>(-605f, -248f), Struct_2(vec4<f32>(var_3.b, var_2.x, var_3.b, 1706f), Struct_1(var_3.a, var_2.x)), var_2.xz)), !all(!vec4<bool>(var_3.a, false, false, var_3.a))), !(!select(vec3<bool>(var_3.a, false, var_3.a), vec3<bool>(var_3.a, var_3.a, var_3.a), 32735u <= u_input.b.x)));
    var_0 = reverseBits(reverseBits(-2147483647i));
    var_0 = 14318i;
    var_0 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-516f - var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(min(-1981f, 1373f)))))), ~_wgslsmith_mult_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_4.x, -2147483647i, u_input.a), vec4<i32>(u_input.a, var_4.x, -2147483647i, u_input.a))), select(-vec4<i32>(u_input.a, var_4.x, -11792i, u_input.a), ~vec4<i32>(-28002i, -15577i, 32765i, var_4.x), vec4<bool>(true, true, var_3.a, false))), ~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(1u, var_1.x, var_1.x) << (vec3<u32>(u_input.b.x, 78828u, 1u) % vec3<u32>(32u))), vec3<u32>(~var_1.x, ~u_input.b.x, firstTrailingBit(11297u))), ~_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_4.x, -11992i, u_input.a) & reverseBits(vec4<i32>(var_4.x, 58704i, 3932i, -26755i)), firstLeadingBit(vec4<i32>(-24430i, u_input.a, 0i, -26649i))), _wgslsmith_dot_vec3_i32(var_4, var_4));
}

