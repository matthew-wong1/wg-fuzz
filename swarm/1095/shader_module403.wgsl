struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(0i, -1i), vec2<i32>(40657i, -1i));

var<private> global1: array<bool, 4>;

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(Struct_1(vec3<u32>(19999u, 4294967295u, 394u), 22638i), 53832u, 0u, vec3<u32>(3167u, 4294967295u, 27236u)), 1067f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 1u, 87991u), 2147483647i), 31252u, 100964u, vec3<u32>(4294967295u, 48293u, 1u)), 471f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 32253u), 2147483647i), 0u, 35791u, vec3<u32>(20078u, 8756u, 61815u)), 2794f), Struct_3(Struct_2(Struct_1(vec3<u32>(13664u, 4294967295u, 4294967295u), 0i), 63978u, 19051u, vec3<u32>(4294967295u, 4294967295u, 1u)), 1216f), Struct_3(Struct_2(Struct_1(vec3<u32>(13519u, 0u, 1u), -1i), 43201u, 0u, vec3<u32>(0u, 3787u, 0u)), -1112f), Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 15784u, 4294967295u), 6253i), 15475u, 14249u, vec3<u32>(77673u, 11955u, 0u)), 1000f), Struct_3(Struct_2(Struct_1(vec3<u32>(15757u, 1u, 29188u), 0i), 1u, 4294967295u, vec3<u32>(4294967295u, 86415u, 33839u)), -1818f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 38383u, 4294967295u), -1i), 4294967295u, 23687u, vec3<u32>(46905u, 4294967295u, 4294967295u)), 183f), Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), i32(-2147483648)), 1u, 63119u, vec3<u32>(4294967295u, 77591u, 6342u)), -797f), Struct_3(Struct_2(Struct_1(vec3<u32>(67586u, 637u, 0u), 0i), 63480u, 21621u, vec3<u32>(4294967295u, 36241u, 0u)), -822f), Struct_3(Struct_2(Struct_1(vec3<u32>(44796u, 23708u, 1u), i32(-2147483648)), 42467u, 0u, vec3<u32>(0u, 33149u, 63949u)), -923f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 0u, 12675u), 1i), 10385u, 16320u, vec3<u32>(0u, 4294967295u, 0u)), 157f), Struct_3(Struct_2(Struct_1(vec3<u32>(50763u, 78008u, 4748u), 1i), 9543u, 1u, vec3<u32>(0u, 13529u, 64910u)), -201f), Struct_3(Struct_2(Struct_1(vec3<u32>(82664u, 51020u, 1u), -14305i), 34299u, 4294967295u, vec3<u32>(0u, 0u, 23958u)), 970f), Struct_3(Struct_2(Struct_1(vec3<u32>(70277u, 27290u, 57974u), -16108i), 4294967295u, 0u, vec3<u32>(41968u, 1u, 1u)), 162f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 22953u, 42224u), i32(-2147483648)), 42508u, 4294967295u, vec3<u32>(14318u, 56483u, 7563u)), 1101f), Struct_3(Struct_2(Struct_1(vec3<u32>(130527u, 1u, 1u), 57102i), 4294967295u, 123966u, vec3<u32>(89427u, 1u, 1u)), -168f), Struct_3(Struct_2(Struct_1(vec3<u32>(19146u, 3235u, 0u), 1i), 46847u, 1u, vec3<u32>(1u, 13473u, 33102u)), -456f), Struct_3(Struct_2(Struct_1(vec3<u32>(26104u, 45061u, 4294967295u), -14217i), 57502u, 2577u, vec3<u32>(38826u, 26565u, 8257u)), 152f));

var<private> global3: f32 = 547f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_2) -> bool {
    global0 = array<vec2<i32>, 2>();
    global1 = array<bool, 4>();
    let var_0 = ~vec2<u32>(~arg_2.a, ~_wgslsmith_dot_vec2_u32(u_input.d.yx << (u_input.d.zz % vec2<u32>(32u)), vec2<u32>(arg_3.a.a.x, arg_2.a)));
    global1 = array<bool, 4>();
    let var_1 = countOneBits(~(~u_input.d.x << (~(~136178u) % 32u)));
    return any(select(select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(11953u, 4u)], false, global1[_wgslsmith_index_u32(arg_3.c, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_2.a, 4u)], global1[_wgslsmith_index_u32(var_1, 4u)], global1[_wgslsmith_index_u32(arg_2.a, 4u)]), global1[_wgslsmith_index_u32(8604u, 4u)]), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(28473u, 4u)]), all(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 4u)], false, global1[_wgslsmith_index_u32(57930u, 4u)]))), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 4u)], true, false), all(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_3.a.a.x, 4u)], true), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(arg_3.b, 4u)], false)))), !vec3<bool>(global1[_wgslsmith_index_u32(~var_1, 4u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.a, arg_3.b), 4u)], global1[_wgslsmith_index_u32(~var_1, 4u)]), false));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, 1000f) - vec2<f32>(1238f, 457f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1341f, arg_1.b)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(367f + arg_1.b), _wgslsmith_div_f32(159f, -1404f)))));
    var var_1 = select(!(!global1[_wgslsmith_index_u32(arg_1.a.d.x, 4u)]) | all(vec2<bool>(global1[_wgslsmith_index_u32(~u_input.a, 4u)], func_3(global0[_wgslsmith_index_u32(arg_1.a.a.a.x, 2u)], 471f, Struct_4(arg_1.a.c, vec2<i32>(arg_0.a.b, arg_0.a.b)), arg_0))), false, func_3(abs(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.d.x, 1852u), 2u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b)) - _wgslsmith_f_op_f32(arg_1.b * arg_1.b)))), Struct_4(arg_1.a.a.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.c, arg_1.a.a.a.x, 5864u, 97543u), ~vec4<u32>(214389u, 0u, arg_0.c, 99492u)), 2u)]), Struct_2(Struct_1(~vec3<u32>(arg_0.a.a.x, arg_0.d.x, arg_0.d.x), u_input.c), u_input.a, ~_wgslsmith_sub_u32(51999u, u_input.d.x), arg_1.a.a.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 830f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0)) + var_0))))));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_2.x, -1000f, arg_1.b))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, -1593f, 1000f, -1000f)))))), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), var_0.x), _wgslsmith_div_f32(-1796f, arg_1.b)));
    return Struct_3(Struct_2(var_3.a, ~1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.a.a.a.xz, vec2<u32>(1u, 0u)), vec2<u32>(67124u, 0u)), vec2<u32>(arg_1.a.b, ~19855u)), arg_1.a.d >> (firstLeadingBit(abs(arg_1.a.a.a)) % vec3<u32>(32u))), var_0.x);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_3) -> f32 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_3.b)), 474f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_3.b)))))));
    let var_0 = -vec3<i32>(u_input.c, 1i, ~1i);
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(586f + _wgslsmith_f_op_f32(f32(-1f) * -368f)), 1f));
    let var_1 = false;
    var var_2 = vec2<u32>(abs(4294967295u), 0u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(min(-1096f, -630f))))), _wgslsmith_f_op_f32(arg_3.b + _wgslsmith_f_op_f32(ceil(755f))), false)) + -547f);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_1.a, arg_1.a, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2053f, 2272f), vec2<f32>(161f, 246f))), func_2(Struct_2(Struct_1(vec3<u32>(arg_1.a, 55850u, arg_1.a), -19962i), u_input.a, 40339u, vec3<u32>(14709u, 1u, arg_1.a)), Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.d.x, u_input.a, 4294967295u), -35098i), 38775u, arg_1.a, vec3<u32>(1u, u_input.d.x, arg_1.a)), -469f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2002f * -504f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) + -806f)));
    var_0 = true;
    var var_1 = vec3<i32>(0i, -41186i, ~_wgslsmith_mult_i32(-(i32(-1i) * -2147483647i), abs(func_2(Struct_2(Struct_1(u_input.d, 0i), 1u, 1u, vec3<u32>(u_input.a, 0u, 0u)), Struct_3(Struct_2(Struct_1(u_input.d, u_input.b), u_input.a, 34710u, vec3<u32>(u_input.a, arg_1.a, arg_1.a)), 269f)).a.a.b)));
    return arg_1.a;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = u_input.c;
    var var_1 = u_input.d.x;
    global3 = 1000f;
    var var_2 = Struct_3(Struct_2(arg_1.a, _wgslsmith_add_u32(0u, func_1(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], false)), arg_3)), ~1u, arg_1.d << (vec3<u32>(_wgslsmith_clamp_u32(arg_3.a, 36672u, 4294967295u), arg_1.a.a.x, arg_0) % vec3<u32>(32u))), _wgslsmith_f_op_f32(trunc(arg_2)));
    let var_3 = Struct_1(_wgslsmith_div_vec3_u32((~arg_1.d >> (arg_1.a.a % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d.x, arg_3.a, arg_1.b), abs(vec3<u32>(u_input.a, 4294967295u, arg_1.d.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.d, vec3<u32>(arg_1.d.x, 4294967295u, arg_0), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, var_2.a.d.x, 57235u), arg_1.a.a)), vec3<u32>(arg_0, ~arg_1.c, 42306u))), ~2147483647i);
    return StorageBuffer(vec2<u32>(min(func_1(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_3.a, 4u)], true), vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.b, 4u)])), Struct_4(arg_3.a, vec2<i32>(8078i, 0i))), u_input.d.x), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-675f, 627f, 1141f, 641f) - vec4<f32>(-321f, -208f, -1184f, 429f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-616f, -1113f, 383f, -922f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-1237f * -257f), -1549f, -320f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(897f, 612f, 619f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(983f, 1000f, 1341f, -345f)))))));
    global1 = array<bool, 4>();
    var var_1 = false;
    var_1 = !(~_wgslsmith_mod_i32(i32(-1i) * -63325i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(u_input.c, u_input.c, -34319i))) <= -55930i);
    var var_2 = u_input.d.x;
    let x = u_input.a;
    s_output = func_5(abs(_wgslsmith_add_u32(43294u, 0u)) >> (min(~func_1(vec2<bool>(global1[_wgslsmith_index_u32(9319u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), Struct_4(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 2u)])), max(70095u << (u_input.d.x % 32u), u_input.a)) % 32u), Struct_2(func_2(func_2(Struct_2(Struct_1(vec3<u32>(28688u, u_input.a, u_input.a), u_input.c), 18203u, 29501u, u_input.d), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(48742u, 39837u), 19u)]).a, func_2(Struct_2(Struct_1(vec3<u32>(6774u, u_input.a, u_input.d.x), u_input.b), u_input.d.x, u_input.a, vec3<u32>(26798u, u_input.d.x, u_input.a)), func_2(Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.d.x, u_input.d.x), -1i), 0u, 4294967295u, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec3<u32>(126926u, u_input.d.x, u_input.d.x), 2147483647i), 47482u, u_input.d.x, vec3<u32>(39812u, u_input.d.x, 1u)), 1163f)))).a.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(14480u, 5675u, u_input.a), u_input.d), ~(~vec3<u32>(43050u, u_input.a, 1951u))), func_2(func_2(Struct_2(Struct_1(vec3<u32>(0u, 1u, u_input.a), -1i), 6116u, 1u, vec3<u32>(6257u, u_input.d.x, u_input.d.x)), func_2(Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.a, u_input.a), 1i), u_input.a, u_input.d.x, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), Struct_3(Struct_2(Struct_1(vec3<u32>(48271u, u_input.a, 1u), 6721i), u_input.d.x, u_input.d.x, vec3<u32>(u_input.d.x, u_input.d.x, 0u)), -1974f))).a, global2[_wgslsmith_index_u32(abs(42522u), 19u)]).a.b, u_input.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2598f))) - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_0.x))))), Struct_4(~(~u_input.a) >> (~u_input.a % 32u), _wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(reverseBits(u_input.a), 2u)], -_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(1i, u_input.b)))));
}

