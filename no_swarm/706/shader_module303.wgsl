struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = select(0i, -10323i, select(select(arg_0.c.x, arg_0.b.x, !(arg_0.b.x || false)), ~_wgslsmith_clamp_i32(27749i, 6533i, -21776i) < select(~2147483647i, ~2147483647i, true), true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, -2001f, arg_0.a.x, -1000f), arg_0.a, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 1229f) * arg_0.a))))), select(!vec3<bool>(arg_0.a.x < 1000f, true, arg_0.c.x), arg_0.b, any(vec4<bool>(false, false, arg_0.b.x, arg_0.c.x)) & true), vec2<bool>(false, _wgslsmith_sub_i32(~var_0, min(var_0, var_0)) < _wgslsmith_mult_i32(var_0, var_0)));
    let var_2 = vec4<bool>(true, true, any(!(!vec4<bool>(true, true, var_1.b.x, true))), true);
    let var_3 = ((-var_0 | -1i) | (countOneBits(i32(-1i) * -13124i) & select(_wgslsmith_clamp_i32(518i, 2147483647i, 1861i), var_0, false))) >> (~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 1u))), _wgslsmith_mult_u32(min(u_input.b, u_input.b), 35669u << (0u % 32u))) % 32u);
    let var_4 = var_1;
    return vec3<i32>(var_0, ~(~var_0), -_wgslsmith_sub_i32(max(_wgslsmith_add_i32(0i, 5681i), _wgslsmith_dot_vec4_i32(vec4<i32>(-10i, 0i, 46299i, 15100i), vec4<i32>(var_0, var_0, -23284i, var_3))), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-20711i, -45853i), vec2<i32>(var_3, var_0)))));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    var var_0 = arg_2;
    let var_1 = arg_2;
    var_0 = var_1;
    var var_2 = var_0.a.xz;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(var_1.a)))), _wgslsmith_f_op_vec4_f32(var_0.a - var_1.a), select(vec4<bool>(var_1.b.x, false, arg_2.c.x, false), !vec4<bool>(false, arg_2.b.x, false, var_1.c.x), true))))), var_0.b, select(vec2<bool>(true, true), select(arg_2.b.zx, vec2<bool>(all(vec4<bool>(true, true, arg_2.c.x, var_0.c.x)), true), vec2<bool>(true, true)), var_0.c.x));
    return var_1.b;
}

fn func_2() -> Struct_1 {
    let var_0 = max(-(~(-7940i)), -2147483647i);
    let var_1 = 4552u;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(270f, 265f)), _wgslsmith_f_op_f32(trunc(604f)), 747f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), func_4(reverseBits(44338i), (select(vec3<i32>(-75229i, var_0, 9040i), vec3<i32>(var_0, 0i, -18709i), vec3<bool>(true, true, true)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, 2147483647i, -5899i), vec3<i32>(-2147483647i, 2147483647i, -52182i))) | func_3(Struct_1(vec4<f32>(-344f, -1407f, 362f, -2084f), vec3<bool>(true, true, true), vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, 295f, 1294f, -359f))), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1756f)), vec2<bool>(true || !(-1i < var_0), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0) ^ vec2<i32>(var_0, 1i), ~vec2<i32>(12885i, var_0)) >= var_0));
    let var_3 = var_2;
    let var_4 = var_0;
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = func_2();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-669f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)) * _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)))), arg_0.a.x));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-654f, 167f, _wgslsmith_f_op_f32(func_5(func_2(), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1222f, -219f, -1181f, 979f), vec4<f32>(663f, -115f, 1101f, -339f)), vec3<bool>(true, true, true), vec2<bool>(true, false)), func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-251f + 2037f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1025f, 631f, 1051f, -1512f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-988f, -2026f, 122f, 652f) * vec4<f32>(1000f, 812f, -1186f, 272f))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -934f) - _wgslsmith_f_op_f32(select(502f, -239f, true))), -752f, func_2().a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-283f + 306f), _wgslsmith_f_op_f32(535f + -262f)))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(-1589f, -1466f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1877f + var_0.x) - _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-230f - var_0.x)))))), 367f);
    let var_1 = -vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-3590i, 0i, 23909i) | vec3<i32>(-1i, -12130i, arg_0)), -vec3<i32>(-1i, arg_0, 2147483647i)), arg_0);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2().a.x, -715f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2642f * 558f) - -108f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(764f, var_0.x)))))));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(570f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-114f - 1334f), _wgslsmith_div_f32(-334f, var_0.x)), select(vec3<bool>((-864f > var_0.x) & select(true, true, true), select(true, true, u_input.b <= u_input.b), true), !func_4(var_1.x, vec3<i32>(var_1.x, -61087i, var_1.x) ^ vec3<i32>(13182i, 1i, 2147483647i), Struct_1(vec4<f32>(1104f, -280f, var_0.x, -1353f), vec3<bool>(false, true, false), vec2<bool>(false, true)), _wgslsmith_f_op_f32(var_0.x - var_0.x)), vec3<bool>(!all(vec3<bool>(true, false, true)), select(true, any(vec2<bool>(true, true)), true), true)), vec2<bool>(true, true));
    return func_2().b;
}

fn func_6(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = ~abs(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3, arg_3), vec2<u32>(arg_3, 0u)), select(vec2<u32>(arg_3, 42453u), vec2<u32>(arg_3, 4294967295u), false) >> ((vec2<u32>(u_input.a, arg_3) << (vec2<u32>(arg_3, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_0.x));
    var var_1 = var_0.x;
    let var_2 = true == arg_2.c.x;
    var var_3 = countOneBits(~1i);
    let var_4 = arg_2;
    return _wgslsmith_mod_i32(-2147483647i, ~1i) ^ ((_wgslsmith_div_i32(select(-9563i, -35875i, arg_2.b.x), -21310i) >> (1u % 32u)) & 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, 45210i, -45524i), vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, -8520i, 18729i), vec3<i32>(83648i, 5828i, -2147483647i))), -vec3<i32>(i32(-1i) * -2147483647i, 22253i, select(-1i, 43333i, true))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i))), func_6(select(func_1(-1i), func_4(1i, vec3<i32>(27189i, 0i, -2147483647i), Struct_1(vec4<f32>(-965f, -1000f, 378f, 728f), vec3<bool>(false, false, false), vec2<bool>(true, true)), -450f), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), true, Struct_1(func_2().a, select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_div_u32(6803u, ~u_input.b)), -27632i), true);
    var var_1 = ~(~_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(13847u, u_input.b), vec2<u32>(131661u, 9126u)), vec2<u32>(73887u, 18902u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2902f, -825f, 260f, -1260f), vec4<f32>(-985f, 1000f, 1000f, -546f))))))), !func_4(-1i, firstLeadingBit(vec3<i32>(var_0.x, var_0.x, 24423i)) << (select(vec3<u32>(0u, var_1.x, 1u), vec3<u32>(1u, u_input.a, 4294967295u), true) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-803f, -1339f, 385f, -504f)), vec3<bool>(true, false, true), vec2<bool>(true, true)), 231f), vec2<bool>(var_0.x >= 0i, true));
    let var_3 = func_2();
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1702f) * _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -197f) + var_3.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.a.x + 888f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.x), -400f), vec2<f32>(-453f, var_3.a.x))))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(var_4, 1u, 4294967295u, 4294967295u)), vec4<u32>(var_4, 1u, var_1.x, 33026u) << (vec4<u32>(var_4, var_1.x, u_input.b, var_1.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(~u_input.b, 4294967295u), ~var_4, 4294967295u, 1u)));
}

