struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
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

var<private> global0: array<Struct_5, 27>;

var<private> global1: Struct_1 = Struct_1(0u, vec3<bool>(true, true, true), vec3<f32>(-130f, -1673f, -1276f));

var<private> global2: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(149f), Struct_5(175f), Struct_5(-1000f), Struct_5(2341f), Struct_5(132f), Struct_5(-1019f), Struct_5(310f), Struct_5(-1063f), Struct_5(1101f), Struct_5(1000f), Struct_5(522f), Struct_5(-1309f), Struct_5(806f), Struct_5(418f), Struct_5(-273f), Struct_5(-804f), Struct_5(959f), Struct_5(-420f), Struct_5(-713f), Struct_5(309f), Struct_5(-1081f), Struct_5(-1042f), Struct_5(1257f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(1988u << (~4294967295u % 32u), 23u)];
    var_0 = Struct_5(664f);
    var var_1 = u_input.b.x;
    global0 = array<Struct_5, 27>();
    var var_2 = _wgslsmith_clamp_i32(1i, -22661i ^ (i32(-1i) * -u_input.e.x), _wgslsmith_mod_i32(-(~u_input.d), -38834i) | u_input.e.x);
    return _wgslsmith_f_op_f32(var_0.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(493f)), _wgslsmith_f_op_f32(-global1.c.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1, arg_1)), _wgslsmith_f_op_f32(-1094f + -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-421f, global1.c.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + global1.c.x) - _wgslsmith_f_op_f32(1520f * -845f)))), -247f, -1000f) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.c.x), -548f, _wgslsmith_f_op_f32(-2129f * _wgslsmith_div_f32(arg_1, global1.c.x)), arg_1), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x)), vec4<f32>(global1.c.x, 527f, _wgslsmith_f_op_f32(global1.c.x + global1.c.x), global1.c.x), !vec4<bool>(global1.b.x, true, global1.b.x, true)))));
    global2 = array<Struct_5, 23>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), -994f)))))), global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.c.x, -438f, select(global1.b.x, true, false))), var_0.x) - -427f), var_0.x);
    var var_1 = global1.c.x;
    var var_2 = all(vec4<bool>(true, !global1.b.x, !(-394f <= _wgslsmith_f_op_f32(-arg_1)), !any(vec4<bool>(false, false, global1.b.x, false))));
    return Struct_1(~abs(~u_input.a.x), select(vec3<bool>(false, 0i >= firstTrailingBit(u_input.e.x), select(arg_0.x, global1.b.x, global1.a > u_input.a.x)), vec3<bool>(u_input.a.x >= _wgslsmith_mult_u32(global1.a, 88936u), all(!vec2<bool>(arg_0.x, true)), all(vec3<bool>(true, true, false))), global1.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.zyy), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c.x))), 349f, _wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(f32(-1f) * -654f))), global1.b)));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    global0 = array<Struct_5, 27>();
    var var_0 = _wgslsmith_mod_i32(i32(-1i) * -u_input.e.x, _wgslsmith_mod_i32(~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.d, 1081i), u_input.e))) ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 2147483647i, -13247i), u_input.e) & _wgslsmith_div_i32(-u_input.e.x, _wgslsmith_mult_i32(u_input.d, 6832i)), ~(-(~u_input.e.x)));
    global1 = arg_0;
    global0 = array<Struct_5, 27>();
    var var_1 = 4294967295u;
    return Struct_3(!(!arg_1), Struct_1(0u, arg_0.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c.x, arg_0.c.x))), -1021f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - 1000f) * _wgslsmith_f_op_f32(-arg_0.c.x)))), arg_0);
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_5) -> Struct_1 {
    var var_0 = Struct_5(-854f);
    global0 = array<Struct_5, 27>();
    return arg_0.a.b;
}

fn func_1() -> Struct_4 {
    var var_0 = false;
    global2 = array<Struct_5, 23>();
    var var_1 = ~(~12891u);
    global1 = func_5(Struct_4(func_4(func_2(vec2<bool>(true, false), _wgslsmith_f_op_f32(f32(-1f) * -180f)), false), all(!vec2<bool>(true, global1.b.x)), global1.c), u_input.e.x, _wgslsmith_clamp_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, u_input.a.x, 13851u, 1u), vec4<u32>(39064u, 4294967295u, global1.a, 0u)), abs(vec4<u32>(global1.a, u_input.a.x, global1.a, 4294967295u)) << ((vec4<u32>(1u, 0u, 0u, global1.a) << (vec4<u32>(35109u, global1.a, 43469u, global1.a) % vec4<u32>(32u))) % vec4<u32>(32u)), select(!vec4<bool>(false, global1.b.x, true, true), select(vec4<bool>(false, global1.b.x, true, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x), vec4<bool>(true, true, global1.b.x, global1.b.x)), true)), abs(_wgslsmith_add_vec4_u32(select(vec4<u32>(1u, u_input.a.x, u_input.c.x, 0u), vec4<u32>(0u, global1.a, global1.a, u_input.a.x), vec4<bool>(false, global1.b.x, global1.b.x, global1.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(global1.a, global1.a, 82324u, u_input.c.x)))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, ~global1.a, global1.a, min(1u, 4294967295u)), ~select(vec4<u32>(21436u, global1.a, global1.a, 4294967295u), vec4<u32>(global1.a, 4294967295u, global1.a, 26766u), true))), Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -2118f)));
    var var_2 = min(~(-5120i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, _wgslsmith_add_i32(-6705i, 31227i), 2147483647i), firstTrailingBit(vec3<i32>(~(-2147483647i), _wgslsmith_div_i32(2147483647i, -1i), -10830i))));
    return Struct_4(Struct_3(false, Struct_1(abs(30811u), vec3<bool>(global1.b.x, false, global1.b.x), vec3<f32>(-718f, global1.c.x, func_2(vec2<bool>(true, false), 1470f).c.x)), Struct_1(1399u, !select(global1.b, vec3<bool>(true, true, global1.b.x), true), _wgslsmith_f_op_vec3_f32(-global1.c))), false, _wgslsmith_f_op_vec3_f32(global1.c * global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 27>();
    let var_0 = u_input.e.zw;
    var var_1 = firstTrailingBit(global1.a | reverseBits(~firstTrailingBit(global1.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1108f)))));
    let var_3 = var_0.x;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(14315u);
}

