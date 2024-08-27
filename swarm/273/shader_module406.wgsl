struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_f32(-1370f, -2034f);
    global0 = Struct_1(vec2<bool>(global0.b, true), true);
    global0 = Struct_1(vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, all(vec3<bool>(global0.b, global0.a.x, global0.b)), all(vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), any(vec2<bool>(false, true))))), true);
    let var_1 = vec4<f32>(2902f, 1324f, _wgslsmith_f_op_f32(f32(-1f) * -534f), 745f);
    var_0 = _wgslsmith_f_op_f32(select(1079f, -1082f, all(select(!(!vec4<bool>(false, false, global0.a.x, false)), select(!vec4<bool>(true, false, true, global0.b), vec4<bool>(global0.b, true, false, global0.a.x), !global0.a.x), !global0.a.x))));
    return all(!vec3<bool>(true, all(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.b)), false));
}

fn func_2() -> vec2<bool> {
    var var_0 = select(!select(select(select(vec4<bool>(true, global0.a.x, global0.b, global0.b), vec4<bool>(false, global0.a.x, global0.a.x, global0.b), vec4<bool>(false, false, global0.a.x, global0.b)), !vec4<bool>(false, global0.a.x, true, global0.b), vec4<bool>(global0.a.x, false, global0.b, false)), !select(vec4<bool>(false, global0.a.x, true, true), vec4<bool>(global0.a.x, global0.b, false, true), false), vec4<bool>(u_input.b.x != u_input.b.x, !global0.b, func_3(), u_input.b.x <= u_input.b.x)), !vec4<bool>(true, true == all(vec2<bool>(global0.a.x, false)), !global0.a.x, true), true);
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(440f - -682f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2132f) - _wgslsmith_div_f32(588f, _wgslsmith_f_op_f32(max(-1930f, -887f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -1445f))), -170f), Struct_1(vec2<bool>(var_0.x, all(var_0.wxy)), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, -1i), 0i) <= 9588i), Struct_2(var_0.x, _wgslsmith_f_op_f32(round(502f)) != _wgslsmith_div_f32(-410f, -473f), vec4<i32>(2147483647i, u_input.a, ~_wgslsmith_sub_i32(u_input.a, u_input.c), u_input.a)), Struct_2(!global0.a.x, select(var_0.x, !global0.a.x & all(var_0.yyy), global0.a.x), _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(6248i, u_input.c, 1i, u_input.a), vec4<i32>(23041i, u_input.c, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), max(countOneBits(vec4<i32>(u_input.c, 0i, 0i, 0i)), vec4<i32>(-75676i, 2147483647i, u_input.c, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, 37731i, 0i)))));
    var_0 = select(!select(vec4<bool>(var_1.b.a.x, global0.b, var_1.b.a.x, func_3()), select(!vec4<bool>(global0.b, false, false, var_0.x), select(vec4<bool>(true, var_1.b.b, false, false), vec4<bool>(true, var_1.c.b, false, true), vec4<bool>(false, global0.b, var_0.x, true)), !vec4<bool>(true, false, var_1.d.a, var_0.x)), !global0.a.x & (u_input.b.x == u_input.b.x)), !(!vec4<bool>(false, u_input.b.x <= 4294967295u, false, global0.b)), global0.a.x);
    let var_2 = ~(firstLeadingBit(var_1.d.c.ww) | (_wgslsmith_div_vec2_i32(vec2<i32>(var_1.d.c.x, -2147483647i), vec2<i32>(1i, -3646i)) >> (max(vec2<u32>(9779u, 1u), ~vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u))));
    let var_3 = var_1.b;
    return var_3.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> vec4<f32> {
    global0 = Struct_1(select(select(vec2<bool>(false, true), select(global0.a, !global0.a, global0.b), !(global0.a.x || false)), func_2(), !any(select(vec3<bool>(false, global0.a.x, false), vec3<bool>(false, global0.b, global0.b), true))), global0.a.x & true);
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(474f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(324f, 972f))), global0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -2243f), 2468f);
    let var_1 = ~(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.xx, arg_1.xz | arg_1.xy), ~vec2<i32>(arg_0.x, u_input.c)) ^ arg_0.xz);
    let var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) * -755f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(395f + _wgslsmith_f_op_f32(min(var_0.x, var_0.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.x, 880f))))), 1148f), Struct_1(global0.a, any(!vec4<bool>(true, false, false, global0.a.x)) || global0.b), Struct_2(all(global0.a), global0.b, vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 0i, -2147483647i)), Struct_2(global0.b, any(global0.a) | all(vec4<bool>(true, global0.b, false, global0.a.x)), firstLeadingBit(select(vec4<i32>(1i, arg_0.x, -2147483647i, arg_1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, -2147483647i, arg_1.x, var_1.x), vec4<i32>(2147483647i, arg_1.x, -1i, arg_0.x)), vec4<bool>(true, global0.a.x, global0.b, global0.a.x)))));
    let var_3 = _wgslsmith_clamp_u32(~(~_wgslsmith_sub_u32(countOneBits(28055u), ~arg_3)), select(_wgslsmith_clamp_u32(34040u, select(1u, 4294967295u, !var_2.c.b), u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x << (min(4294967295u, 1u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 4294967295u, 77407u, 54004u) >> (vec4<u32>(arg_2, arg_2, 54503u, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(57791u, 1u, 4294967295u, arg_2)), 1u), any(vec2<bool>(var_2.c.b, false)) && true), arg_3);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-528f, var_0.x, -998f, 351f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.x, var_0.x, var_0.x, -654f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1(~vec3<i32>(59098i, 2147483647i, _wgslsmith_add_i32(0i, -2147483647i)), _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, u_input.c, 1i), -vec3<i32>(u_input.a, u_input.c, u_input.a)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-31080i, 2147483647i, 919i), vec3<i32>(28072i, u_input.a, -1i)) & vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(0i, -2147483647i ^ u_input.c, firstTrailingBit(-48660i)))), ~u_input.b.x, firstTrailingBit(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 79234u, u_input.b.x)) << (~5943u % 32u), u_input.b.x))));
    global0 = Struct_1(global0.a, global0.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(-2147483647i, u_input.a, 0i), vec3<i32>(u_input.c, u_input.c, -14050i), 50740u, u_input.b.x)).x)), -189f)))) + var_0.x);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(432f, -1326f, var_1, 868f), vec4<f32>(884f, var_1, var_0.x, -1012f), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-860f, 1156f, 1267f, var_0.x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_0.x, -1276f, var_0.x)))))), Struct_1(!func_2(), select(true, !(u_input.b.x > u_input.b.x), all(vec2<bool>(true, true)))), Struct_2(false, any(vec3<bool>(var_0.x == var_1, true, global0.a.x)), vec4<i32>(-27042i, -u_input.c, u_input.a, _wgslsmith_clamp_i32(-31738i, u_input.a, u_input.c)) | ~firstTrailingBit(vec4<i32>(-54956i, u_input.c, u_input.a, u_input.a))), Struct_2(global0.a.x, _wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), ~35211u, abs(4294967295u)) != 4294967295u, ~reverseBits(-vec4<i32>(u_input.a, 1i, u_input.a, u_input.c))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(-var_2.a.x))), var_1));
    let var_4 = var_2.a.x;
    let var_5 = ~47577u;
    let var_6 = select((select(vec4<u32>(u_input.b.x, 3013u, 0u, 4294967295u) << (vec4<u32>(0u, u_input.b.x, var_5, 1u) % vec4<u32>(32u)), vec4<u32>(33829u, 74740u, var_5, 0u), var_1 != var_1) & ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)) << (abs(countOneBits(max(vec4<u32>(var_5, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, var_5)))) % vec4<u32>(32u)), firstLeadingBit(abs(reverseBits(vec4<u32>(4294967295u, 0u, u_input.b.x, 4294967295u))) & vec4<u32>(u_input.b.x >> (17160u % 32u), min(43143u, var_5), _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(var_5, var_5)), u_input.b.x)), var_2.c.a);
    let var_7 = vec2<f32>(_wgslsmith_div_f32(-1000f, var_1), 1592f);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, max(~(u_input.b >> (u_input.b % vec3<u32>(32u))), abs(vec3<u32>(var_6.x, var_6.x, 5869u))) ^ ~vec3<u32>(4294967295u, var_5, var_6.x), var_2.a.xw);
}

