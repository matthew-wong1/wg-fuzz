struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: f32, arg_1: f32) -> f32 {
    return _wgslsmith_f_op_f32(arg_0 + -860f);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-474f, 1342f, -1024f, -566f) * vec4<f32>(-2156f, -859f, 655f, -892f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(895f, -137f, -580f, 1443f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1185f, 1091f, 647f, -304f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-395f, 1000f, -1763f, -350f)), true)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(253f, 119f) * -1842f), -1058f)))));
    var var_1 = u_input.a;
    var var_2 = 0u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(533f, var_0.a.x, true))), _wgslsmith_f_op_f32(var_0.b - var_0.b), var_0.a.x, var_0.b) * vec4<f32>(_wgslsmith_f_op_f32(floor(377f)), -1667f, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.a.x)))), -1670f);
    let var_4 = var_3;
    return vec4<bool>(any(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), any(vec2<bool>(true, false)) && (var_3.a.x == 952f))), false, _wgslsmith_dot_vec2_i32(-select(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(u_input.c, -2147483647i), true), firstTrailingBit(abs(u_input.b.yw))) < u_input.b.x, all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, false)))));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> vec3<f32> {
    var var_0 = arg_0;
    let var_1 = var_0.b;
    let var_2 = var_0.c;
    let var_3 = false || (any(func_3()) && false);
    var_0 = Struct_3(var_0.b.b, var_0.b, var_0.c);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(159f, _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-300f, -156f, -2145f), vec3<f32>(462f, -145f, 462f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-197f, 1813f, 1056f) * vec3<f32>(287f, 1222f, -1000f)), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(596f, 1259f, -1000f), vec3<f32>(488f, 247f, -338f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1836f, 852f, -1000f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1751f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-934f, 376f) + _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1037f) - vec3<f32>(var_0.x, var_0.x, -248f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1186f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 200f), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), -415f, _wgslsmith_f_op_f32(func_1(867f, -1500f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1267f, var_0.x, var_0.x) * vec3<f32>(var_0.x, 830f, -1150f)) - _wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec4<bool>(false, true, false, false), Struct_2(vec2<u32>(1u, 0u), vec4<bool>(true, true, true, false), vec2<u32>(u_input.a, u_input.a), 3620u), Struct_1(vec4<f32>(1963f, var_0.x, 585f, -416f), var_0.x)), u_input.a))))));
    let var_1 = select(select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(-765f < var_0.x, true)), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), true), vec2<bool>(!any(vec4<bool>(true, false, true, true)), 4294967295u <= ~u_input.a), vec2<bool>(true, !select(false, true, false)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 520f, 1f)))) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(1614f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1280f, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), 1448f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(680f, 303f, var_0.x) + vec3<f32>(var_0.x, 806f, var_0.x)), vec3<f32>(var_0.x, 892f, 791f)))))));
    var var_2 = !vec2<bool>(!var_1.x, func_3().x);
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1289f, 1058f) * vec3<f32>(-1335f, var_0.x, 1115f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wz ^ vec2<i32>(0i, u_input.b.x), u_input.b.zw), _wgslsmith_clamp_i32(u_input.b.x, u_input.c, 2147483647i) >> (40713u % 32u), ~(~u_input.b.x), -16417i) ^ -u_input.b, vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, ~u_input.a), vec3<u32>(~u_input.a, 4294967295u & u_input.a, ~u_input.a))), vec4<u32>(u_input.a >> (_wgslsmith_mod_u32(13604u, 42134u) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 37982u, u_input.a, u_input.a), vec4<u32>(10498u, u_input.a, u_input.a, 4078u)), ~4294967295u, ~0u), vec2<f32>(-1258f, var_0.x));
}

