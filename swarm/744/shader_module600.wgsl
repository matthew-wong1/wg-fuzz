struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_i32(-(u_input.b | u_input.b), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.b, 9356i), vec3<i32>(arg_2.d, u_input.b, -42780i)) >> (vec3<u32>(45222u, 24146u, 4294967295u) % vec3<u32>(32u)), ~(-vec3<i32>(-13915i, u_input.b, u_input.b)))));
    let var_1 = vec3<bool>(false, arg_2.c, true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-668f + _wgslsmith_f_op_f32(-arg_1)), select(arg_2.b, -(abs(vec2<i32>(var_0, -11757i)) & vec2<i32>(u_input.b, var_0)), vec2<bool>(select(false, var_1.x, false) | true, !any(var_1.yy))), ~(~countOneBits(u_input.c)) <= ~37408u, _wgslsmith_mod_i32(-_wgslsmith_mult_i32(min(var_0, var_0), ~(-1i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_2.d, var_0), -2147483647i | arg_2.b.x) ^ countOneBits(reverseBits(arg_2.d))));
    global0 = _wgslsmith_add_vec2_u32(((_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(u_input.c, u_input.a)) & (vec2<u32>(0u, 1u) | vec2<u32>(global0.x, u_input.a))) | _wgslsmith_div_vec2_u32(~vec2<u32>(global0.x, global0.x), vec2<u32>(1u, 1u))) << (~vec2<u32>(global0.x, _wgslsmith_mult_u32(u_input.a, 0u)) % vec2<u32>(32u)), vec2<u32>(abs(global0.x), _wgslsmith_sub_u32(~(~u_input.a), u_input.a ^ 1u)));
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b, u_input.b), ~_wgslsmith_add_i32(arg_2.d ^ u_input.b, 1i)) | (arg_2.d ^ ~1i);
    return ~_wgslsmith_div_u32(~countOneBits(~global0.x), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, 4294967295u, u_input.a)), max(countOneBits(vec3<u32>(104210u, 27119u, u_input.a)), ~vec3<u32>(64088u, 4294967295u, global0.x))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(870f + _wgslsmith_f_op_f32(-1577f * arg_0.x)), _wgslsmith_f_op_f32(max(1953f, arg_0.x))))), vec2<i32>(~u_input.b, 2147483647i) >> (~((vec2<u32>(109346u, global0.x) | vec2<u32>(u_input.c, u_input.c)) & vec2<u32>(global0.x, u_input.a)) % vec2<u32>(32u)), true, u_input.b);
    let var_1 = 4294967295u;
    let var_2 = firstLeadingBit(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(-720f, var_0.a, var_0.a), vec3<f32>(-760f, var_0.a, 216f)), -191f, Struct_1(arg_0.x, vec2<i32>(888i, u_input.b), true, 3345i)) & global0.x) << (4294967295u % 32u);
    var var_3 = select(!(!select(!vec4<bool>(true, false, var_0.c, false), select(vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(var_0.c, false, false, var_0.c), vec4<bool>(true, var_0.c, var_0.c, false)), !var_0.c)), !(!select(vec4<bool>(var_0.c, var_0.c, true, false), vec4<bool>(true, var_0.c, true, false), true)), var_0.b.x > _wgslsmith_mult_i32(var_0.b.x, _wgslsmith_sub_i32(~1i, _wgslsmith_div_i32(-48363i, var_0.d))));
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, -1000f, var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, arg_0.x, -1120f, -364f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 1723f, var_0.a, var_0.a), vec4<f32>(212f, -382f, 348f, 1855f))), var_0.c)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(500f, _wgslsmith_f_op_f32(trunc(-449f)), _wgslsmith_div_f32(arg_0.x, 419f), -497f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1055f, var_0.a, 1055f, var_0.a), vec4<f32>(-417f, -579f, 258f, arg_0.x), var_0.c))), var_0.c)))));
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-964f, 1098f))))))), var_0.b, all(select(vec3<bool>(var_3.x, true, var_0.c), vec3<bool>(true, true, true), !vec3<bool>(false, var_3.x, var_0.c))) | true, countOneBits(2147483647i));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-643f + 1307f)), 512f) - _wgslsmith_f_op_f32(step(-641f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1442f)), _wgslsmith_f_op_f32(trunc(830f))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -389f))));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1222f, var_0))))))));
    global0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global0.x) ^ firstTrailingBit(vec2<u32>(2261u, global0.x)), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(u_input.a, u_input.c)) ^ ~vec2<u32>(u_input.c, u_input.c)));
    var var_2 = select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, arg_1, false), vec3<bool>(false, false, arg_1)), select(select(!vec3<bool>(var_1.c, arg_0, true), !vec3<bool>(arg_1, false, arg_0), u_input.a <= 10963u), select(vec3<bool>(arg_1, arg_0, false), vec3<bool>(true, true, true), u_input.b >= var_1.d), vec3<bool>(var_0 > var_1.a, var_1.c, arg_1)), true || !var_1.c), vec3<bool>(!arg_1, !arg_0, arg_1), !(!(_wgslsmith_sub_i32(-10994i, var_1.b.x) < var_1.d)));
    var var_3 = true;
    return _wgslsmith_dot_vec3_u32(select(abs(~(~vec3<u32>(12198u, 46899u, global0.x))), vec3<u32>(18248u, u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(44635u, 4294967295u, 1u, global0.x), vec4<u32>(44370u, global0.x, u_input.a, u_input.c)), abs(vec4<u32>(4294967295u, 4294967295u, u_input.c, global0.x)))), !all(!vec3<bool>(false, false, var_1.c))), vec3<u32>(1u, 54216u, global0.x | 1u) | vec3<u32>(17590u, 41499u, global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(74686u, 12759u);
    global0 = vec2<u32>(~(~4294967295u), ~(~1u) | global0.x);
    global0 = vec2<u32>(func_1(true || all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)), ~(u_input.c ^ u_input.a) >= firstTrailingBit(global0.x)), ~global0.x);
    global0 = vec2<u32>(_wgslsmith_add_u32(~(43778u & _wgslsmith_mod_u32(4294967295u, u_input.a)), _wgslsmith_mod_u32(0u, ~global0.x)), 0u);
    let var_0 = ~select(vec4<i32>(~max(-36815i, 1i), u_input.b, func_2(vec2<f32>(718f, 980f)).b.x, -u_input.b), ~vec4<i32>(u_input.b, _wgslsmith_clamp_i32(1i, u_input.b, u_input.b), min(9798i, -2147483647i), u_input.b), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false))), vec4<bool>(false, all(vec3<bool>(false, false, true)), true, true), vec4<bool>(true, true, true, true)));
    global0 = ~select(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, 37933u), vec2<u32>(~global0.x, select(68403u, 2981u, false))), ~vec2<u32>(global0.x, _wgslsmith_div_u32(0u, global0.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), true)));
    let var_1 = func_2(vec2<f32>(1149f, _wgslsmith_f_op_f32(1317f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -423f))))));
    global0 = ~(~vec2<u32>(u_input.c, 1u | global0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, _wgslsmith_f_op_f32(ceil(var_1.a)), -532f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yz);
}

