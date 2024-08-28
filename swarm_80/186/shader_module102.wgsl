struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: array<i32, 3>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 9>;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global2 = _wgslsmith_add_u32(~(~(~(~u_input.a.x))), u_input.a.x);
    global1 = array<i32, 3>();
    global1 = array<i32, 3>();
    let var_0 = any(global0.xy);
    global0 = select(vec4<bool>(true && global4.x, global0.x != any(vec4<bool>(global0.x, global0.x, var_0, true)), all(vec2<bool>(true, u_input.a.x < 15117u)), global0.x && false), !(!select(select(vec4<bool>(var_0, global4.x, true, true), vec4<bool>(global4.x, true, false, true), true), !vec4<bool>(true, global0.x, var_0, true), !vec4<bool>(false, global4.x, true, false))), global4.x || true);
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> i32 {
    global3 = array<Struct_1, 9>();
    global3 = array<Struct_1, 9>();
    let var_0 = 2147483647i;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1707f + arg_0.c.x) * _wgslsmith_f_op_f32(866f * arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, arg_0.c.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, -1088f)), _wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c.x)) + _wgslsmith_f_op_f32(-arg_0.c.x))))), _wgslsmith_f_op_f32(sign(arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -457f)));
    global2 = func_3(vec4<u32>(~u_input.a.x, 1u, ~_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), _wgslsmith_add_u32(abs(reverseBits(u_input.a.x)), ~(~26621u))));
    return firstTrailingBit(arg_1) << (abs(44325u) % 32u);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    global2 = u_input.a.x;
    global1 = array<i32, 3>();
    let var_0 = _wgslsmith_div_i32(global1[_wgslsmith_index_u32(~32598u | u_input.a.x, 3u)], _wgslsmith_mod_i32(65719i, 27289i)) & -func_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 3u)] ^ 12070i, _wgslsmith_f_op_f32(f32(-1f) * -1410f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 703f, -437f) * vec3<f32>(-1604f, 299f, 116f))), -global1[_wgslsmith_index_u32(59955u, 3u)], _wgslsmith_f_op_f32(abs(2166f)) <= _wgslsmith_f_op_f32(floor(-164f)));
    var var_1 = Struct_1(abs(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, ~1u), 3u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-371f)), _wgslsmith_f_op_f32(-1112f * -1401f))), 1f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-961f, -748f, -1073f)) * vec3<f32>(-1495f, 888f, -1062f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1469f - 263f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2343f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-598f, -390f)))))));
    var var_2 = u_input.a.x < ~4294967295u;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(countOneBits(u_input.a.x << (_wgslsmith_clamp_u32(u_input.a.x >> (u_input.a.x % 32u), 4294967295u, ~u_input.a.x) % 32u)), 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-131f, -858f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(426f, -617f), _wgslsmith_f_op_f32(-605f - _wgslsmith_f_op_f32(-829f - -677f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-510f)))))));
    global2 = ~(~(~abs(~u_input.a.x)));
    global0 = !vec4<bool>(any(select(select(vec2<bool>(global4.x, false), vec2<bool>(false, global4.x), global0.x), global0.xx, !global4.x)), !(global0.x == global4.x) & global4.x, (var_0.b >= _wgslsmith_div_f32(1616f, var_0.c.x)) && true, false);
    global2 = _wgslsmith_mod_u32(u_input.a.x, func_1(select(vec4<bool>(global0.x, global4.x, false, global4.x), vec4<bool>(true, true, true, true), global0.x))) ^ ~select(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 2608u, 29406u), ~vec4<u32>(u_input.a.x, 1u, 58728u, 87974u)), u_input.a.x | u_input.a.x, all(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global4.x, false), false)));
    global1 = array<i32, 3>();
    let var_1 = _wgslsmith_f_op_f32(max(1088f, _wgslsmith_f_op_f32(-1599f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-489f))))))));
    var var_2 = vec2<u32>(u_input.a.x, ~(_wgslsmith_div_u32(u_input.a.x, 0u) | u_input.a.x));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2437f, 252f, -357f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_3.b), var_1), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1, -293f)), -327f)))));
}

