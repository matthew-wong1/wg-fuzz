struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(u_input.b.yy ^ max(vec2<i32>(arg_1, -2147483647i), _wgslsmith_div_vec2_i32(u_input.c.xx, u_input.c.yx)), abs(firstTrailingBit(vec2<i32>(u_input.c.x, arg_1)))));
    let var_1 = Struct_1(var_0.a >> (~(~(~vec2<u32>(u_input.a, 6661u))) % vec2<u32>(32u)));
    var var_2 = Struct_3(select(!vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true), select(!(!vec2<bool>(arg_2, arg_2)), select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), vec2<bool>(arg_2, false)), select(vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2), u_input.b.x > var_1.a.x))), arg_0.x < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-235f * -409f), -708f)))), vec3<bool>(var_0.a.x > var_1.a.x, arg_2, arg_2));
    var var_3 = var_1;
    var_0 = var_1;
    return countOneBits(0u);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -1000f, -1052f), vec3<f32>(550f, 669f, 401f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, -526f, -427f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1210f, 234f, 420f), vec3<f32>(3202f, -1173f, -1311f))) - vec3<f32>(1f, 1f, 1f))), max(u_input.a, func_3(vec3<f32>(-850f, 250f, 1902f), u_input.b.x, false, 807f)) < 31802u)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_f_op_f32(f32(-1f) * -512f))), -227f, _wgslsmith_f_op_f32(select(-1000f, -1887f, true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-645f, 917f, _wgslsmith_f_op_f32(trunc(-452f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1444f, 626f, var_0.x))) + vec3<f32>(var_0.x, var_0.x, 931f))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)))));
    let var_1 = all(vec3<bool>(false, false, true));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(var_0.x))), var_0.x)), -2722f);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1588f, _wgslsmith_f_op_f32(f32(-1f) * -104f)));
    return Struct_1(-u_input.b.zx);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = func_2(_wgslsmith_div_vec2_i32(u_input.b.xw, vec2<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(select(u_input.b, u_input.b, true), vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.c.x)))));
    var_0 = func_2(vec2<i32>(0i, abs(0i) | ~func_2(vec2<i32>(u_input.c.x, 0i)).a.x));
    var var_1 = Struct_1(~(~(var_0.a | u_input.c.wy)));
    var_1 = Struct_1(-(~(~_wgslsmith_div_vec2_i32(var_0.a, vec2<i32>(var_1.a.x, var_0.a.x)))));
    var_0 = func_2(_wgslsmith_div_vec2_i32(abs(firstTrailingBit(vec2<i32>(-36142i, -2147483647i)) ^ vec2<i32>(u_input.b.x, -2147483647i)), -select(reverseBits(vec2<i32>(u_input.b.x, var_1.a.x)), var_1.a, arg_1)));
    return 526f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(-669f)) == _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(635f, -560f), vec2<f32>(351f, 1946f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, 1280f)))), vec2<bool>(any(vec3<bool>(true, true, false)), true)));
    let var_1 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(min(u_input.a, 1u), max(1u, u_input.a), 48343u, u_input.a)), vec4<u32>(countOneBits(~_wgslsmith_mod_u32(u_input.a, u_input.a)), 33200u, ~u_input.a, u_input.a), 1u, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(min(vec3<i32>(var_1, var_1, 0i), u_input.b.zxx), vec3<i32>(-40096i, u_input.c.x, 36271i)) << (((vec3<u32>(u_input.a, 4294967295u, 4294967295u) << (vec3<u32>(48130u, u_input.a, 0u) % vec3<u32>(32u))) & ~vec3<u32>(35411u, u_input.a, u_input.a)) % vec3<u32>(32u)), vec3<i32>(54707i, 1i, _wgslsmith_dot_vec3_i32(abs(u_input.b.zyx), -u_input.b.zxw)), abs(abs(u_input.c.zzz)) ^ (u_input.c.zzw << (abs(vec3<u32>(67372u, u_input.a, u_input.a)) % vec3<u32>(32u)))));
}

