struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 2>;

var<private> global2: f32;

var<private> global3: vec4<f32> = vec4<f32>(139f, -2170f, 134f, 1214f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> bool {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -272f, global3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1906f, global3.x, global3.x, -798f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(23932u, 2u)], global1[_wgslsmith_index_u32(16183u, 2u)], 227f) + vec4<f32>(-548f, 2453f, 526f, -557f))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 2u)], 1909f, global1[_wgslsmith_index_u32(global0.x, 2u)], -1000f), vec4<f32>(-813f, 1414f, global1[_wgslsmith_index_u32(global0.x, 2u)], -1778f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, -1744f, -492f, global1[_wgslsmith_index_u32(arg_1, 2u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global1[_wgslsmith_index_u32(global0.x, 2u)], global1[_wgslsmith_index_u32(110837u, 2u)], -1044f)), vec4<bool>(arg_0, true, true, arg_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.x + -692f), global1[_wgslsmith_index_u32(~global0.x, 2u)], _wgslsmith_f_op_f32(-560f * 2097f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(18449u, 2u)], -161f))))));
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(806f, global3.x, -375f, global3.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-564f - global3.x), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(step(-701f, global1[_wgslsmith_index_u32(u_input.a.x, 2u)])), -445f))), any(vec4<bool>(select(any(vec3<bool>(arg_0, true, false)), arg_0, true), true, true, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(261f, _wgslsmith_f_op_f32(global3.x - global3.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 2u)] * -1089f) * _wgslsmith_f_op_f32(-global3.x))) + _wgslsmith_f_op_f32(-global3.x)), !(!(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, false)))));
    global3 = _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-257f * var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1292f), _wgslsmith_f_op_f32(-1088f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 2u)])), -1000f) * var_0.b));
    var var_1 = var_0.c | !all(var_0.e);
    let var_2 = arg_0;
    return true;
}

fn func_2() -> vec3<bool> {
    var var_0 = !(!all(vec4<bool>(false, true, false, false)) && true) | any(select(vec4<bool>(true, func_3(false, global0.x, vec3<i32>(-40748i, 0i, u_input.c.x)), true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, global3.x == -425f, false, true)));
    global1 = array<f32, 2>();
    var_0 = false;
    var_0 = true;
    global1 = array<f32, 2>();
    return select(select(!vec3<bool>(true, all(vec2<bool>(true, true)), true), vec3<bool>(u_input.b.x < firstLeadingBit(u_input.b.x), false, !any(vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), all(vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true)), func_3(true, u_input.a.x, -u_input.c))));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_div_f32(-507f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global0.x, 2u)], 488f)))) - global3.x) + _wgslsmith_f_op_f32(f32(-1f) * -857f));
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1367f - global1[_wgslsmith_index_u32(4294967295u, 2u)]) * global1[_wgslsmith_index_u32(~1u, 2u)])))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(954f, global1[_wgslsmith_index_u32(u_input.a.x, 2u)]))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-global3.x)))))));
    let var_1 = func_2();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(35568u), 2u)]))))), vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + var_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -316f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(max(40943u, 45375u), 2u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(u_input.b.x, 2u)])))), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u & ~u_input.b.x, 2u)]) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2673f)))), -344f, func_2().xz);
    return -618f;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: f32, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), (u_input.c.x >> (select(min(global0.x, 1u), arg_1, all(vec4<bool>(false, true, true, false))) % 32u)) > (firstLeadingBit(-u_input.c.x) & abs(1i)));
    let var_1 = !var_0.a.x;
    let var_2 = Struct_2(vec2<bool>(true, true | (any(vec2<bool>(false, false)) & var_0.a.x)), any(!select(vec3<bool>(false, var_1, var_1), vec3<bool>(true, true, true), false)), var_0.b);
    global1 = array<f32, 2>();
    let var_3 = var_2;
    return vec4<bool>(true, func_2().x, false, !(func_2().x == !all(var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_clamp_i32(~2147483647i, 1i, u_input.c.x));
    var_0 = _wgslsmith_mod_i32(1i, u_input.c.x);
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.c.zx ^ (vec2<i32>(-1i) * -vec2<i32>(-55548i, u_input.c.x)), vec2<i32>(-28386i, -u_input.c.x) ^ vec2<i32>(u_input.c.x, firstTrailingBit(_wgslsmith_add_i32(u_input.c.x, 0i))));
    var var_2 = global1[_wgslsmith_index_u32(~(~(~25542u >> (global0.x % 32u))), 2u)];
    let var_3 = func_4(global3.xw, _wgslsmith_div_u32(8116u, ~(~18716u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(107f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(true, false, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(39579u, 2u)]))))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global0.x, u_input.b.x, global0.x), u_input.b), ~reverseBits(global0.x), _wgslsmith_div_u32(u_input.a.x, 16762u)) | ~(u_input.b.x << (_wgslsmith_mod_u32(0u, u_input.a.x) % 32u)), -2147483647i);
}

