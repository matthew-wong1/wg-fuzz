struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(69290u, 15700u, 36548u), vec3<u32>(4710u, 17662u, 67565u), vec3<u32>(4339u, 36416u, 89903u), vec3<u32>(4294967295u, 1u, 60412u), vec3<u32>(21977u, 18083u, 0u), vec3<u32>(9213u, 47331u, 99013u), vec3<u32>(39771u, 4294967295u, 19249u), vec3<u32>(74493u, 1u, 77282u), vec3<u32>(4294967295u, 0u, 97537u), vec3<u32>(4294967295u, 50164u, 38258u), vec3<u32>(0u, 32986u, 0u), vec3<u32>(40885u, 0u, 4294967295u), vec3<u32>(0u, 52963u, 0u), vec3<u32>(39292u, 18835u, 54129u), vec3<u32>(34747u, 19929u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 1027u), vec3<u32>(19220u, 1u, 15300u), vec3<u32>(16644u, 0u, 5468u), vec3<u32>(85868u, 38420u, 4294967295u), vec3<u32>(4294967295u, 65468u, 23162u), vec3<u32>(73732u, 61531u, 39744u), vec3<u32>(50214u, 89174u, 33064u), vec3<u32>(62833u, 7271u, 59822u), vec3<u32>(0u, 27336u, 0u), vec3<u32>(69342u, 58678u, 52100u), vec3<u32>(22520u, 37873u, 1u), vec3<u32>(86978u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 77293u), vec3<u32>(2618u, 0u, 4294967295u), vec3<u32>(50585u, 47269u, 25387u));

var<private> global2: array<vec4<i32>, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = ~vec3<u32>(u_input.d.x, 0u, ~firstLeadingBit(0u));
    var var_1 = abs(global2[_wgslsmith_index_u32(~abs(~(~var_0.x)), 3u)]);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1838f * 548f) * _wgslsmith_f_op_f32(-arg_0.a.b)))) * -2492f), _wgslsmith_f_op_f32(-arg_0.a.b));
    global2 = array<vec4<i32>, 3>();
    global1 = array<vec3<u32>, 31>();
    return arg_0.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    let var_0 = Struct_2(Struct_1(abs(arg_0) & min(~u_input.d, vec4<u32>(0u, arg_0.x, 4294967295u, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1518f)))), ~(~1u), !(!vec2<bool>(arg_1.x, arg_1.x))), func_3(Struct_2(Struct_1(vec4<u32>(1u, 33382u, u_input.d.x, 165494u), -552f, u_input.a, select(vec2<bool>(false, arg_1.x), arg_1.zy, arg_1.x)), !arg_1)));
    let var_1 = firstLeadingBit(select(~(~_wgslsmith_sub_vec2_i32(vec2<i32>(-6838i, arg_2), vec2<i32>(-35959i, u_input.c))), vec2<i32>(-40548i, arg_2), arg_1.yz));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(940f, -2258f)))), 148f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.b * 204f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(207f - 317f))), var_0.a.d.x))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f - 1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1183f - _wgslsmith_f_op_f32(f32(-1f) * -248f)))), var_0.a.b));
    return var_0.a.b;
}

fn func_1() -> bool {
    global0 = 1114f;
    let var_0 = abs(u_input.b) ^ 48u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1746f) - _wgslsmith_f_op_f32(func_2(vec4<u32>(26325u, 5516u, 49494u, u_input.a), vec3<bool>(false, false, false), u_input.e))) - _wgslsmith_f_op_f32(-1f)) * 128f));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-962f, _wgslsmith_f_op_f32(var_1 + 461f)), vec2<f32>(_wgslsmith_f_op_f32(-var_1), -810f), true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1249f, var_1), vec2<f32>(-316f, var_1))))), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))))) + vec2<f32>(_wgslsmith_f_op_f32(986f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(u_input.d, vec3<bool>(true, false, true), -2147483647i)))))));
    global2 = array<vec4<i32>, 3>();
    return !(!all(func_3(Struct_2(Struct_1(u_input.d, var_1, 244u, vec2<bool>(false, false)), vec3<bool>(true, true, false))).xx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!((u_input.c >> (u_input.b % 32u)) > -2147483647i), 4294967295u < _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(1u, u_input.d.x, ~72253u)));
    global1 = array<vec3<u32>, 31>();
    var var_1 = func_1();
    let var_2 = Struct_1(~(~u_input.d), -1340f, 74513u, !(!(!select(vec2<bool>(false, true), vec2<bool>(var_0.x, true), true))));
    var var_3 = u_input.e;
    let var_4 = Struct_2(var_2, vec3<bool>(all(!(!vec4<bool>(false, var_2.d.x, false, var_0.x))), all(vec3<bool>(var_2.d.x, var_2.d.x, var_0.x)), false));
    var_0 = vec2<bool>(true, !(var_2.d.x || false));
    let var_5 = 1364f;
    var_0 = var_4.b.xx;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<i32>(-39763i, u_input.e << (u_input.d.x % 32u), 5571i), ~reverseBits(_wgslsmith_dot_vec4_u32(var_2.a, var_4.a.a)) & _wgslsmith_mod_u32(24756u, ~u_input.a & 1u));
}

