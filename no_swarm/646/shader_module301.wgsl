struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> vec3<f32> {
    var var_0 = ~u_input.b;
    var var_1 = Struct_3(Struct_2(vec4<u32>((arg_1.x & arg_1.x) & 21729u, arg_1.x, 1u, 25312u), any(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c.x, arg_1.x, u_input.c.x), ~vec3<u32>(89151u, u_input.c.x, u_input.c.x)), -567f, !all(vec4<bool>(false, false, true, true))), reverseBits((vec4<i32>(u_input.a, -7802i, 2147483647i, u_input.a) & vec4<i32>(-41970i, u_input.b, -27007i, 1661i)) >> ((vec4<u32>(4294967295u, 0u, 4294967295u, 0u) << (vec4<u32>(1u, arg_2, 4294967295u, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var_1 = Struct_3(var_1.a);
    var_0 = -_wgslsmith_clamp_i32(~(min(33412i, -1i) >> (arg_1.x % 32u)), -41167i, _wgslsmith_sub_i32(-1i, 4594i));
    var var_2 = ~1u;
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_0), var_1.a.c.b, arg_3);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(-148f, ~u_input.c, u_input.c.x, _wgslsmith_f_op_f32(-471f - 722f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, _wgslsmith_f_op_f32(f32(-1f) * -1409f), -1613f)), true));
    return Struct_1(~min(~vec3<u32>(u_input.c.x, 1u, 15701u) ^ firstTrailingBit(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), ~vec3<u32>(u_input.c.x, 4294967295u, 1u), true)), _wgslsmith_f_op_f32(906f * _wgslsmith_f_op_f32(var_0.x - -1000f)), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_3;
    return Struct_2(vec4<u32>(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(44380u, u_input.c.x, 74711u, arg_3.a.x), vec4<u32>(u_input.c.x, 1u, 29513u, var_0.a.x)), ~vec4<u32>(4294967295u, var_0.a.x, 47752u, var_0.a.x)), _wgslsmith_div_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(arg_3.a.x, 1u)), func_2(reverseBits(vec4<i32>(u_input.a, -47449i, u_input.b, u_input.b))).a.x), ~u_input.c.x, u_input.c.x), arg_1.x, func_2(countOneBits(min(vec4<i32>(u_input.b, -71768i, u_input.a, 5930i), vec4<i32>(u_input.b, 35171i, u_input.a, 0i)))), reverseBits(-vec4<i32>(u_input.a >> (arg_3.a.x % 32u), ~u_input.a, min(-17325i, u_input.b), ~u_input.b)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(select(!vec2<bool>(true, !arg_2.c), select(select(vec2<bool>(arg_0.c.c, arg_0.b), !vec2<bool>(arg_1.c.c, false), vec2<bool>(arg_0.c.c, false)), !select(vec2<bool>(arg_1.c.c, true), vec2<bool>(true, arg_1.c.c), vec2<bool>(arg_2.c, arg_2.c)), true), !func_4(vec4<bool>(false, true, arg_1.b, true), vec4<bool>(true, arg_0.c.c, arg_1.c.c, arg_2.c), func_2(arg_1.d), Struct_1(arg_2.a, arg_2.b, arg_1.c.c)).c.c), vec2<bool>(!all(select(vec2<bool>(arg_1.b, arg_2.c), vec2<bool>(arg_1.b, arg_0.b), arg_1.c.c)), all(!vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_0.b)) && arg_1.c.c), arg_2.c);
    let var_1 = Struct_3(Struct_2(min(~(~arg_1.a), arg_0.a), all(vec4<bool>(arg_1.c.b > 1434f, arg_2.c != var_0.x, !arg_2.c, true)), arg_1.c, -abs(arg_0.d)));
    var_0 = vec2<bool>(true, true);
    var_0 = select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.c.c), select(vec2<bool>(true, false && arg_0.b), select(vec2<bool>(true, true), !vec2<bool>(arg_2.c, var_0.x), select(vec2<bool>(arg_1.b, var_1.a.c.c), vec2<bool>(var_0.x, false), true)), 1i <= min(20127i, arg_1.d.x)), all(!select(vec2<bool>(false, false), vec2<bool>(true, false), var_0.x))), true);
    let var_2 = func_4(!select(select(select(vec4<bool>(arg_1.b, true, false, false), vec4<bool>(arg_1.c.c, false, arg_0.c.c, arg_0.c.c), false), select(vec4<bool>(true, true, arg_2.c, arg_2.c), vec4<bool>(false, arg_1.c.c, false, false), vec4<bool>(true, arg_2.c, true, arg_0.b)), select(vec4<bool>(true, arg_2.c, false, false), vec4<bool>(arg_2.c, true, true, true), true)), select(vec4<bool>(true, true, var_1.a.b, false), select(vec4<bool>(arg_2.c, true, var_1.a.b, false), vec4<bool>(false, var_0.x, var_1.a.c.c, false), var_1.a.c.c), vec4<bool>(false, arg_0.b, arg_1.c.c, var_0.x)), !(arg_2.a.x == arg_1.c.a.x)), !vec4<bool>(true, false, true, all(vec4<bool>(false, arg_0.b, arg_2.c, false))), arg_1.c, Struct_1(arg_2.a, -296f, arg_0.c.c)).c.b;
    return Struct_1(var_1.a.a.wxz, _wgslsmith_f_op_f32(floor(638f)), arg_0.d.x <= var_1.a.d.x);
}

fn func_6(arg_0: Struct_1) -> Struct_4 {
    let var_0 = func_4(select(vec4<bool>(any(select(vec2<bool>(arg_0.c, true), vec2<bool>(arg_0.c, false), arg_0.c)), !any(vec2<bool>(arg_0.c, false)), false & (arg_0.b <= 1724f), all(vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c))), !select(select(vec4<bool>(false, arg_0.c, true, true), vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), false), select(vec4<bool>(arg_0.c, true, false, arg_0.c), vec4<bool>(arg_0.c, true, true, arg_0.c), arg_0.c), func_5(Struct_2(vec4<u32>(4294967295u, 0u, 55764u, 4294967295u), arg_0.c, arg_0, vec4<i32>(-58384i, u_input.a, -2147483647i, u_input.b)), Struct_2(vec4<u32>(4294967295u, u_input.c.x, 15360u, arg_0.a.x), arg_0.c, arg_0, vec4<i32>(-1i, 2947i, u_input.a, 2147483647i)), Struct_1(vec3<u32>(0u, u_input.c.x, 28448u), arg_0.b, arg_0.c)).c), func_5(func_4(vec4<bool>(arg_0.c, false, true, true), !vec4<bool>(true, true, arg_0.c, true), arg_0, Struct_1(arg_0.a, -182f, false)), func_4(select(vec4<bool>(true, arg_0.c, arg_0.c, false), vec4<bool>(true, false, arg_0.c, false), vec4<bool>(true, true, false, true)), vec4<bool>(arg_0.c, true, arg_0.c, true), Struct_1(arg_0.a, -468f, arg_0.c), arg_0), func_4(vec4<bool>(true, arg_0.c, false, false), select(vec4<bool>(arg_0.c, true, false, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c)), Struct_1(vec3<u32>(918u, 84474u, u_input.c.x), arg_0.b, arg_0.c), Struct_1(vec3<u32>(u_input.c.x, 3779u, arg_0.a.x), -1069f, arg_0.c)).c).c), select(select(vec4<bool>(true, func_5(Struct_2(vec4<u32>(0u, 43698u, 36664u, 0u), true, Struct_1(arg_0.a, -174f, arg_0.c), vec4<i32>(1i, 7762i, 2147483647i, u_input.a)), Struct_2(vec4<u32>(29076u, arg_0.a.x, 84023u, 24213u), arg_0.c, arg_0, vec4<i32>(1393i, 24155i, -1i, 16189i)), Struct_1(arg_0.a, arg_0.b, false)).c, !arg_0.c, arg_0.c && arg_0.c), !select(vec4<bool>(false, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, true, false, arg_0.c), vec4<bool>(true, true, arg_0.c, false)), false), vec4<bool>(func_2(~vec4<i32>(u_input.b, u_input.a, u_input.a, 0i)).c, true, (u_input.b << (108227u % 32u)) > u_input.b, (arg_0.b == arg_0.b) & any(vec4<bool>(arg_0.c, arg_0.c, true, false))), !vec4<bool>(arg_0.b < -1262f, false, false, arg_0.c)), func_2(-vec4<i32>(u_input.a, ~0i, _wgslsmith_mod_i32(-2147483647i, -1i), countOneBits(u_input.a))), Struct_1(vec3<u32>(~(arg_0.a.x ^ u_input.c.x), u_input.c.x, arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.b), (1i != u_input.b) != true));
    let var_1 = -(~vec2<i32>(28037i, -2147483647i));
    var var_2 = func_5(func_4(!select(select(vec4<bool>(var_0.c.c, false, false, var_0.b), vec4<bool>(true, arg_0.c, true, false), vec4<bool>(arg_0.c, false, var_0.c.c, true)), !vec4<bool>(arg_0.c, var_0.b, false, arg_0.c), true), select(vec4<bool>(true, true, arg_0.c || arg_0.c, var_0.b), vec4<bool>(var_0.b, true, var_0.c.c, all(vec3<bool>(arg_0.c, arg_0.c, true))), func_4(select(vec4<bool>(true, false, arg_0.c, arg_0.c), vec4<bool>(var_0.c.c, true, var_0.c.c, var_0.c.c), vec4<bool>(false, arg_0.c, arg_0.c, false)), vec4<bool>(false, true, false, false), Struct_1(var_0.a.yzz, 1193f, arg_0.c), var_0.c).b), func_2(vec4<i32>(~var_0.d.x, 13265i, _wgslsmith_mod_i32(u_input.a, 2147483647i), 0i)), arg_0), var_0, Struct_1(_wgslsmith_mult_vec3_u32(func_4(vec4<bool>(false, true, var_0.c.c, arg_0.c), select(vec4<bool>(arg_0.c, arg_0.c, true, var_0.b), vec4<bool>(arg_0.c, false, var_0.c.c, arg_0.c), vec4<bool>(arg_0.c, true, false, false)), var_0.c, var_0.c).c.a, var_0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) * var_0.c.b), all(!vec4<bool>(var_0.c.c, true, arg_0.c, var_0.b)) | arg_0.c)).a.xx;
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(486i, -_wgslsmith_mult_i32(0i, 0i)) & (u_input.a << (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(0u, var_0.a.x, var_2.x))) % 32u)), u_input.b);
    var var_4 = select(vec2<bool>(var_0.d.x > 0i, true), vec2<bool>(true, true), vec2<bool>(false, true));
    return Struct_4(~(firstLeadingBit(vec4<i32>(-1i, u_input.a, u_input.a, var_1.x)) ^ ~reverseBits(var_0.d)), Struct_2(vec4<u32>(_wgslsmith_mod_u32(var_2.x, arg_0.a.x) << (reverseBits(22414u) % 32u), arg_0.a.x, ~reverseBits(1u), arg_0.a.x), func_2(~vec4<i32>(-61421i, var_1.x, u_input.a, -18830i)).c, func_2(select(abs(var_0.d), -vec4<i32>(u_input.b, var_1.x, -15851i, 3580i), vec4<bool>(true, false, false, false))), var_0.d), var_0, Struct_1(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(var_0.c.a, ~var_0.c.a), max(var_0.a.x, ~4294967295u)), -1039f, ~(91373u >> (u_input.c.x % 32u)) > (4294967295u >> (func_2(var_0.d).a.x % 32u))));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = func_6(func_5(Struct_2(abs(vec4<u32>(1u, u_input.c.x, u_input.c.x, 1u)), false, Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(6502u, 5885u, u_input.c.x)), _wgslsmith_f_op_f32(-499f - -1028f), false), ~(vec4<i32>(u_input.a, -1i, 15895i, u_input.b) ^ vec4<i32>(u_input.a, 59130i, u_input.b, 2147483647i))), func_4(!(!vec4<bool>(false, false, true, arg_0)), select(!vec4<bool>(arg_0, true, true, false), vec4<bool>(true, arg_0, arg_0, arg_0), arg_0 && arg_0), func_2(vec4<i32>(39176i, u_input.a, u_input.b, -1i)), Struct_1(vec3<u32>(1u, 6385u, 61263u), -1058f, func_2(vec4<i32>(-28i, u_input.b, u_input.b, u_input.b)).c)), func_4(!vec4<bool>(false, false, false, arg_0), vec4<bool>(false, arg_0, arg_0, true), func_2(vec4<i32>(-35615i, u_input.b, 543i, -34439i)), func_4(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(false, arg_0, false, false), Struct_1(vec3<u32>(59477u, u_input.c.x, 0u), 1158f, true), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), -586f, arg_0)).c).c));
    let var_1 = Struct_3(var_0.c);
    var var_2 = false;
    let var_3 = Struct_2((var_1.a.a ^ _wgslsmith_mult_vec4_u32(func_4(vec4<bool>(false, true, true, false), vec4<bool>(arg_0, true, arg_0, var_1.a.b), Struct_1(vec3<u32>(var_1.a.c.a.x, 51249u, 35303u), 1000f, false), Struct_1(vec3<u32>(var_1.a.a.x, var_1.a.c.a.x, u_input.c.x), var_1.a.c.b, true)).a, max(vec4<u32>(var_0.b.a.x, 3074u, var_0.c.a.x, u_input.c.x), var_0.c.a))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(74358u, 27248u), var_0.b.c.a.x << (28158u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(48357u, 34692u), var_0.d.a.yz), var_1.a.c.a.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(101411u, 0u, 893u), var_1.a.a.zxx), func_2(var_1.a.d).a.x, 0u, _wgslsmith_mod_u32(1223u, var_0.b.c.a.x)), ~_wgslsmith_mod_vec4_u32(var_1.a.a, vec4<u32>(5451u, 94934u, 14255u, 64433u))) % vec4<u32>(32u)), false, var_0.b.c, abs(~(-var_1.a.d)));
    var_0 = func_6(Struct_1(~var_1.a.c.a << (select(func_5(var_3, Struct_2(var_1.a.a, var_0.d.c, var_1.a.c, vec4<i32>(-2147483647i, 8192i, -29635i, var_3.d.x)), Struct_1(vec3<u32>(61705u, u_input.c.x, 4294967295u), var_3.c.b, var_1.a.b)).a, ~vec3<u32>(0u, var_1.a.c.a.x, var_1.a.a.x), !vec3<bool>(true, var_1.a.c.c, var_1.a.b)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(-1391f)), false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.c.b, var_1.a.c.b) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c.b, var_1.a.c.b) * _wgslsmith_f_op_f32(var_0.c.c.b + var_3.c.b))) - _wgslsmith_f_op_f32(-var_3.c.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.c.c.b)), -1000f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1087f + 440f) * _wgslsmith_div_f32(983f, var_1.a.c.b))), 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), any(!vec3<bool>(all(vec3<bool>(false, true, false)), false, true)), _wgslsmith_f_op_f32(484f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false)))) >= func_4(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_6(func_6(Struct_1(vec3<u32>(7088u, u_input.c.x, u_input.c.x), 316f, false)).b.c).c.c, Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 28680u, 1u), vec3<u32>(u_input.c.x, u_input.c.x, 0u)), _wgslsmith_f_op_f32(select(-3736f, 697f, false)), true)).c.b, true);
    let var_1 = Struct_3(func_6(func_4(!(!vec4<bool>(false, var_0.x, true, true)), !select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x), func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(39140i, u_input.b, u_input.b, 0i), vec4<i32>(-34966i, -8918i, u_input.b, u_input.a))), func_6(func_4(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), Struct_1(vec3<u32>(99044u, u_input.c.x, u_input.c.x), 1000f, var_0.x), Struct_1(vec3<u32>(u_input.c.x, 1u, u_input.c.x), -1166f, var_0.x)).c).c.c).c).c);
    var var_2 = _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(3318u, abs(var_1.a.c.a.x)));
    var var_3 = u_input.c.x;
    var var_4 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.a.a.x, func_4(!select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, var_1.a.b, var_1.a.b, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), !(!vec4<bool>(var_1.a.c.c, var_1.a.c.c, true, var_1.a.b)), func_4(vec4<bool>(var_1.a.c.c, var_0.x, var_0.x, true), vec4<bool>(true, true, false, var_0.x), Struct_1(var_1.a.c.a, -1712f, true), func_6(Struct_1(var_1.a.c.a, var_1.a.c.b, var_1.a.c.c)).d).c, var_1.a.c).a.x, 0u), var_1.a.a.x);
    let var_5 = Struct_3(var_1.a);
    var var_6 = vec2<bool>(any(select(select(!vec4<bool>(true, var_5.a.b, true, var_0.x), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_1.a.b, var_1.a.b, false, var_1.a.c.c), vec4<bool>(var_5.a.b, false, var_0.x, false)), 30613u > var_5.a.a.x), vec4<bool>(false, select(true, false, false), var_1.a.c.c, var_1.a.c.c), !(u_input.c.x < 94577u))), var_1.a.c.c);
    var_2 = func_6(func_2(~var_1.a.d)).c.c.a.x;
    var_6 = vec2<bool>(!func_6(func_6(Struct_1(vec3<u32>(1u, u_input.c.x, 0u), var_1.a.c.b, true)).d).b.b, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_1.a.c.a.x, ~_wgslsmith_mod_u32(var_5.a.c.a.x, var_5.a.a.x)), abs(select(~_wgslsmith_add_u32(u_input.c.x, 36522u), ~func_4(vec4<bool>(true, var_6.x, false, true), vec4<bool>(false, false, false, false), Struct_1(var_1.a.a.yzx, 504f, var_6.x), var_5.a.c).a.x, var_5.a.b)), var_1.a.a.x, vec3<f32>(_wgslsmith_div_f32(var_5.a.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(480f - 189f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.c.b, _wgslsmith_f_op_f32(f32(-1f) * -371f)) * var_1.a.c.b), var_1.a.c.b));
}

