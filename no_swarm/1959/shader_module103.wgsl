struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -42108i;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(0u, 15323u, 0u), vec3<f32>(-2262f, 821f, -825f), Struct_1(-413f, vec4<i32>(0i, 18936i, 1i, i32(-2147483648))));

var<private> global2: array<vec4<i32>, 28>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_3) -> vec4<i32> {
    global2 = array<vec4<i32>, 28>();
    let var_0 = 22305i;
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~(0u ^ _wgslsmith_mult_u32(global1.a.x, 56554u)), ~arg_1.a.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 1u), u_input.a.x, 82597u)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_1.a.x, global1.a.x), _wgslsmith_mult_u32(arg_1.a.x, arg_3.a.x), ~arg_3.a.x), abs(vec3<u32>(4294967295u, 4294967295u, arg_3.a.x))), ~max(vec3<u32>(arg_1.a.x, u_input.a.x, 23682u), global1.a >> (vec3<u32>(0u, u_input.a.x, arg_1.a.x) % vec3<u32>(32u)))));
    var var_2 = -2113f;
    let var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1523f), -1157f, 876f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c.a)))), _wgslsmith_clamp_u32(reverseBits(_wgslsmith_add_u32(~global1.a.x, 11062u)), arg_3.a.x, 12256u), Struct_3(select(~arg_1.a, ~vec3<u32>(62392u, u_input.a.x, 39426u) & arg_1.a, arg_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1443f)), 917f, _wgslsmith_f_op_f32(max(-1130f, -582f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c.a, -1004f, arg_1.b.x) - _wgslsmith_f_op_vec3_f32(-arg_1.b))), Struct_1(-532f, global1.c.b)));
    return vec4<i32>(55129i, 26089i, arg_1.c.b.x, -1i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>) -> f32 {
    global0 = arg_0.x;
    var var_0 = vec4<u32>(select(~4294967295u, 1u, true), 62601u, 0u, ~_wgslsmith_dot_vec4_u32((vec4<u32>(1u, 20420u, u_input.a.x, global1.a.x) & vec4<u32>(u_input.a.x, global1.a.x, 72977u, 4294967295u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(41671u, u_input.a.x, 105514u, u_input.a.x), vec4<u32>(6497u, global1.a.x, 1882u, u_input.a.x)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(global1.a.x, global1.a.x, 1u, 4294967295u), vec4<u32>(global1.a.x, 4294967295u, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, 0u, 34381u, 1u))));
    var var_1 = arg_1.zwy;
    let var_2 = vec2<u32>(abs(~1u), _wgslsmith_sub_u32(5858u >> (_wgslsmith_mult_u32(var_0.x, ~var_0.x) % 32u), ~1u));
    global0 = ~countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(~global1.c.b.x, global1.c.b.x), _wgslsmith_div_i32(i32(-1i) * -2147483647i, i32(-1i) * -5579i)));
    return -113f;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = !arg_0.a.x;
    var var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(floor(694f)), arg_3.b.x, -2031f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-478f, arg_3.b.x)))))), 0u, arg_3);
    var_1 = Struct_5(var_1.a, abs(_wgslsmith_div_u32(31703u, _wgslsmith_mult_u32(4435u, 66807u))), Struct_3(vec3<u32>(arg_3.a.x, ~arg_3.a.x, ~32116u), _wgslsmith_f_op_vec3_f32(select(arg_3.b, _wgslsmith_f_op_vec3_f32(-arg_3.b), false)), Struct_1(-1162f, arg_3.c.b | _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 9029i, global1.c.b.x, -2147483647i)))));
    var var_2 = ~_wgslsmith_mult_vec3_i32((abs(arg_3.c.b.ywy) ^ ~vec3<i32>(arg_2, arg_3.c.b.x, 2147483647i)) >> (global1.a % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(~u_input.b.x, arg_2 >> (51182u % 32u), -81120i), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, var_1.c.c.b.x) | arg_1.b.x, -7492i));
    var_0 = all(select(!vec2<bool>(arg_0.a.x, var_1.a.x != 631f), arg_0.a, arg_0.a.x));
    return vec3<i32>(-1i, global1.c.b.x, _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(1i, 764i, var_1.c.c.b.x)), min(arg_1.b.zzy, vec3<i32>(2147483647i, var_1.c.c.b.x, 0i))), arg_3.c.b.zww));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, _wgslsmith_div_u32(global1.a.x, 5838u), _wgslsmith_div_u32(28091u, 17128u)), _wgslsmith_div_vec3_u32(global1.a, ~vec3<u32>(u_input.a.x, 1u, arg_0))) & ~vec3<u32>(~4294967295u | ~u_input.a.x, global1.a.x | (arg_0 | u_input.a.x), 0u);
    return _wgslsmith_sub_vec3_i32(global1.c.b.xzx, func_5(Struct_2(vec2<bool>(false, arg_2.b.x != global1.c.b.x)), Struct_1(_wgslsmith_f_op_f32(func_4(func_3(-58908i, Struct_3(vec3<u32>(1u, 40515u, arg_0), global1.b, global1.c), vec3<bool>(false, true, true), Struct_3(vec3<u32>(global1.a.x, var_0.x, u_input.a.x), arg_1, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -363f, arg_2.a, -906f)))), u_input.b), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_2.b ^ vec4<i32>(arg_2.b.x, u_input.b.x, 2147483647i, 17868i), vec4<i32>(2147483647i, u_input.b.x, -12348i, -16341i)), vec4<i32>(~arg_2.b.x, select(0i, -29947i, false), arg_2.b.x, -38091i)), Struct_3(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 4294967295u)), abs(global1.a)), _wgslsmith_f_op_vec3_f32(abs(global1.b)), global1.c)));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> vec4<u32> {
    var var_0 = false;
    global2 = array<vec4<i32>, 28>();
    let var_1 = -(~(~(-func_2(arg_2, global1.b, global1.c))));
    var var_2 = _wgslsmith_mult_vec2_i32(reverseBits(global1.c.b.yz), global1.c.b.xy);
    let var_3 = select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(~u_input.b.yxw), global1.c.b.yzz), u_input.b.x, any(!arg_1));
    return abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_2, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2, 8567u), ~4294967295u), ~arg_2), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 0u, 0u, 0u)), vec4<u32>(global1.a.x >> (0u % 32u), ~66621u, ~global1.a.x, 32735u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!(false || any(vec4<bool>(false, false, true, true)))), vec4<bool>(select(select(true, false, false), true, global1.c.b.x > 1i) | (0i != ~u_input.b.x), !select(true, false, true) && false, false, true), global1.a.x);
    global1 = Struct_3(vec3<u32>(reverseBits(_wgslsmith_mult_u32(u_input.a.x, 0u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x, 4294967295u), ~global1.a.x), select(var_0.x, global1.a.x, true)) << (((func_1(true, vec4<bool>(false, false, true, false), 33875u).xyx | (vec3<u32>(var_0.x, global1.a.x, u_input.a.x) & global1.a)) << (~(~u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), global1.b, Struct_1(global1.c.a, global2[_wgslsmith_index_u32(~(~85101u) << (global1.a.x % 32u), 28u)]));
    let var_1 = true;
    var_0 = func_1(!(!(!var_1)), vec4<bool>(!select(var_1, any(vec2<bool>(var_1, true)), var_1), var_1, false, true), 4294967295u);
    let var_2 = false;
    var var_3 = vec4<i32>(11922i, u_input.b.x >> (~u_input.a.x % 32u), global1.c.b.x, global1.c.b.x);
    global2 = array<vec4<i32>, 28>();
    var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.b.x, global1.c.a), _wgslsmith_f_op_f32(min(global1.c.a, global1.b.x)))) - global1.b.x)), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 29574u >> (var_0.x % 32u))), ~(~var_0.x) | (~u_input.a.x & 46722u)), global1.b.x, -2147483647i);
}

