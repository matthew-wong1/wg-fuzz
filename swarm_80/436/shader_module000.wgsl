struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(765f, 510f, -366f);

var<private> global1: array<vec2<bool>, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1792f, _wgslsmith_f_op_f32(floor(550f)), _wgslsmith_f_op_f32(f32(-1f) * -968f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -1932f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(308f, 1060f, -1578f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1334f, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1950f))), _wgslsmith_div_vec3_f32(vec3<f32>(505f, global0.x, -672f), vec3<f32>(946f, global0.x, 422f)))));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.x, 677f), 1321f, global0.x))));
    var var_0 = !all(vec2<bool>(false, any(vec2<bool>(false, false))));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1274f, global0.x, 692f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2354f * global0.x), _wgslsmith_f_op_f32(662f * global0.x), _wgslsmith_f_op_f32(1126f + -210f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -206f, global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1322f, -569f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -257f) - vec3<f32>(global0.x, 1000f, global0.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -1180f, global0.x), vec3<f32>(-2291f, global0.x, -352f), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)))), true));
    global0 = vec3<f32>(global0.x, -1624f, _wgslsmith_f_op_f32(floor(global0.x)));
    return all(vec4<bool>(!(!(302f >= global0.x)), false, u_input.a == abs(u_input.a), false));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<bool>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), -694f, _wgslsmith_f_op_f32(floor(-378f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-630f, global0.x, global0.x), vec3<f32>(680f, global0.x, global0.x), true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1010f, global0.x, 680f)), func_3()))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1885f, -490f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -475f) + vec3<f32>(1391f, 1244f, -743f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, global0.x)))), vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(sign(global0.x)))))));
}

fn func_1(arg_0: bool) -> u32 {
    global1 = array<vec2<bool>, 1>();
    var var_0 = ~38099u;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(731f, global0.x, global0.x), vec3<f32>(global0.x, -778f, 134f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_4(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), u_input.b), Struct_4(vec4<u32>(4294967295u, u_input.a, 49075u, 38877u), -30265i), global1[_wgslsmith_index_u32(102607u, 1u)]))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, global0.x, 784f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 192f, global0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))));
    global1 = array<vec2<bool>, 1>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(12117i, 0i), vec2<i32>(2147483647i, u_input.b) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), ~vec2<i32>(u_input.b, u_input.b) >> (select(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<bool>(arg_0, false)) % vec2<u32>(32u))), ~select(vec4<u32>(u_input.a, 0u, u_input.a, 29959u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), true) ^ countOneBits(~vec4<u32>(u_input.a, 1u, 52327u, u_input.a)), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(4294967295u, u_input.a))));
    return (~var_1.a.b.x | ~u_input.a) | 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!((750f == _wgslsmith_f_op_f32(global0.x * global0.x)) | all(vec3<bool>(true, true, true))));
    global1 = array<vec2<bool>, 1>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global0.x), !vec4<bool>(!(!var_0), var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)) >= u_input.a, true), 22509u);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_div_f32(global0.x, global0.x), var_1.a);
    let var_2 = ~vec4<u32>(func_1(var_1.b.x), 8329u, _wgslsmith_mod_u32(firstLeadingBit(func_1(var_1.b.x)), ~abs(43877u)), var_1.c);
    let var_3 = Struct_3(Struct_2(reverseBits(min(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.b, u_input.b)) << (~vec2<u32>(0u, var_2.x) % vec2<u32>(32u))), vec4<u32>(u_input.a, ~(~14988u), 4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 4294967295u, var_2.x), vec3<u32>(var_2.x, 1u, var_2.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 22599u, 4294967295u, u_input.a), var_2), var_2.x & var_1.c)), vec2<u32>(var_1.c, max(~4678u, reverseBits(33273u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global0.x, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + -307f))), var_1.a), global0.x, var_3.a.a.x ^ ~var_3.a.a.x, ~(~(~2147483647i)));
}

