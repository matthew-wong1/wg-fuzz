struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = true;
    var var_1 = u_input.c;
    let var_2 = reverseBits(_wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(~vec3<i32>(var_1.x, arg_0, var_1.x), u_input.b.wxw)), firstTrailingBit(vec3<i32>(-1i >> (u_input.d % 32u), u_input.c.x, _wgslsmith_add_i32(-6653i, u_input.b.x)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1191f + _wgslsmith_f_op_f32(1575f + -797f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-704f - _wgslsmith_f_op_f32(ceil(928f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-398f, -258f)))))), 1000f);
    let var_4 = !select(vec2<bool>(true, true), vec2<bool>(false, true), !(!any(vec4<bool>(true, true, false, false))));
    return 42011u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    global0 = func_3(-31593i);
    var var_0 = ~arg_0.d;
    global0 = u_input.d;
    let var_1 = -25544i;
    let var_2 = true;
    return ~18753u ^ countOneBits(reverseBits(~func_3(19972i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = select(select(arg_0, arg_0, select(!arg_0, arg_0, select(select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(true, true, false), vec3<bool>(true, false, arg_0.x)), arg_0, select(vec3<bool>(arg_0.x, arg_0.x, true), arg_0, arg_0)))), !select(!vec3<bool>(true, arg_0.x, true), select(select(vec3<bool>(arg_0.x, false, false), arg_0, vec3<bool>(false, false, false)), !vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x), vec3<bool>(true, false, arg_0.x)), true);
    let var_1 = func_2(Struct_1(abs(max(arg_2.e, arg_2.c.x) >> (17702u % 32u)), u_input.d, reverseBits(vec3<i32>(arg_2.d, firstLeadingBit(u_input.c.x), arg_2.a)), 51155i, -firstTrailingBit(min(-1i, 1i))), !select(vec4<bool>(!var_0.x, arg_0.x, arg_0.x, var_0.x && true), vec4<bool>(false, true, all(var_0.xz), all(vec2<bool>(false, var_0.x))), arg_2.e >= u_input.a.x));
    global0 = countOneBits(~_wgslsmith_div_u32(17540u, max(func_2(Struct_1(arg_2.a, arg_1.x, arg_2.c, u_input.c.x, -1i), vec4<bool>(false, true, false, true)), u_input.d)));
    global0 = ~(~var_1);
    var var_2 = 62909i;
    return ~reverseBits(firstLeadingBit(arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(~func_1(vec3<bool>(true, true, true), vec2<u32>(1u, 0u) ^ ~vec2<u32>(u_input.d, 0u), Struct_1(reverseBits(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 11559u, u_input.d), vec4<u32>(u_input.d, u_input.d, 37025u, u_input.d)), min(vec3<i32>(66717i, u_input.a.x, 0i), vec3<i32>(u_input.a.x, 33651i, u_input.c.x)), min(0i, u_input.c.x), _wgslsmith_div_i32(u_input.b.x, 0i))));
    var var_0 = 1u;
    let var_1 = _wgslsmith_dot_vec3_i32(u_input.b.zzw, u_input.b.wyx);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-177f)), 470f);
    let var_3 = !all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), all(vec4<bool>(true, false, true, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_1, _wgslsmith_sub_u32(8130u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.d, u_input.d)), reverseBits(vec2<u32>(u_input.d, 161u)))) >> (abs(_wgslsmith_mult_u32(u_input.d, 1u)) % 32u), abs(_wgslsmith_add_u32(reverseBits(27355u | u_input.d), u_input.d)), -abs(i32(-1i) * -29659i));
}

