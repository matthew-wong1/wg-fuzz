struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1738f, -649f, 1772f);

var<private> global1: array<Struct_2, 11>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = u_input.b.x;
    global1 = array<Struct_2, 11>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c, arg_0.a, arg_0.a), vec3<f32>(arg_0.a, arg_1.d, arg_0.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c, global0.x, 1000f), vec3<f32>(arg_1.c, arg_1.c, -1690f)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-3180f)) + _wgslsmith_div_f32(arg_1.c, 1010f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1579f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, 1968f, 1087f), vec3<f32>(arg_1.b.x, 174f, arg_0.a), arg_1.e))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -109f, global0.x)))))));
    let var_1 = -min(vec3<i32>(1i, 6265i, ~u_input.a.x), firstTrailingBit(vec3<i32>(0i, u_input.a.x, u_input.a.x))) ^ vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_div_i32(34491i, 6122i), -49917i), 47064i, _wgslsmith_mod_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -19025i, u_input.a.x, u_input.a.x), vec4<i32>(1i, 19431i, u_input.a.x, u_input.a.x)), u_input.a.x), -u_input.a.x));
    var var_2 = u_input.a.x;
    return (~(~var_0) >> (var_0 % 32u)) ^ countOneBits(~(~(var_0 | u_input.d.x)));
}

fn func_2(arg_0: Struct_3) -> u32 {
    return min(51026u, func_3(Struct_1(global0.x), arg_0));
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(-394f, 719f, global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -560f) + vec3<f32>(519f, 1505f, 903f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1616f, global0.x) - vec3<f32>(global0.x, -1000f, global0.x))))))));
    var var_0 = 1i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -291f), -250f)));
    var var_2 = ~0u;
    let var_3 = max(max(firstTrailingBit(vec2<i32>(-48069i, u_input.a.x)), abs(vec2<i32>(-16728i, u_input.a.x))), ~(~(~u_input.a))) | _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-reverseBits(u_input.a), ~(-vec2<i32>(-9627i, -23959i))), ~_wgslsmith_sub_vec2_i32(-u_input.a, u_input.a & vec2<i32>(-12623i, -47696i)));
    return min(firstLeadingBit(u_input.b.x), (_wgslsmith_mod_u32(func_2(Struct_3(false, global0.xz, -1145f, -1881f, vec3<bool>(true, true, false))), u_input.c.x >> (4294967295u % 32u)) | ~(~0u)) ^ countOneBits(10896u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -158f, global0.x) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, 672f, 514f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, global0.x, -510f))))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(sign(141f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))));
    global1 = array<Struct_2, 11>();
    let var_0 = vec3<u32>(~56227u, abs(0u), ~(func_1() | 1u));
    var var_1 = u_input.c.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))) - -206f)));
    var_1 = var_0.x;
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_2.a, -1160f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -769f, global0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-285f, global0.x, global0.x) * vec3<f32>(var_2.a, var_2.a, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, 3274f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x >> (6949u % 32u), countOneBits(reverseBits((vec3<i32>(-17264i, u_input.a.x, -46783i) >> (vec3<u32>(u_input.c.x, 22483u, 43810u) % vec3<u32>(32u))) << (max(vec3<u32>(u_input.c.x, 13086u, 4294967295u), vec3<u32>(58443u, 1u, 74372u)) % vec3<u32>(32u)))));
}

