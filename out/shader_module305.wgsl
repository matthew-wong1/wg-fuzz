struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: i32) -> vec3<f32> {
    var var_0 = Struct_5(-114f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    var_0 = Struct_5(u_input.b.x >= u_input.b.x);
    var_0 = Struct_5(false & all(vec3<bool>(true, var_0.a, true)));
    let var_1 = select(-1i, -2147483647i, var_0.a) << ((u_input.a | arg_2) % 32u);
    let var_2 = 1i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1018f, -847f, arg_0) * vec3<f32>(arg_0, 1722f, -489f)), vec3<f32>(-1000f, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0, 1035f) - vec3<f32>(arg_0, 343f, arg_0)))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec4<bool>) -> bool {
    var var_0 = 0u;
    let var_1 = Struct_4(Struct_3(!arg_1.d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, arg_1.b.x, arg_1.b.x)))), ~countOneBits(abs(5958u)), any(!(!arg_2.zw)), firstTrailingBit(_wgslsmith_sub_u32(u_input.a & arg_1.e, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1501f, -1529f)) * arg_1.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), _wgslsmith_div_f32(-1770f, -125f))) * arg_1.b.x)), -u_input.b.xy);
    var_0 = select(~_wgslsmith_mult_u32(select(var_1.a.c, 4294967295u, false), 0u) | _wgslsmith_div_u32(~(~arg_1.c), _wgslsmith_add_u32(1u, u_input.a)), ~(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 57581u, u_input.a, 16439u), vec4<u32>(4294967295u, var_1.a.e, var_1.a.e, var_1.a.e)), vec4<u32>(var_1.a.c, 10900u, 0u, 2799u)) >> (abs(20139u) % 32u)), false);
    var_0 = ~1u;
    return all(arg_2.wx);
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1337f, -1024f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-930f, -205f))), select(!vec2<bool>(arg_0, false), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), arg_0), all(vec3<bool>(false, arg_0, true))))))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(step(954f, 708f)) <= var_1.x);
    let var_3 = Struct_1(reverseBits(vec2<u32>(max(_wgslsmith_mod_u32(1u, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 58118u))), firstTrailingBit(~u_input.a))), var_1.x, !vec3<bool>(arg_0 || select(arg_0, arg_0, false), !arg_0, select(554f != var_1.x, var_2.a, true)));
    var_0 = !func_4(Struct_5(arg_0), Struct_3(all(var_3.c.yy) && true, _wgslsmith_f_op_vec3_f32(func_3(192f, 1i >> (u_input.a % 32u), 88403u, firstLeadingBit(-2147483647i))), var_3.a.x, false, ~abs(var_3.a.x)), select(vec4<bool>(var_3.a.x <= var_3.a.x, any(var_3.c), -1774f <= var_3.b, true), select(select(vec4<bool>(arg_0, var_2.a, arg_0, var_3.c.x), vec4<bool>(false, arg_0, false, true), vec4<bool>(var_2.a, false, false, false)), vec4<bool>(var_2.a, true, var_2.a, var_2.a), var_2.a | var_3.c.x), true));
    return all(var_3.c) || var_2.a;
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = !any(!(!vec2<bool>(arg_0.d, arg_0.d)));
    var var_1 = vec2<bool>(func_2(arg_0.a), !func_2(var_0));
    var_1 = !vec2<bool>(all(select(select(vec4<bool>(false, arg_0.d, var_0, var_1.x), vec4<bool>(false, false, false, false), false), select(vec4<bool>(var_1.x, var_0, false, false), vec4<bool>(false, false, false, var_1.x), vec4<bool>(false, false, true, var_1.x)), vec4<bool>(false, false, arg_0.a, true))), var_0);
    return _wgslsmith_div_i32(35068i, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-220f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -786f))), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-431f, 764f)), _wgslsmith_f_op_f32(f32(-1f) * -776f)) * 712f)), Struct_1(firstTrailingBit(~vec2<u32>(u_input.a, 1u)), _wgslsmith_f_op_f32(ceil(-148f)), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1546f + _wgslsmith_f_op_f32(f32(-1f) * -1474f)))), !vec3<bool>(true, true, any(vec3<bool>(false, true, false)))));
    var var_1 = vec3<bool>(true && (max(1i, func_1(Struct_3(var_0.c.c.x, vec3<f32>(1726f, 1587f, 1029f), 1u, var_0.c.c.x, var_0.b.a.x))) <= u_input.b.x), true, var_0.b.c.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(681f * _wgslsmith_f_op_f32(1205f + var_0.a.x)), _wgslsmith_f_op_f32(var_0.c.b * -703f));
    var var_3 = var_0;
    let var_4 = var_0;
    let var_5 = any(!select(select(vec4<bool>(var_3.b.c.x, false, var_3.c.c.x, var_3.b.c.x), select(vec4<bool>(var_4.b.c.x, var_3.b.c.x, false, false), vec4<bool>(var_4.b.c.x, var_0.c.c.x, false, var_4.c.c.x), vec4<bool>(true, false, var_0.c.c.x, false)), true), !select(vec4<bool>(false, var_4.c.c.x, var_3.b.c.x, var_4.c.c.x), vec4<bool>(true, var_1.x, var_4.c.c.x, false), false), vec4<bool>(true, u_input.b.x >= -17717i, var_3.a.x < var_3.c.b, select(var_4.b.c.x, false, var_3.b.c.x))));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -354f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstLeadingBit(vec4<u32>(0u, 98796u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_3.c.a.x, 0u), _wgslsmith_sub_u32(u_input.a, var_0.b.a.x), _wgslsmith_dot_vec2_u32(var_4.b.a, vec2<u32>(var_4.c.a.x, var_4.c.a.x))), firstTrailingBit(_wgslsmith_mod_u32(1223u, 24352u)))), ~vec2<i32>(u_input.b.x, -(u_input.b.x & u_input.b.x)));
}

