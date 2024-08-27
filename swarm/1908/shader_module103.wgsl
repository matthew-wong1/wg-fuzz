struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1496f - 257f), -1240f, 853f);
    global0 = true;
    global0 = any(vec4<bool>(!arg_0.b.a.d.x, (_wgslsmith_f_op_f32(ceil(134f)) >= -851f) && (firstLeadingBit(arg_0.b.c) > ~arg_0.b.c), true, arg_0.b.a.d.x));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-787f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + 411f), var_0.x)));
    var var_1 = ~(~(~(~u_input.a))) >> (69839u % 32u);
    return arg_0.b.a.d.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(abs(-79347i) & u_input.a, !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(select(u_input.a >= 52323i, true, all(vec3<bool>(false, false, true))), true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), false || func_3(Struct_4(true, Struct_3(Struct_2(Struct_1(50246i, vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec3<i32>(-2147483647i, u_input.a, u_input.a)), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), Struct_1(6842i, vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec3<i32>(u_input.a, -2147483647i, u_input.a)), vec3<bool>(true, true, false)), vec3<i32>(u_input.a, 0i, u_input.a), 26264u)))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true)), ~vec3<i32>(39220i, 0i, reverseBits(u_input.a))), vec4<i32>(-2147483647i, _wgslsmith_add_i32(u_input.a, 1i), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(1i, u_input.a, u_input.a, -1i)), ~firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -2147483647i, 40633i))), _wgslsmith_clamp_i32(-803i | u_input.a, 2147483647i, 17675i)), Struct_1(u_input.a, !vec4<bool>(u_input.a == u_input.a, true, func_3(Struct_4(true, Struct_3(Struct_2(Struct_1(u_input.a, vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec3<i32>(43897i, u_input.a, 8015i)), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), Struct_1(-1i, vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec3<i32>(-1i, u_input.a, 22644i)), vec3<bool>(true, true, false)), vec3<i32>(-2147483647i, 1i, -2147483647i), 86687u))), all(vec4<bool>(false, true, true, true))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, select(false, false, false), true), true), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, false, false), true), vec3<i32>(u_input.a, firstTrailingBit(u_input.a), 2147483647i)), !vec3<bool>(false, u_input.a <= min(0i, u_input.a), true));
    var var_1 = min(max(_wgslsmith_mod_vec2_u32(vec2<u32>(~1766u, 4294967295u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(68565u, 41021u, 1u), vec3<u32>(0u, 5656u, 4294967295u)), ~0u)), ~vec2<u32>(1u, _wgslsmith_mod_u32(273u, 1u))), min(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(99881u, 22105u))), max(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mult_u32(1u, 4294967295u), reverseBits(23901u)))));
    let var_2 = (-_wgslsmith_mult_vec4_i32(~var_0.b, -vec4<i32>(3952i, u_input.a, var_0.a.a, -47765i)) ^ vec4<i32>(firstLeadingBit(u_input.a), -(~(-35224i)), var_0.a.a, 2147483647i)) >> ((vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 39852u), vec2<u32>(var_1.x, 1u)) & abs(0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, var_1.x), abs(vec2<u32>(4294967295u, var_1.x))), firstTrailingBit(23406u), 4294967295u) & _wgslsmith_mod_vec4_u32(vec4<u32>(abs(var_1.x), ~var_1.x, 0u, ~var_1.x), countOneBits(vec4<u32>(var_1.x, 88559u, 40728u, var_1.x)) ^ vec4<u32>(5328u, 38982u, 0u, var_1.x))) % vec4<u32>(32u));
    var var_3 = max(var_2.x ^ u_input.a, min(min(~(var_0.b.x << (var_1.x % 32u)), _wgslsmith_div_i32(11560i, var_0.b.x)), ~(-2147483647i)));
    return Struct_2(var_0.c, var_2 & vec4<i32>(0i, _wgslsmith_mult_i32(u_input.a << (78948u % 32u), 1i), _wgslsmith_dot_vec3_i32(var_2.yxz, vec3<i32>(4121i, var_0.a.e.x, 12494i)), -(u_input.a & var_2.x)), Struct_1(-37629i, !var_0.a.b, var_0.c.c, vec4<bool>(all(var_0.d) & true, true, var_0.c.b.x, var_0.a.c.x), var_0.c.e & var_2.ywz), select(select(var_0.c.b.zzz, vec3<bool>(var_0.d.x, true, true), var_0.d.x), select(select(select(var_0.d, var_0.a.b.zxx, var_0.c.c.x), vec3<bool>(var_0.d.x, var_0.d.x, var_0.c.d.x), var_0.d.x), !var_0.a.d.wyx, true & any(vec3<bool>(false, false, var_0.c.d.x))), !all(select(var_0.d.yx, var_0.a.d.wy, var_0.d.zy))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> vec3<bool> {
    var var_0 = vec4<bool>(arg_1.d.x, false, arg_2.a.c.d.x, true);
    var var_1 = arg_2.a.a;
    let var_2 = Struct_4(func_3(Struct_4(func_3(Struct_4(true, Struct_3(Struct_2(arg_2.a.a, vec4<i32>(1i, var_1.a, -1i, -19322i), arg_2.a.a, arg_1.d), vec3<i32>(arg_0.x, var_1.e.x, arg_3), 4294967295u))), Struct_3(Struct_2(arg_1.a, arg_0, Struct_1(22736i, vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_1.d.x, var_0.x, arg_2.a.d.x, arg_1.d.x), vec3<i32>(var_1.a, arg_0.x, 80226i)), vec3<bool>(true, arg_1.d.x, var_1.c.x)), ~vec3<i32>(arg_2.b.x, arg_0.x, arg_3), 1u))), arg_2);
    var_1 = var_2.b.a.a;
    let var_3 = Struct_3(func_2(), -vec3<i32>(1i, 2147483647i | arg_0.x, 2147483647i) << (select(~firstTrailingBit(vec3<u32>(22876u, 65223u, 0u)), vec3<u32>(arg_2.c, 56680u, var_2.b.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, arg_3), vec3<i32>(u_input.a, -72206i, u_input.a)) > -31818i) % vec3<u32>(32u)), abs(abs(_wgslsmith_add_u32(var_2.b.c, 93u))) & ~1u);
    return var_0.zyy;
}

fn func_1(arg_0: bool) -> vec3<bool> {
    global0 = arg_0 && true;
    return select(func_4(vec4<i32>(25859i, ~32541i, ~u_input.a, -651i) << ((select(vec4<u32>(4294967295u, 115023u, 1u, 0u), vec4<u32>(22294u, 60260u, 0u, 1u), false) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294u, 0u, 21788u, 1u), vec4<u32>(11337u, 4294967295u, 0u, 51694u)) % vec4<u32>(32u))) % vec4<u32>(32u)), func_2(), Struct_3(Struct_2(Struct_1(u_input.a, vec4<bool>(false, true, true, false), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, true, false), vec3<i32>(9005i, -1i, 13078i)), abs(vec4<i32>(-42387i, u_input.a, u_input.a, u_input.a)), func_2().c, select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, arg_0))), countOneBits(reverseBits(vec3<i32>(31401i, u_input.a, 1i))), _wgslsmith_dot_vec4_u32(~vec4<u32>(3870u, 43186u, 29267u, 0u), firstLeadingBit(vec4<u32>(10221u, 0u, 49608u, 48165u)))), ~1i), vec3<bool>(all(select(!vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, arg_0, true, false), !vec4<bool>(arg_0, arg_0, arg_0, arg_0))), func_4(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(18938i, u_input.a, 0i, 16300i), vec4<i32>(u_input.a, -37436i, 25930i, 1i))), Struct_2(Struct_1(u_input.a, vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(arg_0, true, true, true), vec4<bool>(false, false, arg_0, arg_0), vec3<i32>(u_input.a, -32513i, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, -229i), Struct_1(2147483647i, vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, true, true), vec3<i32>(u_input.a, 27529i, u_input.a)), !vec3<bool>(arg_0, true, arg_0)), Struct_3(Struct_2(Struct_1(-2147483647i, vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, arg_0, false, arg_0), vec3<i32>(u_input.a, -29404i, u_input.a)), vec4<i32>(u_input.a, 1881i, u_input.a, u_input.a), Struct_1(22922i, vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, arg_0, true, true), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(arg_0, arg_0, arg_0)), ~vec3<i32>(u_input.a, -18750i, -19632i), firstTrailingBit(154913u)), 1i).x, !(!func_4(vec4<i32>(-16335i, -1i, u_input.a, u_input.a), Struct_2(Struct_1(14455i, vec4<bool>(true, arg_0, true, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_0), vec3<i32>(-25405i, -1i, u_input.a)), vec4<i32>(2147483647i, 2147483647i, 0i, u_input.a), Struct_1(-1i, vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, true), vec3<i32>(59596i, -7917i, 2147483647i)), vec3<bool>(arg_0, arg_0, arg_0)), Struct_3(Struct_2(Struct_1(u_input.a, vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, false), vec4<bool>(false, arg_0, false, false), vec3<i32>(-1i, -2147483647i, u_input.a)), vec4<i32>(2147483647i, -56311i, u_input.a, u_input.a), Struct_1(u_input.a, vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, false, arg_0), vec3<i32>(u_input.a, 75327i, -45127i)), vec3<bool>(false, false, false)), vec3<i32>(30008i, u_input.a, 28397i), 1u), u_input.a).x)), true);
}

fn func_5(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1285f * 160f), _wgslsmith_f_op_f32(f32(-1f) * -682f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1157f, arg_0.x || arg_0.x)))), _wgslsmith_div_f32(-692f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1047f, -794f)), _wgslsmith_f_op_f32(ceil(-222f))), _wgslsmith_div_f32(-778f, _wgslsmith_f_op_f32(min(1338f, 289f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1901f) + _wgslsmith_f_op_f32(f32(-1f) * -357f)), 573f);
    let var_1 = func_2();
    let var_2 = ~var_1.c.e;
    var var_3 = func_2().b.x;
    let var_4 = Struct_3(Struct_2(var_1.a, vec4<i32>(-firstLeadingBit(2147483647i), firstTrailingBit(select(var_1.c.a, var_1.b.x, arg_0.x)), ~var_1.c.e.x, -6238i >> (1u % 32u)), Struct_1(var_2.x, !func_2().c.b, !(!vec4<bool>(false, true, arg_0.x, true)), vec4<bool>(true, var_0.x > 549f, !var_1.a.c.x, true), var_1.a.e), var_1.d), -max(firstTrailingBit(vec3<i32>(var_1.a.e.x, var_2.x, u_input.a)), vec3<i32>(32241i, 0i, i32(-1i) * -2147483647i)), 27535u);
    return Struct_2(Struct_1(u_input.a << (4294967295u % 32u), var_1.a.c, !vec4<bool>(true, true, arg_0.x, var_4.a.d.x), vec4<bool>(!any(vec2<bool>(var_1.d.x, var_4.a.c.b.x)), !var_4.a.a.b.x && var_1.a.b.x, var_1.d.x, (var_4.a.a.c.x | true) || arg_0.x), max(_wgslsmith_mod_vec3_i32(var_2 & vec3<i32>(31344i, u_input.a, var_4.b.x), var_1.a.e), -vec3<i32>(var_2.x, -1i, 0i))), countOneBits(vec4<i32>(-1i, ~var_1.b.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(13619i, 2147483647i, -14662i), i32(-1i) * -31531i), -countOneBits(-10813i))), func_2().a, var_4.a.a.d.wwz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(select(vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true), func_1(all(vec4<bool>(true, true, true, true))), all(func_4(vec4<i32>(u_input.a, u_input.a, -45934i, -47577i), Struct_2(Struct_1(-1i, vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec3<i32>(19573i, u_input.a, u_input.a)), vec4<i32>(-2147483647i, -48339i, 0i, 26669i), Struct_1(u_input.a, vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec3<i32>(u_input.a, 0i, -36157i)), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(u_input.a, vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, 7161i, u_input.a), Struct_1(56486i, vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec3<i32>(-15414i, 16015i, u_input.a)), vec3<bool>(false, true, true)), vec3<i32>(0i, 19246i, u_input.a), 25453u), 15624i)))), _wgslsmith_mult_vec3_i32(~min(func_2().a.e, vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-21871i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 45507i, u_input.a), vec3<i32>(u_input.a, 0i, 30380i)), u_input.a), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(1i, 1i, 26260i)))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), max(vec2<u32>(1u, 19384u), vec2<u32>(1u, 1u))), 1u));
    global0 = var_0.a.a.a <= 1i;
    global0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-527f * 1000f), -651f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1430f + 606f))))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2587f, _wgslsmith_f_op_f32(f32(-1f) * -734f)));
    let var_1 = Struct_1(~_wgslsmith_mod_i32(-1i, -_wgslsmith_mod_i32(-44510i, 14517i)), vec4<bool>(firstTrailingBit(0u >> (var_0.c % 32u)) < (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4054u), vec2<u32>(10447u, 0u)) & abs(var_0.c)), var_0.a.a.b.x, !all(var_0.a.c.d.ww), var_0.a.d.x), vec4<bool>(var_0.a.a.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, var_0.c, 11407u, var_0.c), vec4<u32>(34913u, 12883u, var_0.c, 4955u)) <= var_0.c, true, !var_0.a.a.c.x), !(!var_0.a.a.b), vec3<i32>(-1i) * -(vec3<i32>(u_input.a, 2147483647i, u_input.a) >> (~vec3<u32>(1u, 61831u, var_0.c) % vec3<u32>(32u))));
    let var_2 = Struct_2(Struct_1(select(var_1.e.x, -1i, true), !vec4<bool>(var_0.a.d.x, true, var_0.a.d.x, func_4(var_0.a.b, Struct_2(Struct_1(2147483647i, vec4<bool>(true, true, true, false), vec4<bool>(true, var_0.a.a.d.x, var_0.a.c.c.x, var_0.a.a.d.x), var_1.d, var_1.e), vec4<i32>(-28952i, 1i, -2147483647i, var_1.e.x), var_0.a.c, var_1.b.zzx), Struct_3(var_0.a, var_0.b, 12282u), -26253i).x), select(!func_2().c.b, !(!vec4<bool>(true, true, var_1.c.x, var_1.c.x)), !var_1.b.x), var_0.a.a.d, vec3<i32>(-502i << (reverseBits(var_0.c) % 32u), var_0.a.b.x, 1i)), -var_0.a.b, func_2().c, !vec3<bool>(true, any(var_1.c.zxy), true));
    let var_3 = -828f;
    let var_4 = func_5(vec3<bool>(!(var_0.a.d.x != func_4(vec4<i32>(u_input.a, 12224i, 1i, u_input.a), Struct_2(Struct_1(26683i, vec4<bool>(true, true, var_0.a.d.x, false), var_1.d, var_1.d, var_2.c.e), var_0.a.b, Struct_1(-30673i, var_0.a.a.d, vec4<bool>(true, var_0.a.d.x, var_2.d.x, var_0.a.a.c.x), vec4<bool>(true, var_2.c.b.x, false, var_0.a.d.x), vec3<i32>(19598i, u_input.a, 37271i)), vec3<bool>(false, var_2.a.c.x, false)), Struct_3(Struct_2(Struct_1(80166i, vec4<bool>(false, var_2.a.d.x, var_0.a.a.b.x, var_2.c.c.x), vec4<bool>(false, true, true, false), vec4<bool>(var_1.d.x, var_0.a.c.c.x, true, true), var_0.b), vec4<i32>(var_0.b.x, 44847i, -41377i, var_2.a.e.x), var_2.a, var_0.a.c.b.yzw), var_0.b, var_0.c), var_2.b.x).x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c, 1u), abs(vec2<u32>(var_0.c, 4070u))) > min(_wgslsmith_add_u32(1u, 1u), var_0.c), any(select(vec2<bool>(var_0.a.d.x, var_2.c.b.x), var_0.a.d.yz, select(var_1.d.xz, var_2.c.c.xw, vec2<bool>(false, var_1.c.x))))));
    var_0 = Struct_3(func_5(!vec3<bool>(1u == var_0.c, var_0.a.c.c.x, var_0.a.c.d.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_4.a.e.x, var_4.a.e.x, var_4.b.x), -var_4.a.e), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(max(30564u, var_0.c), var_0.c), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(var_0.c, 4294967295u)) ^ (~vec2<u32>(var_0.c, 15417u) & vec2<u32>(0u, var_0.c)), max(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(7362u, var_0.c), vec2<u32>(41112u, var_0.c), vec2<u32>(var_0.c, var_0.c)), ~vec2<u32>(var_0.c, 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.c, 20065u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0.c), vec2<u32>(var_0.c, var_0.c))))), countOneBits(~(var_0.c << (4294967295u % 32u))) | 0u);
}

