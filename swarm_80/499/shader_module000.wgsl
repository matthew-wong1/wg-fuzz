struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec3<i32>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    var var_0 = Struct_3(reverseBits((arg_0.x << (63247u % 32u)) << (select(8776u, _wgslsmith_sub_u32(4294967295u, 0u), true) % 32u)), vec3<u32>(1u, 1u, 1u), Struct_2(Struct_1(vec4<bool>(-19314i > arg_0.x, true, any(vec2<bool>(true, true)), true), vec3<f32>(1f, 1f, 1f), vec4<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, arg_0.x, arg_0.x), vec4<i32>(u_input.a, 2147483647i, -31120i, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(28874i, arg_0.x, arg_0.x), arg_0), _wgslsmith_clamp_i32(2147483647i, arg_0.x, 1i)), any(vec3<bool>(true, true, true)), -firstTrailingBit(global0[_wgslsmith_index_u32(1u, 6u)])), arg_0.x));
    let var_1 = Struct_3(1i, var_0.b, Struct_2(Struct_1(vec4<bool>(!var_0.c.a.a.x, !var_0.c.a.a.x, all(var_0.c.a.a.wz), var_0.c.a.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c.a.b, vec3<f32>(var_0.c.a.b.x, -2988f, -1220f))), vec4<i32>(u_input.a, u_input.a, 39666i, u_input.a) & var_0.c.a.c, false, vec3<i32>(-1i) * -vec3<i32>(-38610i, u_input.a, u_input.a)), arg_0.x));
    return vec3<bool>(all(vec2<bool>(true, var_1.c.a.a.x)) && (874f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a.b.x), var_1.c.a.b.x)), !(true || (firstLeadingBit(var_0.b.x) < _wgslsmith_sub_u32(var_0.b.x, 0u))), var_1.c.a.a.x);
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    let var_0 = all(select(vec3<bool>(all(vec4<bool>(true, false, true, false)), (32761i << (0u % 32u)) == _wgslsmith_mod_i32(38115i, u_input.a), false), select(vec3<bool>(arg_0, false, true), !select(vec3<bool>(true, false, true), vec3<bool>(arg_0, true, true), arg_0), !func_3(vec3<i32>(u_input.a, -24200i, 2147483647i))), vec3<bool>(true, true, true)));
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    let var_1 = 1i == _wgslsmith_dot_vec4_i32(abs(-firstLeadingBit(vec4<i32>(36442i, u_input.a, u_input.a, -1i))), vec4<i32>(u_input.a, ~u_input.a | 23931i, abs(u_input.a), -u_input.a ^ _wgslsmith_mod_i32(1i, -31742i)));
    global0 = array<vec3<i32>, 6>();
    return Struct_1(select(vec4<bool>(var_0, arg_0, true, var_1), vec4<bool>(any(select(vec4<bool>(var_1, var_1, true, true), vec4<bool>(var_1, var_0, false, var_1), vec4<bool>(false, var_0, false, true))), true && !var_0, true, true), !select(vec4<bool>(var_0, true, true, false), select(vec4<bool>(var_1, var_1, var_1, var_0), vec4<bool>(true, var_0, false, var_1), true), !vec4<bool>(true, true, var_0, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1811f, _wgslsmith_f_op_f32(f32(-1f) * -2183f), -690f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, -1000f, 2426f))))), -(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, -49827i, u_input.a), vec4<i32>(u_input.a, -11767i, u_input.a, u_input.a), vec4<i32>(44386i, 2147483647i, 13017i, u_input.a))), false, -select(global0[_wgslsmith_index_u32(8637u, 6u)], global0[_wgslsmith_index_u32(select(abs(arg_1), arg_1 & 28017u, true), 6u)], vec3<bool>(true, var_1 == true, !arg_0)));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(-1i, firstTrailingBit(vec3<u32>(1u, 1u, 1u)), Struct_2(func_2(true, max(_wgslsmith_sub_u32(77268u, 0u), ~6067u)), 1i));
    let var_1 = vec3<bool>(!var_0.c.a.a.x, any(var_0.c.a.a) != var_0.c.a.d, true);
    var var_2 = func_2(firstLeadingBit(max(var_0.b.x, _wgslsmith_mod_u32(var_0.b.x, var_0.b.x))) > var_0.b.x, abs(min(firstTrailingBit(4294967295u), 4294967295u)));
    global0 = array<vec3<i32>, 6>();
    var var_3 = vec4<i32>(var_0.a, var_2.e.x, u_input.a, -(i32(-1i) * -67163i));
    return _wgslsmith_f_op_f32(-var_2.b.x);
}

fn func_4(arg_0: f32) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(-1871f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), -455f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(249f, 1096f, arg_0))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, 946f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -476f, 760f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2112f, arg_0, arg_0) - vec3<f32>(arg_0, var_0.x, -459f))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -164f), _wgslsmith_f_op_f32(floor(-544f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_div_f32(-1298f, var_0.x), _wgslsmith_f_op_f32(step(1000f, 782f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, 1021f, 633f) - vec3<f32>(arg_0, var_0.x, arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -1000f, var_0.x), vec3<f32>(var_0.x, arg_0, 1071f))))))));
    var var_2 = ~(~max(vec3<u32>(~4294967295u, ~1u, 1u), ~abs(vec3<u32>(37632u, 1u, 63335u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-295f, 1892f, -2117f, var_0.x) * vec4<f32>(203f, -283f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, arg_0, -1304f, var_0.x)))))))));
    return Struct_2(Struct_1(vec4<bool>(false, ~9704u != _wgslsmith_sub_u32(var_2.x, 1u), (var_2.x < var_2.x) & true, true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1238f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), 760f), vec4<i32>(-1i, 1i, abs(u_input.a & u_input.a), 2147483647i), true, vec3<i32>(-1i) * -(global0[_wgslsmith_index_u32(12957u, 6u)] >> (vec3<u32>(4294967295u, var_2.x, var_2.x) % vec3<u32>(32u)))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_4(_wgslsmith_f_op_f32(func_1()));
    var var_2 = Struct_2(var_1.a, _wgslsmith_mod_i32(-26529i, var_1.a.e.x));
    var var_3 = func_4(_wgslsmith_f_op_f32(-var_2.a.b.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-869f * 1463f), _wgslsmith_f_op_f32(step(var_1.a.b.x, var_3.a.b.x)), _wgslsmith_f_op_f32(min(var_2.a.b.x, var_1.a.b.x)), 501f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.b.x, -1217f, var_1.a.b.x, var_3.a.b.x), vec4<f32>(-2342f, var_2.a.b.x, var_3.a.b.x, var_2.a.b.x)), vec4<f32>(951f, 572f, var_2.a.b.x, var_2.a.b.x))))))));
    let var_5 = -283f;
    var_1 = func_4(var_5);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1u), (-u_input.a & var_2.b) & 0i);
}

