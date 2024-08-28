struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    var var_0 = !(!(arg_1.d || true));
    var var_1 = Struct_2(_wgslsmith_sub_u32(u_input.a, ~min(_wgslsmith_clamp_u32(u_input.a, 420u, u_input.a), ~u_input.a)), _wgslsmith_f_op_f32(floor(655f)), countOneBits(min(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 39351u, 4653u, 46036u))), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 36951u, u_input.a, u_input.a), vec4<u32>(1u, 0u, 56011u, 20228u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))))), vec4<bool>(all(vec2<bool>(true, true)), any(select(select(vec2<bool>(false, true), vec2<bool>(false, arg_1.d), true), vec2<bool>(true, true), false)), arg_1.d | false, arg_1.d), arg_1);
    let var_2 = var_1.a;
    var var_3 = Struct_2(abs(1u), var_1.e.b, var_1.c, !var_1.d, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -200f))))), var_1.e.a, var_1.e.c << (min(~vec2<u32>(1u, 53412u), vec2<u32>(18210u, 12518u)) % vec2<u32>(32u)), any(vec4<bool>(false, arg_1.d, var_1.d.x, all(var_1.d))), 69419i));
    let var_4 = var_3.b;
    return true;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(-1695f));
    var var_1 = 33606u;
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1547f, 1000f)))), -1721f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-611f - -1528f), _wgslsmith_div_f32(199f, 1000f)))), _wgslsmith_f_op_f32(969f * _wgslsmith_f_op_f32(select(-882f, _wgslsmith_f_op_f32(round(671f)), true)))));
    var var_3 = true;
    var var_4 = Struct_2(0u, _wgslsmith_f_op_f32(-1592f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(var_2.a.x + var_2.b)))), ~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(52876u, 4294967295u, 32993u, 4294967295u), ~vec4<u32>(u_input.a, u_input.a, 26075u, 0u), ~vec4<u32>(u_input.a, 14228u, u_input.a, u_input.a))), vec4<bool>(true, false, false, !func_3(Struct_3(vec4<f32>(584f, 1481f, -1921f, 1000f), var_2.a.x), Struct_1(var_2.a.x, 936f, vec2<i32>(-1i, -3611i), false, -2147483647i))), Struct_1(var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * var_2.b)), var_2.a.x), abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(1802i, 44139i), ~vec2<i32>(-31843i, 2147483647i))), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(abs(var_2.a.x))) <= -1608f, 2147483647i));
    return 4294967295u;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a))), arg_2.a)) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1039f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1617f)))))), all(select(!(!vec4<bool>(false, false, arg_2.d, arg_2.d)), !vec4<bool>(arg_2.d, arg_2.d, true, arg_2.d), select(vec4<bool>(true, true, arg_2.d, arg_2.d), vec4<bool>(true, arg_2.d, true, false), !vec4<bool>(true, true, false, arg_2.d)))), false);
    var var_1 = Struct_4(arg_2, !(!select(vec3<bool>(false, arg_2.d, true), vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, false), vec3<bool>(arg_2.d, false, arg_2.d)))), Struct_1(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - 952f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - -1150f))), vec2<i32>(~29644i, _wgslsmith_sub_i32(-arg_0, ~arg_2.c.x)), abs(-arg_0) <= 10307i, _wgslsmith_clamp_i32(i32(-1i) * -54611i, ~(-2147483647i), _wgslsmith_mod_i32(23190i, arg_0)) << (~u_input.a % 32u)), arg_3);
    var_1 = Struct_4(Struct_1(var_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1108f)) * -511f), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c.c.x, 47632i) >> (~vec2<u32>(35440u, u_input.a) % vec2<u32>(32u)), firstLeadingBit(-var_1.c.c)), var_1.a.d, var_1.a.c.x), !select(!var_1.b, var_1.b, vec3<bool>(var_1.c.d, !arg_2.d, any(vec2<bool>(var_1.a.d, arg_2.d)))), var_1.a, ~max(_wgslsmith_mod_u32(max(u_input.a, arg_1.x), reverseBits(u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_1, arg_1), 0u, 1u)));
    var_1 = Struct_4(var_1.c, select(var_1.b, select(select(vec3<bool>(var_1.b.x, arg_2.d, arg_2.d), select(var_1.b, vec3<bool>(var_0.x, true, var_1.a.d), arg_2.d), select(var_1.b, var_1.b, var_1.b)), var_1.b, !(!var_1.b)), any(!var_1.b.zz) || true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a - 1172f))), 399f, arg_2.c, all(vec3<bool>(true, var_1.c.d, true)), -89983i), _wgslsmith_dot_vec4_u32(~max(vec4<u32>(arg_3, 4294967295u, 4294967295u, 0u), vec4<u32>(27647u, var_1.d, 4294967295u, arg_1.x) >> (vec4<u32>(4294967295u, arg_1.x, arg_3, 31872u) % vec4<u32>(32u))), max(~vec4<u32>(24345u, 1u, 0u, u_input.a), vec4<u32>(1u, 87102u, 4294967295u, var_1.d)) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 77754u, 4294967295u), vec4<u32>(0u, var_1.d, 6004u, 0u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_mult_i32(var_1.a.e & var_1.c.c.x, var_1.a.c.x) >> ((abs(_wgslsmith_dot_vec3_u32(arg_1.xyw, vec3<u32>(arg_3, 20541u, u_input.a)) << (~arg_1.x % 32u)) << (0u % 32u)) % 32u);
    return Struct_1(_wgslsmith_f_op_f32(-847f + _wgslsmith_f_op_f32(step(473f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a * var_1.c.a), arg_2.a))))), -250f, select(arg_2.c, arg_2.c, func_3(Struct_3(vec4<f32>(var_1.c.b, -866f, 312f, var_1.a.a), arg_2.b), var_1.a) | !all(vec4<bool>(var_0.x, arg_2.d, var_1.a.d, var_0.x))), arg_2.d, -40716i);
}

fn func_1(arg_0: vec3<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 12227u), vec2<u32>(1u, 1u))), vec2<u32>(~min(17419u, 643u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(76472u, 50782u, u_input.a, 1u), vec4<bool>(false, true, true, false))))), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a, 1912u, 1u), vec3<u32>(24342u, u_input.a, u_input.a), vec3<bool>(false, true, false)), ~vec3<u32>(u_input.a, u_input.a, 1u)), reverseBits(select(vec3<u32>(u_input.a, 282u, u_input.a), vec3<u32>(u_input.a, 15934u, u_input.a), vec3<bool>(true, false, true)))), ~1u), select(vec2<u32>(~u_input.a, u_input.a << (4294967295u % 32u)), ~vec2<u32>(abs(u_input.a), firstLeadingBit(4294967295u)), !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))));
    let var_1 = !(!(min(var_0.x, 4294967295u) > (46217u << (var_0.x % 32u))) & all(select(vec2<bool>(false, false), vec2<bool>(true, true), 1u < var_0.x)));
    var var_2 = func_4(i32(-1i) * -2147483647i, (abs(~vec4<u32>(76478u, u_input.a, 1u, u_input.a)) ^ select(vec4<u32>(1u, u_input.a, 1571u, var_0.x), vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), vec4<bool>(false, true, var_1, var_1))) << (~vec4<u32>(func_2(), 347u, _wgslsmith_mod_u32(var_0.x, 18564u), 9182u) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -170f)))), -529f, ~firstTrailingBit(vec2<i32>(1i, 1i)), var_1, 0i), firstLeadingBit(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.x, 90183u, 52681u), vec3<u32>(4294967295u, var_0.x, 4294967295u), vec3<bool>(var_1, true, true)), ~vec3<u32>(23176u, var_0.x, u_input.a))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1207f), -1977f, min(select(vec2<i32>(-21729i, -2147483647i) | vec2<i32>(var_2.c.x, 2147483647i), vec2<i32>(var_2.e, var_2.e) | var_2.c, true), countOneBits(_wgslsmith_sub_vec2_i32(var_2.c, var_2.c))) ^ var_2.c, true, var_2.e);
    var var_3 = false & all(vec3<bool>(!all(vec3<bool>(var_2.d, var_1, true)), true, var_2.d));
    return Struct_4(func_4(reverseBits(0i & var_2.e), vec4<u32>(select(var_0.x, 24483u, var_1) | 15035u, _wgslsmith_div_u32(1u, u_input.a), u_input.a, 4964u), Struct_1(var_2.a, _wgslsmith_f_op_f32(max(138f, _wgslsmith_f_op_f32(-1199f + var_2.a))), var_2.c, all(select(vec2<bool>(true, false), vec2<bool>(var_1, false), false)), var_2.c.x), 28286u), !(!vec3<bool>(var_2.d, all(vec4<bool>(true, true, var_1, var_1)), var_2.d)), func_4(2147483647i ^ var_2.c.x, vec4<u32>(4294967295u, 42311u, abs(1u), u_input.a), func_4(1i, countOneBits(vec4<u32>(24322u, var_0.x, var_0.x, var_0.x)) ^ ~vec4<u32>(23561u, 1u, 92510u, u_input.a), Struct_1(arg_0.x, _wgslsmith_f_op_f32(1549f + arg_0.x), var_2.c, false, var_2.c.x >> (14343u % 32u)), ~(var_0.x ^ u_input.a)), var_0.x), 4294967295u);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    let var_0 = arg_1.d;
    var var_1 = arg_1.a.c.x;
    var_1 = arg_1.c.c.x;
    var_1 = countOneBits(53492i);
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -min(vec3<i32>(arg_1.a.c.x, arg_1.c.c.x, 14457i), max(vec3<i32>(arg_1.c.e, 0i, arg_1.c.e), vec3<i32>(arg_1.a.e, 27521i, 2147483647i))), vec3<i32>(1i, arg_1.c.e, ~arg_1.a.e));
    return Struct_2(_wgslsmith_add_u32(~u_input.a, _wgslsmith_clamp_u32(arg_1.d, var_0, reverseBits(arg_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -689f)))))), firstTrailingBit(vec4<u32>(u_input.a, ~53748u, 0u, _wgslsmith_add_u32(15980u, 4649u))) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.a, 12312u, 60703u) >> (vec4<u32>(11538u, 95530u, arg_1.d, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, 76106u, arg_1.d, var_0)), select(vec4<bool>(arg_1.a.d, true, false, select(func_3(Struct_3(vec4<f32>(arg_2, -740f, arg_2, arg_2), 1000f), arg_1.a), any(vec4<bool>(false, arg_1.c.d, arg_0.x, true)), all(arg_1.b.xx))), vec4<bool>(true, all(vec4<bool>(true, false, arg_1.b.x, arg_1.b.x)), true | (false && arg_1.a.d), arg_1.a.b >= _wgslsmith_f_op_f32(-156f - 437f)), select(select(vec4<bool>(arg_1.b.x, false, true, true), vec4<bool>(false, arg_1.b.x, arg_0.x, true), !vec4<bool>(arg_1.b.x, arg_0.x, false, arg_1.c.d)), select(select(vec4<bool>(arg_0.x, true, true, false), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_1.a.d, arg_1.a.d, arg_1.b.x, false)), select(vec4<bool>(true, arg_0.x, arg_1.b.x, false), vec4<bool>(arg_1.b.x, arg_1.c.d, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, true)), select(vec4<bool>(true, arg_1.c.d, true, false), vec4<bool>(true, arg_1.b.x, true, false), false)), arg_1.a.d)), Struct_1(arg_1.c.a, _wgslsmith_f_op_f32(floor(arg_1.c.a)), vec2<i32>(_wgslsmith_sub_i32(arg_1.a.e, arg_1.a.e), ~arg_1.c.e), true != arg_0.x, arg_1.a.c.x));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~(~u_input.a), arg_0.c.x), 43466u) | 31056u;
    var_0 = _wgslsmith_div_u32(4294967295u, 1u);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, -1274f, 1031f, -1389f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-645f, arg_0.b, -951f, arg_0.e.b), vec4<f32>(-465f, -1104f, arg_0.b, 1107f), true)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(174f, arg_0.e.b, 1522f, arg_0.e.a), vec4<f32>(arg_0.e.b, 607f, arg_0.b, -695f))))))), 716f);
    var var_2 = arg_0.d.yxx;
    let var_3 = arg_0.c.wy;
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-627f, 1853f, -759f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1006f, 1000f, 1345f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(540f)) * _wgslsmith_f_op_f32(sign(-1736f))))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, u_input.a, 4294967295u), ~vec3<u32>(u_input.a, u_input.a, u_input.a) << (~vec3<u32>(u_input.a, u_input.a, 48927u) % vec3<u32>(32u))), ~(~4294967295u) ^ u_input.a), any(select(vec3<bool>(all(vec4<bool>(true, false, false, false)), func_1(vec3<f32>(1983f, -1062f, -1000f)).c.d, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec4<u32>(func_2(), u_input.a, ~u_input.a, u_input.a));
    let var_1 = 1u;
    var var_2 = vec3<i32>(var_0.e, var_0.c.x, ~(-58461i));
    let var_3 = !vec4<bool>(var_0.d, true, false, var_1 != reverseBits(1216u));
    var var_4 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -973f, 1397f) - vec3<f32>(-1158f, var_0.b, var_0.b)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, var_0.b, -1190f))))))));
    var var_5 = ~_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.x, -31528i), var_4.c.c, var_0.c), var_2.yy);
    let var_6 = -select(~abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-17377i, var_4.a.c.x, var_0.c.x, 4108i), vec4<i32>(var_4.c.e, var_4.a.c.x, -4761i, var_4.a.e))), -((vec4<i32>(var_2.x, 0i, 2147483647i, 1i) << (vec4<u32>(u_input.a, 1198u, var_4.d, var_4.d) % vec4<u32>(32u))) & max(vec4<i32>(2147483647i, -2147483647i, var_5.x, var_4.a.e), vec4<i32>(0i, var_0.c.x, var_4.a.e, var_4.a.e))), !func_5(func_5(var_3.zy, Struct_4(var_0, var_4.b, var_0, var_4.d), -1000f).d.yw, Struct_4(var_0, var_3.yyx, var_4.a, u_input.a), _wgslsmith_f_op_f32(-var_4.a.a)).d);
    var_2 = ~(~_wgslsmith_mod_vec3_i32(max(var_6.xyy, vec3<i32>(var_2.x, var_2.x, var_6.x) & var_6.xxy), _wgslsmith_add_vec3_i32(vec3<i32>(-15215i, var_5.x, -11367i) | vec3<i32>(-1i, -2147483647i, 12064i), ~var_6.xzy)));
    let var_7 = var_4.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(-2702i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(449f * var_0.a), 339f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2688f, var_4.a.b) - var_0.a))) - _wgslsmith_f_op_f32(-var_4.a.b)), func_6(func_5(func_5(select(vec2<bool>(var_4.c.d, false), var_4.b.yz, true), Struct_4(var_4.c, vec3<bool>(var_4.b.x, false, true), var_4.c, 64375u), 1868f).d.xy, Struct_4(func_5(var_3.xx, Struct_4(Struct_1(var_0.b, 820f, var_4.c.c, var_4.c.d, var_5.x), vec3<bool>(true, false, var_3.x), var_4.c, var_4.d), var_4.c.a).e, !vec3<bool>(var_4.c.d, var_3.x, var_4.c.d), Struct_1(-269f, 493f, vec2<i32>(var_5.x, 10778i), false, var_2.x), 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1369f - var_4.c.b), _wgslsmith_div_f32(var_0.b, 1000f), true))), _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(var_1, u_input.a), reverseBits(vec2<u32>(17748u, 62869u)), var_4.b.zx), abs(vec2<u32>(var_4.d, 8924u)) >> (vec2<u32>(var_4.d, var_4.d) % vec2<u32>(32u)), vec2<u32>(u_input.a, var_4.d)), false, _wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(var_1, var_1, u_input.a, var_1)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 11192u, 111559u, 4294967295u) >> (vec4<u32>(var_1, 35660u, 0u, 66587u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 72516u, var_4.d, var_1)), _wgslsmith_mult_vec4_u32(vec4<u32>(38651u, 1u, var_1, 21742u), vec4<u32>(35315u, 92666u, u_input.a, 79869u)) << (vec4<u32>(0u, u_input.a, 0u, u_input.a) % vec4<u32>(32u)))).b, _wgslsmith_f_op_f32(select(177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.a))), var_3.x)), -1000f);
}

