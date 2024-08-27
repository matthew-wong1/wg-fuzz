struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(21781u, 0u, 23233u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = vec3<f32>(-1216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-577f, 1000f)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-416f * -372f), 371f), _wgslsmith_f_op_f32(round(-865f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1142f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f), 994f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(820f, -693f)), _wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_f32(-436f + _wgslsmith_f_op_f32(ceil(-807f)))))));
    global0 = Struct_1(min(u_input.b.x, global0.c.x), ~(~vec3<u32>(29058u, global0.c.x, 0u) & (~global0.c & vec3<u32>(16291u, global0.c.x, 4294967295u))), reverseBits(~_wgslsmith_div_vec3_u32(vec3<u32>(global0.a, u_input.b.x, 1u), global0.c)) ^ global0.c);
    global0 = Struct_1(global0.b.x, vec3<u32>(5222u, global0.b.x, select(min(~global0.c.x, 1u | global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(2732u, 1u, global0.b.x, global0.b.x), vec4<u32>(global0.b.x, 54878u, u_input.b.x, 18762u)) >> ((global0.a & global0.c.x) % 32u), false)), global0.b);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - var_0.x)));
    global0 = Struct_1(~global0.a, global0.c, global0.b);
    return ~(~_wgslsmith_dot_vec2_u32(global0.b.zy, u_input.b));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(), reverseBits(arg_0.b.x)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.b.yx, vec2<u32>(2508u, 115847u)), reverseBits(vec2<u32>(59379u, arg_0.c.x)))), ~vec3<u32>(~countOneBits(global0.a), _wgslsmith_add_u32(max(arg_0.b.x, 4294967295u), global0.a & 54426u), u_input.b.x), vec3<u32>(func_3(), u_input.b.x, ~_wgslsmith_div_u32(global0.b.x, arg_0.a)));
    var var_0 = arg_0;
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(~var_0.b.x ^ 4294967295u, ~u_input.b.x), 1u);
    global0 = arg_0;
    var_1 = vec2<u32>(countOneBits(0u), ~0u);
    return arg_0;
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = func_2(Struct_1(~_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, 66153u), _wgslsmith_div_u32(u_input.b.x, 32385u)), _wgslsmith_add_vec3_u32(vec3<u32>(global0.a, ~1u, global0.b.x), ~_wgslsmith_div_vec3_u32(global0.c, global0.b)), ~max(vec3<u32>(1u, 24559u, 1u), global0.c) >> (~vec3<u32>(global0.b.x, 70370u, u_input.b.x) % vec3<u32>(32u))));
    global0 = func_2(Struct_1(_wgslsmith_mod_u32(u_input.b.x, 1u), abs(vec3<u32>(7839u, 0u, 1u)), abs(var_0.c)));
    var var_1 = -481f;
    global0 = Struct_1(54988u | u_input.b.x, var_0.b, select(~var_0.c, vec3<u32>(_wgslsmith_div_u32(4294967295u, 49383u) >> (~u_input.b.x % 32u), global0.a, ~_wgslsmith_clamp_u32(u_input.b.x, global0.a, global0.c.x)), arg_0));
    let var_2 = Struct_1(var_0.a, max(~(~_wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(1u, global0.c.x, var_0.b.x))), select(var_0.c, vec3<u32>(u_input.b.x, ~var_0.a, ~14858u), arg_0)), vec3<u32>(~global0.b.x, global0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_mod_u32(34485u, u_input.b.x)), global0.c.yx ^ ~global0.b.yy)));
    return select(arg_0, arg_0, !arg_0) == !(!all(vec3<bool>(true, arg_0, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(1518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, -109f), _wgslsmith_f_op_f32(f32(-1f) * -638f), true))))));
    var var_1 = u_input.b;
    var_1 = select(select(vec2<u32>(var_1.x, ~1u), countOneBits(_wgslsmith_add_vec2_u32(global0.c.yx, u_input.b)), (global0.c.x ^ 2189u) > 4294967295u) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, global0.c.xx ^ global0.b.yx), select(~u_input.b, abs(global0.b.zy), func_1(false)), _wgslsmith_mod_vec2_u32(global0.c.xz << (vec2<u32>(u_input.b.x, var_1.x) % vec2<u32>(32u)), min(u_input.b, vec2<u32>(global0.a, 4412u)))) % vec2<u32>(32u)), min(abs(max(~vec2<u32>(global0.c.x, 59437u), ~vec2<u32>(1u, var_1.x))), u_input.b), vec2<bool>(any(vec3<bool>(true, true, true)) & all(vec3<bool>(false, true, true)), any(vec2<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, true, false, true))))));
    let var_2 = Struct_1(_wgslsmith_sub_u32(global0.c.x, var_1.x), ~_wgslsmith_mult_vec3_u32(~(~global0.b), vec3<u32>(~32436u, 0u, _wgslsmith_add_u32(var_1.x, 4294967295u))), vec3<u32>(~(~4294967295u), ~(~1u), var_1.x));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-182f, _wgslsmith_f_op_f32(f32(-1f) * -1281f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1023f, -946f)) + -590f)))), 576f);
    let var_4 = vec4<i32>(u_input.c.x, firstTrailingBit(u_input.a.x) & u_input.a.x, _wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_mult_i32(-1i, -19062i));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1372f, 1972f) - vec2<f32>(var_3.x, -1106f)), vec2<f32>(-1699f, -603f))))));
    let var_6 = func_2(func_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 0u, var_1.x), global0.c), u_input.b.x << (4294967295u % 32u)), vec3<u32>(_wgslsmith_mod_u32(1u, 53684u), firstLeadingBit(59790u), 1u), select(global0.c, var_2.c >> (var_2.c % vec3<u32>(32u)), vec3<bool>(true, true, true)))));
    let var_7 = vec4<i32>(-23163i, u_input.a.x | -43685i, _wgslsmith_add_i32(1i, var_4.x) << (u_input.b.x % 32u), _wgslsmith_div_i32(-76650i, -17249i) ^ u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_5.x)), _wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(min(-284f, 1845f))), var_5.x)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_6.c.x, var_1.x, u_input.b.x)), firstTrailingBit(~vec3<u32>(4294967295u, var_1.x, var_1.x))), -_wgslsmith_dot_vec4_i32(~var_7 << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_6.c.x, u_input.b.x, 4294967295u, var_1.x), vec4<u32>(var_6.b.x, var_6.c.x, 0u, global0.c.x)) % vec4<u32>(32u)), -_wgslsmith_add_vec4_i32(vec4<i32>(-67208i, u_input.c.x, u_input.a.x, -17904i), var_7)), -481i, min(~var_6.a, var_2.b.x));
}

