struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(reverseBits(23220u) ^ arg_0.c.x, ~arg_1.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 1u), arg_1), _wgslsmith_mult_u32(44475u, ~arg_1.x)), ~(~arg_1.zz) >> ((vec2<u32>(arg_0.c.x, arg_2.c.a.c.x) & arg_2.d.c.wy) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~arg_3.b.c.wy, ~(arg_1.zy >> (arg_3.d.c.zx % vec2<u32>(32u))))));
    var_0 = vec2<u32>(_wgslsmith_add_u32(var_0.x, arg_0.c.x), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 0u, 15370u, arg_2.b.c.x)), arg_1));
    var_0 = vec2<u32>(~arg_2.d.c.x, abs(_wgslsmith_sub_u32(arg_1.x, 4294967295u)));
    let var_1 = all(select(select(select(vec4<bool>(true, arg_2.e, true, true), select(vec4<bool>(true, true, true, arg_2.e), vec4<bool>(arg_2.e, true, arg_3.e, false), vec4<bool>(arg_2.e, true, true, false)), vec4<bool>(arg_3.e, arg_2.e, arg_3.e, arg_2.e)), !(!vec4<bool>(arg_3.e, arg_2.e, true, arg_3.e)), select(!vec4<bool>(true, true, arg_3.e, arg_3.e), select(vec4<bool>(arg_3.e, true, arg_2.e, false), vec4<bool>(false, false, arg_2.e, false), vec4<bool>(false, false, arg_2.e, false)), true)), !(!(!vec4<bool>(true, arg_2.e, arg_3.e, false))), vec4<bool>(arg_3.e, _wgslsmith_div_f32(arg_2.c.a.a, -300f) > _wgslsmith_f_op_f32(-arg_0.a), arg_3.e, true)));
    var_0 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x & max(106965u, arg_0.c.x), arg_0.c.x), ~vec2<u32>(0u << (arg_1.x % 32u), arg_2.c.a.c.x)));
    return select(arg_0.c.x, _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, 84691u, arg_0.c.x), vec4<u32>(arg_1.x, arg_3.a.x, 14702u, arg_1.x))), arg_2.c.a.c.x << (~reverseBits(arg_1.x) % 32u)), arg_2.e);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(func_3(Struct_1(1f, 18375i, select(vec4<u32>(15715u, 33845u, 4294967295u, 1u), vec4<u32>(0u, 62589u, 31859u, 52296u), false)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 90923u, 38138u, 53192u), vec4<u32>(4294967295u, 17514u, 1u, 65361u), vec4<u32>(1u, 1u, 0u, 28686u)), max(vec4<u32>(0u, 4294967295u, 67317u, 41831u), vec4<u32>(46709u, 67355u, 5816u, 10068u)), vec4<u32>(21241u, 61447u, 74994u, 24347u)), Struct_3(~vec2<u32>(9406u, 0u), Struct_1(-647f, u_input.a.x, vec4<u32>(32214u, 57497u, 20118u, 1u)), Struct_2(Struct_1(-455f, u_input.b, vec4<u32>(21050u, 7521u, 34000u, 45118u))), Struct_1(-691f, arg_0, vec4<u32>(32566u, 23541u, 1u, 0u)), true), Struct_3(vec2<u32>(114265u, 1u), Struct_1(2737f, 16911i, vec4<u32>(53472u, 80083u, 113289u, 47944u)), Struct_2(Struct_1(-562f, arg_0, vec4<u32>(38945u, 13966u, 4294967295u, 8491u))), Struct_1(-1463f, u_input.a.x, vec4<u32>(0u, 42554u, 3744u, 1u)), true)), 35942u) >= ~_wgslsmith_clamp_u32(abs(1u), ~func_3(Struct_1(-1000f, u_input.a.x, vec4<u32>(4294967295u, 43575u, 0u, 17129u)), vec4<u32>(57603u, 37572u, 4294967295u, 4294967295u), Struct_3(vec2<u32>(1u, 29395u), Struct_1(-1956f, u_input.b, vec4<u32>(4294967295u, 1u, 4294967295u, 68315u)), Struct_2(Struct_1(881f, 21690i, vec4<u32>(0u, 17807u, 0u, 54173u))), Struct_1(1318f, 47164i, vec4<u32>(59954u, 27207u, 41202u, 40569u)), false), Struct_3(vec2<u32>(0u, 17937u), Struct_1(1000f, 1i, vec4<u32>(98811u, 0u, 4294967295u, 12959u)), Struct_2(Struct_1(-325f, u_input.b, vec4<u32>(36013u, 4294967295u, 49798u, 34870u))), Struct_1(-825f, u_input.b, vec4<u32>(7964u, 2124u, 1u, 75579u)), false)), 60803u);
    let var_1 = var_0;
    let var_2 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, select(7356u, 1u, true), 1u, _wgslsmith_add_u32(0u, 72301u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 68392u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(abs(1u), 1u, 0u >> (0u % 32u), 1u)) << (vec4<u32>(0u, ~33083u, 1u, ~_wgslsmith_div_u32(4999u, 60147u)) % vec4<u32>(32u)));
    let var_3 = Struct_3(select(_wgslsmith_add_vec2_u32(vec2<u32>(4976u, 0u), max(var_2.wx, var_2.zx)) << ((_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, var_2.x), var_2.ww) | ~vec2<u32>(var_2.x, var_2.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, var_2.x, var_2.x << (var_2.x % 32u)), func_3(Struct_1(-738f, 1i, var_2), max(var_2, var_2), Struct_3(var_2.zw, Struct_1(-139f, -1i, vec4<u32>(var_2.x, var_2.x, 4294967295u, 4294967295u)), Struct_2(Struct_1(-398f, u_input.a.x, vec4<u32>(46898u, var_2.x, 4294967295u, var_2.x))), Struct_1(773f, u_input.b, vec4<u32>(var_2.x, var_2.x, 1u, 41947u)), true), Struct_3(var_2.zy, Struct_1(502f, u_input.a.x, var_2), Struct_2(Struct_1(-1000f, arg_0, vec4<u32>(var_2.x, 4294967295u, var_2.x, var_2.x))), Struct_1(-809f, u_input.a.x, var_2), var_1))), select(vec2<bool>(true, true), !vec2<bool>(var_0, var_1), any(vec2<bool>(var_1, var_0)))), Struct_1(-1136f, firstTrailingBit(-28061i), vec4<u32>(var_2.x, func_3(Struct_1(1000f, arg_0, var_2), vec4<u32>(var_2.x, var_2.x, 4294967295u, var_2.x), Struct_3(vec2<u32>(var_2.x, var_2.x), Struct_1(-1000f, u_input.a.x, vec4<u32>(var_2.x, 41797u, 31737u, var_2.x)), Struct_2(Struct_1(399f, -20625i, vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x))), Struct_1(168f, -26306i, var_2), var_0), Struct_3(var_2.xx, Struct_1(677f, u_input.b, var_2), Struct_2(Struct_1(842f, 0i, vec4<u32>(0u, var_2.x, var_2.x, var_2.x))), Struct_1(889f, arg_0, vec4<u32>(var_2.x, var_2.x, var_2.x, 62307u)), true)), 52886u, _wgslsmith_mod_u32(select(var_2.x, 1u, var_0), var_2.x))), Struct_2(Struct_1(133f, firstLeadingBit(u_input.a.x), abs(firstTrailingBit(var_2)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), 46149i, select(vec4<u32>(firstLeadingBit(var_2.x), countOneBits(69684u), ~var_2.x, func_3(Struct_1(-320f, -23543i, var_2), var_2, Struct_3(var_2.zw, Struct_1(-1176f, 0i, vec4<u32>(var_2.x, 3442u, 34095u, 47696u)), Struct_2(Struct_1(-112f, u_input.b, vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x))), Struct_1(-1000f, arg_0, var_2), false), Struct_3(var_2.ww, Struct_1(373f, u_input.a.x, vec4<u32>(4294967295u, var_2.x, 28718u, var_2.x)), Struct_2(Struct_1(1848f, arg_0, var_2)), Struct_1(-643f, arg_0, vec4<u32>(0u, var_2.x, var_2.x, var_2.x)), var_0))), vec4<u32>(var_2.x, 0u, 25240u, 48078u) ^ (vec4<u32>(0u, var_2.x, 1u, var_2.x) >> (vec4<u32>(var_2.x, 1u, var_2.x, var_2.x) % vec4<u32>(32u))), select(select(vec4<bool>(var_0, var_0, var_1, false), vec4<bool>(var_1, true, var_0, var_1), false), vec4<bool>(var_0, true, var_0, false), !vec4<bool>(var_1, var_1, var_1, var_1)))), all(select(vec4<bool>(all(vec3<bool>(var_1, var_0, var_1)), var_0, true, all(vec2<bool>(false, var_0))), select(vec4<bool>(true, true, false, var_1), vec4<bool>(true, var_0, true, false), select(vec4<bool>(false, var_1, true, var_1), vec4<bool>(var_0, var_0, var_1, var_0), false)), !vec4<bool>(var_1, var_0, true, true))));
    var var_4 = var_3.d.c.x;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(step(var_3.b.a, var_3.b.a))), _wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(~0i, abs(u_input.b))), ~var_2);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-160f, 414f)), 478f, false)), countOneBits(countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(44114i, var_0.b, var_0.b)), ~25592i, ~10078i))), ~vec4<u32>(var_0.c.x, arg_3.c.x, 4294967295u & func_2(-1i).c.x, ~(arg_1 << (1u % 32u))));
    let var_2 = ~21105u;
    var var_3 = Struct_1(var_1.a, select(-8011i, i32(-1i) * -5564i, any(vec4<bool>(any(vec3<bool>(false, false, false)), true, all(vec2<bool>(arg_0, true)), true))), arg_3.c);
    let var_4 = func_2(u_input.b ^ var_0.b);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + _wgslsmith_f_op_f32(-560f - var_3.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.b, min(6106i, arg_3.b), true), max(i32(-1i) * -32984i, -var_1.b)), u_input.a.xz), select(reverseBits(arg_3.c), ~var_0.c, (arg_0 | (true & arg_0)) & all(select(vec2<bool>(false, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = func_4(arg_0.x, _wgslsmith_mod_u32(~1u, 103004u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(143f)) + _wgslsmith_f_op_f32(f32(-1f) * -896f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f * -609f))), 485f, _wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-251f - -842f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1131f - -908f), -1292f))), func_2(2147483647i));
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(849f)), _wgslsmith_f_op_f32(530f - 1772f))))), u_input.a.x, var_0.c);
    var_0 = Struct_1(_wgslsmith_f_op_f32(133f - _wgslsmith_f_op_f32(-1220f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))))), u_input.a.x, var_0.c);
    var_0 = func_4(false, 14819u, vec4<f32>(_wgslsmith_f_op_f32(686f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(757f - var_0.a), var_0.a, !arg_0.x))), _wgslsmith_f_op_f32(func_2(func_2(-2147483647i).b).a * 325f), 1122f, _wgslsmith_f_op_f32(f32(-1f) * -1861f)), Struct_1(611f, -16189i, vec4<u32>(11366u, ~reverseBits(28395u), ~47620u, var_0.c.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -329f)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(196f * var_0.a))), 364f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-881f, -2722f) * vec2<f32>(var_0.a, var_0.a))))));
    return Struct_2(func_4(!arg_0.x, var_0.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, 1249f, -1000f, 1325f)), vec4<f32>(684f, var_1.x, var_1.x, var_0.a))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_1.x, var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(789f, var_1.x, var_0.a, var_1.x), vec4<f32>(183f, 1934f, -1478f, var_0.a))), !vec4<bool>(true, arg_0.x, false, arg_0.x)))), func_2(u_input.a.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> i32 {
    return -346i | reverseBits(_wgslsmith_dot_vec2_i32(firstLeadingBit(max(vec2<i32>(u_input.a.x, arg_0.a.b), u_input.a.zz)), reverseBits(-u_input.a.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(~(~countOneBits(0u)) >> (firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 16065u, 1u), vec4<u32>(1u, 24064u, 0u, 23785u)), 1u, abs(1u))) % 32u), firstTrailingBit(~1u));
    let var_1 = select(~func_5(func_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), func_1(vec3<bool>(true, true, true)).a, true), u_input.a.x, ~abs(_wgslsmith_sub_u32(70395u, var_0)) <= 1u);
    let var_2 = _wgslsmith_f_op_f32(1321f - 1f);
    let var_3 = func_1(select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, false)), true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, false), var_2 == var_2), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true), all(vec2<bool>(true, false)) | any(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)))).a;
    var var_4 = 54900i;
    var var_5 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + 1838f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1727f + 536f) + _wgslsmith_f_op_f32(ceil(1105f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1578f, var_2, var_2, var_3.a)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2166f, -1000f, -639f, -525f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.a, 1334f, 1103f, var_3.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -736f, var_2, var_2))))));
}

