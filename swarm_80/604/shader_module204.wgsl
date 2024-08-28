struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: f32 = 648f;

var<private> global3: array<u32, 4>;

var<private> global4: array<u32, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = u_input.b.x;
    global1 = array<Struct_1, 2>();
    global4 = array<u32, 18>();
    var var_1 = u_input.b.x ^ _wgslsmith_mod_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 21399u, 550u), u_input.b) & ~1u), abs(~(~global3[_wgslsmith_index_u32(90575u, 4u)])));
    global1 = array<Struct_1, 2>();
    return Struct_2(~((~u_input.b << (vec4<u32>(u_input.b.x, 64755u, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25305u, 18u)], 4u)], 31028u) % vec4<u32>(32u))) | (~u_input.b & ~u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-27762i, arg_0.c), vec2<i32>(0i, 11020i)) << (_wgslsmith_dot_vec4_u32(max(u_input.b, _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16281u, 4u)], 4u)], 4u)], 0u, global4[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 4u)]))), _wgslsmith_sub_vec4_u32(reverseBits(u_input.b), vec4<u32>(u_input.c, 30333u, 0u, 0u) | vec4<u32>(u_input.d.x, global4[_wgslsmith_index_u32(4294967295u, 18u)], 15307u, global4[_wgslsmith_index_u32(4294967295u, 18u)]))) % 32u), arg_0.d);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = !select(select(select(select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), vec4<bool>(arg_0.c.x, true, true, true), vec4<bool>(true, arg_0.c.x, true, arg_0.c.x)), !vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), true), select(!vec4<bool>(true, arg_0.c.x, arg_0.c.x, true), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), true), vec4<bool>(arg_0.c.x, !arg_0.c.x, !arg_0.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 4u)] == arg_0.a.x)), select(select(vec4<bool>(true, true, false, true), !vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), all(vec2<bool>(arg_0.c.x, arg_0.c.x))), vec4<bool>(false, arg_0.c.x, arg_0.c.x, arg_0.c.x || false), arg_0.c.x), all(select(select(arg_0.c, arg_0.c, vec3<bool>(true, false, false)), !arg_0.c, arg_0.c)));
    let var_1 = func_2(global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.a.xzw, u_input.b.xwy), arg_0.a.zxz)), 2u)]);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-526f - _wgslsmith_f_op_f32(step(-1510f, 1336f))), 994f)) + _wgslsmith_f_op_f32(-118f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1503f - 1425f))) + 1810f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1011f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(968f, _wgslsmith_f_op_f32(f32(-1f) * -737f))))), 382f);
    var var_3 = -abs(~reverseBits(_wgslsmith_div_vec2_i32(u_input.a, u_input.a)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(821f))))));
    return 20218u >> (~4294967295u % 32u);
}

fn func_1() -> bool {
    let var_0 = vec2<u32>(firstLeadingBit(1u) << (abs(func_3(func_2(global1[_wgslsmith_index_u32(1u, 2u)]))) % 32u), _wgslsmith_mult_u32(~1u, select(u_input.c, 1u, !all(vec4<bool>(false, true, true, false)))));
    global3 = array<u32, 4>();
    global4 = array<u32, 18>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f - 1000f) + _wgslsmith_f_op_f32(-1318f - 631f)), _wgslsmith_f_op_f32(min(-688f, _wgslsmith_f_op_f32(trunc(-1340f)))), -427f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1857f, 150f, -650f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1394f, -1076f, -369f))) + vec3<f32>(1096f, -1025f, 1167f)))), vec2<bool>(true, true), _wgslsmith_add_i32(-_wgslsmith_mod_i32(u_input.a.x, abs(u_input.a.x)), u_input.a.x), select(vec3<bool>(true, 16144i < _wgslsmith_mod_i32(u_input.a.x, global0.x), true), func_2(global1[_wgslsmith_index_u32(u_input.d.x, 2u)]).c, true));
    let var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1591f))))), 1793f));
    var_0 = 894f;
    global4 = array<u32, 18>();
    global3 = array<u32, 4>();
    var var_1 = ~48443u;
    global4 = array<u32, 18>();
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~(~u_input.b.zxy), _wgslsmith_mod_vec3_u32(~vec3<u32>(7814u, 7421u, u_input.b.x), vec3<u32>(29907u, global3[_wgslsmith_index_u32(u_input.c, 4u)], 26062u))) >> (74663u % 32u), min(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(1u, 4u)], 4294967295u), firstLeadingBit(vec3<u32>(0u, u_input.c, global3[_wgslsmith_index_u32(0u, 4u)])))), ~global3[_wgslsmith_index_u32(~(~u_input.b.x), 4u)]);
    var var_3 = Struct_2(~u_input.b, 2147483647i, vec3<bool>(func_1(), true, true || all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(-300f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 1430f), -705f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1724f, 376f)))), vec3<f32>(-892f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-971f, 1000f)), -1994f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 810f))))), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(28416i, global0.x)), vec2<i32>(21947i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 17127i, -1i), vec3<i32>(global0.x, 0i, 0i)))), -6215i, -vec4<i32>(select(1i, _wgslsmith_add_i32(-57242i, -1i), var_3.c.x), u_input.a.x, (-44593i << (var_3.a.x % 32u)) | countOneBits(u_input.a.x), u_input.a.x), ~vec2<i32>(global0.x, 41672i));
}

