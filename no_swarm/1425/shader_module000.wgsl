struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: Struct_3 = Struct_3(Struct_1(true, vec2<bool>(true, true), -46435i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 36030u)), vec4<i32>(45883i, 2147483647i, -1i, 1i), vec4<u32>(0u, 43863u, 0u, 935u), vec4<i32>(-13266i, 0i, i32(-2147483648), i32(-2147483648)));

var<private> global1: vec3<i32>;

var<private> global2: f32 = -1451f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = Struct_4(arg_1, Struct_2(Struct_1(global0.a.a, vec2<bool>(true, global0.a.a), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -4018i, global1.x), vec3<i32>(2147483647i, -2147483647i, arg_1.c)), vec4<u32>(arg_1.d.x, u_input.c, ~35067u, arg_1.d.x ^ 14809u))));
    let var_1 = Struct_2(arg_1);
    let var_2 = -39023i;
    var var_3 = var_0.a.b;
    let var_4 = u_input.d.yx;
    return reverseBits(abs(global0.b.wwy));
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    global1 = ~(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(124f, -127f, global0.a.a))), Struct_1(true, global0.a.b, 69077i, vec4<u32>(global0.a.d.x, 12082u, arg_0.a.d.x, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(742f, -1521f))), global0.d.xxz) & _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, -57061i, 0i), vec3<i32>(_wgslsmith_div_i32(37156i, -29449i), ~(-2147483647i), arg_0.a.c)));
    var var_0 = !(!select(vec3<bool>(false || global0.a.a, 0u < global0.c.x, true), vec3<bool>(false & arg_0.b.a.b.x, any(vec4<bool>(false, false, false, global0.a.a)), true), select(vec3<bool>(arg_0.a.a, false, arg_0.b.a.b.x), select(vec3<bool>(global0.a.a, true, arg_0.b.a.b.x), vec3<bool>(arg_0.b.a.b.x, arg_0.a.b.x, false), global0.a.b.x), false && global0.a.b.x)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1827f)))));
    let var_2 = min(_wgslsmith_add_u32(4294967295u, u_input.d.x), ~(~_wgslsmith_mult_u32(1u, 65581u)) >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(60709u, ~0u), 4294967295u) % 32u));
    return arg_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> Struct_2 {
    let var_0 = vec3<bool>(any(select(select(vec4<bool>(true, arg_0.a.b.x, arg_1.b.a.a, arg_0.a.b.x), !vec4<bool>(false, true, global0.a.a, true), select(vec4<bool>(arg_1.b.a.b.x, global0.a.a, arg_1.a.b.x, arg_0.a.b.x), vec4<bool>(true, global0.a.a, arg_1.b.a.b.x, false), vec4<bool>(arg_1.b.a.b.x, arg_1.a.a, false, false))), select(select(vec4<bool>(true, false, global0.a.b.x, arg_0.a.a), vec4<bool>(global0.a.a, arg_1.a.a, false, true), vec4<bool>(global0.a.b.x, global0.a.b.x, arg_1.b.a.a, false)), !vec4<bool>(arg_1.a.a, true, global0.a.b.x, false), vec4<bool>(true, false, false, arg_0.a.a)), !(!global0.a.a))), arg_0.a.a && true, true);
    global1 = -abs(global0.d.xyw);
    var var_1 = arg_1;
    var_1 = Struct_4(arg_1.a, func_2(Struct_4(global0.a, func_2(arg_1))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-859f, -857f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(954f))), -1128f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-538f, -1971f, -1106f, -272f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, -421f, 2863f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-428f, -291f, -702f, 359f) + vec4<f32>(-1200f, -273f, 1414f, 1193f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-833f, -602f, 578f, -1228f), vec4<f32>(902f, 730f, 450f, 639f)))))) * vec4<f32>(-853f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1377f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(934f + -703f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1796f), _wgslsmith_f_op_f32(f32(-1f) * -943f))))));
    return func_2(arg_1);
}

fn func_1() -> Struct_1 {
    global1 = vec3<i32>(_wgslsmith_mod_i32(global1.x, _wgslsmith_add_i32(_wgslsmith_div_i32(-4647i, ~u_input.a.x), 2147483647i)), global1.x, countOneBits(_wgslsmith_div_i32(2147483647i, -2147483647i)));
    let var_0 = abs(reverseBits(firstLeadingBit(max(vec3<i32>(u_input.b.x, 0i, 0i), vec3<i32>(2147483647i, -1i, 0i))) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    global1 = global0.d.xzx;
    var var_1 = func_4(func_2(Struct_4(Struct_1(global0.c.x > global0.a.d.x, vec2<bool>(global0.a.b.x, global0.a.b.x), _wgslsmith_add_i32(var_0.x, var_0.x), vec4<u32>(u_input.c, 11295u, 61595u, 18409u) & global0.a.d), Struct_2(Struct_1(global0.a.b.x, vec2<bool>(true, true), -10856i, vec4<u32>(u_input.c, u_input.c, global0.a.d.x, 1u))))), Struct_4(Struct_1(!(!global0.a.b.x), func_2(Struct_4(global0.a, Struct_2(Struct_1(global0.a.b.x, vec2<bool>(true, true), 25094i, global0.c)))).a.b, _wgslsmith_div_i32(12956i, _wgslsmith_mod_i32(-41890i, var_0.x)), reverseBits(global0.a.d) ^ (vec4<u32>(76499u, 51978u, 7113u, u_input.d.x) ^ global0.a.d)), Struct_2(global0.a)));
    var var_2 = u_input.b.x;
    return func_2(Struct_4(func_4(Struct_2(func_2(Struct_4(Struct_1(false, vec2<bool>(global0.a.a, var_1.a.b.x), global0.b.x, vec4<u32>(74972u, u_input.c, 0u, u_input.d.x)), Struct_2(global0.a))).a), Struct_4(func_4(Struct_2(global0.a), Struct_4(global0.a, Struct_2(global0.a))).a, Struct_2(global0.a))).a, func_2(Struct_4(var_1.a, func_4(Struct_2(Struct_1(global0.a.b.x, var_1.a.b, -23874i, var_1.a.d)), Struct_4(global0.a, Struct_2(global0.a))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_4(func_1(), func_2(Struct_4(Struct_1(false, global0.a.b, -26236i, global0.c), Struct_2(Struct_1(global0.a.b.x, vec2<bool>(global0.a.b.x, global0.a.b.x), global1.x, vec4<u32>(u_input.d.x, 4294967295u, global0.a.d.x, global0.a.d.x)))))), firstTrailingBit(abs(~u_input.d.x) | ~global0.a.d.x), min(70846u, func_4(Struct_2(func_2(Struct_4(global0.a, Struct_2(global0.a))).a), Struct_4(func_2(Struct_4(global0.a, Struct_2(Struct_1(global0.a.a, global0.a.b, -2147483647i, global0.c)))).a, func_4(Struct_2(global0.a), Struct_4(global0.a, Struct_2(global0.a))))).a.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(44740u);
}

