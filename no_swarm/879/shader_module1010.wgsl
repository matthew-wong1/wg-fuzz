struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
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

var<private> global0: array<u32, 5>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = Struct_1(u_input.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-109f, 981f))))));
    let var_1 = ~(-u_input.b.x);
    let var_2 = global2[_wgslsmith_index_u32(abs(u_input.d.x), 18u)];
    var var_3 = vec3<bool>(arg_0, !arg_0, arg_0);
    global0 = array<u32, 5>();
    return select(!(!select(vec4<bool>(var_3.x, arg_0, arg_0, false), !vec4<bool>(true, false, true, var_3.x), arg_0)), !vec4<bool>(any(vec2<bool>(true, var_3.x)) && (false && arg_0), arg_0, !all(vec4<bool>(arg_0, arg_0, false, arg_0)), -var_0.a == var_1), 46557u <= ~(~u_input.d.x));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(-(i32(-1i) * -111i), arg_1.b);
    global0 = array<u32, 5>();
    var var_1 = select(vec2<bool>(any(select(select(vec3<bool>(false, true, arg_0), vec3<bool>(false, false, arg_0), true), select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), arg_0), true)), true), !vec2<bool>(~global0[_wgslsmith_index_u32(26950u, 5u)] >= ~u_input.d.x, all(func_3(true))), 59565u > _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(15920u, u_input.d.x), u_input.d.xz), firstLeadingBit(4294967295u)), vec3<u32>(global0[_wgslsmith_index_u32(~u_input.d.x, 5u)], global0[_wgslsmith_index_u32(19391u, 5u)] >> (u_input.d.x % 32u), ~u_input.d.x)));
    global1 = !arg_0;
    global0 = array<u32, 5>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    global1 = any(vec3<bool>(true, true, true));
    let var_0 = u_input.d;
    var var_1 = Struct_1(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(false, global2[_wgslsmith_index_u32(var_0.x, 18u)], vec3<f32>(-764f, arg_1.b, arg_1.b)))))), arg_1.b));
    return ~51368u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = arg_1;
    global0 = array<u32, 5>();
    var var_1 = Struct_1(16032i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-212f, arg_2)) * _wgslsmith_f_op_f32(-arg_2)))));
    global2 = array<Struct_1, 18>();
    var_0 = global2[_wgslsmith_index_u32(arg_0, 18u)];
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(259f, -338f))) * -515f)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(reverseBits(4294967295u) << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d.x, func_1(vec4<i32>(0i, u_input.b.x, 2147483647i, u_input.c.x), Struct_1(u_input.a, 335f), -90168i)), u_input.d.x) % 32u), Struct_1(-(~(~u_input.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1056f * _wgslsmith_f_op_f32(round(1054f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(648f, _wgslsmith_f_op_f32(-1765f * _wgslsmith_f_op_f32(ceil(563f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(848f, var_0, var_0) - vec3<f32>(-418f, 1054f, var_0))))), vec3<f32>(141f, _wgslsmith_f_op_f32(func_2(true, global2[_wgslsmith_index_u32(1u, 18u)], vec3<f32>(-305f, -456f, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 993f))), !vec3<bool>(false, all(vec4<bool>(true, false, false, true)), true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_2(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], 5u)], 18u)], vec3<f32>(926f, var_0, var_0))), 400f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, var_0), _wgslsmith_f_op_f32(-var_1.x))))));
    var var_3 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-var_2.x));
    var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.yy, vec2<f32>(var_1.x, 1864f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1055f, 1302f), vec2<f32>(var_3.b, var_2.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xx))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zy) + _wgslsmith_f_op_vec2_f32(-var_1.xz)), vec2<f32>(-967f, _wgslsmith_f_op_f32(var_1.x - -454f))), !vec2<bool>(any(vec3<bool>(false, false, true)), true)))));
    let var_4 = global2[_wgslsmith_index_u32(~func_1(~(firstTrailingBit(u_input.b) << (~u_input.d % vec4<u32>(32u))), Struct_1(_wgslsmith_mod_i32(var_3.a, var_3.a | -2147483647i), var_1.x), u_input.c.x), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

