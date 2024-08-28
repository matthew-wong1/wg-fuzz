struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, false, false), vec3<bool>(false, true, false));

var<private> global1: array<vec4<i32>, 29>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-523f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-960f)) - _wgslsmith_f_op_f32(f32(-1f) * -1701f)) - 1f));
    var var_1 = select(select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, false), true, true, false), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true))), false), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)), true), select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false)), vec4<bool>(any(vec2<bool>(true, true)), false, true, true), vec4<bool>(true, select(true, true, true) != true, all(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, true)))));
    global0 = array<vec3<bool>, 2>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(874f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-741f - 1595f))), -350f, true))), _wgslsmith_f_op_f32(select(-150f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1921f)) - _wgslsmith_f_op_f32(f32(-1f) * -1481f)), -851f)), any(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, true))) && !var_1.x)), 1544f);
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + var_2.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a + var_2.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(f32(-1f) * -2087f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1305f, var_2.b))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-764f * var_2.b), _wgslsmith_f_op_f32(626f + var_2.b))))), ~firstLeadingBit(i32(-1i) * -2147483647i) == firstTrailingBit(firstLeadingBit(countOneBits(-1i)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_5(true, Struct_4(!(!(arg_0.x == 870f)), Struct_3(Struct_1(arg_0.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1476f)))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-1000f + arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, -685f)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -311f)))), ~8922u);
    var var_1 = var_0.b;
    var var_2 = var_0.b.c.a;
    var var_3 = -1i;
    var var_4 = ~vec4<u32>(~u_input.a, var_0.c ^ 4294967295u, 0u ^ var_0.c, reverseBits(~var_0.c));
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: u32) -> Struct_2 {
    global0 = array<vec3<bool>, 2>();
    let var_0 = vec2<f32>(-405f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1460f + 442f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1587f, -643f, arg_1.x, arg_1.x)), -vec4<i32>(-2863i, 0i, 0i, -32775i) | global1[_wgslsmith_index_u32(1u << (arg_2 % 32u), 29u)]))));
    var var_1 = vec2<i32>(-2201i, countOneBits(2147483647i));
    global1 = array<vec4<i32>, 29>();
    global0 = array<vec3<bool>, 2>();
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + 345f), var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1084f * -1290f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -609f)))), var_0.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool) -> vec3<f32> {
    let var_0 = Struct_4(arg_2, Struct_3(Struct_1(arg_1.a.x, -1291f, arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)), Struct_3(Struct_1(-113f, 1206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2192f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))));
    let var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.a.c), _wgslsmith_f_op_f32(-arg_1.a.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.a.a))) - arg_1.a.x)) | !select(_wgslsmith_div_f32(var_0.c.b, var_0.b.a.b) <= _wgslsmith_f_op_f32(arg_1.a.x + -1000f), all(vec4<bool>(var_0.a, true, arg_2, arg_2)), 25190u == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.x, 4176u), vec3<u32>(4294967295u, arg_0.x, u_input.a)));
    var var_2 = ~(-63011i) == (i32(-1i) * -(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 47718i, -43457i, 1i), global1[_wgslsmith_index_u32(16642u, 29u)])));
    let var_3 = 4294967295u;
    var var_4 = var_0.c;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b * _wgslsmith_f_op_f32(-arg_1.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1113f))))), 1000f, func_1(19521u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a.x, 1785f, -248f, var_0.b.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, var_0.c.a.b, var_4.b, arg_1.a.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, 617f, arg_1.a.x, -1151f))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_3, arg_0.x) << (arg_0 % vec2<u32>(32u)), ~vec2<u32>(0u, var_3)), ~vec2<u32>(4294967295u, var_3))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 2>();
    global1 = array<vec4<i32>, 29>();
    let var_0 = true;
    let var_1 = false;
    var var_2 = Struct_1(-469f, -244f, _wgslsmith_f_op_f32(1437f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -847f)))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(u_input.a, u_input.a) | firstLeadingBit(~vec2<u32>(u_input.a, 4294967295u)), func_1(~firstTrailingBit(u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(111f, var_2.c, -373f, 967f), vec4<f32>(var_2.c, -170f, var_2.a, 728f))), 4294967295u), any(select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(false, true)), select(vec2<bool>(var_0, true), vec2<bool>(true, var_1), vec2<bool>(true, var_0)), all(vec2<bool>(var_1, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 7592u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(8168u, 4294967295u, 23272u, 5278u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) ^ ~vec4<u32>(1u, u_input.a, 1u, 0u)) ^ ~(~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(24402u, u_input.a) ^ vec2<u32>(16191u, u_input.a), func_1(0u, vec4<f32>(-1080f, -409f, -2134f, var_2.b), 611u), true)).x), var_2.a, _wgslsmith_f_op_f32(round(func_1(u_input.a | 4294967295u, vec4<f32>(var_2.c, -272f, var_2.c, -1501f), ~u_input.a).a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.a.x)) + 205f))));
}

