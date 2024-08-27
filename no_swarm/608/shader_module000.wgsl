struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec2<u32>(54283u, 81109u), 4294967295u, Struct_1(257f, 13932i), false), Struct_3(vec2<u32>(4294967295u, 4294967295u), 0u, Struct_1(849f, 10139i), false), Struct_3(vec2<u32>(0u, 0u), 0u, Struct_1(1073f, 1i), true), Struct_3(vec2<u32>(4294967295u, 0u), 4294967295u, Struct_1(268f, 19512i), true), Struct_3(vec2<u32>(4294967295u, 1u), 51688u, Struct_1(-799f, 11343i), true), Struct_3(vec2<u32>(14120u, 9096u), 0u, Struct_1(-834f, -8137i), false), Struct_3(vec2<u32>(12424u, 4294967295u), 4294967295u, Struct_1(1122f, -1i), true), Struct_3(vec2<u32>(0u, 4294967295u), 32561u, Struct_1(314f, -8906i), true), Struct_3(vec2<u32>(47125u, 22192u), 30122u, Struct_1(-1493f, -4553i), true), Struct_3(vec2<u32>(0u, 0u), 4294967295u, Struct_1(1747f, 24720i), true), Struct_3(vec2<u32>(1u, 1u), 25872u, Struct_1(-1330f, -20807i), false), Struct_3(vec2<u32>(82609u, 31702u), 38167u, Struct_1(-1366f, 0i), false), Struct_3(vec2<u32>(37739u, 4294967295u), 27376u, Struct_1(693f, 84586i), false), Struct_3(vec2<u32>(0u, 2506u), 1u, Struct_1(1135f, -13336i), true), Struct_3(vec2<u32>(46945u, 1u), 4294967295u, Struct_1(-1000f, -37686i), false), Struct_3(vec2<u32>(0u, 2888u), 20341u, Struct_1(-719f, 0i), false), Struct_3(vec2<u32>(62359u, 7626u), 1434u, Struct_1(-2898f, -9748i), false), Struct_3(vec2<u32>(94630u, 2540u), 4294967295u, Struct_1(-356f, 1i), false), Struct_3(vec2<u32>(0u, 4294967295u), 12223u, Struct_1(331f, 25685i), true));

var<private> global1: array<bool, 19>;

var<private> global2: array<bool, 29>;

var<private> global3: u32 = 73921u;

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = u_input.b;
    global2 = array<bool, 29>();
    global2 = array<bool, 29>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a | _wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, 1u), 25968u), 19u)];
    global1 = array<bool, 19>();
    return var_1.c;
}

fn func_3(arg_0: Struct_2) -> i32 {
    global4 = arg_0;
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(func_1(vec2<bool>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(u_input.c, 29u)]), true).b, 2162i, global4.a.b) | 2147483647i, 0i, (~(-26133i) >> (max(arg_0.c, u_input.a) % 32u)) >> (global4.c % 32u)), 1i);
    var var_1 = func_1(vec2<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, global4.c), vec3<u32>(arg_0.c, 44903u, global4.c)), 29u)], true, true)), all(!select(vec4<bool>(global1[_wgslsmith_index_u32(global4.c, 19u)], global1[_wgslsmith_index_u32(arg_0.c, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.c, 19u)], global1[_wgslsmith_index_u32(arg_0.c, 19u)], global1[_wgslsmith_index_u32(global4.c, 19u)]), vec4<bool>(global2[_wgslsmith_index_u32(global4.c, 29u)], global2[_wgslsmith_index_u32(63018u, 29u)], global2[_wgslsmith_index_u32(u_input.c, 29u)], global2[_wgslsmith_index_u32(arg_0.c, 29u)])))), true).b;
    let var_2 = vec4<bool>(true, true, !all(vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(global4.c, 19u)], global2[_wgslsmith_index_u32(arg_0.c, 29u)])), global2[_wgslsmith_index_u32(~1u, 29u)], global4.c < arg_0.c)), (global4.b.b != max(-12412i, reverseBits(u_input.d))) | true);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(677f, global4.a.a))), _wgslsmith_f_op_f32(312f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.a)))) + vec3<f32>(global4.b.a, 978f, _wgslsmith_f_op_f32(min(492f, _wgslsmith_f_op_f32(f32(-1f) * -1094f)))));
    return min(u_input.d, firstLeadingBit((-arg_0.a.b ^ reverseBits(global4.a.b)) & (i32(-1i) * -1i)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = vec3<i32>(~(~arg_3), 48276i, func_3(Struct_2(Struct_1(769f, -21795i), func_1(vec2<bool>(false, false), arg_0.d), 8479u))) ^ _wgslsmith_clamp_vec3_i32(-max(~vec3<i32>(u_input.d, 38054i, arg_2), vec3<i32>(arg_0.c.b, -10172i, -688i)), vec3<i32>(arg_1.a.b, 2756i, firstTrailingBit(_wgslsmith_sub_i32(-1i, -1i))), select(abs(_wgslsmith_add_vec3_i32(vec3<i32>(4087i, 0i, global4.a.b), vec3<i32>(global4.b.b, u_input.d, -1i))), ~firstLeadingBit(vec3<i32>(0i, -2147483647i, arg_2)), global2[_wgslsmith_index_u32(global4.c, 29u)]));
    global2 = array<bool, 29>();
    let var_1 = -arg_0.c.b;
    let var_2 = func_1(vec2<bool>(false, false), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(min(global4.c, global4.c)) ^ arg_0.a.x, abs(0u)), 29u)]);
    var var_3 = vec3<bool>(arg_0.d, select(var_1 <= arg_1.a.b, false, any(vec3<bool>(false, true, all(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.c, 19u)], global2[_wgslsmith_index_u32(105534u, 29u)]))))), global1[_wgslsmith_index_u32(33848u, 19u)]);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    let var_0 = 0i;
    global1 = array<bool, 19>();
    global3 = _wgslsmith_mult_u32(4294967295u, global4.c);
    global1 = array<bool, 19>();
    let var_1 = func_2(global0[_wgslsmith_index_u32(16622u, 19u)], Struct_2(func_1(select(!vec2<bool>(global1[_wgslsmith_index_u32(global4.c, 19u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(global4.c, 19u)], false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], false)), true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b.a, global4.a.a) * -354f), u_input.d), _wgslsmith_div_u32(~global4.c, global4.c)), _wgslsmith_mod_i32(-var_0, -1i), 28372i);
    global0 = array<Struct_3, 19>();
    var var_2 = ~_wgslsmith_add_vec3_u32(u_input.b, u_input.b & reverseBits(u_input.b));
    global3 = var_2.x >> (~global4.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, -543f, 1u, vec2<i32>(global4.a.b, global4.b.b));
}

