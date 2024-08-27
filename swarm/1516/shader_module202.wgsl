struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>) -> u32 {
    var var_0 = vec2<u32>(arg_0.a << (arg_0.a % 32u), select(4294967295u, 62276u ^ ~_wgslsmith_mod_u32(arg_1.b, 70608u), all(select(!arg_1.c, arg_1.c, true))));
    var var_1 = arg_2.x;
    var var_2 = Struct_3(vec2<i32>(-min(arg_1.a.x, u_input.d.x >> (var_0.x % 32u)), arg_1.a.x), var_0.x, vec4<bool>(true && select(true, all(vec3<bool>(arg_2.x, false, true)), false), true, false, select(true, false, !(3483i > u_input.d.x))));
    var_0 = abs(min(abs(~vec2<u32>(4294967295u, arg_0.a) << (firstTrailingBit(vec2<u32>(var_2.b, 2436u)) % vec2<u32>(32u))), ~(~(~vec2<u32>(arg_1.b, arg_0.a)))));
    var var_3 = 37796u;
    return ~var_2.b;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(~(~(u_input.a | u_input.c)));
    let var_1 = ~func_3(var_0, Struct_3(~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), vec2<i32>(u_input.d.x, u_input.d.x)), ~(~u_input.a), vec4<bool>(select(false, false, false), all(vec2<bool>(true, false)), select(false, true, false), true)), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true)));
    let var_2 = vec4<i32>(max(_wgslsmith_mod_i32(u_input.d.x, _wgslsmith_sub_i32(~u_input.d.x, 43563i)), u_input.d.x), ~select(u_input.d.x, u_input.d.x | u_input.d.x, false) & 1i, -1i, select(u_input.d.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.xx, vec2<i32>(u_input.d.x, 19698i)), reverseBits(u_input.d.zx))), all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    let var_3 = ~4294967295u;
    var var_4 = Struct_3(-var_2.xx, func_3(var_0, Struct_3(vec2<i32>(u_input.d.x, var_2.x), max(var_1, 1u) & max(43439u, 1u), vec4<bool>(false, any(vec2<bool>(false, false)), all(vec2<bool>(false, false)), true)), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false))));
    return ~_wgslsmith_dot_vec2_u32(max(~vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(var_1, 17808u)) ^ vec2<u32>(~4294967295u, 82982u), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.a, var_3), vec2<u32>(abs(var_4.b), 4294967295u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(func_3(Struct_1(~u_input.b), Struct_3(u_input.d.yx, _wgslsmith_div_u32(0u, 68541u), select(select(vec4<bool>(arg_1.c.x, true, false, arg_0.c.x), vec4<bool>(true, true, arg_1.c.x, true), arg_0.c.x), !vec4<bool>(false, false, arg_1.c.x, false), any(arg_0.c.yzy))), !select(!arg_1.c, vec4<bool>(true, arg_1.c.x, true, arg_1.c.x), arg_1.c.x)));
    let var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(4294967295u), vec4<i32>(_wgslsmith_add_i32(abs(13799i), arg_0.a.x), 2147483647i, -arg_1.a.x, -arg_0.a.x & ~var_1.a.x) | vec4<i32>(-2147483647i, arg_0.a.x, -2147483647i, u_input.d.x));
    let var_3 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(reverseBits(~vec3<u32>(var_0.a, arg_0.b, var_0.a))), vec3<u32>(u_input.a, _wgslsmith_clamp_u32(var_1.b, 43200u, var_0.a & var_0.a), select(var_0.a, 7020u, var_1.c.x) | ~1u), select(vec3<u32>(min(1u, var_0.a), ~var_1.b, 1u), select(vec3<u32>(var_0.a, 4294967295u, arg_1.b) | vec3<u32>(arg_0.b, var_2.a.a, 86666u), reverseBits(vec3<u32>(arg_1.b, 9524u, var_1.b)), vec3<bool>(arg_1.c.x, false, arg_0.c.x)), !select(var_1.c.zyy, vec3<bool>(arg_1.c.x, arg_1.c.x, true), true))) >> (vec3<u32>(3487u, 3661u, 15663u) % vec3<u32>(32u));
    var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(~var_3.x, var_0.a & var_1.b), _wgslsmith_add_u32(max(u_input.c, 4294967295u), ~(var_2.a.a << (arg_1.b % 32u)))));
    return Struct_3((~vec2<i32>(2147483647i, 49356i) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, var_2.a.a), var_3.zx) % vec2<u32>(32u))) >> (~max(vec2<u32>(var_1.b, 1u), var_3.zx) % vec2<u32>(32u)), ~_wgslsmith_mod_u32(abs(0u), 4294967295u), select(vec4<bool>(true, arg_0.c.x, false, u_input.d.x >= var_1.a.x), vec4<bool>(true, arg_0.c.x, arg_1.c.x, true), !vec4<bool>(!var_1.c.x, any(vec2<bool>(false, false)), true, true)));
}

fn func_1() -> i32 {
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1124f);
    let var_2 = func_4(Struct_3(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, u_input.d.x), ~vec2<i32>(2005i, 2147483647i)), u_input.d.zz), func_2(), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)))), Struct_3(select(abs(vec2<i32>(1i, u_input.d.x)), ~vec2<i32>(u_input.d.x, -2147483647i) << ((vec2<u32>(71267u, 15262u) << (vec2<u32>(u_input.b, 58572u) % vec2<u32>(32u))) % vec2<u32>(32u)), any(vec2<bool>(true, true))), u_input.b, select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))))));
    var var_3 = vec4<u32>(firstLeadingBit(22889u), ~((u_input.c << (u_input.b % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, 49228u, u_input.b, u_input.a), vec4<u32>(var_2.b, var_2.b, 0u, var_2.b))) << (~var_2.b % 32u), ~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, u_input.a, 97020u, 112429u), ~vec4<u32>(var_2.b, 126651u, var_2.b, u_input.c), var_2.c.x), abs(vec4<u32>(var_2.b, u_input.b, u_input.b, u_input.b) & vec4<u32>(10408u, 4294967295u, var_2.b, u_input.a))), _wgslsmith_sub_u32(~firstLeadingBit(_wgslsmith_mod_u32(39293u, 85687u)), 30426u));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f - -1133f)));
    return countOneBits(1220i);
}

fn func_5(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-758f, -1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1001f)))));
    var var_1 = Struct_2(Struct_1(select(u_input.b >> (select(4294967295u, u_input.a, true) % 32u), 15680u, true)), -(~_wgslsmith_clamp_vec4_i32(-arg_0, vec4<i32>(-12630i, arg_0.x, 2147483647i, u_input.d.x) << (vec4<u32>(1u, 1u, 12869u, 0u) % vec4<u32>(32u)), -vec4<i32>(arg_0.x, -31106i, u_input.d.x, -34241i))));
    var var_2 = vec3<i32>(max(-1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.b.yxw, vec3<i32>(0i, 0i, -2147483647i)), abs(arg_0.x))), _wgslsmith_add_i32(~var_1.b.x, u_input.d.x), _wgslsmith_mod_i32(max(_wgslsmith_div_i32(-1i, 1i), -u_input.d.x), -firstTrailingBit(var_1.b.x))) ^ firstLeadingBit(u_input.d);
    let var_3 = var_1.a;
    var var_4 = var_1.b;
    return Struct_3(vec2<i32>(_wgslsmith_mod_i32(func_4(Struct_3(vec2<i32>(arg_0.x, u_input.d.x), 0u, vec4<bool>(true, false, false, true)), func_4(Struct_3(arg_0.zz, 48884u, vec4<bool>(true, false, true, false)), Struct_3(var_4.xx, 4294967295u, vec4<bool>(false, false, false, true)))).a.x, var_2.x), var_4.x), ~0u, select(select(select(func_4(Struct_3(u_input.d.yz, 1u, vec4<bool>(true, true, false, true)), Struct_3(var_4.xy, var_3.a, vec4<bool>(false, true, true, false))).c, func_4(Struct_3(vec2<i32>(2147483647i, -1i), 21573u, vec4<bool>(true, false, false, true)), Struct_3(vec2<i32>(-2147483647i, var_4.x), 4294967295u, vec4<bool>(true, false, false, true))).c, true), vec4<bool>(true, true, true, true), !any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), !(all(vec2<bool>(false, false)) && true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(763i);
    let var_1 = u_input.c;
    var var_2 = Struct_3(vec2<i32>(0i, var_0), _wgslsmith_add_u32(1u, 10381u), vec4<bool>(false, (all(vec2<bool>(false, true)) && true) && all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)), false));
    var_2 = func_5(vec4<i32>(2147483647i, func_1(), _wgslsmith_dot_vec3_i32(u_input.d, ~(-u_input.d)), _wgslsmith_add_i32(var_0, abs(-1i))));
    var_2 = func_5(abs(reverseBits(-vec4<i32>(-1i, var_0, var_0, 17013i))));
    let var_3 = abs(~(~vec4<u32>(0u, 65984u, var_1, 4128u) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b, var_2.b, var_2.b, var_2.b), vec4<u32>(var_1, 78714u, u_input.a, var_2.b)) % vec4<u32>(32u))));
    let var_4 = select(!vec3<bool>(any(func_4(Struct_3(u_input.d.yz, u_input.a, var_2.c), Struct_3(vec2<i32>(u_input.d.x, 4588i), 152u, vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, true))).c.zy), var_2.c.x, all(!var_2.c.zyw)), !vec3<bool>(var_2.c.x, var_2.b > _wgslsmith_sub_u32(10378u, u_input.a), !(!var_2.c.x)), !(!var_2.c.x) == true);
    let var_5 = vec3<u32>(~(~(~_wgslsmith_add_u32(var_3.x, var_1))), 30085u, ~(~42905u));
    let var_6 = vec4<bool>(var_2.c.x, false, true, var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(470f)), _wgslsmith_div_f32(-1443f, _wgslsmith_f_op_f32(trunc(-108f)))), func_5(vec4<i32>(1i, -var_2.a.x, var_0, 0i)).a.x, min(vec4<u32>(~var_1, var_2.b & countOneBits(var_3.x), var_3.x, var_3.x), var_3), ~(~(vec4<i32>(var_0, 14626i, var_2.a.x, var_0) ^ vec4<i32>(u_input.d.x, -2147483647i, var_2.a.x, var_2.a.x)) & (~vec4<i32>(var_2.a.x, -1i, var_2.a.x, 59520i) | vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, var_0))));
}

