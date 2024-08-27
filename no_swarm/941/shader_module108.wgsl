struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 30>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(1i, 16553i, i32(-2147483648)));

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<i32>(i32(-2147483648), -1i, 6516i)), Struct_1(vec3<i32>(33547i, 0i, 0i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(39618i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(-18293i, 27759i, 2147483647i)), Struct_1(vec3<i32>(-18657i, -13827i, 35254i)), Struct_1(vec3<i32>(-22800i, 45133i, -1i)), Struct_1(vec3<i32>(2147483647i, 1i, 56590i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 25659i, -1i)), Struct_1(vec3<i32>(-1i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(0i, 52936i, -62249i)), Struct_1(vec3<i32>(1i, -23078i, 1i)), Struct_1(vec3<i32>(31261i, 58294i, -1i)), Struct_1(vec3<i32>(-13417i, -1i, -5983i)), Struct_1(vec3<i32>(10276i, 40491i, 31684i)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 11689i)), Struct_1(vec3<i32>(19196i, -22030i, 1i)), Struct_1(vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(vec3<i32>(0i, 1i, 1i)), Struct_1(vec3<i32>(-62815i, 2147483647i, 4763i)), Struct_1(vec3<i32>(i32(-2147483648), 25958i, 43835i)), Struct_1(vec3<i32>(i32(-2147483648), -21294i, -4365i)), Struct_1(vec3<i32>(1i, -1i, -56839i)), Struct_1(vec3<i32>(5823i, 11064i, 2147483647i)), Struct_1(vec3<i32>(0i, 0i, -1i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 7348i)), Struct_1(vec3<i32>(0i, -1i, 36339i)), Struct_1(vec3<i32>(8555i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -38027i)));

var<private> global4: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(32716u, 1u), vec2<u32>(1u, 64087u), vec2<u32>(24940u, 23700u), vec2<u32>(1u, 1u), vec2<u32>(314u, 116804u), vec2<u32>(4294967295u, 27235u), vec2<u32>(26214u, 11923u), vec2<u32>(36831u, 93909u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(2205u, 20138u), vec2<u32>(4294967295u, 1154u), vec2<u32>(0u, 88337u), vec2<u32>(52334u, 1u), vec2<u32>(1u, 67141u), vec2<u32>(1u, 0u), vec2<u32>(1u, 11063u), vec2<u32>(54812u, 75112u), vec2<u32>(85874u, 34084u), vec2<u32>(13504u, 4294967295u), vec2<u32>(12428u, 45522u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    global0 = global2.a;
    return 4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    global0 = select(~vec3<i32>(-(~global1[_wgslsmith_index_u32(85669u, 30u)]), arg_0.a.x, arg_1.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(select(arg_1.a, arg_1.a, false) & ~vec3<i32>(44150i, arg_1.a.x, 2147483647i), vec3<i32>(global2.a.x, 15316i, i32(-1i) * -1i)), ~0i, arg_1.a.x), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))));
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 61180i, arg_0.a.x), min(arg_0.a, arg_0.a))), vec3<i32>(-global2.a.x ^ -16985i, ~global1[_wgslsmith_index_u32(1u, 30u)], arg_0.a.x)));
    global3 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, firstLeadingBit(_wgslsmith_clamp_u32(13817u, 4394u, 0u)), select(8u, 1u, true))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(3404u, 32578u, 34304u, 1u), vec4<u32>(1u, 0u, 4294967295u, 0u)), vec4<u32>(64965u, 0u, abs(0u), ~1u)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 26852u, 107445u), min(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 0u, 10242u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), -202f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(361f)), -926f, all(vec3<bool>(false, true, true)))))));
    return var_1.zz;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> bool {
    global3 = array<Struct_1, 30>();
    global1 = array<i32, 30>();
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, func_2()), 27444u), ~(~func_3(Struct_1(global2.a), arg_1))));
    global2 = Struct_1(~(~vec3<i32>(2147483647i, 1i, reverseBits(-54724i))));
    return true;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(563f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(682f, -1993f) + vec2<f32>(-571f, -546f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, 2656f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-520f, 1627f), vec2<f32>(455f, 1058f), arg_2))))))))));
    let var_1 = Struct_1(vec3<i32>(2147483647i, ~(~(~global1[_wgslsmith_index_u32(7399u, 30u)])), firstTrailingBit(global1[_wgslsmith_index_u32(1u, 30u)])));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_0.x))));
    global3 = array<Struct_1, 30>();
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> StorageBuffer {
    global1 = array<i32, 30>();
    let var_0 = vec4<u32>(~(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 44679u, 0u), vec3<u32>(1u, 1u, 1u)) << (0u % 32u)), ~4294967295u, max(0u, _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(66143u, 23190u)), ~global4[_wgslsmith_index_u32(1u, 21u)])), 1u);
    global2 = func_4(vec4<u32>(select(_wgslsmith_mod_u32(firstTrailingBit(var_0.x), ~var_0.x), (1624u >> (1u % 32u)) & ~var_0.x, (-39663i < global2.a.x) | true), 0u, var_0.x, min(var_0.x, ~var_0.x & ~0u)), global3[_wgslsmith_index_u32(~abs(52523u), 30u)], !vec2<bool>(_wgslsmith_f_op_f32(ceil(958f)) == -979f, true), func_4(var_0, func_4(vec4<u32>(0u, var_0.x, var_0.x, 63731u) & var_0, Struct_1(~vec3<i32>(-1i, -1i, u_input.a.x)), vec2<bool>(true, true), Struct_1(vec3<i32>(0i, 1i, 18630i))), vec2<bool>(false, all(vec3<bool>(true, true, false)) & (12924u <= var_0.x)), func_4(var_0, arg_0, vec2<bool>(true, true), Struct_1(vec3<i32>(-1i, global2.a.x, 43114i)))));
    var var_1 = global0.zy;
    let var_2 = !vec2<bool>(!(62502u >= countOneBits(var_0.x)), !any(vec3<bool>(false, false, false)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1392f, 1285f)))), _wgslsmith_f_op_f32(f32(-1f) * -1419f), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-444f))) - _wgslsmith_f_op_f32(abs(664f))) - _wgslsmith_f_op_f32(ceil(-313f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1258f))) - -3262f), -2188f)), abs(min(-29061i, 1845i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1870f) + -338f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1124f)))));
    global4 = array<vec2<u32>, 21>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f))) * 1064f) - 1453f);
    let x = u_input.a;
    s_output = func_5(func_4(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(8614u, 0u, 4294967295u, 0u), vec4<u32>(23901u, 4959u, 52752u, 4294967295u)), ~46379u, 0u, ~firstTrailingBit(22370u)), Struct_1(vec3<i32>(min(global0.x, global1[_wgslsmith_index_u32(22861u, 30u)]), _wgslsmith_dot_vec2_i32(global0.yz, global2.a.yz), global2.a.x)), select(vec2<bool>(false, func_1(1u, Struct_1(global2.a))), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, global1[_wgslsmith_index_u32(84155u, 30u)] != 2147483647i)), global3[_wgslsmith_index_u32(~26111u, 30u)]), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(2147483647i, -5978i, global0.x, global0.x), ~vec4<i32>(1i, 2396i, global0.x, 2147483647i), any(vec4<bool>(false, false, false, true))), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global0.x, global1[_wgslsmith_index_u32(6860u, 30u)], 1i, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, global1[_wgslsmith_index_u32(47887u, 30u)], u_input.a.x, u_input.a.x), vec4<i32>(-13391i, u_input.a.x, -1i, u_input.a.x)))) << (1u % 32u));
}

