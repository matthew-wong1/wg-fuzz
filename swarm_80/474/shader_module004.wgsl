struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: f32) -> vec2<f32> {
    global1 = array<vec3<bool>, 8>();
    var var_0 = abs(vec3<i32>(arg_1, -arg_1, _wgslsmith_sub_i32(~44954i & _wgslsmith_mod_i32(1i, arg_1), _wgslsmith_sub_i32(2147483647i, arg_1))));
    var var_1 = vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) * global0.a.x))), arg_2);
    let var_2 = u_input.a;
    global1 = array<vec3<bool>, 8>();
    return var_1.xx;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: f32) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-306f, _wgslsmith_f_op_f32(trunc(-1161f))), _wgslsmith_f_op_f32(-global0.a.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(~206u, 8u)], max(-15641i, 2147483647i), -874f)) + global0.a)));
    global1 = array<vec3<bool>, 8>();
    let var_1 = Struct_1(vec2<f32>(124f, _wgslsmith_f_op_f32(exp2(var_0.a.x))));
    global1 = array<vec3<bool>, 8>();
    let var_2 = Struct_1(vec2<f32>(var_1.a.x, arg_2));
    return vec2<bool>(true || any(vec4<bool>(any(vec4<bool>(true, false, false, false)), arg_2 != global0.a.x, all(vec2<bool>(false, true)), any(vec2<bool>(true, false)))), !(_wgslsmith_f_op_f32(133f * _wgslsmith_f_op_f32(-753f + 2281f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)), -948f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0;
    global0 = Struct_1(var_0.a);
    let var_1 = Struct_1(var_0.a);
    global0 = arg_0;
    global0 = Struct_1(var_0.a);
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, 319f))), global0.a, func_2(vec3<i32>(12685i, -46597i, -51687i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -18720i, -56920i, -2147483647i), vec4<i32>(29315i, 29544i, -1858i, -3813i)), 250f)))), vec3<u32>(1u, 0u, 1u));
    global1 = array<vec3<bool>, 8>();
    let var_1 = func_4(func_4(func_4(arg_0, vec3<u32>(arg_2, countOneBits(arg_2), _wgslsmith_add_u32(arg_2, u_input.b))), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, arg_2, 14096u, 101056u), select(vec4<u32>(arg_2, arg_2, u_input.b, 1u), vec4<u32>(u_input.a, arg_2, arg_2, u_input.b), vec4<bool>(false, true, false, false))), u_input.a)), ~vec3<u32>(u_input.a, countOneBits(u_input.a), _wgslsmith_add_u32(~100536u, select(u_input.a, 0u, false))));
    global0 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a - global0.a));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a), vec2<f32>(global0.a.x, 506f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-764f * global0.a.x) * _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1411f, -1123f)) * -163f))));
    var_0 = func_1(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, 102f), vec2<f32>(var_0.a.x, -979f))) + var_0.a), vec2<f32>(577f, _wgslsmith_f_op_f32(1743f - 620f)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_add_u32(reverseBits(4294967295u) | u_input.b, u_input.a));
    var var_1 = select(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1i, 2147483647i), ~2147483647i, 1i), vec3<i32>(_wgslsmith_mod_i32(0i, 1531i), reverseBits(26194i), 497i)) | _wgslsmith_mod_i32(0i, 1i), -_wgslsmith_mult_i32(-17410i, _wgslsmith_add_i32(-28468i << (u_input.b % 32u), i32(-1i) * -27459i)), false);
    var_1 = -3249i;
    global1 = array<vec3<bool>, 8>();
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, 894f, func_1(Struct_1(global0.a), Struct_1(vec2<f32>(187f, -454f)), 30156u).a.x))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(var_2.yy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, true, true), 28682i, _wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(u_input.a, 8u)], 18367i, -139f)).x)) + vec2<f32>(_wgslsmith_div_f32(var_0.a.x, -1236f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_1 = min(max(1i, 1i & _wgslsmith_add_i32(-2147483647i, select(0i, 1i, true))), ~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-45532i, -3754i, -2147483647i, 24603i)), select(vec4<i32>(0i, 2147483647i, 26607i, -11256i), vec4<i32>(30525i, 2147483647i, 1i, 19566i), true)) ^ firstLeadingBit(max(0i, _wgslsmith_add_i32(-2165i, -109i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(-792f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_3.a.x)), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-348f + global0.a.x))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(270f)), _wgslsmith_f_op_f32(f32(-1f) * -1202f))), -618f, global0.a.x)), var_2.zy, _wgslsmith_f_op_f32(502f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(abs(-965f))) * 1f)), 25774i, vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(1i), max(-1i, -1277i)), 33871i) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(52695i, -32412i, 2147483647i), reverseBits(vec3<i32>(0i, 2147483647i, 43667i))), ~(~(-23486i))));
}

