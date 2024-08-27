struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<i32> {
    let var_0 = u_input.b;
    let var_1 = ~(vec4<i32>(i32(-1i) * -u_input.a, ~u_input.d.x, 2147483647i, -39505i) ^ (reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, 0i))) >> (abs(vec4<u32>(arg_1, arg_1, 4294967295u, 18605u)) % vec4<u32>(32u))));
    var var_2 = Struct_3(all(select(vec4<bool>(true, false, any(vec3<bool>(arg_0, arg_0, arg_0)), 0i == u_input.a), select(!vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0)), !vec4<bool>(arg_0, false, arg_0, arg_0))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(335f + 123f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1756f + 208f))))));
    var_2 = Struct_3(!var_2.a, ~((7673u & _wgslsmith_dot_vec4_u32(vec4<u32>(65230u, 29785u, var_2.b, 2205u), vec4<u32>(6611u, var_0, 21661u, 14089u))) << ((_wgslsmith_add_u32(u_input.b, 4696u) >> (abs(var_2.b) % 32u)) % 32u)), _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(abs(-346f))));
    var var_3 = _wgslsmith_add_i32(var_1.x, 4973i);
    return reverseBits(var_1);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = 0u << (~u_input.b % 32u);
    var var_1 = ~firstTrailingBit(~57237u);
    let var_2 = func_3(arg_3, _wgslsmith_dot_vec3_u32(~(arg_0 << (arg_0 % vec3<u32>(32u))), ~select(~vec3<u32>(16967u, 16122u, u_input.c), _wgslsmith_mod_vec3_u32(arg_0, arg_0), select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(false, false, true), arg_3))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1121f, -910f, -725f, -679f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, 1401f, -1685f, -968f) - vec4<f32>(-102f, -165f, -1552f, 1453f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1281f, 325f, -650f, 587f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, -267f, 500f, -1174f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1004f, -544f, 195f, 119f), vec4<f32>(879f, -960f, 1000f, 1573f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1147f, 900f, -1241f, 378f)))))));
    let var_4 = Struct_2(Struct_1(19223i, vec4<bool>(arg_3, true, arg_3, true), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, u_input.b) >> ((vec4<u32>(u_input.b, 3564u, 56473u, 4294967295u) | vec4<u32>(arg_0.x, arg_0.x, 55307u, var_0)) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.c, 45642u, u_input.b))));
    return -1807f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(arg_0);
    var_0 = Struct_2(arg_0);
    var var_1 = _wgslsmith_f_op_f32(1112f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(754f))));
    var_0 = Struct_2(var_0.a);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c * arg_1) - _wgslsmith_f_op_f32(f32(-1f) * -514f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(770f, 1337f)) + _wgslsmith_f_op_f32(arg_1 - -2047f))))) - arg_1);
    return arg_3;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec3<i32> {
    let var_0 = arg_2;
    let var_1 = -699f;
    var var_2 = func_4(Struct_1(~_wgslsmith_dot_vec2_i32(~u_input.d, select(u_input.d, u_input.d, arg_1.b.x)), !arg_1.b, _wgslsmith_clamp_vec4_u32(arg_1.c, vec4<u32>(arg_0, ~arg_1.c.x, ~30454u, _wgslsmith_dot_vec2_u32(arg_1.c.zy, arg_1.c.zy)), vec4<u32>(31891u, 0u, arg_0, arg_0) << (reverseBits(vec4<u32>(u_input.c, arg_1.c.x, 0u, u_input.b)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(func_2(vec3<u32>(max(max(21579u, arg_1.c.x), arg_0 << (1u % 32u)), arg_0, 15836u), arg_3, 24433i, any(!(!arg_1.b.zwy)))), 4294967295u, Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-754f, var_1, true)))) == 484f, 28796u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))));
    let var_3 = u_input.b;
    var_2 = Struct_3(true, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 265f)))));
    return -(~vec3<i32>(~(-arg_3), arg_3 | firstTrailingBit(arg_1.a), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(((_wgslsmith_clamp_vec3_i32(vec3<i32>(-19128i, u_input.a, -17284i), vec3<i32>(u_input.a, u_input.a, u_input.d.x), vec3<i32>(u_input.d.x, 2147483647i, u_input.a)) | countOneBits(vec3<i32>(-47230i, u_input.d.x, -8085i))) & func_1(~14991u, Struct_1(12509i, vec4<bool>(true, false, true, true), vec4<u32>(u_input.c, 18112u, u_input.b, u_input.b)), true, u_input.d.x)) & vec3<i32>(-2147483647i, -16813i, -u_input.d.x), func_1(u_input.b, Struct_1(u_input.a, select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(46189u, u_input.c, u_input.c, u_input.b)), func_4(Struct_1(-6045i, vec4<bool>(true, true, true, true), vec4<u32>(u_input.b, 40582u, 4294967295u, 13529u)), 497f, u_input.b, Struct_3(false, u_input.c, 1182f)).b, 1u & u_input.c, 19570u & u_input.b)), true, -(~(-14770i))), !(!vec3<bool>(true, u_input.d.x != u_input.a, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 168f) * _wgslsmith_f_op_f32(f32(-1f) * -440f)), 225f));
}

