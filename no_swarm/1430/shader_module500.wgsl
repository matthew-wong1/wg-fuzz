struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = 45165u;
    let var_1 = min(var_0, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_0, 33498u, var_0, 23846u) | vec4<u32>(var_0, var_0, 1u, var_0)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_0, var_0)), _wgslsmith_mult_u32(var_0, var_0), 1u)), ~countOneBits(vec4<u32>(32707u, 19961u, var_0, 12142u) << (vec4<u32>(0u, var_0, 32923u, 4294967295u) % vec4<u32>(32u)))));
    return 4294967295u;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-211f, _wgslsmith_f_op_f32(2019f * -724f))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1475f))), 1081f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, 1183f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1945f, 2000f), vec2<f32>(219f, -486f), true)))))));
    var var_1 = -354f;
    var var_2 = arg_0;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(946f * 434f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, var_0.x)), select(arg_2, select(vec2<bool>(var_2.b, false), vec2<bool>(false, arg_2.x), arg_2), !vec2<bool>(var_2.e, arg_0.d.b))))));
    var var_3 = arg_0;
    return ~(~16246u);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(1956f)), _wgslsmith_f_op_f32(f32(-1f) * -161f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2060f, 192f, -1198f)), false)) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(253f)), _wgslsmith_f_op_f32(step(822f, 450f)), _wgslsmith_f_op_f32(sign(732f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-139f, -692f, 350f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(135f, 629f, -541f))))));
    let var_1 = ~vec4<u32>(_wgslsmith_div_u32(~abs(arg_0), 4294967295u), ~(~(~47764u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(arg_0, arg_0, 4294967295u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, arg_0, arg_0), vec3<u32>(1u, arg_0, arg_0))), (arg_0 ^ ~0u) << (_wgslsmith_mod_u32(func_2(42506i), ~36721u) % 32u));
    var var_2 = max(vec4<u32>(arg_0, 31299u, func_2(u_input.b.x) & ~(~0u), _wgslsmith_sub_u32(2101u, _wgslsmith_div_u32(func_3(Struct_2(u_input.b.x, true, arg_0, Struct_1(vec2<u32>(arg_0, arg_0), false, -1i, var_1.x), true), 1u, vec2<bool>(false, true)), arg_0))), (var_1 ^ var_1) ^ (_wgslsmith_div_vec4_u32(~var_1, var_1) & var_1));
    var var_3 = ~(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.c.x, u_input.d), firstLeadingBit(u_input.c.zy)), u_input.b.zx));
    var var_4 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * 631f))), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1035f) + 1f))));
    return _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(step(1170f, _wgslsmith_f_op_f32(select(var_4.x, 294f, false))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 2147483647i, 8581i) >> (vec3<u32>(0u, 0u, 56809u) % vec3<u32>(32u)), ~vec3<i32>(-36379i, 39691i, 1i)), u_input.c.yyw), !(abs(-u_input.a) <= ~u_input.a), reverseBits(~firstTrailingBit(0u)), Struct_1(vec2<u32>(45318u, 74373u), true, -u_input.a, firstLeadingBit(~7057u)), any(vec3<bool>(true, true, true)));
    let var_1 = var_0;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1265f), 1f);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(50826u & ~var_0.d.a.x))));
    let var_3 = firstTrailingBit(3442i);
    var_2 = _wgslsmith_f_op_f32(func_1(28559u << (_wgslsmith_dot_vec2_u32(var_1.d.a, _wgslsmith_mult_vec2_u32(select(var_0.d.a, var_0.d.a, true), var_1.d.a)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(max(-vec4<i32>(u_input.b.x, var_0.d.c, -1i, u_input.d), abs(vec4<i32>(-26340i, 2147483647i, var_0.a, 0i))), vec4<i32>(~var_1.d.c, 0i, -3814i, _wgslsmith_clamp_i32(24856i, var_1.a, 0i))), func_2(1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(211f, -1607f, _wgslsmith_f_op_f32(1557f * 840f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-122f, 2100f, 929f) + vec3<f32>(-937f, 473f, 499f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-582f, 1633f, -198f) + vec3<f32>(2307f, -418f, 790f)))))));
}

