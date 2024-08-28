struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 25>;

var<private> global2: u32;

var<private> global3: array<vec3<f32>, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    global3 = array<vec3<f32>, 27>();
    global2 = (~select(~u_input.b.x, u_input.b.x, false) ^ max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 63811u, u_input.b.x) | vec4<u32>(4294967295u, 5808u, 1u, u_input.b.x), ~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), max(17387u, abs(8221u)))) | ~u_input.b.x;
    global1 = array<vec2<bool>, 25>();
    let var_0 = true;
    global1 = array<vec2<bool>, 25>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(309f)), 856f, -368f)), vec4<f32>(-333f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(185f, -401f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(686f + -848f), -1473f))), _wgslsmith_f_op_f32(-1094f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f + 654f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(847f)) + -1117f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1059f)))), countOneBits(_wgslsmith_div_i32(8707i, firstLeadingBit(-u_input.a))));
}

fn func_3() -> u32 {
    let var_0 = u_input.b;
    var var_1 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(reverseBits(var_0.x), ~(1u ^ var_0.x)), _wgslsmith_add_u32(~min(u_input.b.x, 4294967295u), var_0.x)), 27u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(137f, 1000f)) + _wgslsmith_f_op_f32(select(347f, -167f, false))), _wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(757f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-423f + -173f)))), -(u_input.a << (var_0.x % 32u)));
    global1 = array<vec2<bool>, 25>();
    let var_2 = func_2();
    var_1 = var_2;
    return 17644u;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = firstLeadingBit(-vec3<i32>(var_0.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), var_0.c), 0i));
    var var_3 = ~vec3<u32>(u_input.b.x, ~(u_input.b.x & 4294967295u), func_3() << (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b.x, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 1u))) % 32u));
    var var_4 = func_2();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_4.b.x), _wgslsmith_div_f32(-1736f, var_0.a.x), _wgslsmith_div_f32(360f, -965f)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-860f, var_4.b.x, 1404f)))))), _wgslsmith_f_op_vec4_f32(-var_1.b), -1i);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = !vec4<bool>(select(all(select(vec4<bool>(arg_3, arg_1, false, arg_1), vec4<bool>(arg_1, false, false, arg_3), true)), !arg_1, true), arg_1, !any(vec2<bool>(arg_3, arg_3)), arg_3);
    var var_1 = _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(1278u, _wgslsmith_sub_u32(41872u, u_input.b.x), 48758u), select(max(vec3<u32>(16354u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 1u)), ~vec3<u32>(u_input.b.x, u_input.b.x, 33101u), true)), abs(abs(vec3<u32>(u_input.b.x, ~u_input.b.x, ~1u))));
    global1 = array<vec2<bool>, 25>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b.x))), arg_2.a.x, arg_2.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-618f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1751f, arg_2.a.x))), _wgslsmith_f_op_f32(arg_0.a.x - -606f), 391f, arg_0.b.x), 2147483647i);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(30532i, -2147483647i, -25965i, -1i)) << (vec4<u32>(4294967295u, func_3(), 0u, u_input.b.x ^ u_input.b.x) % vec4<u32>(32u)), vec4<i32>(arg_0.x, 1i, arg_2.c, 0i)) << (countOneBits(abs(vec4<u32>(15476u, u_input.b.x, u_input.b.x, u_input.b.x) | ~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u))) % vec4<u32>(32u));
    global0 = arg_0.x;
    global3 = array<vec3<f32>, 27>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), -276f, arg_2.a.x, arg_2.a.x);
    global3 = array<vec3<f32>, 27>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global2 = ~(abs(4294967295u) ^ (u_input.b.x & ~4294967295u));
    let var_1 = func_5(firstTrailingBit(countOneBits(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a)) >> (u_input.b % vec2<u32>(32u))), func_4(func_1(), true, Struct_1(func_2().a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1579f, -1652f, -505f, -424f))), func_2().c), true), Struct_1(global3[_wgslsmith_index_u32(~(~max(u_input.b.x, 0u)), 27u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, -554f, -2309f, 605f)) + vec4<f32>(172f, 769f, 656f, 871f)) * vec4<f32>(func_1().a.x, _wgslsmith_f_op_f32(-263f * 2033f), _wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(1384f - 1769f))), 1i));
    global0 = _wgslsmith_add_i32(func_2().c, _wgslsmith_div_i32(var_1.c, 21491i));
    global1 = array<vec2<bool>, 25>();
    let var_2 = _wgslsmith_mod_vec2_u32(u_input.b, firstLeadingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(4278u), firstLeadingBit(vec2<i32>(23647i, (var_1.c >> (79178u % 32u)) ^ var_1.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.x, -128f)))))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, var_1.c, -23533i, 2147483647i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, u_input.a, 32626i, 40708i), vec4<i32>(var_1.c, -33977i, var_1.c, -2147483647i)), -1i, -14574i, var_1.c)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_1.c, 33254i, 44245i), min(vec4<i32>(-1i, -6969i, -55608i, var_1.c), vec4<i32>(2147483647i, 5105i, var_1.c, 79235i)))));
}

