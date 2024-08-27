struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    var var_0 = !(!(true | !any(vec4<bool>(true, true, false, true))));
    let var_1 = Struct_1(vec4<i32>(~(~firstTrailingBit(u_input.e.x)), u_input.e.x, u_input.e.x, arg_1.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -493f, arg_0)), vec3<f32>(937f, 809f, arg_0), vec3<bool>(true, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-229f))), _wgslsmith_f_op_f32(-801f * 598f), _wgslsmith_div_f32(-477f, 309f))), firstTrailingBit(30921u), reverseBits(min(max(~u_input.d, 1u), 1u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1734f), arg_0), vec2<f32>(var_1.b.x, -1346f)));
    return min(reverseBits(max(arg_1.x, _wgslsmith_dot_vec3_i32(~var_1.a.zyy, min(vec3<i32>(1i, u_input.e.x, -1i), vec3<i32>(arg_1.x, u_input.e.x, arg_1.x))))), -(u_input.e.x & 1i));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-953f + 1033f)), _wgslsmith_f_op_f32(-1f))));
    return reverseBits(func_3(981f, min(vec2<i32>(10378i, arg_2.x) & ~arg_2, arg_2 ^ vec2<i32>(5780i, arg_1.c.a.x))));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, 2147483647i, -1i), ~vec4<i32>(49458i, u_input.e.x, 2147483647i, -48483i))), max(vec4<i32>(-1i, u_input.e.x, -1i, 29755i), vec4<i32>(u_input.e.x, u_input.e.x, arg_0, arg_0)) | vec4<i32>(61226i, arg_0, func_2(-2147483647i, Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<i32>(2147483647i, 0i, 2147483647i, u_input.e.x), vec3<f32>(753f, 1123f, -1000f), 21761u, 0u), Struct_1(vec4<i32>(3794i, u_input.e.x, arg_0, arg_0), vec3<f32>(-2307f, -567f, 1876f), 9429u, 4294967295u), Struct_1(vec4<i32>(0i, arg_0, arg_0, -39628i), vec3<f32>(1284f, -522f, -1234f), 0u, u_input.b.x)), u_input.e), -33918i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1779f, 759f, -100f)))))), _wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, 11127u))), select(106322u, ~u_input.b.x, true)) | min(u_input.d, _wgslsmith_sub_u32(u_input.d, ~u_input.a.x)), ~(_wgslsmith_mult_u32(~u_input.b.x, u_input.d) >> (4294967295u % 32u)));
    var var_1 = Struct_2(vec3<bool>(any(vec2<bool>(false, true)) == true, any(vec3<bool>(true, true, true)), ~1u <= ~_wgslsmith_add_u32(4294967295u, var_0.d)), var_0, Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1703f, var_0.b.x, 895f))))), 81708u, ~var_0.c), Struct_1(select(vec4<i32>(countOneBits(u_input.e.x), -31902i, 0i, u_input.e.x), var_0.a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), all(vec4<bool>(false, true, true, false)))), var_0.b, u_input.d, 4294967295u));
    var var_2 = var_1.c.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_1.d.b.x), _wgslsmith_f_op_f32(step(var_1.b.b.x, var_1.d.b.x)), var_1.d.b.x)))) * var_1.b.b);
    var var_4 = var_1.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_sub_vec2_u32((~vec2<u32>(var_0.x, u_input.d) >> (_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(36106u, 23100u)) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.d), var_0.x & 23721u), 42985u), vec2<u32>(~1u, u_input.c));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-247f))))))), _wgslsmith_f_op_f32(func_1(u_input.e.x)), all(!vec4<bool>(any(vec2<bool>(true, false)), -36351i < u_input.e.x, true, false))));
    var var_2 = true;
    var var_3 = Struct_2(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), all(vec3<bool>(true, true, true))), vec3<bool>(all(vec4<bool>(true, false, true, false)) || true, false, all(vec3<bool>(true, true, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec3<bool>(false, true, false), true)), Struct_1(~(-select(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(-54860i, u_input.e.x, u_input.e.x, 43443i), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-953f, var_1, var_1), vec3<f32>(-903f, var_1, var_1)), vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, 281f), vec3<f32>(var_1, 152f, var_1), vec3<bool>(false, false, true)))))), _wgslsmith_dot_vec3_u32(~u_input.b, (vec3<u32>(u_input.d, u_input.b.x, 21166u) & u_input.b) ^ u_input.b), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), Struct_1(min(~(~vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 12455i)), abs(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 2147483647i))), vec3<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1077f))))), _wgslsmith_mult_u32(0u, u_input.c), u_input.b.x), Struct_1(~(~vec4<i32>(0i, 1i, -20201i, u_input.e.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-655f)), _wgslsmith_f_op_f32(func_1(-u_input.e.x)), _wgslsmith_f_op_f32(func_1(-26883i | u_input.e.x))), var_0.x & 4294967295u, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.b.x + 141f))) * var_1), (i32(-1i) * -_wgslsmith_clamp_i32(-1i, u_input.e.x, -1i)) & var_3.d.a.x, ~_wgslsmith_mult_vec3_i32(var_3.c.a.yzw, -var_3.c.a.zxy << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.b.d, var_3.d.c, 0u), u_input.b, vec3<u32>(9718u, u_input.c, 26046u)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(1i, -759i), _wgslsmith_dot_vec2_i32(u_input.e, -u_input.e >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), -var_3.d.a.x));
}

