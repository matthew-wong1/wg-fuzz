struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 21460u, 87255u);

var<private> global1: u32 = 4294967295u;

var<private> global2: vec2<i32>;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(1465f, -1436f, 226f), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-1157f, 510f, 1169f), vec4<i32>(0i, 7278i, -38807i, -75373i), true, 1i), vec3<u32>(83154u, 16779u, 1u), 424f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> u32 {
    global2 = abs(abs(countOneBits(~vec2<i32>(global2.x, arg_1.c.x))));
    var var_0 = !select(-254f != _wgslsmith_f_op_f32(sign(-1539f)), !arg_1.d, arg_1.d);
    global0 = ~(~select(vec3<u32>(_wgslsmith_mult_u32(global3.c.x, 24361u), global0.x, _wgslsmith_sub_u32(arg_2.b.a.x, 0u)), global3.c, arg_2.b.d));
    global3 = arg_2;
    global3 = arg_2;
    return global0.x;
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_mod_i32(global3.b.e, 2147483647i) >> (_wgslsmith_sub_u32(countOneBits(global0.x), reverseBits(global0.x | abs(global0.x))) % 32u);
    var var_1 = global3.a.x;
    let var_2 = -(global3.b.c.x >> (firstTrailingBit(global0.x ^ 58794u) % 32u)) << (35066u % 32u);
    var_1 = global3.b.b.x;
    var var_3 = (global3.c ^ max(~(~global3.c), vec3<u32>(global0.x & 22370u, global3.b.a.x, ~u_input.a.x))) << (reverseBits(~((vec3<u32>(24590u, global3.b.a.x, global0.x) | vec3<u32>(global3.c.x, global0.x, global3.c.x)) << (~vec3<u32>(global3.c.x, u_input.a.x, 17650u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    return global3.c;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = global3.b.b;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(global3.a)), Struct_1(~min(vec2<u32>(global3.b.a.x, 780u), vec2<u32>(global0.x, global0.x)) ^ ~_wgslsmith_div_vec2_u32(global0.yz, vec2<u32>(4294967295u, 0u)), global3.b.b, select(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global2.x, global3.b.e, global3.b.e) >> (vec4<u32>(41931u, u_input.a.x, global3.c.x, 13168u) % vec4<u32>(32u)), global3.b.c), abs(vec4<i32>(-23914i, global3.b.e, global3.b.c.x, 6016i)), vec4<bool>(global3.a.x < 1081f, all(vec2<bool>(true, global3.b.d)), global3.b.d, !global3.b.d)), !select(false, any(vec3<bool>(true, global3.b.d, false)), global3.b.e < -1821i), 2147483647i), _wgslsmith_mult_vec3_u32(func_3(!select(vec3<bool>(global3.b.d, false, global3.b.d), vec3<bool>(true, true, false), vec3<bool>(global3.b.d, true, false))), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(8440u, global3.b.a.x, 969u)), global3.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1193f - global3.a.x) - -527f)) + _wgslsmith_div_f32(-628f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))));
    var var_2 = global3.b;
    global1 = ~(~func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global3.a.x, -690f)), Struct_1(u_input.a, vec3<f32>(var_1.d, 534f, -2170f), global3.b.c, true, global2.x), Struct_2(vec3<f32>(-791f, -919f, arg_0.x), var_1.b, vec3<u32>(92860u, global0.x, 0u), var_2.b.x), var_2.a.x >> (var_2.a.x % 32u)) ^ func_1(_wgslsmith_f_op_vec3_f32(global3.b.b - _wgslsmith_div_vec3_f32(global3.a, vec3<f32>(701f, 2240f, global3.b.b.x))), global3.b, Struct_2(_wgslsmith_f_op_vec3_f32(var_1.a * var_2.b), var_1.b, reverseBits(vec3<u32>(0u, 28618u, 1u)), -1000f), 0u ^ var_2.a.x));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a)) * global3.a)), Struct_1(global3.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)) * vec3<f32>(_wgslsmith_f_op_f32(-262f * 515f), _wgslsmith_f_op_f32(arg_0.x * -1443f), var_1.d)), -var_2.c, true, -countOneBits(~global3.b.c.x)), firstTrailingBit(reverseBits(firstLeadingBit(max(vec3<u32>(global3.c.x, 16781u, 9073u), vec3<u32>(52675u, 1u, 0u))))), 764f);
    return var_2.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> vec3<bool> {
    global0 = vec3<u32>(u_input.a.x, ~4294967295u, _wgslsmith_add_u32(func_3(vec3<bool>(arg_3.b.b.x <= arg_1.b.x, true, !arg_1.d)).x, ~1u >> (~_wgslsmith_add_u32(arg_1.a.x, 41465u) % 32u)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, arg_3.d) - -1838f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.b.x) - -1567f))) - -1132f);
    global2 = vec2<i32>(-arg_3.b.e, ~countOneBits(_wgslsmith_dot_vec4_i32(arg_3.b.c | vec4<i32>(arg_3.b.c.x, global2.x, 37347i, arg_3.b.c.x), ~arg_3.b.c)));
    return vec3<bool>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(arg_1.c << (vec4<u32>(0u, global0.x, 7641u, u_input.a.x) % vec4<u32>(32u)), abs(global3.b.c)), arg_1.c.x) <= reverseBits((66484i | global2.x) & (arg_1.e << (4294967295u % 32u))), all(vec4<bool>(!(global3.b.e < 8311i), any(vec4<bool>(arg_1.d, true, arg_1.d, arg_3.b.d)), !arg_3.b.d, arg_3.b.d)), all(!vec4<bool>(any(vec3<bool>(false, arg_3.b.d, true)), global3.b.d, true, false || arg_3.b.d)));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    global0 = ~(~global3.c ^ global3.c);
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1657f, global3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.a.x, -1317f, global3.b.d))), global3.b.b.x) + _wgslsmith_f_op_vec3_f32(step(global3.a, vec3<f32>(global3.a.x, _wgslsmith_div_f32(690f, global3.b.b.x), _wgslsmith_f_op_f32(ceil(global3.b.b.x)))))), Struct_1(vec2<u32>(global0.x, 16258u), global3.b.b, abs(-vec4<i32>(global3.b.e, global2.x, global3.b.c.x, global2.x) >> ((vec4<u32>(0u, global0.x, global3.b.a.x, 10165u) << (vec4<u32>(60814u, 7431u, 62900u, 58305u) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_1.x, countOneBits(1i)), global3.c, -1390f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-333f - _wgslsmith_div_f32(-234f, 437f)) + global3.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1144f + global3.d)), _wgslsmith_f_op_f32(-100f * _wgslsmith_f_op_f32(-var_0.a.x)))), -872f, 403f));
    var var_2 = var_1.x;
    global2 = var_0.b.c.wz >> (func_3(arg_1).zx % vec2<u32>(32u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~global3.b.a.x;
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-global3.b.b), global3.b, select(global3.c, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(76477u, global0.x, 0u), ~vec3<u32>(global3.b.a.x, 50003u, global0.x)), vec3<u32>(~1u, func_1(vec3<f32>(global3.d, global3.a.x, global3.b.b.x), Struct_1(vec2<u32>(0u, global0.x), global3.a, global3.b.c, false, -1703i), Struct_2(vec3<f32>(global3.d, 258f, global3.b.b.x), global3.b, vec3<u32>(4294967295u, global3.b.a.x, global0.x), 905f), 3373u), ~u_input.a.x)), true), global3.b.b.x);
    let var_1 = func_5(!var_0.b.d == (global3.b.b.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(636f * -1145f))), func_4(~(~func_2(vec2<f32>(249f, var_0.b.b.x))), var_0.b, -vec2<i32>(_wgslsmith_div_i32(16413i, var_0.b.e), abs(1i)), Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-217f, global3.b.b.x, var_0.a.x))), Struct_1(vec2<u32>(4294967295u, u_input.a.x), vec3<f32>(1134f, var_0.b.b.x, -1684f), -vec4<i32>(var_0.b.c.x, global2.x, 2147483647i, 12539i), false, min(global3.b.c.x, -2147483647i)), global3.c, var_0.d)));
    let var_2 = vec4<i32>(max(-var_1.b.e, -1i), _wgslsmith_div_i32(global3.b.e, -(~global2.x)) | ~(~global3.b.c.x), _wgslsmith_mult_i32(~global3.b.c.x << ((_wgslsmith_div_u32(0u, var_0.b.a.x) << (u_input.a.x % 32u)) % 32u), ~53213i), ~(-9834i));
    var var_3 = ~var_1.b.c.zwx;
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1128f, -691f, var_0.a.x) + vec3<f32>(898f, var_0.a.x, -227f)))))), func_5(var_1.b.d, func_4(min(~var_0.c.x, 0u ^ global3.b.a.x), global3.b, -_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), var_2.xz), func_5(false && var_1.b.d, !vec3<bool>(global3.b.d, true, global3.b.d)))).b, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.b.b.x, global3.a.x))))));
    let var_5 = 52218u;
    let x = u_input.a;
    s_output = StorageBuffer(10693u, var_4.c, ~var_2, _wgslsmith_mult_i32(countOneBits(var_0.b.e), -_wgslsmith_add_i32(var_3.x >> (var_0.b.a.x % 32u), abs(13435i))));
}

