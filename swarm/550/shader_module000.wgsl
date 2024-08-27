struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: array<vec3<u32>, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global1 = array<vec3<u32>, 14>();
    let var_0 = 22532i;
    global0 = array<Struct_3, 26>();
    let var_1 = -879f;
    global1 = array<vec3<u32>, 14>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(225f - arg_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))), select(false, false, false) & any(vec2<bool>(true, true)))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(304f, arg_0.x)) + -254f), arg_0.x)))));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1.b.yz)) + arg_1.a.b.zx), _wgslsmith_f_op_vec2_f32(arg_1.a.b.zx * vec2<f32>(arg_1.a.b.x, 299f))))));
    var var_1 = Struct_4(Struct_3(u_input.b, arg_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_0.x))) + vec3<f32>(var_0.x, -1740f, arg_1.c.c.a)) - vec3<f32>(_wgslsmith_f_op_f32(-190f * -1527f), var_0.x, _wgslsmith_f_op_f32(170f * 1000f)))), Struct_2(arg_1.c.c, abs(~0u & arg_2.x), arg_1.c.c, countOneBits(_wgslsmith_div_i32(arg_1.c.d, u_input.b.x))));
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(abs(reverseBits(~9029u)), 26u)], _wgslsmith_f_op_vec3_f32(min(arg_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, 108f, -1627f) - vec3<f32>(arg_1.a.b.x, -615f, -795f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-947f, var_1.a.b.x, var_1.c.a.a))))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-721f, 678f, true)))), !var_1.c.c.b), 40754u, var_1.c.c, countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b)))));
    let var_3 = arg_1.c.c.b;
    var var_4 = vec2<u32>(~(~0u), 25378u);
    return i32(-1i) * -20301i;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, abs(u_input.a.x)) ^ _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x), 26u)], arg_0, Struct_2(Struct_1(366f, vec4<bool>(true, true, true, true)), 4294967295u, Struct_1(-837f, vec4<bool>(true, true, true, true)), max(func_3(u_input.a.x, Struct_4(Struct_3(u_input.b, vec3<f32>(575f, 159f, arg_0.x)), arg_0, Struct_2(Struct_1(arg_0.x, vec4<bool>(true, false, false, false)), 65099u, Struct_1(-610f, vec4<bool>(true, true, true, false)), u_input.b.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), select(i32(-1i) * -26698i, ~31887i, true))));
    let var_1 = var_0.a;
    global0 = array<Struct_3, 26>();
    var var_2 = var_0.c.c;
    var_0 = Struct_4(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(28578u, select(var_0.c.b, u_input.a.x, true)), u_input.a.x)), 26u)], _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 413f, 439f)))))), all(vec3<bool>(true, true, var_2.b.x)))), Struct_2(var_0.c.c, u_input.a.x, var_0.c.c, -u_input.b.x));
    return Struct_2(Struct_1(var_2.a, var_2.b), _wgslsmith_add_u32(35623u, 1u), Struct_1(199f, vec4<bool>(all(vec3<bool>(var_2.b.x, var_0.c.c.b.x, false)) & !var_0.c.a.b.x, true, var_0.c.a.b.x, var_0.c.a.b.x)), ~firstTrailingBit(-27962i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1698f)), -1000f, true)));
    global0 = array<Struct_3, 26>();
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(583f, 780f, var_1))))), _wgslsmith_f_op_f32(-var_1)), !vec4<bool>(true, !(var_1 < 1064f), true, true));
    global1 = array<vec3<u32>, 14>();
    var var_3 = !var_2.b.ywz;
    var var_4 = 0u;
    var var_5 = -2147483647i;
    var var_6 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-676f, -2745f, var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(var_2.a, -1000f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, 1315f, 708f) + vec3<f32>(1024f, var_2.a, 1405f))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-2117f)), -1000f, 448f)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(21309i), u_input.b.x, abs(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, u_input.b) & (vec2<i32>(u_input.b.x, 19123i) | u_input.b), u_input.b)));
}

