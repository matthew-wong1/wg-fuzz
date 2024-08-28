struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = u_input.b.x;
    var var_1 = firstTrailingBit(-1i) <= ~(-firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(53878i, -4807i, 10854i, 5134i), u_input.a)));
    var_0 = 45789u;
    var_0 = u_input.b.x;
    var var_2 = arg_1;
    return all(!select(!select(vec3<bool>(true, false, var_2.b), vec3<bool>(arg_1.b, arg_1.d, false), vec3<bool>(false, var_2.d, arg_1.d)), select(!vec3<bool>(false, true, arg_1.b), vec3<bool>(true, true, var_2.d), all(vec3<bool>(true, arg_1.b, false))), vec3<bool>(false, select(false, arg_0, arg_1.d), true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<f32>) -> bool {
    let var_0 = i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, 0i, 2147483647i), arg_0.a.x), -20669i);
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-19052i, firstLeadingBit(32687i)), 37555i, 8943i, -69910i), ~arg_0.a), any(vec2<bool>(func_2(all(vec4<bool>(arg_0.d, false, false, true)), Struct_1(vec4<i32>(arg_0.a.x, u_input.a.x, 2147483647i, -1i), false, arg_1, arg_0.d)), true)), _wgslsmith_f_op_vec2_f32(arg_0.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c.x, 1301f))))), all(select(vec2<bool>(true, true), !select(vec2<bool>(true, arg_0.b), vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.d, true)), true)));
    var_1 = arg_0;
    var_1 = arg_0;
    var_1 = arg_0;
    return any(!(!(!vec2<bool>(arg_0.b, true))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> bool {
    let var_0 = arg_1.d;
    var var_1 = vec4<f32>(1f, arg_0, 1202f, _wgslsmith_f_op_f32(trunc(-835f)));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -877f, 288f, var_1.x) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1897f, arg_0, arg_0, -712f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, 2502f, 636f, 831f)))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1228f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.x)) * -241f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(747f)))), _wgslsmith_f_op_f32(arg_0 + -1000f))));
    var var_2 = Struct_1(u_input.a, !var_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(855f)))), arg_1.d);
    return any(!(!vec4<bool>(false, arg_1.d, false, all(vec2<bool>(arg_1.b, var_2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-1157f, _wgslsmith_f_op_f32(round(-2345f)));
    var var_1 = vec4<bool>(true, all(vec3<bool>(true, true, true)), true, false);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(var_0.x + var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f)), var_0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x, 227f) + vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -161f), -349f, var_0.x, -341f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -333f, -1357f, 432f), vec4<f32>(var_0.x, var_0.x, -218f, var_0.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x))))))));
    var var_3 = false;
    var_1 = !select(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, false, true, false), var_1.x)), vec4<bool>(false & func_1(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), var_1.x, var_2.xz, var_1.x), var_2.wy, vec4<f32>(var_0.x, var_0.x, var_2.x, var_0.x)), func_1(Struct_1(vec4<i32>(u_input.a.x, 10781i, -45236i, 34275i), false, var_2.xz, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1000f) + var_2.zw), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1120f, 1000f, -1318f, var_0.x) * vec4<f32>(var_0.x, -550f, 932f, var_0.x))), func_3(_wgslsmith_f_op_f32(var_2.x + var_0.x), Struct_1(vec4<i32>(1i, 50979i, u_input.a.x, -50435i), false, var_2.yw, var_1.x), vec2<i32>(-22684i, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a.zwy, u_input.a.wwy)), var_0.x != _wgslsmith_f_op_f32(sign(var_2.x))), true && all(select(vec2<bool>(false, var_1.x), var_1.xw, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1424i, 872i, _wgslsmith_add_i32(-27995i, firstTrailingBit(countOneBits(2147483647i))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.wwz, ~vec3<i32>(u_input.a.x, u_input.a.x, -10567i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 19464i, u_input.a.x ^ u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 263f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_2.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1020f, var_0.x)))), true))), _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x, select(~4294967295u, u_input.b.x & 1u, !var_1.x))), ~u_input.b.zxw >> (~vec3<u32>(u_input.b.x, 1u, ~u_input.b.x) % vec3<u32>(32u)));
}

