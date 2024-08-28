struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<Struct_1, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global3 = array<Struct_1, 25>();
    var var_0 = u_input.b.zzy;
    global0 = array<u32, 26>();
    let var_1 = global3[_wgslsmith_index_u32(countOneBits(430u), 25u)];
    var_0 = vec3<i32>(reverseBits(17641i), abs((var_0.x << (u_input.c % 32u)) >> (34695u % 32u)) & -var_0.x, -(~(reverseBits(var_0.x) & -1i)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1847f);
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -541f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(-579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-263f))))), 1000f);
    let var_1 = -u_input.b.zy;
    let var_2 = max(select(~(~vec4<u32>(global0[_wgslsmith_index_u32(8411u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], 5436u, 35937u)), vec4<u32>(4294967295u, firstTrailingBit(4294967295u), 1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)]), vec4<bool>(false, u_input.a != u_input.c, false, any(vec3<bool>(true, false, true)))) << (vec4<u32>(global0[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 25132u, 0u, 31554u), vec4<u32>(58961u, global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 4294967295u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8249u, 26u)], 26u)]), vec3<u32>(19257u, u_input.c, global0[_wgslsmith_index_u32(u_input.c, 26u)])) % 32u), 33034u, 48039u) % vec4<u32>(32u)), max(~vec4<u32>(~36385u, ~u_input.c, 69864u, 0u), countOneBits(vec4<u32>(_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 26u)]), ~u_input.c, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], 16840u, 31616u), vec3<u32>(0u, u_input.a, 19074u))))));
    global0 = array<u32, 26>();
    global1 = ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(17282u ^ ~u_input.a, 26u)], _wgslsmith_mod_u32(var_2.x, ~_wgslsmith_mod_u32(u_input.a, u_input.c)));
    return global3[_wgslsmith_index_u32(~17419u, 25u)];
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(711f)), _wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(max(-598f, -446f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1296f, 252f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1441f, 1141f) + vec3<f32>(-1000f, -727f, -1408f)))))));
    let var_1 = global3[_wgslsmith_index_u32(u_input.a, 25u)];
    var var_2 = func_2();
    let var_3 = global3[_wgslsmith_index_u32(u_input.a, 25u)];
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(1131f, 872f, var_0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 2421f, 782f), vec3<f32>(-1875f, var_0.x, var_0.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -3332f, _wgslsmith_f_op_f32(trunc(559f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, var_0.x))))))));
    return select(!vec2<bool>(func_2().c.x, _wgslsmith_f_op_f32(min(var_0.x, 830f)) >= 922f), !var_1.c, vec2<bool>(!var_2.c.x & all(vec2<bool>(var_2.c.x, var_1.c.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-20620i, reverseBits(global0[_wgslsmith_index_u32(u_input.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 26u)]) | vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], 57013u, global0[_wgslsmith_index_u32(u_input.a, 26u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], u_input.c, u_input.a))), 26u)]), select(vec2<bool>(false, select(global0[_wgslsmith_index_u32(49367u, 26u)] >= 71471u, true, false)), !func_1(), true));
    var var_1 = func_2();
    var var_2 = 2000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-455f)), _wgslsmith_f_op_f32(abs(-937f))) + _wgslsmith_div_f32(1089f, -571f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-220f, -502f) * _wgslsmith_f_op_f32(sign(-1000f)))));
    let var_3 = 1u;
    var var_4 = max(var_1.b, var_1.b);
    var var_5 = var_0;
    var var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_3, 19965u, var_1.b, 1u)), min(~vec4<u32>(32416u, 4294967295u, 0u, u_input.a), ~vec4<u32>(27447u, var_1.b, 0u, 0u))), _wgslsmith_clamp_u32(~max(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(18237u, 4294967295u, 20134u), vec3<u32>(0u, var_0.b, 0u))), _wgslsmith_mod_u32(~countOneBits(4294967295u), 36489u), 61293u));
}

