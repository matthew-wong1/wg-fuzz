struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<i32, 18> = array<i32, 18>(-8602i, 1i, i32(-2147483648), 10686i, 1i, -31183i, 1i, -3159i, 62656i, 13953i, 553i, 5439i, 26887i, 0i, 24568i, 0i, 42172i, -48323i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1) -> i32 {
    return arg_0.a;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_u32(abs(u_input.d), countOneBits(77u));
    let var_1 = global1[_wgslsmith_index_u32(16651u, 16u)];
    return u_input.d;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = max(u_input.a, 50464i);
    var var_1 = vec3<u32>(_wgslsmith_add_u32(func_3(), 1u), firstLeadingBit(_wgslsmith_mult_u32(0u, abs(u_input.b.x ^ u_input.d))), ~44831u);
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(var_1.x, 16u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-467f, arg_0.x, true)), _wgslsmith_f_op_f32(-660f * arg_0.x)) - arg_0)), reverseBits(-arg_1.zwx >> (~reverseBits(vec3<u32>(var_1.x, 1u, var_1.x)) % vec3<u32>(32u))));
    global1 = array<Struct_1, 16>();
    global2 = array<i32, 18>();
    return Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.b, arg_0, false))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.a.b.zy)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(938f, -174f)), -153f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, var_2.a.b.x)) - _wgslsmith_f_op_vec2_f32(-arg_0)))), vec3<i32>(firstTrailingBit(~global2[_wgslsmith_index_u32(1u, 18u)]), var_2.c.x, ~(~u_input.a)) << (vec3<u32>(~min(36165u, u_input.b.x), ~u_input.d, var_1.x) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 19463i;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f * 1389f)), -606f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(764f, -761f))))))), vec4<i32>(firstLeadingBit(~func_1(Struct_1(8855i, vec3<f32>(-480f, -1400f, -1845f), vec4<u32>(0u, 17566u, 50011u, 0u), vec4<i32>(1i, -16069i, global2[_wgslsmith_index_u32(u_input.d, 18u)], 2147483647i)))), -2147483647i, ~(~var_0), -2147483647i), vec4<bool>(true, true || !all(vec4<bool>(false, true, false, false)), false, any(vec3<bool>(true, any(vec4<bool>(true, true, false, false)), 2147483647i != global2[_wgslsmith_index_u32(u_input.d, 18u)]))));
    global0 = 1u;
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-var_1.b), vec4<i32>(((var_1.c.x & 2147483647i) >> (var_1.a.c.x % 32u)) >> (7318u % 32u), -(~_wgslsmith_mult_i32(13742i, 17762i)), i32(-1i) * -1916i, abs(1i)), !vec4<bool>(-537f != _wgslsmith_f_op_f32(var_1.a.b.x - 102f), false, true, true)).a;
    var var_3 = 0u;
    var var_4 = func_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(-296f)), 572f), var_2.d, vec4<bool>(true, ((u_input.b.x ^ 56451u) > firstLeadingBit(u_input.d)) || !any(vec2<bool>(false, true)), (_wgslsmith_f_op_f32(select(-272f, -1862f, true)) < func_2(vec2<f32>(412f, -1656f), var_1.a.d, vec4<bool>(false, false, true, false)).a.b.x) | all(vec4<bool>(true, true, true, true)), false));
    let var_5 = _wgslsmith_add_vec2_i32(var_4.a.d.xy, ~max(vec2<i32>(var_1.a.a, u_input.c ^ var_4.c.x), ~var_2.d.wy));
    let var_6 = func_2(_wgslsmith_f_op_vec2_f32(-var_4.b), var_2.d, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), false)).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.xy * var_4.b)))))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_sub_u32(4294967295u, 39368u), ~var_6.c.x, u_input.d & u_input.b.x), ~var_6.c), ~var_1.a.c.x), 18u)], 0u);
}

