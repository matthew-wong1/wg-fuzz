struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
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

var<private> global0: array<vec4<u32>, 6>;

var<private> global1: i32 = 1177i;

var<private> global2: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = Struct_1(u_input.c, ~u_input.a, ~u_input.c.xw, max(firstTrailingBit(~u_input.e.x), ~50007u), vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-1011f, -2137f)), 1639f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -592f), -1055f, !global2.x))));
    global0 = array<vec4<u32>, 6>();
    var var_1 = Struct_1(var_0.a, -abs(1i), ~((_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), u_input.c.yy) ^ abs(vec2<i32>(-30795i, -49927i))) | -min(var_0.c, vec2<i32>(0i, var_0.b))), firstTrailingBit(var_0.d), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - _wgslsmith_f_op_f32(var_0.e.x * 1524f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) * -260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.e.x, -1337f, global2.x)) - -2072f)), var_0.e.x));
    var var_2 = var_1.e;
    let var_3 = Struct_1(-(vec4<i32>(-1i) * -(~vec4<i32>(var_1.b, 11413i, 47032i, 10001i))), reverseBits(u_input.a), vec2<i32>(max(_wgslsmith_mod_i32(-3186i, -18748i), -(i32(-1i) * -57231i)), ~var_1.a.x), select(~(~1u) >> (_wgslsmith_mod_u32(min(4294967295u, arg_0), firstLeadingBit(1u)) % 32u), 1u, true), var_0.e);
    return ~vec4<i32>(firstTrailingBit(~u_input.c.x ^ (i32(-1i) * -1i)), ~var_1.a.x >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_0.d, var_0.d, var_0.d), abs(vec4<u32>(var_3.d, 4294967295u, arg_0, var_1.d))) % 32u), countOneBits(firstTrailingBit(u_input.d.x)), -38382i);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-reverseBits(func_3(u_input.b)), ~(~_wgslsmith_sub_i32(u_input.c.x, ~u_input.d.x)), firstTrailingBit(vec2<i32>(-36006i, ~(~1i))), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), 15880u) >> (_wgslsmith_div_u32(u_input.e.x, ~21719u) % 32u), u_input.e.x), vec3<f32>(_wgslsmith_f_op_f32(trunc(373f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(2637f)), _wgslsmith_f_op_f32(1430f + 382f))) + _wgslsmith_f_op_f32(select(-709f, -249f, select(global2.x, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-308f)))))));
    global0 = array<vec4<u32>, 6>();
    global2 = vec2<bool>(abs(u_input.d.x) <= -u_input.c.x, !(!all(vec2<bool>(true, false))));
    var var_1 = _wgslsmith_f_op_f32(min(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.e.x + -2179f))))))));
    let var_2 = var_0;
    return Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.a, vec4<i32>(var_0.a.x, var_0.a.x, var_2.b, 50272i)), -vec4<i32>(u_input.d.x, var_2.a.x, 16413i, var_2.b)), reverseBits(u_input.c)), firstLeadingBit(vec4<i32>(1i, var_2.c.x, 0i, ~u_input.d.x))), var_2.a.x, -vec2<i32>(var_0.a.x, select(5526i, 1i, any(vec2<bool>(false, global2.x)))), _wgslsmith_mult_u32(27743u, u_input.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.e * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2447f, var_0.e.x, 419f), var_0.e)) - _wgslsmith_f_op_vec3_f32(var_0.e - var_0.e)))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.x, 524f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(var_0.e));
    var var_3 = func_2();
    global1 = var_3.c.x;
    return select(vec2<bool>(!(u_input.d.x >= 2059i), !global2.x), !vec2<bool>(global2.x, (var_3.b <= -7398i) & true), vec2<bool>(51622i < reverseBits(firstTrailingBit(14100i)), global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 6>();
    global1 = 36382i;
    global2 = select(select(!select(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, true), global2.x), select(vec2<bool>(true, false), vec2<bool>(false, global2.x), global2.x), global2.x | true), select(!select(vec2<bool>(false, false), vec2<bool>(global2.x, false), global2.x), !(!vec2<bool>(global2.x, false)), !select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x))), !(!vec2<bool>(false, global2.x))), !(!select(vec2<bool>(false, global2.x), !vec2<bool>(global2.x, global2.x), global2.x && true)), all(!select(vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), vec2<bool>(true, true)), func_1(Struct_1(u_input.c, -28908i, u_input.d.zx, 1u, vec3<f32>(717f, 830f, -1000f))))));
    var var_0 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -u_input.a << (~u_input.e.x % 32u), 1i, 1i), vec4<i32>(-3133i, reverseBits(_wgslsmith_mod_i32(u_input.c.x, -50108i)), -1i, _wgslsmith_dot_vec4_i32(u_input.c ^ u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, -3941i, u_input.d.x)))), u_input.a, -vec2<i32>(i32(-1i) * -u_input.c.x, -23747i), 0u << (0u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-656f, 338f, 1586f)))))));
    global1 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(var_0.e.x * 951f), _wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(round(-260f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1042f, var_0.e.x, 1737f, var_0.e.x))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(func_2().e.x, -714f, _wgslsmith_f_op_f32(-244f - var_0.e.x), _wgslsmith_f_op_f32(var_0.e.x * var_0.e.x))))));
}

