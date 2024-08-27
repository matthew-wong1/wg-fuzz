struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(1135f, -2486f), Struct_1(vec2<f32>(-798f, 1537f), -14373i), vec3<i32>(-24336i, 0i, 76392i), -216f);

var<private> global1: array<bool, 30> = array<bool, 30>(true, true, false, false, false, true, false, true, true, true, true, true, true, true, false, true, false, false, true, true, false, false, false, false, false, true, false, true, true, false);

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true));

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> i32 {
    global2 = Struct_1(global0.a, global0.c.x);
    let var_0 = vec4<bool>(true, false, false & any(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], true))), true);
    let var_1 = arg_0;
    global4 = Struct_3(global4.a);
    let var_2 = select(var_0.wx, vec2<bool>(false, var_0.x), any(var_0));
    return select(~(~1i), var_1.b, var_0.x);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: i32) -> vec4<u32> {
    global2 = global0.b;
    let var_0 = ~(~(~(~abs(0u))));
    var var_1 = global1[_wgslsmith_index_u32(1u, 30u)];
    global4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + 1731f), global4.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d))) * global0.b.a.x)));
    global1 = array<bool, 30>();
    return vec4<u32>((_wgslsmith_dot_vec2_u32(~vec2<u32>(59644u, u_input.b.x), vec2<u32>(u_input.b.x, var_0)) << (~u_input.a.x % 32u)) >> (select(1u, 1u, true) % 32u), _wgslsmith_sub_u32(4294967295u, 4294967295u << (_wgslsmith_sub_u32(~var_0, ~16428u) % 32u)), u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0 & 28377u, ~var_0, _wgslsmith_mult_u32(u_input.a.x, u_input.b.x), max(u_input.b.x, 0u)), vec4<u32>((0u >> (1u % 32u)) << (var_0 % 32u), min(4294967295u, 24415u), ~4090u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x), 1u))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a * -1380f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) * arg_2.d))), ~func_3(arg_2.b, ~_wgslsmith_dot_vec3_i32(global0.c, vec3<i32>(-1i, 1i, -2147483647i)), vec4<u32>(arg_0, min(arg_0, 2720u), arg_0, 1u)), -2147483647i);
    global3 = array<vec3<bool>, 9>();
    let var_1 = true;
    global2 = arg_2.b;
    var var_2 = ~abs(~vec2<u32>(var_0.x, u_input.b.x >> (4294967295u % 32u)));
    return arg_2;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = func_2(4294967295u, global2.b, Struct_2(global0.b.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-138f + 1000f), _wgslsmith_f_op_f32(global0.b.a.x - global4.a)), 1i), global0.c, global0.b.a.x));
    global3 = array<vec3<bool>, 9>();
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_div_i32(52102i, -2147483647i);
    global1 = array<bool, 30>();
    return -948f;
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: f32) -> Struct_2 {
    global1 = array<bool, 30>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_1 = func_2(u_input.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global0.c.xz, vec2<i32>(global0.b.b, global2.b)), firstTrailingBit(-vec2<i32>(global2.b, arg_1.x))), func_2(0u, (i32(-1i) * -29509i) | ~func_3(global0.b, arg_1.x, vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.b.x)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.a, -1062f))) + global0.b.a), global0.b, arg_1, arg_2.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(-var_1.a.x))))));
    var_0 = any(global3[_wgslsmith_index_u32(abs(abs(u_input.a.x)), 9u)]);
    return Struct_2(global2.a, func_2(arg_0, ~36733i, var_1).b, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1071f) + 1244f) * 856f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~max(select(countOneBits(u_input.b.x), 7212u, _wgslsmith_f_op_f32(round(global0.a.x)) < -935f), 0u), 30u)];
    var var_1 = func_5(26775u, global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.a - global2.a.x), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global4.a - global0.d), -2969f)) * vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(-1i, 2147483647i, -1i, 19631i), 565f >= global0.d, global2.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1143f))), 1f, _wgslsmith_f_op_f32(func_1(-vec4<i32>(-1i, 6254i, global0.c.x, -1i), global4.a < -611f, _wgslsmith_add_i32(global0.b.b, 2147483647i))))), _wgslsmith_f_op_f32(max(-1722f, _wgslsmith_f_op_f32(-global0.d))));
    let var_2 = _wgslsmith_sub_vec4_u32(firstLeadingBit(func_4(Struct_3(global0.a.x), global2.b, -3826i)) & vec4<u32>(0u, abs(u_input.b.x), firstLeadingBit(~u_input.a.x), 53134u), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 16039u, 72018u), vec3<u32>(u_input.b.x, 100251u, 69469u)), _wgslsmith_sub_u32(~u_input.b.x, 4294967295u), 4301u, ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    var var_3 = func_5(func_4(Struct_3(_wgslsmith_f_op_f32(511f - global4.a)), var_1.b.b, firstTrailingBit(global2.b)).x >> (~u_input.b.x % 32u), ~vec3<i32>(15605i, func_2(~u_input.a.x, ~2147483647i, func_5(28669u, vec3<i32>(-2147483647i, global2.b, 22376i), vec4<f32>(109f, global2.a.x, var_1.b.a.x, -568f), global2.a.x)).c.x, ~var_1.c.x), vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(func_2(~1u, -1i, Struct_2(vec2<f32>(var_1.a.x, global0.d), Struct_1(vec2<f32>(804f, 660f), global0.c.x), var_1.c, -1351f)).b.a.x - -1074f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global4.a, _wgslsmith_f_op_f32(f32(-1f) * -306f), all(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 30u)], false, false)))))), var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.a.x)))).b;
    let var_4 = func_5(~25147u, vec3<i32>(-23882i, 74356i, ~func_2(162u, _wgslsmith_sub_i32(var_1.b.b, global0.b.b), func_5(var_2.x, vec3<i32>(var_3.b, var_1.c.x, 11922i), vec4<f32>(var_1.b.a.x, var_3.a.x, 631f, -1022f), -1009f)).c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(3208f))), global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -3251f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x + global0.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(-global4.a)));
    let var_5 = global0.b.a.x;
    let var_6 = _wgslsmith_f_op_f32(-global2.a.x);
    let var_7 = -1i;
    global2 = Struct_1(global0.b.a, -(~(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.xz, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(ceil(var_4.b.a.x)))), global0.c, -(i32(-1i) * -2147483647i));
}

