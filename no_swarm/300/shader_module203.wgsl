struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = !(!vec2<bool>(global0[_wgslsmith_index_u32(~18935u, 23u)] <= global0[_wgslsmith_index_u32(51375u, 23u)], true));
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 39258u, 1u), vec3<u32>(1u, 1u, 1u)), 23u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(29112u, 23u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(578f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(24141u, 23u)], global0[_wgslsmith_index_u32(10325u, 23u)]), true))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-528f, -1379f, _wgslsmith_f_op_f32(1489f * global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_f32(919f + -498f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(-210f, _wgslsmith_f_op_f32(-817f * 185f))));
    return abs(1u);
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23514u, 23u)]) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(57081u, 23u)]))) != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 55896u, min(5293u, 0u)), 23u)]), arg_0);
    let var_1 = all(!(!(!(!vec3<bool>(var_0.a, false, true)))));
    var var_2 = ~vec3<u32>(28280u, select(func_3(), ~(~4294967295u), var_0.a), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(24945u, 25169u)), ~firstLeadingBit(vec2<u32>(4294967295u, 33048u))));
    let var_3 = -(~max(abs(-vec2<i32>(2147483647i, 0i)), u_input.b.ww));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~(~var_2.x), 23u)], _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-351f, global0[_wgslsmith_index_u32(0u, 23u)]), -641f)), !(64213u == var_2.x))))));
    return var_0.b.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~29358u, 23u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global0[_wgslsmith_index_u32(15284u, 23u)]))) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 23u)], 800f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(-594f))) + 1000f), true);
    let var_1 = ~u_input.c;
    var var_2 = _wgslsmith_f_op_f32(max(-182f, _wgslsmith_f_op_f32(ceil(-577f))));
    var_2 = global0[_wgslsmith_index_u32(~(~(~4750u)), 23u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(global0[_wgslsmith_index_u32(0u, 23u)]))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(547f * global0[_wgslsmith_index_u32(4695u, 23u)]), global0[_wgslsmith_index_u32(~firstTrailingBit(0u), 23u)]) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1011f, 688f))))));
    return Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(19219u), ~(~1u)), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 23u)] >= 381f, false, -358f >= global0[_wgslsmith_index_u32(0u, 23u)]))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 23u)] - _wgslsmith_f_op_f32(trunc(var_0.a))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(41716u, 23u)]))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2145f, _wgslsmith_f_op_f32(f32(-1f) * -736f), var_0.a, _wgslsmith_f_op_f32(-1253f * var_1.a)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(6318u, 23u)], -1988f, var_0.a, var_1.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-595f, var_0.a, var_1.a, -875f), vec4<f32>(var_1.a, -103f, 332f, var_0.a)))), false)));
    let var_3 = !all(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), true));
    let var_4 = (~vec3<u32>(1u, 1u, 1u) | vec3<u32>(min(min(1u, 0u), 1u), 23935u, func_3())) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(4294967295u, 25773u), max(u_input.b.zxz, reverseBits(~vec3<i32>(30048i, u_input.a, u_input.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2.x)))), countOneBits(2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.a, 4847i, u_input.b.x, -(i32(-1i) * -2147483647i)), u_input.b));
}

