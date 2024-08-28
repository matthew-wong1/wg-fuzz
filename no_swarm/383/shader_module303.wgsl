struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec4<f32>(-208f, -1298f, 1116f, 1378f), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec4<f32>(1000f, 1154f, 1325f, 1000f), 0u), Struct_1(vec4<f32>(-1564f, 2986f, 337f, -1000f), 0u), 0u, -415f), Struct_3(vec4<i32>(0i, 0i, 25088i, -59237i))), Struct_4(vec4<f32>(1708f, 1572f, -1499f, 1706f), vec4<bool>(false, false, false, true), Struct_2(Struct_1(vec4<f32>(-987f, -921f, -1461f, 664f), 24555u), Struct_1(vec4<f32>(1351f, 1643f, 711f, -1000f), 1u), 0u, 696f), Struct_3(vec4<i32>(33712i, 12317i, 28982i, -29975i))), Struct_4(vec4<f32>(-410f, 2060f, 1355f, -581f), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec4<f32>(-942f, -314f, -781f, -717f), 14768u), Struct_1(vec4<f32>(610f, 139f, 2641f, -2372f), 42043u), 100383u, 1000f), Struct_3(vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i))));

var<private> global1: bool = true;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(~abs(u_input.c), u_input.c), reverseBits(~0u | u_input.c));
    global1 = true;
    let var_1 = ~firstLeadingBit(_wgslsmith_add_u32(~35810u, ~(u_input.c << (20578u % 32u))));
    global1 = false;
    global0 = array<Struct_4, 3>();
    return !vec3<bool>(true, all(arg_0.wx), false);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> vec3<f32> {
    global1 = select(any(select(func_2(vec4<bool>(true, true, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true)), 2329f == _wgslsmith_f_op_f32(trunc(-1471f)))), all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, true)));
    var var_0 = select(true, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * 167f))) != _wgslsmith_f_op_f32(-1238f - _wgslsmith_f_op_f32(step(-1162f, 1166f)))) && true;
    var var_1 = false;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-675f, -237f, -240f, -784f), vec4<f32>(1295f, -1539f, 327f, -435f)))))), 1u);
    let var_3 = vec4<i32>(1i >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.x, var_2.b) & ~3425u, ~u_input.c) % 32u), ~u_input.a.x, abs(2147483647i), arg_1.a.x);
    return _wgslsmith_f_op_vec3_f32(var_2.a.wyz - var_2.a.yyx);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: f32) -> vec3<f32> {
    global0 = array<Struct_4, 3>();
    global0 = array<Struct_4, 3>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.x))) - _wgslsmith_f_op_f32(sign(arg_2)));
    var var_1 = -734f;
    var var_2 = func_2(arg_1.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(43109u, arg_1.c.a.b), arg_1.d)), vec3<f32>(263f, _wgslsmith_f_op_f32(-var_0), arg_2), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 3u)], 658f)) - _wgslsmith_f_op_vec3_f32(func_1(u_input.a, Struct_4(vec4<f32>(1298f, -702f, 300f, 150f), vec4<bool>(false, false, true, false), Struct_2(Struct_1(vec4<f32>(-981f, 1446f, -754f, 1329f), u_input.c), Struct_1(vec4<f32>(738f, -748f, 839f, -623f), u_input.c), 75089u, -603f), Struct_3(vec4<i32>(-6233i, u_input.b.x, 0i, 30931i))), -728f))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-974f, -615f, 1935f))) - vec3<f32>(_wgslsmith_f_op_f32(-759f - -312f), 1f, 651f)));
    global0 = array<Struct_4, 3>();
    var_0 = _wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(~6609u, ~(~4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(6310u, 0u, u_input.c), vec3<u32>(u_input.c, 50115u, u_input.c)) % 32u))), Struct_3(-vec4<i32>(u_input.b.x << (0u % 32u), u_input.a.x << (74942u % 32u), u_input.a.x, u_input.b.x))));
    global1 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, var_0.x, 475f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 1821f, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(677f, var_0.x, 264f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -373f, -1380f) * vec3<f32>(var_0.x, -839f, var_0.x))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 274f, -178f))))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -708f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 694f, var_0.x)), vec3<bool>(false, true, false)))))));
    let var_1 = _wgslsmith_mod_i32(2147483647i | u_input.b.x, ((-u_input.a.x & reverseBits(-1i)) | _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2428i), abs(u_input.b.x), ~0i)) | -20355i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -946f, 1431f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2178f, var_0.x, -218f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -1405f, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2195f, 3140f, 118f))))))), -u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(~vec2<u32>(u_input.c, u_input.c), Struct_3(u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))))), u_input.a.zw);
}

