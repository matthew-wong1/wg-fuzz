struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-10504i, 2147483647i);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 37354u, 35342u);

var<private> global2: f32 = 643f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = true;
    var var_1 = Struct_2(_wgslsmith_mult_u32(firstTrailingBit(global1.x), abs((global1.x & arg_0) ^ ~arg_3)), vec4<u32>(arg_3, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a >> (arg_0 % 32u), global1.x), arg_3), max(1u, ~0u) | ~_wgslsmith_div_u32(4294967295u, arg_3), 24848u));
    var var_2 = firstTrailingBit(vec2<u32>(4294967295u, _wgslsmith_div_u32(arg_0, u_input.b.x) << (88973u % 32u)) & (vec2<u32>(global1.x, countOneBits(arg_0)) | _wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_3), _wgslsmith_add_vec2_u32(var_1.b.wz, var_1.b.yy))));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(310f))), -481f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + 118f), _wgslsmith_f_op_f32(f32(-1f) * -509f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, 357f))))));
    var var_4 = u_input.b;
    return var_3.x;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = vec4<i32>(global0.x, u_input.c.x << (select(1u, firstTrailingBit(global1.x), true) % 32u), u_input.c.x, ~(-global0.x));
    let var_1 = 434f;
    return _wgslsmith_f_op_f32(func_3(~(~u_input.a & (global1.x >> (18710u % 32u))) | (u_input.a << ((global1.x >> (~4294967295u % 32u)) % 32u)), all(select(vec3<bool>(false, arg_0, false), !vec3<bool>(true, arg_0, true), vec3<bool>(false, arg_0, false))) & false, all(vec3<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)), 0u <= u_input.b.x, true)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, ~_wgslsmith_mod_u32(4294967295u, global1.x)), select(u_input.b.x ^ 51916u, global1.x, arg_0))));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = 1i;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(any(vec2<bool>(false, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(384f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1275f)) - _wgslsmith_f_op_f32(-306f + -808f)))));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1887f - -751f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1013f - -200f) + 1361f)) + -1622f)));
    var var_1 = false;
    global0 = vec2<i32>(-1i) * -u_input.c.wz;
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = false;
    global2 = 1000f;
    var var_1 = Struct_2(~((_wgslsmith_sub_u32(39832u, 0u) << (global1.x % 32u)) >> (~37423u % 32u)), abs(vec4<u32>(global1.x << (u_input.b.x % 32u), 49233u, _wgslsmith_dot_vec3_u32(u_input.b ^ u_input.b, ~u_input.b), _wgslsmith_mod_u32(reverseBits(global1.x), max(global1.x, u_input.b.x)))));
    var_0 = true;
    global1 = var_1.b.zwz;
    return ~countOneBits(var_1.b.zxx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(!(!func_1(global0.x)), Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-964f + 1084f)))), 231f));
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1963f, -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1133f)), _wgslsmith_f_op_f32(floor(-1345f)))), _wgslsmith_f_op_f32(func_3(32365u, true, _wgslsmith_f_op_f32(func_2(false)) >= _wgslsmith_f_op_f32(abs(-756f)), ~global1.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(1u, u_input.b.x), true, true, ~0u))), _wgslsmith_f_op_f32(ceil(420f)), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -624f))));
    let var_1 = Struct_2(u_input.a, ~abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(global1.x, 1u, 9024u, 1321u)), ~vec4<u32>(63262u, 4294967295u, global1.x, 4294967295u))));
    var var_2 = true;
    let var_3 = _wgslsmith_sub_vec2_u32(u_input.b.yz, ~vec2<u32>(2501u, (4127u << (var_1.a % 32u)) | ~34036u));
    var var_4 = 41757u;
    var var_5 = _wgslsmith_clamp_u32(167131u, abs(_wgslsmith_mod_u32(var_3.x, 5472u)), var_1.a) & 4294967295u;
    let var_6 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), vec2<bool>(false, false)), select(vec2<bool>(all(vec2<bool>(true, false)), u_input.c.x != -1i), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), var_0.x, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

