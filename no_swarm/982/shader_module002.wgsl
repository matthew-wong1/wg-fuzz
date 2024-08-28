struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(-1734i, -10122i, -18866i, 2147483647i), 1i, 8402u, vec4<i32>(1i, -6430i, -5572i, 1i)), Struct_1(vec4<i32>(-1i, 2147483647i, -13468i, 2147483647i), 2147483647i, 109023u, vec4<i32>(21204i, 2147483647i, -1432i, -1i)), Struct_1(vec4<i32>(-29101i, -1i, 27638i, 0i), -43641i, 10831u, vec4<i32>(49268i, 33171i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(0i, 1i, i32(-2147483648), 0i), 38799i, 38000u, vec4<i32>(1i, 57103i, -37173i, i32(-2147483648))), Struct_1(vec4<i32>(-8158i, -6809i, -20040i, 34520i), -33782i, 451u, vec4<i32>(-198i, 26759i, -5784i, 1i)), Struct_1(vec4<i32>(34869i, 2147483647i, 2147483647i, 0i), 77181i, 17709u, vec4<i32>(-13655i, -1i, -1i, -13157i)), Struct_1(vec4<i32>(1i, 1i, -3062i, -22901i), -2589i, 0u, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 6224i)), Struct_1(vec4<i32>(-50694i, 2958i, 39569i, i32(-2147483648)), 2147483647i, 23815u, vec4<i32>(i32(-2147483648), 0i, -69090i, 74755i)), Struct_1(vec4<i32>(0i, 2493i, 1i, 1i), i32(-2147483648), 4294967295u, vec4<i32>(-1i, 17224i, -1i, -1i)), Struct_1(vec4<i32>(30623i, 25906i, 0i, -1i), -890i, 0u, vec4<i32>(-1i, i32(-2147483648), 2147483647i, -1i)), Struct_1(vec4<i32>(-9963i, i32(-2147483648), 2147483647i, i32(-2147483648)), -12823i, 101525u, vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(-1i, -20678i, i32(-2147483648), 0i), -24413i, 4294967295u, vec4<i32>(-33653i, -2064i, -24985i, i32(-2147483648))), Struct_1(vec4<i32>(-33150i, 16211i, 4321i, 25345i), 0i, 1u, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(-28536i, -13380i, 0i, 42864i), -1i, 57705u, vec4<i32>(-23517i, -27239i, 4024i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, -36066i, 2224i, -34281i), 18803i, 0u, vec4<i32>(0i, 57205i, -1i, 0i)), Struct_1(vec4<i32>(-6548i, 1i, 8138i, -20551i), 12837i, 63938u, vec4<i32>(13830i, -49761i, 43053i, 24844i)), Struct_1(vec4<i32>(1i, 0i, 2147483647i, 2147483647i), 12921i, 110922u, vec4<i32>(-1i, -549i, 1i, -1099i)), Struct_1(vec4<i32>(-20480i, 29141i, -29121i, 2147483647i), -65167i, 4294967295u, vec4<i32>(-1i, 62956i, 2147483647i, 1i)), Struct_1(vec4<i32>(25680i, -25858i, -33166i, 8452i), 0i, 5413u, vec4<i32>(0i, 0i, -1i, 0i)), Struct_1(vec4<i32>(57988i, -35272i, -60995i, 23930i), -32432i, 7135u, vec4<i32>(17172i, 0i, -1i, 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), -20170i, 27943i, 0i), i32(-2147483648), 0u, vec4<i32>(-25376i, 28984i, -28859i, -30409i)), Struct_1(vec4<i32>(6888i, 6551i, -4387i, 16076i), 1i, 26552u, vec4<i32>(-42269i, -10163i, 43411i, 6761i)), Struct_1(vec4<i32>(-5958i, -35737i, 1i, -1i), -34373i, 69425u, vec4<i32>(-60862i, -1i, -23600i, -4830i)), Struct_1(vec4<i32>(52659i, 45634i, 2147483647i, i32(-2147483648)), -2505i, 3206u, vec4<i32>(38743i, 8319i, -5707i, 26713i)), Struct_1(vec4<i32>(2147483647i, 3150i, -1i, -46253i), -9844i, 29836u, vec4<i32>(1i, 29443i, -1i, 1i)), Struct_1(vec4<i32>(-2821i, -1i, i32(-2147483648), 0i), -26088i, 74185u, vec4<i32>(2147483647i, -24055i, 10800i, 0i)), Struct_1(vec4<i32>(11025i, 2147483647i, -1i, -16858i), i32(-2147483648), 40440u, vec4<i32>(1i, -1i, -4051i, 2147483647i)));

var<private> global1: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_i32(min(arg_0.a, reverseBits(arg_0.a)), firstTrailingBit(-arg_0.d | _wgslsmith_add_vec4_i32(vec4<i32>(-40400i, u_input.a, 61642i, 0i), vec4<i32>(arg_0.d.x, 35723i, 32118i, u_input.c.x)))), 18815i, _wgslsmith_dot_vec3_u32(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c, 4294967295u, u_input.b.x), vec3<u32>(44499u, arg_0.c, arg_0.c), vec3<u32>(arg_0.c, 1u, 17066u)) & vec3<u32>(arg_0.c, u_input.b.x, 14776u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), ~vec3<u32>(arg_0.c, u_input.b.x, u_input.b.x), ~vec3<u32>(82978u, arg_0.c, 4294967295u))), countOneBits(~(vec3<u32>(4294967295u, arg_0.c, arg_0.c) >> (vec3<u32>(arg_0.c, arg_0.c, u_input.b.x) % vec3<u32>(32u))))), arg_0.a);
    let var_1 = Struct_1(arg_0.a, _wgslsmith_sub_i32(~var_0.a.x, _wgslsmith_mod_i32(1i, arg_0.b)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.b.x, u_input.b.x, 0u, arg_0.c), vec4<u32>(var_0.c, u_input.b.x, arg_0.c, 1885u)) & max(vec4<u32>(59934u, u_input.b.x, arg_0.c, 4294967295u), vec4<u32>(4294967295u, arg_0.c, 42964u, 1u)), vec4<u32>(~var_0.c, 0u, 41513u, arg_0.c)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 3448u, 4294967295u, u_input.b.x), countOneBits(vec4<u32>(4294967295u, 5185u, 4294967295u, arg_0.c)), vec4<u32>(4398u, 0u, 4294967295u, arg_0.c)), max(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, u_input.b.x, 4294967295u, var_0.c), vec4<u32>(24149u, 19134u, 1u, var_0.c)), vec4<u32>(var_0.c, arg_0.c, 9069u, arg_0.c)))), -(~(-arg_0.a)));
    let var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.c, u_input.b.x, arg_0.c), vec4<u32>(51502u, var_1.c, var_1.c, arg_0.c)), 38959u, ~20399u), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c, var_0.c, 4294967295u), abs(vec3<u32>(arg_0.c, 57695u, 0u))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, 0u, var_0.c), vec3<u32>(var_0.c, var_0.c, 4294967295u)) | firstLeadingBit(vec3<u32>(0u, arg_0.c, u_input.b.x)))), vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, u_input.b.x, 5078u), vec4<u32>(var_1.c, arg_0.c, 1u, arg_0.c))), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.c, var_0.c), var_0.c), var_1.c));
    let var_3 = global0[_wgslsmith_index_u32(~u_input.b.x & 24141u, 27u)];
    global0 = array<Struct_1, 27>();
    return var_1.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = arg_0;
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, 1030f))))));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(~reverseBits(-2147483647i) & u_input.c.x, -1i), arg_2.a.x);
    let var_2 = select(vec3<bool>(any(vec2<bool>(true, true)), (arg_2.c ^ ~0u) >= func_3(arg_2), true), vec3<bool>(any(vec2<bool>(true, all(vec2<bool>(true, true)))), select(true, true, 57707u < arg_2.c), false), false);
    let var_3 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(~max(arg_1.c, arg_0.c), 0u), ~(~_wgslsmith_sub_u32(10471u, arg_1.c)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_3))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(arg_0.b, 34434i, arg_0.d.x, arg_0.b), -10344i, arg_0.c, arg_0.a), arg_0, arg_0, -1545f))), _wgslsmith_div_f32(229f, _wgslsmith_f_op_f32(1286f + -800f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(390f, 231f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(879f, 1000f)), _wgslsmith_f_op_f32(max(850f, _wgslsmith_f_op_f32(select(832f, -137f, false)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-673f + -1636f), _wgslsmith_f_op_f32(1443f * -939f), _wgslsmith_f_op_f32(-807f * -1107f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-307f, 202f), _wgslsmith_f_op_f32(abs(-1374f)), _wgslsmith_f_op_f32(ceil(198f))))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), !any(vec2<bool>(false, false))))), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), !vec3<bool>(16341u <= arg_0.c, 27501i >= arg_0.b, true))));
    let var_1 = arg_0;
    var var_2 = vec2<bool>(true | (all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))) & any(vec3<bool>(true, true, true))), var_1.c >= 0u);
    let var_3 = vec3<bool>(true, true, true);
    return Struct_1(firstLeadingBit(~_wgslsmith_mult_vec4_i32(~arg_0.d, vec4<i32>(u_input.a, arg_0.d.x, arg_0.b, -6050i))), var_1.d.x | -var_1.d.x, 4294967295u, vec4<i32>(var_1.d.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-66432i, -51416i), vec2<i32>(u_input.a, u_input.c.x)) & -897i), select(var_1.b, _wgslsmith_add_i32(1i, 34711i), true), -arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    let var_0 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 27u)]);
    let var_1 = func_1(Struct_1(firstTrailingBit(-var_0.a), 2147483647i, 1u, var_0.d));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-836f - -165f) - _wgslsmith_f_op_f32(1965f + _wgslsmith_f_op_f32(floor(-492f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -404f))) - -1648f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(~104138u ^ u_input.b.x, 27u)], func_1(func_1(var_1)), func_1(Struct_1(vec4<i32>(u_input.c.x, var_1.a.x, -53076i, var_1.d.x), u_input.a, var_1.c, var_0.a)), 232f)), _wgslsmith_div_f32(-718f, 636f), true)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1643f * _wgslsmith_f_op_f32(select(-771f, 1040f, false))) - -1000f)));
    let var_3 = var_0.c;
    let var_4 = func_1(Struct_1(vec4<i32>(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_add_i32(var_1.a.x, 32575i), u_input.a), u_input.c.x, ~(i32(-1i) * -8311i)), -1i, 11436u, firstTrailingBit(abs(vec4<i32>(-18259i, -2147483647i, var_0.a.x, var_0.d.x) ^ var_0.d))));
    var var_5 = ~(~func_1(var_4).c);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.x, 1u);
}

