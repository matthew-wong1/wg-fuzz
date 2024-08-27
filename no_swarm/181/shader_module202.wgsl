struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(620f, 980f), vec2<f32>(-916f, -832f));

var<private> global1: vec2<f32> = vec2<f32>(117f, 840f);

var<private> global2: array<Struct_2, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.x) - global0[_wgslsmith_index_u32(~0u, 2u)]));
    return _wgslsmith_mod_u32(~u_input.d, 9725u);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(abs(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 4294967295u))), ~vec2<u32>(~u_input.c, u_input.d)), true, 1000f, ~(~func_3(true)), 38445u);
    global0 = array<vec2<f32>, 2>();
    let var_1 = arg_0;
    var var_2 = Struct_1(941f, reverseBits(~(~(~vec4<i32>(u_input.e.x, -1i, -1i, 2147483647i)))));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-131f)), _wgslsmith_f_op_f32(abs(873f))))), _wgslsmith_f_op_f32(floor(-139f)))));
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(var_0.e, var_0.d)), 11u)];
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1738f, -1000f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x * -228f), global1.x))), _wgslsmith_f_op_f32(819f * _wgslsmith_f_op_f32(f32(-1f) * -1613f))));
    var var_0 = Struct_3(true);
    var var_1 = func_2(-289i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(u_input.c, 2u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, -135f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, global1.x))))))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~u_input.e.x, _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(1u, 2u)])).c - _wgslsmith_f_op_f32(trunc(1f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(493f * 1105f)))))));
    global0 = array<vec2<f32>, 2>();
    return Struct_3(all(select(vec3<bool>(all(arg_0), var_0.a, var_0.a | false), vec3<bool>(all(vec4<bool>(false, var_1.b, true, var_0.a)), arg_0.x, -1421f == global1.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(_wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(u_input.a, 1i)));
    let var_1 = select(vec3<bool>(true, false, true), vec3<bool>(true, 23179u <= min(u_input.c, u_input.d), !all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global1 = global0[_wgslsmith_index_u32(~firstLeadingBit(~4294967295u), 2u)];
    global0 = array<vec2<f32>, 2>();
    let var_2 = func_1(vec3<bool>(var_1.x, var_1.x, false));
    let var_3 = ~reverseBits(((vec3<u32>(u_input.c, u_input.d, u_input.d) << (vec3<u32>(4294967295u, 77895u, 0u) % vec3<u32>(32u))) & ~vec3<u32>(28617u, 1u, u_input.c)) & vec3<u32>(u_input.c >> (4294967295u % 32u), 56099u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.c, 53632u, u_input.d), vec4<u32>(u_input.c, u_input.d, 2102u, 10775u))));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.d, ~71566u), var_3.x) << (_wgslsmith_add_u32(29950u, 0u) % 32u), 11u)];
    var var_5 = Struct_1(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))), select(vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), -2781i, var_0, 2147483647i), abs(-vec4<i32>(var_0, var_0, 61443i, 1i)), any(select(select(vec4<bool>(true, var_4.b, true, var_2.a), vec4<bool>(false, var_4.b, var_4.b, true), vec4<bool>(false, false, false, var_2.a)), vec4<bool>(var_2.a, false, true, true), select(vec4<bool>(false, var_2.a, var_4.b, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, var_1.x))))));
    var_4 = func_2(-(~28315i), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(133f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - var_4.c) + _wgslsmith_f_op_f32(-459f - -805f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0, var_0), vec3<i32>(2147483647i, var_5.b.x, 2147483647i)), vec3<i32>(var_0, u_input.a, u_input.e.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_3.xy, var_3.xx), ~var_3.xy) & 10302u, 36025u), -_wgslsmith_mod_vec4_i32(~var_5.b >> (abs(vec4<u32>(var_3.x, var_4.a, 4294967295u, 56300u)) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, var_0, u_input.a, var_5.b.x)));
}

