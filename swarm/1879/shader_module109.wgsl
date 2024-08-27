struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global0 = array<i32, 3>();
    let var_0 = Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 1336f, 426f), vec3<f32>(-105f, 710f, -675f)))) + vec3<f32>(-640f, _wgslsmith_f_op_f32(min(570f, -668f)), _wgslsmith_f_op_f32(min(1000f, 1036f))))), ~(~u_input.e), ~firstLeadingBit(abs(abs(vec3<u32>(10629u, 28797u, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, -819f, -733f)))));
    var var_1 = var_0;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(floor(var_1.b.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(-vec4<i32>(19180i, u_input.c.x, u_input.d, u_input.c.x))), -258f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1724f - 1307f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-2191f - 1190f), 1f, _wgslsmith_f_op_f32(abs(1202f))), vec3<f32>(-459f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(648f)))))), vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(~u_input.a), firstTrailingBit(53093u)), u_input.e.x), _wgslsmith_mod_vec3_u32(~(~(vec3<u32>(u_input.a, 14179u, u_input.a) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~90074u, reverseBits(u_input.a)), vec3<u32>(u_input.e.x >> (4294967295u % 32u), u_input.a, 1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1417f, -190f, 580f) * vec3<f32>(-1434f, -2018f, 983f))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-331f, 920f, 116f) + vec3<f32>(-528f, -376f, 2733f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(219f, -2084f, -129f) + vec3<f32>(-527f, 1392f, 802f)), true)), vec3<f32>(1f, 1f, 1f)))));
    var var_1 = 1200f;
    let var_2 = var_0.e.x;
    let var_3 = u_input.e.x << (3997u % 32u);
    global0 = array<i32, 3>();
    return var_0;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_2();
    var_0 = func_2();
    global0 = array<i32, 3>();
    let var_1 = func_2();
    var var_2 = func_2();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -211f;
    global0 = array<i32, 3>();
    let var_1 = func_1(select(vec4<bool>(true, true, true, false), !vec4<bool>(true, true, 4294967295u < u_input.a, u_input.a > 0u), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false))));
    var var_2 = func_2();
    let var_3 = Struct_1(select(vec2<bool>(var_1.a.x, var_1.a.x), var_1.a, !var_1.a), vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.e.x - _wgslsmith_f_op_f32(-var_2.b.x)))), 1496f), _wgslsmith_div_vec2_u32(countOneBits(countOneBits(vec2<u32>(4294967295u, u_input.e.x))), var_2.d.zy) >> (var_1.c % vec2<u32>(32u)), vec3<u32>(1u, var_1.c.x, ~_wgslsmith_dot_vec3_u32(var_1.d, var_2.d) >> (~2962u % 32u)), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(-26445i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_2().d.zz, vec2<u32>(23078u, 4294967295u)), 3u)])), ~abs(19029u), _wgslsmith_dot_vec4_u32(reverseBits(max(firstTrailingBit(vec4<u32>(var_3.d.x, var_1.c.x, 1u, u_input.e.x)), abs(vec4<u32>(var_2.c.x, 79897u, var_1.d.x, var_2.c.x)))), ~(~(~vec4<u32>(21563u, var_3.c.x, 4294967295u, var_2.c.x)))));
}

