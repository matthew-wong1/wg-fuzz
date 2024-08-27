struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b.x, min(u_input.b, ~global1.a), 37408u), vec3<u32>(~u_input.c.x, ~_wgslsmith_mult_u32(reverseBits(global1.a), ~global1.a), _wgslsmith_mod_u32(u_input.d.x, firstLeadingBit(1u))), vec3<u32>(u_input.d.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(3271u, global1.b.x), global1.b, false), vec2<u32>(50549u, global1.b.x)), global1.a), countOneBits(select(~global1.a, 41256u, true))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(738f, -1534f, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1444f + 2568f) + _wgslsmith_f_op_f32(sign(1221f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(223f))))));
    var var_2 = vec2<bool>(any(vec2<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(global1.b.x, global1.b.x) > 1u)), !any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), any(vec4<bool>(true, true, true, false)))));
    global0 = ~1u;
    let var_3 = var_2.x && any(vec3<bool>(var_2.x, false, select(var_2.x, -459f > var_1.x, var_2.x)));
    return 1i;
}

fn func_4(arg_0: i32) -> u32 {
    var var_0 = 1f;
    let var_1 = Struct_5(310f, all(vec2<bool>(any(vec4<bool>(false, false, false, false)), false & (u_input.a > u_input.a))), Struct_2(u_input.d.x, _wgslsmith_div_vec2_u32(vec2<u32>(global1.b.x, select(25583u, 0u, false)), vec2<u32>(u_input.b, u_input.d.x) << (reverseBits(vec2<u32>(global1.a, 1u)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1223f, -827f, 707f) - vec3<f32>(814f, -1027f, 167f)), vec3<f32>(631f, -215f, 893f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, -1730f, -1009f)))));
    let var_2 = Struct_4(var_1.c.a);
    var var_3 = min(-vec3<i32>(15613i, -max(u_input.e.x, arg_0), ~(~arg_0)), -firstLeadingBit(-vec3<i32>(29447i, -35418i, 2147483647i)));
    var var_4 = Struct_3(select(vec4<bool>(any(select(vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, var_1.b))), true, var_1.b, all(select(vec4<bool>(true, true, true, var_1.b), vec4<bool>(false, false, var_1.b, false), var_1.b))), !select(select(vec4<bool>(false, var_1.b, false, var_1.b), vec4<bool>(var_1.b, true, false, true), vec4<bool>(var_1.b, var_1.b, true, true)), select(vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(true, var_1.b, var_1.b, false), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), false), _wgslsmith_mod_u32(38228u, 4294967295u) > max(_wgslsmith_mod_u32(9022u, u_input.b), ~u_input.c.x)));
    return 38908u;
}

fn func_2() -> Struct_5 {
    global0 = _wgslsmith_clamp_u32(reverseBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(74331u, 7280u, 2541u), vec3<u32>(23518u, 4294967295u, u_input.c.x), vec3<u32>(global1.b.x, global1.a, u_input.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c.x, 0u), vec3<u32>(0u, global1.b.x, 1u)))), min(~u_input.c.x >> (func_4(func_3()) % 32u), u_input.d.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(~_wgslsmith_sub_u32(global1.a, 7911u), 13582u), 69664u));
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(189f, 1419f, ~global1.a == _wgslsmith_add_u32(13444u, 18191u)))), true == !any(vec2<bool>(true, false)), Struct_2(1u, ~_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(global1.b.x, 1u)) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 57135u), u_input.c) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(492f * -1922f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-523f)) + 1131f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(2679f, 367f)), 1233f))))));
    var var_1 = vec4<bool>(var_0.b, true, true, true);
    let var_2 = 29294u;
    var var_3 = var_1.x;
    return Struct_5(735f, !var_1.x, var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.d, var_0.d)) + _wgslsmith_f_op_vec3_f32(-var_0.d)))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> vec2<u32> {
    global1 = Struct_2(_wgslsmith_add_u32(~(~4294967295u), reverseBits(global1.a)) >> (u_input.d.x % 32u), func_2().c.b);
    let var_0 = Struct_3(!select(!select(vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, arg_1, true, arg_2.b), vec4<bool>(arg_1, true, arg_1, true)), !select(vec4<bool>(arg_2.b, arg_1, true, arg_2.b), vec4<bool>(arg_1, arg_2.b, false, false), false), !vec4<bool>(arg_1, false, arg_2.b, true)));
    let var_1 = ~arg_2.c.b;
    global2 = array<Struct_1, 14>();
    global0 = 15166u;
    return ~firstTrailingBit(reverseBits(~vec2<u32>(0u, 9364u)) ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.x, global1.a), _wgslsmith_mod_vec2_u32(vec2<u32>(36790u, var_1.x), global1.b)));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(abs(~u_input.c.x), ~_wgslsmith_add_vec2_u32(func_5(-1503f, 2147483647i <= u_input.a, func_2(), _wgslsmith_f_op_f32(sign(260f))), ~vec2<u32>(0u, 1u)));
    let var_1 = func_2();
    let var_2 = func_2().c;
    let var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(30448u, 1u, var_1.c.b.x, 13678u), vec4<u32>(47008u, var_0.b.x, global1.a, 46577u)) << (abs(vec4<u32>(var_2.a, var_1.c.b.x, 36666u, 1u)) % vec4<u32>(32u))), ~vec4<u32>(~0u, ~0u, var_1.c.b.x << (var_0.b.x % 32u), 33249u)), _wgslsmith_mult_vec4_u32(select(_wgslsmith_sub_vec4_u32(max(vec4<u32>(var_1.c.b.x, 4294967295u, 15241u, var_0.b.x), vec4<u32>(0u, u_input.c.x, u_input.d.x, 17035u)), vec4<u32>(4294967295u, 4294967295u, 0u, var_1.c.a)), vec4<u32>(firstTrailingBit(0u), max(global1.a, 0u), firstLeadingBit(u_input.d.x), ~var_1.c.b.x), vec4<bool>(false, all(vec3<bool>(true, true, var_1.b)), -48317i != u_input.e.x, true)), vec4<u32>(u_input.d.x, func_5(var_1.d.x, var_1.b, func_2(), _wgslsmith_f_op_f32(-1936f * var_1.d.x)).x, func_5(var_1.d.x, true, var_1, func_2().d.x).x, 1u)));
    global0 = _wgslsmith_dot_vec4_u32(firstTrailingBit(firstTrailingBit(~_wgslsmith_add_vec4_u32(var_3, var_3))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, ~29359u), var_1.c.b.x, 4294967295u, ~(~7104u)), var_3 | (var_3 >> (_wgslsmith_mod_vec4_u32(var_3, vec4<u32>(1u, 24284u, 25662u, var_0.a)) % vec4<u32>(32u)))));
    return StorageBuffer(~48434u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1166f))) + _wgslsmith_f_op_f32(-var_1.a)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-56037i, u_input.a, -u_input.e.x, ~(-14801i)), select(vec4<i32>(-37185i, -68209i, 84998i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 10515i, -78331i, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, 30338i)), var_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, var_1.d.x, var_1.d.x, 200f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~u_input.e.x);
    global2 = array<Struct_1, 14>();
    var var_1 = firstTrailingBit(vec3<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.b), countOneBits(_wgslsmith_div_u32(0u, global1.a)), u_input.c.x) >> (~(~vec3<u32>(35726u, u_input.b, 1u) >> (~vec3<u32>(4294967295u, 1u, 17828u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = !(!vec4<bool>(false, u_input.d.x <= ~global1.a, false, false));
    var var_3 = vec2<i32>(var_0, 1i);
    var var_4 = 2240f;
    let x = u_input.a;
    s_output = func_1();
}

