struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = abs(_wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 88961u, 31362u), vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x)), select(vec4<u32>(u_input.a.x, 42336u, u_input.a.x, 4294967295u), vec4<u32>(0u, 26573u, u_input.a.x, 26435u), arg_1.b.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.a.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.zx, vec2<f32>(arg_1.a.x, 1626f))) + arg_0.yz))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(369f - arg_1.a.x) - _wgslsmith_f_op_f32(step(-409f, arg_3.a.x))), 560f)));
    var_0 = ~u_input.a.x;
    return any(!select(!vec3<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x), vec3<bool>(true, true, true), vec3<bool>(u_input.a.x != u_input.a.x, arg_1.b.x & arg_3.b.x, arg_3.b.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    let var_0 = !(!(~_wgslsmith_dot_vec2_i32(vec2<i32>(-18303i, arg_0.x), arg_0) >= 0i));
    let var_1 = arg_2;
    let var_2 = var_1;
    var var_3 = func_3(var_2.a, var_2, var_1.a, Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a), select(var_1.b, vec4<bool>(any(vec4<bool>(true, var_2.b.x, var_0, var_1.b.x)), false || var_2.b.x, false, var_2.b.x), !var_1.b)));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = select(arg_0.b, select(vec4<bool>(true, true, u_input.b.x >= 1i, any(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true))), vec4<bool>(arg_0.b.x, !arg_0.b.x, false, false), func_2(-(~vec2<i32>(u_input.b.x, u_input.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.a.xz, vec2<f32>(1190f, arg_1))) - _wgslsmith_f_op_vec2_f32(-arg_0.a.xy)), global0[_wgslsmith_index_u32(73124u, 7u)])), !select(arg_0.b, select(!arg_0.b, arg_0.b, !arg_0.b), true));
    return !vec4<bool>(true, all(vec4<bool>(u_input.d.x >= u_input.c.x, true, 4294967295u != u_input.a.x, var_0.x)), true, !var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1564f, 1227f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, -167f, 574f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 261f, -288f)))), false))), select(vec4<bool>(true, all(vec2<bool>(true, true)), 14735i >= _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), true), func_1(global0[_wgslsmith_index_u32(~1u, 7u)], 896f), true));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(~min(u_input.a.x, u_input.a.x), 1u), 20397u, 1u), 7u)];
    var_0 = global0[_wgslsmith_index_u32(~(u_input.a.x << (~abs(31250u) % 32u)), 7u)];
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-255f, var_1.a.x)), -640f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a.x, var_1.a.x, var_0.b.x)), _wgslsmith_f_op_f32(644f + var_1.a.x))))), ~select(u_input.b.xx, u_input.d.zz, func_1(global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 7u)], _wgslsmith_f_op_f32(-var_0.a.x)).wx), 1000f, u_input.a.x);
}

