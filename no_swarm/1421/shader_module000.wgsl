struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(-32559i, -1i, i32(-2147483648), 9632i), vec4<i32>(-31628i, 1i, 25507i, -28858i), vec4<i32>(-4057i, 0i, -520i, 20811i), vec4<i32>(2147483647i, -45612i, -29693i, -2421i), vec4<i32>(2147483647i, -5604i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 66553i, i32(-2147483648)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(vec2<f32>(542f, -410f), vec2<f32>(1000f, -484f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1120f, 1207f))), select(vec2<bool>(true, false), vec2<bool>(true, true), true))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), 1318f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(578f, -419f), vec2<f32>(621f, -309f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-422f, _wgslsmith_div_f32(904f, 1000f), _wgslsmith_f_op_f32(-930f - 457f), -545f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 2282f, 1890f, 284f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -906f))), u_input.c, ~(~6259u));
    global0 = ~(-2147483647i);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-var_0.a.x));
    global0 = min(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~(-u_input.b), max(_wgslsmith_div_i32(37419i, u_input.d.x), firstLeadingBit(u_input.e.x)), reverseBits(u_input.d.x)), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e >> (reverseBits(vec4<u32>(4294967295u, var_1.e, var_1.e, var_1.d.x)) % vec4<u32>(32u))), -35000i), u_input.d.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, var_0.a.x)) - var_2)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(-2388f))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = -1i;
    global1 = array<vec4<i32>, 7>();
    let var_0 = -3308i;
    global1 = array<vec4<i32>, 7>();
    let var_1 = arg_0;
    return Struct_1(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(min(-2598f, -254f))), arg_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-680f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c, 118f)) * var_1.a.x), any(vec3<bool>(true, true, true)))))), arg_0.d, 41397u);
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    global0 = _wgslsmith_clamp_i32(-u_input.d.x, abs(-u_input.d.x & -31234i), -2147483647i);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.b.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0.b), arg_0.b))), -122f, ~arg_0.d, _wgslsmith_mult_u32(29902u, u_input.c.x));
    let var_1 = -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, -u_input.b, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.e.x, 1i), true), -u_input.e.xz)), -8350i);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -1564f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(418f)) * 1271f) + var_0.b.x)), _wgslsmith_f_op_f32(ceil(1000f)), var_0.d, min(arg_0.e, ~(4294967295u >> (u_input.c.x % 32u)) << (countOneBits(func_2(Struct_1(vec2<f32>(-639f, 1058f), var_0.b, arg_0.b.x, vec2<u32>(var_0.e, u_input.a), 4294967295u)).d.x) % 32u)));
    var var_2 = ~arg_0.e;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, var_0.a.x)))), var_0.b.xx)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), true))), _wgslsmith_f_op_vec2_f32(-arg_0.a), select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), u_input.a < u_input.a), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, true, false, false)))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = ~(-firstTrailingBit(u_input.d.xwz));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(arg_0.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0, vec4<f32>(arg_0.x, 1011f, -1000f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 2987f, 726f))), -899f, firstTrailingBit(arg_1.xx), ~arg_2.x))));
    global1 = array<vec4<i32>, 7>();
    let var_2 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)) * var_1.x)));
    var var_3 = ~(~(~min(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 50962u) | vec4<u32>(arg_2.x, 4294967295u, arg_1.x, 4294967295u), firstLeadingBit(vec4<u32>(6917u, 4294967295u, u_input.a, arg_1.x)))));
    return -664f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~select(select(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], vec4<i32>(u_input.b, u_input.b, u_input.b, 6352i), vec4<bool>(true, false, false, true)), vec4<i32>(-17955i, 2147483647i, -1i, -1i), vec4<bool>(true, true, false, true)) & u_input.d);
    global1 = array<vec4<i32>, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(2051f)), 1f, -683f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(585f, -1273f)) * -546f), _wgslsmith_f_op_f32(func_1(vec4<f32>(1198f, 1038f, 849f, 438f), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.a), vec3<u32>(u_input.c.x, 50950u, u_input.a)), vec2<u32>(u_input.c.x, u_input.a))))));
    global0 = -22283i;
    global0 = u_input.d.x;
    let var_2 = func_2(func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.yx), _wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_f_op_f32(-1000f * var_1.x), ~u_input.c, 1u))));
    global0 = 12500i;
    global0 = u_input.d.x;
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.b.zy), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-817f, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-137f - var_2.b.x), var_1.x), var_2.b, vec4<bool>(u_input.e.x <= var_0.x, any(vec3<bool>(true, false, true)), true, var_1.x < 535f))), 678f, vec2<u32>(4294967295u, var_2.e), 19870u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, _wgslsmith_f_op_vec3_f32(-var_1.xwx), var_2.d.x, ~max(~_wgslsmith_add_vec3_u32(vec3<u32>(var_2.e, u_input.c.x, 31332u), vec3<u32>(0u, 0u, var_3.d.x)), vec3<u32>(4787u, u_input.a, var_3.d.x)));
}

