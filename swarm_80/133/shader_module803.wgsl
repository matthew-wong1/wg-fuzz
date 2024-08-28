struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec2<i32>;

var<private> global2: u32 = 28822u;

var<private> global3: Struct_2;

var<private> global4: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    var var_0 = Struct_2(-31603i, global3.b);
    global1 = ~select(u_input.d, vec2<i32>(-2147483647i, _wgslsmith_mult_i32(51158i, u_input.a.x) ^ 70959i), !(any(global3.b) | all(global3.b)));
    var var_1 = ~u_input.c;
    var var_2 = Struct_2(i32(-1i) * -41484i, select(vec4<bool>(global3.b.x, any(var_0.b.xyy) != true, global0[_wgslsmith_index_u32(~1u, 14u)], ~26513u < u_input.b.x), global3.b, select(global3.b, select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], true, false, true), vec4<bool>(true, true, false, var_0.b.x), var_0.b), !vec4<bool>(false, var_0.b.x, global0[_wgslsmith_index_u32(0u, 14u)], var_0.b.x), any(global3.b)), select(global3.b, vec4<bool>(true, false, false, var_0.b.x), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 14u)]))));
    global0 = array<bool, 14>();
    return true;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    global1 = arg_1.yy;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3));
    var var_1 = Struct_2(-29209i, vec4<bool>(!(!(0i <= global3.a)), !(!select(global0[_wgslsmith_index_u32(arg_2, 14u)], global3.b.x, global3.b.x)), func_3(), _wgslsmith_div_f32(-592f, _wgslsmith_f_op_f32(-var_0.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -931f)));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.x, -2147483647i, global1.x, 12104i) & firstTrailingBit(arg_1 & vec4<i32>(-2147483647i, arg_1.x, global1.x, global3.a)), arg_1), -(_wgslsmith_sub_vec4_i32(arg_1, arg_1) & firstTrailingBit(arg_1)) ^ -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 0i, 2147483647i, arg_1.x), reverseBits(vec4<i32>(1i, var_1.a, -1i, global1.x)), arg_1));
    global2 = _wgslsmith_sub_u32(arg_2, 31818u);
    return _wgslsmith_dot_vec4_u32(max(select(vec4<u32>(4294967295u, arg_2, u_input.b.x, 1u), vec4<u32>(arg_2, u_input.c, u_input.b.x, arg_2), vec4<bool>(global3.b.x, var_1.b.x, global0[_wgslsmith_index_u32(52900u, 14u)], false)) << (~vec4<u32>(u_input.c, 55561u, u_input.c, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.c, 0u, arg_2, u_input.c), vec4<u32>(9607u, 72797u, u_input.c, arg_2)), firstTrailingBit(vec4<u32>(arg_2, u_input.b.x, 1u, 1u)))), vec4<u32>(~(~1u), ~(arg_2 >> (arg_2 % 32u)), _wgslsmith_mult_u32(1u, arg_2 & u_input.b.x), _wgslsmith_mod_u32(8932u, 4294967295u) >> ((u_input.c ^ 8334u) % 32u))) >> ((~(~0u << (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, arg_2), ~vec3<u32>(34758u, u_input.c, 0u))) % 32u);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(global3.a, abs(_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.a.x, global3.a, u_input.d.x, global3.a) << (vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(2954i, -2147483647i, -2147483647i, global3.a), vec4<i32>(global1.x, global3.a, global1.x, u_input.d.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(9491i, global1.x, global3.a, 0i), abs(vec4<i32>(1i, u_input.d.x, 77598i, 0i))))));
    global2 = _wgslsmith_div_u32(_wgslsmith_sub_u32(6039u, _wgslsmith_dot_vec4_u32(vec4<u32>(29050u, func_2(1i, vec4<i32>(var_0.b.x, var_0.a, u_input.a.x, 1i), u_input.b.x, vec3<f32>(922f, -154f, 223f)), ~u_input.b.x, countOneBits(u_input.c)), ~(vec4<u32>(0u, 1u, 0u, 37119u) << (vec4<u32>(u_input.b.x, 1u, 42305u, 51253u) % vec4<u32>(32u))))), u_input.c);
    global2 = u_input.c;
    global1 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.d.x, -15028i), ~27391i), _wgslsmith_add_i32(~global3.a, 2147483647i)) >> (~(u_input.b & u_input.b) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.d, ~vec2<i32>(_wgslsmith_mod_i32(var_0.b.x, 14604i), select(45959i, global1.x, false))));
    global3 = Struct_2(1i, select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(21377u, 14u)], global3.b.x, global3.b.x)), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 14u)], true, global0[_wgslsmith_index_u32(u_input.c, 14u)], false), vec4<bool>(global3.b.x, global3.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false), global3.b), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], true, global3.b.x, true), any(vec2<bool>(global3.b.x, true))), !select(global3.b, vec4<bool>(global3.b.x, false, true, global3.b.x), global0[_wgslsmith_index_u32(u_input.c, 14u)]), !(!global3.b)), global3.b.x));
    return Struct_3(_wgslsmith_mod_u32(_wgslsmith_mod_u32(8492u, ~_wgslsmith_div_u32(51432u, 100523u)), ~_wgslsmith_mult_u32(u_input.b.x << (0u % 32u), _wgslsmith_add_u32(u_input.c, u_input.b.x))), Struct_2(-2147483647i, vec4<bool>(any(global3.b), !any(global3.b), false, !(global3.b.x | true))), 0i, firstTrailingBit(abs(firstLeadingBit(firstLeadingBit(u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(54750u, var_0.b, ~(-global1.x) | 5360i, var_0.a);
    var var_1 = Struct_3(1u, var_0.b, -global1.x, var_0.a);
    var_1 = func_1();
    var var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(0i, firstLeadingBit(~(-(vec4<i32>(4284i, global3.a, 19934i, var_2.a) ^ vec4<i32>(var_0.c, -1i, -18808i, var_0.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-633f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-639f, 344f))))), u_input.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(1053f)), -1494f, _wgslsmith_f_op_f32(abs(488f)), 139f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1795f, 662f, 970f, -1264f))), true)))));
}

