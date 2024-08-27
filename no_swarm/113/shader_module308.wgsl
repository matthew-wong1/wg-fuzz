struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 4294967295u, 19543u, 57529u), vec2<u32>(4294967295u, 1u));

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(false, vec4<bool>(false, false, true, true), Struct_1(vec4<u32>(4294967295u, 94007u, 20075u, 1u), vec2<u32>(53113u, 0u)), vec2<i32>(17040i, i32(-2147483648)), Struct_1(vec4<u32>(54003u, 1u, 4294967295u, 33975u), vec2<u32>(37793u, 4294967295u))), Struct_2(true, vec4<bool>(true, true, false, false), Struct_1(vec4<u32>(77472u, 4294967295u, 1u, 0u), vec2<u32>(4294967295u, 38951u)), vec2<i32>(12774i, -20316i), Struct_1(vec4<u32>(42554u, 0u, 43432u, 4294967295u), vec2<u32>(5387u, 4294967295u))), Struct_2(true, vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(1u, 52504u, 1u, 0u), vec2<u32>(1u, 22611u)), vec2<i32>(2147483647i, 0i), Struct_1(vec4<u32>(35053u, 1590u, 1u, 48138u), vec2<u32>(22823u, 57697u))), Struct_2(true, vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(33497u, 1u, 46234u, 3620u), vec2<u32>(4294967295u, 1u)), vec2<i32>(33665i, -24574i), Struct_1(vec4<u32>(1u, 1u, 23778u, 0u), vec2<u32>(1u, 44684u))), Struct_2(true, vec4<bool>(true, false, false, false), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 0u), vec2<u32>(0u, 1406u)), vec2<i32>(2147483647i, 0i), Struct_1(vec4<u32>(61907u, 97579u, 90059u, 15374u), vec2<u32>(4294967295u, 53223u))), Struct_2(false, vec4<bool>(false, true, true, true), Struct_1(vec4<u32>(1u, 53804u, 1u, 23227u), vec2<u32>(0u, 1u)), vec2<i32>(13285i, -1i), Struct_1(vec4<u32>(0u, 106598u, 4294967295u, 4294967295u), vec2<u32>(1u, 93230u))), Struct_2(true, vec4<bool>(false, true, true, false), Struct_1(vec4<u32>(8707u, 33935u, 8452u, 65513u), vec2<u32>(55362u, 0u)), vec2<i32>(2147483647i, 2147483647i), Struct_1(vec4<u32>(10334u, 1u, 53971u, 4294967295u), vec2<u32>(46951u, 15763u))), Struct_2(false, vec4<bool>(true, true, false, false), Struct_1(vec4<u32>(35503u, 73318u, 68173u, 28827u), vec2<u32>(63640u, 103932u)), vec2<i32>(1i, -18616i), Struct_1(vec4<u32>(52905u, 23439u, 1u, 0u), vec2<u32>(0u, 4294967295u))), Struct_2(true, vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(1827u, 1u, 6394u, 4294967295u), vec2<u32>(1u, 4294967295u)), vec2<i32>(2147483647i, -11557i), Struct_1(vec4<u32>(0u, 12635u, 4294967295u, 8536u), vec2<u32>(1u, 51212u))), Struct_2(true, vec4<bool>(true, true, false, true), Struct_1(vec4<u32>(12704u, 45949u, 0u, 50745u), vec2<u32>(3595u, 1448u)), vec2<i32>(7921i, 1i), Struct_1(vec4<u32>(0u, 0u, 8719u, 0u), vec2<u32>(70538u, 33700u))), Struct_2(false, vec4<bool>(true, false, true, false), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u)), vec2<i32>(2147483647i, 23754i), Struct_1(vec4<u32>(25383u, 0u, 134547u, 25765u), vec2<u32>(1u, 4294967295u))), Struct_2(false, vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(1u, 0u, 1u, 15491u), vec2<u32>(67973u, 4294967295u)), vec2<i32>(37522i, 2147483647i), Struct_1(vec4<u32>(59531u, 4294967295u, 1u, 31619u), vec2<u32>(1u, 34524u))), Struct_2(false, vec4<bool>(true, false, true, true), Struct_1(vec4<u32>(0u, 7498u, 1u, 4642u), vec2<u32>(37707u, 4294967295u)), vec2<i32>(-17966i, i32(-2147483648)), Struct_1(vec4<u32>(53084u, 0u, 115350u, 32955u), vec2<u32>(4294967295u, 1u))), Struct_2(true, vec4<bool>(false, false, true, true), Struct_1(vec4<u32>(54170u, 0u, 6736u, 4294967295u), vec2<u32>(58308u, 46072u)), vec2<i32>(1i, 2147483647i), Struct_1(vec4<u32>(24489u, 73472u, 14841u, 1u), vec2<u32>(0u, 4294967295u))), Struct_2(false, vec4<bool>(false, false, true, true), Struct_1(vec4<u32>(12120u, 74518u, 1u, 1u), vec2<u32>(112128u, 1u)), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec4<u32>(9102u, 1u, 9160u, 0u), vec2<u32>(1u, 102249u))), Struct_2(true, vec4<bool>(false, false, false, true), Struct_1(vec4<u32>(142447u, 1u, 1u, 25001u), vec2<u32>(61598u, 30613u)), vec2<i32>(0i, 14676i), Struct_1(vec4<u32>(4294967295u, 35648u, 4294967295u, 0u), vec2<u32>(4294967295u, 5358u))));

var<private> global2: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(i32(-2147483648), 7994i, 1i, 2624i), vec4<i32>(-18017i, 1i, 2147483647i, 1i), vec4<i32>(-63171i, -71575i, -1i, 17756i), vec4<i32>(i32(-2147483648), 18710i, 0i, -29003i), vec4<i32>(21552i, -6737i, -12097i, -93724i), vec4<i32>(2147483647i, 17464i, -1i, -1i), vec4<i32>(16873i, i32(-2147483648), 0i, 50677i), vec4<i32>(-1i, -35393i, 1i, -29211i), vec4<i32>(9836i, 67669i, -49652i, -68520i), vec4<i32>(4231i, 0i, 2147483647i, 0i), vec4<i32>(15030i, 23255i, 17554i, 347i), vec4<i32>(2147483647i, 2147483647i, -37006i, -54188i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(10974i, -25335i, i32(-2147483648), 1i), vec4<i32>(0i, -77829i, 0i, 55453i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -46937i), vec4<i32>(1i, i32(-2147483648), 1i, 0i), vec4<i32>(2147483647i, -29967i, 18267i, 2147483647i), vec4<i32>(-1i, 1i, 6401i, i32(-2147483648)), vec4<i32>(-15372i, 2147483647i, 2147483647i, 0i), vec4<i32>(1i, 2147483647i, 61429i, i32(-2147483648)), vec4<i32>(1i, 0i, i32(-2147483648), 20155i), vec4<i32>(0i, 1825i, -26070i, 1i), vec4<i32>(-46236i, 13497i, 1i, 0i), vec4<i32>(40009i, 0i, -56715i, -37822i), vec4<i32>(-11848i, 0i, 0i, 0i), vec4<i32>(-1i, 16494i, -42219i, 7732i), vec4<i32>(i32(-2147483648), i32(-2147483648), 24954i, 11223i), vec4<i32>(-1i, 18502i, 1i, i32(-2147483648)), vec4<i32>(1i, 21699i, 18811i, -1i), vec4<i32>(0i, -13573i, -27141i, 1i));

var<private> global3: array<Struct_1, 8>;

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = Struct_1(global0.a, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.b, global0.a.yw), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 2620u), vec2<u32>(1u, global0.a.x)) ^ ~global0.b.x, ~(~1u))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-357f - 302f)), -2125f, _wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(-1188f + _wgslsmith_f_op_f32(f32(-1f) * -688f)))));
    global1 = array<Struct_2, 16>();
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(max(vec2<u32>(4294967295u, arg_0.b.x), vec2<u32>(global0.b.x, 23502u))), vec2<u32>(firstLeadingBit(91294u), 53178u)), arg_0.a.x) >> (countOneBits(~u_input.a.x) % 32u);
}

fn func_2(arg_0: vec2<u32>) -> vec3<u32> {
    global1 = array<Struct_2, 16>();
    var var_0 = 455f;
    var var_1 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.x, countOneBits(abs(global0.b.x))), _wgslsmith_mult_u32(36669u, global0.a.x)));
    return firstTrailingBit(vec3<u32>(func_3(Struct_1(~vec4<u32>(7240u, 18552u, global0.a.x, u_input.a.x), abs(vec2<u32>(31139u, u_input.a.x)))), ~u_input.a.x, global0.b.x));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>) -> u32 {
    global0 = global4[_wgslsmith_index_u32(93534u, 8u)];
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(555f, _wgslsmith_f_op_f32(abs(-514f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423f * -747f))), _wgslsmith_f_op_f32(-1786f - -278f))), 1311f);
    var var_1 = true;
    let var_2 = abs(u_input.a.x);
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>((_wgslsmith_mult_u32(u_input.a.x, 13696u) ^ ~0u) << (~(~25942u) % 32u), ~countOneBits(arg_1.e.a.x), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global0.b.x, arg_0, 0u, 4294967295u)), 0u), max(1u, 47883u) << (u_input.a.x % 32u)), global0.b.x), ~_wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(0u, arg_1.e.a.x, arg_1.c.a.x, arg_1.c.b.x), vec4<u32>(global0.b.x, arg_1.c.a.x >> (25490u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(57209u, 4294967295u), u_input.a.ww), countOneBits(global0.b.x))));
    return global0.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = abs(global2[_wgslsmith_index_u32(func_4(_wgslsmith_dot_vec3_u32(func_2(u_input.a.xz), ~arg_0.a.zww), Struct_2(true, vec4<bool>(true, true, true, true), Struct_1(arg_1.a, arg_0.b), max(vec2<i32>(2147483647i, 1i), vec2<i32>(-2147483647i, -1i)), Struct_1(vec4<u32>(global0.b.x, global0.b.x, arg_0.a.x, global0.a.x), vec2<u32>(32441u, u_input.a.x))), -vec3<i32>(1i, 1i, 1i)), 31u)]) << (vec4<u32>(_wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 14834u), vec3<u32>(arg_0.a.x, 4294967295u, global0.b.x))), arg_0.a.x | ~14102u), 0u, _wgslsmith_mod_u32(~firstTrailingBit(4294967295u), 1u), ~(~global0.a.x)) % vec4<u32>(32u));
    var_0 = global2[_wgslsmith_index_u32(~arg_1.a.x, 31u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(21180u, _wgslsmith_div_u32(~37354u, 66265u), 1u), ~select(_wgslsmith_mult_vec3_u32(global0.a.zwy, vec3<u32>(arg_1.a.x, arg_1.a.x, 15700u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 33576u, arg_1.b.x), arg_0.a.zwy), vec3<bool>(true, true, true))), _wgslsmith_sub_vec3_u32(arg_0.a.www, ~global0.a.zzy) | arg_1.a.xww), 16u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(449f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(363f * _wgslsmith_f_op_f32(abs(-628f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-107f, 411f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(157f, 557f)))), -1352f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, 1410f, 1119f, -778f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(788f, 350f, 580f, -573f))), var_1.b))));
    global1 = array<Struct_2, 16>();
    return _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1266f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(select(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true)))), true, true), true);
    global4 = array<Struct_1, 8>();
    global0 = global3[_wgslsmith_index_u32(u_input.a.x, 8u)];
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global0.a.x, ~(~23024u)), ~abs(u_input.a.x)), select(global0.a.xy, global0.a.xw, !vec2<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true)));
    global4 = array<Struct_1, 8>();
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(~global0.a, vec2<u32>(var_1.x, 1u)), global4[_wgslsmith_index_u32(var_1.x, 8u)])), _wgslsmith_f_op_f32(trunc(-510f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-636f + 232f), _wgslsmith_f_op_f32(min(956f, 1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f - 420f) * -1131f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1452f), -341f))))));
    var var_3 = _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(~max(vec3<i32>(-1i, 1i, 12238i), vec3<i32>(-1i, -39834i, 832i)), max(firstTrailingBit(vec3<i32>(-26458i, -1i, -2147483647i)), vec3<i32>(-17338i, 83385i, 1i)))) << (_wgslsmith_clamp_u32(~(~(~var_1.x)), var_1.x, u_input.a.x) % 32u);
    let var_4 = _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, firstLeadingBit(44544i)), ~(~vec2<i32>(-2147483647i, -2147483647i))) ^ -75720i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.x), vec4<f32>(-896f, 1000f, _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)))))), ~reverseBits(var_4));
}

