struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(1u, 0u, true, vec3<i32>(2147483647i, -30489i, 2028i), 0u);

var<private> global2: array<bool, 32>;

var<private> global3: bool = false;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global1 = arg_0;
    let var_0 = Struct_1(u_input.b.x, min(4294967295u, ~global0.b) ^ ~arg_0.e, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x, 77795u), 32u)], ~global0.d, arg_1.x);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f * 1032f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(249f, -136f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1104f + -407f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -451f)))));
    let var_2 = u_input.b;
    let var_3 = u_input.b;
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: i32) -> vec3<bool> {
    var var_0 = vec3<bool>(!(!any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 32u)], true, global2[_wgslsmith_index_u32(70450u, 32u)]))), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(98945u, 68134u), 32u)], global0.c);
    var var_1 = vec4<u32>(u_input.b.x, ~(arg_1.x >> (_wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, global1.e, arg_1.x), arg_1.yww), select(vec3<u32>(global0.a, 4294967295u, 59042u), vec3<u32>(4294967295u, 0u, 0u), vec3<bool>(global1.c, false, arg_2.x))) % 32u)), 27258u, _wgslsmith_dot_vec3_u32(~abs(arg_1.yzz), max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b, 0u, 33638u), vec3<u32>(arg_1.x, global1.b, 27211u)), select(vec3<u32>(global0.b, global1.b, global0.b), vec3<u32>(9606u, 0u, arg_0.b), !vec3<bool>(global1.c, true, true)))));
    let var_2 = Struct_1(min(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(arg_1.zyz, var_1.wyz), 1u), 0u), firstLeadingBit(~global0.b), false, arg_0.d | _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.d, vec3<i32>(19556i, -2147483647i, -1i)), global0.d), 19346u);
    let var_3 = Struct_1(abs(_wgslsmith_dot_vec2_u32(~var_1.yw, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b, 4294967295u), vec2<u32>(22307u, var_2.a), vec2<u32>(arg_1.x, var_1.x)))), u_input.b.x, var_2.c, _wgslsmith_clamp_vec3_i32(global1.d, global0.d, func_2(Struct_1(~48627u, _wgslsmith_div_u32(global0.a, arg_1.x), arg_2.x, firstTrailingBit(vec3<i32>(-1i, -3297i, -14469i)), firstTrailingBit(var_1.x)), ~_wgslsmith_mod_vec3_u32(var_1.yxx, vec3<u32>(1u, var_2.a, arg_0.e))).d), ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_1.x, 90734u), ~var_2.a));
    var var_4 = 43249u << (select((4294967295u >> (~global0.a % 32u)) ^ (_wgslsmith_add_u32(arg_1.x, arg_1.x) >> (global0.e % 32u)), 16979u, true) % 32u);
    return select(vec3<bool>(any(vec3<bool>(true, global1.c, any(vec3<bool>(global1.c, global2[_wgslsmith_index_u32(var_3.b, 32u)], var_3.c)))), true, !((true & var_2.c) || true)), vec3<bool>(any(!(!vec3<bool>(true, global1.c, var_2.c))), global1.c, global1.c), select(vec3<bool>(true, true, func_2(Struct_1(u_input.b.x, var_1.x, true, var_2.d, var_3.e), vec3<u32>(u_input.b.x, 1u, 0u)).c && false), vec3<bool>(!global2[_wgslsmith_index_u32(51927u, 32u)], all(!vec4<bool>(var_3.c, false, var_3.c, true)), true), !vec3<bool>(false, true | arg_2.x, arg_3 < -1i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<i32> {
    global3 = all(select(select(select(vec3<bool>(true, global0.c, global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(global0.c, arg_1.c, true), true), vec3<bool>(true, global2[_wgslsmith_index_u32(127614u, 32u)], false), true), func_3(func_2(arg_1, vec3<u32>(7669u, 1u, 5830u)), u_input.b & u_input.b, vec2<bool>(arg_1.c, true), _wgslsmith_add_i32(global1.d.x, global0.d.x)), true)) && true;
    global2 = array<bool, 32>();
    let var_0 = !vec3<bool>(all(!func_3(Struct_1(22304u, 1u, arg_1.c, arg_1.d, global1.e), u_input.b, vec2<bool>(true, false), -2147483647i)), all(func_3(Struct_1(66699u, 0u, global2[_wgslsmith_index_u32(85413u, 32u)], vec3<i32>(global0.d.x, 2147483647i, u_input.c.x), 4294967295u), ~u_input.b, vec2<bool>(false, false), max(arg_1.d.x, -30083i))), false);
    let var_1 = arg_1;
    let var_2 = select(vec2<u32>(abs(firstLeadingBit(global1.e) | var_1.e), ~4294967295u), select(vec2<u32>(u_input.b.x, 4294967295u), ~min(~vec2<u32>(4294967295u, 18393u), u_input.b.zy), func_3(Struct_1(select(var_1.a, 15068u, global2[_wgslsmith_index_u32(15922u, 32u)]), 1u, true, global0.d, 4294967295u), (u_input.b ^ u_input.b) ^ vec4<u32>(23386u, var_1.e, u_input.b.x, var_1.e), var_0.zz, global1.d.x).xy), select(select(func_3(func_2(Struct_1(var_1.a, global1.e, global2[_wgslsmith_index_u32(112590u, 32u)], arg_1.d, var_1.a), u_input.b.xxy), abs(vec4<u32>(0u, global1.a, global1.e, var_1.a)), func_3(var_1, vec4<u32>(arg_1.a, arg_1.b, arg_1.b, 63689u), var_0.xy, -25137i).yz, var_1.d.x).zx, select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_1.c), vec2<bool>(var_0.x, global2[_wgslsmith_index_u32(1u, 32u)])), vec2<bool>(true, select(true, true, global0.c))), func_3(func_2(func_2(Struct_1(arg_1.a, var_1.e, false, arg_0, global0.e), u_input.b.zzy), u_input.b.xxw), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), countOneBits(u_input.b), abs(u_input.b)), vec2<bool>(true, var_1.d.x >= -2643i), ~var_1.d.x >> (~1u % 32u)).yx, var_0.xy));
    return -_wgslsmith_sub_vec3_i32(~global0.d ^ ~arg_0, global0.d) | abs(arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    var var_0 = arg_0;
    global1 = arg_0;
    let var_1 = Struct_1(min(abs(0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.e, arg_2.e, arg_2.e), vec3<u32>(_wgslsmith_clamp_u32(30860u, 15730u, 0u), ~var_0.e, ~18354u))), 21197u, !(func_2(arg_2, u_input.b.yyz | vec3<u32>(34159u, 16748u, var_0.b)).e <= ~var_0.a), global0.d, 1u);
    let var_2 = arg_0;
    var var_3 = func_2(func_2(arg_0, _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 13071u, 1u), firstLeadingBit(vec3<u32>(var_0.b, 4294967295u, arg_2.b)), ~vec3<u32>(var_2.a, 1u, global0.a))), _wgslsmith_mult_vec3_u32(~((u_input.b.zww & u_input.b.yzz) & u_input.b.wwz), ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, global0.a), u_input.b.yyz), vec3<u32>(u_input.b.x, 28590u, 0u))));
    return all(!arg_1.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    global3 = !any(!vec3<bool>(any(vec4<bool>(global1.c, false, global0.c, global1.c)), global1.c, global0.c));
    global3 = global0.c && func_4(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 1u, 1u), countOneBits(vec4<u32>(u_input.b.x, 9928u, u_input.b.x, 95279u))), 13924u, all(!vec2<bool>(true, global0.c)), -vec3<i32>(2147483647i, 39151i, u_input.a.x), ~_wgslsmith_mult_u32(1u, 4294967295u)), !select(vec3<bool>(global0.c, false, global2[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<bool>(false, global1.c, global2[_wgslsmith_index_u32(global0.e, 32u)]), select(vec3<bool>(false, true, false), vec3<bool>(true, true, global0.c), vec3<bool>(false, global2[_wgslsmith_index_u32(global0.a, 32u)], true))), Struct_1(4225u, global1.a, !select(false, false, false), abs(func_1(global0.d, Struct_1(4294967295u, 0u, global0.c, global0.d, global1.b))), ~(~global0.e)));
    let var_1 = global1.d.x;
    global2 = array<bool, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_mod_u32(~1481u, _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mult_u32(64092u, global0.a)), 11839u, _wgslsmith_dot_vec2_u32(u_input.b.wz, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 68474u), u_input.b.zy)))), global1.b, -17325i);
}

