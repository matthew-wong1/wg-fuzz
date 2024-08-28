struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    return arg_0.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = arg_2.c;
    var var_1 = _wgslsmith_div_vec4_u32(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 6291u, arg_2.d.b, var_0.x), vec4<u32>(61177u, 0u, 36414u, arg_0.x)) << (~(vec4<u32>(var_0.x, u_input.e, arg_0.x, 41178u) ^ vec4<u32>(u_input.d, 1u, 1u, var_0.x)) % vec4<u32>(32u)), abs(vec4<u32>(u_input.d, ~arg_2.e.b, func_2(Struct_1(arg_2.d.a, 50635u), vec2<i32>(2147483647i, arg_2.b), arg_2.e.a.x), var_0.x)), all(select(!vec4<bool>(arg_1.e.a.x, arg_1.e.a.x, true, arg_2.d.a.x), select(vec4<bool>(arg_2.d.a.x, arg_1.d.a.x, false, true), vec4<bool>(arg_2.e.a.x, arg_1.e.a.x, true, arg_2.d.a.x), vec4<bool>(false, arg_2.e.a.x, arg_2.e.a.x, arg_2.d.a.x)), !vec4<bool>(arg_1.d.a.x, arg_2.d.a.x, arg_1.d.a.x, false)))), ~firstTrailingBit(vec4<u32>(~arg_2.e.b, ~u_input.d, arg_2.d.b, _wgslsmith_div_u32(u_input.e, arg_0.x))));
    var var_2 = arg_2.a;
    var var_3 = arg_2.e.a;
    var_0 = arg_0;
    return all(vec4<bool>(arg_2.d.a.x, arg_1.e.a.x, true, false));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = any(vec4<bool>(true, true | ((i32(-1i) * -15372i) != _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), (arg_0 >= reverseBits(60374i)) & false, arg_0 > _wgslsmith_div_i32(_wgslsmith_sub_i32(-25414i, 19662i), reverseBits(u_input.b.x))));
    var_0 = false | !((~u_input.d < u_input.d) == ((i32(-1i) * -2147483647i) == ~arg_0));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1679f) * 2470f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1246f - -446f) - -311f))), _wgslsmith_div_i32(-arg_0, ~(~u_input.c)), max(select(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(u_input.e, u_input.d)), vec2<u32>(u_input.e, 51709u)), vec2<u32>(1u, firstLeadingBit(u_input.d)), vec2<bool>(true, true)), select(vec2<u32>(_wgslsmith_mult_u32(u_input.d, u_input.e), ~u_input.e), ~vec2<u32>(4294967295u, u_input.d), false & any(vec3<bool>(false, true, true)))), Struct_1(vec2<bool>(true, func_1(vec2<u32>(16366u, u_input.e), Struct_2(-824f, u_input.a, vec2<u32>(u_input.e, 13461u), Struct_1(vec2<bool>(false, false), u_input.e), Struct_1(vec2<bool>(true, true), u_input.e)), Struct_2(-216f, 1i, vec2<u32>(u_input.e, 1u), Struct_1(vec2<bool>(true, false), 26009u), Struct_1(vec2<bool>(false, false), 73884u))) || func_1(vec2<u32>(77652u, 2900u), Struct_2(-599f, -49521i, vec2<u32>(60311u, u_input.e), Struct_1(vec2<bool>(true, false), u_input.e), Struct_1(vec2<bool>(false, false), 1u)), Struct_2(363f, arg_0, vec2<u32>(1u, u_input.e), Struct_1(vec2<bool>(false, false), u_input.e), Struct_1(vec2<bool>(true, false), 0u)))), ~abs(u_input.d >> (0u % 32u))), Struct_1(vec2<bool>(true, true), _wgslsmith_mod_u32(u_input.d, u_input.d)));
    let var_2 = select(select(select(vec4<bool>(true, true, true, func_1(var_1.c, Struct_2(-1000f, -42610i, var_1.c, Struct_1(var_1.d.a, 5449u), var_1.e), Struct_2(var_1.a, -15195i, var_1.c, var_1.e, Struct_1(var_1.d.a, 4294967295u)))), select(vec4<bool>(true, true, false, var_1.e.a.x), !vec4<bool>(var_1.e.a.x, false, var_1.d.a.x, true), !var_1.d.a.x), !vec4<bool>(var_1.d.a.x, var_1.e.a.x, false, var_1.e.a.x)), vec4<bool>(any(vec4<bool>(var_1.d.a.x, var_1.d.a.x, var_1.e.a.x, false)), all(select(vec2<bool>(false, false), var_1.d.a, vec2<bool>(var_1.d.a.x, true))), all(vec3<bool>(true, false, true)), true | !var_1.d.a.x), var_1.e.a.x), vec4<bool>(any(!select(vec3<bool>(var_1.e.a.x, false, false), vec3<bool>(false, false, false), vec3<bool>(var_1.e.a.x, true, true))), !(firstLeadingBit(43338i) != ~arg_0), !var_1.d.a.x, false & (-1i >= ~var_1.b)), select(select(vec4<bool>(true, var_1.e.a.x, select(var_1.e.a.x, true, false), true), vec4<bool>(false, true, any(vec3<bool>(false, var_1.d.a.x, false)), false), vec4<bool>(var_1.e.a.x, var_1.e.a.x & var_1.e.a.x, var_1.e.a.x, false)), select(!select(vec4<bool>(var_1.d.a.x, true, var_1.d.a.x, true), vec4<bool>(false, false, false, var_1.e.a.x), vec4<bool>(var_1.d.a.x, true, var_1.d.a.x, true)), !vec4<bool>(true, var_1.e.a.x, true, true), all(var_1.d.a) || !var_1.e.a.x), var_1.a < -252f));
    var var_3 = Struct_5(select(select(true, true, select(var_1.a <= -1000f, false, all(vec4<bool>(false, var_2.x, false, true)))), var_2.x, true), Struct_2(-1089f, -2147483647i, var_1.c, var_1.d, Struct_1(vec2<bool>(true, true), ~var_1.d.b)), var_1.d, u_input.b.xz);
    return min(1u, ~(u_input.e & ~var_1.e.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(!vec2<bool>(true, func_1(vec2<u32>(121470u, 0u), Struct_2(-741f, -1i, vec2<u32>(u_input.e, 20257u), Struct_1(vec2<bool>(false, false), 4294967295u), Struct_1(vec2<bool>(false, true), 19666u)), Struct_2(266f, 0i, vec2<u32>(u_input.d, 57148u), Struct_1(vec2<bool>(false, false), 77402u), Struct_1(vec2<bool>(true, true), u_input.e)))), 38086u), select(-reverseBits(vec4<i32>(u_input.c, u_input.a, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.a ^ -40696i, u_input.b.x >> (1u % 32u), _wgslsmith_sub_i32(-2147483647i, u_input.b.x)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d << (u_input.e % 32u), func_3(u_input.b.x), u_input.d, ~37827u), vec4<u32>(~1u, u_input.d ^ u_input.d, ~4294967295u, ~u_input.e)) % vec4<u32>(32u)), Struct_2(-1311f, min(0i, ~u_input.c << (1u % 32u)), firstTrailingBit(vec2<u32>(1678u, firstLeadingBit(4294967295u))), Struct_1(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), u_input.e == u_input.d), ~max(u_input.d, 71064u)), Struct_1(vec2<bool>(true, true), _wgslsmith_add_u32(u_input.e, ~17436u))), Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), true), vec2<bool>(true, any(vec4<bool>(true, false, false, false))), false), min(u_input.d, ~(~4547u))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, u_input.e > u_input.d, func_1(vec2<u32>(28225u, 68321u), Struct_2(-347f, -16017i, vec2<u32>(1u, 89928u), Struct_1(vec2<bool>(true, true), u_input.d), Struct_1(vec2<bool>(true, true), u_input.e)), Struct_2(-141f, u_input.c, vec2<u32>(1u, 2391u), Struct_1(vec2<bool>(false, false), 1u), Struct_1(vec2<bool>(true, true), 1u)))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<bool>(u_input.a != _wgslsmith_mult_i32(-22106i, u_input.a), (u_input.d >= u_input.d) != all(vec2<bool>(false, false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false)))));
    var var_1 = Struct_4((~abs(var_0.b.x) & (-17805i & u_input.c)) >> (~countOneBits(abs(u_input.d)) % 32u), 0i);
    var_0 = Struct_3(var_0.d, _wgslsmith_mult_vec4_i32(-var_0.b, ~vec4<i32>(~u_input.a, u_input.c, var_0.b.x, var_0.b.x)), Struct_2(1968f, 0i, abs(_wgslsmith_sub_vec2_u32(var_0.c.c, var_0.c.c)), var_0.d, Struct_1(vec2<bool>(true, var_0.e.x | false), var_0.d.b)), Struct_1(select(var_0.c.e.a, !vec2<bool>(var_0.d.a.x, true), all(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, var_0.e.x))), u_input.e), select(vec3<bool>(true, ~var_0.a.b < 1u, !all(var_0.d.a)), var_0.e, !select(select(vec3<bool>(true, var_0.d.a.x, var_0.a.a.x), var_0.e, var_0.c.d.a.x), select(vec3<bool>(false, var_0.e.x, false), vec3<bool>(false, true, true), var_0.e), !vec3<bool>(true, false, var_0.e.x))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1150f);
    let var_3 = ~(vec4<u32>(~105934u, 4294967295u, max(u_input.e, func_3(var_1.a)), u_input.e) ^ vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(4294967295u, u_input.d)), ~_wgslsmith_sub_u32(var_0.c.d.b, u_input.d), var_0.c.e.b, var_0.d.b));
    var var_4 = vec4<bool>(func_1(vec2<u32>(var_0.c.e.b ^ (43454u >> (0u % 32u)), var_0.d.b), var_0.c, Struct_2(_wgslsmith_f_op_f32(round(-1517f)), 49837i & var_0.b.x, ~var_0.c.c, Struct_1(select(var_0.a.a, var_0.c.d.a, true), ~64433u), Struct_1(select(vec2<bool>(var_0.d.a.x, var_0.c.e.a.x), var_0.e.yx, vec2<bool>(true, var_0.e.x)), ~var_0.a.b))), false, _wgslsmith_f_op_f32(-var_0.c.a) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-974f, var_0.c.a)))), true);
    var_0 = Struct_3(Struct_1(!(!select(var_4.zy, var_0.c.d.a, true)), _wgslsmith_div_u32(var_0.a.b, ~min(49896u, var_3.x))), var_0.b, var_0.c, var_0.a, var_0.e);
    var_2 = _wgslsmith_f_op_f32(floor(var_0.c.a));
    var_2 = -732f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.zwx);
}

