struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(62943u, 8968u);

var<private> global1: array<Struct_1, 25>;

var<private> global2: u32;

var<private> global3: vec4<u32> = vec4<u32>(0u, 0u, 8337u, 31158u);

var<private> global4: array<vec2<f32>, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 25>();
    var var_0 = Struct_1(select(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_add_u32(global3.x, ~u_input.b) < global3.x, !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true))), 53429u, vec4<i32>(-reverseBits(15552i), _wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(1i, 1i)), _wgslsmith_add_i32(9718i << (0u % 32u), _wgslsmith_div_i32(u_input.a, u_input.a)), ~u_input.a) ^ select(-vec4<i32>(u_input.a, -52809i, -16007i, u_input.d), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a), vec4<i32>(-2147483647i, u_input.d, u_input.d, 2147483647i)), true), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-(u_input.d & 45715i), -u_input.a, u_input.d | abs(u_input.d)), firstTrailingBit(0i)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, -1744f), _wgslsmith_f_op_f32(round(551f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1052f - 360f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -629f) - -747f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f) - _wgslsmith_f_op_f32(sign(748f))))));
    let var_1 = global1[_wgslsmith_index_u32(11726u, 25u)];
    let var_2 = abs(vec4<i32>(u_input.d, -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.c.x, u_input.a, 64628i), vec4<i32>(var_0.c.x, u_input.d, -13146i, -2147483647i))), _wgslsmith_mod_i32(u_input.d, var_1.c.x), -1258i));
    return (~var_0.b >> (_wgslsmith_mod_u32(global3.x, 1u) % 32u)) & global3.x;
}

fn func_2() -> vec3<i32> {
    let var_0 = global1[_wgslsmith_index_u32(~global0.x, 25u)];
    var var_1 = global3.zzy;
    let var_2 = global1[_wgslsmith_index_u32(abs(var_0.b), 25u)];
    let var_3 = _wgslsmith_clamp_u32(global3.x, func_3(), _wgslsmith_mod_u32(global0.x, var_1.x));
    global4 = array<vec2<f32>, 6>();
    return -max(var_2.c.xyz, ~vec3<i32>(var_2.d << (var_3 % 32u), _wgslsmith_add_i32(1i, -1i), -1i));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~(-u_input.d), ~(i32(-1i) * -2147483647i)), 13101i, -(~u_input.d | -2147483647i)), func_2(), arg_0.c.www);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<f32>, 6>();
    let var_0 = 12092i;
    global4 = array<vec2<f32>, 6>();
    let var_1 = vec4<i32>(u_input.d & (firstTrailingBit(var_0) & -select(0i, u_input.d, true)), _wgslsmith_clamp_i32(1i, i32(-1i) * -79012i, -_wgslsmith_dot_vec3_i32(func_1(Struct_1(true, global3.x, vec4<i32>(-2147483647i, u_input.a, 0i, -7865i), 361i, vec4<f32>(562f, -884f, -674f, -690f))), abs(vec3<i32>(28473i, var_0, 0i)))), 6006i, ~(~(-2147483647i)));
    let var_2 = 0u;
    global3 = u_input.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-651f, -307f, -2282f), vec3<f32>(111f, 836f, 733f)))))) * vec3<f32>(-855f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-460f)) - _wgslsmith_f_op_f32(-1677f - 246f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-432f)))))), vec3<f32>(826f, -1000f, _wgslsmith_f_op_f32(1093f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(475f)) + _wgslsmith_div_f32(451f, 513f)))), all(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(false, false, true, false), 72547u != global3.x), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false), true), true))));
    let var_4 = global1[_wgslsmith_index_u32(var_2, 25u)];
    let var_5 = !var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e.x);
}

