struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, true, true, true, false, true, true, false, true, true, false, true, true, false, true, false, true, false, false, true, false, true, false, true, true, false, false, true);

var<private> global1: vec3<u32> = vec3<u32>(46793u, 69743u, 4294967295u);

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2;
    var var_1 = Struct_3(arg_2.a);
    global1 = select(u_input.d, _wgslsmith_mult_vec3_u32(select(~(~var_0.a.b), var_0.a.a, var_1.a.c), ~(var_0.a.b ^ var_0.a.a)), (true & any(vec4<bool>(false, var_1.a.c, arg_1.a.c, true))) || var_0.a.c);
    global0 = array<bool, 29>();
    var var_2 = arg_2.a;
    return _wgslsmith_f_op_f32(-1687f - var_1.a.d.x);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec3_u32(u_input.d, select(min(vec3<u32>(u_input.d.x, u_input.b, 36909u), u_input.d), _wgslsmith_sub_vec3_u32(u_input.d, u_input.d), !vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 29u)], true))), vec3<u32>(44334u, select(_wgslsmith_sub_u32(4294967295u, 32650u), ~global1.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 29u)]), 19981u), true, _wgslsmith_f_op_vec4_f32(-arg_1)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(-1i, arg_2.c), var_0, Struct_3(Struct_1(var_0.a.b, vec3<u32>(1u, var_0.a.b.x, 0u), var_0.a.c, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_0.a.d.x))), 239f))), false, var_0.a, _wgslsmith_div_vec3_f32(arg_1.zww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.zzy) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-514f, arg_2.a, arg_3) - arg_1.wyx)))), var_0);
    global0 = array<bool, 29>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -195f);
    let var_3 = ~_wgslsmith_mod_u32(4294967295u, 1340u);
    return _wgslsmith_mod_u32(var_3, max(4316u, abs(var_3)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(483f, arg_0.a, -215f), vec3<f32>(-752f, 156f, 208f), arg_2)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * -1345f))), !(!(!arg_0.b)), Struct_1(vec3<u32>(firstTrailingBit(arg_1.x) >> (1u % 32u), 64449u, 28039u), arg_1, arg_0.a < 1000f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)) - 500f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, global0[_wgslsmith_index_u32(arg_1.x, 29u)])) + arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -495f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, -1885f) + _wgslsmith_f_op_f32(arg_0.a * arg_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, -864f), vec3<f32>(1177f, -2083f, 1517f)))))) + vec3<f32>(arg_0.a, -2157f, -545f)), Struct_3(Struct_1(max(~vec3<u32>(4294967295u, 0u, u_input.d.x), arg_1), u_input.d, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u | u_input.b, u_input.d.x), 29u)], vec4<f32>(_wgslsmith_f_op_f32(-947f * arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(105f - arg_0.a), arg_0.a))));
    let var_1 = 0i;
    global0 = array<bool, 29>();
    let var_2 = abs(_wgslsmith_mod_vec4_u32(vec4<u32>(func_2(1564f, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.x, arg_0.a, var_0.a.x, -513f))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1534f)), u_input.d.x, abs(arg_1.x) | u_input.b, _wgslsmith_dot_vec3_u32(~arg_1, vec3<u32>(arg_1.x, var_0.e.a.a.x, 58217u))), select(countOneBits(vec4<u32>(global1.x, 1u, 1u, global1.x) & vec4<u32>(u_input.d.x, 3940u, 42778u, var_0.c.b.x)), abs(~vec4<u32>(arg_1.x, 1u, 1u, 0u)), all(select(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 29u)], true, true), arg_2, false)))));
    global0 = array<bool, 29>();
    return var_2;
}

fn func_1() -> StorageBuffer {
    global2 = array<Struct_2, 18>();
    let var_0 = func_4(global2[_wgslsmith_index_u32(1u, 18u)], vec3<u32>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-649f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 480f, -1000f, 1000f) * vec4<f32>(1000f, -1000f, -210f, 1233f))), global2[_wgslsmith_index_u32(global1.x, 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1932f, 1553f)) * -259f)), u_input.b, countOneBits(~_wgslsmith_clamp_u32(4885u, u_input.b, global1.x))), select(vec3<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(20221u, 29u)], false, true, global0[_wgslsmith_index_u32(u_input.d.x, 29u)])), ~u_input.b < _wgslsmith_mod_u32(73747u, 45186u), any(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(8013u, 29u)], true, true, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1.x, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)])))), vec3<bool>(true & select(global0[_wgslsmith_index_u32(1u, 29u)], true, global0[_wgslsmith_index_u32(0u, 29u)]), any(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 29u)], true), false)), ~78981u >= (40142u | u_input.d.x)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, u_input.d.x), 29u)]));
    global0 = array<bool, 29>();
    let var_1 = global2[_wgslsmith_index_u32(55803u, 18u)];
    let var_2 = vec3<u32>(global1.x >> (0u % 32u), max(~(~(~global1.x)), _wgslsmith_div_u32(_wgslsmith_add_u32(func_2(-1000f, vec4<f32>(-529f, var_1.a, var_1.a, 1357f), Struct_2(var_1.a, global0[_wgslsmith_index_u32(0u, 29u)], u_input.c.x, var_1.d), 449f), var_0.x), var_0.x)), ~abs(max(_wgslsmith_mod_u32(u_input.d.x, 11457u), ~global1.x)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, -854f), vec3<f32>(-2169f, var_1.a, var_1.a)) - vec3<f32>(var_1.a, var_1.a, var_1.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -862f, var_1.a) + vec3<f32>(var_1.a, var_1.a, -1529f)))))))), -15318i, var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a, var_1.a))), vec2<f32>(var_1.a, var_1.a), any(vec4<bool>(var_1.b, true, false, var_1.b)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a, var_1.a), vec2<f32>(var_1.a, 286f)))))), var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

