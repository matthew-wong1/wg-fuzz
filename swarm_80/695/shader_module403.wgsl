struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f)))))) + 498f));
    var var_1 = Struct_2(0u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(1f)), 312f, _wgslsmith_div_f32(-1620f, _wgslsmith_f_op_f32(-1000f - 133f)), 641f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(1098f))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = -393f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1135f - 209f) * -1109f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1505f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2979f, -216f))), _wgslsmith_f_op_f32(func_3())), any(!(!arg_2.wz)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(floor(-1210f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1742f)))));
    var var_2 = Struct_2(u_input.d.x);
    var_0 = -1000f;
    return vec2<bool>(false, _wgslsmith_dot_vec2_u32(u_input.d.ww, firstTrailingBit(_wgslsmith_mult_vec2_u32(arg_1.zx, u_input.d.zw))) <= ~2608u);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = !(!func_2(false, ~(~u_input.d), vec4<bool>(true, arg_0 >= -618f, any(vec3<bool>(true, true, true)), false)));
    var_0 = select(select(vec2<bool>(var_0.x, true), select(!(!vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(var_0.x, true), vec2<bool>(select(var_0.x, false, false), true)), true), vec2<bool>(all(vec2<bool>(var_0.x, true)), false), !any(vec4<bool>(!var_0.x, false, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x & false)));
    let var_1 = 24621u;
    var var_2 = vec4<bool>(!var_0.x, var_0.x | var_0.x, false, !(~u_input.d.x > _wgslsmith_dot_vec2_u32(~u_input.d.zz, u_input.d.xw)));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), arg_0, _wgslsmith_f_op_f32(-245f + _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -815f))), -487f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(339f - _wgslsmith_div_f32(arg_0, 1093f)) - _wgslsmith_f_op_f32(var_3.a.x + arg_0)), -1454f, false)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = u_input.a >> (56589u % 32u);
    var var_1 = u_input.b;
    var var_2 = vec4<i32>(u_input.b, -41963i, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(arg_0.x, u_input.b, arg_0.x)), vec3<i32>(arg_0.x, ~u_input.b, ~1i))), u_input.b);
    var var_3 = Struct_2(u_input.c);
    var var_4 = _wgslsmith_mult_u32(max(_wgslsmith_add_u32(var_0 << (_wgslsmith_clamp_u32(93307u, var_0, var_3.a) % 32u), ~4294967295u), _wgslsmith_mult_u32(countOneBits(_wgslsmith_mod_u32(32698u, 43135u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d.xwy, u_input.d.zzy), ~vec3<u32>(var_3.a, 31915u, u_input.a)))), _wgslsmith_div_u32(4294967295u, ~(~4294967295u)));
    return Struct_2(~_wgslsmith_sub_u32(u_input.d.x, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(-u_input.b, firstLeadingBit(u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 43225i, u_input.b) >> (vec4<u32>(u_input.a, u_input.c, 61998u, u_input.d.x) % vec4<u32>(32u)), min(vec4<i32>(1i, 1i, 5875i, -1i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) * _wgslsmith_f_op_f32(2090f - -176f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(736f, vec3<i32>(2147483647i, 18449i, -1i), Struct_2(u_input.d.x))) * _wgslsmith_f_op_f32(-485f * -1127f)), _wgslsmith_f_op_f32(f32(-1f) * -303f), 1366f)));
    var var_1 = var_0;
    var var_2 = countOneBits(~(-vec4<i32>(firstTrailingBit(u_input.b), 75581i, firstLeadingBit(u_input.b), u_input.b)));
    let var_3 = func_4(~var_2.xy, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1551f, -1874f, -551f, 208f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1909f, 703f, -272f, 815f), vec4<f32>(206f, -1060f, -1120f, 374f))) * vec4<f32>(1f, 1f, 1f, 1f))));
    var_2 = select(-abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1200i, 0i, 0i), vec4<i32>(-18317i, 16237i, var_2.x, var_2.x)) << ((u_input.d ^ vec4<u32>(0u, 4294967295u, 1u, 1u)) % vec4<u32>(32u))), -(-countOneBits(vec4<i32>(var_2.x, -2237i, 2147483647i, 22490i)) | firstTrailingBit(~vec4<i32>(var_2.x, 26384i, u_input.b, var_2.x))), true);
    var var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(301f - -2079f) - _wgslsmith_f_op_f32(round(732f)))), _wgslsmith_f_op_f32(f32(-1f) * -218f), -918f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1332f) + -1309f)))));
    var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-577f + _wgslsmith_div_f32(var_4.a.x, 706f)), _wgslsmith_f_op_f32(686f - _wgslsmith_f_op_f32(var_4.a.x * var_4.a.x)), -1130f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -24559i);
}

