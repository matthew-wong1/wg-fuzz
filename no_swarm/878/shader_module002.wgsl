struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(52973u, 4294967295u), vec2<u32>(37972u, 1u), vec2<u32>(14766u, 0u), vec2<u32>(1u, 40486u), vec2<u32>(45178u, 0u), vec2<u32>(6864u, 1u), vec2<u32>(49316u, 1u), vec2<u32>(96728u, 24657u), vec2<u32>(75775u, 0u), vec2<u32>(23283u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 45502u), vec2<u32>(4294967295u, 45641u), vec2<u32>(26454u, 4294967295u), vec2<u32>(40425u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 45171u), vec2<u32>(1614u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 14852u), vec2<u32>(4294967295u, 29436u), vec2<u32>(82104u, 4294967295u), vec2<u32>(556u, 47234u));

var<private> global2: Struct_2 = Struct_2(vec2<i32>(0i, 26098i), 1u, Struct_1(vec3<bool>(false, false, false), false, 154f, -519f), -810f);

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<f32> {
    global2 = Struct_2(u_input.b.xz, reverseBits(abs(~(11328u | global2.b))), Struct_1(global2.c.a, !all(vec3<bool>(global4.b, global2.c.b, true)), global4.d, _wgslsmith_f_op_f32(f32(-1f) * -1308f)), _wgslsmith_f_op_f32(min(-573f, 693f)));
    var var_0 = u_input.c.x << (max(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, global2.b), global1[_wgslsmith_index_u32(u_input.c.x, 24u)]) << (1u % 32u), 1u) % 32u);
    global1 = array<vec2<u32>, 24>();
    let var_1 = Struct_2(global2.a, u_input.c.x, Struct_1(select(!(!global2.c.a), !global2.c.a, global4.a), !(max(u_input.a.x, 3110i) > _wgslsmith_add_i32(-1i, global2.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c.d, -661f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c) * global2.c.c))), global2.c.d), _wgslsmith_f_op_f32(-176f - 351f));
    var var_2 = var_1.c.c;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(642f, global2.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.d, 1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(1061f)), global2.d), vec2<f32>(-1398f, -1617f)))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = global2.c.a.x;
    global2 = Struct_2(abs(u_input.b.yz), 0u, global2.c, _wgslsmith_f_op_f32(global2.c.d + global2.c.c));
    global4 = global2.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_2 = 1u ^ (global2.b & arg_0);
    return Struct_1(global2.c.a, global2.a.x < 1i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(403f + global2.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(round(-704f))))) - global2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global2.d) * _wgslsmith_f_op_vec2_f32(func_3()).x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global2.c.c, true)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = select(vec4<bool>(true, false, _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(global2.a.x, u_input.d)) <= _wgslsmith_add_i32(-6052i >> (u_input.c.x % 32u), -2147483647i), true), select(!select(vec4<bool>(arg_1.x, global2.c.b, arg_1.x, true), select(vec4<bool>(true, arg_0.b, true, false), vec4<bool>(false, arg_1.x, global2.c.b, global2.c.a.x), vec4<bool>(false, true, false, true)), !vec4<bool>(true, arg_3.a.x, global4.b, false)), select(vec4<bool>(!arg_1.x, true, true, false), vec4<bool>(func_2(arg_2.x).a.x, 1000f != global4.c, true, arg_1.x), vec4<bool>(true, all(vec4<bool>(arg_1.x, global2.c.a.x, true, arg_1.x)), false, true)), arg_0.b), !select(!(!vec4<bool>(true, arg_3.b, true, true)), !(!vec4<bool>(false, false, arg_1.x, false)), select(vec4<bool>(global2.c.a.x, arg_0.b, arg_3.b, true), vec4<bool>(true, arg_1.x, true, arg_0.a.x), any(vec4<bool>(false, false, false, true)))));
    var var_1 = Struct_2(~vec2<i32>(-1i, _wgslsmith_clamp_i32(u_input.b.x, 46024i, -1i)), ~(~(~global2.b)), func_2(~1u), _wgslsmith_f_op_f32(-global2.d));
    global1 = array<vec2<u32>, 24>();
    let var_2 = u_input.a | vec4<i32>(1i, ~firstLeadingBit(-global2.a.x), ~var_1.a.x, i32(-1i) * -(~u_input.b.x));
    var var_3 = var_2.x;
    return arg_2.x;
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_2(select(max(u_input.a.yw, u_input.a.wy | select(u_input.b.yx, vec2<i32>(6545i, -2147483647i), global2.c.b)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.a.x, 1i), arg_0.yx), ~u_input.b.zy) << (countOneBits(u_input.c) % vec2<u32>(32u)), global4.a.yy), ~(~func_4(func_2(1u), global2.c.a, vec3<u32>(18704u, 5787u, 1u) >> (vec3<u32>(arg_1, 0u, 41965u) % vec3<u32>(32u)), func_2(arg_2))), func_2(~0u), _wgslsmith_f_op_f32(abs(-170f)));
    var var_1 = func_2(arg_2);
    global3 = global4.a.x;
    global1 = array<vec2<u32>, 24>();
    var var_2 = vec3<u32>(1u, arg_1, ~1u) << (vec3<u32>(var_0.b, ~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(9573u, 24u)], ~vec2<u32>(4900u, var_0.b)), arg_1) % vec3<u32>(32u));
    return global2.c.a;
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = ~_wgslsmith_mod_u32(815u, global2.b);
    let var_1 = true;
    var var_2 = Struct_1(func_5(vec3<i32>(u_input.b.x, -(~(-56657i)), -1i), func_4(func_2(0u), !global4.a, vec3<u32>(global2.b, min(global2.b, u_input.c.x), u_input.c.x), func_2(firstLeadingBit(5802u))), ~(39551u | ~u_input.c.x)), all(vec4<bool>(false, !(4294967295u == u_input.c.x), all(select(vec4<bool>(var_1, true, true, true), vec4<bool>(true, false, false, var_1), vec4<bool>(global2.c.a.x, var_1, false, true))), !global2.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global4.d, global2.c.d), global2.d, var_1)), _wgslsmith_div_f32(global4.d, global4.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-102f)) + _wgslsmith_f_op_f32(global2.c.c - global2.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.c)) - _wgslsmith_f_op_f32(trunc(global4.c))))), global2.d);
    var_0 = global2.b;
    var_2 = global2.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1422f + 471f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.c))) * -986f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.c.a.x & global2.c.b;
    let var_1 = global2.c;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d + _wgslsmith_f_op_f32(round(-319f)))), -915f);
    global3 = func_1(u_input.a);
    let var_3 = global2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, 53705u, u_input.c.x), _wgslsmith_sub_i32(-19513i & select(u_input.b.x, u_input.d, false), 22505i) & u_input.a.x, global2.a.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-226f, var_2.x))));
}

