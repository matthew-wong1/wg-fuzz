struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

var<private> global1: f32 = 479f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1546f, 1435f, 775f, 1292f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, -1773f, -1236f, 319f) + vec4<f32>(1257f, 2673f, 220f, 2311f))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1508f, 1963f, 160f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-756f, -295f, 410f, 1293f))))))));
    global0 = array<vec2<u32>, 2>();
    let var_1 = 397f;
    global0 = array<vec2<u32>, 2>();
    let var_2 = ~(u_input.d & u_input.d);
    return true;
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    var var_0 = 1u << (max(u_input.c | ~u_input.c, ~u_input.a.x) % 32u);
    var var_1 = ~4294967295u;
    let var_2 = Struct_1(select(!vec3<bool>(!arg_0, arg_0, any(vec4<bool>(arg_1.x, arg_0, arg_0, arg_1.x))), arg_1, select(vec3<bool>(arg_0, func_2(), arg_1.x), arg_1, vec3<bool>(true, true, false))));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f)), Struct_1(select(vec3<bool>(false, true, arg_0), var_2.a, var_2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1103f, -313f, 510f) * vec3<f32>(-885f, -109f, -1000f)), vec3<f32>(554f, 1003f, -329f)) - vec3<f32>(_wgslsmith_f_op_f32(-1474f - 1599f), -888f, _wgslsmith_f_op_f32(abs(1995f))))), u_input.b.x, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1825f)), 103f)), Struct_1(var_2.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~u_input.c), 1u, _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_clamp_u32(0u, u_input.c, 0u))), ~(vec3<u32>(u_input.a.x, 27959u, 3966u) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x) % vec3<u32>(32u)))));
    var var_4 = var_3.d.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(995f - -751f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.d.a), -352f, any(vec2<bool>(false, false)))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(87953u, firstLeadingBit(arg_1.x), 25068u), u_input.d.x), ~arg_1.ywy);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(!func_2(), vec3<bool>(arg_2.b.a.x, !arg_2.b.a.x, arg_2.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -662f), -1649f)) - _wgslsmith_f_op_f32(-1000f * 182f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a)))));
    global1 = var_1.x;
    global0 = array<vec2<u32>, 2>();
    global1 = _wgslsmith_f_op_f32(-var_1.x);
    return !vec4<bool>(arg_2.b.a.x, arg_2.b.a.x, true, !(!func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(vec4<bool>(false, true, false, false), func_1(1u, vec4<u32>(u_input.d.x, u_input.a.x, 1u, 1u), Struct_2(-787f, Struct_1(vec3<bool>(false, false, false)))), vec4<bool>(true, false, false, false)), vec4<bool>(func_1(u_input.a.x, u_input.d, Struct_2(896f, Struct_1(vec3<bool>(false, true, false)))).x, all(vec4<bool>(false, true, true, false)), func_2(), 1i == u_input.b.x), true), vec4<bool>(-706f >= _wgslsmith_f_op_f32(floor(290f)), false, !(u_input.c < u_input.d.x), func_2()), vec4<bool>(any(vec3<bool>(true, true, true)) | false, true, (u_input.d.x << (56504u % 32u)) != ~0u, func_1(~u_input.c, u_input.d, Struct_2(-632f, Struct_1(vec3<bool>(false, true, false)))).x));
    let var_1 = ~reverseBits(-2147483647i);
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), 428f, _wgslsmith_f_op_f32(f32(-1f) * -2349f));
    var var_3 = var_2;
    global0 = array<vec2<u32>, 2>();
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, -338f) * vec4<f32>(var_3.x, var_3.x, var_3.x, 1000f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, var_2.x, 2240f, var_2.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_2.x, 200f, 1231f)), var_0.x & true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-751f, var_2.x, 351f, var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(312f))))) + _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_dot_vec2_i32(abs(u_input.b.zz << (~u_input.d.yz % vec2<u32>(32u))), -firstTrailingBit(select(u_input.b.yy, vec2<i32>(var_1, u_input.e.x), var_0.x))), var_3.x, ~u_input.e.x);
}

