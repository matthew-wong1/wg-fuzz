struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: Struct_4;

var<private> global2: array<f32, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_2.c.x)))))));
    let var_1 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min((0u >> (global1.a % 32u)) >> (_wgslsmith_sub_u32(~arg_2.a.x, 47227u & u_input.b) % 32u), abs(firstLeadingBit(~global1.a))), 23u)]);
    global0 = array<Struct_1, 12>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1, -675f)), _wgslsmith_f_op_f32(f32(-1f) * -946f))))));
    let var_2 = firstLeadingBit(vec4<i32>(~(-19986i), -60192i, -17533i, -2147483647i));
    return arg_0.a;
}

fn func_2(arg_0: vec2<f32>) -> vec4<f32> {
    let var_0 = 1f;
    global2 = array<f32, 23>();
    global0 = array<Struct_1, 12>();
    var var_1 = true;
    var var_2 = min(~vec4<u32>(abs(45793u | global1.a), firstTrailingBit(~u_input.b), _wgslsmith_add_u32(~38591u, ~4294967295u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(112850u, global1.a)))), abs(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, u_input.b, 10254u, 4294967295u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 987u, global1.a, global1.a), vec4<u32>(u_input.b, u_input.b, 68765u, 1u), vec4<u32>(1u, 4294967295u, 30211u, 8024u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, 1u, global1.a, u_input.b) >> (vec4<u32>(global1.a, 0u, u_input.b, 0u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 9225u, 37701u, global1.a) << (vec4<u32>(u_input.b, 45483u, 10281u, global1.a) % vec4<u32>(32u))))));
    return vec4<f32>(global2[_wgslsmith_index_u32(~(~func_3(Struct_4(var_2.x), u_input.a, Struct_5(vec3<u32>(28429u, 0u, u_input.b), true, arg_0, vec2<i32>(-26119i, 1i)), u_input.c.x)) | 0u, 23u)], _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.b, 23u)])), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1201f));
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    global2 = array<f32, 23>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(global1.a, 23u)], 165f, global2[_wgslsmith_index_u32(38144u, 23u)])))) * _wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_f_op_f32(f32(-1f) * -784f))))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(151f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(431f))))), all(vec4<bool>(true, true, true, true)))), Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-8809i, arg_0.x, u_input.d), abs(vec3<i32>(u_input.e.x, 7553i, -16544i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global1.a, 23u)], global2[_wgslsmith_index_u32(u_input.b, 23u)], -485f, var_1.x) * var_1), vec4<f32>(global2[_wgslsmith_index_u32(1u, 23u)], 1505f, global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(u_input.b, 23u)]), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), _wgslsmith_sub_u32(1u, global1.a) >> (max(38318u, global1.a) % 32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, global1.a)), reverseBits(vec4<u32>(u_input.b, global1.a, 1u, global1.a))), ~vec4<u32>(84371u, 4294967295u, 8015u, u_input.b) & ~vec4<u32>(u_input.b, 89942u, global1.a, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, global1.a), _wgslsmith_div_vec4_u32(vec4<u32>(global1.a, global1.a, u_input.b, global1.a), vec4<u32>(global1.a, 55577u, global1.a, u_input.b)))), vec4<bool>(true, true, true, true)));
    var_2 = Struct_3(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f) * _wgslsmith_f_op_f32(f32(-1f) * -1638f))), Struct_2(var_2.b.a, firstLeadingBit(~var_2.b.b) >> (vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), var_2.b.b.yww), global1.a, ~var_2.b.b.x) % vec4<u32>(32u)), select(var_2.b.c, select(!var_2.b.a.c, var_2.b.a.c, var_2.b.c.x), !(!var_2.b.c))));
    return var_2.b.a.b;
}

fn func_4(arg_0: vec4<f32>) -> Struct_3 {
    global2 = array<f32, 23>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, u_input.a.x, -1i, u_input.c.x) & vec4<i32>(-1i, u_input.d, u_input.c.x, 0i)), min(vec4<i32>(u_input.c.x, -1i, -6270i, -1i), vec4<i32>(u_input.e.x, u_input.d, -2147483647i, 0i)) & -vec4<i32>(u_input.a.x, -38387i, u_input.e.x, u_input.e.x)), arg_0, vec4<bool>(abs(86498u) >= (u_input.b | u_input.b), any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(false, false, false) && all(vec2<bool>(true, false)), select(true, true, true)), 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, ~1u, _wgslsmith_add_u32(u_input.b, 21733u), firstTrailingBit(u_input.b)) ^ vec4<u32>(_wgslsmith_add_u32(35480u, u_input.b), u_input.b, select(2723u, 1u, true), 22372u), ~vec4<u32>(36832u >> (u_input.b % 32u), global1.a, 4294967295u, global1.a)), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, false, true), true), vec4<bool>(all(vec2<bool>(true, true)), !(-2147483647i <= u_input.a.x), true, true)));
    var var_1 = Struct_5(vec3<u32>(~_wgslsmith_dot_vec2_u32(var_0.b.xw, var_0.b.yx), 55312u << (~global1.a % 32u), 1u) ^ vec3<u32>(94100u, global1.a >> (_wgslsmith_add_u32(var_0.b.x, u_input.b) % 32u), abs(u_input.b)), var_0.c.x, _wgslsmith_f_op_vec2_f32(-arg_0.xw), abs(-vec2<i32>(-2147483647i, var_0.a.a) << (~vec2<u32>(38619u, 10655u) % vec2<u32>(32u))) & -vec2<i32>(~(-52347i), i32(-1i) * -2455i));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_div_i32(_wgslsmith_div_i32(abs(u_input.a.x), _wgslsmith_sub_i32(var_1.d.x, i32(-1i) * -u_input.a.x)), 4348i);
    return Struct_3(_wgslsmith_f_op_f32(1202f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(-var_0.a.b.x))))), var_0);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = arg_1;
    let var_1 = select(max(min(vec3<i32>(arg_1.b.a.a ^ 0i, var_0.b.a.a << (4294967295u % 32u), 6442i), u_input.e), abs(-u_input.a)), ~vec3<i32>(_wgslsmith_div_i32(arg_1.b.a.a << (arg_0.a % 32u), ~u_input.d), ~20850i, -48886i), arg_1.b.a.c.x);
    let var_2 = arg_1.b.a.a;
    let var_3 = 1u;
    let var_4 = Struct_5(~arg_1.b.b.wxx, ((~35117u != var_0.b.a.d) || var_0.b.a.c.x) && all(!(!arg_1.b.a.c)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(var_0.b.a.a, -1i, 1i))).x, global2[_wgslsmith_index_u32(~global1.a, 23u)]), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.a.b.x, arg_2.x))), -846f))), countOneBits(firstLeadingBit(var_1.xx >> (var_0.b.b.wy % vec2<u32>(32u)))));
    return StorageBuffer(~(~vec4<u32>(4294967295u, 0u, u_input.b, 25488u) >> (_wgslsmith_add_vec4_u32(~var_0.b.b, arg_1.b.b) % vec4<u32>(32u))), -106012i >> (var_0.b.b.x % 32u), var_4.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a)), _wgslsmith_f_op_f32(trunc(-1136f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(103f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.a.b.x, 120f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec4_f32(func_1(u_input.a)).ww, vec2<f32>(1319f, var_0.b.a.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-850f, 1649f)), arg_1.b.c.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 23>();
    let x = u_input.a;
    s_output = func_5(Struct_4(countOneBits(~global1.a)), func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1138f, global2[_wgslsmith_index_u32(u_input.b, 23u)], 671f, global2[_wgslsmith_index_u32(global1.a, 23u)]) + _wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(-1i, -1i, u_input.a.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(global1.a, 23u)])), _wgslsmith_f_op_f32(-211f + global2[_wgslsmith_index_u32(30070u, 23u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(30060u, 23u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 23u)], 1000f, global2[_wgslsmith_index_u32(0u, 23u)], 716f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], 929f, -114f) - vec4<f32>(-1366f, -554f, 1153f, 1909f))), true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 23u)], -478f, global2[_wgslsmith_index_u32(24105u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]) + vec4<f32>(global2[_wgslsmith_index_u32(39324u, 23u)], global2[_wgslsmith_index_u32(21915u, 23u)], global2[_wgslsmith_index_u32(global1.a, 23u)], global2[_wgslsmith_index_u32(global1.a, 23u)]))))));
}

