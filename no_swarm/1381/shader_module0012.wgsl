struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(39061u), Struct_1(48148u), Struct_1(52967u), Struct_1(3507u), Struct_1(3678u), Struct_1(11792u), Struct_1(4294967295u), Struct_1(4661u), Struct_1(1u), Struct_1(46533u), Struct_1(4294967295u), Struct_1(54134u), Struct_1(60120u));

var<private> global1: array<bool, 14> = array<bool, 14>(true, true, false, false, false, false, true, true, false, false, false, false, true, false);

var<private> global2: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<f32> {
    var var_0 = u_input.a.yx;
    global2 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_1 = vec2<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(arg_0.a), arg_0.a), 14u)]);
    var_1 = vec2<bool>(var_1.x, !(!(!all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(arg_0.a, 14u)])))));
    global2 = -1179f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) - _wgslsmith_f_op_vec4_f32(sign(arg_1)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> StorageBuffer {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-398f, 486f, 788f) * vec3<f32>(-1460f, -1525f, -241f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(705f, -818f, -324f) + vec3<f32>(-165f, -1569f, -2362f)))))))));
    var var_2 = arg_1;
    global1 = array<bool, 14>();
    var var_3 = _wgslsmith_f_op_vec4_f32(func_2(Struct_1(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a, arg_0.a, 2548u)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(var_0.a, 4294967295u, 4294967295u)), vec3<u32>(0u, 4294967295u, arg_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1328f, -1539f, -1192f, -2149f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -2280f, 619f, var_1.x))) + vec4<f32>(var_1.x, 1000f, var_1.x, -374f))))));
    return StorageBuffer(~u_input.a.yzw, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, arg_0.a), ~0u), arg_0.a, countOneBits(var_0.a)), vec3<u32>(var_0.a, ~153049u, 0u)), u_input.a.wx, arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.x) - var_3.xx), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 894f) * var_1.yz)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), -5596i <= -(u_input.a.x | 4658i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1782f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1189f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-270f, -314f, 431f))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -984f))), _wgslsmith_f_op_f32(min(-593f, _wgslsmith_f_op_f32(-730f + -1673f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1986f), _wgslsmith_f_op_f32(-1528f - -2342f), all(vec2<bool>(false, false)))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(834f, _wgslsmith_f_op_f32(select(1117f, _wgslsmith_f_op_f32(round(var_1.x)), 22319u > _wgslsmith_dot_vec4_u32(vec4<u32>(35778u, 4294967295u, 7877u, 0u), vec4<u32>(8550u, 1u, 12428u, 38114u)))), true && !any(vec2<bool>(true, var_0.x)))), 589f, var_1.x);
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(~46118u, 13u)], vec2<i32>(0i, -3990i));
}

