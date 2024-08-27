struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<u32>(0u, 1u, 75277u), i32(-2147483648), false, false), Struct_1(vec3<u32>(1u, 64769u, 23542u), -14474i, true, true), Struct_1(vec3<u32>(4294967295u, 15702u, 1904u), 0i, false, false), Struct_1(vec3<u32>(21993u, 4294967295u, 13260u), 4535i, false, true), Struct_1(vec3<u32>(47233u, 91257u, 0u), 1i, false, true), Struct_1(vec3<u32>(25992u, 4294967295u, 50963u), i32(-2147483648), true, true), Struct_1(vec3<u32>(5049u, 37878u, 4294967295u), -57446i, false, false), Struct_1(vec3<u32>(5759u, 18235u, 1u), -3158i, false, false), Struct_1(vec3<u32>(40871u, 45869u, 1u), 2147483647i, true, false), Struct_1(vec3<u32>(4294967295u, 13858u, 1u), 2147483647i, true, true), Struct_1(vec3<u32>(11727u, 758u, 85567u), 1i, true, false), Struct_1(vec3<u32>(72286u, 4294967295u, 5417u), 1i, false, true), Struct_1(vec3<u32>(0u, 1u, 0u), 19298i, true, true), Struct_1(vec3<u32>(39483u, 38210u, 15782u), 0i, false, true), Struct_1(vec3<u32>(27780u, 8001u, 27411u), 2147483647i, false, true), Struct_1(vec3<u32>(302u, 4294967295u, 66549u), -31517i, true, true), Struct_1(vec3<u32>(57871u, 4294967295u, 4294967295u), -79157i, false, true), Struct_1(vec3<u32>(26601u, 28386u, 93645u), 0i, true, true), Struct_1(vec3<u32>(4294967295u, 7590u, 10165u), i32(-2147483648), false, false));

var<private> global2: vec2<f32>;

var<private> global3: vec3<f32> = vec3<f32>(658f, 1140f, 1011f);

var<private> global4: array<vec3<f32>, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> bool {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-380f + -1454f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1520f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)))), arg_0);
    let var_0 = (vec4<u32>(1u, 1u, 1u, 1u) ^ select(vec4<u32>(_wgslsmith_mult_u32(24021u, 22523u), 0u, _wgslsmith_mult_u32(15703u, 8045u), _wgslsmith_add_u32(25776u, 0u)), select(reverseBits(vec4<u32>(4294967295u, 19429u, 1u, 55761u)), select(vec4<u32>(1205u, 4294967295u, 10037u, 28897u), vec4<u32>(38778u, 4294967295u, 35392u, 20723u), vec4<bool>(false, false, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false)))) | _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(1u), 1u, _wgslsmith_mod_u32(20300u >> (1u % 32u), 47874u), abs(~16418u)), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), firstLeadingBit(firstTrailingBit(vec4<u32>(14548u, 1u, 0u, 41184u)) & min(vec4<u32>(12887u, 38079u, 38619u, 1u), vec4<u32>(45086u, 9604u, 68482u, 2343u))));
    var var_1 = global1[_wgslsmith_index_u32(37383u, 19u)];
    var var_2 = vec3<i32>(-2147483647i, u_input.a.x, var_1.b | u_input.a.x);
    var_1 = global1[_wgslsmith_index_u32(~(~0u), 19u)];
    return var_1.c;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<bool>) -> i32 {
    let var_0 = vec4<f32>(global3.x, _wgslsmith_div_f32(-261f, _wgslsmith_f_op_f32(trunc(global2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(step(504f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -343f))))));
    let var_1 = _wgslsmith_mod_u32(~arg_1.a.x, _wgslsmith_mult_u32(abs(arg_1.a.x), arg_1.a.x) << ((arg_1.a.x ^ ~arg_0) % 32u));
    var var_2 = Struct_1(abs(arg_1.a), 0i, all(select(!(!vec4<bool>(arg_3.x, arg_1.d, false, arg_1.d)), !arg_3, select(!vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, arg_2.x, false, arg_3.x), arg_1.c))), false);
    let var_3 = arg_0;
    var var_4 = ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, 0u, 70393u), ~vec4<u32>(4294967295u, 1u, 1u, arg_1.a.x)) & _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_3, arg_1.a.x)), arg_1.a.yy));
    return _wgslsmith_add_i32(~(~(-u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a.xyx, u_input.a.yxx), -19899i, u_input.a.x), u_input.a.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = 43453u;
    let var_1 = ~(~_wgslsmith_sub_i32(68226i, -u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-global2.x)));
    let var_3 = _wgslsmith_f_op_f32(abs(-1506f));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1292f) - _wgslsmith_f_op_f32(-1000f - var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3)))))) * _wgslsmith_f_op_vec2_f32(global3.yy - global3.xz));
    return Struct_1(firstTrailingBit(abs(arg_1.yyx)), func_4(firstLeadingBit(4294967295u), Struct_1(abs(firstLeadingBit(vec3<u32>(arg_1.x, arg_1.x, arg_1.x))), select(-4900i, var_1, false) & max(2226i, 1i), (-2147483647i | u_input.a.x) == (var_1 | -1i), arg_0.x), !select(vec4<bool>(true, true, arg_0.x, arg_0.x), !vec4<bool>(true, arg_0.x, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, true, false)), vec4<bool>(!arg_0.x, arg_0.x, !func_3(var_2), !arg_0.x)), true | !(any(vec3<bool>(true, arg_0.x, arg_0.x)) && arg_0.x), arg_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = ~(-u_input.a.wzx);
    let var_1 = arg_1.x;
    global1 = array<Struct_1, 19>();
    var_0 = u_input.a.wxw;
    global4 = array<vec3<f32>, 26>();
    return -529f;
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_add_i32(u_input.a.x, ~0i);
    var var_1 = Struct_1(vec3<u32>(1u, ~(~8138u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 35585u, 64432u, 0u), vec4<u32>(25365u, 1u, 33556u, 4294967295u)) >> (41877u % 32u)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(~1u, 31045u, 22942u), firstTrailingBit(select(vec3<u32>(10298u, 19145u, 1u), vec3<u32>(0u, 4294967295u, 437u), true))) % vec3<u32>(32u)), 39739i, true, !any(vec4<bool>(true, true, true, true)));
    global3 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-828f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-255f * global2.x) + global2.x))));
    let var_2 = var_1.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(vec3<u32>(4294967295u, var_1.a.x, 0u), 42984i, var_1.d, var_1.c), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(41214u, 17u)]), func_2(vec2<bool>(var_1.d, var_1.d), vec4<u32>(27873u, var_1.a.x, 4294967295u, 55718u)), global1[_wgslsmith_index_u32(var_1.a.x | var_1.a.x, 19u)]))))) - global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1508f, _wgslsmith_f_op_f32(523f - -1904f))), _wgslsmith_f_op_f32(354f - global2.x), _wgslsmith_f_op_f32(abs(1389f))) + vec3<f32>(global2.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_1()))) + vec3<f32>(global2.x, -316f, 337f));
    global4 = array<vec3<f32>, 26>();
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))), global3.x, _wgslsmith_f_op_f32(772f * _wgslsmith_f_op_f32(max(global3.x, global2.x))))));
    var var_0 = firstLeadingBit(1u);
    global4 = array<vec3<f32>, 26>();
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-327f, global3.x, 585f))) * vec3<f32>(_wgslsmith_f_op_f32(func_1()), global3.x, _wgslsmith_f_op_f32(trunc(-642f)))) - global0[_wgslsmith_index_u32(1u, 17u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-1738f * -2055f), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(max(-351f, 1f))), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<bool>(true, true), max(select(countOneBits(vec4<u32>(23785u, 4294967295u, 86175u, 60747u)), ~vec4<u32>(3460u, 3497u, 21014u, 4294967295u), vec4<bool>(false, true, true, false)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))).a.x);
}

