struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(~(77569u | (4294967295u & u_input.a)), 16214u), abs(max(_wgslsmith_dot_vec2_u32(~arg_0.b.xx, arg_0.b.xy), arg_0.b.x)), arg_0.a);
    return _wgslsmith_div_u32(abs(~4541u << (var_0.x % 32u)), _wgslsmith_mod_u32(~min(u_input.a << (u_input.a % 32u), u_input.a), ~u_input.a));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_i32(-(~(-vec3<i32>(0i, 2147483647i, 0i))) & (vec3<i32>(max(-21383i, 1i), min(-17705i, -78693i), -22558i) << (vec3<u32>(26135u, u_input.a, func_3(Struct_1(arg_0.x, vec3<u32>(u_input.a, arg_0.x, 10982u), vec3<bool>(false, false, false), vec2<bool>(false, true)), Struct_2(-14838i), 1030f)) % vec3<u32>(32u))), abs(max(-vec3<i32>(2908i, -31488i, -30780i), ~(~vec3<i32>(81083i, 1i, 0i)))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-902f, -910f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(459f, -127f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1157f, -1100f), vec2<f32>(-732f, 1521f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1058f - -704f), _wgslsmith_f_op_f32(trunc(-372f))) >= _wgslsmith_f_op_f32(trunc(-782f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(626f)) * 101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1979f) - -147f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1130f * 1897f), _wgslsmith_f_op_f32(-358f - 824f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1405f, var_2.x) * vec3<f32>(var_2.x, 955f, -1000f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-680f, var_2.x, var_2.x), vec3<f32>(var_2.x, var_2.x, -240f))))), true)) - vec3<f32>(-766f, _wgslsmith_f_op_f32(f32(-1f) * -1060f), var_2.x)));
    let var_4 = true;
    return -_wgslsmith_dot_vec2_i32(var_0.xz, var_0.xx);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(u_input.a, vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(119977u, 0u, u_input.a), arg_1.a), max(u_input.a, _wgslsmith_sub_u32(u_input.a >> (1u % 32u), ~4294967295u)), arg_1.a), arg_1.c, vec2<bool>(arg_1.d.x, select(arg_3.x, !arg_3.x || arg_1.c.x, arg_1.d.x)));
    let var_1 = _wgslsmith_add_u32(93359u, ~func_3(arg_1, Struct_2(arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), -2327f))));
    var var_2 = var_0.c;
    let var_3 = all(!select(!vec4<bool>(false, arg_3.x, arg_3.x, true), select(!vec4<bool>(true, true, arg_1.d.x, false), select(vec4<bool>(false, true, arg_3.x, arg_1.c.x), vec4<bool>(arg_1.d.x, true, false, arg_3.x), vec4<bool>(true, false, var_2.x, true)), vec4<bool>(false, arg_3.x, false, arg_1.c.x)), select(vec4<bool>(true, true, false, false), !vec4<bool>(var_0.d.x, arg_1.d.x, false, true), !vec4<bool>(var_2.x, false, arg_1.d.x, true))));
    let var_4 = abs(1i);
    return Struct_2(-arg_0 >> (~var_0.b.x % 32u));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    let var_0 = arg_2;
    var var_1 = func_4(-func_2(_wgslsmith_mult_vec3_u32(arg_2.b, var_0.b)) | min(0i, -(~arg_3.x)), arg_2, vec3<i32>(reverseBits(-reverseBits(arg_3.x)), -(~(-6034i) ^ _wgslsmith_add_i32(arg_3.x, -1245i)), -1i), vec3<bool>(true, !var_0.c.x != true, arg_2.d.x));
    var_1 = func_4(arg_3.x, Struct_1(firstTrailingBit(var_0.b.x), vec3<u32>(~min(4294967295u, arg_2.a), arg_1.b.x, ~(4294967295u & arg_1.b.x)), arg_1.c, vec2<bool>(arg_1.d.x, any(select(vec4<bool>(true, arg_1.c.x, var_0.d.x, true), vec4<bool>(arg_2.d.x, false, arg_2.c.x, true), vec4<bool>(false, arg_1.d.x, true, true))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.x, -2147483647i, 31938i) << (~vec3<u32>(4294967295u, arg_2.b.x, arg_1.a) % vec3<u32>(32u)), arg_3.yyz, arg_3.zzx << ((vec3<u32>(u_input.a, u_input.a, arg_0) >> (vec3<u32>(32395u, arg_2.b.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ arg_3.xxw, !(!select(select(arg_1.c, vec3<bool>(false, var_0.d.x, true), vec3<bool>(arg_2.c.x, true, true)), vec3<bool>(true, true, arg_2.c.x), vec3<bool>(false, arg_2.c.x, arg_1.c.x))));
    let var_2 = var_0;
    let var_3 = Struct_2(var_1.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(547f - -1072f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -187f) * 343f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(u_input.a, Struct_1(17486u, vec3<u32>(u_input.a, 73369u, 1u), vec3<bool>(true, false, false), vec2<bool>(true, true)), Struct_1(1909u, vec3<u32>(u_input.a, u_input.a, 42670u), vec3<bool>(true, false, false), vec2<bool>(false, true)), vec4<i32>(-80288i, -2147483647i, -9007i, -38439i))))), _wgslsmith_f_op_f32(f32(-1f) * -1147f), 827f)));
}

