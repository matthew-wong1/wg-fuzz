struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1002f;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(141f, -1041f, 870f, 1069f))))))), vec3<u32>(4433u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 1u)), abs(vec3<u32>(u_input.b.x, 1u, u_input.b.x))) << (((u_input.b.x & 28276u) >> (u_input.b.x % 32u)) % 32u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), 12239u);
    var var_1 = Struct_3(false, Struct_2(abs(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 14360u) ^ vec4<u32>(4294967295u, 38958u, 17103u, var_0.c)), var_0, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a))), vec3<u32>(46095u, u_input.b.x, reverseBits(63759u)), 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(37363u, 0u, 37349u), ~vec3<u32>(1u, var_0.c & 4294967295u, 4294967295u)), _wgslsmith_f_op_vec2_f32(var_0.a.yy * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.a.xx * vec2<f32>(var_0.a.x, var_0.a.x))))), Struct_2(_wgslsmith_add_vec4_u32(~max(vec4<u32>(0u, var_0.c, 39279u, 1u), vec4<u32>(59380u, 0u, var_0.b.x, 4294967295u)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c, 4294967295u, 0u, u_input.b.x), vec4<u32>(1u, var_0.b.x, var_0.b.x, 44887u), vec4<u32>(7721u, 32611u, 43455u, var_0.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, 92994u, var_0.b.x, u_input.b.x), vec4<u32>(4294967295u, 65990u, var_0.c, 1u)))), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-920f * -2166f), -1309f), ~abs(vec3<u32>(u_input.b.x, 12698u, 1u)), ~4294967295u), var_0));
    var var_2 = Struct_3(true, var_1.b, ~vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, ~var_0.c), var_1.e.b.b.x, var_0.b.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(457f))) * _wgslsmith_f_op_f32(-var_1.b.c.a.x)), _wgslsmith_f_op_f32(sign(var_0.a.x))), Struct_2(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, 6637u), 4294967295u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.c, 4294967295u, 4294967295u), var_1.b.a)), var_0.c, u_input.b.x), var_1.b.c, var_0));
    var var_3 = any(vec3<bool>(all(vec2<bool>(var_1.a, true)), (_wgslsmith_dot_vec3_i32(vec3<i32>(19515i, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i)) >> (var_0.b.x % 32u)) == (u_input.a & ~(-1i)), false));
    var var_4 = Struct_4(Struct_2(var_2.b.a, Struct_1(var_1.b.c.a, _wgslsmith_sub_vec3_u32(var_2.c & var_1.e.c.b, vec3<u32>(11317u, var_0.b.x, 72020u)), ~(0u >> (var_2.c.x % 32u))), var_2.b.c), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1165f, 169f, var_2.b.c.a.x, var_2.b.c.a.x))))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.b.x, var_0.c), abs(var_0.b.x), var_0.b.x), (vec3<u32>(var_0.c, u_input.b.x, u_input.b.x) >> (var_1.c % vec3<u32>(32u))) << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u))), 32577u), select(select(vec2<bool>(true, true), !select(vec2<bool>(var_1.a, var_2.a), vec2<bool>(var_2.a, true), var_1.a), any(vec2<bool>(var_1.a, false)) || var_2.a), !(!select(vec2<bool>(false, false), vec2<bool>(var_1.a, var_2.a), var_2.a)), false), Struct_3(false, var_1.b, ~vec3<u32>(27085u, 0u, select(13842u, var_0.b.x, false)), _wgslsmith_f_op_vec2_f32(round(var_1.b.b.a.zw)), var_2.e), vec4<bool>(false, firstLeadingBit(_wgslsmith_mod_i32(u_input.a, u_input.a)) < -max(u_input.a, u_input.a), var_2.a, all(select(select(vec3<bool>(var_1.a, var_2.a, var_2.a), vec3<bool>(var_2.a, var_1.a, false), vec3<bool>(var_2.a, var_1.a, var_2.a)), vec3<bool>(var_2.a, var_1.a, true), !vec3<bool>(var_2.a, var_1.a, var_1.a)))));
    return true;
}

fn func_2(arg_0: Struct_4) -> bool {
    global0 = arg_0.b.a.x;
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(step(arg_0.a.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(376f - -300f) * _wgslsmith_f_op_f32(-365f * arg_0.b.a.x)))) <= _wgslsmith_f_op_f32(trunc(arg_0.d.d.x)), !arg_0.d.a, func_3());
    let var_1 = -vec3<i32>(_wgslsmith_clamp_i32(min(max(-11277i, u_input.a), ~u_input.a), ~u_input.a, select(20427i, -u_input.a, !var_0.x)), -min(u_input.a, -70012i), min(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1637i, u_input.a, u_input.a), vec3<i32>(u_input.a, -35935i, u_input.a)) ^ 1i));
    let var_2 = !(!arg_0.e.yz);
    var var_3 = any(!select(!(!arg_0.e), arg_0.e, arg_0.e));
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(min(1823f, _wgslsmith_f_op_f32(f32(-1f) * -703f)));
    let var_0 = vec3<bool>(!select(true, !all(vec3<bool>(arg_1.d.a, false, false)), any(!arg_1.e.zwx)), !(!arg_1.e.x), func_2(arg_1));
    var var_1 = arg_3.c.b.x;
    var_1 = 36737u;
    let var_2 = false;
    return Struct_4(Struct_2(vec4<u32>(~(~52517u), 21933u, arg_3.c.b.x, abs(arg_3.b.c)), arg_1.d.b.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.a.x * 921f), _wgslsmith_f_op_f32(arg_0.b.c.a.x - -1759f), _wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_f32(-693f + arg_1.b.a.x)), arg_3.b.b, arg_0.c.x << ((arg_1.a.b.b.x & arg_3.b.b.x) % 32u))), arg_1.a.c, var_0.zz, Struct_3(true, Struct_2(arg_0.e.a, Struct_1(vec4<f32>(253f, -810f, -781f, arg_0.d.x), ~arg_1.b.b, countOneBits(arg_1.b.b.x)), Struct_1(_wgslsmith_div_vec4_f32(arg_0.e.b.a, vec4<f32>(arg_3.c.a.x, arg_1.a.b.a.x, 1601f, arg_1.d.d.x)), arg_0.c, ~arg_0.c.x)), countOneBits(select(arg_0.c, vec3<u32>(arg_0.b.a.x, 79560u, arg_0.b.a.x), arg_1.e.x) << (reverseBits(vec3<u32>(u_input.b.x, arg_0.c.x, arg_3.b.c)) % vec3<u32>(32u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.c.a.zy + _wgslsmith_f_op_vec2_f32(-arg_0.d)), _wgslsmith_f_op_vec2_f32(-arg_3.b.a.yy)), arg_0.e), vec4<bool>(!(!all(vec2<bool>(true, var_2))), ~_wgslsmith_clamp_u32(57677u, arg_3.b.b.x, arg_3.c.b.x) > 0u, true, func_2(Struct_4(Struct_2(vec4<u32>(arg_0.c.x, 0u, arg_3.b.c, arg_0.e.a.x), Struct_1(vec4<f32>(691f, -1214f, arg_0.e.c.a.x, 419f), vec3<u32>(32125u, arg_3.b.b.x, u_input.b.x), 34602u), Struct_1(vec4<f32>(-233f, 1356f, 734f, arg_0.b.c.a.x), vec3<u32>(arg_0.e.c.c, arg_3.b.c, u_input.b.x), 0u)), arg_0.b.b, vec2<bool>(false, false), Struct_3(arg_1.e.x, Struct_2(arg_3.a, arg_1.b, arg_1.a.c), vec3<u32>(arg_3.c.b.x, 18808u, arg_0.c.x), vec2<f32>(1024f, arg_0.e.c.a.x), arg_3), arg_1.e))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: f32, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = Struct_3(!arg_1.e.x, arg_1.a, arg_1.d.e.a.zyy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_1.d.e.c.a.x) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-476f, arg_2)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.a.x, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))), Struct_2(~max(arg_1.a.a, arg_1.a.a) ^ ~min(arg_1.d.e.a, arg_1.a.a), func_1(Struct_3(arg_3.x, Struct_2(arg_1.a.a, Struct_1(vec4<f32>(382f, arg_1.a.c.a.x, 787f, 1000f), vec3<u32>(arg_0.x, 10738u, 1u), 3553u), Struct_1(arg_1.a.b.a, vec3<u32>(arg_1.d.e.b.c, 4294967295u, 78157u), 0u)), vec3<u32>(arg_0.x, u_input.b.x, 4294967295u), arg_1.d.b.b.a.xy, arg_1.a), arg_1, -(1i << (u_input.b.x % 32u)), arg_1.d.e).b, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1256f, arg_2, 1134f, arg_1.d.d.x)), arg_1.b.b, ~0u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-676f * 264f) - var_0.d.x)))));
    var_0 = Struct_3((~arg_0.x << ((~1u ^ ~arg_1.d.e.b.c) % 32u)) > firstLeadingBit(_wgslsmith_mod_u32(func_1(Struct_3(false, Struct_2(vec4<u32>(1u, 63226u, arg_0.x, 86058u), Struct_1(arg_1.a.c.a, vec3<u32>(7633u, arg_1.d.e.c.c, 1u), u_input.b.x), Struct_1(arg_1.a.c.a, vec3<u32>(91306u, 0u, arg_0.x), u_input.b.x)), vec3<u32>(arg_0.x, 4774u, 1u), vec2<f32>(arg_2, arg_2), var_0.e), Struct_4(Struct_2(var_0.b.a, Struct_1(vec4<f32>(var_0.b.b.a.x, 866f, arg_1.d.b.b.a.x, arg_2), vec3<u32>(arg_1.a.c.b.x, arg_0.x, 26491u), u_input.b.x), arg_1.b), Struct_1(arg_1.a.c.a, vec3<u32>(50941u, arg_1.d.b.b.c, 1u), arg_1.b.b.x), arg_1.c, Struct_3(true, Struct_2(var_0.e.a, Struct_1(arg_1.b.a, var_0.c, 65714u), var_0.b.b), vec3<u32>(0u, 4294967295u, arg_1.d.b.a.x), arg_1.b.a.xz, Struct_2(var_0.b.a, var_0.e.c, Struct_1(vec4<f32>(1994f, 705f, var_0.b.b.a.x, -2057f), arg_0, u_input.b.x))), vec4<bool>(true, arg_1.c.x, arg_3.x, true)), u_input.a, Struct_2(vec4<u32>(arg_1.d.e.c.c, 44466u, u_input.b.x, 3349u), Struct_1(arg_1.a.b.a, vec3<u32>(53478u, 1u, arg_0.x), u_input.b.x), Struct_1(vec4<f32>(612f, -519f, -666f, arg_1.d.b.c.a.x), arg_0, arg_1.a.c.c))).b.b.x, ~u_input.b.x)), arg_1.d.e, arg_1.d.b.a.xwy, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f + _wgslsmith_f_op_f32(-arg_1.d.d.x)) - arg_1.a.b.a.x), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.a.x)))), func_1(arg_1.d, arg_1, _wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, arg_1.d.a))), reverseBits(select(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 4859i), vec2<bool>(false, false)))), Struct_2(firstLeadingBit(vec4<u32>(u_input.b.x, var_0.c.x, u_input.b.x, 4294967295u) << (vec4<u32>(46786u, var_0.b.a.x, 68166u, 523u) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.b.a + vec4<f32>(141f, arg_1.b.a.x, arg_2, 1896f)), arg_0, 1u), arg_1.b)).a);
    let var_1 = ~_wgslsmith_sub_u32(1u, arg_0.x);
    global0 = _wgslsmith_f_op_f32(select(arg_1.b.a.x, arg_2, select(false, var_0.a, !arg_1.c.x)));
    return func_1(func_1(Struct_3(any(arg_1.e.zyy), Struct_2(vec4<u32>(8597u, var_0.e.c.b.x, 37520u, var_0.e.b.c), Struct_1(var_0.b.b.a, var_0.c, 14911u), func_1(arg_1.d, arg_1, 1i, arg_1.a).b), vec3<u32>(var_1, 19654u, u_input.b.x ^ 4294967295u), arg_1.b.a.yz, Struct_2(vec4<u32>(arg_1.d.e.b.c, 3780u, 19496u, 48714u) ^ var_0.b.a, var_0.b.b, Struct_1(vec4<f32>(-1441f, arg_2, -1000f, arg_2), arg_1.d.c, 1u))), Struct_4(Struct_2(vec4<u32>(u_input.b.x, var_1, 71894u, 3551u), func_1(arg_1.d, arg_1, 2147483647i, Struct_2(vec4<u32>(38941u, 113243u, 1u, 24556u), var_0.e.c, arg_1.d.e.b)).d.e.b, func_1(Struct_3(arg_3.x, var_0.b, var_0.c, var_0.d, arg_1.a), Struct_4(Struct_2(vec4<u32>(24173u, arg_1.d.e.c.b.x, 40703u, u_input.b.x), var_0.e.b, var_0.b.b), var_0.b.b, arg_1.c, Struct_3(arg_3.x, var_0.b, vec3<u32>(arg_0.x, u_input.b.x, 0u), var_0.d, arg_1.a), arg_1.e), u_input.a, Struct_2(vec4<u32>(4294967295u, u_input.b.x, arg_0.x, arg_0.x), Struct_1(vec4<f32>(arg_1.a.c.a.x, 184f, arg_2, arg_1.d.d.x), vec3<u32>(7354u, 1u, var_1), 9195u), arg_1.d.b.c)).d.b.c), arg_1.a.b, arg_1.e.zx, Struct_3(arg_1.c.x, Struct_2(vec4<u32>(var_0.b.a.x, arg_1.a.b.b.x, 25503u, 47864u), Struct_1(var_0.e.b.a, var_0.b.b.b, arg_0.x), Struct_1(arg_1.d.e.c.a, vec3<u32>(10322u, 41430u, 4294967295u), u_input.b.x)), ~arg_1.b.b, vec2<f32>(arg_2, var_0.d.x), func_1(arg_1.d, Struct_4(Struct_2(vec4<u32>(0u, 21419u, u_input.b.x, 1u), Struct_1(vec4<f32>(arg_2, arg_1.b.a.x, var_0.d.x, var_0.d.x), vec3<u32>(0u, u_input.b.x, 0u), u_input.b.x), Struct_1(arg_1.d.e.b.a, vec3<u32>(arg_1.d.e.c.c, 128737u, arg_0.x), arg_1.d.b.a.x)), Struct_1(vec4<f32>(-1000f, arg_1.a.c.a.x, -1000f, 115f), var_0.e.b.b, var_1), vec2<bool>(var_0.a, false), arg_1.d, arg_1.e), 2147483647i, Struct_2(vec4<u32>(0u, arg_1.a.b.b.x, 1u, u_input.b.x), var_0.e.c, Struct_1(arg_1.d.e.b.a, var_0.e.a.wzw, arg_0.x))).a), arg_1.e), reverseBits(countOneBits(-17114i)), Struct_2(_wgslsmith_clamp_vec4_u32(~arg_1.d.e.a, arg_1.d.b.a | arg_1.a.a, ~vec4<u32>(9291u, 4436u, 35446u, 0u)), arg_1.a.c, arg_1.a.b)).d, arg_1, _wgslsmith_add_i32(~u_input.a, u_input.a | u_input.a), var_0.b);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_2(func_1(arg_0.d, arg_0, arg_1.x, Struct_2(~arg_0.d.e.a, arg_0.b, Struct_1(vec4<f32>(arg_0.b.a.x, 193f, arg_2, arg_0.a.b.a.x), arg_0.b.b, 36654u))).a.a >> (~(~_wgslsmith_div_vec4_u32(arg_0.d.e.a, arg_0.d.b.a)) % vec4<u32>(32u)), func_1(Struct_3(true, arg_0.a, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, arg_0.b.b.x, 4294967295u), arg_0.b.b, arg_0.b.b), arg_0.b.b), arg_0.b.a.xz, func_1(Struct_3(true, arg_0.a, arg_0.d.c, vec2<f32>(arg_0.b.a.x, 167f), arg_0.a), func_1(Struct_3(false, Struct_2(arg_0.a.a, arg_0.d.e.c, Struct_1(arg_0.d.e.b.a, vec3<u32>(arg_0.b.c, 22811u, 1u), arg_0.b.b.x)), arg_0.a.c.b, vec2<f32>(arg_2, arg_0.a.c.a.x), Struct_2(arg_0.a.a, arg_0.d.b.b, arg_0.a.b)), arg_0, u_input.a, arg_0.d.b), arg_1.x, arg_0.d.b).d.e), arg_0, u_input.a, arg_0.d.b).b, func_1(func_4(arg_0.b.b, arg_0, arg_0.b.a.x, !arg_0.c).d, arg_0, _wgslsmith_clamp_i32(-77596i, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -2147483647i, 0i, 1i), abs(vec4<i32>(u_input.a, u_input.a, 0i, 30398i))), _wgslsmith_div_i32(-37636i, ~6431i)), arg_0.d.e).b);
    let var_1 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(29783u, _wgslsmith_mult_u32(1u, 0u), arg_0.d.b.b.b.x & (arg_0.b.c & var_0.a.x))), min(firstLeadingBit(~vec3<u32>(var_0.a.x, u_input.b.x, 0u)) << (var_0.a.www % vec3<u32>(32u)), vec3<u32>(67800u, 4294967295u, _wgslsmith_sub_u32(4294967295u, ~1u))));
    let var_2 = 5930u;
    global0 = var_0.c.a.x;
    var var_3 = var_0;
    return Struct_3(_wgslsmith_div_f32(857f, -1142f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-279f, 1301f)) - _wgslsmith_f_op_f32(select(var_0.b.a.x, -757f, arg_0.d.a)))), var_0, abs(var_0.a.wzx) & ~var_3.a.yyz, vec2<f32>(arg_2, _wgslsmith_f_op_f32(sign(815f))), Struct_2(select(~vec4<u32>(var_0.c.c, 0u, 1u, 13030u), vec4<u32>(firstLeadingBit(var_2), ~4294967295u, _wgslsmith_dot_vec3_u32(arg_0.b.b, arg_0.a.c.b), 0u), reverseBits(arg_3) <= -2147483647i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(arg_2)), var_0.b.a.x, 472f, arg_2), vec3<u32>(var_0.a.x, var_2 << (1u % 32u), var_2), u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(var_3.b.a + _wgslsmith_f_op_vec4_f32(-arg_0.d.e.b.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, var_0.b.c, 0u), var_3.a.zww) ^ vec3<u32>(4294967295u, 71433u, 1u), _wgslsmith_mult_u32(~var_1, ~var_2))));
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1000f)))))) - _wgslsmith_f_op_f32(f32(-1f) * -1642f));
    let var_0 = arg_1.e.c;
    var var_1 = !(!vec4<bool>(!(arg_1.a & true), !func_3(), !arg_1.a, true));
    global0 = _wgslsmith_f_op_f32(-878f - 1273f);
    var var_2 = !arg_1.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-998f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_6(firstLeadingBit(-2147483647i), func_5(func_4(~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), func_1(Struct_3(true, Struct_2(vec4<u32>(33330u, 20016u, 1u, 21940u), Struct_1(vec4<f32>(-418f, -143f, -1078f, -567f), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), 0u), Struct_1(vec4<f32>(-440f, -136f, 1023f, -468f), vec3<u32>(9137u, u_input.b.x, 950u), 0u)), vec3<u32>(37995u, u_input.b.x, u_input.b.x), vec2<f32>(-124f, -169f), Struct_2(vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u), Struct_1(vec4<f32>(-2305f, -719f, -1029f, 278f), vec3<u32>(29263u, 0u, u_input.b.x), 1u), Struct_1(vec4<f32>(1839f, -902f, 2912f, -215f), vec3<u32>(9270u, u_input.b.x, u_input.b.x), 4294967295u))), Struct_4(Struct_2(vec4<u32>(u_input.b.x, 19606u, u_input.b.x, 1198u), Struct_1(vec4<f32>(-2007f, -1585f, 1000f, -522f), vec3<u32>(0u, 48131u, u_input.b.x), 34478u), Struct_1(vec4<f32>(484f, -953f, 242f, -461f), vec3<u32>(0u, 34375u, 28785u), 4294967295u)), Struct_1(vec4<f32>(1302f, 966f, 1236f, 1947f), vec3<u32>(u_input.b.x, 109944u, u_input.b.x), u_input.b.x), vec2<bool>(false, false), Struct_3(false, Struct_2(vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x), Struct_1(vec4<f32>(-769f, -1331f, 564f, 3246f), vec3<u32>(u_input.b.x, 1u, u_input.b.x), 33658u), Struct_1(vec4<f32>(635f, 495f, 1999f, -259f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), 72715u)), vec3<u32>(u_input.b.x, 12503u, 1u), vec2<f32>(-1156f, 335f), Struct_2(vec4<u32>(u_input.b.x, 1315u, 79057u, 4294967295u), Struct_1(vec4<f32>(1792f, 592f, -1064f, -694f), vec3<u32>(44749u, u_input.b.x, u_input.b.x), u_input.b.x), Struct_1(vec4<f32>(-1880f, 1010f, -659f, 278f), vec3<u32>(u_input.b.x, u_input.b.x, 40160u), 1u))), vec4<bool>(false, false, false, true)), 0i, Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), Struct_1(vec4<f32>(-318f, 1179f, 1313f, 1037f), vec3<u32>(u_input.b.x, u_input.b.x, 0u), 1u), Struct_1(vec4<f32>(-722f, -956f, -1034f, -618f), vec3<u32>(0u, 1u, 1u), 4294967295u))), -1316f, vec2<bool>(false, false)), min(vec3<i32>(u_input.a, -26045i, -19609i), vec3<i32>(0i, u_input.a, u_input.a)) & vec3<i32>(-54255i, 0i, 1971i), _wgslsmith_f_op_f32(ceil(-403f)), _wgslsmith_add_i32(~(-1i), -u_input.a)))));
    var var_0 = u_input.b.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1127f)) - _wgslsmith_f_op_f32(func_6(u_input.a, Struct_3(false, Struct_2(vec4<u32>(31210u, u_input.b.x, 4294967295u, 35122u), Struct_1(vec4<f32>(943f, 758f, -1408f, 1048f), vec3<u32>(1u, 28442u, 4294967295u), u_input.b.x), Struct_1(vec4<f32>(718f, 418f, -1000f, -1587f), vec3<u32>(20206u, u_input.b.x, u_input.b.x), u_input.b.x)), vec3<u32>(47442u, 112543u, u_input.b.x), vec2<f32>(-399f, -436f), Struct_2(vec4<u32>(11146u, 4294967295u, 4294967295u, 58449u), Struct_1(vec4<f32>(-703f, 673f, 1255f, -1000f), vec3<u32>(20934u, 92825u, u_input.b.x), u_input.b.x), Struct_1(vec4<f32>(198f, -783f, -777f, -681f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x)))))))));
    var var_1 = !(true | all(func_1(Struct_3(false, Struct_2(vec4<u32>(u_input.b.x, 0u, 1u, 4294967295u), Struct_1(vec4<f32>(-1083f, 291f, 117f, -116f), vec3<u32>(1u, 0u, 4294967295u), 0u), Struct_1(vec4<f32>(-2899f, -1982f, -439f, -1000f), vec3<u32>(62150u, u_input.b.x, u_input.b.x), u_input.b.x)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<f32>(-738f, -1619f), Struct_2(vec4<u32>(4294967295u, 0u, 20743u, u_input.b.x), Struct_1(vec4<f32>(225f, 343f, 943f, -828f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), 4294967295u), Struct_1(vec4<f32>(-766f, -1682f, -357f, 1168f), vec3<u32>(u_input.b.x, u_input.b.x, 0u), 0u))), func_4(vec3<u32>(37758u, 26332u, u_input.b.x), Struct_4(Struct_2(vec4<u32>(6711u, u_input.b.x, 0u, u_input.b.x), Struct_1(vec4<f32>(742f, -127f, -1498f, 502f), vec3<u32>(u_input.b.x, u_input.b.x, 1u), u_input.b.x), Struct_1(vec4<f32>(316f, 571f, -596f, -261f), vec3<u32>(u_input.b.x, 34029u, 16354u), u_input.b.x)), Struct_1(vec4<f32>(1000f, -1815f, 1423f, 290f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x), vec2<bool>(true, false), Struct_3(true, Struct_2(vec4<u32>(52031u, u_input.b.x, 0u, u_input.b.x), Struct_1(vec4<f32>(911f, -372f, -398f, 1850f), vec3<u32>(u_input.b.x, 29982u, u_input.b.x), 1u), Struct_1(vec4<f32>(-781f, 652f, -746f, -1000f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x)), vec3<u32>(u_input.b.x, 55063u, 15210u), vec2<f32>(-766f, -334f), Struct_2(vec4<u32>(87989u, 1u, u_input.b.x, 4061u), Struct_1(vec4<f32>(-598f, -1379f, 1000f, 439f), vec3<u32>(72603u, 41570u, 4294967295u), u_input.b.x), Struct_1(vec4<f32>(144f, 233f, -715f, -825f), vec3<u32>(4294967295u, 44322u, 3871u), u_input.b.x))), vec4<bool>(false, false, false, false)), 351f, vec2<bool>(true, false)), -u_input.a, Struct_2(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), Struct_1(vec4<f32>(1267f, 1264f, 1374f, 898f), vec3<u32>(u_input.b.x, 1u, 116693u), 25814u), Struct_1(vec4<f32>(-1429f, 163f, 263f, 1000f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x))).e.ywz));
    var var_2 = ~(_wgslsmith_sub_i32(14623i << (0u % 32u), -_wgslsmith_sub_i32(u_input.a, 15895i)) << (~u_input.b.x % 32u));
    var_1 = !any(func_4(~(vec3<u32>(39438u, 11869u, u_input.b.x) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), Struct_4(Struct_2(vec4<u32>(78688u, 53115u, u_input.b.x, 16428u), Struct_1(vec4<f32>(1000f, 2478f, 1285f, 452f), vec3<u32>(61233u, 19429u, u_input.b.x), u_input.b.x), Struct_1(vec4<f32>(-1102f, 1765f, 397f, 206f), vec3<u32>(u_input.b.x, u_input.b.x, 25689u), 25737u)), Struct_1(vec4<f32>(-362f, -795f, -1924f, 288f), vec3<u32>(u_input.b.x, 25742u, 1u), 15750u), vec2<bool>(false, false), Struct_3(true, Struct_2(vec4<u32>(41335u, 0u, u_input.b.x, 1u), Struct_1(vec4<f32>(547f, 979f, -905f, -381f), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), u_input.b.x), Struct_1(vec4<f32>(525f, 1112f, 195f, 1446f), vec3<u32>(4294967295u, 4294967295u, u_input.b.x), 5117u)), vec3<u32>(u_input.b.x, 47566u, 80351u), vec2<f32>(619f, -1532f), Struct_2(vec4<u32>(0u, 0u, 0u, 44187u), Struct_1(vec4<f32>(-1015f, -1394f, -1653f, -868f), vec3<u32>(u_input.b.x, 31178u, u_input.b.x), 55635u), Struct_1(vec4<f32>(2216f, 209f, 1192f, 1957f), vec3<u32>(0u, u_input.b.x, 86989u), u_input.b.x))), vec4<bool>(true, true, true, true)), 364f, vec2<bool>(true, u_input.b.x != u_input.b.x)).c);
    let var_3 = all(!func_1(Struct_3(true, func_4(vec3<u32>(29502u, 6459u, 20194u), Struct_4(Struct_2(vec4<u32>(u_input.b.x, 56053u, u_input.b.x, u_input.b.x), Struct_1(vec4<f32>(900f, 1710f, 693f, 864f), vec3<u32>(4538u, u_input.b.x, u_input.b.x), 1u), Struct_1(vec4<f32>(-1701f, -1287f, -1591f, -266f), vec3<u32>(14437u, u_input.b.x, u_input.b.x), 1u)), Struct_1(vec4<f32>(181f, -1002f, -1000f, -764f), vec3<u32>(25404u, u_input.b.x, u_input.b.x), u_input.b.x), vec2<bool>(true, true), Struct_3(false, Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec4<f32>(-182f, 1096f, -357f, 668f), vec3<u32>(8657u, u_input.b.x, u_input.b.x), 39035u), Struct_1(vec4<f32>(-1489f, -378f, -719f, 397f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x)), vec3<u32>(u_input.b.x, 1u, 4294967295u), vec2<f32>(-674f, 541f), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 86545u, 4294967295u), Struct_1(vec4<f32>(2169f, 526f, 1000f, -153f), vec3<u32>(3753u, 1563u, u_input.b.x), u_input.b.x), Struct_1(vec4<f32>(2742f, -750f, -198f, -1000f), vec3<u32>(49626u, u_input.b.x, u_input.b.x), u_input.b.x))), vec4<bool>(false, true, false, true)), 704f, vec2<bool>(false, true)).d.e, ~vec3<u32>(4294967295u, 4294967295u, 4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(856f, 185f) - vec2<f32>(-103f, -244f)), Struct_2(vec4<u32>(17609u, 30316u, u_input.b.x, u_input.b.x), Struct_1(vec4<f32>(2272f, -1012f, -810f, 148f), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), 4294967295u), Struct_1(vec4<f32>(-787f, 702f, 881f, 942f), vec3<u32>(u_input.b.x, u_input.b.x, 1u), 37835u))), func_4(vec3<u32>(37437u, 8916u, u_input.b.x) >> (vec3<u32>(1u, 28427u, u_input.b.x) % vec3<u32>(32u)), Struct_4(Struct_2(vec4<u32>(0u, 0u, 34545u, 1u), Struct_1(vec4<f32>(-1022f, -1000f, -1129f, 448f), vec3<u32>(36024u, u_input.b.x, u_input.b.x), 0u), Struct_1(vec4<f32>(-1000f, -175f, 435f, 1058f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x)), Struct_1(vec4<f32>(161f, 977f, -1000f, -298f), vec3<u32>(u_input.b.x, 1u, 4294967295u), 71947u), vec2<bool>(false, true), Struct_3(false, Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), Struct_1(vec4<f32>(874f, 1180f, 326f, -1342f), vec3<u32>(u_input.b.x, 1u, 0u), u_input.b.x), Struct_1(vec4<f32>(190f, 687f, 1636f, -679f), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), 21457u)), vec3<u32>(u_input.b.x, 13985u, 108026u), vec2<f32>(302f, 1094f), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 95248u), Struct_1(vec4<f32>(172f, 1612f, -311f, -1900f), vec3<u32>(76311u, u_input.b.x, u_input.b.x), u_input.b.x), Struct_1(vec4<f32>(-1087f, -474f, 1054f, -2740f), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), 19203u))), vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(257f, -677f), vec2<bool>(false, false)), u_input.a, func_1(func_4(vec3<u32>(u_input.b.x, 1u, 37339u), Struct_4(Struct_2(vec4<u32>(4294967295u, u_input.b.x, 37695u, u_input.b.x), Struct_1(vec4<f32>(658f, -1463f, -393f, -1342f), vec3<u32>(20019u, u_input.b.x, u_input.b.x), 1u), Struct_1(vec4<f32>(528f, -581f, -267f, -753f), vec3<u32>(u_input.b.x, 76950u, 52745u), u_input.b.x)), Struct_1(vec4<f32>(213f, 558f, -633f, 1026f), vec3<u32>(u_input.b.x, 29556u, u_input.b.x), 1u), vec2<bool>(true, false), Struct_3(true, Struct_2(vec4<u32>(0u, 28323u, u_input.b.x, u_input.b.x), Struct_1(vec4<f32>(-1911f, -1039f, 1536f, 502f), vec3<u32>(0u, 1287u, u_input.b.x), 1u), Struct_1(vec4<f32>(-151f, 150f, 749f, -1494f), vec3<u32>(0u, u_input.b.x, u_input.b.x), u_input.b.x)), vec3<u32>(41816u, u_input.b.x, u_input.b.x), vec2<f32>(1000f, 1345f), Struct_2(vec4<u32>(11036u, 1u, u_input.b.x, 85436u), Struct_1(vec4<f32>(167f, -721f, 207f, -1160f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x), Struct_1(vec4<f32>(-544f, -1260f, -629f, -865f), vec3<u32>(4836u, 48779u, u_input.b.x), u_input.b.x))), vec4<bool>(true, false, false, true)), -148f, vec2<bool>(true, true)).d, func_4(vec3<u32>(1u, 4294967295u, 9478u), Struct_4(Struct_2(vec4<u32>(u_input.b.x, 0u, 5841u, 68614u), Struct_1(vec4<f32>(-525f, 1292f, -150f, -900f), vec3<u32>(4294967295u, u_input.b.x, 1u), 70271u), Struct_1(vec4<f32>(829f, -971f, 456f, 1059f), vec3<u32>(4294967295u, u_input.b.x, 2425u), 7208u)), Struct_1(vec4<f32>(1476f, -1000f, 553f, 326f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), 0u), vec2<bool>(true, true), Struct_3(false, Struct_2(vec4<u32>(1u, 2255u, 4290u, 0u), Struct_1(vec4<f32>(1000f, 1000f, 1183f, -2122f), vec3<u32>(u_input.b.x, 12209u, u_input.b.x), u_input.b.x), Struct_1(vec4<f32>(-301f, 834f, 1817f, -1816f), vec3<u32>(u_input.b.x, 64497u, u_input.b.x), u_input.b.x)), vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec2<f32>(-1014f, 175f), Struct_2(vec4<u32>(17735u, u_input.b.x, u_input.b.x, 9377u), Struct_1(vec4<f32>(1197f, -144f, 525f, -1283f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x), Struct_1(vec4<f32>(-361f, 2031f, 684f, 769f), vec3<u32>(4294967295u, 0u, 70315u), 35537u))), vec4<bool>(false, true, true, false)), 1803f, vec2<bool>(false, true)), u_input.a, func_4(vec3<u32>(8874u, 27136u, 23817u), Struct_4(Struct_2(vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x), Struct_1(vec4<f32>(1449f, -1751f, -1822f, 321f), vec3<u32>(u_input.b.x, 1u, u_input.b.x), 1u), Struct_1(vec4<f32>(-1003f, 249f, -286f, 908f), vec3<u32>(7091u, 67969u, 4294967295u), 4294967295u)), Struct_1(vec4<f32>(-744f, 190f, 394f, 275f), vec3<u32>(u_input.b.x, u_input.b.x, 1u), u_input.b.x), vec2<bool>(false, true), Struct_3(false, Struct_2(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), Struct_1(vec4<f32>(-2085f, -1504f, -816f, 1459f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), 14322u), Struct_1(vec4<f32>(-1168f, -360f, 2382f, 1104f), vec3<u32>(1031u, 10335u, 56355u), 1u)), vec3<u32>(18993u, u_input.b.x, 22544u), vec2<f32>(-424f, 840f), Struct_2(vec4<u32>(55888u, 95622u, 1u, 45372u), Struct_1(vec4<f32>(1000f, 1000f, 539f, 356f), vec3<u32>(u_input.b.x, 1u, 25422u), u_input.b.x), Struct_1(vec4<f32>(-1000f, 1388f, 1151f, -552f), vec3<u32>(u_input.b.x, 4294967295u, 14275u), 1u))), vec4<bool>(true, true, true, true)), -1868f, vec2<bool>(false, false)).d.e).a).e);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x));
}

