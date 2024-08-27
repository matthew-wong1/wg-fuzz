struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(-15373i, 58803i, 47217i, -1i, 1366i, -15033i);

var<private> global1: vec2<i32>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global3: array<i32, 8>;

var<private> global4: array<Struct_3, 14>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global0 = array<i32, 6>();
    global2 = vec2<u32>(max(u_input.b, ~(~select(global2.x, global2.x, false))), min(global2.x, u_input.e));
    let var_0 = Struct_2(4294967295u, Struct_1(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-859f - _wgslsmith_f_op_f32(1000f + -952f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(864f, 1217f), -832f)))), abs(~abs(u_input.a & global2.x)), Struct_1(-425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1557f))), 1000f), select(!vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(true, true), !select(true, true, true)));
    var var_1 = 52862i;
    global4 = array<Struct_3, 14>();
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = func_3();
    let var_1 = ~arg_3;
    let var_2 = Struct_2(22075u, arg_1.e.d, 4294967295u, arg_1.e.d, arg_1.e.e);
    let var_3 = vec3<i32>(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-15222i, global1.x, 19591i), -vec3<i32>(-1i, 2147483647i, -8761i)), ~(-vec3<i32>(-2147483647i, global1.x, 9636i)))), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(29510u, 6u)], ~(-1i ^ arg_3.x)), -25290i);
    let var_4 = _wgslsmith_f_op_f32(1192f * _wgslsmith_f_op_f32(step(634f, _wgslsmith_f_op_f32(arg_1.c.x - -760f))));
    return ~(_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_2.a, 1u, u_input.b, u_input.b)) | vec4<u32>(arg_2, 7370u, var_2.a, 4294967295u), reverseBits(vec4<u32>(60775u, 58541u, 33449u, arg_1.e.c))) & _wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~32786u, _wgslsmith_sub_u32(32363u, 0u), ~var_2.c), firstLeadingBit(vec4<u32>(arg_1.e.c, 0u, 26412u, var_2.c) << (vec4<u32>(u_input.e, 63829u, 11818u, u_input.b) % vec4<u32>(32u)))));
}

fn func_1() -> vec2<u32> {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(7664i & _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(68662u, 8u)], 44050i), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 6u)])), min(vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 8u)], global1.x), vec2<i32>(global1.x, u_input.c))), -(i32(-1i) * -global1.x)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~0u, firstTrailingBit(global2.x)), abs(global2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(83990u, 1u, global2.x, u_input.b), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 30860u), _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, u_input.a, 24720u, 1129u), vec4<u32>(global2.x, u_input.a, u_input.b, 0u)), func_2(Struct_1(-285f, -1818f, 1797f), global4[_wgslsmith_index_u32(u_input.b, 14u)], u_input.e, vec2<i32>(global3[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(global2.x, 6u)]))))), 8u)]);
    var var_1 = all(vec4<bool>(true, ((global3[_wgslsmith_index_u32(30924u, 8u)] & global3[_wgslsmith_index_u32(u_input.e, 8u)]) & firstLeadingBit(-16674i)) > 0i, func_3(), true));
    var var_2 = _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), max(vec3<i32>(u_input.c, global1.x, global3[_wgslsmith_index_u32(1u, 8u)]), vec3<i32>(-41555i, u_input.d, 2147483647i))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(global0[_wgslsmith_index_u32(global2.x, 6u)], 2147483647i, 55928i)), firstTrailingBit(vec3<i32>(u_input.c, 1i, -45314i))), any(vec4<bool>(true, false, true, false))), -select(vec3<i32>(u_input.c, -2147483647i, 12017i) & vec3<i32>(-1i, var_0.x, 0i), -vec3<i32>(var_0.x, var_0.x, -15220i), true)), global1.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(635f * 494f), _wgslsmith_f_op_f32(f32(-1f) * -952f)))), -569f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f + -259f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f - _wgslsmith_f_op_f32(max(-151f, 865f))) - -1186f)));
    return vec2<u32>(~21183u, _wgslsmith_sub_u32(global2.x, ~global2.x & u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstTrailingBit(firstLeadingBit(~func_1())) | ~(~select(select(vec2<u32>(0u, 4237u), vec2<u32>(9486u, 0u), false), ~vec2<u32>(global2.x, global2.x), false));
    var var_0 = vec4<i32>(0i & global0[_wgslsmith_index_u32(global2.x, 6u)], 31215i, min(-35598i, _wgslsmith_dot_vec2_i32(vec2<i32>(19842i, -1i), ~vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b, 6u)]))) << (reverseBits(_wgslsmith_sub_u32(4294967295u, reverseBits(4294967295u))) % 32u), _wgslsmith_div_i32(global1.x & ~(i32(-1i) * -66910i), -2147483647i));
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-abs(-23770i), global0[_wgslsmith_index_u32(u_input.e, 6u)], _wgslsmith_dot_vec2_i32(-var_0.xz, vec2<i32>(var_0.x, var_0.x) | var_0.zx), ~(-global3[_wgslsmith_index_u32(74131u, 8u)])), vec4<i32>(-13504i, min(1i, ~u_input.c), _wgslsmith_sub_i32(var_0.x, -2147483647i), global0[_wgslsmith_index_u32(abs(83160u), 6u)])), abs(vec4<i32>(firstLeadingBit(-25656i), -1i, ~firstTrailingBit(global3[_wgslsmith_index_u32(global2.x, 8u)]), select(global0[_wgslsmith_index_u32(11509u, 6u)] & global3[_wgslsmith_index_u32(34449u, 8u)], _wgslsmith_dot_vec2_i32(var_0.xx, var_0.ww), -1i >= u_input.c))));
    var var_1 = u_input.e;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(622f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-239f)), -828f)) * 1451f), -646f);
    var var_3 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(min(~(~vec3<u32>(20550u, 48840u, u_input.a)), vec3<u32>(4294967295u, 4294967295u, ~u_input.b)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, 35028u, u_input.a)), vec3<u32>(46238u, u_input.e, global2.x)), vec3<u32>(u_input.a & u_input.b, 4294967295u, ~global2.x))), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(abs(vec3<u32>(u_input.b, 1u, u_input.e)) >> (func_2(var_3.d, Struct_3(vec3<f32>(419f, var_2.c, -421f), -175f, var_3.a, Struct_1(917f, 1953f, var_2.c), var_3.e), 8839u, var_0.yy).wxx % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, 1u, 0u), vec3<u32>(0u, 29672u, 4294967295u), vec3<u32>(1u, 83101u, global2.x)) >> ((vec3<u32>(var_3.e.c, global2.x, var_3.e.c) << (vec3<u32>(11418u, 18229u, var_3.e.c) % vec3<u32>(32u))) % vec3<u32>(32u)))), u_input.e);
}

