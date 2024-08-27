struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(1000f, 858f, 3554f, -1000f, -1852f, 923f, -713f, 968f, 178f, 556f, -208f, -1473f, 820f, 198f, -816f, 149f, -606f, -310f);

var<private> global1: Struct_3;

var<private> global2: array<vec4<f32>, 29>;

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<u32> {
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    global1 = Struct_3(global1.a, 0u, true, global1.d, u_input.a);
    global3 = array<Struct_2, 26>();
    var var_0 = Struct_3(global1.a, firstTrailingBit(_wgslsmith_div_u32(~global1.b, 1u)), true, select(vec2<i32>(~u_input.d, _wgslsmith_add_i32(-28376i, _wgslsmith_mod_i32(1i, -39079i))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(21206i, 10186i), vec2<i32>(global1.d.x, arg_2.a.a)) ^ _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.d, -18592i), ~global1.a.c.xy), true), _wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_1.x << (u_input.a.x % 32u), 1u)), u_input.a));
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(118026u, 58899u)), _wgslsmith_div_vec2_u32(min(arg_1, vec2<u32>(4294967295u, arg_0.x)), vec2<u32>(1u, 44674u))), firstTrailingBit(~u_input.a)), vec2<u32>(1u, ~_wgslsmith_add_u32(select(var_0.a.d.x, arg_0.x, true), reverseBits(22106u))), select(~arg_0.xx & vec2<u32>(abs(global1.b), _wgslsmith_add_u32(global1.a.b.x, arg_1.x)), ~arg_0.yz, vec2<bool>(global1.c | !global1.c, false)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = global1.c;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~(-u_input.b | ~u_input.b)), -vec2<i32>(global1.d.x, ~abs(-2147483647i)));
    var var_2 = Struct_1(abs(-(~(-global1.a.c.x))), ~global1.a.b, _wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.c.x, select(36215i, _wgslsmith_mult_i32(1i, -57209i), true || global1.c), -2147483647i), vec3<i32>(select(~1i, reverseBits(-9122i), !global1.c), reverseBits(u_input.b) & firstTrailingBit(-1173i), 1i)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c.x, global1.b) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), global1.e), global1.e));
    var var_3 = Struct_4(Struct_2(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(abs(global1.b), 18u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 18u)] - 238f), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 18u)], 847f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.e.x, 18u)] + 1645f)))));
    var_2 = Struct_1(-var_2.c.x, _wgslsmith_sub_vec2_u32(select(select(vec2<u32>(932u, 15053u), vec2<u32>(18353u, 115921u), arg_3), vec2<u32>(4668u, 0u), arg_1), var_3.a.a.d), ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_3.a.a.a, global1.d.x), _wgslsmith_mult_vec3_i32(max(vec3<i32>(2147483647i, var_2.a, 27210i), vec3<i32>(1i, var_3.a.a.c.x, u_input.b)), firstTrailingBit(var_2.c))), vec2<u32>(~var_3.a.a.b.x, abs(_wgslsmith_clamp_u32(firstTrailingBit(1u), 93383u, var_3.a.a.d.x))));
    return Struct_1(2147483647i, ~(var_3.a.a.b ^ (func_3(u_input.c, var_3.a.a.d, Struct_2(global1.a, global2[_wgslsmith_index_u32(0u, 29u)]), vec4<f32>(-308f, -167f, global0[_wgslsmith_index_u32(var_3.a.a.b.x, 18u)], -556f)) | ~vec2<u32>(arg_0, 91102u))), var_2.c, u_input.c.xy);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(42336u & arg_3.b.x) | 8703u, arg_2.a.d.x, _wgslsmith_add_u32((u_input.a.x >> (10444u % 32u)) & 105629u, abs(u_input.a.x)), arg_3.d.x), vec4<u32>(0u, 24337u, arg_2.a.b.x, ~abs(arg_2.a.b.x)));
    let var_1 = Struct_2(func_2(~reverseBits(~var_0), vec2<bool>(global1.c, false), false, vec2<bool>((arg_2.a.d.x == 28636u) && any(vec3<bool>(false, false, true)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], arg_1.x, -387f, arg_2.b.x))) - _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.zyw, vec3<u32>(13787u, var_0, 1u)), 29u)])) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(-368f, arg_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 18u)], -1206f)))));
    global2 = array<vec4<f32>, 29>();
    let var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_mult_i32(-var_1.a.a, firstTrailingBit(arg_0)), ~global1.e, var_1.a.c, ~u_input.c.xw), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - 207f))), 1323f, 1006f, arg_2.b.x)));
    let var_3 = var_2;
    return ~arg_2.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 29>();
    global3 = array<Struct_2, 26>();
    let var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 18u)] - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(global1.b), 18u)] - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(func_1(-1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(1951f, global0[_wgslsmith_index_u32(33093u, 18u)]) * vec2<f32>(1207f, 177f)), global3[_wgslsmith_index_u32(116524u << (0u % 32u), 26u)], Struct_1(10308i, u_input.c.xx, global1.a.c, global1.e)), 18u)]))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2386f, global0[_wgslsmith_index_u32(global1.e.x, 18u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global0[_wgslsmith_index_u32(global1.e.x, 18u)]) * vec2<f32>(-198f, 379f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(44471u, 18u)], var_0), vec2<f32>(-1196f, global0[_wgslsmith_index_u32(64752u, 18u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], -894f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f + var_0)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.e.x >> (1u % 32u), func_2(34566u, vec2<bool>(global1.c, global1.c), global1.c, vec2<bool>(false, global1.c)).b.x), 18u)])), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(70833u, 18u)] + global0[_wgslsmith_index_u32(10694u, 18u)]), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global1.a.b.x, 18u)]))) * vec2<f32>(_wgslsmith_f_op_f32(floor(var_0)), global0[_wgslsmith_index_u32(global1.b >> (u_input.c.x % 32u), 18u)])))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global1.e.x, 18u)])), global0[_wgslsmith_index_u32(~9164u, 18u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f) * 252f), 225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 18u)]))));
    global1 = Struct_3(Struct_1(global1.d.x, _wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.c.x), select(u_input.a, vec2<u32>(global1.e.x, global1.a.d.x), true) | global1.e), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.d.x, 2147483647i, ~(-11457i)), func_2(~u_input.a.x, !vec2<bool>(global1.c, false), false, !vec2<bool>(global1.c, global1.c)).c), _wgslsmith_mod_vec2_u32(abs(u_input.a), vec2<u32>(global1.e.x, u_input.c.x)) & u_input.c.yx), u_input.c.x, global1.c, vec2<i32>(-_wgslsmith_mod_i32(global1.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.x, u_input.b, 33416i), global1.a.c)), global1.a.c.x), u_input.a);
    let var_3 = func_2(global1.e.x, select(vec2<bool>(false, !any(vec2<bool>(false, global1.c))), vec2<bool>(!any(vec2<bool>(global1.c, global1.c)), !global1.c), false), -827f <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~select(u_input.a.x, u_input.a.x, false), 18u)]), vec2<bool>(true, true));
    var var_4 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2269f, var_0)), _wgslsmith_f_op_f32(round(-1690f))) - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_1.x)) + 1343f) + -118f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -60091i, u_input.d & 1i, -2147483647i, abs(u_input.d) >> (0u % 32u)) ^ vec4<i32>(_wgslsmith_add_i32(global1.a.c.x, -5609i), func_2(18935u, !vec2<bool>(global1.c, false), false, select(vec2<bool>(global1.c, true), vec2<bool>(true, true), false)).c.x, _wgslsmith_sub_i32(~global1.d.x, 1i), 2147483647i), var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1923f), _wgslsmith_sub_i32(~firstTrailingBit(firstLeadingBit(var_3.a)), 2147483647i));
}

