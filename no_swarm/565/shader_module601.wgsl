struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2571f, vec3<bool>(true, true, false));

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(14800u, vec3<i32>(i32(-2147483648), -3622i, -1i), vec3<bool>(false, false, false));

var<private> global3: array<u32, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global2 = Struct_1(_wgslsmith_add_u32(~u_input.a, _wgslsmith_add_u32((global3[_wgslsmith_index_u32(global2.a, 7u)] & 0u) & (global3[_wgslsmith_index_u32(u_input.c.x, 7u)] >> (global2.a % 32u)), 1u)), -u_input.d, global0.b);
    var var_0 = _wgslsmith_sub_i32(-global2.b.x, _wgslsmith_mod_i32(min(global2.b.x >> (abs(10311u) % 32u), u_input.d.x), abs(min(-2147483647i, max(u_input.e, 1i)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-274f + 1913f), 831f)))));
    let var_2 = _wgslsmith_f_op_f32(select(-1903f, _wgslsmith_f_op_f32(-global0.a), global2.c.x));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1391f + global0.a)))))), vec3<bool>(true, 14262u == u_input.a, true));
    return u_input.c.x >= u_input.c.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_f32(1000f, 1000f), global0.b);
    let var_1 = global2.b.zx;
    let var_2 = global0.b.x;
    let var_3 = -1020f;
    global2 = Struct_1(abs(1u), global2.b, select(global0.b, !vec3<bool>(false, all(vec4<bool>(true, true, true, var_0.b.x)), func_3()), vec3<bool>(!var_0.b.x, true, !global0.b.x)));
    return Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(70275u, global3[_wgslsmith_index_u32(u_input.a, 7u)] ^ u_input.a, 60189u, _wgslsmith_clamp_u32(u_input.a, global3[_wgslsmith_index_u32(global2.a, 7u)], 4294967295u)), ~vec4<u32>(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)], 4294967295u, 39329u)), _wgslsmith_mod_vec3_i32(global2.b & -u_input.d, ~_wgslsmith_clamp_vec3_i32(firstTrailingBit(u_input.d), _wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(-2147483647i, var_1.x, u_input.e)), abs(u_input.d))), select(!vec3<bool>(true, global2.c.x, false), select(global2.c, var_0.b, !global2.c), false));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = !any(vec4<bool>(arg_2.b.x, global2.c.x, false, false));
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(402f)))))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f * 1850f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(382f + _wgslsmith_f_op_f32(f32(-1f) * -1103f))))));
    let var_3 = vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_1.a, 1u), 7u)], _wgslsmith_mod_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 8262u), vec2<u32>(4294967295u, var_1.a)), ~u_input.c.wy)), global2.a);
    let var_4 = -global2.b.xz;
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(firstTrailingBit(-countOneBits(850i)), global2.b.x, -66581i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-52517i, u_input.d.x, global2.b.x)), abs(func_1(_wgslsmith_f_op_f32(-global0.a), u_input.b, Struct_2(161f, vec3<bool>(true, global0.b.x, global2.c.x))))));
    var var_1 = !select(global2.c, global0.b, select(vec3<bool>(func_2(-313f).c.x, any(vec3<bool>(global2.c.x, true, false)), true), global0.b, select(any(global2.c.xy), all(global2.c), true)));
    global3 = array<u32, 7>();
    global3 = array<u32, 7>();
    var_1 = func_2(-416f).c;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~12064u)));
}

