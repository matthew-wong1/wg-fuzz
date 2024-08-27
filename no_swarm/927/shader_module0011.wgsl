struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<u32, 14>;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = vec4<bool>(false, all(!(!select(vec3<bool>(global2.e, global2.e, global2.a), vec3<bool>(global2.a, global2.a, false), global2.a))), true || global2.e, true);
    global1 = array<u32, 14>();
    var var_1 = vec4<u32>(~6300u, ~global0.x, ~(~4722u), u_input.a);
    var var_2 = u_input.b.x;
    global0 = _wgslsmith_clamp_vec4_u32(max(vec4<u32>(_wgslsmith_add_u32(global0.x, global2.d.c & var_1.x), 8532u, 47101u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(34550u, u_input.d.x, 0u), vec3<u32>(var_1.x, 29958u, 0u)), ~u_input.d)), ~abs(vec4<u32>(arg_0, u_input.a, 0u, 29086u)) | (~vec4<u32>(u_input.c.x, 31184u, u_input.a, 1u) >> (vec4<u32>(global0.x, var_1.x, var_1.x, 0u) % vec4<u32>(32u)))), firstLeadingBit((_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 28042u, 49528u, 1u), vec4<u32>(1u, global0.x, global2.d.c, global2.d.c), vec4<u32>(u_input.c.x, global0.x, global1[_wgslsmith_index_u32(global2.d.c, 14u)], 4294967295u)) >> (firstLeadingBit(vec4<u32>(arg_0, arg_0, u_input.a, global2.d.d)) % vec4<u32>(32u))) | ~vec4<u32>(1u, arg_0, arg_0, arg_0)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~global2.d.c, global0.x, firstLeadingBit(0u)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.x, global2.d.d, 0u), vec4<u32>(global2.d.c, 26357u, var_1.x, global0.x)))), abs(vec4<u32>(~19426u, abs(global1[_wgslsmith_index_u32(19751u, 14u)]), ~global0.x, abs(4294967295u)))));
    return u_input.b.x;
}

fn func_2() -> u32 {
    let var_0 = global2.b;
    let var_1 = vec4<i32>(~(-2894i), 36976i, 2147483647i, ~func_3(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(57476u, global0.x)), -181f));
    var var_2 = global2.d.a.yy;
    let var_3 = ~global0.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.d.a.zy, vec2<f32>(-549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(-var_2.x))), true)) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1305f - global2.b) - _wgslsmith_f_op_f32(-1000f * 737f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(509f, global2.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-200f + global2.b))) * global2.d.b)));
    return global2.d.c;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: u32) -> u32 {
    global0 = vec4<u32>(~global1[_wgslsmith_index_u32(global0.x, 14u)], 43127u, func_2(), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global0.ywx, vec3<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(global0.x), 14u)], _wgslsmith_sub_u32(73157u, arg_3), 4294967295u)), global0.ywy));
    let var_0 = !global2.e;
    var var_1 = ~_wgslsmith_add_u32(arg_1, _wgslsmith_clamp_u32(~global0.x, 68958u, arg_1)) ^ _wgslsmith_sub_u32(~select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1498u, 4294967295u), global0.xyw), true), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.d.c, u_input.c.x, 1u), global0.zyw), global0.x) << (_wgslsmith_sub_u32(4294967295u, 30693u) % 32u));
    let var_2 = u_input.b;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(global2.d.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -375f, -149f)))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-global2.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(max(global2.d.d, 22509u), 1u, 85631u, 4294967295u) << ((~vec4<u32>(67313u, 86112u, arg_1, global0.x) | vec4<u32>(0u, global2.d.c, 4294967295u, arg_1)) % vec4<u32>(32u)), vec4<u32>(~1u, countOneBits(arg_3), _wgslsmith_div_u32(~arg_1, min(global1[_wgslsmith_index_u32(global2.d.c, 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 14u)], 14u)])), ~global2.d.c)), _wgslsmith_add_u32(1u, u_input.d.x));
    return select(max(reverseBits(1u), _wgslsmith_add_u32(u_input.c.x, reverseBits(u_input.d.x))) | (~(~global1[_wgslsmith_index_u32(40120u, 14u)]) << (1u % 32u)), var_3.d, !(!(_wgslsmith_f_op_f32(floor(var_3.a.x)) > -322f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(1u, global2.d.d, firstTrailingBit(u_input.d.x));
    var var_1 = _wgslsmith_f_op_f32(round(global2.c));
    global1 = array<u32, 14>();
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(global2.d.c, global1[_wgslsmith_index_u32(~17118u, 14u)], firstLeadingBit(func_1(_wgslsmith_mod_i32(u_input.b.x, 1i), 0u, _wgslsmith_f_op_f32(select(177f, -541f, global2.e)), 13913u))), global1[_wgslsmith_index_u32(90720u, 14u)], ~(~_wgslsmith_add_u32(global0.x, _wgslsmith_mod_u32(0u, 42362u))), ~func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, u_input.b.x)), 4294967295u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -584f))), ~global2.d.c));
    let var_3 = 2147483647i;
    var var_4 = false;
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-338f, _wgslsmith_f_op_f32(min(422f, global2.b)), global2.e)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))) - _wgslsmith_f_op_f32(select(global2.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, global2.d.b) + -783f), global2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(30720i, _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_2.x, global0.x, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(26729u, 14u)] << (var_0.x % 32u), 1347u, u_input.d.x, global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(global2.d.c, 14u)]), 14u)]), ~vec4<u32>(107853u, global2.d.c, global2.d.d, u_input.c.x) >> (vec4<u32>(1u, u_input.a, global0.x, 1u) % vec4<u32>(32u))), vec4<u32>(func_1(-1i, ~1u, global2.d.b, ~global0.x), global2.d.c, ~global2.d.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(0u, 14u)]), var_2.zzx) % 32u), ~u_input.c.x)), ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(42750u, var_2.x, var_2.x, 0u), vec4<u32>(global2.d.d, u_input.d.x, 72774u, 0u))) >> (4294967295u % 32u), _wgslsmith_f_op_vec2_f32(global2.d.a.xx * global2.d.a.xz), -2584i);
}

