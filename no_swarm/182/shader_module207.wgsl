struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = arg_0;
    let var_1 = select(vec3<bool>(false, true, var_0.a.x), !var_0.a, vec3<bool>(true, var_0.a.x, true));
    let var_2 = !select(select(!vec4<bool>(var_0.a.x, true, false, true), !vec4<bool>(false, var_1.x, true, false), all(select(vec4<bool>(false, true, true, var_0.a.x), vec4<bool>(false, arg_0.a.x, false, false), false))), vec4<bool>(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -670f) != _wgslsmith_f_op_f32(trunc(-762f)), true && select(var_0.a.x, var_0.a.x, false), any(var_0.a.yx)), true);
    var var_3 = arg_0.a.x;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1320f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1072f, 1000f)), _wgslsmith_f_op_f32(floor(1278f)))))) * _wgslsmith_f_op_f32(-1f));
    return -1405f;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(221f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1499f - -1363f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f + -927f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2, 0u)) + -1280f));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-522f * -1158f), -720f, true))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(485f, 245f) * -911f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1577f + 927f))), _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.xyx), max(~94243u, 29547u))))));
    var var_2 = ~select(vec2<u32>(59276u, firstTrailingBit(u_input.a)), ~_wgslsmith_div_vec2_u32(u_input.e.zz | u_input.e.zz, vec2<u32>(14235u, 0u)), any(!select(vec3<bool>(arg_0.x, true, arg_0.x), arg_2.a, arg_2.a.x)));
    var var_3 = Struct_1(arg_0.zzz);
    return arg_0.xyz;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = 2147483647i;
    let var_1 = -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, firstLeadingBit(-1i), 4242i), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-81459i, -2147483647i, u_input.b)), ~vec3<i32>(u_input.d, u_input.b, u_input.d))) & ~countOneBits(vec3<i32>(-411i, i32(-1i) * -30096i, ~u_input.d));
    let var_2 = arg_2.x & arg_2.x;
    let var_3 = var_1.zx;
    var_0 = reverseBits(~2147483647i ^ _wgslsmith_mod_i32(firstLeadingBit(2147483647i), select(reverseBits(u_input.d), var_1.x | var_1.x, true)));
    return Struct_1(!arg_0.xzz);
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = select(~u_input.e.xz, vec2<u32>(u_input.c, ~114218u), vec2<bool>(select(select(all(vec2<bool>(true, arg_1)), !arg_1, any(vec4<bool>(arg_1, arg_1, arg_1, false))), all(vec4<bool>(true, arg_1, arg_1, arg_1)), true), arg_1));
    var var_1 = true;
    var var_2 = func_4(select(vec4<bool>(any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, true, arg_1))), all(select(vec2<bool>(false, false), vec2<bool>(arg_1, false), true)), true, arg_1), !vec4<bool>(true, true, false, arg_1 & arg_1), vec4<bool>(true, any(func_2(vec4<bool>(arg_1, arg_1, true, true), false, Struct_1(vec3<bool>(true, arg_1, arg_1)))), true, arg_1)), ~1u, !vec2<bool>(any(!vec4<bool>(arg_1, arg_1, true, arg_1)), !arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-982f, 706f) * vec2<f32>(-556f, 311f)))));
    let var_3 = func_4(!select(!(!vec4<bool>(var_2.a.x, true, true, true)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(var_2.a.x, arg_1, true, var_2.a.x), vec4<bool>(arg_1, var_2.a.x, arg_1, var_2.a.x), arg_1), var_0.x < 94656u), false), _wgslsmith_div_u32(_wgslsmith_mod_u32(reverseBits(u_input.a), var_0.x), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, arg_0)), ~(~vec2<u32>(52563u, 30866u)))), select(!(!var_2.a.zy), select(!vec2<bool>(var_2.a.x, var_2.a.x), select(!var_2.a.yz, var_2.a.zy, vec2<bool>(arg_1, arg_1)), vec2<bool>(var_2.a.x, var_2.a.x)), var_2.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1002f, _wgslsmith_f_op_f32(sign(-1335f))) - -1042f), -968f));
    let var_4 = var_3;
    return func_4(vec4<bool>(true, false, true, true), var_0.x, vec2<bool>(all(select(select(vec4<bool>(true, var_4.a.x, false, var_3.a.x), vec4<bool>(false, false, var_4.a.x, var_4.a.x), var_4.a.x), !vec4<bool>(arg_1, arg_1, var_4.a.x, var_2.a.x), !var_3.a.x)), var_4.a.x), vec2<f32>(-1512f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -785f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    var_0 = func_1(~(~69229u), var_0.a.x);
    var var_1 = firstTrailingBit(u_input.e.zw);
    let var_2 = 1f;
    var var_3 = 11602u;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.e.yz | select(u_input.e.zy, _wgslsmith_mod_vec2_u32(u_input.e.zz, vec2<u32>(4294967295u, 22831u)), true), ~abs(vec2<u32>(1u, 1u)), all(!vec2<bool>(var_0.a.x, true)) && (_wgslsmith_f_op_f32(var_2 + var_2) <= 1f)));
}

