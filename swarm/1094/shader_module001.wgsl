struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    let var_0 = select(select(!vec4<bool>(true, arg_1, false, arg_0 > 681u), select(vec4<bool>(all(arg_2), false, true, arg_2.x), select(!vec4<bool>(false, arg_1, arg_1, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_2.x, false, arg_1), arg_1), arg_2.x), arg_1), select(select(vec4<bool>(true, arg_1, arg_2.x, false), vec4<bool>(true, arg_2.x, true, arg_1), select(vec4<bool>(arg_2.x, true, true, arg_2.x), vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(false, arg_1, arg_1, arg_1))), select(vec4<bool>(false, true, false, arg_2.x), select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(false, false, true, arg_2.x), vec4<bool>(arg_1, arg_2.x, arg_2.x, arg_1)), select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), arg_2.x)), any(vec3<bool>(arg_2.x, arg_2.x, arg_1)) || true)), select(select(vec4<bool>(arg_2.x, arg_2.x, all(vec4<bool>(arg_1, arg_2.x, true, arg_2.x)), true), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(false, true, false, false)), false), !(!vec4<bool>(false, arg_1, true, arg_2.x)), true), vec4<bool>(false, !any(vec4<bool>(false, arg_1, false, arg_1)), !(arg_2.x & all(arg_2)), all(vec2<bool>(!arg_2.x, u_input.c.x != 1i))));
    var var_1 = Struct_4(12941u, countOneBits(u_input.c.zx), arg_1, Struct_3(reverseBits(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x))), Struct_3(u_input.c.x));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(199f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(f32(-1f) * -238f)));
    let var_3 = vec3<f32>(145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -290f) * 1097f) + var_2.x), var_2.x)));
    var var_4 = reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.yyw, u_input.c.xww), u_input.c.wwz), var_1.b.x, abs(-1i) | max(u_input.c.x, var_1.e.a)), ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.www, vec3<i32>(u_input.c.x, u_input.c.x, -41695i)), _wgslsmith_sub_vec3_i32(u_input.c.yxx, vec3<i32>(u_input.c.x, -15736i, var_1.e.a)))));
    return -1336f;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> Struct_4 {
    var var_0 = Struct_4(10670u, u_input.c.wx >> (~u_input.b.xx % vec2<u32>(32u)), !all(vec2<bool>(true, any(vec4<bool>(false, true, true, false)))), Struct_3(-max(u_input.c.x << (21572u % 32u), ~(-12502i))), Struct_3(2147483647i));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-280f, -172f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1249f), _wgslsmith_f_op_f32(func_3(4294967295u, false, vec2<bool>(var_0.c, true))), var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2649f * -746f), 754f)))));
    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 14559u, 39716u), ~vec4<u32>(arg_1, 1u, 1u, var_0.a))), _wgslsmith_add_vec2_u32(~(u_input.d | vec2<u32>(54744u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_0.a) << (vec2<u32>(var_0.a, 1u) % vec2<u32>(32u)), select(vec2<u32>(arg_2, arg_1), vec2<u32>(arg_1, 8505u), vec2<bool>(false, true)), abs(u_input.b.xy)))), ~u_input.d);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(133f, -1000f)));
    let var_4 = ~(max(vec4<u32>(34983u, _wgslsmith_div_u32(arg_1, var_0.a), var_0.a, _wgslsmith_clamp_u32(arg_2, var_2.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(9849u, var_2.x, 1u, 24133u), abs(vec4<u32>(u_input.b.x, u_input.a, 1u, 0u)))) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 23618u, 19871u, 4294967295u), abs(vec4<u32>(var_0.a, arg_1, var_0.a, 31936u))), vec4<u32>(var_2.x, 19642u, arg_1, u_input.d.x) | vec4<u32>(u_input.d.x, 0u, arg_1, 0u), vec4<bool>(true, !var_0.c, true, true)) % vec4<u32>(32u)));
    return Struct_4(_wgslsmith_div_u32(var_4.x >> (arg_2 % 32u), _wgslsmith_add_u32(var_0.a, var_2.x)), vec2<i32>(-max(-var_0.d.a, i32(-1i) * -5030i), arg_0.a), var_0.c, var_0.e, arg_0);
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>((u_input.a | arg_0.a) ^ 1u, select(~7553u, _wgslsmith_add_u32(~arg_0.a, 4294967295u), true), ~(~0u), _wgslsmith_div_u32(10598u, func_2(arg_0.d, u_input.d.x, 1u).a)), vec4<u32>(28390u, arg_0.a, u_input.b.x, _wgslsmith_mod_u32(arg_0.a, ~0u)));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(ceil(949f)), true))), _wgslsmith_f_op_f32(func_3(~max(1590u, 31056u), !(arg_0.c | true), vec2<bool>(true, arg_0.c)))), u_input.c, _wgslsmith_f_op_f32(-1034f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1f))))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c - var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~arg_0.a << (_wgslsmith_div_u32(var_0.x, 5052u) % 32u), true, vec2<bool>(true, true))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a, var_1.a)));
    var var_4 = !func_2(func_2(Struct_3(var_1.b.x), abs(~var_0.x), ~20194u).d, ~_wgslsmith_sub_u32(arg_0.a, 30606u), u_input.d.x).c;
    return Struct_1(-330f, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -u_input.c.x, -2147483647i, 1i), vec4<i32>(-12620i, arg_0.e.a, arg_0.b.x, arg_0.e.a) >> (vec4<u32>(4294967295u, 1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, arg_0.a, var_0.x, arg_0.a), vec4<u32>(25164u, 7222u, var_0.x, var_0.x))) % vec4<u32>(32u)), u_input.c << ((vec4<u32>(arg_0.a, 4294967295u, 0u, arg_0.a) << (~var_0 % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * -861f)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_4 {
    let var_0 = 750f;
    var var_1 = vec4<bool>(select(true, all(vec4<bool>(true, true, true, true)), !select(true, true, true) || (-1756f < _wgslsmith_f_op_f32(-arg_2))), any(select(vec2<bool>(any(vec4<bool>(false, false, true, false)), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(2214f > arg_2, true))), !(true == !(u_input.a < u_input.d.x)), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true))));
    var var_2 = select(select(!vec4<bool>(false, true, arg_1 == 491f, u_input.a >= u_input.b.x), select(vec4<bool>(true, any(var_1.yyw), !var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), !(arg_0.b.x != 7430i)), !select(!vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, false, var_1.x, true), var_1.x && var_1.x)), vec4<bool>(true, false, !(var_1.x && any(var_1.xx)), !(arg_0.b.x >= ~u_input.c.x)), vec4<bool>(!all(var_1.yz), false == var_1.x, var_1.x, !func_2(Struct_3(18239i), 1u, 0u).c & !any(vec4<bool>(false, var_1.x, var_1.x, true))));
    return func_2(Struct_3(max(i32(-1i) * -arg_0.b.x, _wgslsmith_mult_i32(-7264i, 0i))), ~(~24533u), u_input.d.x << (~(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, 9269u, u_input.b.x))) % 32u));
}

fn func_6(arg_0: Struct_4) -> vec3<u32> {
    let var_0 = -1000f;
    var var_1 = Struct_1(-1000f, u_input.c, var_0);
    let var_2 = func_2(Struct_3(u_input.c.x | -8282i), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.a, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, arg_0.a, 0u)), 1u, u_input.b.x), firstLeadingBit(vec4<u32>(u_input.b.x, 0u, 4294967295u, arg_0.a) >> (vec4<u32>(18825u, arg_0.a, 4294967295u, u_input.d.x) % vec4<u32>(32u))))), ~func_2(arg_0.e, ~abs(arg_0.a), ~reverseBits(61384u)).a).e;
    var var_3 = (~vec4<u32>(arg_0.a ^ arg_0.a, select(arg_0.a, arg_0.a, true), 46515u, u_input.a) & vec4<u32>(u_input.a ^ 4294967295u, 1u, u_input.a, arg_0.a)) >> (_wgslsmith_sub_vec4_u32(min(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.d.x, arg_0.a, arg_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, 1u, 49958u, 1u), vec4<u32>(4294967295u, arg_0.a, u_input.d.x, 5089u))), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(47095u, 0u, 40457u, 30793u), vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.b.x)))), select(max(vec4<u32>(56454u, 66543u, arg_0.a, 51861u) | vec4<u32>(6098u, u_input.a, 1u, 0u), reverseBits(vec4<u32>(arg_0.a, 4294967295u, 10517u, arg_0.a))), ~(~vec4<u32>(u_input.b.x, 22381u, arg_0.a, u_input.b.x)), arg_0.c)) % vec4<u32>(32u));
    var_1 = func_4(arg_0);
    return select(countOneBits(select(u_input.b, ~vec3<u32>(u_input.d.x, u_input.b.x, 28421u), !vec3<bool>(arg_0.c, true, true))), ~var_3.wzy, true) | vec3<u32>(arg_0.a, _wgslsmith_mult_u32(abs(_wgslsmith_div_u32(arg_0.a, 91017u)), var_3.x), arg_0.a);
}

fn func_7(arg_0: vec3<u32>, arg_1: vec3<u32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(min(1129f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1500f, -167f))), _wgslsmith_f_op_f32(-843f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2173f * -650f) + -1107f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -330f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 - -1000f), var_0), vec3<f32>(_wgslsmith_f_op_f32(1054f - 305f), _wgslsmith_f_op_f32(973f + 1000f), _wgslsmith_f_op_f32(1000f + -1825f)), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1475f, var_0, 101f)))))))));
    let var_2 = true;
    var var_3 = all(select(!vec4<bool>(var_2, var_2, false, true), vec4<bool>(var_2, var_2 & false, false, var_2), !(!vec4<bool>(true, var_2, var_2, false)))) || true;
    let var_4 = u_input.c;
    return Struct_5(~10451u);
}

fn func_1() -> vec3<bool> {
    var var_0 = func_7(func_6(func_5(func_4(func_2(Struct_3(u_input.c.x), u_input.d.x, 4181u)), -426f, -685f)), vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.b.x) & ~u_input.d.x, firstLeadingBit(select(u_input.b.x, 37433u, true))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.a, 104143u) | _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(0u, u_input.b.x, u_input.d.x)), vec3<u32>(1u, u_input.b.x, 0u) << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_sub_vec4_i32(u_input.c, _wgslsmith_div_vec4_i32(~u_input.c, u_input.c) << (vec4<u32>(~16148u, 36012u, 44825u, ~4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-func_4(Struct_4(func_6(Struct_4(var_0.a, u_input.c.zx, true, Struct_3(u_input.c.x), Struct_3(u_input.c.x))).x, u_input.c.wx ^ u_input.c.xx, true, func_2(Struct_3(-2147483647i), 1u, var_0.a).d, Struct_3(u_input.c.x))).a));
    let var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2112f))) - _wgslsmith_f_op_f32(312f + _wgslsmith_f_op_f32(-var_1.a))), -vec4<i32>(2147483647i, 40926i, -1i, u_input.c.x), _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(round(551f)), 521f);
    let var_3 = Struct_4(_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(9941u, var_2.a), select(vec2<u32>(var_2.a, 1u), u_input.b.xy, vec2<bool>(var_2.c, var_2.c)))), ~var_2.a), max(~_wgslsmith_mult_vec2_i32(vec2<i32>(52922i, -20249i) ^ vec2<i32>(var_1.b.x, u_input.c.x), vec2<i32>(var_2.b.x, 53736i)), u_input.c.wz >> (u_input.b.xz % vec2<u32>(32u))), false, var_2.e, var_2.d);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(var_2).a) * var_1.a)));
    return select(vec3<bool>(true | var_2.c, false, true), select(select(!vec3<bool>(var_3.c, true, true), !(!vec3<bool>(var_3.c, false, true)), select(!vec3<bool>(var_3.c, false, true), select(vec3<bool>(var_3.c, var_3.c, var_3.c), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, var_2.c, true), vec3<bool>(false, var_3.c, var_2.c)))), vec3<bool>(false, !var_2.c, true), var_2.b.x == var_3.b.x), func_7(u_input.b, u_input.b).a != func_6(var_2).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(func_1(), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), !func_1()), all(vec4<bool>(true, true, true, true)) & !select(true, true, false)), !vec3<bool>(u_input.c.x > max(u_input.c.x, u_input.c.x), true, true), vec3<bool>(!(!select(true, false, true)), select(true, any(vec2<bool>(true, true)), true & func_2(Struct_3(u_input.c.x), 93639u, u_input.a).c), !(1u != _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), u_input.b.yy))));
    var var_1 = Struct_5(u_input.d.x);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -756f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-472f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -110f)))))), _wgslsmith_f_op_f32(f32(-1f) * -598f)));
    let var_3 = vec4<bool>(var_0.x, true, var_0.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.ww, _wgslsmith_f_op_vec4_f32(vec4<f32>(-275f, var_2, var_2, -874f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2 + 513f), var_2, _wgslsmith_f_op_f32(var_2 - var_2), -1355f) * vec4<f32>(839f, _wgslsmith_f_op_f32(1000f + var_2), _wgslsmith_f_op_f32(-411f * var_2), _wgslsmith_f_op_f32(-1102f * var_2)))), vec3<u32>(~7840u, 1u, u_input.b.x), vec4<f32>(var_2, 233f, var_2, var_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, 955f, var_2) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1136f, 596f, -629f, 360f))))));
}

