struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = 30700u;
    var var_1 = ~(~1u) >= ~(~u_input.b.x);
    var_1 = false;
    var var_2 = vec2<bool>(!any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), true)), all(!vec4<bool>(true, 50087u > var_0, select(true, true, true), all(vec2<bool>(false, true)))));
    var_1 = true;
    return Struct_2(vec4<u32>(abs(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, var_0), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0, 20530u), ~var_0)), 1u));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = u_input.a << (~(~(arg_3.a.zzw >> (reverseBits(vec3<u32>(77576u, 0u, arg_0)) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_1 = arg_3;
    let var_2 = arg_2;
    var_1 = func_1(var_0);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1449f, var_2, 2143f), vec3<f32>(-306f, 1541f, arg_2), false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 417f, 1333f)) - vec3<f32>(1535f, var_2, 1128f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -1282f) * vec3<f32>(arg_2, -1867f, var_2)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-615f, var_2, -710f), vec3<f32>(var_2, 844f, var_2)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -341f)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), -1468f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, 796f, arg_2), _wgslsmith_div_vec3_f32(vec3<f32>(-1223f, var_2, -123f), vec3<f32>(var_2, -799f, arg_2)), any(vec4<bool>(true, false, true, false))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = vec2<bool>(!all(vec3<bool>(true, true, true)), any(vec2<bool>(any(vec3<bool>(true, false, false)), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(514f, 553f, -1341f, -1220f) * vec4<f32>(-563f, -314f, -736f, 597f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(223f, -1000f, -413f, 1171f) * vec4<f32>(-1911f, 132f, -1357f, 1684f)), !vec4<bool>(var_1.x, true, false, var_1.x)))))));
    var var_3 = vec4<i32>(var_0.b.d, -19130i, ~arg_0.b.d, arg_0.b.b);
    var var_4 = _wgslsmith_clamp_i32(15602i & var_0.b.b, _wgslsmith_mult_i32(u_input.a.x, -2147483647i), select(_wgslsmith_add_i32(arg_0.b.b, firstLeadingBit(1i)), 34673i, any(select(var_1, var_1, !var_1.x))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_2.zyy + _wgslsmith_f_op_vec3_f32(var_2.wwx * vec3<f32>(1503f, 1000f, var_2.x)))))), _wgslsmith_f_op_vec3_f32(-var_2.zxz)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(vec4<u32>(~1u, arg_1.x, _wgslsmith_add_u32(~0u, u_input.b.x | u_input.b.x), 1u));
    var var_1 = ~arg_1.yx;
    let var_2 = Struct_4(u_input.b.x);
    let var_3 = u_input.a.x;
    var_0 = func_1(abs(-countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(58299i, 1i, u_input.a.x), u_input.a))));
    return Struct_1(~(~(~vec4<u32>(var_0.a.x, 41122u, var_2.a, 4294967295u))), var_3, ~0u, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<u32>(reverseBits(~u_input.b.x), ~max(99065u, 36441u) & (u_input.b.x & min(u_input.b.x, u_input.b.x)), ~1u, u_input.b.x));
    let var_1 = Struct_3(func_1(~(-vec3<i32>(1i, u_input.a.x, u_input.a.x))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.a.x, 16520i, -186f, Struct_2(var_0.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-207f)) * -1000f)), _wgslsmith_add_vec3_u32(var_0.a.ywx, vec3<u32>(0u, var_0.a.x, 1u)), -715f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(194f, 174f, 1606f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, var_0.a.x, 42627u)), Struct_1(var_0.a, -1i, 4294967295u, 2147483647i), var_0.a), var_0.a.x)), any(vec2<bool>(false, true)))))), vec4<u32>(~var_0.a.x, ~(_wgslsmith_mod_u32(0u, 41586u) << (~var_0.a.x % 32u)), select(81740u, min(0u, ~u_input.b.x), false), ~1u));
    var var_2 = false;
    var var_3 = !select(select(vec2<bool>(true, all(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), select(vec2<bool>(var_1.b.a.x > 16607u, any(vec4<bool>(true, true, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), var_1.b.d > 1i), select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, false, true))), true);
    var_0 = Struct_2(var_0.a);
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, -1166f) + vec3<f32>(-978f, 1859f, 867f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1792f, -2386f, 1584f) * vec3<f32>(-1508f, -514f, 1835f))))), vec3<f32>(_wgslsmith_f_op_f32(func_2(u_input.b.x, _wgslsmith_mod_i32(u_input.a.x, 52032i), _wgslsmith_f_op_f32(1210f + -1513f), var_1.a)), -1630f, -795f), any(!vec4<bool>(var_3.x, false, var_3.x, false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(var_1.c), var_1.b, vec4<u32>(4294967295u, 1u, u_input.b.x, 6688u)), 1u)).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(490f)))) - _wgslsmith_f_op_f32(f32(-1f) * -814f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1278f + -607f), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(var_1.a.a), var_1.b, vec4<u32>(var_0.a.x, var_1.b.a.x, 114u, var_1.b.c)), ~var_1.a.a.x)).x)), vec3<bool>(true, var_3.x, !any(vec3<bool>(true, var_3.x, var_3.x)) | all(select(vec4<bool>(true, var_3.x, var_3.x, false), vec4<bool>(false, var_3.x, true, var_3.x), var_3.x)))));
    var var_5 = ~u_input.a;
    var var_6 = min(vec4<u32>(0u, firstLeadingBit(1u), ~_wgslsmith_mod_u32(65206u, var_0.a.x), ~(~24138u ^ u_input.b.x)), ~_wgslsmith_mod_vec4_u32(var_1.b.a, ~(~vec4<u32>(0u, var_0.a.x, 0u, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-940f - -1348f)), var_4.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, var_4.x, 1000f))))), var_0.a.x, var_4.x, 40866i);
}

