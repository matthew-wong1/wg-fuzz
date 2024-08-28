struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.a * vec2<f32>(-1154f, global0.a.a.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b.b, 1121f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1384f, global0.b.b), global0.a.a, false)))), global0.a.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(global0.b.b)), _wgslsmith_f_op_f32(-global0.b.a.x)))), global0.b.b), _wgslsmith_div_vec3_u32(~max(vec3<u32>(0u, global0.c.x, 24005u), global0.c), global0.c) | global0.c);
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1130f, 786f), global0.b.a)), global0.a.a));
    var var_1 = vec4<i32>(0i, -9440i, i32(-1i) * -1i, ~(0i | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 15462i, -2147483647i, 2147483647i), vec4<i32>(33226i, 1i, -2147483647i, -2147483647i)))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, global0.c.x, 11776u, u_input.a.x), vec4<u32>(u_input.a.x, global0.c.x, global0.c.x, 89099u), false), _wgslsmith_add_vec4_u32(vec4<u32>(global0.c.x, u_input.a.x, 0u, global0.c.x), vec4<u32>(global0.c.x, global0.c.x, 0u, 81311u))), _wgslsmith_mod_u32(53140u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(49138u, u_input.a.x, global0.c.x, global0.c.x))), 0u), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(98045u, 32816u, global0.c.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, global0.c.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, global0.c.x, 0u)), ~0u | global0.c.x, 17889u), ~vec4<u32>(~1u, countOneBits(global0.c.x), 4294967295u, u_input.a.x)) % vec4<u32>(32u));
    let var_2 = 1303f;
    let var_3 = global0.c.x;
    return ~_wgslsmith_dot_vec2_u32(~select(abs(vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, 1u), select(false, true, true)), vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(~global0.c.yx, abs(vec2<u32>(39565u, global0.c.x)))));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.a.x + var_0.a.a.x)));
    var var_2 = Struct_2(Struct_1(vec2<f32>(global0.b.a.x, _wgslsmith_div_f32(-1201f, _wgslsmith_f_op_f32(-814f - global0.a.a.x))), arg_1.b.b), var_0.a, vec3<u32>(_wgslsmith_add_u32(arg_1.c.x, u_input.a.x >> (4294967295u % 32u)), ~88308u << (select(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(77357u, global0.c.x)), arg_1.c.x, any(vec2<bool>(arg_0, true))) % 32u), func_3()));
    var_0 = Struct_2(arg_1.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.a.a, vec2<f32>(arg_1.a.b, var_2.b.b))) + _wgslsmith_f_op_vec2_f32(sign(arg_1.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b.a.x, _wgslsmith_f_op_f32(887f - var_0.a.b), any(vec4<bool>(true, arg_0, arg_0, false)))) - _wgslsmith_f_op_f32(-1000f - -962f))), ~reverseBits(~vec3<u32>(0u, global0.c.x, global0.c.x)));
    var var_3 = _wgslsmith_f_op_f32(-var_0.b.b);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.b, -612f) - _wgslsmith_f_op_vec2_f32(-var_2.b.a)) - arg_1.a.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.x) * _wgslsmith_f_op_f32(-var_1)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(func_2(true, Struct_2(func_2(true, Struct_2(Struct_1(global0.b.a, -604f), arg_0.a, arg_0.c)), arg_0.b, vec3<u32>(_wgslsmith_mult_u32(27943u, arg_0.c.x), ~global0.c.x, u_input.a.x))), func_2(true, arg_0), global0.c);
    global0 = arg_2;
    var var_1 = false;
    var_1 = all(vec4<bool>(true, true, true, true));
    var_1 = any(vec3<bool>(all(vec2<bool>(1u == u_input.a.x, true)), !all(vec4<bool>(false, false, true, false)) || (29280u <= var_0.c.x), all(select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.b.a), _wgslsmith_f_op_f32(max(global0.a.b, -915f)));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = all(!(!vec2<bool>(all(vec2<bool>(true, true)), false)));
    var var_1 = Struct_2(func_4(Struct_2(arg_1.a, func_2(any(vec4<bool>(var_0, true, false, false)), arg_1), global0.c), countOneBits(max(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 21994i, 34676i, 8967i), vec4<i32>(-31869i, 0i, 0i, 9280i)), vec4<i32>(1i, 1i, 1i, 1i))), Struct_2(global0.b, arg_1.b, firstLeadingBit(max(arg_1.c, vec3<u32>(arg_1.c.x, u_input.a.x, u_input.a.x))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(605f, 315f))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1021f, -858f, var_0)), 554f, all(vec3<bool>(var_0, var_0, true)))), arg_1), global0.c);
    var_1 = arg_1;
    let var_2 = Struct_2(Struct_1(var_1.a.a, global0.a.a.x), func_4(arg_1, _wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(~vec4<i32>(0i, -1i, 40199i, -5338i), select(vec4<i32>(1i, -1i, -2147483647i, 1i), vec4<i32>(-15225i, -32346i, -1i, -13183i), var_0)), vec4<i32>(1i, 1i, 1i, 1i)), arg_1), _wgslsmith_mult_vec3_u32(arg_1.c, vec3<u32>(firstTrailingBit(4294967295u) & func_3(), min(~u_input.a.x, _wgslsmith_mult_u32(66307u, var_1.c.x)), 61848u)));
    var_1 = Struct_2(func_4(Struct_2(Struct_1(vec2<f32>(var_2.a.a.x, -1000f), _wgslsmith_f_op_f32(-var_2.b.a.x)), arg_1.a, var_1.c), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(31893i, 2147483647i, 37058i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 90420i, -2147483647i), vec4<i32>(-12729i, -32936i, -92284i, -28654i))), 2147483647i, ~_wgslsmith_div_i32(-2147483647i, -16612i), -_wgslsmith_mod_i32(-47153i, -45631i)), Struct_2(var_1.b, func_2(false, Struct_2(arg_1.a, arg_1.b, vec3<u32>(var_2.c.x, var_2.c.x, 4294967295u))), var_2.c)), func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.a.x, 2015f)), _wgslsmith_f_op_f32(-arg_0)), func_2(true, arg_1), vec3<u32>(var_1.c.x >> (3337u % 32u), ~global0.c.x, 28475u)), _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -1i, 1i, _wgslsmith_div_i32(2147483647i, -14427i), 1i), max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))), var_2), arg_1.c);
    return 206f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.a.b, Struct_2(global0.b, Struct_1(global0.b.a, -1092f), vec3<u32>(4294967295u, 62407u, 40231u))))))), global0.a.a.x, _wgslsmith_f_op_f32(trunc(global0.b.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-139f, -1000f), global0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(1479f * 972f)), global0.b.a.x)));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a.a), _wgslsmith_f_op_f32(abs(var_0.x))), global0.b, vec3<u32>(reverseBits(~1u), select(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0.c.yx, vec2<u32>(u_input.a.x, 1u)), 1u), u_input.a.x, true), 54544u));
    var var_1 = ~_wgslsmith_dot_vec2_u32(global0.c.yx, global0.c.yy);
    var_1 = _wgslsmith_clamp_u32(u_input.a.x | _wgslsmith_dot_vec2_u32(~u_input.a, min(u_input.a, u_input.a)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, global0.c.x, 4294967295u, global0.c.x)), ~(~vec4<u32>(global0.c.x, 0u, 12554u, 89726u))), ~global0.c.x) ^ (u_input.a.x ^ _wgslsmith_mult_u32(~u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) % 32u), 1u));
    var_1 = 0u;
    let var_2 = -54952i;
    let var_3 = _wgslsmith_f_op_vec2_f32(global0.b.a + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.a.a))));
    global0 = Struct_2(func_2(-1i > var_2, Struct_2(global0.b, global0.a, ~abs(global0.c))), global0.a, global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(global0.c.x, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, 20689u, 16360u), _wgslsmith_mod_u32(u_input.a.x, 0u))), vec2<f32>(global0.b.b, _wgslsmith_f_op_f32(-var_0.x)));
}

