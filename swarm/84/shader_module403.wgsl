struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(1i, -14434i), vec2<i32>(15478i, -64829i), vec2<i32>(1i, 577i), vec2<i32>(0i, -1i), vec2<i32>(-14149i, -34407i), vec2<i32>(1i, 34028i), vec2<i32>(2147483647i, -103283i), vec2<i32>(11662i, -25618i), vec2<i32>(0i, 4363i), vec2<i32>(63870i, 1i), vec2<i32>(1i, 0i), vec2<i32>(-5655i, i32(-2147483648)), vec2<i32>(-13232i, -42949i), vec2<i32>(-9025i, 40542i), vec2<i32>(50410i, -77430i), vec2<i32>(40609i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), 7736i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(7613i, 1i), vec2<i32>(i32(-2147483648), 13809i), vec2<i32>(-7181i, i32(-2147483648)), vec2<i32>(-24290i, -1i), vec2<i32>(1i, 27479i), vec2<i32>(-49233i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, -13683i));

var<private> global2: array<vec4<i32>, 4>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<i32> {
    let var_0 = select(!(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), true)), vec4<bool>(any(vec2<bool>(false, true)), !(true || all(vec3<bool>(false, false, true))), (_wgslsmith_f_op_f32(trunc(1000f)) >= _wgslsmith_f_op_f32(-1534f - 340f)) && (u_input.b <= -1i), false), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, -1535f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(1672f, _wgslsmith_f_op_f32(573f - -104f))))));
    global1 = array<vec2<i32>, 29>();
    let var_2 = Struct_2(var_0.x, Struct_1(false, vec4<u32>(reverseBits(_wgslsmith_div_u32(4294967295u, 69120u)), max(~1u, 1u), ~(~9138u), 1u)), ~abs(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy)), select(~vec2<u32>(_wgslsmith_mod_u32(39048u, 4294967295u), 119755u), vec2<u32>(1u, 1u), false));
    var var_3 = _wgslsmith_f_op_f32(step(766f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.d.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -430f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-727f, 538f))))));
    return ~(-select(-vec3<i32>(2147483647i, u_input.b, -11689i), vec3<i32>(0i, u_input.b, 2147483647i), false)) >> (vec3<u32>(~min(var_2.b.b.x, 1u), _wgslsmith_clamp_u32(var_2.c.x & 0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(var_2.e, var_2.e)), 0u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, var_2.c.x, 4294967295u)), _wgslsmith_add_vec3_u32(var_2.c.wxy | vec3<u32>(var_2.e.x, 49297u, 17884u), var_2.b.b.wyz))) % vec3<u32>(32u));
}

fn func_2() -> u32 {
    let var_0 = abs(~1u);
    var var_1 = Struct_1(select(true, true, all(vec2<bool>(true, true))), vec4<u32>(~(~var_0) >> (1u % 32u), _wgslsmith_div_u32(~4294967295u, var_0), ~(~(~106704u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, var_0, var_0), vec3<u32>(1u, var_0, var_0))));
    var var_2 = ~((~_wgslsmith_mult_u32(4294967295u, var_0) ^ (~var_0 >> (var_1.b.x % 32u))) | _wgslsmith_mod_u32(_wgslsmith_div_u32(~4294967295u, ~var_1.b.x), 4294967295u));
    var var_3 = Struct_2(var_1.a, Struct_1(true, max(firstLeadingBit(select(var_1.b, vec4<u32>(14218u, 0u, var_1.b.x, var_0), true)), var_1.b)), ~select(_wgslsmith_div_vec4_u32(var_1.b | var_1.b, _wgslsmith_div_vec4_u32(var_1.b, vec4<u32>(var_0, var_1.b.x, var_1.b.x, var_0))), _wgslsmith_mult_vec4_u32(abs(var_1.b), ~vec4<u32>(39658u, 10932u, 1u, var_0)), !(!vec4<bool>(var_1.a, var_1.a, true, false))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-103f - -201f), _wgslsmith_f_op_f32(-593f * -1377f))), _wgslsmith_f_op_f32(f32(-1f) * -954f)))), max(var_1.b.yw, vec2<u32>(_wgslsmith_add_u32(94874u, 57218u), var_0)));
    var var_4 = vec2<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, -2147483647i, u_input.a.x), firstTrailingBit(vec3<i32>(u_input.a.x, -27220i, -2147483647i))) << (vec3<u32>(1u, ~51249u, _wgslsmith_dot_vec3_u32(var_1.b.zwz, var_3.b.b.zxz)) % vec3<u32>(32u)), (func_3() | vec3<i32>(u_input.a.x, u_input.a.x, u_input.b)) | _wgslsmith_div_vec3_i32(func_3(), ~vec3<i32>(u_input.b, 107830i, u_input.a.x))), -2147483647i);
    return firstTrailingBit(~12175u >> (_wgslsmith_div_u32(var_3.c.x, firstLeadingBit(firstTrailingBit(55217u))) % 32u));
}

fn func_1() -> vec4<u32> {
    let var_0 = !(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-883f, _wgslsmith_f_op_f32(-179f * -1000f), -999f), vec3<f32>(-479f, _wgslsmith_f_op_f32(floor(-386f)), -292f))));
    global0 = array<Struct_2, 17>();
    var var_2 = _wgslsmith_div_u32((abs(_wgslsmith_mult_u32(3651u, 12282u)) >> (_wgslsmith_mod_u32(abs(1u), ~1u) % 32u)) ^ ~(~72485u << (select(8260u, 0u, false) % 32u)), func_2());
    global2 = array<vec4<i32>, 4>();
    return vec4<u32>(~(~1u), ~(~28687u), 46775u, ~select(~(~58600u), 0u, !var_0));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = arg_1.b.a;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.d)))))), _wgslsmith_f_op_vec2_f32(-arg_1.d));
    var var_3 = arg_0.wzx;
    var var_4 = ~min(~vec3<i32>(-27957i, -63155i, u_input.a.x << (0u % 32u)), func_3());
    return var_0.b;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(all(select(!vec3<bool>(arg_1.a, false, arg_1.a), select(select(vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.a, true, arg_1.a), arg_1.a), !vec3<bool>(false, false, arg_1.a), !vec3<bool>(arg_1.a, true, true)), !any(vec2<bool>(true, arg_1.a)))), true, false, arg_1.a);
    let var_1 = arg_1;
    let var_2 = vec3<u32>(func_2(), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.b.x, ~var_1.b.x, ~arg_1.b.x, firstLeadingBit(11605u)), firstTrailingBit(vec4<u32>(4351u, var_1.b.x, 1u, arg_0)) << ((vec4<u32>(arg_0, arg_1.b.x, 0u, 380u) << (vec4<u32>(13511u, 1u, 56771u, arg_0) % vec4<u32>(32u))) % vec4<u32>(32u))), var_1.b.x), var_1.b.x);
    var var_3 = all(select(vec4<bool>(true, false, any(var_0.yz), all(vec4<bool>(false, true, var_0.x, var_0.x))), vec4<bool>(arg_1.a, !var_0.x && true, true, all(select(var_0, var_0, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2.x, arg_3.x))) > -1697f));
    global1 = array<vec2<i32>, 29>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 17>();
    var var_0 = func_5(_wgslsmith_mod_u32(reverseBits(~1u), _wgslsmith_mod_u32(1u, min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(11318u, 11477u, 4294967295u, 0u), vec4<u32>(36022u, 0u, 44667u, 4294967295u))))), func_4(_wgslsmith_mod_vec4_u32(select(firstTrailingBit(vec4<u32>(64326u, 1u, 26279u, 47432u)), func_1(), u_input.a.x == 42693i), func_1()), global0[_wgslsmith_index_u32(countOneBits(min(firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 43940u, 1u), vec3<u32>(1u, 1u, 21091u)))), 17u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-480f, _wgslsmith_f_op_f32(f32(-1f) * -704f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 305f) + vec2<f32>(345f, 829f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1508f * -382f))), _wgslsmith_f_op_f32(step(697f, _wgslsmith_f_op_f32(f32(-1f) * -275f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(795f, 203f, 1181f, -2409f), vec4<f32>(-873f, -2497f, 148f, -247f), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1207f, 1560f, -319f, -321f) - vec4<f32>(-152f, 1343f, -2121f, -464f))))));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_3 = var_2.b.a;
    var var_4 = global0[_wgslsmith_index_u32(func_5(~(_wgslsmith_div_u32(4294967295u, 1u) | _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.x, 8768u), vec2<u32>(32574u, var_0.b.x))), var_2.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xz + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2063f, -1145f) - var_2.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(-var_1.x))), vec2<bool>(!any(vec4<bool>(var_2.b.a, var_2.b.a, true, false)), var_2.b.a))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.d.x))))), var_1.x)).b.x, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, ~u_input.b));
}

