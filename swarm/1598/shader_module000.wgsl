struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
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

var<private> global0: array<f32, 25>;

var<private> global1: array<vec2<bool>, 31>;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_1(max(global2.a, global2.a));
    global2 = Struct_1(firstLeadingBit(~_wgslsmith_div_vec2_u32(global2.a, var_0.a) | firstTrailingBit(vec2<u32>(1u, 4294967295u))));
    var var_1 = vec2<u32>(countOneBits(var_0.a.x) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(42213u, 20355u, 0u, 10400u) << (vec4<u32>(1591u, global2.a.x, var_0.a.x, global2.a.x) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, global2.a.x, global2.a.x, 1u))) % 32u), countOneBits(0u) ^ ~reverseBits(u_input.a.x));
    let var_2 = !(!vec3<bool>(true, true, !any(vec3<bool>(true, true, true))));
    let var_3 = 638f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3))) + var_3);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.d, 0i), vec3<i32>(u_input.d, -11839i, 0i) ^ vec3<i32>(7835i, -1i, u_input.c)), max(abs(u_input.d), ~(-39772i))));
    global0 = array<f32, 25>();
    let var_1 = Struct_2(arg_1.a);
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(57155u, 25u)])) * global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.a.a.x, arg_1.a.a.x), abs(0u)), 25u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-vec2<i32>(var_0, -1i))))));
    return arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(global2.a.x, 31u)];
    let var_1 = !all(select(vec2<bool>(true, func_2(var_0.x, Struct_2(Struct_1(global2.a)))), vec2<bool>(true, all(arg_0.zz)), any(vec4<bool>(arg_0.x, arg_0.x, true, false)) || true));
    var var_2 = Struct_1(global2.a);
    let var_3 = Struct_1(vec2<u32>(countOneBits(~(~global2.a.x)), global2.a.x | (_wgslsmith_mult_u32(var_2.a.x, global2.a.x) ^ firstTrailingBit(u_input.a.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.a.x, 25u)] + global0[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_f_op_f32(max(-989f, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), -1115f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-225f, global0[_wgslsmith_index_u32(0u, 25u)], 425f)))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-758f, -976f, global0[_wgslsmith_index_u32(15119u, 25u)]), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(44037u, 25u)], -1285f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global2.a.x, 25u)], 206f, -901f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(46794u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], -847f)))))), ~(~59159u) != var_3.a.x));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 25>();
    var var_0 = Struct_2(func_1(vec4<bool>(true, true, true, true), u_input.a.x));
    var_0 = Struct_2(Struct_1(vec2<u32>(global2.a.x, func_1(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), firstLeadingBit(1u)).a.x)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a.a, var_0.a.a), 31u)];
    var var_2 = global2.a.x ^ 0u;
    var_2 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

