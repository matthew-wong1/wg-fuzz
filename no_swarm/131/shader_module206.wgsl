struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false));

var<private> global1: Struct_3 = Struct_3(Struct_2(-1500i, vec4<u32>(21007u, 0u, 1u, 50075u)), Struct_1(vec4<bool>(false, true, false, true), -1i, 53249u, 0u, false));

var<private> global2: array<bool, 15> = array<bool, 15>(true, false, false, false, false, true, false, false, false, true, false, true, true, false, false);

var<private> global3: Struct_2 = Struct_2(0i, vec4<u32>(25995u, 4294967295u, 53335u, 0u));

var<private> global4: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_2(-25284i, vec4<u32>(9300u, 0u, 54871u, 1u)), Struct_1(vec4<bool>(true, false, true, true), -29300i, 80446u, 0u, true)), Struct_3(Struct_2(1i, vec4<u32>(16567u, 100572u, 1u, 39424u)), Struct_1(vec4<bool>(true, true, true, false), i32(-2147483648), 1u, 44938u, true)), Struct_3(Struct_2(33560i, vec4<u32>(0u, 20987u, 17575u, 3627u)), Struct_1(vec4<bool>(false, true, false, false), 52453i, 33866u, 59648u, false)), Struct_3(Struct_2(0i, vec4<u32>(43467u, 84019u, 49115u, 1u)), Struct_1(vec4<bool>(true, false, false, false), -39248i, 1u, 0u, false)), Struct_3(Struct_2(17711i, vec4<u32>(27988u, 1u, 29464u, 1883u)), Struct_1(vec4<bool>(true, false, true, true), 2147483647i, 35069u, 1u, false)), Struct_3(Struct_2(1i, vec4<u32>(11196u, 41284u, 106779u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), 0i, 99922u, 4294967295u, true)), Struct_3(Struct_2(1765i, vec4<u32>(36675u, 859u, 87837u, 25531u)), Struct_1(vec4<bool>(false, true, false, true), -2104i, 0u, 1u, false)), Struct_3(Struct_2(0i, vec4<u32>(1u, 60998u, 0u, 1u)), Struct_1(vec4<bool>(false, true, false, true), 27865i, 4294967295u, 1u, true)), Struct_3(Struct_2(-1i, vec4<u32>(4294967295u, 2743u, 1u, 2805u)), Struct_1(vec4<bool>(false, true, false, true), 19366i, 13391u, 76413u, true)), Struct_3(Struct_2(25125i, vec4<u32>(6420u, 4294967295u, 0u, 48037u)), Struct_1(vec4<bool>(true, true, false, true), i32(-2147483648), 15399u, 0u, false)), Struct_3(Struct_2(-17242i, vec4<u32>(1u, 4294967295u, 10408u, 0u)), Struct_1(vec4<bool>(true, true, true, false), 1i, 4294967295u, 40449u, false)), Struct_3(Struct_2(57387i, vec4<u32>(1u, 1u, 1u, 29483u)), Struct_1(vec4<bool>(false, true, false, true), -1i, 1u, 54477u, true)), Struct_3(Struct_2(i32(-2147483648), vec4<u32>(0u, 0u, 12484u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, false), -8739i, 1522u, 58402u, false)), Struct_3(Struct_2(-14655i, vec4<u32>(6089u, 24656u, 40126u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, false), 1i, 4294967295u, 0u, false)), Struct_3(Struct_2(77182i, vec4<u32>(17070u, 988u, 1u, 32585u)), Struct_1(vec4<bool>(true, true, true, true), -3126i, 1u, 39478u, false)), Struct_3(Struct_2(3363i, vec4<u32>(26579u, 0u, 42346u, 5517u)), Struct_1(vec4<bool>(false, false, false, false), -48575i, 66644u, 4294967295u, true)), Struct_3(Struct_2(4665i, vec4<u32>(73962u, 0u, 4294967295u, 16705u)), Struct_1(vec4<bool>(true, false, false, false), 0i, 1455u, 4294967295u, false)), Struct_3(Struct_2(22203i, vec4<u32>(4294967295u, 4294967295u, 1u, 53482u)), Struct_1(vec4<bool>(false, false, false, false), -8245i, 1u, 27304u, true)), Struct_3(Struct_2(-42684i, vec4<u32>(47736u, 0u, 4294967295u, 27604u)), Struct_1(vec4<bool>(false, true, false, true), -40198i, 0u, 1u, true)), Struct_3(Struct_2(-33710i, vec4<u32>(31u, 4306u, 12253u, 0u)), Struct_1(vec4<bool>(true, false, true, false), -1i, 26886u, 57931u, true)), Struct_3(Struct_2(-43937i, vec4<u32>(20576u, 4294967295u, 87452u, 1u)), Struct_1(vec4<bool>(false, true, false, false), i32(-2147483648), 101233u, 1u, false)), Struct_3(Struct_2(6282i, vec4<u32>(1u, 4294967295u, 58299u, 0u)), Struct_1(vec4<bool>(false, true, true, true), 2147483647i, 44099u, 0u, true)), Struct_3(Struct_2(2147483647i, vec4<u32>(17390u, 57935u, 4294967295u, 1u)), Struct_1(vec4<bool>(true, false, true, true), -27443i, 11539u, 4294967295u, true)), Struct_3(Struct_2(1i, vec4<u32>(1u, 24186u, 4294967295u, 5457u)), Struct_1(vec4<bool>(false, false, false, true), -1i, 4294967295u, 858u, true)), Struct_3(Struct_2(40311i, vec4<u32>(1u, 4294967295u, 493u, 14658u)), Struct_1(vec4<bool>(true, true, true, false), 3619i, 15680u, 4294967295u, true)), Struct_3(Struct_2(5843i, vec4<u32>(0u, 1u, 0u, 18780u)), Struct_1(vec4<bool>(true, false, true, false), 63526i, 35912u, 4294967295u, false)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.a, -92694i, 0i), vec3<i32>(-5498i, 11126i, 2147483647i)), global1.a.a)) ^ 52880i, global3.b);
    global1 = Struct_3(Struct_2(2147483647i, vec4<u32>(10424u, _wgslsmith_dot_vec3_u32(~global1.a.b.wxx, global3.b.wzw), 26117u, var_0.b.x)), Struct_1(select(select(!global1.b.a, !global1.b.a, select(global0[_wgslsmith_index_u32(3447u, 32u)], vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(global1.a.b.x, 15u)]), true)), global0[_wgslsmith_index_u32(27879u, 32u)], !global1.b.e), 6009i, reverseBits(0u), _wgslsmith_mod_u32(1u, 1u), true));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-927f, -895f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1758f, 2516f)) + vec2<f32>(623f, 364f))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-528f - -271f), _wgslsmith_f_op_f32(f32(-1f) * -945f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1035f, 1399f), _wgslsmith_f_op_f32(f32(-1f) * -1538f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(1438f + 465f)), _wgslsmith_f_op_f32(682f * _wgslsmith_div_f32(183f, 1026f))) * vec2<f32>(1f, 1f)));
    let var_3 = Struct_3(var_0, global1.b);
    return global1.b.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32) -> i32 {
    let var_0 = -2134f;
    var var_1 = Struct_3(Struct_2(func_3() | (_wgslsmith_mult_i32(global3.a, arg_1.a.a) << (min(13118u, global3.b.x) % 32u)), min(vec4<u32>(global3.b.x, 1u, ~4294967295u, 1u), global1.a.b)), global1.b);
    var var_2 = Struct_2(_wgslsmith_mult_i32(20260i, select(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, global1.b.b, global3.a), reverseBits(vec3<i32>(-2147483647i, -899i, var_1.a.a))), countOneBits(_wgslsmith_add_i32(5755i, var_1.a.a)), var_1.b.e)), reverseBits(~global1.a.b));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))));
    var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - 813f) + 1918f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    return _wgslsmith_add_i32(-(~global1.a.a), -16163i);
}

fn func_4(arg_0: i32, arg_1: bool) -> vec4<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2150f, 194f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(767f, 1527f) - vec2<f32>(-108f, -150f)))) + vec2<f32>(-1537f, 1000f)), Struct_3(global1.a, Struct_1(global0[_wgslsmith_index_u32(~1u, 32u)], ~countOneBits(arg_0), min(global3.b.x, 82494u) ^ global3.b.x, ~global1.a.b.x, true)), _wgslsmith_f_op_f32(-616f - 529f), Struct_2(arg_0, vec4<u32>(global3.b.x, global1.a.b.x, ~global1.b.d, abs(global3.b.x))), any(vec2<bool>(true, global1.b.a.x)));
    var var_1 = global1.a.b;
    global2 = array<bool, 15>();
    global1 = Struct_3(Struct_2(-2147483647i, vec4<u32>(_wgslsmith_div_u32(var_0.d.b.x, 12381u), 30577u, ~0u, 93853u)), global1.b);
    let var_2 = Struct_1(!global1.b.a, 9504i, global3.b.x, ~_wgslsmith_clamp_u32(12937u, var_1.x, max(~global3.b.x, ~global3.b.x)), !var_0.e);
    return vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + -1481f))))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, 510f) + 2051f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1905f, var_0.c) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -1187f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, -1385f) + -1000f)), false)));
}

fn func_1(arg_0: Struct_4) -> i32 {
    global4 = array<Struct_3, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(-_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.b.b, 29075i, global3.a), ~vec3<i32>(2147483647i, -34163i, 2147483647i)), func_2(!global1.b.a.wx, global4[_wgslsmith_index_u32(4294967295u, 26u)], 989f)), global1.b.e));
    let var_1 = true;
    global0 = array<vec4<bool>, 32>();
    let var_2 = -293f;
    return global1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(~abs(global1.b.b), 2147483647i, global3.a, 2147483647i)), ~(-vec4<i32>(~u_input.a, global3.a, func_1(Struct_4(vec2<f32>(3077f, 1363f), Struct_3(global1.a, Struct_1(vec4<bool>(global1.b.e, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(global3.b.x, 15u)], global2[_wgslsmith_index_u32(global1.b.d, 15u)]), global1.a.a, global1.b.c, global3.b.x, true)), 1026f, Struct_2(2147483647i, vec4<u32>(0u, global1.a.b.x, 4294967295u, 32380u)), global1.b.a.x)), global3.a)));
    global0 = array<vec4<bool>, 32>();
    let var_1 = !vec2<bool>(global2[_wgslsmith_index_u32(global3.b.x, 15u)], false);
    let var_2 = Struct_2(-1i, select(~global3.b, _wgslsmith_clamp_vec4_u32(~(~global1.a.b), _wgslsmith_sub_vec4_u32(global3.b, select(global1.a.b, vec4<u32>(global1.a.b.x, global1.b.d, 103031u, 11604u), false)), vec4<u32>(_wgslsmith_dot_vec4_u32(global3.b, global3.b), _wgslsmith_mod_u32(60822u, global3.b.x), 2953u ^ global1.a.b.x, 4294967295u)), select(vec4<bool>(!global2[_wgslsmith_index_u32(global1.b.d, 15u)], true, var_1.x, global1.b.a.x), vec4<bool>(true, !var_1.x, all(global1.b.a.yy), false), !global2[_wgslsmith_index_u32(global3.b.x, 15u)])));
    let var_3 = true;
    let var_4 = global1.b;
    var var_5 = ~countOneBits(abs(~vec3<u32>(0u, global1.a.b.x, 1u)));
    var_0 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -(vec4<i32>(var_4.b, 5052i, -1i, var_0.x) ^ vec4<i32>(u_input.a, var_0.x, -1i, global1.b.b)));
    var var_6 = ~((~_wgslsmith_mod_u32(0u, 63288u) ^ ~global3.b.x) ^ ~_wgslsmith_sub_u32(~global1.a.b.x, global1.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(522f);
}

