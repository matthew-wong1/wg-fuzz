struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(60585u, 78105u, 1870u);

var<private> global1: array<f32, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<u32>) -> f32 {
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(362f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(7013u, 24u)] + 447f), -817f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a), vec3<f32>(_wgslsmith_f_op_f32(-220f + -661f), _wgslsmith_f_op_f32(1255f - 861f), -379f))));
    global0 = ~(u_input.a | ~vec3<u32>(4294967295u, ~23742u, global0.x));
    let var_1 = _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 24u)]));
    return _wgslsmith_f_op_f32(var_1 + -1898f);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = 54557i;
    var var_1 = _wgslsmith_sub_vec2_u32(global0.xy, _wgslsmith_add_vec2_u32(select(max(~u_input.a.yy, u_input.a.xz | vec2<u32>(arg_3.c, 0u)), arg_0.xx, true), u_input.a.yy));
    let var_2 = abs(global0.yx);
    var var_3 = arg_1.x;
    let var_4 = _wgslsmith_mult_vec2_u32(vec2<u32>(~43099u, 0u), select(select(arg_0.ww, ~vec2<u32>(var_1.x, var_1.x), all(arg_2.d)), vec2<u32>(_wgslsmith_sub_u32(82449u, var_2.x), arg_0.x), true)) & ~(vec2<u32>(arg_0.x, abs(4294967295u)) | vec2<u32>(abs(20169u), ~arg_3.c));
    return vec3<f32>(_wgslsmith_f_op_f32(1f * -1171f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2446f, -725f, false))), _wgslsmith_f_op_f32(2354f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 24u)])))) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(min(arg_3.c, var_2.x)), 24u)])), 372f);
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = vec4<u32>(u_input.a.x, global0.x, global0.x, _wgslsmith_clamp_u32((0u << (global0.x % 32u)) ^ 12874u, 8023u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.x, 1u, global0.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(30308u, 58226u, 4294967295u, 49292u)))) >> (~59333u % 32u));
    var var_1 = _wgslsmith_div_u32(select(47084u, global0.x, all(vec2<bool>(true, false))) << (~(~(~var_0.x)) % 32u), 22565u);
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(global0.x, var_0.x, global0.x, var_0.x), vec4<i32>(-1i, -44766i, -2147483647i, -17840i), Struct_2(true, vec3<bool>(true, false, false), var_0.x, vec4<bool>(false, true, true, false)), Struct_2(true, vec3<bool>(true, true, false), 0u, vec4<bool>(false, false, true, false)))) * vec3<f32>(arg_0, 1000f, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 24>();
    var var_0 = vec3<i32>(select(1i, 63971i, false) ^ -31294i, 1i, ~1i) | vec3<i32>(33266i, select(-1i, ~2147483647i, true), 1i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 536f)))), vec2<i32>(var_0.x, var_0.x), ~vec2<u32>(global0.x, 16705u))), _wgslsmith_f_op_f32(func_1(func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(16289u, 24u)])), -vec2<i32>(2147483647i, var_0.x), ~abs(global0.zz)))) + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~(~u_input.a.x), 24u)], _wgslsmith_f_op_f32(f32(-1f) * -1007f), !(all(vec4<bool>(true, true, true, false)) && true))));
    let var_2 = vec4<u32>(48286u, u_input.a.x, 1u >> (0u % 32u), firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, ~_wgslsmith_sub_u32(34247u, u_input.a.x))));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 24417u, abs(_wgslsmith_div_u32(~0u, var_2.x ^ u_input.a.x))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_2.zxz, u_input.a), ~vec3<u32>(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.a.x), vec2<u32>(global0.x, 17102u)), u_input.a.x)));
    var var_4 = -8029i;
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(830f, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(func_2(-2145f).a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(~var_2.x, var_2.x, global0.x, firstTrailingBit(global0.x)), -vec4<i32>(var_0.x, 41059i, var_0.x, -1i) >> (var_2 % vec4<u32>(32u)), Struct_2(true, vec3<bool>(false, false, false), 4333u, vec4<bool>(true, true, true, true)), Struct_2(2147483647i < var_0.x, vec3<bool>(false, true, false), max(23430u, global0.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))))).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2(-1818f).a.x)))));
}

