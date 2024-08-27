struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_1.a.b;
    var_0 = Struct_1(_wgslsmith_sub_vec2_u32(arg_2.b.a, arg_1.a.b.a), -(countOneBits(arg_1.a.b.b) ^ -(~arg_1.a.b.c)), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(19605i, arg_1.a.b.b.x, 1i) >> (vec3<u32>(arg_1.a.c, 128389u, arg_2.d.x) % vec3<u32>(32u))), arg_1.a.b.b, arg_1.a.b.c), vec2<bool>((u_input.b & arg_1.a.b.b.x) == 1i, true), ~4294967295u);
    let var_1 = -1352f;
    var var_2 = arg_1;
    var_2 = arg_1;
    return Struct_3(var_2.a, ~(~var_2.b));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = vec4<i32>(countOneBits(~u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-4723i, 1i, -(arg_1.a.b.b.x | u_input.b)), ~select(_wgslsmith_sub_vec3_i32(vec3<i32>(26348i, -2147483647i, u_input.e), vec3<i32>(0i, 10896i, u_input.e)), _wgslsmith_add_vec3_i32(vec3<i32>(-11937i, arg_1.a.b.b.x, u_input.e), vec3<i32>(2147483647i, 1i, 2147483647i)), arg_1.a.a)), 1i, arg_1.a.b.c.x ^ ~(arg_1.a.b.b.x | -arg_1.a.b.c.x));
    let var_1 = arg_1;
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(func_3(false, Struct_3(Struct_2(vec3<bool>(true, arg_0.a.e.x, arg_3.d.x), Struct_1(u_input.c.yy, arg_3.c, arg_3.c, arg_0.a.e.zz, u_input.a.x), u_input.d >> (arg_3.e % 32u), arg_3.a, arg_0.a.a), vec4<u32>(u_input.a.x, 15241u, 45684u, 3432u) & vec4<u32>(u_input.a.x, 22570u, arg_0.a.c, 0u)), arg_3.d).a, func_2(-1240f, func_2(arg_1.x, arg_0, func_3(!arg_0.a.e.x, Struct_3(Struct_2(vec3<bool>(arg_3.d.x, true, arg_3.d.x), Struct_1(arg_3.a, arg_0.a.b.b, vec3<i32>(0i, arg_0.a.b.c.x, arg_3.b.x), arg_3.d, arg_0.b.x), arg_0.a.d.x, vec2<u32>(41587u, arg_0.b.x), vec3<bool>(arg_3.d.x, arg_0.a.a.x, false)), vec4<u32>(arg_3.e, u_input.c.x, 4294967295u, 0u)), select(arg_0.a.a.yx, vec2<bool>(false, true), arg_3.d))), arg_0.a).a.b, u_input.d, func_2(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1901f))), any(select(arg_0.a.e, arg_0.a.a, arg_0.a.a.x)))), Struct_3(arg_0.a, arg_0.b), arg_0.a).a.d, arg_0.a.a);
    var_0 = Struct_2(vec3<bool>(!arg_3.d.x, arg_3.d.x, true || any(!arg_3.d)), arg_0.a.b, abs(~(arg_0.b.x >> (89264u % 32u))), min(~max(vec2<u32>(0u, u_input.a.x) << (u_input.a.wx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_3.e, 64049u), vec2<u32>(4294967295u, 69774u))), _wgslsmith_sub_vec2_u32(select(vec2<u32>(arg_3.a.x, arg_0.b.x), var_0.d, func_2(arg_1.x, Struct_3(arg_0.a, u_input.a), arg_0.a).a.a.x), abs(_wgslsmith_mod_vec2_u32(u_input.c.zx, arg_3.a)))), var_0.e);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-275f, arg_1.x)), arg_1.x, !all(arg_0.a.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, arg_1.x, 1000f))))))), true || select(true, var_0.e.x && (919f <= arg_1.x), arg_1.x < _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, arg_0.a.a.x)))));
    var_0 = arg_0.a;
    let var_2 = _wgslsmith_sub_i32(abs(31152i), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(0i, arg_3.c.x, u_input.e, -2147483647i), vec4<i32>(-4042i, 1i, u_input.e, -1i), false), select(min(vec4<i32>(-2147483647i, arg_0.a.b.b.x, var_0.b.c.x, 2147483647i), vec4<i32>(-18850i, var_0.b.b.x, 0i, arg_0.a.b.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(27650i, -1i, u_input.b, 6425i), vec4<i32>(1i, 14915i, -18452i, arg_0.a.b.c.x)), var_0.b.d.x | true)), 1i));
    return func_2(_wgslsmith_f_op_f32(-823f * 111f), arg_0, Struct_2(vec3<bool>(!(17512i <= u_input.b), arg_0.a.a.x, all(vec4<bool>(var_0.e.x, true, arg_3.d.x, arg_0.a.a.x)) && false), arg_3, 0u, var_0.d, func_3(true, func_2(-1191f, arg_0, func_3(arg_3.d.x, arg_0, vec2<bool>(true, arg_0.a.b.d.x))), vec2<bool>(true, true)).e));
}

fn func_5(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_1(func_2(-1186f, arg_0, arg_0.a).a.d, select(vec3<i32>(-(~u_input.e), -(~arg_0.a.b.c.x), 26414i), min(vec3<i32>(u_input.b, -2147483647i, -1i), vec3<i32>(25265i, -1i, arg_0.a.b.c.x)) ^ abs(-arg_0.a.b.c), false), _wgslsmith_mod_vec3_i32(arg_0.a.b.c, ~countOneBits(_wgslsmith_clamp_vec3_i32(arg_0.a.b.b, arg_0.a.b.c, vec3<i32>(-38235i, 0i, u_input.e)))), vec2<bool>(func_3(~arg_0.a.b.c.x >= 0i, func_2(_wgslsmith_f_op_f32(floor(-1403f)), arg_0, arg_0.a), func_2(_wgslsmith_f_op_f32(sign(1718f)), func_4(Struct_3(Struct_2(arg_0.a.e, Struct_1(arg_0.b.ww, arg_0.a.b.c, arg_0.a.b.c, arg_0.a.a.yz, arg_0.a.c), 21882u, vec2<u32>(44111u, arg_0.b.x), arg_0.a.e), u_input.a), vec2<f32>(903f, -1552f), -19827i, Struct_1(vec2<u32>(1u, arg_0.a.c), arg_0.a.b.c, arg_0.a.b.b, arg_0.a.e.xz, 1u)), Struct_2(arg_0.a.a, Struct_1(u_input.c.yz, arg_0.a.b.c, vec3<i32>(u_input.b, -2147483647i, u_input.b), vec2<bool>(true, true), 34585u), 92859u, vec2<u32>(0u, 44043u), arg_0.a.e)).a.e.yy).b.d.x, true && !arg_0.a.b.d.x), max(func_4(func_4(Struct_3(Struct_2(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, true), Struct_1(vec2<u32>(u_input.a.x, 4220u), vec3<i32>(-47676i, 0i, 6654i), arg_0.a.b.c, arg_0.a.a.yx, arg_0.a.c), 45818u, arg_0.b.xw, arg_0.a.e), vec4<u32>(arg_0.a.b.e, 4294967295u, arg_0.b.x, arg_0.a.d.x)), vec2<f32>(1000f, -147f), 33490i, arg_0.a.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(223f, -1242f), vec2<f32>(-1843f, -1384f))), ~(-1136i), Struct_1(arg_0.b.wy, vec3<i32>(0i, 46251i, u_input.e), arg_0.a.b.c, vec2<bool>(true, true), 86448u)).b.x & 6148u, 4294967295u));
    var_0 = arg_0.a.b;
    var_0 = Struct_1(arg_0.a.b.a, -(~(reverseBits(vec3<i32>(var_0.b.x, arg_0.a.b.b.x, u_input.b)) & var_0.b)), select(vec3<i32>(abs(var_0.c.x | 1i), -29103i, select(-1i, _wgslsmith_mod_i32(2491i, 1i), select(arg_0.a.b.d.x, true, var_0.d.x))), vec3<i32>(5591i, arg_0.a.b.c.x, 1i), arg_0.a.b.d.x), arg_0.a.e.zx, ~(~reverseBits(u_input.d)));
    var_0 = func_2(1847f, Struct_3(arg_0.a, _wgslsmith_div_vec4_u32(func_4(func_4(Struct_3(arg_0.a, vec4<u32>(4294967295u, var_0.a.x, 57176u, 0u)), vec2<f32>(1309f, 1630f), 2147483647i, Struct_1(var_0.a, arg_0.a.b.b, vec3<i32>(u_input.e, u_input.b, -69262i), vec2<bool>(arg_0.a.a.x, var_0.d.x), var_0.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 462f)), _wgslsmith_div_i32(2542i, arg_0.a.b.b.x), arg_0.a.b).b, ~vec4<u32>(72261u, var_0.a.x, 0u, arg_0.a.c))), func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -902f))), arg_0, arg_0.a).a).a.b;
    var_0 = func_2(-670f, func_4(arg_0, vec2<f32>(_wgslsmith_f_op_f32(step(-1712f, -774f)), -934f), firstLeadingBit(var_0.b.x), arg_0.a.b), Struct_2(select(!func_3(true, arg_0, vec2<bool>(true, arg_0.a.e.x)).a, vec3<bool>(var_0.d.x, true, true), func_3(arg_0.a.e.x || var_0.d.x, arg_0, func_4(Struct_3(arg_0.a, u_input.a), vec2<f32>(-705f, 704f), arg_0.a.b.b.x, Struct_1(u_input.c.yx, vec3<i32>(2147483647i, arg_0.a.b.c.x, arg_0.a.b.c.x), vec3<i32>(9220i, u_input.e, 1i), vec2<bool>(false, arg_0.a.e.x), 7015u)).a.a.xy).a), arg_0.a.b, ~u_input.c.x, ~select(arg_0.b.xy, max(vec2<u32>(4294967295u, 50957u), vec2<u32>(arg_0.a.b.a.x, arg_0.b.x)), all(var_0.d)), select(vec3<bool>(true, false, !arg_0.a.a.x), vec3<bool>(arg_0.a.b.d.x, any(arg_0.a.a), arg_0.a.a.x), select(func_2(1000f, Struct_3(Struct_2(arg_0.a.a, arg_0.a.b, u_input.d, u_input.c.zz, vec3<bool>(true, var_0.d.x, false)), vec4<u32>(1u, arg_0.a.d.x, 4294967295u, arg_0.a.b.a.x)), arg_0.a).a.b.d.x, var_0.d.x, true)))).a.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))) + -1259f);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1164f, 523f));
    var_0 = _wgslsmith_f_op_f32(func_5(func_4(Struct_3(func_3(u_input.a.x > 25056u, func_2(-764f, Struct_3(Struct_2(vec3<bool>(false, true, arg_0), Struct_1(vec2<u32>(u_input.d, u_input.a.x), vec3<i32>(arg_1.x, 2147483647i, 45290i), vec3<i32>(-2144i, -2147483647i, 19971i), vec2<bool>(arg_0, true), 65026u), u_input.d, u_input.a.zz, vec3<bool>(true, arg_0, true)), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.c.x)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<u32>(5283u, u_input.a.x), vec3<i32>(u_input.b, -5436i, arg_1.x), vec3<i32>(arg_1.x, u_input.b, 1i), vec2<bool>(false, arg_2), 0u), 24704u, u_input.c.zx, vec3<bool>(arg_0, arg_2, false))), !vec2<bool>(arg_2, false)), firstLeadingBit(vec4<u32>(52678u, 4956u, u_input.a.x, 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(181f, -109f) - vec2<f32>(113f, 653f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1088f, 1566f), vec2<f32>(-2034f, 238f)))), u_input.b, func_2(_wgslsmith_f_op_f32(f32(-1f) * -292f), Struct_3(Struct_2(vec3<bool>(false, arg_0, false), Struct_1(vec2<u32>(u_input.d, 4294967295u), vec3<i32>(0i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, arg_1.x, -14289i), vec2<bool>(arg_2, arg_0), 0u), 80852u, vec2<u32>(54436u, u_input.a.x), vec3<bool>(arg_2, arg_0, false)), vec4<u32>(u_input.d, u_input.c.x, 4294967295u, u_input.a.x)), func_2(_wgslsmith_f_op_f32(abs(-709f)), Struct_3(Struct_2(vec3<bool>(true, true, arg_2), Struct_1(vec2<u32>(u_input.a.x, 4294967295u), vec3<i32>(u_input.e, u_input.e, u_input.b), vec3<i32>(u_input.e, -78409i, 0i), vec2<bool>(true, true), 4294967295u), u_input.c.x, vec2<u32>(u_input.d, u_input.c.x), vec3<bool>(false, false, arg_0)), vec4<u32>(0u, 9442u, u_input.c.x, 0u)), func_3(false, Struct_3(Struct_2(vec3<bool>(false, true, arg_2), Struct_1(u_input.a.ww, vec3<i32>(-25267i, 0i, arg_1.x), vec3<i32>(arg_1.x, arg_1.x, 17539i), vec2<bool>(false, true), 2583u), 4294967295u, vec2<u32>(0u, u_input.c.x), vec3<bool>(arg_2, true, arg_2)), u_input.a), vec2<bool>(arg_2, false))).a).a.b)));
    var var_1 = func_3(all(!(!(!vec4<bool>(false, arg_2, false, false)))), func_4(func_4(func_2(1789f, func_4(Struct_3(Struct_2(vec3<bool>(arg_0, arg_0, true), Struct_1(u_input.a.yz, vec3<i32>(-994i, -6762i, arg_1.x), vec3<i32>(arg_1.x, -41984i, arg_1.x), vec2<bool>(arg_0, false), u_input.a.x), u_input.d, vec2<u32>(u_input.a.x, 27864u), vec3<bool>(arg_0, true, arg_2)), vec4<u32>(u_input.d, u_input.d, u_input.a.x, 20666u)), vec2<f32>(915f, 549f), arg_1.x, Struct_1(vec2<u32>(6595u, 1u), vec3<i32>(-2147483647i, -2621i, -1i), vec3<i32>(2147483647i, arg_1.x, -2147483647i), vec2<bool>(false, arg_0), 1u)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<u32>(8847u, 0u), vec3<i32>(u_input.b, arg_1.x, arg_1.x), vec3<i32>(-2147483647i, u_input.e, u_input.b), vec2<bool>(arg_0, true), 37414u), u_input.c.x, u_input.a.wz, vec3<bool>(arg_2, arg_0, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(117f, 1228f)) + vec2<f32>(-118f, 470f)), ~abs(37055i), Struct_1(~vec2<u32>(1450u, u_input.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, -1i, u_input.e), vec3<i32>(u_input.e, u_input.e, -33818i), vec3<i32>(arg_1.x, 65857i, arg_1.x)), -vec3<i32>(2147483647i, arg_1.x, 2147483647i), vec2<bool>(true, true), ~u_input.a.x)), vec2<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1145f))))), min(_wgslsmith_div_i32(1i, arg_1.x), u_input.b), func_3(func_4(Struct_3(Struct_2(vec3<bool>(arg_0, false, arg_2), Struct_1(vec2<u32>(29990u, u_input.a.x), vec3<i32>(-1i, u_input.e, 35242i), vec3<i32>(u_input.e, arg_1.x, u_input.b), vec2<bool>(false, false), u_input.c.x), u_input.d, u_input.c.yy, vec3<bool>(true, arg_2, arg_2)), u_input.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1634f, -1266f), vec2<f32>(-602f, 513f))), func_3(arg_2, Struct_3(Struct_2(vec3<bool>(false, arg_2, arg_0), Struct_1(vec2<u32>(56541u, u_input.c.x), vec3<i32>(-3766i, u_input.b, arg_1.x), vec3<i32>(-50883i, arg_1.x, 0i), vec2<bool>(false, true), u_input.a.x), u_input.d, vec2<u32>(u_input.d, 5330u), vec3<bool>(arg_0, false, false)), u_input.a), vec2<bool>(true, arg_2)).b.b.x, func_2(123f, Struct_3(Struct_2(vec3<bool>(arg_0, arg_0, false), Struct_1(u_input.c.xx, vec3<i32>(arg_1.x, 0i, u_input.b), vec3<i32>(u_input.b, u_input.b, arg_1.x), vec2<bool>(false, false), u_input.c.x), u_input.a.x, vec2<u32>(0u, 1u), vec3<bool>(true, false, true)), u_input.a), Struct_2(vec3<bool>(arg_0, arg_0, arg_0), Struct_1(u_input.c.yy, vec3<i32>(0i, arg_1.x, 1i), vec3<i32>(1i, 1i, 1i), vec2<bool>(arg_0, true), 4294967295u), u_input.a.x, u_input.a.zx, vec3<bool>(false, arg_2, arg_2))).a.b).a.e.x, func_2(_wgslsmith_f_op_f32(min(-1299f, 133f)), func_4(Struct_3(Struct_2(vec3<bool>(true, false, arg_0), Struct_1(u_input.a.yy, vec3<i32>(2147483647i, 1i, -29816i), vec3<i32>(arg_1.x, 2147483647i, u_input.b), vec2<bool>(arg_0, arg_2), 1u), 52128u, vec2<u32>(36339u, u_input.a.x), vec3<bool>(arg_2, arg_0, arg_2)), u_input.a), vec2<f32>(-379f, -1611f), arg_1.x, Struct_1(u_input.a.yy, vec3<i32>(u_input.e, 2147483647i, -1i), vec3<i32>(1i, 2147483647i, 2147483647i), vec2<bool>(false, arg_0), 0u)), func_3(arg_2, Struct_3(Struct_2(vec3<bool>(arg_2, true, true), Struct_1(vec2<u32>(0u, u_input.d), vec3<i32>(arg_1.x, u_input.b, 63368i), vec3<i32>(arg_1.x, arg_1.x, -2147483647i), vec2<bool>(arg_2, false), 4294967295u), u_input.a.x, vec2<u32>(1u, u_input.a.x), vec3<bool>(true, arg_0, arg_0)), u_input.a), vec2<bool>(arg_2, arg_0))), func_3(func_4(Struct_3(Struct_2(vec3<bool>(false, arg_0, false), Struct_1(u_input.c.yx, vec3<i32>(arg_1.x, 2704i, u_input.b), vec3<i32>(-24742i, 2147483647i, 55636i), vec2<bool>(arg_0, arg_2), 8505u), 1u, u_input.c.xz, vec3<bool>(true, false, true)), u_input.a), vec2<f32>(282f, 214f), -2147483647i, Struct_1(vec2<u32>(u_input.c.x, 9762u), vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(arg_1.x, -7610i, arg_1.x), vec2<bool>(true, arg_0), 4885u)).a.a.x, Struct_3(Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<u32>(0u, 4294967295u), vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec2<bool>(false, false), 1u), u_input.a.x, u_input.a.wx, vec3<bool>(arg_0, arg_2, false)), vec4<u32>(4294967295u, u_input.d, u_input.c.x, u_input.a.x)), select(vec2<bool>(arg_0, false), vec2<bool>(false, true), vec2<bool>(true, true))).a.zx).b), vec2<bool>(arg_0, true));
    var var_2 = vec4<i32>(-2147483647i, -var_1.b.b.x, _wgslsmith_sub_i32(u_input.e, -arg_1.x | var_1.b.b.x), _wgslsmith_mod_i32(u_input.b, abs(_wgslsmith_sub_i32(1i, reverseBits(u_input.b)))));
    var var_3 = -1199f;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-879f)), -1000f, true));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    let var_0 = select(vec4<i32>(27146i, ~(~u_input.b), _wgslsmith_mult_i32(0i, i32(-1i) * -44832i), func_3(arg_1.d.x, arg_2, vec2<bool>(true, arg_1.d.x)).b.b.x ^ arg_2.a.b.b.x), vec4<i32>(max(_wgslsmith_div_i32(11526i, u_input.b), _wgslsmith_add_i32(arg_2.a.b.c.x, u_input.e)), arg_1.b.x, ~(u_input.e ^ arg_1.c.x), 1i), _wgslsmith_f_op_f32(-1046f - _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) >> (~func_4(arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xy)), -44043i, func_4(arg_2, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(1737f, -1035f), arg_2.a.e.x)), 29869i << (arg_2.a.b.a.x % 32u), Struct_1(vec2<u32>(u_input.c.x, 0u), vec3<i32>(u_input.e, -2147483647i, -3386i), vec3<i32>(0i, -1i, 0i), arg_1.d, u_input.d)).a.b).b % vec4<u32>(32u));
    let var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(func_1(!(!arg_1.d.x), vec2<i32>(_wgslsmith_add_i32(arg_1.b.x, arg_2.a.b.c.x), arg_2.a.b.b.x), func_3(arg_2.a.b.c.x > -19786i, Struct_3(arg_2.a, vec4<u32>(arg_1.e, arg_1.a.x, 4294967295u, 33475u)), select(vec2<bool>(arg_1.d.x, true), arg_1.d, vec2<bool>(false, true))).a.x)), func_2(-2449f, func_4(func_2(-564f, arg_2, arg_2.a), _wgslsmith_f_op_vec2_f32(max(arg_0.zz, vec2<f32>(arg_0.x, -1291f))), abs(arg_2.a.b.b.x), arg_2.a.b), Struct_2(vec3<bool>(true, false, arg_1.d.x), arg_2.a.b, _wgslsmith_mod_u32(arg_2.a.c, 13685u), abs(u_input.c.yx), !vec3<bool>(arg_1.d.x, arg_2.a.e.x, arg_1.d.x))), arg_2.a).a, ~reverseBits(arg_2.b));
    var var_2 = ~(var_1.b.xxz << (arg_2.b.yzz % vec3<u32>(32u)));
    let var_3 = false;
    let var_4 = ~arg_1.a;
    return firstTrailingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(63360u, 12139u, func_6(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-130f, -962f))), _wgslsmith_f_op_f32(func_1(true, ~vec2<i32>(u_input.e, u_input.b), any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(max(-1050f, _wgslsmith_f_op_f32(abs(-1577f))))), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.d, u_input.d)) | ~u_input.c.yz, -(vec3<i32>(37318i, 3122i, u_input.b) ^ vec3<i32>(18526i, u_input.b, u_input.b)), vec3<i32>(0i, ~u_input.b, 62217i), vec2<bool>(true, true), u_input.c.x), Struct_3(func_4(func_2(-1737f, Struct_3(Struct_2(vec3<bool>(true, true, false), Struct_1(u_input.a.yy, vec3<i32>(65019i, 1i, u_input.e), vec3<i32>(44284i, u_input.b, u_input.e), vec2<bool>(false, true), 47619u), u_input.c.x, vec2<u32>(38082u, 0u), vec3<bool>(true, true, true)), u_input.a), Struct_2(vec3<bool>(true, true, false), Struct_1(u_input.a.xx, vec3<i32>(2147483647i, u_input.e, u_input.b), vec3<i32>(1i, u_input.b, -1i), vec2<bool>(true, true), u_input.d), 4294967295u, u_input.c.xy, vec3<bool>(false, false, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1352f, -294f) + vec2<f32>(-266f, 706f)), 2147483647i, Struct_1(u_input.c.xx, vec3<i32>(-44495i, u_input.b, -1i), vec3<i32>(-20944i, u_input.e, -1i), vec2<bool>(false, true), u_input.a.x)).a, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.yz), u_input.a.x, firstLeadingBit(20491u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 64934u, u_input.d), vec3<u32>(0u, u_input.c.x, u_input.c.x))))));
    var var_1 = 45833u;
    let x = u_input.a;
    s_output = StorageBuffer(~select(max(max(vec2<i32>(u_input.e, u_input.b), vec2<i32>(u_input.b, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, 1i), vec2<i32>(0i, u_input.b), vec2<i32>(u_input.e, -2147483647i))), -vec2<i32>(u_input.e, u_input.b), vec2<bool>(true, true)), countOneBits(reverseBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(8008i, u_input.b), vec2<i32>(u_input.e, u_input.b), vec2<i32>(u_input.b, 0i)))), ~(~(-u_input.b)));
}

