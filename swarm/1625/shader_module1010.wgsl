struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
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

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-1353f, vec4<bool>(true, true, false, false)), Struct_1(-119f, vec4<bool>(true, true, true, true)), Struct_1(854f, vec4<bool>(false, false, true, false)), Struct_1(-2254f, vec4<bool>(false, false, true, false)), Struct_1(-317f, vec4<bool>(true, false, true, false)), Struct_1(528f, vec4<bool>(false, false, false, true)));

var<private> global1: array<u32, 9> = array<u32, 9>(1u, 0u, 4294967295u, 4294967295u, 4294967295u, 1u, 29831u, 4294967295u, 0u);

var<private> global2: array<vec3<bool>, 26>;

var<private> global3: vec4<f32> = vec4<f32>(140f, 262f, -522f, -1000f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>) -> f32 {
    var var_0 = arg_0.x;
    let var_1 = !select(vec2<bool>(any(vec2<bool>(true, false)) && any(vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(true, false, true)) && all(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, false))));
    var var_2 = !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, select(~arg_0.xx, arg_0.wx, !var_1) ^ max(~vec2<u32>(1u, 0u), u_input.b.zx & vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 9u)]))), 26u)];
    global2 = array<vec3<bool>, 26>();
    var var_3 = Struct_1(global3.x, !vec4<bool>(all(var_1), !var_1.x, false, any(!global2[_wgslsmith_index_u32(3593u, 26u)])));
    return arg_1.x;
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, arg_0, arg_0, _wgslsmith_f_op_f32(round(global3.x))));
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(arg_1.c.a.x, arg_1.c.c.x)), _wgslsmith_clamp_u32(4294967295u, 1u, 16094u)), min(arg_1.c.a.xzy, arg_1.c.a.zyz)) > ~(arg_1.d ^ ~arg_1.a);
    var var_2 = 1u;
    let var_3 = Struct_2(_wgslsmith_div_vec2_u32(arg_1.c.a.xx, ~vec2<u32>(arg_1.c.c.x, 17883u)), 34868u, !(!select(!vec4<bool>(false, false, arg_1.e, false), !vec4<bool>(arg_1.e, false, arg_1.e, arg_1.e), !vec4<bool>(true, arg_1.e, arg_1.e, false))), Struct_1(global3.x, vec4<bool>(!(2234f != arg_0), !arg_1.e || select(true, false, arg_1.e), !any(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a, 9u)], 26u)]), -59662i == _wgslsmith_mod_i32(arg_1.b, arg_1.b))));
    return global2[_wgslsmith_index_u32(4294967295u, 26u)];
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global3.wy + vec2<f32>(1546f, -676f));
    var var_1 = _wgslsmith_mult_vec2_i32(min(reverseBits(vec2<i32>(40358i, u_input.e)), vec2<i32>(_wgslsmith_add_i32(-u_input.d, u_input.d), 25783i)), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-1i) * -vec2<i32>(1i, -37138i)), -(-vec2<i32>(-77555i, u_input.e) >> (vec2<u32>(u_input.b.x, 20908u) % vec2<u32>(32u)))));
    global1 = array<u32, 9>();
    var var_2 = Struct_4(~(u_input.b.x | countOneBits(1u)), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, var_1.x), vec2<i32>(-1982i, u_input.e)) | (2147483647i & u_input.d)) >> ((14020u >> (_wgslsmith_sub_u32(~26593u, arg_0) % 32u)) % 32u), Struct_3(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 9u)] << (arg_0 % 32u), u_input.b.x, 4294967295u >> (u_input.c % 32u), arg_0), var_0, vec2<u32>(0u, 1u)), 1u, any(func_4(_wgslsmith_f_op_f32(func_3(vec4<u32>(global1[_wgslsmith_index_u32(57849u, 9u)], u_input.a, 1u, 4294967295u) | vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(arg_0, 9u)], 9983u, 10564u), var_0)), Struct_4(~0u, reverseBits(0i), Struct_3(vec4<u32>(1688u, 0u, 4294967295u, 50361u), global3.wz, u_input.b.yy), 64879u, true))));
    global1 = array<u32, 9>();
    return -966f;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(reverseBits(1u & global1[_wgslsmith_index_u32(12063u, 9u)]))), arg_0.b.x, -966f, _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1391f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, 221f) - arg_0.b.x), -2270f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -358f), _wgslsmith_f_op_f32(-global3.x)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1000f * 1471f), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -1550f), -428f)))));
    let var_1 = Struct_4(52538u, ~(~(~(~1404i))), Struct_3(~_wgslsmith_sub_vec4_u32(~vec4<u32>(41346u, global1[_wgslsmith_index_u32(31858u, 9u)], arg_0.a.x, u_input.c), select(vec4<u32>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 1945u, arg_2), vec4<u32>(29561u, arg_0.a.x, 4617u, global1[_wgslsmith_index_u32(arg_2, 9u)]), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zy)), u_input.b.yx << (~(vec2<u32>(arg_0.c.x, 0u) ^ arg_0.c) % vec2<u32>(32u))), u_input.a, -u_input.e > ~reverseBits(_wgslsmith_mult_i32(u_input.e, 0i)));
    let var_2 = 1i;
    var var_3 = global3.wxx;
    global3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(var_1.c.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(722f, -130f)))), -862f, arg_1);
    return _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(var_1.b, 36352i, 2147483647i)), ~vec3<i32>(u_input.d, var_2, var_1.b)), -_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b, 25593i, u_input.e), vec3<i32>(var_2, -1i, 2147483647i))), -1i);
}

fn func_5(arg_0: bool, arg_1: vec2<i32>) -> StorageBuffer {
    global0 = array<Struct_1, 6>();
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(-1399f - -438f))) + -1668f), global3.x, global3.x, -1000f);
    let var_0 = countOneBits(4294967295u);
    global0 = array<Struct_1, 6>();
    var var_1 = firstTrailingBit(min(-(~(~vec3<i32>(50291i, 42373i, 0i))), vec3<i32>(_wgslsmith_mod_i32(arg_1.x, firstLeadingBit(0i)), ~_wgslsmith_sub_i32(u_input.e, arg_1.x), u_input.d)));
    return StorageBuffer(var_0 ^ global1[_wgslsmith_index_u32(3399u, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 9>();
    var var_0 = u_input.b;
    var var_1 = global2[_wgslsmith_index_u32(~0u, 26u)];
    global0 = array<Struct_1, 6>();
    let var_2 = global3.xw;
    global2 = array<vec3<bool>, 26>();
    let x = u_input.a;
    s_output = func_5(true, vec2<i32>(_wgslsmith_clamp_i32(u_input.d, -2147483647i, ~func_1(Struct_3(vec4<u32>(26235u, 1u, 75546u, 25019u), global3.wx, u_input.b.yy), 330f, var_0.x)), -(-1i | ~u_input.d)));
}

