struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_3;

var<private> global2: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.a.b.b.zwx)));
    let var_0 = Struct_3(Struct_2(Struct_1(0u | countOneBits(global1.c.a.a), vec4<f32>(_wgslsmith_f_op_f32(arg_1 * 160f), _wgslsmith_f_op_f32(global1.d.b.x - global0.x), -568f, _wgslsmith_f_op_f32(-242f * 1003f)), vec2<bool>(true, true), !(!vec4<bool>(false, global1.c.a.c.x, true, false)), global1.c.a.e), Struct_1((u_input.b.x & u_input.b.x) ^ u_input.a.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global1.a.a.b * vec4<f32>(-647f, 177f, global0.x, 686f)))), select(global1.d.d.wy, !global1.a.a.e.wy, select(vec2<bool>(global1.d.d.x, global1.e.c.x), global1.c.b.c, global1.c.b.e.x)), vec4<bool>(global1.a.a.d.x, true | global1.e.d.x, !global1.c.a.c.x, false), global1.d.d), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(1u, 58605u)), global1.b.wx))), ~select(abs(~global1.b), ~min(global1.b, vec4<u32>(global1.a.b.a, global1.d.a, 18580u, 23124u)), !select(vec4<bool>(true, true, global1.a.a.e.x, global1.a.b.c.x), vec4<bool>(false, false, true, true), vec4<bool>(true, global1.d.e.x, false, false))), Struct_2(global1.c.a, global1.e, _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 0u), max(vec2<u32>(global1.d.a, 27991u), global1.a.c))), Struct_1(max(u_input.a.x, ~4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a.b.x)), 639f, _wgslsmith_f_op_f32(global1.c.a.b.x + _wgslsmith_f_op_f32(-2720f * global0.x)), global1.a.b.b.x), select(vec2<bool>(any(vec2<bool>(true, global1.c.b.d.x)), false), !(!global1.e.c), vec2<bool>(true, !global1.c.a.e.x)), !vec4<bool>(true, true, select(global1.a.b.e.x, true, false), false | global1.a.b.c.x), global1.a.b.e), global1.a.b);
    let var_1 = Struct_1(1u << (var_0.a.b.a % 32u), var_0.c.a.b, vec2<bool>(!all(vec3<bool>(global1.a.b.c.x, global1.d.d.x, false)), true), select(global1.d.e, !(!select(vec4<bool>(var_0.d.e.x, var_0.d.e.x, var_0.e.c.x, var_0.d.c.x), vec4<bool>(var_0.c.b.c.x, false, true, var_0.d.d.x), global1.c.a.e.x)), var_0.a.b.d), select(var_0.c.b.d, select(!vec4<bool>(false, global1.d.d.x, global1.d.d.x, false), select(global1.d.e, vec4<bool>(global1.d.c.x, var_0.c.a.c.x, true, false), global1.d.e), !vec4<bool>(true, true, global1.d.c.x, var_0.d.d.x)), global1.c.b.e));
    var var_2 = Struct_4(~((var_0.c.c >> (_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(4294967295u, 18794u)) % vec2<u32>(32u))) | global1.c.c), Struct_2(Struct_1(~var_0.a.b.a, vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(628f - var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)), var_1.c, var_0.a.a.d, !var_1.e), Struct_1(u_input.b.x, var_1.b, !vec2<bool>(global1.d.c.x, var_0.e.d.x), select(!var_1.e, select(vec4<bool>(true, var_0.c.b.e.x, global1.c.a.e.x, true), vec4<bool>(true, var_0.c.b.c.x, global1.e.c.x, false), var_0.a.b.c.x), true), !select(vec4<bool>(false, true, global1.d.d.x, global1.c.a.c.x), vec4<bool>(false, global1.c.b.e.x, var_1.c.x, var_1.d.x), global1.c.a.e.x)), abs(max(~vec2<u32>(4294967295u, var_0.e.a), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 10886u), var_0.a.c)))));
    let var_3 = var_0.a;
    return firstLeadingBit(_wgslsmith_mult_vec4_i32(~(-(vec4<i32>(14651i, 3057i, 21396i, arg_0.x) << (var_0.b % vec4<u32>(32u)))), abs(max(abs(vec4<i32>(33051i, 2147483647i, arg_0.x, u_input.c)), ~vec4<i32>(-2147483647i, arg_0.x, arg_0.x, u_input.c)))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_3 {
    global1 = Struct_3(global1.c, global1.b, Struct_2(global1.d, global1.d, global1.c.c), global1.e, Struct_1(~0u, vec4<f32>(-1000f, 1000f, 741f, _wgslsmith_f_op_f32(step(-210f, -1038f))), !(!(!vec2<bool>(global1.e.c.x, true))), global1.c.a.d, global1.a.a.d));
    var var_0 = !all(select(!global1.d.d.ww, global1.c.a.e.zw, (-748f < global0.x) | true));
    var var_1 = !any(global1.c.a.d.yzz);
    global2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -1i, arg_0, 42409i), vec4<i32>(u_input.c, 19161i, u_input.c, 1i), vec4<i32>(u_input.c, -19145i, u_input.c, -15431i))), firstLeadingBit(min(vec4<i32>(-1623i, arg_0, 33686i, arg_0), vec4<i32>(1622i, -2147483647i, -25187i, -13586i))), vec4<i32>(arg_0 >> (arg_1.x % 32u), -2685i, countOneBits(1i), arg_0 >> (0u % 32u))), func_3(max(-abs(vec3<i32>(-54559i, u_input.c, arg_0)), countOneBits(vec3<i32>(1i, 1i, u_input.c)) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, 18764u, arg_1.x), vec3<u32>(u_input.a.x, arg_1.x, u_input.a.x)) % vec3<u32>(32u))), global1.e.b.x));
    let var_2 = 43714u;
    return Struct_3(Struct_2(Struct_1(var_2, vec4<f32>(-2220f, _wgslsmith_f_op_f32(f32(-1f) * -787f), global0.x, _wgslsmith_f_op_f32(min(894f, global1.d.b.x))), !select(vec2<bool>(global1.d.c.x, global1.e.c.x), global1.c.b.c, global1.e.d.xz), global1.e.d, global1.a.b.e), global1.a.b, ((vec2<u32>(u_input.a.x, 0u) << (vec2<u32>(0u, global1.c.c.x) % vec2<u32>(32u))) << (global1.b.zw % vec2<u32>(32u))) >> (max(~vec2<u32>(arg_1.x, 4294967295u), u_input.b) % vec2<u32>(32u))), _wgslsmith_mod_vec4_u32(select(select(arg_1, global1.b, false), ~(~vec4<u32>(var_2, 36957u, 1u, 4294967295u)), vec4<bool>(!global1.c.a.d.x, false, false, global1.e.d.x)), ~vec4<u32>(95600u, ~4294967295u, u_input.a.x | 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(14011u, arg_1.x, 4294967295u, 0u), vec4<u32>(var_2, 0u, 41977u, arg_1.x)))), global1.c, Struct_1(_wgslsmith_div_u32(0u, firstTrailingBit(var_2)) >> (arg_1.x % 32u), global1.e.b, vec2<bool>(true, all(!vec4<bool>(global1.d.d.x, true, false, global1.c.b.e.x))), vec4<bool>(true, !(false == global1.c.b.d.x), false, global1.e.d.x), select(vec4<bool>(false, global1.e.d.x, true, !global1.e.c.x), select(select(vec4<bool>(false, global1.d.d.x, global1.a.b.e.x, global1.a.a.d.x), vec4<bool>(true, global1.d.d.x, true, true), global1.c.a.e), select(global1.a.b.d, global1.c.a.e, global1.e.c.x), all(vec2<bool>(false, global1.c.a.d.x))), global1.a.b.d)), global1.c.a);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    var var_0 = global1.b.zzw;
    global1 = Struct_3(Struct_2(Struct_1(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a.b - global1.d.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, -503f, arg_1.e.b.x, -1391f))), select(!arg_1.c.b.e.zz, select(vec2<bool>(true, false), global1.e.c, vec2<bool>(global1.a.a.d.x, true)), false), func_2(-arg_0, vec4<u32>(var_0.x, arg_1.d.a, 1u, arg_1.d.a) ^ vec4<u32>(global1.b.x, 13777u, u_input.a.x, 56488u)).a.b.d, arg_1.e.d), arg_2.b, global1.b.yz), global1.b, arg_1.c, global1.c.a, Struct_1(_wgslsmith_add_u32(1u, abs(1u) << (1u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(func_2(arg_0, arg_1.b).e.b, global1.e.b, !vec4<bool>(arg_2.a.e.x, global1.d.c.x, false, true))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-576f)), 422f, _wgslsmith_f_op_f32(abs(arg_1.d.b.x)), _wgslsmith_f_op_f32(floor(346f)))), func_2(firstLeadingBit(func_3(vec3<i32>(u_input.c, 0i, arg_0), 158f).x), vec4<u32>(arg_2.b.a, 10991u, abs(4294967295u), arg_1.e.a & 22748u)).d.e.ww, !func_2(-arg_0, global1.b).d.d, select(vec4<bool>(all(vec2<bool>(arg_1.c.b.e.x, global1.e.d.x)), arg_1.c.b.e.x, 9961u <= global1.d.a, all(vec4<bool>(arg_1.e.d.x, arg_1.e.c.x, false, true))), vec4<bool>(arg_1.a.a.c.x, true, arg_2.b.c.x, false), true)));
    let var_1 = func_2(select(u_input.c, _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0, arg_0), 48633i) >> (~(arg_2.a.a << (var_0.x % 32u)) % 32u), (func_2(u_input.c, global1.b).d.d.x == (u_input.c > u_input.c)) || select(arg_2.a.e.x, any(arg_1.a.a.e), true)), vec4<u32>(var_0.x, ~7574u, u_input.a.x, ~38931u) ^ abs(global1.b)).d.e;
    var var_2 = !global1.c.b.d.xzw;
    global2 = u_input.c << (30548u % 32u);
    return _wgslsmith_mult_u32(76242u, ~(6658u ^ _wgslsmith_mult_u32(reverseBits(arg_1.a.c.x), ~var_0.x)));
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_sub_vec3_u32((vec3<u32>(~u_input.b.x, 1u, global1.a.c.x & u_input.b.x) >> (u_input.a % vec3<u32>(32u))) & firstLeadingBit(~vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)), u_input.a);
    let var_1 = Struct_4(vec2<u32>(var_0.x, func_4(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, u_input.c), -vec2<i32>(u_input.c, u_input.c)), func_2(u_input.c | u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(6258u, 65021u, var_0.x, var_0.x), vec4<u32>(1u, var_0.x, var_0.x, 40984u))), Struct_2(func_2(-18043i, global1.b).c.a, Struct_1(var_0.x, vec4<f32>(global1.e.b.x, global1.c.b.b.x, global1.e.b.x, global0.x), vec2<bool>(false, global1.e.c.x), global1.c.b.e, global1.d.e), ~vec2<u32>(u_input.a.x, u_input.b.x)))), global1.a);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-823f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(634f)))) * var_1.b.b.b.x))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(221f)), _wgslsmith_f_op_f32(-190f + _wgslsmith_div_f32(global1.a.a.b.x, _wgslsmith_f_op_f32(ceil(func_2(2147483647i, global1.b).a.a.b.x)))));
    var var_4 = 55139u;
    return ~vec4<u32>(global1.e.a, 4294967295u, 4294967295u, ~(~0u)) ^ ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21075u, var_0.x, global1.a.a.a) << (u_input.a % vec3<u32>(32u)), abs(vec3<u32>(global1.a.c.x, 1u, 0u))), ~var_0.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(17120u, global1.a.a.a, 4294967295u, var_1.a.x), global1.b)), ~reverseBits(var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.a.b.b.zzx;
    var var_0 = Struct_3(global1.c, _wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.b.x, global1.a.c.x, global1.c.a.a, 30910u), global1.b) & select(_wgslsmith_add_vec4_u32(global1.b, global1.b), ~global1.b, global1.e.c.x), _wgslsmith_mod_vec4_u32(func_1(), ~global1.b)), Struct_2(global1.d, func_2(_wgslsmith_clamp_i32(u_input.c | u_input.c, u_input.c, u_input.c), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(5458u, 63066u), vec2<u32>(global1.a.b.a, 31724u)), 1u, ~0u)).d, global1.b.wz), func_2(37248i, reverseBits(vec4<u32>(~26548u, 19170u, max(global1.b.x, 58871u), u_input.a.x << (1126u % 32u)))).d, global1.a.a);
    global1 = Struct_3(var_0.a, vec4<u32>(4294967295u >> (1u % 32u), ~u_input.a.x, _wgslsmith_div_u32(abs(global1.d.a) | var_0.a.a.a, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 16543u), ~u_input.a.x)), u_input.b.x), Struct_2(Struct_1(_wgslsmith_sub_u32(var_0.e.a, 0u) << (~3109u % 32u), var_0.e.b, vec2<bool>(false, false), vec4<bool>(all(vec3<bool>(var_0.c.a.e.x, false, true)), all(vec2<bool>(var_0.a.b.d.x, var_0.d.d.x)), global1.c.a.a > global1.e.a, true), !func_2(u_input.c, vec4<u32>(global1.b.x, 0u, global1.c.c.x, u_input.a.x)).d.d), Struct_1(1u, vec4<f32>(_wgslsmith_f_op_f32(-global1.c.a.b.x), _wgslsmith_f_op_f32(abs(845f)), -117f, -173f), global1.c.b.d.ww, select(!var_0.e.e, !var_0.c.b.d, true), !var_0.e.e), min(var_0.b.yy, global1.b.xx)), global1.d, func_2(_wgslsmith_mod_i32(~min(u_input.c, -3831i), u_input.c), var_0.b).e);
    var var_1 = ~abs(reverseBits(~u_input.b.x)) != 0u;
    var var_2 = func_2(_wgslsmith_clamp_i32(~u_input.c, _wgslsmith_add_i32(u_input.c, firstTrailingBit(u_input.c)) ^ (abs(27028i) | _wgslsmith_dot_vec3_i32(vec3<i32>(-10523i, -1i, 0i), vec3<i32>(-2649i, u_input.c, 13563i))), _wgslsmith_mult_i32(firstLeadingBit(~u_input.c), -(u_input.c | 2147483647i))), reverseBits(var_0.b)).c.b.d;
    var var_3 = var_0.e.b.wx;
    var var_4 = func_2(u_input.c & u_input.c, global1.b);
    var var_5 = Struct_4(vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_4.b.x, 597u)), func_1().zy), 1u) ^ global1.c.c, func_2(4041i, var_0.b).a);
    let x = u_input.a;
    s_output = StorageBuffer(22918i, select(2147483647i, _wgslsmith_div_i32(u_input.c, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c), i32(-1i) * -17932i)), var_4.c.b.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.x)), _wgslsmith_div_f32(var_0.d.b.x, var_0.d.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -422f));
}

