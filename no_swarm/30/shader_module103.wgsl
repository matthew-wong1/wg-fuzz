struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = vec2<u32>(u_input.d.x, 9908u);
    var_0 = u_input.c.wx;
    let var_1 = u_input.b.yz ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-26315i << (u_input.d.x % 32u), -u_input.a), ~u_input.b.xz), 66530i);
    var_0 = u_input.d.yw >> (vec2<u32>(u_input.d.x ^ _wgslsmith_mult_u32(1u, 33592u << (u_input.c.x % 32u)), ~(~(~1u))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.a, -1103f)), vec2<f32>(arg_2.a.a, arg_1.c.a)))));
    return !vec4<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(abs(1672f)), vec3<bool>(true, any(func_3(364f, Struct_2(arg_0.b, 719f, Struct_1(-991f)), Struct_2(Struct_1(arg_1.a), arg_0.b.a, Struct_1(arg_0.b.a)))), all(vec2<bool>(any(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, false, false))))));
    let var_1 = arg_0;
    var var_2 = Struct_2(arg_1, 414f, arg_1);
    return Struct_1(var_2.c.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_5 {
    var var_0 = ~1u;
    var var_1 = 1000f;
    var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = Struct_1(1240f);
    var var_3 = vec2<bool>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.a, abs(18189u)), arg_1.a) <= _wgslsmith_mult_u32(_wgslsmith_sub_u32(min(arg_1.a, u_input.c.x), abs(u_input.c.x)), 1u), arg_1.a == 2866u);
    return Struct_5(reverseBits(~vec3<u32>(~35064u, 1u, arg_1.a >> (u_input.d.x % 32u))), ~4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a, 1193f, -1000f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, arg_1.b.a, 1000f, var_2.a))), vec4<f32>(640f, 1820f, var_2.a, _wgslsmith_f_op_f32(var_2.a * arg_0.x)), vec4<bool>(all(vec4<bool>(var_3.x, var_3.x, var_3.x, false)), func_3(arg_0.x, Struct_2(arg_1.b, var_2.a, arg_1.b), Struct_2(Struct_1(arg_1.b.a), var_2.a, Struct_1(251f))).x, func_3(arg_0.x, Struct_2(Struct_1(arg_0.x), arg_1.b.a, arg_1.b), Struct_2(Struct_1(-2294f), arg_0.x, arg_1.b)).x, true))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -899f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1748f * var_2.a), _wgslsmith_f_op_f32(var_2.a * var_2.a)), arg_1.b.a)), !all(!func_3(var_2.a, Struct_2(Struct_1(var_2.a), 253f, arg_1.b), Struct_2(arg_1.b, arg_0.x, arg_1.b)).xzy));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    var var_0 = all(vec2<bool>(all(!(!vec2<bool>(arg_0.d, arg_0.d))), !arg_0.d));
    let var_1 = func_2(Struct_3((49178u >> (1u % 32u)) >> (1u % 32u), Struct_1(1331f), vec4<i32>(_wgslsmith_mult_i32(u_input.a & u_input.b.x, 1i), -3894i, _wgslsmith_clamp_i32(~(-3432i), -1i, u_input.b.x), ~u_input.a)), func_2(Struct_3(11897u, Struct_1(_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x)), select(abs(vec4<i32>(0i, arg_2, -5669i, 10127i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, arg_2, arg_2, u_input.a), vec4<i32>(arg_2, arg_2, -29458i, 1i)), true)), func_2(Struct_3(0u, Struct_1(arg_0.c.x), abs(vec4<i32>(u_input.b.x, 17645i, arg_2, 1i))), func_2(Struct_3(arg_0.a.x, Struct_1(-250f), vec4<i32>(2147483647i, -492i, 1i, arg_2)), func_2(Struct_3(15082u, Struct_1(arg_0.c.x), vec4<i32>(-48453i, u_input.a, 0i, -39605i)), Struct_1(-1044f), arg_1.x), ~arg_0.b), abs(0u)), u_input.c.x), 1u);
    var_0 = false;
    let var_2 = Struct_2(func_2(Struct_3(_wgslsmith_mod_u32(63004u, _wgslsmith_sub_u32(4294967295u, 1040u)), Struct_1(arg_0.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.b.x, arg_2), ~vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c.x * -1000f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(0u), firstLeadingBit(1u)), ~(~arg_1.xy))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(828f * 279f)), -610f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_4(arg_0.c.wzx, Struct_3(arg_0.a.x, var_1, vec4<i32>(0i, u_input.b.x, arg_2, -18490i))).c.x)) * 205f))), func_2(Struct_3(arg_1.x, func_2(Struct_3(23290u, var_1, vec4<i32>(-22675i, -2147483647i, u_input.b.x, arg_2)), func_2(Struct_3(arg_0.b, var_1, vec4<i32>(arg_2, -2147483647i, arg_2, arg_2)), var_1, 47266u), firstLeadingBit(arg_0.b)), abs(reverseBits(vec4<i32>(arg_2, u_input.b.x, arg_2, -2147483647i)))), func_2(Struct_3(0u, var_1, min(vec4<i32>(1i, 2147483647i, u_input.a, u_input.a), vec4<i32>(-85275i, u_input.a, 41437i, 3341i))), func_2(Struct_3(u_input.d.x, var_1, vec4<i32>(-1i, u_input.b.x, arg_2, -2147483647i)), Struct_1(124f), 1u), _wgslsmith_div_u32(arg_0.a.x, 3856u)), 1u));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(539f, _wgslsmith_f_op_f32(abs(320f))))), _wgslsmith_f_op_f32(-func_4(arg_0.c.wzz, Struct_3(4294967295u, func_2(Struct_3(4294967295u, Struct_1(-743f), vec4<i32>(u_input.a, arg_2, -2147483647i, 9720i)), var_1, u_input.d.x), ~vec4<i32>(64163i, 72493i, 52300i, 2147483647i))).c.x), func_2(Struct_3(u_input.c.x, func_2(Struct_3(41130u, var_1, vec4<i32>(arg_2, u_input.a, u_input.a, u_input.a)), func_2(Struct_3(arg_0.a.x, var_2.c, vec4<i32>(u_input.b.x, -36743i, u_input.a, 17660i)), var_2.c, u_input.d.x), firstTrailingBit(arg_1.x)), -vec4<i32>(-2147483647i, u_input.a, 1i, arg_2) & ~vec4<i32>(-2147483647i, arg_2, 3306i, 1i)), func_2(Struct_3(68219u, Struct_1(-1606f), -vec4<i32>(u_input.a, 957i, arg_2, 2147483647i)), Struct_1(_wgslsmith_f_op_f32(-var_1.a)), 36399u), 0u));
    return _wgslsmith_f_op_f32(-258f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-670f))));
}

fn func_1() -> Struct_1 {
    var var_0 = false | any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(all(vec3<bool>(true, false, true)), true, any(vec2<bool>(false, true)))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(floor(356f)), _wgslsmith_f_op_f32(min(276f, 369f)), 2727f), Struct_3(13612u, func_2(Struct_3(1u, Struct_1(-2018f), vec4<i32>(u_input.a, 0i, 1i, 2147483647i)), Struct_1(1583f), 4294967295u), countOneBits(vec4<i32>(2147483647i, -2147483647i, u_input.a, 1i)))), vec3<u32>(firstLeadingBit(20271u) ^ reverseBits(u_input.d.x), 1u, func_4(vec3<f32>(-1045f, 1518f, 333f), Struct_3(1u, Struct_1(837f), vec4<i32>(u_input.a, u_input.a, u_input.a, 56174i))).a.x), -55432i)), 1175f));
    var_0 = any(vec2<bool>(false, false));
    var_0 = (all(vec2<bool>(true, select(true, false, false))) & false) & false;
    let var_2 = -1830i;
    return func_2(Struct_3(~1u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f))), _wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_2, u_input.a, u_input.a), vec4<i32>(var_2, -43514i, -1i, u_input.a)), vec4<i32>(i32(-1i) * -59314i, i32(-1i) * -55954i, abs(-2147483647i), -6103i))), Struct_1(-107f), 36373u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.b.x, -1i, countOneBits(2147483647i));
    let var_1 = func_1();
    var var_2 = abs(u_input.d.xzw) >> (_wgslsmith_mod_vec3_u32(u_input.d.wxz, vec3<u32>(_wgslsmith_div_u32(~41864u, u_input.d.x), 34797u, select(firstTrailingBit(1u), 39039u, true))) % vec3<u32>(32u));
    var_2 = abs(u_input.c.xwy ^ ~u_input.c.wxz);
    var_2 = vec3<u32>(u_input.c.x, 1u, var_2.x);
    var_2 = u_input.d.xyy;
    var var_3 = -2147483647i;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(518f + var_1.a) + _wgslsmith_f_op_f32(f32(-1f) * -1473f));
    var_2 = u_input.d.yzz;
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(vec4<i32>(var_0.x, var_0.x, u_input.a, -14941i)) | firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 39493i, var_0.x), vec4<i32>(u_input.b.x, 1i, var_0.x, -8693i)))), u_input.b.x, vec4<u32>(countOneBits(abs(1495u << (u_input.d.x % 32u))), 1u, u_input.d.x, ~func_4(vec3<f32>(-1983f, 592f, var_1.a), Struct_3(40164u, var_1, vec4<i32>(var_0.x, -711i, u_input.a, -2147483647i))).a.x ^ ~(~u_input.d.x)));
}

