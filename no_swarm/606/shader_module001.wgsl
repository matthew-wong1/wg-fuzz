struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: i32;

var<private> global2: array<Struct_2, 3>;

var<private> global3: array<bool, 9>;

var<private> global4: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(39844u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4313u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_3(vec4<u32>(u_input.a, 81980u, max(0u, 0u & _wgslsmith_sub_u32(u_input.a, 1u)), ~(~reverseBits(u_input.a))));
    let var_1 = 4841i;
    global4 = array<vec2<u32>, 3>();
    global0 = var_0.a.x;
    global1 = var_1;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-561f, 899f)))), _wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f)))))));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(global3[_wgslsmith_index_u32(~48256u, 9u)], !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)]))))))));
    return Struct_3(var_0);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_2();
    global1 = -_wgslsmith_div_i32(9253i, _wgslsmith_clamp_i32(1i, i32(-1i) * -17240i, 2147483647i) | firstLeadingBit(countOneBits(0i)));
    global1 = 2147483647i;
    global3 = array<bool, 9>();
    var var_1 = _wgslsmith_f_op_f32(max(839f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1226f * -933f)))));
    return Struct_1(vec2<u32>(~(arg_0 << (1u % 32u)), 4294967295u), select(select(!vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.x, 9u)], global3[_wgslsmith_index_u32(28262u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], true), select(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(arg_0, 9u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 9u)], false, true), true), select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(12206u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)], true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(var_0.a.x, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], true), vec4<bool>(global3[_wgslsmith_index_u32(1u, 9u)], false, global3[_wgslsmith_index_u32(0u, 9u)], true))), vec4<bool>(any(!vec3<bool>(true, false, global3[_wgslsmith_index_u32(17518u, 9u)])), all(select(vec2<bool>(true, true), vec2<bool>(false, global3[_wgslsmith_index_u32(var_0.a.x, 9u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 9u)]))), global3[_wgslsmith_index_u32(var_0.a.x | ~28586u, 9u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 58725u, 0u, arg_0), var_0.a) >= _wgslsmith_div_u32(arg_0, arg_0)), !(!(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)], false, true)))), 42646u, -1323f, -21143i << (var_0.a.x % 32u));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_dot_vec3_u32(u_input.b.yyy, vec3<u32>(22165u, ~countOneBits(~u_input.b.x), 66581u));
    var var_0 = func_2();
    var var_1 = Struct_3(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, ~u_input.a, arg_3.a.x ^ 32740u, ~1u)), select((var_0.a | arg_2) & vec4<u32>(73777u, var_0.a.x, u_input.a, 1u), ~_wgslsmith_add_vec4_u32(arg_2, var_0.a), vec4<bool>(!arg_3.b.x, any(vec2<bool>(false, arg_3.b.x)), true, 16221i > arg_1))));
    var var_2 = !select(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 9u)], false, false)), !arg_3.b, select(vec4<bool>(arg_3.b.x, true, global3[_wgslsmith_index_u32(~var_1.a.x, 9u)], true), arg_3.b, true));
    let var_3 = Struct_2(firstTrailingBit(vec2<u32>(4294967295u, u_input.b.x)), arg_3, ~(~(4294967295u << (u_input.a % 32u))) & ~arg_2.x, _wgslsmith_mult_vec4_u32(vec4<u32>(51125u, _wgslsmith_dot_vec2_u32(var_1.a.yy, u_input.b.zy), _wgslsmith_mod_u32(var_1.a.x, u_input.b.x), _wgslsmith_mult_u32(arg_2.x, 50985u)) & vec4<u32>(~var_0.a.x, firstLeadingBit(var_1.a.x), 1u, max(11774u, var_0.a.x)), ~select(vec4<u32>(u_input.b.x, arg_3.a.x, 4294967295u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, 1u, u_input.b.x, 46467u), arg_2), -1i > arg_1)));
    return var_3.b.c | _wgslsmith_sub_u32(33606u, arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(243f + _wgslsmith_f_op_f32(f32(-1f) * -251f));
    global2 = array<Struct_2, 3>();
    global4 = array<vec2<u32>, 3>();
    global3 = array<bool, 9>();
    var var_1 = !(!select(select(!vec2<bool>(false, global3[_wgslsmith_index_u32(4621u, 9u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec2<bool>(true, true)), !select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 9u)], false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 9u)], false), false), select(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 9u)], true), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), global3[_wgslsmith_index_u32(~u_input.a, 9u)])));
    global1 = -1i >> (~reverseBits(u_input.b.x) % 32u);
    var var_2 = u_input.b.zw;
    let var_3 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(-8734i, 1i), 2147483647i) >> (~func_4(130f, _wgslsmith_dot_vec3_i32(vec3<i32>(-3582i, 1i, 18997i), vec3<i32>(-20832i, 29259i, 2147483647i)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 40640u, 1u, 4864u), vec4<u32>(var_2.x, var_2.x, u_input.b.x, 0u)), func_1(0u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(firstTrailingBit(vec3<i32>(var_3, var_3, 2147483647i)) << (vec3<u32>(u_input.a, 21829u, 1u) % vec3<u32>(32u)), firstTrailingBit(abs(vec3<i32>(-4312i, var_3, -1i))))));
}

