struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> i32 {
    return i32(-1i) * -43771i;
}

fn func_2() -> i32 {
    var var_0 = func_3(vec3<u32>(0u, 4294967295u, ~u_input.a), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -39614i, 2147483647i), -105i), u_input.d), _wgslsmith_mod_vec2_i32(abs(~vec2<i32>(u_input.d, -2147483647i) >> (u_input.b.xz % vec2<u32>(32u))), firstLeadingBit(-vec2<i32>(u_input.d, u_input.d)) | vec2<i32>(u_input.d, ~u_input.d)), select(~(~abs(vec4<u32>(81289u, u_input.b.x, 1u, 33024u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 26209u, u_input.b.x, u_input.a), ~vec4<u32>(u_input.c, 73955u, u_input.c, u_input.b.x)), true));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1058f))))))));
    let var_2 = Struct_2(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, u_input.b.x <= 45233u))));
    var var_3 = (countOneBits(~(u_input.c & 4294967295u)) >> (1u % 32u)) >= u_input.a;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1723f * 319f) * var_1.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * var_1.a) + _wgslsmith_f_op_f32(select(var_1.a, var_1.a, true)))), -1000f)), var_1.a, _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-var_1.a)), var_1.a);
    return 1i;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = !all(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(any(vec3<bool>(false, false, false)), true, any(vec3<bool>(false, true, true)))));
    let var_1 = ~(~(~vec4<u32>(arg_1.x, ~1u, ~u_input.b.x, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(arg_1.x, arg_1.x)))));
    var var_2 = _wgslsmith_add_u32(var_1.x, arg_1.x);
    var var_3 = ~arg_1.x;
    let var_4 = ~func_2();
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), -792f), _wgslsmith_f_op_f32(-704f + _wgslsmith_f_op_f32(2343f * 1904f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3328f) * _wgslsmith_f_op_f32(f32(-1f) * -1137f))));
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = 6397u;
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(309f + -743f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1527f, arg_0.a, 825f, -360f) - vec4<f32>(arg_0.a, arg_0.a, -404f, arg_0.a)) + vec4<f32>(-923f, -1240f, arg_0.a, arg_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a) - vec4<f32>(-120f, arg_0.a, arg_0.a, arg_0.a))), !vec3<bool>(true, 4294967295u != u_input.a, any(vec2<bool>(false, true)))), var_0, select(vec2<bool>(true, any(vec4<bool>(false, false, false, false))), select(vec2<bool>(false, true), vec2<bool>(0u != var_0, all(vec4<bool>(true, false, true, false))), true), !all(vec3<bool>(true, true, false))), ~vec2<u32>(_wgslsmith_clamp_u32(~u_input.b.x, countOneBits(var_0), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 53735u), u_input.b.yx)), var_0 & 41159u));
    var var_2 = u_input.d;
    return 14327i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_sub_i32(-9386i, abs(u_input.d)) & -u_input.d);
    var var_1 = vec4<u32>(57334u, u_input.b.x, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.b.x), u_input.b)), firstLeadingBit(~38678u)), u_input.b.x);
    var_0 = func_4(func_1(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d) << (var_1.xy % vec2<u32>(32u)), vec2<i32>(10784i, u_input.d)), ~(-2147483647i) & _wgslsmith_mult_i32(u_input.d, u_input.d)), u_input.b.zy));
    let var_2 = (firstTrailingBit(abs(select(vec2<i32>(-36373i, u_input.d), vec2<i32>(u_input.d, 36165i), true))) & -reverseBits(vec2<i32>(-2147483647i, -57007i))) | _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, ~(-2147483647i))), ~vec2<i32>(_wgslsmith_div_i32(0i, u_input.d), func_4(Struct_3(-1000f))));
    var_1 = _wgslsmith_div_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(~26517u, _wgslsmith_mod_u32(49421u, 59843u), 1u, 4294967295u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 21299u, var_1.x, 4294967295u), vec4<u32>(var_1.x, u_input.c, 10021u, var_1.x)), vec4<u32>(0u, var_1.x, var_1.x, 4294967295u)), ~(~vec4<u32>(0u, 0u, var_1.x, 18060u)))), countOneBits(~vec4<u32>(~var_1.x, max(u_input.c, 4294967295u), select(1u, u_input.b.x, true), ~u_input.a)));
    var_1 = ~firstLeadingBit(vec4<u32>(var_1.x << (~32346u % 32u), ~(~u_input.b.x), ~_wgslsmith_mult_u32(var_1.x, 5792u), abs(_wgslsmith_div_u32(4294967295u, u_input.b.x))));
    var_0 = var_2.x | var_2.x;
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1589f + -2304f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1260f, 453f, 1759f, -708f))) - vec4<f32>(1f, 1f, 1f, 1f)))), vec3<bool>(true, true, true)), firstLeadingBit(~(~(var_1.x >> (4294967295u % 32u)))), vec2<bool>(true, true), vec2<u32>(~u_input.b.x, _wgslsmith_mod_u32(29225u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_3.a.b.x)), _wgslsmith_f_op_f32(-var_3.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1390f - -275f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f * _wgslsmith_div_f32(var_3.a.a, var_3.a.b.x))), var_3.a.b.x), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, var_2.x, 0i), vec3<i32>(u_input.d, 0i, var_2.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(636f, var_3.a.b.x, -901f, _wgslsmith_f_op_f32(-1f)))));
}

