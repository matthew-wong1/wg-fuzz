struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(42588u, 13937u, 4294967295u), 117f, Struct_2(Struct_1(vec2<f32>(1000f, -651f), 59909u)), 0i);

var<private> global1: array<bool, 28> = array<bool, 28>(true, true, true, true, false, false, true, false, true, false, true, true, false, true, false, false, false, true, true, true, false, true, false, false, true, false, true, true);

var<private> global2: i32;

var<private> global3: vec3<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = global3.x;
    let var_1 = global0.c.a;
    var var_2 = arg_0.a.a;
    let var_3 = global0.c.a;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a.a)), vec2<f32>(1241f, -154f), select(vec2<bool>(false | global1[_wgslsmith_index_u32(arg_0.a.b, 28u)], false), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 28u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(global0.c.a.b, 28u)])), any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.a.b, 28u)], global1[_wgslsmith_index_u32(43987u, 28u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_3.b, 28u)], global1[_wgslsmith_index_u32(34697u, 28u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(global0.c.a.b, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)])))))));
    return 268f;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<f32>) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, ~global0.a.x, ~global0.a.x), global0.a), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(384f)) + arg_2.x)), arg_2.x)), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(613f, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -511f)), _wgslsmith_mod_u32(reverseBits(9679u), u_input.a ^ u_input.b))), select(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d, arg_0), vec2<i32>(global0.d, global0.d))), global3.x, global1[_wgslsmith_index_u32(u_input.a >> (~(~u_input.a) % 32u), 28u)]));
    global2 = arg_0;
    var var_0 = vec2<u32>(0u, 101852u);
    let var_1 = ~(~global0.a);
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(0i, arg_0), -25405i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.d, 13455i, global0.d, global0.d), vec4<i32>(-387i, 3562i, -2147483647i, -108099i)), -vec4<i32>(global0.d, global0.d, global3.x, 44982i)), abs(abs(-1i)))), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -56231i, 43409i), -vec3<i32>(global3.x, -65902i, arg_0)), global3.x, global0.d)));
    return Struct_3(~(~(~_wgslsmith_clamp_vec3_u32(global0.a, vec3<u32>(var_1.x, 6928u, global0.a.x), vec3<u32>(1u, u_input.a, var_0.x)))), 1000f, Struct_2(Struct_1(global0.c.a.a, max(u_input.b, 82993u >> (var_1.x % 32u)))), _wgslsmith_mult_i32(global3.x, 32458i));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    global0 = func_3(96123i, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + global0.b)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-752f, -325f, true)))), _wgslsmith_f_op_f32(global0.c.a.a.x - 824f))), _wgslsmith_f_op_f32(step(-1618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1323f - 231f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(130f)) + _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec2<f32>(-262f, -160f), 1u))))) * -602f), arg_1));
    global0 = Struct_3(max(vec3<u32>(~(arg_2.x ^ 15431u), u_input.b | reverseBits(arg_2.x), 12524u), vec3<u32>(1u, 4294967295u, ~(~u_input.b))), _wgslsmith_f_op_f32(-global0.b), func_3(global0.d, _wgslsmith_div_f32(global0.c.a.a.x, _wgslsmith_f_op_f32(-global0.c.a.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 327f, -1658f)))).c, min(global3.x, ~(~(~(-13525i)))));
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(197f, global0.b), _wgslsmith_f_op_f32(min(func_3(0i, 1803f, vec4<f32>(global0.b, -535f, global0.b, global0.b)).b, global0.b))), firstTrailingBit(_wgslsmith_clamp_u32(arg_2.x, global0.c.a.b << (1u % 32u), arg_2.x))));
    let var_1 = all(vec2<bool>(any(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], true, false), vec3<bool>(true, global1[_wgslsmith_index_u32(66218u, 28u)], global1[_wgslsmith_index_u32(global0.a.x, 28u)]), vec3<bool>(global1[_wgslsmith_index_u32(25141u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], false))) | global1[_wgslsmith_index_u32(1u, 28u)], true));
    var var_2 = Struct_2(var_0.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f + -775f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(global0.c.a.a)), 103963u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))), global0.c.a.a.x) - var_0.a.x);
    let var_2 = Struct_3(vec3<u32>(var_0.b, abs(global0.c.a.b), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -266f))) - _wgslsmith_f_op_f32(func_1(~min(vec3<i32>(global0.d, 2147483647i, 21395i), vec3<i32>(44076i, 2147483647i, -12122i)), -1248f, global0.a))), Struct_2(global0.c.a), global0.d);
    var_0 = var_2.c.a;
    global0 = Struct_3(var_2.a, _wgslsmith_f_op_f32(-var_0.a.x), Struct_2(func_3(-33435i, 679f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.a.a.x, var_0.a.x, -544f, -917f), vec4<f32>(-329f, -792f, global0.c.a.a.x, -897f)))).c.a), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(7669i, -4261i), firstTrailingBit(_wgslsmith_clamp_i32(1i, global0.d, 27366i)))));
    var var_3 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_4 = select(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(var_2.d, 2147483647i, global3.x, -2147483647i), vec4<i32>(6562i, global0.d, 11931i, global3.x) ^ vec4<i32>(2147483647i, 0i, global3.x, var_2.d)), -vec4<i32>(global0.d, global0.d, 29042i, -2147483647i)), 53099i), 7656i, all(select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], true), vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(false, true)), !vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec2<bool>(false, true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 28u)]), true)), vec2<bool>(any(vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 28u)], false)), true), true)));
    global2 = _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(global3.x, -29275i, global0.d), firstTrailingBit(func_3(global0.d, 883f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, var_0.a.x, -1525f, 1704f))))).d));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(1u, 4294967295u) >> ((var_0.b & var_0.b) % 32u), _wgslsmith_mod_u32(4294967295u, max(global0.c.a.b, 19173u))) | abs(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.c.a.b, 7584u), vec2<u32>(31352u, u_input.b)), vec2<u32>(u_input.b, 1u) | vec2<u32>(4294967295u, u_input.b))), var_0.a);
}

