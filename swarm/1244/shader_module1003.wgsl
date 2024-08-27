struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(1u), Struct_2(47957u), Struct_2(4294967295u), Struct_2(20446u), Struct_2(29329u), Struct_2(26329u), Struct_2(3154u), Struct_2(0u), Struct_2(1u), Struct_2(36396u), Struct_2(5755u), Struct_2(4294967295u), Struct_2(17044u), Struct_2(4294967295u));

var<private> global2: array<u32, 9> = array<u32, 9>(9886u, 36907u, 1u, 4294967295u, 0u, 1u, 71125u, 31365u, 23330u);

var<private> global3: bool;

var<private> global4: array<i32, 25>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec2<u32> {
    let var_0 = abs(u_input.c >> (countOneBits(46522u) % 32u));
    var var_1 = -firstLeadingBit(select(select(vec3<i32>(31544i, global4[_wgslsmith_index_u32(74952u, 25u)], 1i), vec3<i32>(var_0, var_0, -59989i), false), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 24971i, -1i), vec3<i32>(2147483647i, var_0, u_input.c)), true) << (~u_input.b % vec3<u32>(32u)));
    var var_2 = 0u;
    let var_3 = Struct_5(vec4<f32>(_wgslsmith_div_f32(582f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2883f, -2313f, false)) - -395f)), _wgslsmith_f_op_f32(sign(351f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(640f)))), _wgslsmith_f_op_f32(-1416f + _wgslsmith_f_op_f32(abs(910f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 1000f)) - -993f))));
    var var_4 = Struct_3(Struct_1(29658u, _wgslsmith_add_u32(~0u | (global2[_wgslsmith_index_u32(arg_0, 9u)] >> (arg_0 % 32u)), ~(~u_input.b.x)), var_3.a.ywy, ~_wgslsmith_sub_i32(u_input.a | -2147483647i, -var_0)), 997f, _wgslsmith_f_op_f32(abs(var_3.a.x)));
    return _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, var_4.a.b), u_input.b.xz ^ ~_wgslsmith_mod_vec2_u32(u_input.b.zz, u_input.b.yx), vec2<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(1u, 9u)], 4294967295u), 1u)), u_input.b.xz);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(15648u, ~reverseBits(89931u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(3427f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(320f, -910f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(831f)))))), (abs(-14976i) & _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_1, global4[_wgslsmith_index_u32(22780u, 25u)], u_input.c, 2147483647i), vec4<i32>(u_input.c, 30223i, -40692i, 0i), true), vec4<i32>(global4[_wgslsmith_index_u32(58257u, 25u)], -33715i, arg_1, 34566i))) ^ -18338i);
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~global0.x, max(u_input.b.x, 48376u)) & global0.x, 4294967295u), firstTrailingBit(u_input.b.zy));
    global0 = _wgslsmith_mod_vec2_u32(u_input.b.yy, u_input.b.zx ^ func_3(~(~u_input.b.x), any(!vec2<bool>(true, arg_0))));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(~var_0.b | 4267u, 9u)], abs(countOneBits(abs(51624u & u_input.b.x))), vec3<f32>(var_0.c.x, 391f, var_0.c.x), firstTrailingBit(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a, _wgslsmith_div_u32(~global0.x, 17814u)), 25u)]));
    global4 = array<i32, 25>();
    return Struct_1(23062u, 14465u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, var_1.c.x, -209f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x), vec3<f32>(var_0.c.x, var_0.c.x, var_1.c.x))), arg_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.c)), _wgslsmith_f_op_vec3_f32(exp2(var_0.c))))), min(~(-58143i), _wgslsmith_sub_i32(reverseBits(u_input.c), -23152i) ^ global4[_wgslsmith_index_u32(1u ^ func_3(20610u, arg_0).x, 25u)]));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<bool>) -> i32 {
    let var_0 = ~1u;
    let var_1 = Struct_3(func_2(arg_2.x, 1i), -184f, _wgslsmith_div_f32(956f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), -1032f)))));
    var var_2 = 2147483647i > global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u) >> (arg_1 % 32u), arg_1), 25u)];
    global1 = array<Struct_2, 14>();
    global3 = true;
    return 26865i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_i32(1i, u_input.c ^ _wgslsmith_sub_i32(func_1(false, global0.x, vec3<bool>(true, true, true)), global4[_wgslsmith_index_u32(48567u, 25u)]));
    var var_1 = vec2<f32>(2221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f * 786f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1515f)))));
    global1 = array<Struct_2, 14>();
    var var_2 = Struct_4(func_2(17069i == ~u_input.c, ~global4[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 25u)]), ~_wgslsmith_add_u32(74472u, ~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(49928u, 9u)], 1u)));
    var var_3 = _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.a.a, 1u, u_input.b.x, global2[_wgslsmith_index_u32(global0.x, 9u)]), ~vec4<u32>(global0.x, global0.x, 0u, 82884u))), vec4<u32>(_wgslsmith_mult_u32(0u, 55032u), func_2(true, func_1(true, 1u, vec3<bool>(false, true, false))).b, _wgslsmith_dot_vec3_u32(~(u_input.b >> (u_input.b % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(u_input.b, min(u_input.b, u_input.b))), 0u), vec4<u32>(~((137639u << (1u % 32u)) | ~u_input.b.x), countOneBits(min(1u, 1u) >> (1u % 32u)), abs(~_wgslsmith_div_u32(4294967295u, 57614u)), u_input.b.x));
    let var_4 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-765f - var_2.a.c.x))) != var_1.x, _wgslsmith_clamp_i32(max(23571i, select(1i, select(-2147483647i, -2147483647i, true), true)), var_0, -43743i));
    global3 = true || !(_wgslsmith_div_i32(global4[_wgslsmith_index_u32(var_3.x, 25u)] & var_2.a.d, -1064i) != -1i);
    var var_5 = ~87501u;
    global4 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), 852f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1013f * var_1.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_4.c.x)), _wgslsmith_f_op_f32(var_2.a.c.x - var_2.a.c.x)))), -151f));
}

