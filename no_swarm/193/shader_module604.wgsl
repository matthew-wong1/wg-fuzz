struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: f32 = -1000f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<i32>) -> vec3<bool> {
    global0 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_sub_vec3_u32(min(max(select(vec3<u32>(13790u, 4294967295u, arg_0), vec3<u32>(55213u, 4294967295u, 60594u), false), firstTrailingBit(vec3<u32>(arg_0, arg_0, 4294967295u))) | ~(~vec3<u32>(1u, arg_0, arg_0)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(86534u, arg_0, 4294967295u)) & ~vec3<u32>(arg_0, arg_0, 4294967295u), ~(~vec3<u32>(0u, arg_0, arg_0)))), vec3<u32>(~arg_0, 4294967295u, arg_0));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) - arg_2.x);
    var var_1 = Struct_1(arg_1, !vec3<bool>(false, arg_1, _wgslsmith_f_op_f32(abs(1220f)) == _wgslsmith_f_op_f32(floor(-547f))));
    var_1 = Struct_1(all(vec4<bool>(true, !all(vec2<bool>(arg_1, false)), true, true)), vec3<bool>(true, true, all(select(!vec4<bool>(false, arg_1, false, var_1.b.x), vec4<bool>(var_1.a, false, true, arg_1), select(vec4<bool>(arg_1, false, false, false), vec4<bool>(true, arg_1, arg_1, arg_1), var_1.a)))));
    return !select(vec3<bool>(any(select(var_1.b.zy, vec2<bool>(var_1.b.x, var_1.a), var_1.b.yy)), arg_1, !all(vec4<bool>(false, var_1.b.x, var_1.b.x, arg_1))), select(var_1.b, !(!vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(true, true, 260f < arg_2.x)), !var_1.b);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    global0 = array<Struct_1, 12>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(round(arg_1)), !arg_2.x)) - _wgslsmith_f_op_f32(116f - _wgslsmith_f_op_f32(arg_1 + arg_1))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1)), 2174f, !arg_3.b.x)))));
    let var_1 = abs(select(_wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(-u_input.d.x, u_input.c.x, 0i, -u_input.c.x), vec4<i32>(-1i, u_input.c.x, 0i, 1i)), ~(u_input.d | -u_input.d), any(arg_2)));
    var var_2 = Struct_1(arg_2.x, select(func_3(21124u, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1469f, var_0.x, var_0.x, var_0.x))), -vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, -27118i)), !select(!vec3<bool>(false, arg_0.a, arg_3.a), !arg_2.xzw, true), arg_0.b));
    var_2 = global0[_wgslsmith_index_u32(95432u, 12u)];
    return arg_3.b.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: u32) -> vec3<bool> {
    let var_0 = true;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(769f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-222f)) - _wgslsmith_f_op_f32(trunc(668f))))));
    global1 = 280f;
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    return vec3<bool>(any(!vec3<bool>(arg_2 >= arg_2, func_2(Struct_1(arg_0.x, arg_0.zyx), 414f, arg_0, global0[_wgslsmith_index_u32(arg_2, 12u)]), any(arg_0))), false, any(select(vec3<bool>(true, var_0, 2147483647i < u_input.c.x), !(!vec3<bool>(arg_0.x, arg_0.x, false)), func_2(global0[_wgslsmith_index_u32(~arg_2, 12u)], _wgslsmith_f_op_f32(round(1125f)), select(vec4<bool>(arg_0.x, arg_0.x, true, var_0), arg_0, vec4<bool>(arg_0.x, var_0, true, true)), Struct_1(arg_0.x, arg_0.yxy)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-274f, -473f) + _wgslsmith_f_op_f32(ceil(-537f)))))) + _wgslsmith_f_op_f32(-1f));
    var var_0 = !select(!vec2<bool>(true, any(vec2<bool>(true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true));
    let var_1 = Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, !var_0.x))), select(!(!vec3<bool>(var_0.x, true, false)), func_1(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), u_input.a, ~31943u), !(!vec3<bool>(true, var_0.x, true))));
    global0 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_div_u32(max(393u, 4294967295u), 4294967295u), 1u, 71391u, 37470u), ~vec4<u32>(_wgslsmith_mult_u32(19645u, 54418u), 1u, select(39828u, 1u, false), 0u)), countOneBits(u_input.d.x) ^ -1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(355f, 654f, -145f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(470f, -845f, 227f) * vec3<f32>(630f, 676f, 1597f))) - vec3<f32>(1f, _wgslsmith_f_op_f32(sign(-1321f)), _wgslsmith_f_op_f32(step(-219f, 406f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, -521f, -796f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1249f, -487f, 1000f) + vec3<f32>(-1227f, -234f, -438f)), vec3<f32>(-685f, 756f, -1864f)))))), u_input.d.zwz);
}

