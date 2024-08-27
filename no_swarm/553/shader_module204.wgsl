struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> vec3<bool> {
    var var_0 = 1i;
    let var_1 = (true & all(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false), all(vec2<bool>(true, true))))) != true;
    let var_2 = ~arg_0.d.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)), -168f, arg_0.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1311f + -422f), _wgslsmith_f_op_f32(sign(-145f)), arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.b, arg_0.b))))), !var_1))));
    let var_4 = var_3.xz;
    return select(!(!(!select(vec3<bool>(false, var_1, true), vec3<bool>(false, var_1, true), vec3<bool>(false, false, var_1)))), vec3<bool>(var_1, -_wgslsmith_mult_i32(1i, -2147483647i) <= arg_0.c, select(false, !var_1, !all(vec2<bool>(true, false)))), vec3<bool>(var_1, var_1, var_1));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    let var_0 = select(!select(!(!vec3<bool>(false, arg_0.x, true)), select(func_3(Struct_5(686f, -1460f, 1i, vec3<u32>(34832u, 113u, u_input.d.x))), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(false, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_0.x)), !vec3<bool>(false, true, arg_0.x)), select(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), vec3<bool>(!all(vec2<bool>(true, true)), arg_0.x, true), arg_0.x);
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(725f))))))) < _wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(-592f + 2579f));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(114f)) + -1430f) + -205f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1325f)) - -979f), 1f)))), _wgslsmith_f_op_f32(1326f + -1784f), -(u_input.a << (_wgslsmith_add_u32(51915u, _wgslsmith_div_u32(1u, 4294967295u)) % 32u)), select(vec3<u32>(u_input.b, 1u, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 1u, 4294967295u), _wgslsmith_mod_vec3_u32(u_input.d.yyz, u_input.d.zww), ~vec3<u32>(0u, u_input.d.x, 1u)), all(select(vec4<bool>(false, arg_0.x, false, var_0.x), vec4<bool>(arg_0.x, var_0.x, true, var_0.x), vec4<bool>(false, true, true, var_0.x)))) | vec3<u32>(reverseBits(u_input.b), ~(~u_input.b), 57630u));
    var var_2 = select(func_3(var_1).yy, vec2<bool>(arg_0.x, true), arg_0.x);
    let var_3 = vec3<i32>(-1i) * -(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 561i, 1i, var_1.c), vec4<i32>(21205i, -41883i, 29749i, 19049i)), 1i, firstTrailingBit(u_input.c.x)));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(firstTrailingBit(select(u_input.d, u_input.d, var_0.x))), min((vec4<u32>(1u, u_input.b, 35537u, var_1.d.x) | u_input.d) << (~vec4<u32>(u_input.b, var_1.d.x, 4294967295u, 57350u) % vec4<u32>(32u)), u_input.d)), ~(~(~u_input.d)));
}

fn func_1(arg_0: u32) -> Struct_4 {
    global0 = true;
    var var_0 = ~vec3<u32>(4294967295u, ~1u, min(countOneBits(abs(u_input.d.x)), func_2(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_1 = false;
    global0 = var_1;
    var_0 = vec3<u32>(_wgslsmith_mult_u32(0u, ~_wgslsmith_clamp_u32(arg_0, ~57582u, _wgslsmith_dot_vec2_u32(var_0.yz, u_input.d.zw))), 4294967295u, reverseBits(_wgslsmith_dot_vec2_u32(abs(u_input.d.zw), vec2<u32>(_wgslsmith_div_u32(0u, 1u), 19336u))));
    return Struct_4(~u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) - _wgslsmith_f_op_f32(select(-1000f, 1054f, false))))) * -1677f), 390f, Struct_3(vec3<bool>(true, (var_1 | false) && (u_input.c.x > 0i), select(!var_1, false, var_1)), true, _wgslsmith_mult_i32(1i, 19418i) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(var_0.x, var_0.x, arg_0, var_0.x)), reverseBits(331u)) % 32u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(404f * -344f) * 1f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(643f, -276f, 1060f, -1398f))))), vec2<f32>(-103f, -1000f), Struct_1(-vec3<i32>(1i, u_input.c.x, 2147483647i), u_input.a, vec4<f32>(513f, -1000f, 1559f, -2055f), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 20455i, u_input.a), vec3<i32>(1i, u_input.c.x, -2147483647i)))), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-102f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!all(vec4<bool>(false, false, true, false)) || false);
    let var_0 = !(!all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true)));
    let var_1 = func_1(1u);
    let var_2 = Struct_5(-466f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e * _wgslsmith_f_op_f32(872f - _wgslsmith_f_op_f32(f32(-1f) * -387f))) - _wgslsmith_f_op_f32(402f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(920f * -226f)))), max(1i, _wgslsmith_clamp_i32(var_1.a.x, ~1i, -1i)), countOneBits(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(12320u, 1u, 4294967295u)), u_input.d.ywz)));
    global0 = !select(false, var_1.d.e == var_1.d.e, !any(var_1.d.a.yy));
    let var_3 = var_1.d;
    var var_4 = ~var_3.e;
    let var_5 = _wgslsmith_add_vec3_u32((~vec3<u32>(1u, u_input.d.x, var_1.d.e) ^ (~vec3<u32>(var_2.d.x, 0u, var_1.d.e) >> (_wgslsmith_clamp_vec3_u32(u_input.d.zwy, var_2.d, vec3<u32>(u_input.d.x, var_1.d.e, var_3.e)) % vec3<u32>(32u)))) & vec3<u32>(~96784u, u_input.b, var_3.e), vec3<u32>(~4294967295u, u_input.b, _wgslsmith_dot_vec2_u32(abs(u_input.d.zy), u_input.d.yw)) | firstTrailingBit(firstLeadingBit(u_input.d.zzx ^ vec3<u32>(var_2.d.x, 0u, 113256u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.d.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, var_3.d.d.c.x, var_1.d.d.a) + var_1.d.d.d.c)))), _wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_1.d.d.d.c))), _wgslsmith_f_op_vec4_f32(sign(var_3.d.d.c))))), max(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.d.xx, vec2<u32>(0u, var_5.x)), 851u, u_input.d.x, countOneBits(var_1.d.e)), u_input.d), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(80086u, var_3.e, 25335u, 1518u), vec4<u32>(57453u, 4294967295u, u_input.b, 35593u)) >> (~u_input.d % vec4<u32>(32u)))));
}

