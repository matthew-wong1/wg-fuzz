struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 66318u), vec2<u32>(60928u, 0u), vec2<u32>(28463u, 0u), vec2<u32>(1u, 1u));

var<private> global1: f32;

var<private> global2: array<i32, 7> = array<i32, 7>(28291i, i32(-2147483648), 1i, 15285i, 25848i, 0i, 2147483647i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_5(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(60193u, 0u, 1u, 16602u), vec4<u32>(33798u, 12022u, 65105u, 4294967295u), vec4<bool>(arg_0, true, arg_0, true))), 91428u));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1097f)), _wgslsmith_f_op_f32(f32(-1f) * -695f), true))));
    global0 = array<vec2<u32>, 5>();
    var var_1 = _wgslsmith_sub_i32(~1084i, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -1i, 2147483647i, u_input.a), vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(var_0.a, 7u)], -1i, -2147483647i) ^ vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(72104u, 7u)], u_input.a, u_input.a)), -(~(-3113i))), ~(~(~2147483647i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -192f), -1385f, 1f), vec3<f32>(1655f, 1000f, _wgslsmith_f_op_f32(floor(130f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-991f, -180f, 1819f) - vec3<f32>(2112f, 395f, -716f)), vec3<f32>(-437f, 435f, 1894f))))));
    return select(select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -737f) != _wgslsmith_div_f32(var_2.x, var_2.x), !any(vec3<bool>(false, true, false)), arg_0, false), !vec4<bool>(true, !arg_0, any(vec3<bool>(true, arg_0, true)), all(vec4<bool>(arg_0, false, arg_0, arg_0))), vec4<bool>(any(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0))), arg_0, countOneBits(1i) < _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_0.a, 7u)], -889i, u_input.a), vec3<i32>(52024i, -525i, 0i)), true)), !vec4<bool>(all(!vec4<bool>(arg_0, arg_0, true, arg_0)), !(true | arg_0), arg_0, arg_0), select(!arg_0 && true, true, true));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = Struct_3(-4590i);
    var var_1 = -658f;
    var var_2 = vec4<bool>(arg_1.x, arg_1.x, false, !any(select(select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, true, arg_1.x, true)), vec4<bool>(true, true, true, true), func_3(arg_1.x))));
    let var_3 = 1050f;
    global1 = var_3;
    return Struct_4(firstTrailingBit(min(vec3<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(arg_0.x, 5u)]), _wgslsmith_mult_u32(57846u, 10037u)), ~arg_0)), var_0);
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    global2 = array<i32, 7>();
    var var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, any(vec4<bool>(true, true, false, false)), false, all(vec2<bool>(false, false)))), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true, true), false);
    let var_1 = func_2(arg_0.wxx, var_0.xzz);
    let var_2 = var_1;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1567f)), 661f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -590f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - -824f) - -1180f))));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(firstTrailingBit(abs(vec4<i32>(_wgslsmith_mod_i32(22332i, global2[_wgslsmith_index_u32(4817u, 7u)]), u_input.a, global2[_wgslsmith_index_u32(func_1(vec4<u32>(30289u, 25740u, 44157u, 1u)), 7u)], _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 49425i), vec3<i32>(2147483647i, 2147483647i, u_input.a))))), vec2<bool>(all(vec4<bool>(true, true, true, true)), (_wgslsmith_dot_vec3_u32(vec3<u32>(23649u, 65547u, 41455u), vec3<u32>(8735u, 1081u, 52201u)) > ~4294967295u) && all(vec2<bool>(false, true))), ~1u, Struct_1(!(!all(vec4<bool>(true, false, true, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1069f), _wgslsmith_f_op_f32(ceil(-1000f))));
    var var_1 = func_3(false).yzy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.e)))))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1861f + _wgslsmith_f_op_f32(var_0.e - -229f)))));
}

