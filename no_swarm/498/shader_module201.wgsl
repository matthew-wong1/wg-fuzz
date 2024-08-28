struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<bool>) -> i32 {
    let var_0 = ~arg_1;
    let var_1 = vec4<u32>(arg_0, _wgslsmith_sub_u32(arg_0, u_input.c), 4294967295u & firstTrailingBit(9106u), ~abs(~(arg_0 >> (0u % 32u))));
    var var_2 = Struct_3(-2147483647i);
    var_2 = Struct_3(1i);
    let var_3 = !vec2<bool>(true, !(1i < arg_1));
    return 1i;
}

fn func_2() -> Struct_4 {
    var var_0 = abs(u_input.b);
    let var_1 = Struct_3(-abs(-func_3(23412u, u_input.d.x, vec2<bool>(false, false))));
    var var_2 = any(select(vec2<bool>(_wgslsmith_f_op_f32(select(-745f, -1010f, true)) == -1047f, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), true));
    var_0 = -u_input.d.x;
    let var_3 = _wgslsmith_mod_u32(~u_input.c, 92866u);
    return Struct_4(-(((vec4<i32>(u_input.a.x, 0i, var_1.a, -1i) | vec4<i32>(var_1.a, var_1.a, 1i, var_1.a)) ^ abs(vec4<i32>(u_input.b, -1i, u_input.a.x, -2147483647i))) | -abs(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, var_1.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-640f + -326f) - _wgslsmith_div_f32(-304f, 293f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 472f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1015f, 915f, true)), _wgslsmith_f_op_f32(516f * -1183f)))))), Struct_1(_wgslsmith_dot_vec3_i32(~(u_input.d << (vec3<u32>(u_input.c, u_input.c, 1u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(-1i, -9630i), 1i, 5205i << (0u % 32u)))), Struct_2(vec4<i32>(var_1.a & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 0i, -1i, var_1.a), vec4<i32>(var_1.a, u_input.a.x, var_1.a, u_input.a.x)), _wgslsmith_sub_i32(select(0i, 1i, false), -9490i), -var_1.a, _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_clamp_i32(var_1.a, var_1.a, var_1.a))), Struct_1(-20434i)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    let var_0 = min(~vec3<u32>(u_input.c, ~u_input.c, firstLeadingBit(firstLeadingBit(u_input.c))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(11088u), 1u, u_input.c), ~vec3<u32>(4294967295u, 4294967295u, 0u))));
    var var_1 = select(vec3<bool>(all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, false, true))), (u_input.a.x & arg_3.d.b.a) > (-2147483647i << (~var_0.x % 32u)), true), vec3<bool>(true, true, true), true);
    var_1 = select(vec3<bool>(var_1.x, var_1.x, !(!any(vec3<bool>(var_1.x, false, var_1.x)))), !vec3<bool>(var_1.x, true && any(vec4<bool>(false, false, false, var_1.x)), false), var_1.x);
    var var_2 = func_2().d;
    let var_3 = 0i;
    return func_2();
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> Struct_4 {
    var var_0 = Struct_4(~arg_1.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), arg_2, func_4(Struct_4(vec4<i32>(~(-7853i), arg_1.a.x, -1i, arg_1.c.a), 785f, func_2().d.b, arg_1.d), 1119f, min(-_wgslsmith_add_i32(-2147483647i, arg_2.a), 1i), arg_1).d);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1114f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(994f - arg_0)) + arg_1.b)));
    var var_2 = vec4<bool>(any(vec3<bool>(!select(false, true, true), true, true)), 2147483647i > arg_2.a, true, 30598u > u_input.c);
    var_0 = func_4(Struct_4(vec4<i32>(_wgslsmith_sub_i32(-1i, 1i), select(var_0.d.a.x, -1i, var_2.x), arg_2.a, -7345i), _wgslsmith_f_op_f32(exp2(var_0.b)), Struct_1(~(-2147483647i)), Struct_2(reverseBits(arg_1.a), func_4(arg_1, var_0.b, countOneBits(-11016i), func_4(Struct_4(var_0.d.a, -309f, var_0.d.b, arg_1.d), 1167f, 0i, arg_1)).c)), _wgslsmith_f_op_f32(step(-477f, arg_1.b)), _wgslsmith_mult_i32(~(~(arg_2.a << (u_input.c % 32u))), u_input.b), func_2());
    let var_3 = func_4(Struct_4(-_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c.a, 31738i, var_0.a.x, arg_1.d.b.a), vec4<i32>(1i, var_0.c.a, -2147483647i, 0i)), var_0.a | vec4<i32>(-63714i, 26110i, -34978i, arg_1.a.x)), -925f, func_4(func_2(), 489f, var_0.c.a, Struct_4(_wgslsmith_mod_vec4_i32(arg_1.d.a, arg_1.d.a), var_0.b, Struct_1(u_input.a.x), Struct_2(arg_1.a, var_0.d.b))).d.b, Struct_2(vec4<i32>(countOneBits(arg_1.d.b.a), reverseBits(arg_1.d.b.a), ~(-7598i), func_4(arg_1, -802f, u_input.d.x, arg_1).a.x), var_0.d.b)), 1950f, 2147483647i, arg_1).c;
    return arg_1;
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1(~u_input.a.x);
    let var_1 = _wgslsmith_sub_u32(u_input.c, _wgslsmith_add_u32((66234u >> (u_input.c % 32u)) >> (u_input.c % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(70628u, u_input.c, 34752u), ~951u, abs(717u)), vec3<u32>(~0u, 1643u, u_input.c))));
    var var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(623f - _wgslsmith_f_op_f32(trunc(-716f))) - _wgslsmith_f_op_f32(min(-921f, 1908f))), func_4(func_2(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(522f + -681f) - -1211f))), -firstTrailingBit(u_input.a.x ^ var_0.a), Struct_4(_wgslsmith_div_vec4_i32(-vec4<i32>(var_0.a, var_0.a, u_input.b, -14458i), vec4<i32>(u_input.b, u_input.d.x, var_0.a, 2147483647i) | vec4<i32>(-2147483647i, 1i, var_0.a, 16639i)), 669f, func_2().c, func_2().d)), func_4(Struct_4(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-5850i, 1i, -1i, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.d.x, 34165i), vec4<i32>(-1i, var_0.a, var_0.a, 17744i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f * 1013f)), func_4(Struct_4(vec4<i32>(u_input.b, var_0.a, var_0.a, u_input.a.x), -1514f, Struct_1(u_input.a.x), Struct_2(vec4<i32>(0i, 1i, var_0.a, -18479i), Struct_1(var_0.a))), _wgslsmith_f_op_f32(2236f * 795f), u_input.d.x, func_2()).c, Struct_2(vec4<i32>(var_0.a, var_0.a, -1526i, var_0.a), Struct_1(-2147483647i))), -1173f, var_0.a, Struct_4((vec4<i32>(u_input.d.x, u_input.b, -2147483647i, u_input.b) & vec4<i32>(u_input.b, u_input.d.x, 2147483647i, u_input.d.x)) | (vec4<i32>(-38104i, var_0.a, -1i, var_0.a) ^ vec4<i32>(18963i, -30223i, 7439i, var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1300f + 463f)), Struct_1(-u_input.a.x), func_4(func_4(Struct_4(vec4<i32>(1030i, 2147483647i, var_0.a, 33568i), -111f, Struct_1(-1i), Struct_2(vec4<i32>(28494i, -65744i, var_0.a, -66831i), Struct_1(-32187i))), 437f, u_input.b, Struct_4(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a), -503f, Struct_1(-1148i), Struct_2(vec4<i32>(u_input.d.x, 10160i, u_input.a.x, -1i), Struct_1(0i)))), -780f, _wgslsmith_add_i32(0i, -1i), Struct_4(vec4<i32>(-16987i, -47865i, 2147483647i, u_input.a.x), 1424f, Struct_1(25919i), Struct_2(vec4<i32>(-66515i, 41074i, u_input.a.x, -2147483647i), Struct_1(u_input.d.x)))).d)).d.b);
    var_2 = Struct_4(var_2.d.a, var_2.b, Struct_1(var_2.d.a.x), var_2.d);
    var_2 = func_4(func_4(func_5(-1399f, func_2(), func_2().d.b), var_2.b, firstTrailingBit(-func_4(Struct_4(vec4<i32>(-6409i, var_0.a, var_2.d.b.a, u_input.b), 572f, Struct_1(-22297i), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, var_0.a, var_2.d.b.a), var_2.d.b)), 175f, u_input.d.x, Struct_4(var_2.d.a, var_2.b, Struct_1(var_0.a), var_2.d)).c.a), Struct_4(var_2.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + var_2.b) - 349f), var_2.d.b, var_2.d)), var_2.b, u_input.b, func_4(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + var_2.b))), ~_wgslsmith_mod_i32(2147483647i, var_2.d.b.a), Struct_4(reverseBits(vec4<i32>(u_input.a.x, u_input.d.x, -20111i, u_input.d.x) ^ vec4<i32>(var_0.a, -8960i, u_input.d.x, var_2.d.a.x)), -2050f, Struct_1(-16340i), Struct_2(var_2.a >> (vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)), func_2().d.b))));
    return !(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false), vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    var_0 = vec2<bool>(all(vec3<bool>(var_0.x, all(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false)), all(vec4<bool>(true, var_0.x, false, var_0.x)))), all(vec4<bool>(var_0.x, all(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, var_0.x), var_0.x)), all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), false)), firstTrailingBit(1u) <= 0u)));
    let var_1 = firstTrailingBit((1u >> (u_input.c % 32u)) ^ ~(u_input.c ^ u_input.c)) << (u_input.c % 32u);
    var_0 = !func_1();
    let var_2 = vec4<bool>(false, func_1().x, false, var_0.x);
    var var_3 = _wgslsmith_f_op_f32(select(-1000f, -1000f, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, reverseBits((vec4<u32>(0u, 30679u, 4294967295u, u_input.c) | vec4<u32>(52867u, u_input.c, var_1, 18741u)) >> (vec4<u32>(select(var_1, 53238u, true), var_1, _wgslsmith_sub_u32(4294967295u, u_input.c), reverseBits(1u)) % vec4<u32>(32u))), u_input.d.x);
}

