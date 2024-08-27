struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(13355i, 2147483647i, 1i), vec3<i32>(1i, 2147483647i, 26715i), vec3<i32>(1i, -11226i, 26001i), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-15675i, 41549i, -1547i), vec3<i32>(i32(-2147483648), 0i, -16448i), vec3<i32>(-1i, i32(-2147483648), -7801i), vec3<i32>(i32(-2147483648), -1i, -33291i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-26282i, -54398i, -1i), vec3<i32>(0i, 2147483647i, -1i));

var<private> global1: f32 = -242f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    let var_0 = Struct_2(reverseBits(vec3<i32>(u_input.c.x, 1i, u_input.c.x) ^ u_input.c));
    let var_1 = Struct_1(-1052f, vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-524f)) + _wgslsmith_div_f32(-625f, -649f))));
    let var_2 = all(vec4<bool>(!(max(4294967295u, 1u) != _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 38298u, 84450u, 29832u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), true, !(u_input.a != u_input.a) & (abs(-2147483647i) == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_0.a.x), vec2<i32>(u_input.c.x, 45404i))), false));
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -533f, var_1.b.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-595f, _wgslsmith_f_op_f32(max(arg_1, -308f)), _wgslsmith_f_op_f32(-arg_1)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) * _wgslsmith_f_op_f32(f32(-1f) * -1622f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(round(324f))))))));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_3(_wgslsmith_mult_u32(40327u, u_input.a) & _wgslsmith_mod_u32(~u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(61739u, 0u), vec2<u32>(u_input.a, 1u))), 141f, !any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(375f, -382f, -1385f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, -668f, arg_0))) + vec3<f32>(165f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 154f) + vec2<f32>(-1290f, -948f)), arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1617f))));
    global0 = array<vec3<i32>, 12>();
    let var_1 = var_0.b;
    global0 = array<vec3<i32>, 12>();
    let var_2 = abs(~_wgslsmith_add_u32(60896u, ~u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-211f, var_1)), _wgslsmith_f_op_f32(-var_0.b)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> i32 {
    let var_0 = Struct_3(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(func_2(arg_1))))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(633f, arg_1, arg_1), vec3<f32>(-1083f, arg_1, 317f)) + vec3<f32>(988f, 347f, arg_1))))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 346f)), arg_1)), _wgslsmith_f_op_f32(-550f + var_0.b), var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f), -553f) * 116f));
    let var_1 = vec2<u32>(_wgslsmith_add_u32(~4294967295u, var_0.a), ~28556u << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, 87759u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, u_input.a, 17816u, var_0.a), arg_0)) >> ((arg_0.x << (0u % 32u)) % 32u)) % 32u));
    var var_2 = Struct_1(175f, var_0.d.xy);
    let var_3 = reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~var_1 >> (~var_1 % vec2<u32>(32u))), reverseBits(~var_1 ^ vec2<u32>(u_input.a, 1u))), 12u)]);
    return min(var_3.x, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(0u);
    var var_1 = vec3<i32>(func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, select(u_input.a, 4294967295u, true), ~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), min(~vec4<u32>(2098u, u_input.a, 21821u, 0u), ~vec4<u32>(0u, 0u, 4294967295u, 1u)), vec4<u32>(49396u, 15414u, u_input.a, u_input.a) & ~vec4<u32>(13258u, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(709f, -1148f))) * _wgslsmith_f_op_f32(max(-924f, _wgslsmith_f_op_f32(549f + 447f))))), u_input.c.x, i32(-1i) * -49494i);
    let var_2 = true;
    let var_3 = Struct_2(abs(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(689u, u_input.a), 12u)]));
    let var_4 = true;
    let var_5 = ~vec4<u32>(u_input.a, 65127u, _wgslsmith_div_u32(select(18579u, u_input.a, var_2) & 1u, u_input.a), _wgslsmith_clamp_u32(u_input.a, 4294967295u, _wgslsmith_add_u32(u_input.a, ~62593u)));
    let var_6 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -111f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1289f, -1114f) * vec2<f32>(-731f, 1044f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-198f, -1275f), vec2<f32>(138f, 241f), vec2<bool>(var_2, var_4))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1994f, -711f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, 1452f))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_6.a, var_6.b.x, var_4)), -1000f, var_4))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1306f + -318f)))));
    var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_6.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(737f, var_6.a) + var_6.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_6.a))), _wgslsmith_f_op_f32(-var_6.a)));
}

