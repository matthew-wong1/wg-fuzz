struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1078f, 665f), 83836i, vec3<bool>(true, false, false));

var<private> global2: Struct_1;

var<private> global3: array<i32, 5>;

var<private> global4: array<vec3<u32>, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    global4 = array<vec3<u32>, 26>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1429f))), global1.a.x)), global1.b, select(global1.c, vec3<bool>(u_input.a.x < 4245u, global1.c.x, true), global1.c.x));
    var var_1 = 62352u;
    var_1 = abs(~u_input.a.x);
    let var_2 = vec3<u32>(max(u_input.e, ~_wgslsmith_dot_vec4_u32(vec4<u32>(57954u, u_input.e, u_input.e, u_input.a.x), ~vec4<u32>(85309u, u_input.a.x, u_input.e, u_input.a.x))), _wgslsmith_div_u32(u_input.a.x << (_wgslsmith_dot_vec2_u32(abs(u_input.a), u_input.a) % 32u), ~u_input.e), u_input.a.x);
    return _wgslsmith_f_op_vec2_f32(-global2.a);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a - _wgslsmith_f_op_vec2_f32(func_3())), u_input.b.x, arg_2.c);
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-794f * -1000f)))), global3[_wgslsmith_index_u32(u_input.e, 5u)], !(!global1.c));
    global2 = arg_2;
    var var_0 = arg_2.c.x;
    var var_1 = vec4<u32>(1u, reverseBits(~(~(~24523u))), ~(~u_input.a.x), 2281u);
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(min(~var_1.wzx, vec3<u32>(6053u, min(u_input.a.x, u_input.e), 17099u)), _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(var_1.yzy, var_1.zwx)), vec3<u32>(~0u, var_1.x ^ 82073u, u_input.a.x))), 21u)];
}

fn func_1() -> f32 {
    global3 = array<i32, 5>();
    var var_0 = true;
    var var_1 = global0[_wgslsmith_index_u32(u_input.e << (~u_input.a.x % 32u), 21u)];
    global0 = array<Struct_1, 21>();
    var var_2 = func_2(global1.c.x, -192f != _wgslsmith_f_op_f32(abs(global1.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) * vec2<f32>(global1.a.x, global1.a.x))) - global1.a), _wgslsmith_mult_i32(var_1.b, -46199i), global1.c), true);
    return _wgslsmith_f_op_f32(f32(-1f) * -220f);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(min(func_2(true, true, func_2(global2.c.x, arg_0, Struct_1(global2.a, global2.b, vec3<bool>(global2.c.x, global1.c.x, true)), arg_0), any(global2.c)).a.x, global1.a.x))), _wgslsmith_f_op_f32(abs(global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-global2.a.x)))));
    var var_1 = global1.a;
    let var_2 = -(~arg_3.x) | global1.b;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(countOneBits(~0u), u_input.e), ~(~0u)), 21u)];
    return Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), vec2<f32>(1845f, 1000f))))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) & vec4<u32>(34512u, u_input.a.x, 10738u, arg_1), firstTrailingBit(~vec4<u32>(arg_1, 49795u, u_input.a.x, 9034u))), 5u)] & _wgslsmith_mod_i32(countOneBits(_wgslsmith_mult_i32(-2147483647i, global2.b)), _wgslsmith_add_i32(select(u_input.c, -2147483647i, true), max(-1i, 1i))), func_2(false, global2.c.x, func_2(false, !all(vec4<bool>(false, false, true, var_3.c.x)), global0[_wgslsmith_index_u32(arg_1, 21u)], func_2(true, var_3.c.x, Struct_1(vec2<f32>(global2.a.x, 216f), global2.b, global2.c), false).c.x), arg_0).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    global1 = func_4(~u_input.e >= _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, ~u_input.e), ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), abs(u_input.a.x) >> (u_input.e % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(func_1())), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.c), reverseBits(-2147483647i), -1i, 1i & global2.b), ~vec4<i32>(-1i, u_input.c, global3[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.b.x) << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(~(~u_input.e), 105751u, ~u_input.e | u_input.a.x, 1u) & vec4<u32>(u_input.a.x, 55725u, u_input.e, u_input.a.x), abs(-6963i), u_input.a.x);
}

