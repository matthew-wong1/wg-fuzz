struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1000f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, -152f, _wgslsmith_f_op_f32(f32(-1f) * -1446f), 1f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1210f, -878f, arg_1.x, 616f) + vec4<f32>(139f, 521f, -123f, -1349f)))), true)), u_input.b.x < 4294967295u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(-648f)), arg_1.x, _wgslsmith_f_op_f32(arg_1.x * -1000f), _wgslsmith_f_op_f32(sign(1843f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1674f, arg_1.x, 873f, -1000f)), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, arg_1.x, arg_1.x, 398f))))), !(!select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0))))), true));
    let var_1 = Struct_3(61808u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-678f)), arg_1.x, _wgslsmith_f_op_f32(trunc(arg_1.x)), 126f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(trunc(-192f)), arg_1.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yyy))))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(arg_1.yy)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.zx * var_0.yy), _wgslsmith_f_op_vec2_f32(step(arg_1.yz, vec2<f32>(arg_1.x, arg_1.x))), true)))));
    var var_2 = 0u << (_wgslsmith_div_u32(~1u, ~(~reverseBits(4294967295u))) % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0));
    let var_4 = var_1;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1384f), _wgslsmith_f_op_f32(f32(-1f) * -1190f)));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_3 {
    let var_0 = ~33013u;
    let var_1 = vec4<i32>(arg_0, 37564i, _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, arg_0), arg_0), ~u_input.a.xz), -arg_0);
    let var_2 = _wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(281f))))));
    let var_3 = Struct_1(-7030i);
    let var_4 = Struct_3(u_input.c.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, -639f, var_2, 1141f), vec4<f32>(1243f, var_2, var_2, var_2)))))), vec4<f32>(-1000f, var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-502f)) * var_2), _wgslsmith_f_op_f32(func_3(false, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1918f, var_2, 247f))), vec4<i32>(0i, 18555i, 0i, arg_0), vec3<u32>(4294967295u, 4294967295u, 70955u)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2))))))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-117f, -133f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * vec2<f32>(var_2, -1029f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2, var_2), vec2<f32>(var_2, var_2))))))));
    return Struct_3(~(~_wgslsmith_dot_vec2_u32(u_input.c.zx >> (vec2<u32>(14966u, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.b.yy, u_input.b.zx))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.c.x, var_4.b.x, -859f, var_2))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(821f, var_4.c.x, 349f, -1083f))))), _wgslsmith_f_op_vec3_f32(-var_4.c), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1249f, 1043f), var_4.b.ww)), vec2<f32>(151f, 934f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(var_4.d.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)))))));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = func_2(_wgslsmith_div_i32(select(_wgslsmith_div_i32(abs(14905i), ~u_input.a.x), u_input.a.x, all(vec2<bool>(true, true)) | true), ~_wgslsmith_div_i32(89978i, -21406i)), !select(!all(vec2<bool>(true, false)), true, any(vec2<bool>(false, true))));
    var_0 = Struct_3(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(-var_0.b.zzx), Struct_2(vec2<f32>(-917f, 1000f)));
    var_0 = func_2(1i, !(!select(any(vec2<bool>(true, false)), true, false)));
    var_0 = func_2(4267i, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), var_0.d.a.x != -163f), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(true, true)), true))));
    var_0 = func_2(2147483647i, false);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1((max(min(1u, 1u), _wgslsmith_add_u32(u_input.c.x, u_input.c.x)) & (u_input.c.x >> (1u % 32u))) >> (~1u % 32u));
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1163f, -673f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-456f - _wgslsmith_f_op_f32(f32(-1f) * -1895f)) + 269f)));
    var var_2 = u_input.a.xy;
    var var_3 = false;
    let var_4 = ~u_input.a.yy;
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(389f * _wgslsmith_f_op_f32(-var_1.a.x)), max(reverseBits(u_input.b.x), 4294967295u) | func_2(var_4.x, true).a);
}

