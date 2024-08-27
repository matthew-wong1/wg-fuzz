struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(1u), Struct_3(4294967295u), Struct_3(4294967295u), Struct_3(1u), Struct_3(45773u), Struct_3(0u), Struct_3(57964u), Struct_3(1u), Struct_3(4294967295u), Struct_3(1u), Struct_3(1u), Struct_3(0u), Struct_3(5015u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = Struct_3(30777u ^ _wgslsmith_sub_u32(~19787u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(4294967295u, 341u, 0u, 0u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<bool>(true, true, true, true)))));
    global0 = array<Struct_3, 13>();
    var var_1 = u_input.a.zx;
    let var_2 = u_input.b;
    global0 = array<Struct_3, 13>();
    return firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(~0u, var_0.a), select(4294967295u, ~firstLeadingBit(var_0.a), ~4294967295u >= var_0.a), ~(~(~var_0.a))));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    global0 = array<Struct_3, 13>();
    let var_0 = u_input.b;
    let var_1 = global0[_wgslsmith_index_u32(arg_1.x, 13u)];
    var var_2 = func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2001f, 669f)))));
    return -637f;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = !(!arg_0.x);
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(185f, 506f, -1723f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1025f, -1755f, 1100f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1849f, 1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2304f), _wgslsmith_f_op_f32(func_2(33990u, vec3<u32>(28353u, 0u, 24186u), 736f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(572f, -314f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 217f) - vec2<f32>(1000f, 1775f)))))), ~((u_input.a.x | 29254i) >> (_wgslsmith_div_u32(51764u, 4294967295u) % 32u)) >= 1i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -651f), -1167f)), _wgslsmith_f_op_f32(sign(-967f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2329f)) + -340f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(4294967295u, vec3<u32>(18829u, 0u, 25078u), -580f)), -273f))), -955f), vec4<bool>(any(arg_0.ww), !((arg_0.x | arg_0.x) || arg_0.x), !(!(!arg_0.x)), false));
    var_0 = ~min(0u, 6120u) != abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 81309u), select(vec3<u32>(41249u, 1u, 22658u), vec3<u32>(7755u, 31373u, 81824u), arg_0.x)));
    var_0 = !select(false, !any(select(arg_0.zz, var_1.e.xx, var_1.e.wz)), any(arg_0.xw));
    var_0 = all(!arg_0.wwz) & (var_1.a.x == _wgslsmith_f_op_f32(select(var_1.d.x, var_1.b.x, false)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1826f, _wgslsmith_f_op_f32(round(298f)), u_input.b >= 46209i))) * _wgslsmith_f_op_f32(-var_1.d.x)) - 121f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, _wgslsmith_div_u32(57235u, 30711u), max(35035u, 1u))), reverseBits(~(~(~vec3<u32>(4294967295u, 8517u, 64091u)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1324f, 922f)), _wgslsmith_f_op_f32(1465f * -977f)))));
    global0 = array<Struct_3, 13>();
    let var_2 = Struct_1(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1203f, 542f, true))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x)))), !any(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))));
    var var_3 = var_1;
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(var_2.c, true, var_2.c, var_2.c))) * _wgslsmith_f_op_f32(func_2(24731u, vec3<u32>(4294967295u, var_0, var_0), 2639f))), -1460f, -451f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 780f, var_1.a.x)))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1575f, 451f), var_3.a)), !var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.b, var_1.a.x, 1293f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(237f, var_1.a.x, 1743f) * vec3<f32>(var_1.a.x, 481f, 1161f)))))), vec4<bool>(!(var_2.c || true), any(vec2<bool>(true, true)) | (_wgslsmith_f_op_f32(-var_2.b) <= var_2.a), true, !var_2.c == ((u_input.b | u_input.b) >= min(1i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2536f, var_1.a.x, var_3.a.x, -809f))), vec4<f32>(1155f, 1257f, var_3.a.x, var_4.b.x)) + vec4<f32>(var_4.d.x, _wgslsmith_f_op_f32(max(-257f, var_1.a.x)), 674f, 1478f)))), firstLeadingBit(~(~21766u)));
}

