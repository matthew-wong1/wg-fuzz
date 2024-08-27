struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 106576u;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = any(vec3<bool>(u_input.a.x > u_input.a.x, false, (-u_input.c >= ~u_input.a.x) && true));
    var var_1 = Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 1u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(43842u, u_input.b, 24188u) | vec3<u32>(u_input.b, 4294967295u, 0u), ~vec3<u32>(61143u, u_input.b, 0u))), vec4<f32>(_wgslsmith_f_op_f32(max(-1367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)))), -374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1872f) - _wgslsmith_f_op_f32(select(1267f, -1628f, var_0))))));
    global0 = ~u_input.b >> (0u % 32u);
    let var_2 = Struct_4(all(!(!(!vec3<bool>(true, true, var_0)))), !vec2<bool>(false, var_0), all(!(!vec3<bool>(var_0, false, false))), select(select(select(!vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, var_0), select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(false, var_0, true, var_0), false)), vec4<bool>(all(vec4<bool>(false, var_0, var_0, false)), !var_0, all(vec3<bool>(var_0, var_0, var_0)), true), all(vec3<bool>(true, false, var_0))), !select(!vec4<bool>(var_0, true, true, false), !vec4<bool>(false, var_0, true, true), !var_0), select(select(!vec4<bool>(var_0, var_0, false, var_0), select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(true, var_0, var_0, var_0), false), 17530i < u_input.c), !(!vec4<bool>(var_0, true, false, var_0)), vec4<bool>(var_0, !var_0, true, var_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1793f + _wgslsmith_f_op_f32(-433f * var_1.b.x)))));
    global0 = ~var_1.a;
    return vec2<bool>(var_2.d.x, !(any(vec2<bool>(false, false)) | all(vec2<bool>(var_0, var_0))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = abs(1u);
    var var_0 = 22367i;
    let var_1 = vec3<i32>(~_wgslsmith_add_i32(min(u_input.a.x, u_input.c), u_input.c), 0i, _wgslsmith_div_i32(~35968i, ~u_input.c >> (1u % 32u)));
    let var_2 = Struct_4(!all(!select(vec3<bool>(true, arg_0, false), vec3<bool>(true, false, arg_0), vec3<bool>(false, true, arg_0))), vec2<bool>(arg_0, arg_0), all(func_3()), select(!(!(!vec4<bool>(arg_0, arg_0, arg_0, true))), select(!select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(false, arg_0, false, arg_0), false), !vec4<bool>(false, arg_0, arg_0, arg_0), true), select(!select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), !vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(true, select(arg_0, arg_0, arg_0), !arg_0, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-328f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1757f)), _wgslsmith_f_op_f32(trunc(1000f))))));
    return Struct_2(true);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec4<bool> {
    global0 = ((~arg_0.a >> (_wgslsmith_sub_u32(abs(u_input.b), 19540u >> (u_input.b % 32u)) % 32u)) ^ _wgslsmith_div_u32(countOneBits(0u), 21210u)) >> (abs(1u >> (_wgslsmith_mod_u32(~21189u, arg_2.x | u_input.b) % 32u)) % 32u);
    global0 = u_input.b;
    let var_0 = func_2(true != any(vec2<bool>(true, true)));
    let var_1 = vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-53709i, u_input.c), u_input.c << (u_input.b % 32u), firstLeadingBit(43444i), u_input.a.x << (27182u % 32u)), abs(~vec4<i32>(-1i, u_input.c, -1i, -1i)))), u_input.a.x, ~(-(~u_input.a.x)) | (i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.yy)));
    var var_2 = select(arg_0.a, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_2.zz, vec2<u32>(arg_0.a, 0u)), arg_0.a), ~arg_2.x), any(!(!vec3<bool>(var_0.a, true, true))));
    return select(select(select(!(!vec4<bool>(var_0.a, false, var_0.a, var_0.a)), select(!vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(var_0.a, false, var_0.a, false), any(vec3<bool>(true, false, true))), vec4<bool>(func_2(var_0.a).a, true, func_3().x, true)), !(!vec4<bool>(true, var_0.a, var_0.a, true)), select(!(!vec4<bool>(var_0.a, false, var_0.a, var_0.a)), !(!vec4<bool>(false, var_0.a, var_0.a, var_0.a)), all(!vec4<bool>(true, var_0.a, true, false)))), !select(vec4<bool>(false, true, all(vec4<bool>(true, false, var_0.a, true)), all(vec2<bool>(var_0.a, true))), select(vec4<bool>(var_0.a, var_0.a, false, true), select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(true, false, false, var_0.a), vec4<bool>(var_0.a, var_0.a, false, var_0.a)), var_0.a || false), !vec4<bool>(var_0.a, false, var_0.a, var_0.a)), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(0i, firstLeadingBit(12264i)) | (abs(-30892i) & arg_3.b)), -1i, _wgslsmith_dot_vec3_i32(abs(abs(u_input.a) << (vec3<u32>(1u, u_input.b, 8204u) % vec3<u32>(32u))), reverseBits(firstLeadingBit(u_input.a))), arg_3.b);
    let var_1 = Struct_4(arg_0.x, vec2<bool>(true, false), true, func_1(Struct_3(reverseBits(70274u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, arg_3.c, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(115f, arg_3.c, 1209f, arg_1.x), vec4<f32>(arg_3.c, arg_1.x, arg_1.x, arg_3.c)))), ~(~arg_3.a.xwy)), 1311f);
    global0 = arg_2.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1016f))), -415f)))) - _wgslsmith_f_op_f32(-var_1.e));
    let var_3 = arg_3.a.zww;
    return select(arg_0.yw, !vec2<bool>(all(!var_1.d.zww), arg_0.x), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(any(!func_4(func_1(Struct_3(u_input.b, vec4<f32>(-2763f, -1238f, 948f, -755f)), vec4<f32>(-351f, 1561f, -485f, -1207f), vec3<u32>(u_input.b, 14751u, u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, 915f, 1674f)), _wgslsmith_mult_vec2_u32(vec2<u32>(83702u, u_input.b), vec2<u32>(u_input.b, u_input.b)), Struct_1(vec4<u32>(u_input.b, 71688u, 45615u, u_input.b), u_input.c, 686f))));
    var var_1 = select(select(vec4<bool>(all(func_1(Struct_3(4933u, vec4<f32>(-1000f, -2287f, 1000f, -2085f)), vec4<f32>(-1223f, -1679f, -934f, -148f), vec3<u32>(1u, u_input.b, u_input.b)).wxw), min(u_input.b, u_input.b) < u_input.b, !all(vec2<bool>(true, var_0.a)), true), !vec4<bool>(true, true, var_0.a, true), func_1(Struct_3(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(1025f, -1600f, -722f, -1219f) - vec4<f32>(-1154f, -461f, -1185f, 995f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1941f, 417f, 377f, 1000f) + vec4<f32>(417f, -449f, 295f, -1100f)), vec3<u32>(44843u, 1u, ~u_input.b))), vec4<bool>(var_0.a, !(var_0.a || false), true, true), select(!vec4<bool>(func_1(Struct_3(u_input.b, vec4<f32>(-971f, -628f, 1106f, -417f)), vec4<f32>(-613f, 700f, -374f, -1000f), vec3<u32>(732u, 4294967295u, u_input.b)).x, true, !var_0.a, !var_0.a), vec4<bool>(false, func_4(vec4<bool>(true, true, var_0.a, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-385f, 924f, -1010f), vec3<f32>(-1361f, -1794f, 1000f), vec3<bool>(var_0.a, true, true))), vec2<u32>(u_input.b, u_input.b), Struct_1(vec4<u32>(u_input.b, 50078u, 47572u, 0u), u_input.a.x, 306f)).x, true, true), u_input.b == ~_wgslsmith_mult_u32(54694u, u_input.b)));
    let var_2 = func_2(select(!(!var_1.x), func_3().x, true));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, -4002i), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -12837i), u_input.a.xz), vec2<i32>(u_input.c, u_input.a.x)), ~(vec2<i32>(-3430i, 2147483647i) ^ u_input.a.xx)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xz, u_input.a.yy) >> (~vec2<u32>(43042u, 45924u) % vec2<u32>(32u)), max(u_input.a.zz, vec2<i32>(u_input.c, 2147483647i)))), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b))) ^ ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 14085u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(378f, -213f, -323f, -582f)))))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(60085u, 1u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b))), vec3<u32>(~u_input.b, 1u, u_input.b & u_input.b)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(1u, u_input.b, u_input.b))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 16606u, 6169u), vec3<u32>(35125u, 82780u, 3206u)), select(~vec3<u32>(50246u, 50100u, u_input.b), ~vec3<u32>(48084u, u_input.b, 1u), vec3<bool>(true, false, false)))));
}

