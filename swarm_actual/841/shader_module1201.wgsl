struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<u32>, 29>;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec2<i32>(-6406i, -1i), 893f, 4294967295u, 0u, 4294967295u)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 115f, 0u, 0u, 1u)), Struct_2(Struct_1(vec2<i32>(53826i, -1i), 390f, 18744u, 40827u, 1u)), Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), -1149f, 51304u, 12286u, 0u)), Struct_2(Struct_1(vec2<i32>(-7836i, i32(-2147483648)), -1232f, 51848u, 20801u, 1u)), Struct_2(Struct_1(vec2<i32>(1i, -11099i), -1089f, 18532u, 15527u, 4084u)), Struct_2(Struct_1(vec2<i32>(12122i, 0i), -703f, 58381u, 85467u, 23528u)), Struct_2(Struct_1(vec2<i32>(15013i, 1i), -307f, 40007u, 45338u, 1u)), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), 1000f, 19765u, 96314u, 52202u)), Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), -1370f, 1u, 4294967295u, 853u)), Struct_2(Struct_1(vec2<i32>(-1i, 1i), -790f, 0u, 61157u, 4294967295u)), Struct_2(Struct_1(vec2<i32>(-38870i, -36285i), 848f, 50493u, 26509u, 0u)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), -835f, 4294967295u, 40261u, 4294967295u)), Struct_2(Struct_1(vec2<i32>(-1i, 27297i), 1457f, 0u, 73784u, 12974u)), Struct_2(Struct_1(vec2<i32>(19264i, -1i), 449f, 64414u, 4294967295u, 61006u)), Struct_2(Struct_1(vec2<i32>(-1i, 22934i), -358f, 7316u, 62173u, 1457u)), Struct_2(Struct_1(vec2<i32>(15918i, i32(-2147483648)), -2403f, 0u, 19360u, 104630u)), Struct_2(Struct_1(vec2<i32>(1i, 23437i), 613f, 10469u, 15847u, 0u)), Struct_2(Struct_1(vec2<i32>(-30595i, 49286i), 1056f, 0u, 38834u, 12717u)), Struct_2(Struct_1(vec2<i32>(1i, 59644i), 208f, 6095u, 0u, 6909u)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -20003i), 665f, 0u, 1u, 4294967295u)), Struct_2(Struct_1(vec2<i32>(-45704i, 43040i), -1303f, 1u, 48591u, 12796u)), Struct_2(Struct_1(vec2<i32>(-29665i, -1i), 648f, 1u, 1u, 62042u)), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), -214f, 4294967295u, 5777u, 58450u)), Struct_2(Struct_1(vec2<i32>(-16981i, 10330i), 1236f, 4294967295u, 39477u, 6717u)));

var<private> global3: i32 = -23562i;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(0i, -1i), 400f, 1u, 0u, 33173u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(global4.b - _wgslsmith_f_op_f32(ceil(-233f)));
    var var_1 = Struct_4(true && (true && select(true, 18388u != global4.c, true)), 1i, Struct_1(vec2<i32>(u_input.d, min(global4.a.x, 1i)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 1000f) * _wgslsmith_f_op_f32(exp2(global4.b)))), 0u, global4.c, global4.d), ~firstTrailingBit(abs(_wgslsmith_div_vec2_u32(vec2<u32>(global4.c, global4.e), vec2<u32>(global4.e, global4.e)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1496f * 998f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.b)) * _wgslsmith_f_op_f32(abs(var_0)))))));
    let var_2 = Struct_4(_wgslsmith_add_u32(global4.e, _wgslsmith_sub_u32(~var_1.c.d, 37095u)) == ~_wgslsmith_dot_vec2_u32(vec2<u32>(global4.c, global4.c), abs(var_1.d)), u_input.b.x, var_1.c, vec2<u32>(~(~(~global4.c)), ~var_1.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -193f)))), _wgslsmith_f_op_vec2_f32(-var_1.e)))));
    var var_3 = ~vec2<u32>(var_1.d.x, 0u);
    var_3 = _wgslsmith_mod_vec2_u32(~(~(~(~var_2.d))), vec2<u32>(var_1.c.d, _wgslsmith_add_u32(4294967295u, max(~global4.e, ~23281u))));
    return select(vec3<bool>(all(vec4<bool>(!var_2.a, true, true, -1341f >= global4.b)), var_1.a, false), vec3<bool>(all(select(!vec2<bool>(var_2.a, var_2.a), select(vec2<bool>(false, var_1.a), vec2<bool>(false, var_1.a), vec2<bool>(false, var_2.a)), vec2<bool>(false, false))), true, true | !var_2.a), true);
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = select(select(!func_3(), select(func_3(), func_3(), arg_0), func_3()), vec3<bool>(any(select(!vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0, true), arg_0))), !arg_0, true), !arg_0);
    return var_0;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(35513i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.b, 531f)))), arg_0.x);
    let var_2 = !select(func_2(select(false, any(vec4<bool>(false, false, false, true)), all(vec2<bool>(false, true)))), func_2(abs(global4.d) == global4.c), vec3<bool>(true, func_2(true).x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 112599u, 23001u), vec3<u32>(global4.c, 41709u, global4.d)) > _wgslsmith_mod_u32(1559u, global4.e)));
    var var_3 = Struct_1(-(~(-vec2<i32>(0i, 33294i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f) + -1000f)))), global4.d, ~(~0u), _wgslsmith_sub_u32(min(_wgslsmith_mult_u32(global4.c, 12327u), global4.e), ~global4.e));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(abs(-578f)), -411f, -236f);
    return Struct_2(Struct_1(-u_input.b.wz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.x, -1000f)) * _wgslsmith_f_op_f32(-var_1.x)) + 1186f), var_3.d, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), ~vec2<u32>(var_3.e, 1u)), global4.d));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global4.a.x;
    global1 = array<vec4<u32>, 29>();
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b, _wgslsmith_div_f32(global4.b, -1501f))), -1674f));
    global0 = !any(func_3().xz);
    let var_1 = Struct_4(any(vec4<bool>(true, true, true, true)), 2147483647i, Struct_1(min(_wgslsmith_mult_vec2_i32(global4.a, var_0.a.a), vec2<i32>(u_input.c.x, global4.a.x) & u_input.a.zy), -1186f, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(107808u, global4.c), vec2<u32>(var_0.a.e, 4294967295u))), ~(~_wgslsmith_mult_u32(52344u, var_0.a.d)), 48204u), _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(1u), var_0.a.c | 45761u), ~select(vec2<u32>(global4.e, var_0.a.e), vec2<u32>(0u, 1u), true)) & ~(~(vec2<u32>(37329u, 69342u) | vec2<u32>(var_0.a.d, var_0.a.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4.b, 563f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(abs(min(~vec3<u32>(63279u, 95633u, global4.e), vec3<u32>(var_1.c.d, 16598u, global4.e) ^ vec3<u32>(26497u, 37918u, 1u))), ~(~(~vec3<u32>(global4.e, global4.e, var_0.a.e))), _wgslsmith_sub_vec3_u32(vec3<u32>(83954u, var_0.a.d, 0u), ~vec3<u32>(61172u, 0u, 0u)) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(0u, global4.d, 4294967295u), countOneBits(vec3<u32>(0u, global4.c, var_1.d.x)))), vec2<i32>(abs(~var_1.b), u_input.a.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1320f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(589f * 183f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -538f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, _wgslsmith_f_op_f32(var_1.e.x - 186f), _wgslsmith_f_op_f32(trunc(700f)))))));
}

