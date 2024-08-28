struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 18050u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-846f, _wgslsmith_div_f32(955f, -300f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1302f)) + -1560f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f)))) - -536f));
    global0 = array<vec4<bool>, 6>();
    var var_1 = arg_1.x;
    var var_2 = vec3<u32>(~abs(global1.x), 1u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, 52089u, 4294967295u, global1.x), max(vec4<u32>(0u, global1.x, 12732u, 109605u), vec4<u32>(62908u, 0u, 24031u, global1.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 74442u, global1.x, global1.x) >> (vec4<u32>(55266u, 1u, global1.x, 22989u) % vec4<u32>(32u)), ~vec4<u32>(36353u, global1.x, 65227u, 61368u))));
    let var_3 = Struct_1(_wgslsmith_add_u32(1540u, ~(~var_2.x)));
    return _wgslsmith_f_op_f32(min(-1388f, var_0));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>) -> u32 {
    global0 = array<vec4<bool>, 6>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2209f, arg_1.x, 1975f))) * vec3<f32>(1213f, _wgslsmith_f_op_f32(trunc(arg_1.x)), arg_0.x))));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_3(all(vec3<bool>(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, false))))), 1111f, -1426f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(var_0.a)), vec3<f32>(arg_0.x, 145f, arg_0.x))))));
    global1 = _wgslsmith_mod_vec2_u32(max(vec2<u32>(0u, 44166u), vec2<u32>(0u, _wgslsmith_add_u32(min(global1.x, global1.x), firstTrailingBit(global1.x)))), reverseBits(~(~vec2<u32>(global1.x, global1.x))));
    return ~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x))) & (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 35290u), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, 13227u), vec2<u32>(32895u, global1.x))) ^ 1u));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(~(~_wgslsmith_mod_u32(46138u, 4294967295u)), select(arg_0.x, ~func_2(vec2<f32>(-297f, 977f), vec4<f32>(-887f, 965f, -1312f, 1000f)), any(vec3<bool>(true, true, true)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))))));
    let var_2 = Struct_2(vec3<f32>(926f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-458f, 206f, true)), var_1.a.x, true)), _wgslsmith_f_op_f32(-var_1.a.x))), var_1.a.x));
    global1 = vec2<u32>(arg_0.x, arg_0.x);
    var var_3 = vec2<bool>(true || any(vec2<bool>(true, false)), any(!vec3<bool>(-768f >= var_2.a.x, true, true)));
    return Struct_1(~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 0u, arg_0.x, var_0.a), vec4<u32>(4632u, global1.x, global1.x, 4294967295u), global0[_wgslsmith_index_u32(49772u, 6u)]), ~vec4<u32>(70796u, 0u, 99040u, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -827f) - _wgslsmith_f_op_f32(f32(-1f) * -1197f)))));
    let var_1 = Struct_2(vec3<f32>(var_0, 1000f, _wgslsmith_f_op_f32(665f * _wgslsmith_f_op_f32(f32(-1f) * -449f))));
    global0 = array<vec4<bool>, 6>();
    let var_2 = func_1(vec3<u32>(~_wgslsmith_mult_u32(max(global1.x, global1.x), ~global1.x), firstLeadingBit(min(global1.x, global1.x) | 1u), 80093u));
    global1 = vec2<u32>(var_2.a, var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~47418u), -2147483647i, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(var_2.a, 1u), ~vec2<u32>(0u, 4294967295u)), 1000f);
}

