struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(0u, 9333u, 40144u, 0u), vec4<u32>(4294967295u, 29598u, 38962u, 0u), vec4<u32>(4294967295u, 0u, 20737u, 1u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(87055u, 9567u, 15132u, 31622u), vec4<u32>(4294967295u, 36537u, 30824u, 19863u), vec4<u32>(4294967295u, 0u, 9623u, 0u), vec4<u32>(1u, 3807u, 4294967295u, 17767u), vec4<u32>(64994u, 35188u, 9025u, 32238u), vec4<u32>(0u, 1u, 10637u, 1011u), vec4<u32>(31699u, 78165u, 13072u, 1u), vec4<u32>(4294967295u, 32836u, 1u, 31104u), vec4<u32>(61637u, 1u, 4294967295u, 4294967295u), vec4<u32>(49236u, 4450u, 25198u, 0u), vec4<u32>(87239u, 34565u, 0u, 6834u), vec4<u32>(1u, 30346u, 126447u, 23592u), vec4<u32>(25581u, 33404u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 6449u), vec4<u32>(27650u, 65369u, 4294967295u, 0u), vec4<u32>(0u, 1u, 4294967295u, 6689u), vec4<u32>(239u, 1u, 1u, 53140u), vec4<u32>(73548u, 51521u, 4294967295u, 11786u), vec4<u32>(21418u, 0u, 113013u, 1u), vec4<u32>(34911u, 0u, 1u, 74052u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2429f)));
    let var_1 = 379f;
    var var_2 = Struct_5(Struct_1(select(!vec2<bool>(arg_1.x, false), arg_1.yy, vec2<bool>(true, arg_1.x)), abs(_wgslsmith_mod_i32(u_input.b, -u_input.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))), 1139f), Struct_4(Struct_2(Struct_1(arg_1.xy, _wgslsmith_mod_i32(0i, u_input.b)), any(select(arg_1.yy, vec2<bool>(arg_1.x, true), arg_1.x)), Struct_1(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x), true), max(-35759i, u_input.b)), Struct_1(select(arg_1.zx, arg_1.yx, vec2<bool>(arg_1.x, arg_1.x)), u_input.b)), u_input.c.x, u_input.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1126f)), _wgslsmith_f_op_f32(f32(-1f) * -1182f), _wgslsmith_f_op_f32(-arg_0)), vec3<f32>(_wgslsmith_f_op_f32(abs(-352f)), arg_0, _wgslsmith_f_op_f32(arg_0 + 1559f))), ~0i), arg_0);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-286f * -990f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-236f)) * _wgslsmith_f_op_f32(max(127f, _wgslsmith_f_op_f32(-822f * 626f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(-313f)), vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(371f + _wgslsmith_f_op_f32(func_3(-362f, vec3<bool>(true, true, select(true, true, false))))));
    var var_1 = Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, reverseBits(arg_0.x)), arg_0), _wgslsmith_f_op_f32(trunc(var_0.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))), all(vec4<bool>(true, true, (var_0.x < var_0.x) & any(vec3<bool>(false, false, false)), true & (var_0.x == 524f))));
    let var_2 = select(select(select(select(vec4<bool>(true, var_1.b, var_1.b, var_1.b), !vec4<bool>(true, var_1.b, true, false), select(vec4<bool>(var_1.b, var_1.b, false, var_1.c), vec4<bool>(var_1.c, false, var_1.b, false), false)), select(!vec4<bool>(var_1.b, true, true, false), vec4<bool>(true, var_1.c, true, var_1.b), vec4<bool>(var_1.b, false, false, var_1.b)), var_1.c), !(!vec4<bool>(true, false, true, var_1.b)), false), vec4<bool>(!(!(2734i < u_input.b)), var_1.c | select(true, false || var_1.b, var_1.c || false), true && ((true | var_1.c) | all(vec2<bool>(true, var_1.b))), all(vec4<bool>(var_1.c, var_1.c, var_1.b, false))), true);
    var var_3 = any(vec2<bool>(var_2.x, (~1i & var_1.a.x) <= _wgslsmith_div_i32(_wgslsmith_mult_i32(-192i, 0i), ~arg_0.x)));
    var var_4 = !(-374f <= _wgslsmith_f_op_f32(sign(-247f))) || false;
    return Struct_3(~arg_0, abs(u_input.a) == 1u, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_1(vec2<bool>(all(!vec2<bool>(true, arg_1.x)), arg_1.x), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, -97943i), -u_input.b));
    var var_1 = func_2(_wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -37158i, ~u_input.b), (~vec2<i32>(u_input.b, -32799i) ^ vec2<i32>(u_input.b, var_0.b)) << (_wgslsmith_add_vec2_u32(arg_0 >> (vec2<u32>(arg_0.x, 1u) % vec2<u32>(32u)), countOneBits(vec2<u32>(u_input.a, 2655u))) % vec2<u32>(32u))));
    var var_2 = Struct_5(var_0, 1f, Struct_4(Struct_2(Struct_1(!vec2<bool>(arg_1.x, var_1.b), u_input.b), !arg_1.x, var_0, var_0), countOneBits(abs(_wgslsmith_div_u32(arg_0.x, 15333u))), _wgslsmith_add_u32(arg_0.x, 1u ^ (u_input.a | 22885u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(490f, -1437f, -135f))))), var_1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-795f, 148f) - 363f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(512f * 888f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -877f)))));
    var var_3 = ~arg_0.x;
    var var_4 = any(vec3<bool>(all(!vec4<bool>(arg_1.x, true, false, false)), true, (firstTrailingBit(u_input.b) < _wgslsmith_mult_i32(var_1.a.x, -25762i)) | true));
    return (107456u & ~u_input.c.x) ^ min(var_2.c.b, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.wzw, vec3<u32>(func_1(select(u_input.c.yw, u_input.c.zx, true), vec2<bool>(true, true)), _wgslsmith_mod_u32(~28276u, 1u), ~6338u)), 9970u, reverseBits(_wgslsmith_div_u32(7368u, firstLeadingBit(u_input.a << (u_input.a % 32u)))), ~(~4294967295u ^ _wgslsmith_dot_vec4_u32(abs(global0[_wgslsmith_index_u32(22007u, 24u)]), u_input.c)));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-459f + -375f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-190f, -317f)) - _wgslsmith_f_op_f32(f32(-1f) * -566f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(817f - -1396f) * _wgslsmith_f_op_f32(step(164f, -980f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(170f, 2497f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-716f, -885f))))))));
    global0 = array<vec4<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(min(max(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), -(vec4<i32>(u_input.b, 2147483647i, 27687i, -30118i) & vec4<i32>(u_input.b, u_input.b, u_input.b, 57168i))), -firstTrailingBit(min(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-47656i, u_input.b, 42061i, u_input.b)))), var_1.x);
}

