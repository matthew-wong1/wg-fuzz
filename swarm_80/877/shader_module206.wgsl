struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-450f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + 365f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 672f) - -659f)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = arg_1;
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.a, var_0.a), _wgslsmith_add_u32(44156u, _wgslsmith_clamp_u32(u_input.b.x, arg_0.a.x, 4294967295u)), 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(4294967295u, arg_1.a.x))) & arg_0.a, -8363i);
    let var_2 = var_0.a.ww;
    let var_3 = Struct_1(u_input.c, 1062i);
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1703f))) * 1395f), 910f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(343f + -286f), _wgslsmith_f_op_f32(ceil(-1051f)))) + _wgslsmith_f_op_f32(-870f - _wgslsmith_f_op_f32(abs(937f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-591f, 637f) * _wgslsmith_f_op_f32(-1548f + -115f))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(368f)), _wgslsmith_f_op_f32(min(1000f, 676f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(209f, 1597f)))))), _wgslsmith_f_op_f32(ceil(-596f))));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = vec2<bool>(!func_2(Struct_1(vec4<u32>(arg_1.x, 1u, arg_1.x, u_input.a.x), -u_input.d), Struct_1(~vec4<u32>(u_input.c.x, arg_1.x, u_input.c.x, u_input.a.x), global0.x), (22529i < global0.x) | !arg_2.x), arg_2.x);
    global0 = (select(~vec2<i32>(global0.x, global0.x), -vec2<i32>(u_input.d, -6800i), select(vec2<bool>(var_0.x, true), !vec2<bool>(true, var_0.x), any(vec3<bool>(arg_2.x, arg_2.x, var_0.x)))) & vec2<i32>(u_input.d, ~_wgslsmith_div_i32(0i, -1i))) & vec2<i32>(global0.x ^ -2147483647i, reverseBits(u_input.d));
    let var_1 = 256f;
    let var_2 = _wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(-vec3<i32>(13547i, global0.x, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, u_input.d))) << (~u_input.c.xxz % vec3<u32>(32u)), min(vec3<i32>(reverseBits(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, u_input.d), vec2<i32>(-40309i, -32421i)), global0.x | u_input.d), abs(~vec3<i32>(51995i, 24488i, u_input.d))) << (u_input.c.wyx % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(228f * arg_0);
    return Struct_1(u_input.c, u_input.d);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = u_input.b.x >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_clamp_u32(1u, reverseBits(u_input.c.x), arg_2.a.x)), arg_2.a.x) % 32u);
    var var_1 = all(select(select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), true)), vec2<bool>(!arg_0, arg_0), any(select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0))), select(vec2<bool>(false & arg_0, !arg_0), vec2<bool>(!arg_0, false), true), true));
    let var_2 = arg_2;
    var var_3 = reverseBits(1u);
    var_1 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1229f, 400f, arg_1.x, arg_1.x) * vec4<f32>(623f, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, arg_1.x, -666f, -164f), vec4<f32>(-255f, 1000f, 285f, arg_1.x))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 442f, arg_1.x, arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec2<i32>(global0.x, ~min(2147483647i & global0.x, u_input.d & 2147483647i));
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(986f, 1458f)), func_1(233f, vec2<u32>(88555u, u_input.b.x), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 184f, 1304f, -298f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, 280f, -313f, 103f)), vec4<f32>(-503f, 957f, 458f, 281f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1839f, -1000f, -241f, 291f)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * 1304f), 1546f, -1600f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(875f, var_0.x, true)), _wgslsmith_f_op_f32(var_0.x + 1464f), var_0.x, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(354f, var_0.x, var_0.x, 2798f), _wgslsmith_f_op_vec4_f32(vec4<f32>(950f, var_0.x, var_0.x, var_0.x) - vec4<f32>(-264f, 460f, -2284f, 313f)), any(vec4<bool>(true, true, false, true)))))));
    var var_1 = 5309i ^ u_input.d;
    var var_2 = _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.c.x, abs(1u), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_i32(firstLeadingBit(abs(vec4<i32>(u_input.d, -85109i, u_input.d, global0.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, -34651i, u_input.d, 2147483647i), reverseBits(vec4<i32>(u_input.d, 21696i, -52142i, -16205i)), reverseBits(vec4<i32>(u_input.d, -2147483647i, -1i, global0.x))), vec4<i32>(max(-16358i, 58591i), u_input.d | global0.x, -global0.x, _wgslsmith_mult_i32(-1i, u_input.d))), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, -35676i)), -vec2<i32>(global0.x, 48675i)), -firstLeadingBit(vec2<i32>(0i, 0i))) << (~vec2<u32>(select(81095u, 95860u, false), u_input.c.x) % vec2<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(-2147483647i), func_1(-431f, var_2.xy, vec3<bool>(true, true, true)).b, 1i, _wgslsmith_mod_i32(u_input.d, global0.x)) >> (vec4<u32>(1u, countOneBits(19575u), ~1u, var_2.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x ^ 33033i, func_1(var_0.x, vec2<u32>(var_2.x, u_input.c.x), vec3<bool>(true, true, false)).b, u_input.d, 2147483647i), countOneBits(select(vec4<i32>(1i, global0.x, 2147483647i, u_input.d), vec4<i32>(-6520i, global0.x, global0.x, 23969i), true)))), select(~vec3<i32>(global0.x, global0.x, -20804i) & vec3<i32>(0i, global0.x, -1i), min(vec3<i32>(-2147483647i, u_input.d, -16857i), select(vec3<i32>(-3475i, 15394i, -1i), vec3<i32>(global0.x, 18967i, 6636i), false)), !any(vec4<bool>(false, false, true, true))) & ((~vec3<i32>(-1i, 13997i, u_input.d) << ((u_input.b ^ u_input.b) % vec3<u32>(32u))) >> ((vec3<u32>(0u, 0u, 0u) | u_input.c.zzy) % vec3<u32>(32u))));
}

