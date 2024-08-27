struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: u32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global1: array<bool, 32> = array<bool, 32>(false, false, false, true, true, false, true, false, false, false, true, false, true, false, true, true, false, false, false, true, false, true, true, false, true, true, false, false, false, true, false, true);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<vec3<bool>, 3>;

var<private> global4: array<vec3<bool>, 26>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-220f, -102f)))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-436f, 1086f, arg_0.a))))) - -1754f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-722f * _wgslsmith_f_op_f32(2247f + _wgslsmith_f_op_f32(abs(-502f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1023f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2112f))))));
    global2 = vec2<bool>(var_0.c, ~reverseBits(~0u) != ~(_wgslsmith_div_u32(u_input.a.x, 1u) >> (u_input.d % 32u)));
    let var_1 = Struct_2(Struct_1(true));
    global2 = vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], !(!global2.x));
    var var_2 = Struct_4(Struct_3(Struct_1(false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(709f, 418f) + var_0.b) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(var_0.e, 124f), vec2<bool>(true, arg_0.a))), _wgslsmith_f_op_vec2_f32(-var_0.b))), any(vec2<bool>(any(vec3<bool>(var_0.c, global2.x, var_1.a.a)), global2.x)), _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.e)) * _wgslsmith_f_op_f32(step(-1534f, -1584f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e)) + _wgslsmith_f_op_f32(var_0.e + 853f)), var_0.d)));
    return _wgslsmith_f_op_f32(-var_0.e);
}

fn func_2() -> i32 {
    let var_0 = Struct_2(Struct_1(true));
    global1 = array<bool, 32>();
    let var_1 = Struct_3(Struct_1(true), vec2<f32>(243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(318f * 1675f)))), !global2.x, _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-241f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(455f, -150f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(5682u, u_input.a.x), 16u)], any(global3[_wgslsmith_index_u32(u_input.d, 3u)]))))));
    global3 = array<vec3<bool>, 3>();
    var var_2 = Struct_5(Struct_4(var_1), u_input.b, ~_wgslsmith_dot_vec3_u32(~u_input.a, _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec3<u32>(4294967295u, 0u, 1u)), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 14035u, 0u)))), var_1, var_1);
    return (25730i << (0u % 32u)) << (_wgslsmith_sub_u32(firstTrailingBit(8794u), ~(~(~1u))) % 32u);
}

fn func_1() -> StorageBuffer {
    global3 = array<vec3<bool>, 3>();
    let var_0 = func_2() ^ 2147483647i;
    global2 = vec2<bool>(!global1[_wgslsmith_index_u32(u_input.b, 32u)], true);
    global1 = array<bool, 32>();
    let var_1 = vec2<f32>(1447f, _wgslsmith_f_op_f32(sign(2371f)));
    return StorageBuffer(reverseBits(abs(~vec2<u32>(u_input.b, 4294967295u))) << (u_input.a.xx % vec2<u32>(32u)), abs(~(~_wgslsmith_div_u32(u_input.a.x, u_input.d))), vec4<i32>(max(~_wgslsmith_add_i32(u_input.c, var_0), firstTrailingBit(u_input.c)), -(~select(var_0, var_0, true)), _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(-11592i, u_input.c, 13205i)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-9504i, -7716i, u_input.c), vec3<i32>(0i, -4118i, var_0)), -vec3<i32>(-1i, -12658i, -2147483647i))), u_input.c), vec2<u32>(~4294967295u, ~min(41368u >> (u_input.d % 32u), 44140u)), vec4<f32>(var_1.x, -372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(136f * -588f)), _wgslsmith_f_op_f32(837f - _wgslsmith_f_op_f32(-var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global4 = array<vec3<bool>, 26>();
    let var_1 = !(!any(select(select(vec2<bool>(global2.x, true), vec2<bool>(global1[_wgslsmith_index_u32(23334u, 32u)], false), global2.x), !vec2<bool>(global2.x, global1[_wgslsmith_index_u32(39964u, 32u)]), global1[_wgslsmith_index_u32(1u, 32u)])));
    global3 = array<vec3<bool>, 3>();
    let x = u_input.a;
    s_output = func_1();
}

