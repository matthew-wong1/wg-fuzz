struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = 23919i;
    let var_2 = ~max(arg_2, _wgslsmith_add_u32(min(4294967295u, 10638u), ~arg_2));
    var var_3 = arg_0.a;
    var_3 = var_0.a;
    return false;
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_add_u32(abs(0u), 4294967295u) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u)));
    var var_1 = !vec4<bool>(func_3(Struct_1(-626f, ~vec4<i32>(u_input.a.x, 15474i, 7485i, 1i), any(vec3<bool>(false, arg_0.c, arg_0.c))), vec3<bool>(all(vec2<bool>(arg_0.c, true)), select(arg_0.c, arg_0.c, arg_0.c), arg_0.c == arg_0.c), 14897u, Struct_1(_wgslsmith_f_op_f32(round(287f)), vec4<i32>(u_input.a.x, arg_0.b.x, arg_0.b.x, u_input.a.x) ^ vec4<i32>(33889i, arg_0.b.x, arg_0.b.x, u_input.a.x), false)), arg_0.c, true, all(select(!vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(true, arg_0.c, arg_0.c), true))));
    let var_2 = all(select(!(!select(var_1.xxy, vec3<bool>(false, arg_0.c, false), var_1.x)), vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 11721u), vec2<u32>(var_0, 1823u)) <= var_0, !func_3(Struct_1(arg_0.a, vec4<i32>(6827i, arg_0.b.x, -5421i, 0i), false), var_1.zyz, var_0, Struct_1(1000f, arg_0.b, var_1.x)), var_1.x), !select(vec3<bool>(arg_0.c, true, arg_0.c), var_1.wzw, arg_0.b.x <= u_input.a.x)));
    let var_3 = -reverseBits(arg_0.b.wz);
    var var_4 = -3601i;
    return var_0;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> u32 {
    var var_0 = -(-u_input.a.x | -(i32(-1i) * -2147483647i));
    let var_1 = arg_0.c;
    let var_2 = Struct_1(-1988f, -(~vec4<i32>(2147483647i, u_input.a.x, arg_1.b.x << (41911u % 32u), _wgslsmith_add_i32(-1i, u_input.a.x))), false);
    var var_3 = arg_3;
    let var_4 = 91586i;
    return func_4(Struct_1(1508f, vec4<i32>(var_2.b.x, 1i, _wgslsmith_div_i32(max(var_4, -34800i), -1i), -firstTrailingBit(arg_1.b.x)), func_3(arg_0, !vec3<bool>(true, true, var_2.c), arg_3, arg_0) && any(!vec3<bool>(false, false, var_1))));
}

fn func_5(arg_0: vec4<u32>, arg_1: u32) -> vec2<f32> {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(-1066f, (vec4<i32>(-1i) * -abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -8745i))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 6321u, 0u, arg_1), vec4<u32>(arg_1, arg_1, 0u, arg_1)) % vec4<u32>(32u)), true);
    var_0 = var_1.b.x;
    var var_2 = var_1;
    var var_3 = true;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a, var_2.a), vec2<f32>(-1558f, var_1.a), vec2<bool>(true, var_1.c))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-831f, -1022f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, 649f)))) + vec2<f32>(-242f, _wgslsmith_f_op_f32(f32(-1f) * -491f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.a + -676f), 2193f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(586f * var_2.a), 1677f))))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(arg_2.a, vec4<i32>(-1i) * -(~arg_1.b), !(!arg_3.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, arg_1.a)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-318f, arg_0))))));
    var_1 = _wgslsmith_f_op_vec2_f32(func_5(firstTrailingBit(select(vec4<u32>(1u, func_2(Struct_1(arg_2.a, vec4<i32>(arg_1.b.x, arg_1.b.x, arg_3.b.x, 7696i), false), arg_2, vec4<f32>(407f, -1847f, 201f, -277f), 37584u), _wgslsmith_mod_u32(12666u, 1u), firstLeadingBit(0u)), vec4<u32>(firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(62770u, 56419u, 4294967295u, 783u), vec4<u32>(10747u, 76647u, 99821u, 13128u)), _wgslsmith_clamp_u32(4294967295u, 0u, 0u), 25865u), vec4<bool>(false, func_3(arg_3, vec3<bool>(true, arg_1.c, var_0.c), 1u, Struct_1(-278f, vec4<i32>(-1i, -21407i, 2147483647i, var_0.b.x), arg_1.c)), any(vec3<bool>(true, false, true)), true))), 0u ^ ((0u >> (_wgslsmith_clamp_u32(1u, 27179u, 16098u) % 32u)) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20231u), vec2<u32>(37033u, 0u)) << (~4294967295u % 32u)))));
    let var_2 = select(select(select(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, false))), vec3<bool>(true, true, !arg_3.c), vec3<bool>(!arg_3.c, var_0.c && arg_1.c, arg_3.c)), select(vec3<bool>(all(vec2<bool>(true, arg_3.c)), arg_3.c, true), vec3<bool>(true, true, true), var_1.x > -211f), vec3<bool>(!all(vec3<bool>(true, arg_2.c, false)), var_0.c, var_0.c)), select(!select(select(vec3<bool>(arg_3.c, var_0.c, false), vec3<bool>(var_0.c, arg_2.c, arg_2.c), arg_2.c), !vec3<bool>(false, true, arg_2.c), !vec3<bool>(arg_3.c, var_0.c, arg_2.c)), select(select(!vec3<bool>(false, arg_2.c, false), select(vec3<bool>(arg_1.c, false, false), vec3<bool>(false, arg_1.c, true), vec3<bool>(false, arg_2.c, arg_1.c)), !vec3<bool>(arg_3.c, var_0.c, var_0.c)), select(vec3<bool>(var_0.c, false, arg_1.c), vec3<bool>(true, true, var_0.c), select(vec3<bool>(true, false, var_0.c), vec3<bool>(arg_3.c, var_0.c, true), vec3<bool>(arg_1.c, arg_1.c, false))), vec3<bool>(-28182i >= u_input.a.x, any(vec2<bool>(false, var_0.c)), func_3(arg_1, vec3<bool>(false, false, true), 15007u, Struct_1(-1555f, arg_3.b, false)))), !(_wgslsmith_f_op_f32(-arg_2.a) >= _wgslsmith_f_op_f32(-305f + arg_1.a))), !(var_0.c || !all(vec2<bool>(true, arg_3.c))));
    var var_3 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_1.b, vec4<i32>(1i, arg_3.b.x, 65187i, arg_3.b.x)) & vec4<i32>(35924i, -7757i, -1230i, -23889i), vec4<i32>(-1i) * -vec4<i32>(0i, -2147483647i, -25362i, arg_1.b.x)) ^ (-(~(-2147483647i | arg_3.b.x)) | ~abs(0i));
    return var_2.x || (!arg_3.c && !(all(var_2.xz) || !arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true), vec4<bool>(!all(vec4<bool>(true, false, false, true)), true, func_1(494f, Struct_1(251f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), true), Struct_1(774f, vec4<i32>(u_input.a.x, 0i, u_input.a.x, 2147483647i), true), Struct_1(207f, vec4<i32>(1i, 0i, 27321i, u_input.a.x), false)), any(vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(864f))))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -1i, 34446i), vec3<i32>(-13121i, u_input.a.x, 0i))), 0i, -1i, u_input.a.x), var_0 & false);
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(986f, var_1.a)));
    var_3 = _wgslsmith_f_op_f32(round(-821f));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(82563u, 1u, 10689u, var_2), vec4<u32>(var_2, 1u, var_2, var_2)), _wgslsmith_sub_u32(var_2, 25465u))), min(max(vec3<u32>(52792u, var_2, var_2), vec3<u32>(var_2, ~var_2, var_2)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2, var_2, 1u), vec3<u32>(82818u, var_2, 1u)) & reverseBits(vec3<u32>(107604u, var_2, var_2)), select(~vec3<u32>(var_2, var_2, 0u), ~vec3<u32>(7377u, var_2, var_2), vec3<bool>(true, false, var_0)), select(vec3<u32>(var_2, var_2, var_2), vec3<u32>(78716u, var_2, 3668u), vec3<bool>(var_0, false, false)) >> (~vec3<u32>(var_2, 7647u, var_2) % vec3<u32>(32u)))));
}

