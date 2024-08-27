struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -29369i;

var<private> global1: i32 = 8960i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<u32>) -> u32 {
    let var_0 = firstLeadingBit(_wgslsmith_mult_u32(abs(u_input.b), _wgslsmith_dot_vec3_u32(arg_3.yzw ^ _wgslsmith_add_vec3_u32(arg_3.yxz, arg_3.ywx), arg_3.ywz)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2221f), arg_1)));
    let var_2 = ~(-1i);
    global0 = -30478i;
    return ~(~34957u & _wgslsmith_mult_u32(arg_3.x, ~countOneBits(var_0)));
}

fn func_3() -> u32 {
    var var_0 = ~1956u;
    let var_1 = vec2<u32>(abs(u_input.b), (u_input.b >> (u_input.b % 32u)) | func_2(-1i >> (u_input.b % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 620f))), vec4<bool>(false, true, true, true), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) & firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u))));
    global0 = 2147483647i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(980f, -847f), vec2<f32>(381f, -366f), vec2<bool>(false, false))))))) + vec2<f32>(_wgslsmith_f_op_f32(-772f + -328f), 523f)));
    global0 = -1i;
    return _wgslsmith_mod_u32(var_1.x, u_input.b);
}

fn func_1(arg_0: Struct_1) -> i32 {
    global1 = 1i >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(~func_2(-1i, arg_0.a.x, vec4<bool>(false, false, true, false), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), 54443u), 2993u) % 32u);
    var var_0 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-43756i, ~firstLeadingBit(u_input.a.x), u_input.a.x, firstLeadingBit(u_input.a.x) | u_input.c.x), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 36600i), u_input.c.x, ~2147483647i, u_input.c.x) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.a.x, -13673i), vec4<i32>(u_input.a.x, -79514i, -21583i, 2147483647i)));
    let var_1 = Struct_1(arg_0.a);
    var var_2 = true;
    let var_3 = vec3<u32>(~(~(u_input.b >> (1u % 32u))), ~(abs(4294967295u) | u_input.b), ~(u_input.b | firstLeadingBit(u_input.b))) ^ vec3<u32>(49589u, u_input.b, abs(abs(u_input.b)) & 4294967295u);
    return firstLeadingBit(-select(u_input.c.x, ~var_0.x, true)) >> (func_3() % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, -37976i) >> (vec4<u32>(80536u, 0u, u_input.b, 13162u) % vec4<u32>(32u)), -vec4<i32>(u_input.a.x, 7374i, 5579i, u_input.a.x)), ~(-vec4<i32>(u_input.a.x, 2147483647i, -46845i, -3295i))), vec4<i32>(u_input.c.x, _wgslsmith_clamp_i32(func_1(Struct_1(vec2<f32>(-1321f, 1396f))), u_input.a.x, u_input.c.x), reverseBits(17599i), func_1(Struct_1(vec2<f32>(-110f, 1101f))))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(347f, -728f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1229f, 1000f) - vec2<f32>(-397f, -138f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(842f, 429f)))))));
    var var_1 = 4294967295u;
    var var_2 = all(vec4<bool>(false, false, any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)) & all(vec3<bool>(true, false, false)), !any(vec4<bool>(true, true, true, true))));
    let var_3 = _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(min(var_0.a.x, 209f)))));
    let var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~(~firstTrailingBit(vec3<u32>(1u, 0u, 21836u))), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(7691u, 3212u, 1u), vec3<u32>(14854u, 36615u, u_input.b)) & func_3(), 40237u & _wgslsmith_add_u32(0u, u_input.b))), vec3<i32>(_wgslsmith_clamp_i32(~(-53178i), firstLeadingBit(u_input.c.x), 14960i), 1630i, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, var_4), var_4)) << (~(~firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 1u))) % vec3<u32>(32u)));
}

