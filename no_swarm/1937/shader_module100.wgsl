struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_mod_u32(~1u, abs(_wgslsmith_sub_u32(~112850u, abs(~arg_3.d))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-410f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) * _wgslsmith_f_op_f32(-162f * -1512f)))), arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.b.a))), arg_3.e.a);
    var_0 = arg_0.a.x | u_input.c;
    let var_2 = arg_1 || any(select(!vec3<bool>(false, false, arg_3.b.b), select(vec3<bool>(arg_3.e.b, arg_0.c.b, arg_3.e.b), vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_0.c.b, false, true)), arg_1));
    var var_3 = arg_0.c.b & all(select(vec3<bool>(!arg_1, arg_0.c.b & true, arg_0.b), vec3<bool>(!arg_0.b, arg_0.b, false && arg_1), select(all(vec3<bool>(false, true, arg_1)), var_2, var_2)));
    return !(!(!arg_1) || !(!arg_1)) || arg_0.c.b;
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> vec3<i32> {
    var var_0 = u_input.b.x;
    var_0 = arg_1;
    var var_1 = u_input.c >> (1u % 32u);
    let var_2 = u_input.a.x;
    var_1 = u_input.c;
    return select(~u_input.b, -u_input.b, !select(select(!vec3<bool>(arg_0.b.b, arg_0.b.b, true), select(vec3<bool>(true, arg_0.e.b, arg_0.b.b), vec3<bool>(arg_0.b.b, arg_0.e.b, arg_0.e.b), vec3<bool>(true, false, arg_0.e.b)), func_3(Struct_3(arg_0.c.xyw, arg_0.e.b, Struct_2(147f, arg_0.e.b)), true, vec2<f32>(arg_0.a, arg_0.e.a), arg_0)), vec3<bool>(arg_0.e.b, arg_0.b.b, false), select(false, arg_0.e.b, arg_0.e.b) & false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1294f)));
    let var_1 = -vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, 1i, 0i, arg_0.b), vec4<i32>(25298i, arg_0.b, arg_0.b, arg_0.b)) >> (_wgslsmith_clamp_u32(arg_0.c >> (arg_0.a % 32u), 41660u, ~u_input.c) % 32u), arg_0.b, -2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(775f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f * arg_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)) + arg_1.a))));
    let var_3 = u_input.a.wyw;
    var var_4 = select(!(!vec4<bool>(false & arg_1.b, arg_1.b | true, true, arg_1.b)), !select(!(!vec4<bool>(arg_1.b, false, arg_1.b, arg_3)), !select(vec4<bool>(true, arg_3, false, arg_1.b), vec4<bool>(arg_3, arg_1.b, true, arg_3), vec4<bool>(arg_1.b, arg_1.b, arg_3, false)), !vec4<bool>(false, arg_1.b, true, arg_1.b)), arg_1.b);
    return -_wgslsmith_mod_i32(firstLeadingBit(var_1.x) ^ -17124i, -_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.x, arg_0.b), var_1.x, func_2(Struct_4(-445f, Struct_2(1227f, arg_1.b), vec4<u32>(arg_0.a, 1u, 4294967295u, 15549u), arg_0.a, Struct_2(-713f, true)), var_3.x).x));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = func_4(Struct_1(firstTrailingBit(31340u), _wgslsmith_dot_vec3_i32(~u_input.a.yyz, _wgslsmith_mult_vec3_i32(func_2(Struct_4(arg_0.a, arg_0, vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), u_input.d, arg_0), u_input.a.x), ~u_input.b)), ~1u, _wgslsmith_f_op_f32(309f * arg_0.a)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1095f + -1091f), _wgslsmith_f_op_f32(round(-744f))) - _wgslsmith_f_op_f32(trunc(537f))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(774f, -508f, arg_0.a), vec3<f32>(-326f, 1087f, arg_0.a), !vec3<bool>(true, false, arg_0.b))))), !(!arg_0.b | true));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(abs(992f)), Struct_2(-327f, false), select(select(min(min(vec4<u32>(u_input.c, 2100u, u_input.c, 1u), vec4<u32>(u_input.d, 1651u, u_input.c, 44239u)), abs(vec4<u32>(u_input.d, 4316u, 13658u, u_input.d))), firstTrailingBit(vec4<u32>(0u, u_input.c, 24257u, u_input.d)), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.b, false, arg_0.b, true), arg_0.b)), reverseBits(~min(vec4<u32>(0u, u_input.c, 72468u, 1u), vec4<u32>(0u, 4294967295u, 0u, u_input.c))), true), u_input.c, arg_0);
    var var_2 = true;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-352f, -435f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(-var_1.b.a)))), var_1.e.b || true);
    var_0 = u_input.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-133f * var_1.e.a) - _wgslsmith_f_op_f32(arg_0.a - 577f)), _wgslsmith_f_op_f32(floor(var_3.a)) != _wgslsmith_div_f32(var_3.a, var_1.b.a))) * -457f) * 1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(-821f, false))) - _wgslsmith_f_op_f32(-968f - 281f))), -257f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1367f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(trunc(-1190f)))))));
    var var_1 = 2147483647i;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))))), true);
    let var_3 = reverseBits(max(vec2<u32>(_wgslsmith_mult_u32(u_input.d, 69380u), 1u), vec2<u32>(u_input.c, u_input.d) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.d), vec2<u32>(u_input.c, 10474u))) >> (vec2<u32>(66500u, u_input.c ^ u_input.c) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.b.x));
}

