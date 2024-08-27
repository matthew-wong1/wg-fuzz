struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_2 {
    return Struct_2(arg_2.d, _wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-991f, -503f, true)) + -1189f), -1000f, vec4<i32>(arg_2.a.x, u_input.b.x, firstTrailingBit(arg_1.x), -u_input.b.x >> (~_wgslsmith_sub_u32(21968u, 4302u) % 32u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_1(~arg_1.x);
    let var_1 = var_0;
    let var_2 = 1u;
    var var_3 = _wgslsmith_mult_vec3_u32(countOneBits(reverseBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_2, 82844u, var_2), ~vec3<u32>(29309u, 22567u, var_2)))), vec3<u32>(firstTrailingBit(4294967295u) << (_wgslsmith_sub_u32(var_2, var_2) % 32u), ~(~(~4294967295u)), firstTrailingBit(var_2 | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 17841u, var_2), vec4<u32>(var_2, 0u, 0u, var_2)))));
    var_3 = vec3<u32>(~select(12234u, 0u, !arg_0.a), var_3.x | var_3.x, 10137u);
    return _wgslsmith_add_i32(~(~_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.a, -1i, -1i), abs(u_input.a))), ~reverseBits(28294i));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_3(vec4<i32>(-2147483647i, func_2(-27971i, u_input.b.zy, Struct_3(vec4<i32>(arg_2.a, -2147483647i, 59757i, 1i), arg_0.xx, -arg_3.x, true, 1i)).e.x, arg_3.x, -_wgslsmith_add_i32(-7251i | arg_2.a, max(1i, arg_3.x))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)), _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-567f - arg_0.x))))), ~0i, true || select(any(vec2<bool>(true, true)), func_2(2147483647i | u_input.b.x, vec2<i32>(-1i, 2147483647i), Struct_3(vec4<i32>(arg_3.x, u_input.a, arg_1, 1i), arg_0.zy, arg_3.x, true, -2147483647i)).a, false), -5589i);
    let var_1 = !(!select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(var_0.d, all(vec3<bool>(false, var_0.d, false)), var_0.d | true), all(!vec4<bool>(var_0.d, var_0.d, var_0.d, true))));
    let var_2 = 10970u;
    var var_3 = arg_2;
    var_3 = arg_2;
    return Struct_3(firstLeadingBit(~(~select(vec4<i32>(0i, arg_1, 17054i, -1i), vec4<i32>(u_input.a, -1i, 1i, 57255i), true))), arg_0.xz, ~(-_wgslsmith_div_i32(var_3.a, 0i)), any(!var_1) & false, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(-59010i, var_3.a, 2147483647i, 23111i) & u_input.b), vec4<i32>(-35155i, _wgslsmith_add_i32(-arg_1, ~(-18302i)), 14070i, _wgslsmith_sub_i32(6888i, _wgslsmith_mod_i32(arg_3.x, u_input.b.x)))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(vec3<f32>(971f, _wgslsmith_f_op_f32(323f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1357f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2624f, 585f) + _wgslsmith_f_op_f32(f32(-1f) * -1448f)))), -func_3(func_2(u_input.b.x, vec2<i32>(u_input.a, u_input.b.x), Struct_3(u_input.b, vec2<f32>(380f, 286f), u_input.b.x, true, u_input.b.x)), u_input.b), Struct_1(u_input.a), u_input.b.xww);
    var_0 = Struct_3(vec4<i32>(-countOneBits(-2147483647i), abs(var_0.a.x), ~(-firstTrailingBit(2147483647i)), max(var_0.e, 0i) ^ -min(-1i, -27222i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.b))), var_0.a.x, false, func_3(Struct_2(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1668f, var_0.b.x, var_0.b.x) + vec3<f32>(-1000f, -372f, var_0.b.x)), ~(-1i), Struct_1(u_input.a), vec3<i32>(-1i, 39941i, 1i)).d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(-736f - _wgslsmith_f_op_f32(-var_0.b.x)), -591f, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(2147483647i, -17049i, -2147483647i, -44288i)), select(var_0.a, var_0.a, vec4<bool>(false, var_0.d, var_0.d, var_0.d)))), vec4<i32>(-u_input.a & min(var_0.a.x, u_input.a), -10840i, -(~u_input.a), 0i)));
    return func_2(u_input.a, (var_0.a.xz ^ ~vec2<i32>(1i, var_0.c)) >> (abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 56837u), vec2<u32>(70694u, 24661u))) % vec2<u32>(32u)), func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), 1525f, var_0.b.x))), u_input.b.x, Struct_1(i32(-1i) * -2147483647i), vec3<i32>(u_input.a, max(~(-6345i), var_0.c), _wgslsmith_dot_vec4_i32(func_4(vec3<f32>(var_0.b.x, 1108f, var_0.b.x), u_input.b.x, Struct_1(-8038i), vec3<i32>(u_input.b.x, -19339i, 1i)).a, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.c)))))), 136f) - _wgslsmith_f_op_f32(-1754f * -1331f));
    var_1 = _wgslsmith_f_op_f32(step(var_0.d, 877f));
    var_1 = -461f;
    let var_2 = !vec2<bool>(1i == u_input.b.x, !var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_u32(4294967295u, 23733u) << (1u % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(106807u, 71034u, 22767u)) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.d, var_0.b) * vec3<f32>(var_0.c, 1000f, var_0.c)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c, var_0.b, 756f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(901f, -837f, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, 600f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-845f, 1000f, -1296f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 114f, var_0.d))))), vec4<u32>(firstTrailingBit(~57970u), 1u, abs(~2370u), 794u));
}

