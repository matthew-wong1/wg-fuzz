struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -21663i;

var<private> global1: array<vec2<bool>, 26>;

var<private> global2: array<i32, 17> = array<i32, 17>(15021i, i32(-2147483648), 0i, 2147483647i, 1i, 62551i, -37589i, 1i, 2147483647i, -73631i, 25712i, -1i, -44281i, -1i, -15690i, 0i, 0i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = ~(-(~(i32(-1i) * -u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-581f, -469f)) * _wgslsmith_f_op_f32(-231f + 702f)) * _wgslsmith_f_op_f32(-1f)));
    let var_2 = Struct_1(~(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -9281i, 1i), vec3<i32>(var_0, global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(1u, 17u)])), countOneBits(vec3<i32>(0i, u_input.b, global2[_wgslsmith_index_u32(0u, 17u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, -48889i, 17424i), vec3<i32>(var_0, 0i, 69692i))) & ~(~vec3<i32>(1i, 8810i, -1i))));
    global0 = 1i;
    var var_3 = Struct_1(var_2.a);
    return Struct_1(var_2.a);
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec3<i32>(~41268i, global2[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(38148u, 17u)], -1i, global2[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<i32>(u_input.b, 20144i, 0i)), vec3<i32>(-1i, u_input.b, 0i), vec3<bool>(true, true, true)), countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(1u, 17u)], -2147483647i, 56622i) | vec3<i32>(-1i, u_input.b, -28025i)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-281f + 788f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -753f)) + 1f), _wgslsmith_f_op_f32(-1603f * _wgslsmith_f_op_f32(-345f + 508f)), 1f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(790f - 140f)))), 247f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -261f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-698f - 358f)))))), vec4<bool>(u_input.a >= firstLeadingBit(u_input.a), select(countOneBits(u_input.a) == u_input.a, false, !(-10273i <= u_input.b)), false, !((100370u != u_input.a) && true))));
    global0 = min(~global2[_wgslsmith_index_u32(~(~(~12977u)), 17u)], 0i);
    let var_2 = countOneBits(~vec2<u32>(reverseBits(~u_input.a), u_input.a));
    let var_3 = Struct_1(var_0.a);
    return (firstLeadingBit(min(~u_input.a, var_2.x)) >= abs(var_2.x)) | false;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2158f, -128f)));
    var var_1 = func_2(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u >> (firstLeadingBit(arg_1.x) % 32u), ~_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_0.x, 0u, 62740u))), arg_1.x));
    let var_2 = func_2(u_input.a);
    var var_3 = arg_0;
    var var_4 = Struct_1(var_2.a);
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(func_1(abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(0u, 4294967295u, u_input.a)), true, false));
    let var_1 = Struct_1(-vec3<i32>(1i, 1i, -2147483647i));
    global2 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(609f, -1914f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2672f, -239f))), true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-392f * -168f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-596f, -241f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(818f, 1464f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(246f)), 1210f, true))))));
}

