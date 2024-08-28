struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    var var_0 = Struct_2(arg_0.d, !vec4<bool>(true, global0.b.x, false, global0.b.x));
    var_0 = Struct_2(Struct_1(var_0.a.a, 219f, u_input.b.x), global0.b);
    var_0 = Struct_2(arg_0.d, !(!select(var_0.b, global0.b, !vec4<bool>(true, false, false, var_0.b.x))));
    return select(!(var_0.b.x && true), arg_0.e, var_0.b.x);
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(global0.a, global0.b);
    var var_0 = Struct_2(Struct_1(firstTrailingBit(global0.a.a), _wgslsmith_f_op_f32(134f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-697f + global0.a.b), 1683f)), _wgslsmith_mult_i32(abs(global0.a.c) << (4294967295u % 32u), 2147483647i)), vec4<bool>(true, !((global0.b.x || true) && !global0.b.x), !global0.b.x, !(global0.b.x & func_3(Struct_3(947f, global0.a.a.x, global0.b.x, Struct_1(vec2<u32>(global0.a.a.x, 4294967295u), global0.a.b, u_input.b.x), true), global0.a.c))));
    var var_1 = u_input.b.zy;
    var_0 = Struct_2(global0.a, select(!select(global0.b, !var_0.b, !global0.b), !(!vec4<bool>(var_0.b.x, false, true, true)), !any(!vec3<bool>(global0.b.x, global0.b.x, var_0.b.x))));
    var var_2 = var_0.a.c;
    return global0.a;
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = vec4<bool>(select(true, global0.b.x, all(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true))), global0.b.x, (func_3(Struct_3(global0.a.b, global0.a.a.x, false, Struct_1(vec2<u32>(36130u, 1u), 1388f, var_0.c), true), i32(-1i) * -1i) == (4294967295u <= func_2().a.x)) && !all(vec3<bool>(true, global0.b.x, global0.b.x)), global0.b.x);
    var_0 = Struct_1(global0.a.a, -1360f, ~reverseBits(u_input.b.x));
    var var_2 = Struct_2(global0.a, select(var_1, select(var_1, vec4<bool>(global0.b.x && false, true, false, true), global0.b.x), true || all(select(global0.b.wy, vec2<bool>(true, global0.b.x), var_1.x))));
    let var_3 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(20004u, 0u, var_2.a.a.x), firstLeadingBit(vec3<u32>(var_2.a.a.x, global0.a.a.x, var_0.a.x))), 64182u ^ _wgslsmith_clamp_u32(var_2.a.a.x, var_2.a.a.x, 27343u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, 53352u, 0u) >> (vec4<u32>(96899u, u_input.a, global0.a.a.x, u_input.a) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(4294967295u, var_0.a.x, var_2.a.a.x, 0u))), (var_2.a.a.x | 90591u) >> (u_input.a % 32u))) >> (firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 67303u, u_input.a, 4294967295u), vec4<u32>(0u, global0.a.a.x, var_0.a.x, 28126u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.a.x, 1u, 79671u, var_2.a.a.x) ^ vec4<u32>(12764u, 1u, 4294967295u, 0u), min(vec4<u32>(var_2.a.a.x, var_0.a.x, 33380u, 13802u), vec4<u32>(var_2.a.a.x, var_2.a.a.x, var_0.a.x, 0u))))) % vec4<u32>(32u));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1598f, _wgslsmith_f_op_f32(-global0.a.b)))), var_3.x, !any(var_1.yw), func_2(), var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = 1i;
    var var_2 = -u_input.b;
    let var_3 = _wgslsmith_div_vec2_i32(~vec2<i32>(-31385i, max(~global0.a.c, u_input.b.x)), var_2.zx);
    var var_4 = vec2<i32>(_wgslsmith_add_i32(var_0, var_3.x), _wgslsmith_div_i32(0i, firstLeadingBit(_wgslsmith_mod_i32(var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 13425i), u_input.b)))));
    var var_5 = global0.b.x;
    var var_6 = func_1(~_wgslsmith_sub_i32(i32(-1i) * -2147483647i, var_0));
    let var_7 = Struct_2(var_6.d, !global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_7.a.a.x, 4294967295u, global0.a.a.x), ~vec3<u32>(1u, global0.a.a.x, var_6.d.a.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, var_6.d.a.x), vec3<u32>(1u, 39199u, 1u)), ~u_input.a, 1u))), -u_input.b.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.a.b, -255f, false)), _wgslsmith_f_op_f32(global0.a.b * var_6.d.b))), 843f))), _wgslsmith_mult_vec4_u32(vec4<u32>(3335u, 43846u, 110515u, 29716u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_7.a.a.x, 0u, 67111u, 47882u), vec4<u32>(4294967295u, var_7.a.a.x, var_7.a.a.x, 1u))) << (((vec4<u32>(4294967295u, global0.a.a.x, var_6.d.a.x, 4294967295u) | (vec4<u32>(4836u, 16699u, 40257u, 8613u) << (vec4<u32>(0u, global0.a.a.x, 37422u, var_7.a.a.x) % vec4<u32>(32u)))) | (vec4<u32>(u_input.a, u_input.a, 78314u, var_6.b) & vec4<u32>(41827u, global0.a.a.x, var_7.a.a.x, 15536u))) % vec4<u32>(32u)));
}

