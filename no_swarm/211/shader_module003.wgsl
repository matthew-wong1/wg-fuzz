struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: vec2<bool>;

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(6616u, 44502u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<f32> {
    global1 = !(!select(vec2<bool>(select(true, global1.x, global1.x), true), !vec2<bool>(global1.x, true), false));
    var var_0 = all(vec2<bool>(all(select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), !vec2<bool>(false, global1.x))), true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 1210f) * arg_0.x)) - 358f));
    global1 = !select(select(select(!vec2<bool>(global1.x, false), !vec2<bool>(global1.x, false), false), vec2<bool>(global1.x, global1.x), select(!vec2<bool>(global1.x, false), select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), false), !global1.x)), !(!vec2<bool>(false, global1.x)), abs(-2147483647i | u_input.c.x) < u_input.a);
    let var_2 = (4294967295u >> (~(~1u) % 32u)) ^ u_input.b;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(ceil(-187f)), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(2713f, -1177f, true)), arg_0.x, arg_0.x, 802f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -681f, 1695f, arg_0.x)) * vec4<f32>(arg_0.x, -1050f, -486f, 1000f))), select(!global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 24u)], global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(11895u, 0u), 24u)], true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, -455f, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1505f, 542f, var_1) + vec4<f32>(arg_0.x, -259f, -132f, -704f))))) - vec4<f32>(341f, _wgslsmith_f_op_f32(-334f * var_1), arg_0.x, _wgslsmith_div_f32(-1238f, _wgslsmith_f_op_f32(var_1 + var_1))))));
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-382f, -1433f, 1002f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1765f, -1101f, -451f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-433f, -657f, -1828f) + vec3<f32>(707f, 383f, 397f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(-164f, -1667f, 147f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, 1390f, 687f, -135f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(140f, 132f, 209f, -132f) - vec4<f32>(-462f, 972f, -1017f, 1546f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, var_0.x, var_0.x, -445f)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(var_0.x, var_0.x, 1000f))).x, var_0.x)), var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2658f, 921f, 1000f, -190f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(528f, var_0.x, -1000f, 145f) + vec4<f32>(1000f, var_0.x, var_0.x, var_0.x)))))));
    let var_1 = Struct_1(global3.a);
    var var_2 = global1.x & any(select(select(vec2<bool>(true, true), vec2<bool>(global1.x, global1.x), 1i >= u_input.a), !vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x)));
    return vec2<bool>(!(1154f == var_0.x), all(select(vec2<bool>(true, !global1.x), !(!vec2<bool>(false, global1.x)), false)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec4<f32> {
    let var_0 = arg_1;
    global0 = array<vec4<bool>, 24>();
    global2 = arg_2.x;
    global3 = arg_1;
    let var_1 = abs(global3.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 389f, 787f, 145f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1529f, -1000f, arg_0, arg_0)))));
}

fn func_1() -> vec2<u32> {
    var var_0 = true;
    let var_1 = -u_input.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(823f, 525f))))), 838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2109f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1421f * _wgslsmith_f_op_f32(step(422f, 2248f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -604f))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2158f + 759f))), Struct_1(vec2<u32>(u_input.b, 26250u)), func_2(), u_input.c))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-212f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3(var_2.zzx)).x, _wgslsmith_f_op_f32(var_2.x * var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) * var_2.x), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(981f, -1908f, var_2.x, var_2.x) + vec4<f32>(var_2.x, -653f, var_2.x, 137f)), vec4<f32>(163f, var_2.x, 1000f, var_2.x))), !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, global3.a.x, u_input.b), vec4<u32>(u_input.b, global3.a.x, global3.a.x, u_input.b))), 24u)])));
    global1 = select(!select(select(select(vec2<bool>(global1.x, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, global1.x), vec2<bool>(true, global1.x), global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), false)), !func_2()), vec2<bool>(true, all(!vec3<bool>(global1.x, true, false))), !vec2<bool>(false, !global1.x));
    return ~_wgslsmith_clamp_vec2_u32(global3.a, vec2<u32>(~48386u, u_input.b), vec2<u32>(1u & global3.a.x, _wgslsmith_clamp_u32(~global3.a.x, ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(22732u, u_input.b), global3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(func_1());
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(select(u_input.b, u_input.b, true), func_1().x), abs(_wgslsmith_mult_u32(1u, 1u))), vec2<u32>(~global3.a.x, ~(~global3.a.x))));
    let var_1 = 0u;
    var var_2 = 45777u;
    let var_3 = firstTrailingBit(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(_wgslsmith_mult_u32(var_1, ~4294967295u), ~abs(4294967295u), ~(global3.a.x >> (u_input.b % 32u)), select(_wgslsmith_add_u32(54153u, 10458u), 0u, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-760f, _wgslsmith_f_op_f32(398f - -1468f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, 1386f))))), -29122i, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-456f + _wgslsmith_f_op_f32(f32(-1f) * -2503f)), 2216f))));
}

