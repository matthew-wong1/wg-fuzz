struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> f32 {
    let var_0 = reverseBits(4294967295u);
    var var_1 = false;
    let var_2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0, 13233u, select(reverseBits(0u), u_input.a.x, arg_1)), u_input.c);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1359f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2614f) - _wgslsmith_f_op_f32(max(108f, _wgslsmith_f_op_f32(f32(-1f) * -2409f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1469f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1131f + 1533f))), -1000f)));
    var_1 = false;
    return _wgslsmith_f_op_f32(max(-1671f, _wgslsmith_f_op_f32(-var_3)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_1(abs(vec4<i32>(u_input.b >> (44620u % 32u), -u_input.b, 70207i, -u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(656f))), _wgslsmith_f_op_f32(f32(-1f) * -1423f), _wgslsmith_f_op_f32(func_3(firstLeadingBit(4294967295u), all(vec2<bool>(arg_0.x, arg_0.x)), vec4<i32>(u_input.b, u_input.d.x, 1i, 21902i))), -1707f)), -105f);
    let var_1 = Struct_1(-var_0.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-257f - 429f))) + 2418f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1452f + 345f)))), -1000f, var_0.c), _wgslsmith_f_op_f32(func_3(min(~u_input.c.x << (11192u % 32u), abs(arg_1.x) ^ ~34171u), any(select(arg_0, vec3<bool>(false, arg_0.x, arg_0.x), false)) || arg_0.x, var_0.a)));
    let var_2 = u_input.a.xx;
    var var_3 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, var_1.b.x, 688f, var_0.b.x), var_1.b)))))), var_1.b.x);
    return vec3<bool>(true, arg_0.x, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = !vec2<bool>(arg_0.x, all(select(vec4<bool>(false, arg_0.x, arg_0.x, true), select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), arg_0.x), vec4<bool>(true, true, true, true))));
    let var_1 = arg_2.x;
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 6684u, 0u) | u_input.c, ~u_input.a.wxx), u_input.a.ywy), _wgslsmith_dot_vec2_u32(~max(_wgslsmith_clamp_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, u_input.a.x), vec2<u32>(u_input.e.x, u_input.e.x)), ~vec2<u32>(u_input.a.x, 1u)), u_input.c.zy >> (~min(u_input.e, u_input.a.yw) % vec2<u32>(32u))), ~(~(u_input.c.x & _wgslsmith_clamp_u32(u_input.e.x, u_input.a.x, u_input.e.x))));
    var_0 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(round(2472f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xy) + _wgslsmith_f_op_vec2_f32(-arg_1.yy)) - arg_1.xy)));
    return Struct_1(~vec4<i32>(u_input.b, arg_2.x, u_input.d.x, ~(-43075i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(642f, -1000f, arg_1.x, var_3.x), vec4<f32>(arg_1.x, var_3.x, var_3.x, -1946f))), vec4<f32>(var_3.x, var_3.x, 582f, var_3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 2113f, 326f, var_3.x) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_3.x, -1143f, 277f), vec4<f32>(arg_1.x, var_3.x, var_3.x, arg_1.x))))), vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(round(-356f))), 1f))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-229f + -533f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    var var_0 = func_4(!vec2<bool>(true, any(func_2(vec3<bool>(false, false, false), u_input.a))), _wgslsmith_f_op_vec3_f32(arg_0.b.wyw + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b.x, arg_1.x, 1386f)))))), reverseBits(min(vec4<i32>(u_input.b, arg_0.a.x, -59461i, u_input.b), arg_0.a) | arg_0.a) << (u_input.a % vec4<u32>(32u)));
    var_0 = arg_0;
    return any(vec3<bool>(false, !any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, false, any(vec3<bool>(true, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!func_1(Struct_1(vec4<i32>(u_input.b, u_input.b, 0i, -1i), vec4<f32>(683f, -413f, -1039f, 661f), -151f), vec2<f32>(-1201f, -587f)) & (firstLeadingBit(0u) > u_input.e.x)));
    let var_1 = any(vec4<bool>(false, !(_wgslsmith_dot_vec4_u32(vec4<u32>(3265u, 0u, u_input.e.x, u_input.c.x), vec4<u32>(1u, u_input.e.x, 4896u, u_input.e.x)) > _wgslsmith_clamp_u32(72933u, u_input.a.x, 4294967295u)), !select(true, true, true), true));
    var_0 = var_1;
    var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(685f)) - _wgslsmith_f_op_f32(f32(-1f) * -1162f))) != _wgslsmith_f_op_f32(sign(-964f))) == var_1;
    let var_2 = func_4(!vec2<bool>(all(!vec4<bool>(var_1, var_1, false, var_1)), all(vec3<bool>(var_1, false, false))), func_4(select(select(func_2(vec3<bool>(var_1, true, var_1), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 39382u)).xz, vec2<bool>(true, false), func_2(vec3<bool>(true, var_1, false), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.c.x)).xy), vec2<bool>(!var_1, u_input.b > u_input.b), !var_1), vec3<f32>(117f, -1160f, _wgslsmith_f_op_f32(f32(-1f) * -145f)), vec4<i32>(u_input.b, -1308i ^ u_input.d.x, max(u_input.d.x, -48025i), 1i ^ (2147483647i >> (u_input.e.x % 32u)))).b.yzy, abs(select(countOneBits(vec4<i32>(u_input.b, u_input.d.x, 1i, 0i)), max(vec4<i32>(2147483647i, 25425i, -4835i, 1i), vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, u_input.b)), vec4<bool>(true, var_1, false, false)) << (vec4<u32>(u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~6835u, u_input.a.x | u_input.a.x) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -1105f), -398f))), var_2.a, select(var_2.a, vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(u_input.d.zz & u_input.d.yy, u_input.d.zz >> (u_input.e % vec2<u32>(32u))), 0i, ~func_4(vec2<bool>(true, var_1), vec3<f32>(1119f, var_2.b.x, var_2.c), var_2.a).a.x), !(any(vec3<bool>(false, var_1, false)) || !var_1)));
}

