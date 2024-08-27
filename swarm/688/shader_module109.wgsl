struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: Struct_4,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
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

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<i32>(2147483647i, -9432i, -73916i), 9267u), Struct_3(vec3<i32>(-29583i, -48046i, -20131i), 5120u), Struct_3(vec3<i32>(-23236i, 0i, i32(-2147483648)), 23255u), Struct_3(vec3<i32>(2147483647i, 1i, 1i), 0u), Struct_3(vec3<i32>(34001i, 25771i, i32(-2147483648)), 60014u), Struct_3(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 4294967295u), Struct_3(vec3<i32>(-49859i, i32(-2147483648), 1i), 82509u), Struct_3(vec3<i32>(2147483647i, 2147483647i, 25652i), 0u), Struct_3(vec3<i32>(-69215i, 1i, 2147483647i), 0u), Struct_3(vec3<i32>(-1i, i32(-2147483648), -24185i), 5762u), Struct_3(vec3<i32>(1i, i32(-2147483648), 2147483647i), 46981u), Struct_3(vec3<i32>(-21268i, 2147483647i, -9453i), 20980u), Struct_3(vec3<i32>(50417i, 39826i, -39680i), 0u), Struct_3(vec3<i32>(-9577i, 1i, -11160i), 4294967295u), Struct_3(vec3<i32>(0i, -49708i, -39216i), 10919u), Struct_3(vec3<i32>(-34862i, 64556i, 53008i), 34588u), Struct_3(vec3<i32>(15517i, -1i, -1i), 1u), Struct_3(vec3<i32>(-53853i, 1i, 1i), 0u), Struct_3(vec3<i32>(1i, i32(-2147483648), 2147483647i), 2376u), Struct_3(vec3<i32>(0i, -1i, -65037i), 4294967295u), Struct_3(vec3<i32>(0i, -39441i, 2147483647i), 4294967295u), Struct_3(vec3<i32>(i32(-2147483648), -65792i, -1i), 1u), Struct_3(vec3<i32>(50415i, i32(-2147483648), 2147483647i), 63833u), Struct_3(vec3<i32>(2147483647i, 2147483647i, 33453i), 1u), Struct_3(vec3<i32>(0i, -1i, 2147483647i), 28163u), Struct_3(vec3<i32>(-61650i, 1i, 2147483647i), 63904u), Struct_3(vec3<i32>(59825i, -1i, 0i), 4294967295u));

var<private> global1: array<vec2<u32>, 17>;

var<private> global2: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(54549u, 28930u, 61139u), vec3<u32>(0u, 31255u, 4294967295u), vec3<u32>(4294967295u, 0u, 55849u), vec3<u32>(13940u, 4294967295u, 4294967295u), vec3<u32>(23736u, 4294967295u, 4294967295u), vec3<u32>(0u, 3817u, 1u), vec3<u32>(0u, 14380u, 0u), vec3<u32>(73662u, 55948u, 4294967295u), vec3<u32>(2986u, 55543u, 45647u), vec3<u32>(1u, 29194u, 67719u), vec3<u32>(0u, 7722u, 32612u), vec3<u32>(67966u, 23023u, 29760u), vec3<u32>(16335u, 45240u, 1u), vec3<u32>(4294967295u, 12543u, 59473u), vec3<u32>(34716u, 1u, 76358u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(4294967295u, 42356u, 20276u), vec3<u32>(44315u, 4294967295u, 21377u), vec3<u32>(4382u, 74659u, 2046u), vec3<u32>(4294967295u, 50759u, 4294967295u), vec3<u32>(0u, 51485u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(63285u, 1u, 36332u), vec3<u32>(43432u, 50635u, 1u), vec3<u32>(61748u, 9353u, 105251u), vec3<u32>(1u, 0u, 46379u), vec3<u32>(57809u, 47096u, 30408u), vec3<u32>(49080u, 0u, 57526u));

var<private> global3: array<bool, 19> = array<bool, 19>(true, true, false, true, false, true, false, true, false, false, true, false, false, true, true, false, false, false, false);

var<private> global4: vec3<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_3 {
    let var_0 = select(vec2<bool>(true, u_input.c.x > _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(u_input.b, u_input.b))), vec2<bool>(true, 1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, global4.x, global4.x, -23577i) ^ vec4<i32>(global4.x, -1i, 0i, 0i), vec4<i32>(2147483647i, -23556i, 1i, 64175i))), !(!vec2<bool>(any(vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(3786u, 19u)], true)), !global3[_wgslsmith_index_u32(1u, 19u)])));
    global3 = array<bool, 19>();
    let var_1 = reverseBits(abs(~abs(global1[_wgslsmith_index_u32(33408u, 17u)]) & ~(vec2<u32>(1u, u_input.c.x) >> (vec2<u32>(64103u, u_input.a.x) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(min(u_input.b, 1u), 0u, _wgslsmith_clamp_u32(42808u, 61122u, u_input.c.x)), ~vec3<u32>(4294967295u, ~33691u, u_input.c.x)) | global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.x, 4294967295u), 57287u), ~firstTrailingBit(var_1.x)), _wgslsmith_mult_u32(~(u_input.d.x << (4294967295u % 32u)), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, 33160u))), 29u)];
    let var_3 = vec2<i32>(-47196i, -49853i);
    return Struct_3(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(select(vec3<i32>(global4.x, var_3.x, var_3.x), vec3<i32>(var_3.x, 21224i, var_3.x), vec3<bool>(var_0.x, var_0.x, false))), select(-vec3<i32>(var_3.x, -2147483647i, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, global4.x), vec3<i32>(var_3.x, var_3.x, global4.x)), select(global3[_wgslsmith_index_u32(var_1.x, 19u)], true, global3[_wgslsmith_index_u32(1u, 19u)]))), vec3<i32>(global4.x, firstLeadingBit(1339i), -select(-30569i, 11384i, var_0.x))), var_1.x);
}

fn func_3(arg_0: u32) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(vec3<bool>(!(!global3[_wgslsmith_index_u32(arg_0, 19u)]), true, false), vec3<i32>(-func_2().a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-94074i, 1i, global4.x, -2147483647i), vec4<i32>(global4.x, global4.x, -1i, global4.x)), global4.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(399f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = Struct_1(!vec3<bool>(global3[_wgslsmith_index_u32(26418u, 19u)], global3[_wgslsmith_index_u32(~arg_0, 19u)] != (var_0.a.a.x || global3[_wgslsmith_index_u32(arg_0, 19u)]), false), -_wgslsmith_div_vec3_i32(min(~vec3<i32>(global4.x, -41137i, var_0.a.b.x), vec3<i32>(1i, -1457i, var_0.a.b.x)), ~(-var_0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.c - 407f), _wgslsmith_f_op_f32(-var_0.a.c))))));
    var var_2 = vec3<bool>(false, _wgslsmith_dot_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, u_input.b, 45411u, arg_0), vec4<u32>(4294967295u, 4775u, u_input.c.x, u_input.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 72474u, 1u, 20462u), vec4<u32>(1u, 103303u, 1770u, u_input.c.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(18674u, 0u, u_input.b, 51123u), vec4<u32>(u_input.d.x, arg_0, u_input.b, 4294967295u))) >= (_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, 49743u), u_input.a.x) >> (arg_0 % 32u)), select(var_1.c == var_0.a.c, true, false));
    global4 = reverseBits(vec3<i32>(global4.x, -1i, -1i));
    var_1 = Struct_1(!vec3<bool>(true & var_0.a.a.x, !(var_0.a.b.x == global4.x), any(!vec4<bool>(true, var_1.a.x, var_1.a.x, false))), vec3<i32>(var_0.a.b.x, 15942i, 32965i), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-1f), !any(select(vec2<bool>(true, var_1.a.x), var_0.a.a.zy, var_1.a.x)))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-692f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2169f)) * _wgslsmith_f_op_f32(-var_0.a.c))), -405f);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> bool {
    global0 = array<Struct_3, 27>();
    global3 = array<bool, 19>();
    global1 = array<vec2<u32>, 17>();
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mod_u32(0u, ~1u >> (u_input.c.x % 32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.c, arg_1.a.c) - vec2<f32>(1000f, 1061f)))), vec2<f32>(arg_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(259f)) - _wgslsmith_f_op_vec2_f32(func_3(4294967295u)).x)))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec3<bool>(all(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 19u)])), global3[_wgslsmith_index_u32(u_input.c.x, 19u)] & true, global3[_wgslsmith_index_u32(17402u, 19u)]), vec3<bool>(false, func_1(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)], false), Struct_2(Struct_1(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.d.x, 19u)], global3[_wgslsmith_index_u32(0u, 19u)]), vec3<i32>(-52516i, -1i, 1062i), 1140f))), any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 19u)], global3[_wgslsmith_index_u32(1u, 19u)]))), global3[_wgslsmith_index_u32(0u, 19u)]), !(!(!vec3<bool>(global3[_wgslsmith_index_u32(50838u, 19u)], global3[_wgslsmith_index_u32(1u, 19u)], false))), !select(!vec3<bool>(true, true, global3[_wgslsmith_index_u32(48182u, 19u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(27663u, 19u)], global3[_wgslsmith_index_u32(49701u, 19u)]), false));
    let var_1 = -(~global4.x);
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, firstLeadingBit(_wgslsmith_clamp_u32(0u, u_input.c.x, 0u)), firstLeadingBit(46246u), ~(~88085u)), countOneBits(select(~reverseBits(vec4<u32>(u_input.b, u_input.a.x, u_input.c.x, 0u)), ~vec4<u32>(29901u, 36109u, 0u, u_input.a.x) & vec4<u32>(1u, u_input.d.x, u_input.b, 1u), vec4<bool>(func_1(vec3<bool>(false, var_0.x, false), Struct_2(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 19u)], var_0.x, global3[_wgslsmith_index_u32(1u, 19u)]), vec3<i32>(var_1, 2147483647i, global4.x), 1530f))), var_0.x, !var_0.x, true))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-891f)), _wgslsmith_f_op_f32(-2108f + -1321f), _wgslsmith_f_op_f32(ceil(-902f)), _wgslsmith_f_op_f32(sign(-1199f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1416f, 121f, 772f, -1390f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(929f, -770f, -1172f, -555f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-1124f, -479f, -1728f, 605f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(116f, -1735f, -157f, -1864f), vec4<f32>(-573f, 307f, -1691f, 1000f), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 412f, -930f, -777f))));
    global1 = array<vec2<u32>, 17>();
    let var_4 = Struct_4(var_0, _wgslsmith_f_op_vec2_f32(var_3.zx * _wgslsmith_f_op_vec2_f32(max(var_3.wz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_3.wx)))))));
    global2 = array<vec3<u32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_sub_u32(min(u_input.c.x, 14136u), 0u >> (u_input.a.x % 32u)) | ~u_input.d.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], u_input.a.yz)), global1[_wgslsmith_index_u32(~u_input.b, 17u)] | countOneBits(vec2<u32>(u_input.c.x, 4294967295u))) % 32u));
}

