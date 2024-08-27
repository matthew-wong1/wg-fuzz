struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> u32 {
    let var_0 = arg_1.wyx;
    return u_input.b;
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(858f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-854f, _wgslsmith_f_op_f32(floor(-129f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-474f)), -1515f) - _wgslsmith_div_f32(-374f, -413f)), 1340f)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(func_2(vec3<i32>(u_input.c, u_input.c, arg_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 1702f)), 4294967295u), vec2<u32>(4294967295u, 0u));
    let var_3 = Struct_1((min(31693u, u_input.b ^ 42054u) & reverseBits(21410u)) ^ ~1u, vec4<u32>(_wgslsmith_div_u32(u_input.b, 1u | var_2), _wgslsmith_clamp_u32(var_2, u_input.b, 46487u) | abs(29257u), _wgslsmith_mod_u32(var_2, 1u) ^ 127332u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 8226u, var_2), vec3<u32>(u_input.b, 0u, 3758u)) | ~var_2) >> (abs(vec4<u32>(var_2, u_input.b, 62016u, u_input.b) << (~vec4<u32>(var_2, 1u, var_2, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(trunc(437f)), u_input.b);
    let var_4 = var_0.x;
    return _wgslsmith_mult_u32(max(_wgslsmith_mod_u32(4294967295u, var_2), countOneBits(var_2)), 1u);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(!all(vec2<bool>(true, true)), false, true, 1u != ~firstTrailingBit(u_input.b | 15361u));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))));
    let var_3 = Struct_1(arg_1.d, firstLeadingBit(select(var_1.b, vec4<u32>(arg_0, 1u, 1u, 4294967295u), var_0.x) ^ vec4<u32>(arg_1.b.x, arg_1.a, arg_0, arg_0)) ^ select(~vec4<u32>(var_1.b.x, arg_0, var_1.a, arg_1.a), firstTrailingBit(abs(vec4<u32>(0u, arg_0, arg_0, 0u))), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -170f), func_2(u_input.a.yxx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.c * arg_1.c), var_1.c, _wgslsmith_f_op_f32(-var_1.c), 1853f))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-189f, 1279f)))))));
    return Struct_1(arg_1.b.x, arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.c))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1471f - arg_1.c), _wgslsmith_f_op_f32(step(var_3.c, var_3.c))))), _wgslsmith_dot_vec2_u32(select(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(56286u, 1u), vec2<u32>(801u, 1u), vec2<u32>(0u, 0u)), vec2<u32>(var_1.a, var_1.b.x)), _wgslsmith_sub_vec2_u32(var_1.b.ww, arg_1.b.wy), true), var_3.b.zw | ~select(vec2<u32>(4294967295u, arg_0), arg_1.b.yz, true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> f32 {
    var var_0 = arg_0.xz;
    let var_1 = u_input.d.x;
    let var_2 = func_4(_wgslsmith_clamp_u32(1u, 0u, func_2(vec3<i32>(32938i, arg_2.x, -12224i), vec4<f32>(arg_1.x, -956f, arg_1.x, 1684f)) << (1u % 32u)), Struct_1(var_0.x, firstLeadingBit(~vec4<u32>(51077u, 43133u, u_input.b, 18607u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2154f) * arg_1.x) + -584f), func_3(_wgslsmith_div_vec2_i32(~u_input.a.yx, -vec2<i32>(u_input.c, -3828i)))));
    let var_3 = 384f;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(641f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, -364f) - -1347f), all(vec2<bool>(false, true)))))));
    return _wgslsmith_f_op_f32(round(-261f));
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c, -823f, -750f)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1472f, _wgslsmith_f_op_f32(-arg_0.c))), 638f, arg_0.c);
    return 1121f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec2<bool>(true, true), vec2<bool>(~u_input.c <= -80606i, _wgslsmith_clamp_i32(u_input.d.x, 23071i, u_input.a.x) > u_input.d.x), vec2<bool>(false, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false))))));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(u_input.d.x, ~0i), _wgslsmith_mod_i32(u_input.a.x, ~(u_input.c ^ u_input.a.x)));
    var var_2 = ~u_input.b;
    let var_3 = _wgslsmith_f_op_f32(func_5(Struct_1(39094u, select(~abs(vec4<u32>(u_input.b, 10935u, u_input.b, 4294967295u)), vec4<u32>(10670u, max(u_input.b, 0u), ~u_input.b, u_input.b), !var_0 & var_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<f32>(163f, 494f, -248f), vec3<i32>(-1i, u_input.a.x, u_input.d.x)))))), ~4294967295u)));
    var var_4 = !((firstLeadingBit(2147483647i) > var_1.x) | var_0);
    let var_5 = var_1 << (countOneBits(func_4(min(8471u, 16772u | u_input.b), func_4(_wgslsmith_mod_u32(5614u, 56223u), Struct_1(u_input.b, vec4<u32>(u_input.b, 0u, u_input.b, 93285u), var_3, 4294967295u))).b.yx) % vec2<u32>(32u));
    var_2 = ~(~func_4(abs(u_input.b), func_4(u_input.b, Struct_1(4294967295u, vec4<u32>(14334u, 44008u, 69850u, 0u), -1689f, 21333u))).b.x & (u_input.b ^ u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3));
}

