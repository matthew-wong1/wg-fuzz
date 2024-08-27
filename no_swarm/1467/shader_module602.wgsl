struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    var var_0 = ~1u;
    var var_1 = 267f;
    var_1 = 652f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), ~(-56144i >> (1u % 32u)), global0.c, 0u < _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.c, 4294967295u, u_input.b.x, u_input.c)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x))));
    var var_3 = global0.a.x;
    return Struct_1(_wgslsmith_div_vec2_f32(var_2.a, global0.a), global0.b | -52006i, any(!select(vec3<bool>(global0.c, global0.c, false), select(vec3<bool>(true, global0.c, true), vec3<bool>(false, true, false), vec3<bool>(true, global0.c, true)), !var_2.c)), all(!vec3<bool>(true, global0.c, true)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    global1 = array<vec4<f32>, 21>();
    var var_0 = 68141u;
    var var_1 = func_2();
    var var_2 = func_2();
    let var_3 = select(select(vec2<bool>(all(select(vec4<bool>(global0.d, true, arg_1.c, false), vec4<bool>(true, arg_3.x, true, true), vec4<bool>(var_2.d, true, global0.d, var_1.c))), true), arg_3, !global0.c), select(vec2<bool>(global0.d, true), arg_3, arg_3), var_2.b == 1i);
    return u_input.a.x ^ -1i;
}

fn func_3(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = select(~_wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(u_input.c, 1u) << (u_input.c % 32u)), ~0u & u_input.c, any(select(!select(vec4<bool>(global0.c, false, true, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(global0.c, arg_0.x, false, global0.c), select(vec4<bool>(true, true, true, arg_0.x), vec4<bool>(false, global0.d, false, global0.c), global0.c)), !(u_input.b.x > 4294967295u))));
    let var_1 = u_input.b.x;
    var var_2 = 11640i;
    var var_3 = 0u;
    var_3 = u_input.b.x;
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    let var_0 = arg_1.c;
    let var_1 = ~min(~reverseBits(firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.b.x))), reverseBits(u_input.b));
    var var_2 = func_3(select(!(!(!vec3<bool>(false, global0.d, true))), !select(vec3<bool>(true, false, arg_1.c), !vec3<bool>(true, var_0, arg_2.d), var_1.x > 1u), vec3<bool>(!any(vec2<bool>(arg_1.c, true)), u_input.c <= _wgslsmith_mult_u32(u_input.c, 1u), select(!arg_1.d, false, all(vec2<bool>(arg_1.c, false))))));
    let var_3 = _wgslsmith_f_op_f32(-arg_1.a.x);
    var var_4 = func_3(vec3<bool>(all(!vec2<bool>(var_0, arg_1.c)), false, func_2().c));
    return vec3<f32>(func_2().a.x, var_4.a.x, var_4.a.x);
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-564f, 489f))))), -(~3566i), func_2().c, !global0.c | global0.c);
    var var_0 = 982f;
    let var_1 = u_input.b.xx;
    global1 = array<vec4<f32>, 21>();
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(781f)), -284f)));
    return func_3(!vec3<bool>((-2683i > arg_0) || true, !(!global0.c), false | any(vec3<bool>(global0.d, global0.d, global0.c))));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(1878f + -1482f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(arg_0.x, Struct_1(vec2<f32>(-1000f, arg_2.a.x), 1i, arg_2.d, false), arg_2, -13275i)).x - _wgslsmith_f_op_f32(-arg_2.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1320f, -928f))))));
    global0 = func_3(select(select(!select(vec3<bool>(arg_2.c, global0.d, false), vec3<bool>(true, global0.d, true), true), !select(vec3<bool>(false, true, arg_2.c), vec3<bool>(global0.d, var_0.d, false), false), vec3<bool>(select(arg_2.d, global0.d, var_0.c), true, true)), select(vec3<bool>(true, all(vec3<bool>(var_0.c, false, var_0.d)), false & global0.d), select(select(vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(true, true, var_0.c), vec3<bool>(true, arg_2.c, false)), vec3<bool>(true, true, var_0.d), vec3<bool>(true, var_0.c, global0.c)), select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(arg_2.d, true, arg_2.c), var_0.c)), vec3<bool>(any(select(vec4<bool>(true, false, false, var_0.d), vec4<bool>(false, false, var_0.d, true), false)), var_0.c, true)));
    var var_2 = global0.a.x;
    let var_3 = func_3(select(vec3<bool>(global0.c, var_0.d, var_0.c), !(!select(vec3<bool>(true, true, true), vec3<bool>(arg_2.c, var_0.d, true), global0.d)), true));
    return func_5(31717i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(763f, 533f), -1271f, arg_2.a.x) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 207f, 743f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -611f, var_0.a.x)), vec3<f32>(var_0.a.x, arg_2.a.x, global0.a.x)))), vec3<bool>(select(true, false, !var_0.c), arg_2.c, all(select(vec4<bool>(var_0.d, true, true, global0.c), vec4<bool>(arg_2.c, arg_2.d, var_3.d, false), vec4<bool>(false, var_0.d, true, false)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(642f, -1000f), _wgslsmith_f_op_f32(trunc(2052f)), -231f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(arg_2.a.x)), _wgslsmith_f_op_f32(ceil(267f)))))), ~arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 21>();
    var var_0 = func_6(vec3<i32>(_wgslsmith_add_i32(global0.b, countOneBits(u_input.a.x)), global0.b, reverseBits(1i) | _wgslsmith_sub_i32(~1i, u_input.a.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(40878u, u_input.c, 0u), u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.c)), ~vec4<u32>(u_input.c, 36668u, 1u, u_input.c), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.c)), ~vec4<u32>(0u, u_input.c, u_input.c, u_input.b.x), vec4<u32>(34076u, 4294967295u, u_input.b.x, 4294967295u))), vec4<u32>(~u_input.b.x, min(u_input.c & 71407u, 1u), 4294967295u >> (_wgslsmith_add_u32(89055u, u_input.b.x) % 32u), 0u)), func_5(global0.b, _wgslsmith_f_op_vec3_f32(func_4(select(func_1(global0.a.x, Struct_1(global0.a, 57158i, global0.c, global0.d), Struct_1(vec2<f32>(global0.a.x, 605f), global0.b, global0.d, global0.c), vec2<bool>(false, global0.d)), -u_input.a.x, true), func_3(vec3<bool>(true, global0.c, global0.d)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-215f, global0.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(global0.b, 0i)), !global0.d, true), 55049i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a.x, global0.a.x, global0.a.x)))), _wgslsmith_add_u32(u_input.c, min(max(50202u, u_input.b.x), 1u))), u_input.b.zy);
    global1 = array<vec4<f32>, 21>();
    var var_1 = func_2();
    var var_2 = var_1.b;
    var var_3 = select(u_input.a, u_input.a, global0.d);
    var var_4 = vec3<bool>(func_5(u_input.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, global0.a.x, 266f), vec3<f32>(global0.a.x, -596f, global0.a.x), vec3<bool>(global0.d, var_0.c, var_1.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, global0.a.x, var_1.a.x) - vec3<f32>(global0.a.x, var_0.a.x, global0.a.x)), select(vec3<bool>(true, global0.c, global0.c), vec3<bool>(true, true, true), var_1.d))), vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(var_1.a.x - -1414f), _wgslsmith_f_op_f32(f32(-1f) * -310f)), 1u).b < func_6(~(-vec3<i32>(var_3.x, 29838i, 40177i)), vec4<u32>(u_input.b.x, ~0u, 33125u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 24617u, u_input.b.x, 1u), vec4<u32>(58347u, u_input.c, 11854u, u_input.b.x))), func_5(u_input.a.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(891f, var_1.a.x, 290f))), _wgslsmith_f_op_vec3_f32(func_4(1i, Struct_1(vec2<f32>(-1113f, var_0.a.x), -2147483647i, var_0.d, true), Struct_1(var_0.a, 2236i, false, true), global0.b)), 0u), vec2<u32>(1970u, u_input.c)).b, var_1.b <= _wgslsmith_mult_i32(25002i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.b, var_0.b), var_1.b | 13146i)), true);
    global1 = array<vec4<f32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(1000f, 25543u, -2147483647i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_div_f32(-846f, -533f)), _wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(global0.a.x, var_0.a.x)))))));
}

