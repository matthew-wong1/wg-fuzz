struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> i32 {
    let var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))));
    global0 = array<Struct_3, 22>();
    let var_1 = firstTrailingBit(min(~arg_2, ~(-firstLeadingBit(u_input.b))));
    let var_2 = _wgslsmith_f_op_f32(971f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-631f * 515f), _wgslsmith_f_op_f32(208f * -201f))) - _wgslsmith_f_op_f32(f32(-1f) * -1410f))));
    let var_3 = !any(select(!vec3<bool>(var_0, false, false), vec3<bool>(all(vec3<bool>(var_0, false, var_0)), var_0, 2147483647i < var_1), var_0));
    return countOneBits(~(~u_input.c) | arg_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> f32 {
    global0 = array<Struct_3, 22>();
    let var_0 = vec2<f32>(884f, -991f);
    let var_1 = select(vec4<bool>(!(!all(vec2<bool>(true, true))), arg_0.c.a >= 21636i, true, !(!(-2465f != arg_0.a.x))), !select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), _wgslsmith_add_i32(-1698i, u_input.a.x) < arg_0.b.a), all(select(vec3<bool>(true, all(vec3<bool>(false, false, false)), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))));
    var var_2 = select(true, 1i != ~_wgslsmith_div_i32(arg_1, arg_1 ^ -19972i), any(var_1.zyy));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32) -> f32 {
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2)), arg_2), Struct_1(~(-1i)), Struct_1(func_3(arg_0.zz, 4294967295u, arg_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(207f, 570f, 1057f, arg_2), vec4<f32>(-730f, -383f, arg_2, arg_2)), vec4<f32>(307f, -2251f, 226f, arg_2))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1.a.x, u_input.b, -1i) & vec4<i32>(u_input.a.x, arg_0.x, 1i, arg_1.a.x), vec4<i32>(-46700i, arg_0.x, arg_0.x, 18923i) & vec4<i32>(arg_1.a.x, -2147483647i, 0i, 1i)))))));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec3<i32>(42037i, 2147483647i, 1i), Struct_3(vec3<i32>(-23938i, u_input.a.x, u_input.c), vec2<i32>(arg_0, -2147483647i)), 1320f)))))));
    var var_1 = !any(vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -927f);
    var var_2 = Struct_3(~vec3<i32>(i32(-1i) * -u_input.a.x, _wgslsmith_mod_i32(arg_0, u_input.a.x), ~abs(0i)), u_input.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(681f, 925f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-697f, 454f), vec2<f32>(-1000f, -616f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(500f, 363f) - vec2<f32>(792f, -1868f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1116f, 373f)))), vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * 496f) * _wgslsmith_f_op_f32(round(var_3.x))));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(arg_1.zz, arg_1.zz), Struct_1(-24522i), Struct_1(select(u_input.c, -u_input.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(125387u, 19157u)) % 32u), true)), vec4<f32>(1745f, arg_0, _wgslsmith_f_op_f32(max(1291f, _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_i32(arg_2.a, vec3<i32>(0i, 2147483647i, 2147483647i)), arg_2, _wgslsmith_f_op_f32(select(-249f, -949f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(32220i)))));
    var var_1 = global0[_wgslsmith_index_u32(0u, 22u)];
    var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(6385u, 1u), vec2<u32>(1u, 1u)), ~(~(~vec2<u32>(27880u, 55908u)))), 22u)];
    var var_2 = _wgslsmith_f_op_f32(2225f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(arg_1.yx, var_0.b, Struct_1(arg_2.b.x), var_0.d), var_0.b.a))));
    let var_3 = var_0;
    return -439f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 22>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)))), 446f)), _wgslsmith_f_op_f32(-1498f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(func_1(u_input.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-231f, 421f, -1224f), vec3<f32>(-869f, 1211f, 1614f), vec3<bool>(true, true, true))), Struct_3(vec3<i32>(u_input.a.x, -1i, u_input.c), u_input.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1154f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_2(vec2<f32>(484f, -1427f), Struct_1(19538i), Struct_1(u_input.c), vec4<f32>(-1308f, 859f, -196f, -1710f)), -u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -612f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-444f * -202f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-209f))))), 125f, _wgslsmith_f_op_f32(-var_0.x));
}

