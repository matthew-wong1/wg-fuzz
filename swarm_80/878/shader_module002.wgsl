struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(46648u, 6812u), vec2<u32>(2850u, 41697u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 2583u), vec2<u32>(1u, 40762u), vec2<u32>(0u, 4294967295u), vec2<u32>(81638u, 4294967295u), vec2<u32>(1599u, 102142u));

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(arg_0.zyy)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global2.a.x)) * _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(select(1490f, -1565f, true)))), arg_0.x, _wgslsmith_div_f32(400f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))))));
    var var_1 = reverseBits(u_input.a.x);
    global1 = array<vec2<u32>, 8>();
    let var_2 = any(vec3<bool>(any(vec4<bool>(any(vec2<bool>(global2.a.x, global2.a.x)), global2.a.x, global2.a.x, true)), any(vec4<bool>(false, global2.a.x, false, global2.a.x)) && select(false, global2.a.x, false), global2.a.x));
    let var_3 = !(!vec3<bool>(_wgslsmith_add_u32(u_input.a.x, u_input.d.x) > ~0u, false, global2.a.x));
    return _wgslsmith_mod_u32(~(~u_input.c << (abs(u_input.b.x) % 32u)), u_input.d.x) | u_input.d.x;
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(select(!global2.a, vec2<bool>(any(vec3<bool>(global2.a.x, arg_0.a.x, global2.a.x)), global2.a.x), !select(!arg_0.a, !vec2<bool>(global2.a.x, true), !global2.a.x)));
    var var_1 = vec4<i32>(~firstTrailingBit(select(reverseBits(1i), 1i, true)), 1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-3237i, 2147483647i), vec2<i32>(1i, -10816i))), abs(44562i)), ~(_wgslsmith_div_i32(~0i, 27669i >> (0u % 32u)) >> (~u_input.c % 32u)));
    let var_2 = Struct_1(select(select(vec2<bool>(all(vec2<bool>(var_0.a.x, global2.a.x)), true), !(!global2.a), false), vec2<bool>(!(var_1.x >= var_1.x), any(vec2<bool>(true, false)) | true), select(select(vec2<bool>(true, true), vec2<bool>(arg_0.a.x, global2.a.x), !global2.a), vec2<bool>(false, any(vec3<bool>(true, arg_0.a.x, arg_0.a.x))), true)));
    var var_3 = Struct_1(var_2.a);
    var var_4 = u_input.b.x;
    return var_2.a;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(29391u ^ min(u_input.d.x, 4503u), ~u_input.a.x ^ max(4294967295u, 0u)), (func_2(vec4<f32>(523f, 1563f, 882f, -1000f)) & 29174u) ^ u_input.c), 10417u);
    global0 = 1i;
    var_0 = vec2<u32>(4294967295u, 40239u);
    var var_1 = any(select(vec4<bool>(true, true, true, false), vec4<bool>(global2.a.x, global2.a.x, !(12570u == var_0.x), true), select(select(select(vec4<bool>(true, false, global2.a.x, true), vec4<bool>(false, true, false, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, false)), !vec4<bool>(global2.a.x, global2.a.x, false, true), vec4<bool>(false, false, global2.a.x, false)), !vec4<bool>(global2.a.x, false, global2.a.x, true), any(global2.a))));
    let var_2 = func_3(Struct_1(global2.a));
    return Struct_1(vec2<bool>(any(!select(vec4<bool>(var_2.x, false, global2.a.x, global2.a.x), vec4<bool>(true, global2.a.x, false, var_2.x), true)), var_2.x || var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(2079f, -688f)), -1186f, _wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(-1135f * -367f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -425f, -234f, -1052f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, -1136f, 1361f, -1190f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-628f, 514f, 1591f, 1000f), vec4<f32>(-1010f, 715f, -1065f, 367f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-222f, 806f, -597f, 429f), vec4<f32>(-561f, 162f, -1425f, -1000f), false)))))));
    global1 = array<vec2<u32>, 8>();
    var var_1 = !vec3<bool>(func_3(Struct_1(vec2<bool>(false, false))).x, _wgslsmith_f_op_f32(f32(-1f) * -324f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), !global2.a.x);
    global0 = 19291i;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-826f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_clamp_i32(27344i, 0i, 0i) | ~4146i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)) - -1436f), -591f), u_input.b);
}

