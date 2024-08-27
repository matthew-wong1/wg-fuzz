struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0.a.c + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.c.x - arg_0.a.c.x), arg_0.a.b.x, _wgslsmith_f_op_f32(sign(553f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.c.x, arg_0.a.b.x, arg_0.a.b.x))))))))));
    var_0 = arg_0.a.b;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.c - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, 1044f)))) * vec3<f32>(_wgslsmith_f_op_f32(632f - -881f), var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)))) - arg_0.a.c) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * arg_0.a.c.x) + 1220f), 839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(var_0.x + var_0.x)) + -1520f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-767f, -196f, false))), _wgslsmith_f_op_f32(ceil(arg_0.a.b.x)))), -1300f, _wgslsmith_div_f32(arg_0.a.c.x, 313f), -992f);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-467f, 674f))) * var_0.yy);
    return select(vec3<bool>(true, true, arg_0.a.a.x | false), arg_0.a.a.xyz, vec3<bool>(arg_0.a.d.x, false, all(arg_0.a.a.yw)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = i32(-1i) * -u_input.c;
    var var_1 = Struct_1(arg_1.a.a.a, arg_1.a.a.b, arg_1.b.b, !(!func_3(arg_1.a)));
    var_1 = arg_1.a.a;
    let var_2 = Struct_4(arg_1.a.a, ~0i, var_1.c.x, -1000f);
    return Struct_2(var_2.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.a.c.yy, arg_2.a.b.yy, !(!arg_0.a.a.x)))) * arg_0.a.b.yx);
    let var_1 = Struct_2(func_2(arg_0.a.b.xy, Struct_3(Struct_2(func_2(arg_2.a.b.zz, Struct_3(arg_2, arg_0.a), vec4<u32>(23901u, 15918u, 5589u, u_input.d.x)).a), arg_0.a), ~u_input.b).a);
    var_0 = var_1.a.c.xz;
    let var_2 = _wgslsmith_add_i32(u_input.a, 10827i);
    var var_3 = Struct_4(Struct_1(var_1.a.a, vec3<f32>(700f, var_0.x, arg_2.a.c.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(func_2(vec2<f32>(-409f, arg_2.a.b.x), Struct_3(arg_0, arg_2.a), u_input.b).a.c)))), vec3<bool>(!arg_0.a.a.x, any(vec2<bool>(arg_1.x, arg_2.a.d.x)), false)), -(~max(var_2, var_2)) ^ abs(_wgslsmith_clamp_i32(0i, var_2, -3425i)), var_1.a.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1882f)))))), 236f));
    return Struct_1(var_1.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c.x, arg_0.a.c.x, var_0.x) + var_1.a.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(645f, var_1.a.b.x, 1175f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, -662f, -300f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_2.a.c)) + var_1.a.b), arg_0.a.a.xwy);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(arg_0.a.c.x + -1665f)))));
    let var_1 = 0u;
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(~countOneBits(u_input.c), -56039i) & (vec2<i32>(select(u_input.a, u_input.a, true), -u_input.c) & (_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(20595i, u_input.a)) ^ ~vec2<i32>(4883i, 27386i))), ~max(abs(min(vec2<i32>(-2147483647i, -10481i), vec2<i32>(u_input.c, 1i))), -vec2<i32>(u_input.a, u_input.a) | ~vec2<i32>(-10892i, -48566i)));
    var var_3 = arg_0.a.d;
    let var_4 = Struct_3(Struct_2(func_4(func_2(var_0, Struct_3(Struct_2(Struct_1(arg_0.a.a, arg_0.a.c, vec3<f32>(-902f, var_0.x, 891f), arg_0.a.d)), arg_0.a), select(u_input.d, u_input.d, arg_0.a.a)), arg_0.a.a.wxz, arg_0)), Struct_1(vec4<bool>(func_2(_wgslsmith_f_op_vec2_f32(arg_0.a.c.yz - vec2<f32>(-1607f, 1000f)), Struct_3(arg_0, Struct_1(arg_0.a.a, vec3<f32>(var_0.x, 656f, 1000f), arg_0.a.b, arg_0.a.a.zyz)), ~u_input.d).a.a.x, any(func_4(arg_0, arg_0.a.a.xyw, Struct_2(arg_0.a)).d), true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.c)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.x, 800f, arg_0.a.b.x)))), vec3<bool>(var_3.x, any(func_4(arg_0, vec3<bool>(arg_0.a.d.x, false, arg_0.a.a.x), arg_0).a), true)));
    return var_4;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    var var_0 = countOneBits(~u_input.d.wzy);
    var_0 = vec3<u32>(_wgslsmith_add_u32(42412u, var_0.x << (10759u % 32u)), var_0.x, 51606u);
    var_0 = abs(_wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, 14390u), firstTrailingBit(17099u), 11092u), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.d, ~u_input.d), ~abs(3847u), ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.d))));
    var var_1 = !arg_2.a.a.d.x;
    let var_2 = func_1(Struct_2(func_2(func_2(arg_2.a.a.c.yx, arg_3, u_input.d).a.c.yy, func_1(func_1(Struct_2(Struct_1(vec4<bool>(false, arg_3.b.d.x, arg_3.a.a.a.x, true), vec3<f32>(arg_2.b.b.x, -641f, -1000f), vec3<f32>(arg_1, arg_0, arg_3.a.a.c.x), vec3<bool>(true, true, false)))).a), vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 1u, ~0u, ~0u)).a)).b.d;
    return !(true & (false & !(!arg_2.a.a.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(false, func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1749f), func_1(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-944f, -1169f, -924f), vec3<f32>(-1188f, -408f, -959f), vec3<bool>(true, false, true)))), func_1(func_1(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-295f, -1582f, -1087f), vec3<f32>(1000f, -1019f, -512f), vec3<bool>(false, true, false)))).a)), any(func_2(vec2<f32>(-1316f, -791f), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-1052f, 724f, -1000f), vec3<f32>(1726f, 1000f, -1535f), vec3<bool>(false, false, true))), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-2444f, -870f, 279f), vec3<f32>(1718f, -1912f, -288f), vec3<bool>(true, false, false))), u_input.b ^ u_input.b).a.d.zz)), vec3<bool>(!func_2(vec2<f32>(757f, -1394f), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1000f, -928f, -1052f), vec3<f32>(-554f, -199f, -202f), vec3<bool>(false, true, true))), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(286f, 291f, -640f), vec3<f32>(-178f, -804f, 1684f), vec3<bool>(false, true, false))), vec4<u32>(u_input.b.x, u_input.d.x, 57529u, 32546u)).a.d.x | func_3(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(939f, -395f, 201f), vec3<f32>(1256f, 1000f, -400f), vec3<bool>(false, false, false)))).x, !(!func_3(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-459f, 863f, -1459f), vec3<f32>(-1767f, 184f, 1198f), vec3<bool>(true, false, true)))).x), select(true, any(vec4<bool>(false, false, true, true)), true & any(vec2<bool>(true, false)))), func_3(func_1(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(801f, 2092f), vec2<f32>(368f, -427f)), func_1(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(160f, -2085f, -670f), vec3<f32>(436f, 1215f, 1013f), vec3<bool>(false, true, false)))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d.x, 4294967295u, 56990u), vec4<u32>(u_input.b.x, u_input.d.x, 8930u, 27384u)))).a).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1830f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(299f, _wgslsmith_f_op_f32(trunc(977f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1106f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1017f))) + 1365f))), vec2<i32>(countOneBits(-2147483647i), _wgslsmith_clamp_i32(~2147483647i, u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(-33359i, 415i)))) >> (~u_input.d.ww % vec2<u32>(32u)));
}

