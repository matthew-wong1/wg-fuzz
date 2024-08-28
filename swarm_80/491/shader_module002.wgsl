struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)));

var<private> global1: Struct_4 = Struct_4(vec2<f32>(-556f, 1667f), vec2<i32>(1i, 1i), vec3<u32>(39150u, 0u, 1u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a));
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1617f, _wgslsmith_f_op_f32(var_0.x + var_0.x))) - _wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a * global1.a), _wgslsmith_div_vec2_f32(vec2<f32>(673f, 1276f), global1.a)))), min(global1.b, vec2<i32>(-1i, -(arg_1 ^ global1.b.x))), arg_2);
    var var_1 = Struct_2(Struct_1(select(true, ~global1.c.x <= (global1.c.x & 23766u), all(vec3<bool>(false, false, true)))), Struct_1(true));
    var var_2 = -1126f;
    var var_3 = vec3<bool>(!(true | var_1.a.a), var_1.a.a, false);
    return reverseBits(_wgslsmith_sub_vec2_i32(-(vec2<i32>(arg_1, u_input.a.x) << (vec2<u32>(global1.c.x, 1u) % vec2<u32>(32u))), arg_0) ^ global1.b);
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1153f + -1089f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + global1.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.a.x)))))));
    global1 = arg_0;
    var var_1 = select(!(!(!vec3<bool>(arg_1, true, arg_1))), select(!vec3<bool>(arg_1, arg_1, arg_1), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), !vec3<bool>(true, arg_1, arg_1)), vec3<bool>(false, !(!arg_1), any(vec3<bool>(true, arg_1, false)) && arg_1)), true);
    global1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(180f, arg_0.a.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, -156f), vec2<f32>(-1000f, arg_0.a.x)))) - _wgslsmith_f_op_vec2_f32(min(arg_0.a, _wgslsmith_f_op_vec2_f32(exp2(global1.a)))))));
    return 2158f;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = select(true, all(vec3<bool>(true, true, true & select(false, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1532f), 1000f) != _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_vec2_f32(trunc(global1.a)), func_2(global1.b, 0i, global1.c), vec3<u32>(15514u, arg_0, arg_0) << (vec3<u32>(arg_0, 55402u, arg_0) % vec3<u32>(32u))), true)));
    global0 = array<Struct_2, 27>();
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(729f, global1.a.x)), _wgslsmith_f_op_f32(exp2(global1.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1037f * global1.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(596f))))))), -vec2<i32>(abs(_wgslsmith_div_i32(u_input.a.x, 1i)), 0i), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~0u, abs(2365u), 8614u), ~vec4<u32>(93550u, 90057u, global1.c.x, 4294967295u)), 4294967295u, abs(max(max(global1.c.x, global1.c.x), reverseBits(arg_0)))));
    let var_1 = select(select(vec2<bool>(all(vec2<bool>(true, true)), true), !(!(!vec2<bool>(var_0, false))), select(!vec2<bool>(var_0, var_0), vec2<bool>(true, any(vec3<bool>(true, false, var_0))), !any(vec4<bool>(false, true, var_0, var_0)))), select(vec2<bool>(true, true), !vec2<bool>(!var_0, all(vec2<bool>(var_0, var_0))), true), u_input.a.x == _wgslsmith_mult_i32(~(-u_input.a.x), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, 10367i), global1.b.x)));
    let var_2 = true;
    return Struct_2(Struct_1(!(21528i > global1.b.x)), Struct_1(var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mult_i32(-11231i, (11240i ^ u_input.a.x) ^ u_input.a.x));
    let var_1 = func_1(~global1.c.x);
    var var_2 = func_1(select(~(~global1.c.x) << (9005u % 32u), global1.c.x, !var_1.b.a));
    var var_3 = func_1(~(~global1.c.x)).b;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), -484f);
    var var_5 = Struct_2(func_1(~_wgslsmith_add_u32(~global1.c.x, global1.c.x)).a, Struct_1(any(vec4<bool>(all(vec2<bool>(false, var_1.a.a)), !var_1.b.a, any(vec3<bool>(var_1.b.a, true, false)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(global1.c >> (vec3<u32>(31066u, ~0u, ~4294967295u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(global1.c >> (global1.c % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.c.x, 37015u, 12125u), global1.c | global1.c)), global1.c), _wgslsmith_f_op_f32(max(1f, 1851f)), min(global1.c.x, ~1u), var_0);
}

