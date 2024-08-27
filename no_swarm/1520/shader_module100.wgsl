struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f))), ~firstTrailingBit(firstTrailingBit(vec2<i32>(1i, 1i))), ~max(~(-2147483647i), ~(11857i << (1u % 32u))), _wgslsmith_f_op_f32(trunc(426f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.e)))), var_0.e)));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -481f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(574f, var_0.b))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.e, var_0.e)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(480f, var_0.e) - vec2<f32>(-263f, var_0.b)), vec2<f32>(var_0.e, var_0.e), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))))));
    global0 = 1758f;
    return !vec3<bool>(true, true, any(vec2<bool>(any(vec2<bool>(true, true)), true)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(~1u, -464f, ~(~_wgslsmith_div_vec2_i32(arg_1.e ^ arg_1.e, arg_1.e)), ~(-23597i), arg_0);
    let var_1 = arg_1;
    var var_2 = ~1u;
    let var_3 = arg_1;
    var_2 = ~_wgslsmith_mod_u32(~arg_1.d.a, 73854u);
    return 1u;
}

fn func_3(arg_0: f32) -> vec4<f32> {
    var var_0 = Struct_1(1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), 115f)), firstTrailingBit(vec2<i32>(min(2147483647i, -10261i), ~0i)) | vec2<i32>(1i, 1i), -1i, -1000f);
    let var_1 = Struct_2(u_input.b ^ ~func_2(_wgslsmith_f_op_f32(sign(var_0.e)), Struct_2(23889u, -892f, vec4<u32>(u_input.b, var_0.a, u_input.b, 92401u), Struct_1(1u, 1092f, vec2<i32>(0i, var_0.c.x), 1i, -1018f), vec2<i32>(1i, 2147483647i)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), true), 366f, vec4<u32>(~(~_wgslsmith_mod_u32(0u, u_input.b)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, u_input.b), abs(vec2<u32>(55921u, 0u))), abs(vec2<u32>(u_input.b, u_input.a))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.a), vec3<u32>(var_0.a, 36824u, var_0.a) << (vec3<u32>(35152u, u_input.b, var_0.a) % vec3<u32>(32u))), 0u), (select(var_0.a, var_0.a, true) >> (35539u % 32u)) & ~(~0u)), Struct_1(select(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a, 107916u, u_input.b), abs(16841u)), 0u, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(step(133f, 541f))))), select(select(-vec2<i32>(63367i, 1i), abs(var_0.c), vec2<bool>(true, true)), firstTrailingBit(vec2<i32>(var_0.c.x, var_0.d) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), ~_wgslsmith_mult_i32(var_0.d, -34519i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-453f))) - var_0.b)), min(countOneBits(reverseBits(var_0.c)) & _wgslsmith_add_vec2_i32(vec2<i32>(var_0.c.x, -1i), var_0.c), ~max(vec2<i32>(var_0.c.x, var_0.c.x), max(vec2<i32>(35537i, var_0.d), var_0.c))));
    var var_2 = var_0.a;
    var var_3 = ~1u;
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(323f)) * 288f)));
    return vec4<f32>(_wgslsmith_f_op_f32(arg_0 * 315f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-208f, var_1.b)) * arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.b, -1620f, true)), var_0.b), -227f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~max(vec2<u32>(u_input.a, 20791u), vec2<u32>(4066u, u_input.a)) >> (abs(vec2<u32>(u_input.b, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))) >> (vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(reverseBits(4294967295u), u_input.a)), ~select(1u, select(27381u, 18815u, true), any(vec4<bool>(false, true, true, true)))) % vec2<u32>(32u));
    var var_1 = 284f;
    var var_2 = vec3<bool>(true, all(vec2<bool>(!any(vec4<bool>(true, false, true, false)), false)), true);
    var var_3 = var_0;
    var_2 = !(!select(select(!vec3<bool>(var_2.x, var_2.x, true), select(vec3<bool>(false, true, var_2.x), vec3<bool>(false, false, var_2.x), false), var_2.x), !vec3<bool>(var_2.x, false, var_2.x), !(42153u <= var_3.x)));
    var_2 = select(vec3<bool>(true, any(!select(vec3<bool>(false, false, false), vec3<bool>(var_2.x, false, true), vec3<bool>(true, false, var_2.x))), false), !select(!(!vec3<bool>(var_2.x, var_2.x, var_2.x)), !func_1(var_3.x), false), vec3<bool>(true, all(!vec2<bool>(var_2.x, false)), all(func_1(func_2(-515f, Struct_2(var_3.x, -334f, vec4<u32>(13695u, 0u, u_input.b, 0u), Struct_1(var_3.x, -658f, vec2<i32>(2147483647i, 670i), -15769i, -332f), vec2<i32>(-36412i, 0i)), vec4<bool>(false, true, var_2.x, var_2.x), false)))));
    var var_4 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(1u, u_input.b), 1u), var_0.x);
    let var_5 = var_2.zz;
    let x = u_input.a;
    s_output = StorageBuffer(0i, firstLeadingBit(-33595i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(525f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(1494f)))), 24766u, vec3<u32>(~u_input.a, var_0.x, var_0.x));
}

