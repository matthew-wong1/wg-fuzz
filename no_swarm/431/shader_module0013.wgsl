struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_mult_u32(60264u, _wgslsmith_sub_u32(~0u, max(~u_input.b, firstLeadingBit(4294967295u))) | ~countOneBits(_wgslsmith_mod_u32(4294967295u, 1u)));
    let var_1 = -886f;
    var var_2 = abs(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(8130i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, u_input.a))));
    var_2 = max(select(vec4<i32>(u_input.a, 6212i, firstLeadingBit(-1i), var_2.x >> (u_input.b % 32u)), countOneBits(vec4<i32>(var_2.x, select(2147483647i, u_input.a, false), -2147483647i, var_2.x & 25878i)), true), ~(~countOneBits(vec4<i32>(38197i, -43200i, u_input.a, u_input.a))));
    var_2 = ~(select(vec4<i32>(0i, var_2.x << (4294967295u % 32u), var_2.x, u_input.a), (vec4<i32>(20825i, var_2.x, var_2.x, -68060i) << (vec4<u32>(u_input.b, var_0, var_0, var_0) % vec4<u32>(32u))) & -vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, var_0) ^ ~vec4<u32>(0u, 26105u, 7631u, 4294967295u), ~(~vec4<u32>(u_input.b, var_0, u_input.b, var_0))) % vec4<u32>(32u)));
    return ~(~1u);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.x ^ 1u, arg_0.d.x, ~12706u, _wgslsmith_clamp_u32(24912u, arg_0.d.x, 31052u)), ~arg_0.b));
    let var_1 = vec4<u32>(var_0.x, func_3(_wgslsmith_f_op_vec4_f32(-arg_0.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(~2043u, 0u, func_3(arg_0.a), 1u), vec4<u32>(0u, arg_0.b.x & 4609u, _wgslsmith_dot_vec3_u32(var_0.wzz, var_0.xww), 43586u)), arg_0.d.x) ^ vec4<u32>(var_0.x ^ arg_0.b.x, 77736u, abs(~(~arg_0.b.x)), arg_0.d.x);
    var_0 = reverseBits(vec4<u32>(countOneBits(var_1.x), select(countOneBits(u_input.b), countOneBits(50316u), arg_0.c.x) >> (~11498u % 32u), arg_0.d.x, func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.x, arg_0.a.x, -812f, arg_0.a.x))))));
    let var_2 = vec2<i32>(~0i, _wgslsmith_sub_i32(u_input.a, u_input.a));
    var_0 = firstTrailingBit(arg_0.b);
    return ~(u_input.b >> (select(_wgslsmith_mult_u32(0u, 1u) ^ (var_1.x ^ 1u), 1u, arg_0.c.x) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(-abs(vec2<i32>(u_input.a, -1i))), vec2<i32>(~1i, u_input.a)), u_input.a, -581i, abs(select(u_input.a, 1i, all(vec2<bool>(true, true)))));
    var var_1 = all(!select(select(select(arg_0.c, vec3<bool>(true, false, arg_0.c.x), arg_0.c.x), !vec3<bool>(arg_0.c.x, true, arg_0.c.x), vec3<bool>(false, true, false)), vec3<bool>(true, u_input.a < var_0.x, select(arg_0.c.x, arg_0.c.x, arg_0.c.x)), select(2199f != arg_0.a.x, select(arg_0.c.x, false, arg_0.c.x), arg_0.c.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)))), vec4<u32>(u_input.b, arg_1.x, ~60481u, ~(~u_input.b)), arg_0.c, vec4<u32>(4294967295u, abs(_wgslsmith_clamp_u32(arg_1.x, u_input.b, 1u)) | arg_1.x, _wgslsmith_add_u32(countOneBits(~arg_1.x), ~23885u), 0u));
    var var_3 = vec4<bool>(arg_0.c.x, any(select(vec3<bool>(!var_2.c.x, !var_2.c.x, var_2.c.x), vec3<bool>(var_2.c.x, false, all(var_2.c.yx)), vec3<bool>(true, 1u == arg_1.x, true))), true | (reverseBits(arg_0.d.x) <= 11653u), all(!(!(!arg_0.c))));
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(551f, arg_0.a.x, 1000f), var_2.a.xzz);
    return Struct_2(2215u, var_4.yx);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = abs(0u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(abs(-584f)), _wgslsmith_f_op_f32(-arg_2.b.x), -1525f))), vec4<u32>(arg_1.a, ~(var_0 ^ abs(arg_1.a)), ~(~_wgslsmith_div_u32(arg_1.a, 1u)), ~(~arg_0.x)), !vec3<bool>(all(vec2<bool>(true, arg_3)) && all(vec3<bool>(true, false, false)), true, arg_3), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1.a, arg_1.a, 2594u), select(abs(vec4<u32>(arg_1.a, 1u, var_0, 0u)), abs(vec4<u32>(var_0, arg_1.a, 1u, arg_0.x)), !vec4<bool>(false, arg_3, arg_3, arg_3))));
    var var_2 = var_1.c;
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(925f + 1169f), _wgslsmith_f_op_f32(f32(-1f) * -410f))))), countOneBits(max(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, var_0, 1u, var_0), var_1.d), _wgslsmith_div_vec4_u32(var_1.b, var_1.d), any(vec2<bool>(arg_3, arg_3))), var_1.d)), vec3<bool>(all(vec4<bool>(all(vec4<bool>(true, false, true, false)), arg_3, arg_3 || true, all(vec4<bool>(var_2.x, true, false, true)))), (~arg_0.x >> (~var_1.b.x % 32u)) <= 58175u, !(u_input.a < -1i)), vec4<u32>(~(u_input.b >> (arg_2.a % 32u)), 49266u, _wgslsmith_add_u32(arg_0.x, 24529u), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), ~vec4<u32>(57636u, arg_0.x, var_0, arg_0.x), !vec3<bool>(var_2.x, false, var_1.c.x), max(var_1.b, vec4<u32>(var_1.d.x, arg_2.a, 0u, 4294967295u))))));
    var var_3 = _wgslsmith_mod_vec2_u32(min(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a, 2480u), ~var_1.d.yw), min(arg_0, vec2<u32>(~u_input.b, ~0u))), ~vec2<u32>(1u, 1u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), ~vec4<u32>(arg_1.a, var_1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, 4809u, arg_2.a, 1u), var_1.b), var_1.d.x), var_1.c, ~var_1.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec4<f32>) -> vec2<bool> {
    var var_0 = ~(~u_input.a);
    var_0 = -((-7520i >> (abs(~u_input.b) % 32u)) & -20944i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_0.x)));
    var var_2 = func_5(vec2<u32>(_wgslsmith_add_u32(u_input.b, 80171u), countOneBits(u_input.b)), func_4(Struct_1(vec4<f32>(arg_2.x, -1738f, _wgslsmith_f_op_f32(-1189f - -477f), _wgslsmith_f_op_f32(step(arg_0.x, arg_2.x))), vec4<u32>(arg_1.x, 206u, arg_1.x, arg_1.x) >> (~vec4<u32>(9440u, arg_1.x, 9716u, 4294967295u) % vec4<u32>(32u)), vec3<bool>(true, true, true), vec4<u32>(func_2(Struct_1(vec4<f32>(-240f, 1026f, 513f, var_1.x), vec4<u32>(0u, arg_1.x, arg_1.x, 29727u), vec3<bool>(true, true, true), vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u))), arg_1.x, ~0u, ~4294967295u)), arg_1 >> (arg_1 % vec3<u32>(32u))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2), ~_wgslsmith_mod_vec4_u32(vec4<u32>(13623u, 64636u, u_input.b, 0u), vec4<u32>(u_input.b, 1u, 1u, 54119u)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), true), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 1u, u_input.b, 4294967295u), vec4<u32>(u_input.b, arg_1.x, arg_1.x, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, arg_1.x), vec4<u32>(arg_1.x, 0u, u_input.b, arg_1.x)))), _wgslsmith_div_vec3_u32(abs(arg_1), max(arg_1, arg_1)) | _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(arg_1.x, 1u, 1u))), select(all(vec4<bool>(false, true, u_input.b < 1u, false)), select(func_3(arg_2), u_input.b << (u_input.b % 32u), true) > min(_wgslsmith_mult_u32(0u, arg_1.x), u_input.b), true));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), 1420f, func_4(func_5(arg_1.xz, Struct_2(0u, vec2<f32>(-633f, arg_0.x)), Struct_2(58350u, arg_0.xx), var_2.c.x), ~vec3<u32>(1184u, u_input.b, u_input.b)).b.x, _wgslsmith_f_op_f32(-var_2.a.x))), var_2.d, vec3<bool>(!var_2.c.x, var_2.c.x, func_5(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, u_input.b), vec2<u32>(u_input.b, 67611u) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))), func_4(func_5(vec2<u32>(8938u, 9112u), Struct_2(0u, arg_0.zx), Struct_2(55065u, vec2<f32>(690f, var_2.a.x)), var_2.c.x), var_2.d.xwz), Struct_2(~var_2.d.x, vec2<f32>(var_2.a.x, arg_2.x)), all(var_2.c.xx)).c.x), vec4<u32>(func_5(~var_2.d.zw & ~vec2<u32>(70065u, 66803u), Struct_2(u_input.b ^ 4294967295u, _wgslsmith_f_op_vec2_f32(-arg_0.xy)), Struct_2(abs(arg_1.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, -204f), vec2<f32>(501f, 1008f)))), all(func_5(vec2<u32>(44490u, u_input.b), Struct_2(20340u, vec2<f32>(var_1.x, var_1.x)), Struct_2(u_input.b, arg_2.yx), false).c)).b.x, var_2.b.x, firstLeadingBit(~(~var_2.b.x)), arg_1.x));
    return vec2<bool>(all(select(select(select(var_3.c.zx, vec2<bool>(true, true), vec2<bool>(true, false)), func_5(var_3.d.yz, Struct_2(u_input.b, var_3.a.zx), Struct_2(u_input.b, vec2<f32>(var_2.a.x, arg_2.x)), false).c.xz, var_3.c.x), select(!var_3.c.zy, func_5(vec2<u32>(1u, arg_1.x), Struct_2(27171u, var_2.a.xz), Struct_2(12179u, arg_0.yz), var_3.c.x).c.xz, !var_2.c.x), true)), all(select(!(!vec4<bool>(true, false, var_3.c.x, var_3.c.x)), select(!vec4<bool>(var_3.c.x, true, var_3.c.x, true), vec4<bool>(true, var_3.c.x, true, var_2.c.x), var_2.c.x), select(!vec4<bool>(false, false, var_3.c.x, true), select(vec4<bool>(false, var_3.c.x, var_2.c.x, true), vec4<bool>(var_3.c.x, false, var_3.c.x, var_2.c.x), vec4<bool>(true, true, true, false)), var_2.a.x >= arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(false, true, false, all(vec4<bool>(true, true, false, true)) && true), !vec4<bool>(true, true, true, u_input.a == u_input.a), true), vec4<bool>(u_input.b >= u_input.b, all(func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-248f, -1000f, -1043f))), vec3<u32>(4294967295u, u_input.b, 0u), vec4<f32>(135f, 807f, 1100f, -895f))), select(func_1(vec3<f32>(-2846f, -717f, 787f), vec3<u32>(1u, 21669u, u_input.b), vec4<f32>(-913f, 1108f, 972f, 599f)).x && true, false, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)))), all(!func_5(vec2<u32>(u_input.b, u_input.b), Struct_2(u_input.b, vec2<f32>(1677f, -100f)), Struct_2(1u, vec2<f32>(-2255f, 1727f)), false).c.xz)), vec4<bool>(true, any(vec3<bool>(false, true, func_1(vec3<f32>(1428f, -992f, -286f), vec3<u32>(u_input.b, 94215u, 4294967295u), vec4<f32>(-939f, -274f, -871f, -548f)).x)), 2563i == firstLeadingBit(_wgslsmith_mod_i32(u_input.a, u_input.a)), any(vec4<bool>(true, true, true, true))));
    var var_1 = !select(var_0.wyw, !(!(!vec3<bool>(var_0.x, var_0.x, var_0.x))), true);
    let var_2 = vec3<i32>(-1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a & u_input.a, 0i, u_input.a, -2147483647i), select(countOneBits(vec4<i32>(-64111i, u_input.a, 1i, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), false)), -22446i);
    let var_3 = true | any(select(vec4<bool>(true, true, false, !var_0.x), vec4<bool>(var_1.x, any(vec2<bool>(true, true)), all(var_0.xxz), var_0.x), var_0));
    var var_4 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -628f, -467f, -665f) * vec4<f32>(734f, -1520f, -2092f, 473f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(363f, -865f, 1018f, 2757f)))), vec4<u32>(u_input.b, ~4294967295u, ~u_input.b, ~1u) >> (func_5(vec2<u32>(32894u, u_input.b), func_4(Struct_1(vec4<f32>(1299f, 1369f, 1000f, -1428f), vec4<u32>(u_input.b, u_input.b, 63517u, 15498u), vec3<bool>(true, false, false), vec4<u32>(u_input.b, 1u, 0u, u_input.b)), vec3<u32>(1u, u_input.b, u_input.b)), func_4(Struct_1(vec4<f32>(1001f, 659f, -703f, 784f), vec4<u32>(4294967295u, 0u, u_input.b, 4294967295u), vec3<bool>(true, false, var_0.x), vec4<u32>(4294967295u, u_input.b, 4294967295u, 41842u)), vec3<u32>(u_input.b, u_input.b, 4294967295u)), var_1.x).d % vec4<u32>(32u)), select(vec3<bool>(any(vec4<bool>(false, var_1.x, true, false)), select(false, true, var_0.x), !var_3), func_5(_wgslsmith_sub_vec2_u32(vec2<u32>(10220u, u_input.b), vec2<u32>(u_input.b, u_input.b)), Struct_2(u_input.b, vec2<f32>(1726f, 786f)), Struct_2(9666u, vec2<f32>(1000f, 1703f)), 0u < u_input.b).c, true), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 4294967295u, 0u, 1u), ~(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b) & vec4<u32>(0u, u_input.b, 17558u, 0u)))), vec3<u32>(select(1u, ~u_input.b & func_2(Struct_1(vec4<f32>(720f, 335f, -1941f, 1002f), vec4<u32>(u_input.b, u_input.b, 25622u, 61296u), var_0.zyz, vec4<u32>(u_input.b, 4294967295u, u_input.b, 13678u))), select(43918i, 230i, true) >= (i32(-1i) * -1i)), _wgslsmith_mod_u32(func_5(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(106100u, u_input.b)), func_4(Struct_1(vec4<f32>(1831f, -461f, 347f, 663f), vec4<u32>(u_input.b, 94231u, 18543u, u_input.b), var_0.yyx, vec4<u32>(1u, 25783u, 34470u, 38879u)), vec3<u32>(u_input.b, u_input.b, 38795u)), func_4(Struct_1(vec4<f32>(1004f, 367f, 962f, 1685f), vec4<u32>(u_input.b, 4294967295u, 10872u, 0u), var_0.xxx, vec4<u32>(1u, u_input.b, u_input.b, 18028u)), vec3<u32>(4294967295u, u_input.b, 0u)), true).b.x, u_input.b), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(311f, -538f, 219f, -1000f), vec4<f32>(442f, 1000f, 149f, 1021f))))));
    var var_5 = ~(min(abs(countOneBits(vec4<u32>(25275u, u_input.b, u_input.b, 0u))), ~(vec4<u32>(var_4.a, 67583u, u_input.b, 2661u) >> (vec4<u32>(0u, var_4.a, 13337u, u_input.b) % vec4<u32>(32u)))) << (~(~(~vec4<u32>(4294967295u, 4294967295u, var_4.a, 11835u))) % vec4<u32>(32u)));
    var_5 = _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(99668u, u_input.b, var_4.a, var_5.x) | vec4<u32>(21189u, 142869u, var_5.x, 45669u), ~vec4<u32>(52167u, u_input.b, 1u, 1u))), _wgslsmith_add_vec4_u32(vec4<u32>(var_4.a, max(15688u, var_4.a), 1u, _wgslsmith_clamp_u32(var_5.x, 12603u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec3_u32(var_5.wyz, var_5.yxy), var_5.x | u_input.b, var_5.x >> (0u % 32u), firstTrailingBit(var_5.x))) & firstTrailingBit(vec4<u32>(1u, u_input.b, var_4.a, 0u) >> ((vec4<u32>(0u, var_4.a, var_5.x, u_input.b) | vec4<u32>(var_5.x, 1u, 92657u, 40103u)) % vec4<u32>(32u))), abs(vec4<u32>(abs(var_4.a), ~_wgslsmith_div_u32(11152u, var_5.x), _wgslsmith_mod_u32(~4102u, var_5.x), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, 574f, -255f, 1000f))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a, _wgslsmith_div_u32(83601u, 1u)), vec2<u32>(var_5.x & 4294967295u, 4294967295u << (u_input.b % 32u))) % 32u), 4294967295u, var_2.zx);
}

