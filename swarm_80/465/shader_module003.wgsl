struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 27>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.a;
    global0 = Struct_2(arg_3.a);
    let var_1 = global0.a.b;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-707f)) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1343f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(785f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1079f)) * -1509f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-422f * 745f) - _wgslsmith_f_op_f32(-183f * -996f))), _wgslsmith_f_op_f32(sign(104f))));
    var_2 = vec2<f32>(-697f, -244f);
    return 106000u ^ ~arg_0;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global1 = array<Struct_1, 27>();
    let var_0 = ~reverseBits(vec3<i32>(-1i) * -(u_input.a ^ u_input.a));
    global2 = func_3(~global0.a.c, !arg_2, false, Struct_2(Struct_1(var_0.yy >> (vec2<u32>(global0.a.c, 30098u) % vec2<u32>(32u)), select(var_0.zy, u_input.b, false), select(u_input.d, global0.a.c, arg_2)))) >> (_wgslsmith_add_u32(~global0.a.c, ~select(arg_0 | arg_0, u_input.d, arg_2)) % 32u);
    global2 = abs(countOneBits(arg_1.x << ((_wgslsmith_mult_u32(35677u, arg_0) >> (_wgslsmith_add_u32(5019u, arg_1.x) % 32u)) % 32u)));
    global1 = array<Struct_1, 27>();
    return _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0, ~(~min(arg_1.x, 36260u))), vec3<u32>(_wgslsmith_div_u32(~4294967295u, ~1u), _wgslsmith_dot_vec4_u32((vec4<u32>(0u, arg_0, 40801u, 1u) ^ vec4<u32>(u_input.d, u_input.d, arg_1.x, arg_1.x)) ^ vec4<u32>(1u, 23362u, arg_0, u_input.d), ~vec4<u32>(arg_0, arg_1.x, arg_1.x, 1u)), countOneBits(abs(u_input.d)) | ~1u));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_2(Struct_1(~vec2<i32>(-1i, global0.a.a.x), ~countOneBits(min(arg_3.b, arg_2.a.b)), _wgslsmith_mod_u32(firstTrailingBit(arg_1.x) & arg_2.a.c, 4294967295u)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-207f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1183f, 723f, true)), 2432f, any(arg_0))))) + -1031f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(926f + 129f))), _wgslsmith_f_op_f32(-232f * -846f)))));
    let var_1 = 0i;
    var var_2 = arg_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * _wgslsmith_div_f32(var_0.x, -650f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1846f), vec2<f32>(var_0.x, var_0.x), false)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1228f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1130f, 314f)))))));
    return Struct_1(-select(_wgslsmith_sub_vec2_i32(arg_2.a.a >> (vec2<u32>(arg_1.x, global0.a.c) % vec2<u32>(32u)), ~vec2<i32>(2147483647i, -11720i)), _wgslsmith_clamp_vec2_i32(select(global0.a.b, arg_3.b, false), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), global0.a.a), arg_3.a), !(arg_0.x && false)), global0.a.b, arg_2.a.c);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global3 = array<Struct_1, 15>();
    let var_0 = true;
    let var_1 = !(!(!select(vec2<bool>(arg_1, var_0), vec2<bool>(var_0, var_0), select(vec2<bool>(arg_1, true), vec2<bool>(true, var_0), vec2<bool>(true, var_0)))));
    global0 = Struct_2(func_4(!var_1, vec3<u32>(35081u, func_2(89053u, vec2<u32>(arg_2.a.c, u_input.d), arg_1, vec4<f32>(621f, -748f, -269f, 283f)), 10681u) & ((vec3<u32>(u_input.d, 15056u, u_input.d) | vec3<u32>(arg_2.a.c, 12527u, 4294967295u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a.c, arg_2.a.c, u_input.d), vec3<u32>(u_input.d, arg_2.a.c, 122u)) % vec3<u32>(32u))), arg_2, global3[_wgslsmith_index_u32(~arg_2.a.c, 15u)]));
    var var_2 = func_4(vec2<bool>(true | (-26512i > arg_2.a.b.x), false), ~_wgslsmith_sub_vec3_u32(min(firstTrailingBit(vec3<u32>(95722u, global0.a.c, global0.a.c)), ~vec3<u32>(1u, global0.a.c, 0u)), vec3<u32>(~global0.a.c, 4294967295u, ~u_input.d)), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.d, ~u_input.d), firstTrailingBit(0u), 0u), 27u)]), func_4(vec2<bool>(true, false), _wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_2.a.c, u_input.d, arg_2.a.c)), vec3<u32>(1u, global0.a.c, abs(arg_2.a.c))), arg_2, func_4(select(!var_1, !vec2<bool>(true, arg_1), select(vec2<bool>(false, var_0), var_1, var_1)), _wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.d, 0u), abs(vec3<u32>(0u, 117043u, global0.a.c))), arg_2, global1[_wgslsmith_index_u32(~global0.a.c, 27u)])));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c, true, Struct_2(Struct_1(max(abs(vec2<i32>(global0.a.b.x, 0i)), vec2<i32>(1i, -1i)), ~u_input.a.zy, _wgslsmith_clamp_u32(u_input.d, 4294967295u, ~u_input.d))));
    var var_1 = func_4(select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true)), true), ~(~(~vec3<u32>(u_input.d, 0u, global0.a.c))), Struct_2(global0.a), Struct_1(u_input.a.zz, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b.x, -1i, 32806i), u_input.a), 1i), global0.a.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-820f, 1351f, -375f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -137f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -382f), var_2.x, _wgslsmith_f_op_f32(max(-831f, -1440f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), var_2.x, -582f))), false));
    var var_3 = -1i;
    let var_4 = func_1(~_wgslsmith_sub_i32(40310i | var_0.a.b.x, 46173i), true, var_0);
    let var_5 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, 47844i), var_4.a.b.x), -var_4.a.a), _wgslsmith_clamp_vec2_i32(-var_0.a.a, vec2<i32>(7168i, _wgslsmith_sub_i32(32141i, -1i)), vec2<i32>(~var_0.a.a.x, var_4.a.b.x)), _wgslsmith_div_u32(func_4(vec2<bool>(true, false), vec3<u32>(var_0.a.c, 44375u, 44128u), var_0, var_4.a).c | reverseBits(4294967295u), ~(~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(-(1i >> (var_0.a.c % 32u)), u_input.b.x & -6622i, vec3<u32>(_wgslsmith_div_u32(max(u_input.d, u_input.d), global0.a.c), reverseBits(var_0.a.c), 4294967295u) >> (firstTrailingBit(~vec3<u32>(14647u, 2119u, 4294967295u)) % vec3<u32>(32u)));
}

