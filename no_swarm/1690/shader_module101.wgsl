struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: array<vec2<i32>, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = arg_0.e.c.a.zx;
    let var_1 = arg_0.e.c.c;
    var var_2 = Struct_3(select(vec3<bool>(true, !(!arg_0.e.a.x), arg_0.e.a.x), !vec3<bool>(arg_0.e.a.x, true, any(arg_0.d)), arg_0.e.a.zyx), 1i);
    var var_3 = var_1;
    var_3 = var_1 << (_wgslsmith_add_u32(~var_1, var_1) % 32u);
    return _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(-(vec3<i32>(1i, u_input.a.x, var_2.b) ^ vec3<i32>(0i, arg_0.a.x, var_2.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, arg_0.e.c.b.x, 1i) ^ u_input.a.wyx, ~arg_0.a.zyx)), arg_0.e.c.b.zww);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a | u_input.a), select(-1i, func_3(Struct_4(vec4<i32>(59639i, 40813i, 15081i, -53035i), vec3<f32>(arg_1, arg_1, -798f), vec4<i32>(19555i, arg_0.x, -7875i, -2147483647i), vec2<bool>(arg_3.a.x, false), Struct_2(vec4<bool>(false, true, false, true), arg_0.x, Struct_1(vec4<f32>(arg_1, -469f, arg_1, arg_1), vec4<i32>(arg_3.b, u_input.a.x, 12525i, -2147483647i), 45222u, 895f, -2147483647i)))), arg_3.a.x), arg_3.b, _wgslsmith_add_i32(~u_input.a.x, ~2147483647i)) << (firstLeadingBit(vec4<u32>(1866u, countOneBits(4294967295u), 4294967295u, ~4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -980f, 427f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-177f, 190f, arg_1) - vec3<f32>(arg_1, -287f, 1000f))) - vec3<f32>(1361f, 451f, arg_1))), vec4<i32>(~_wgslsmith_mult_i32(arg_2, arg_0.x), -2147483647i, ~_wgslsmith_mult_i32(arg_3.b, -11447i) & -2147483647i, _wgslsmith_add_i32(~(~42680i), ~(~arg_3.b))), arg_3.a.xx, Struct_2(!select(select(vec4<bool>(arg_3.a.x, false, true, arg_3.a.x), vec4<bool>(true, arg_3.a.x, true, false), true), select(vec4<bool>(arg_3.a.x, arg_3.a.x, true, arg_3.a.x), vec4<bool>(true, true, true, arg_3.a.x), vec4<bool>(arg_3.a.x, false, arg_3.a.x, arg_3.a.x)), !arg_3.a.x), u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(352f, arg_1, 290f, arg_1)), firstTrailingBit(-vec4<i32>(9319i, arg_3.b, arg_0.x, u_input.a.x)), ~1u, arg_1, -(~arg_3.b))));
    var var_1 = _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(var_0.e.c.c, 13u)] << (global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~var_0.e.c.c, _wgslsmith_sub_u32(var_0.e.c.c, var_0.e.c.c)), 13u)] % vec3<u32>(32u)), vec3<u32>(1u, var_0.e.c.c, max(firstLeadingBit(var_0.e.c.c >> (var_0.e.c.c % 32u)), var_0.e.c.c)));
    var var_2 = var_0.e.c.a.x;
    var var_3 = _wgslsmith_div_u32(~0u, var_0.e.c.c);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * -678f))));
    return var_0.e.c;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> u32 {
    global1 = array<vec2<i32>, 29>();
    global1 = array<vec2<i32>, 29>();
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~23219u << (_wgslsmith_mod_u32(abs(arg_2.c), ~43873u) % 32u), max(_wgslsmith_mult_u32(30189u, arg_2.c) | ~4294967295u, 1u >> (select(arg_2.c, 1u, false) % 32u)), firstTrailingBit(arg_2.c), ~0u), vec4<u32>(countOneBits(arg_2.c), _wgslsmith_clamp_u32(arg_2.c, 1u, ~1u) << (1u % 32u), ~arg_2.c, arg_2.c));
    let var_1 = Struct_4(u_input.a, arg_2.a.zxz, func_2(vec2<i32>(reverseBits(-48800i), firstLeadingBit(countOneBits(arg_2.e))), func_2(vec2<i32>(_wgslsmith_add_i32(arg_2.b.x, -2147483647i), arg_2.b.x), _wgslsmith_div_f32(arg_2.d, arg_2.d), -2147483647i, Struct_3(!vec3<bool>(true, arg_1, false), u_input.a.x ^ 41857i)).a.x, arg_2.e, Struct_3(select(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, true, arg_1)), select(vec3<bool>(arg_0.x, arg_1, false), vec3<bool>(false, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_1)), true), -countOneBits(arg_2.e))).b, vec2<bool>(true, true), Struct_2(vec4<bool>(all(!arg_0), any(vec4<bool>(arg_0.x, arg_1, arg_1, arg_1)), (1i >> (arg_2.c % 32u)) != u_input.a.x, -54546i > ~arg_2.e), -arg_2.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, arg_2.a.x, arg_2.a.x, 126f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a.x, 424f, 1312f, 152f)))), select(u_input.a, arg_2.b, select(vec4<bool>(arg_0.x, arg_0.x, false, arg_1), vec4<bool>(false, arg_0.x, false, false), false)), 1u, 1103f, u_input.a.x)));
    global1 = array<vec2<i32>, 29>();
    return ~(~(~10835u));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -115f), -1272f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1090f) - -1262f), _wgslsmith_f_op_f32(-2289f + -515f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1045f, var_0.x, 159f, 1000f) + vec4<f32>(var_0.x, 494f, 1285f, var_0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -582f) * _wgslsmith_f_op_f32(var_0.x - var_0.x)))), max(reverseBits(_wgslsmith_sub_vec4_i32(~u_input.a, -vec4<i32>(-1i, u_input.a.x, 0i, u_input.a.x))), vec4<i32>(u_input.a.x >> (~1u % 32u), 0i, -2147483647i, -32259i)), func_4(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true, func_2(vec2<i32>(~u_input.a.x, abs(2147483647i)), var_0.x, -u_input.a.x, Struct_3(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), 1i))), var_0.x, func_2(-(vec2<i32>(465i, u_input.a.x) << (vec2<u32>(11515u, 1u) % vec2<u32>(32u))) | (-global1[_wgslsmith_index_u32(1u, 29u)] & vec2<i32>(25957i, u_input.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), func_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, max(8444u, 4294967295u)), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, u_input.a.x), select(-34660i, u_input.a.x, true)), Struct_3(vec3<bool>(false, true, true), u_input.a.x)).e, Struct_3(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true), u_input.a.x)).b.x);
    let var_2 = Struct_4(vec4<i32>(~u_input.a.x >> (_wgslsmith_div_u32(~4294967295u, _wgslsmith_div_u32(var_1.c, var_1.c)) % 32u), max((-10324i ^ var_1.e) & countOneBits(-2147483647i), 0i), 0i, u_input.a.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(577f, var_1.d, 312f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -437f)))), var_1.a.zzx)), _wgslsmith_div_vec4_i32(~(vec4<i32>(u_input.a.x, 41606i, var_1.e, var_1.e) >> (vec4<u32>(var_1.c, 10179u, var_1.c, var_1.c) % vec4<u32>(32u))) ^ var_1.b, ~(-(~vec4<i32>(1i, -4440i, var_1.b.x, u_input.a.x)))), vec2<bool>(true, true), Struct_2(select(vec4<bool>(false, true, all(vec2<bool>(false, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, false)), true), func_2(var_1.b.wx, _wgslsmith_f_op_f32(round(-2644f)), i32(-1i) * -2147483647i, Struct_3(vec3<bool>(false, false, false), 1i)).b.x | func_3(Struct_4(vec4<i32>(u_input.a.x, 0i, -7345i, 2275i), var_0, vec4<i32>(344i, -17760i, 2147483647i, 20867i), vec2<bool>(true, true), Struct_2(vec4<bool>(true, true, true, false), var_1.e, Struct_1(vec4<f32>(642f, var_1.a.x, var_1.a.x, -1421f), u_input.a, var_1.c, 659f, var_1.e)))), func_2(firstLeadingBit(vec2<i32>(-398i, 1i)), var_1.a.x, reverseBits(u_input.a.x ^ -1i), Struct_3(vec3<bool>(false, false, false), 0i))));
    let var_3 = abs(~firstLeadingBit(vec2<u32>(1u | var_1.c, firstTrailingBit(8772u))));
    let var_4 = Struct_3(vec3<bool>(true, select(var_2.d.x, var_2.e.a.x, !(!var_2.e.a.x)), any(var_2.d)), -var_2.c.x);
    return Struct_2(select(vec4<bool>(var_2.d.x, true, false, true), var_2.e.a, var_2.e.a), 26627i, func_2(vec2<i32>(firstTrailingBit(1i), -6129i >> (var_2.e.c.c % 32u)) << (firstLeadingBit(vec2<u32>(var_3.x, 4294967295u)) % vec2<u32>(32u)), var_0.x, select(~1i, min(~var_2.c.x, var_4.b), !any(vec2<bool>(true, false))), Struct_3(var_4.a, var_1.e | u_input.a.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> vec3<u32> {
    var var_0 = arg_1.a.x;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~arg_1.c.c, 1u, _wgslsmith_sub_u32(96355u, arg_1.c.c)), min(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.c, 0u, 23709u, 1u), vec4<u32>(arg_1.c.c, arg_1.c.c, arg_1.c.c, arg_1.c.c)), ~vec4<u32>(4294967295u, arg_1.c.c, arg_1.c.c, 4294967295u))), firstLeadingBit(reverseBits(arg_1.c.c | 29344u)), arg_1.c.c, arg_1.c.c) ^ select(vec4<u32>(1u << (arg_1.c.c % 32u), ~0u, _wgslsmith_mod_u32(1u, arg_1.c.c), arg_1.c.c ^ arg_1.c.c), vec4<u32>(1u, ~(~arg_1.c.c), _wgslsmith_mult_u32(0u, firstLeadingBit(arg_1.c.c)), func_1().c.c), arg_2.a.x);
    var var_2 = vec2<f32>(-255f, -227f);
    var var_3 = 13385i;
    var_0 = (false && any(func_1().a)) != (((var_2.x == 1485f) & select(true, !arg_2.a.x, true)) | arg_1.a.x);
    return vec3<u32>(reverseBits(~(reverseBits(0u) << (func_4(arg_2.a.xy, arg_2.a.x, arg_1.c) % 32u))), _wgslsmith_mod_u32(arg_1.c.c, _wgslsmith_mod_u32(_wgslsmith_mult_u32(func_2(vec2<i32>(0i, 1i), 1365f, u_input.a.x, arg_2).c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 4294967295u), var_1.yx)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, arg_1.c.c, var_1.x, 4294967295u), vec4<u32>(21489u, arg_1.c.c, arg_1.c.c, var_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, arg_1.c.c, var_1.x, var_1.x), vec4<u32>(var_1.x, 1u, 0u, 16042u))))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!(!vec3<bool>(u_input.a.x >= u_input.a.x, true, true)), _wgslsmith_clamp_i32(0i, i32(-1i) * -2147483647i, u_input.a.x));
    global0 = array<vec3<u32>, 13>();
    let var_1 = 1f;
    global0 = array<vec3<u32>, 13>();
    var var_2 = _wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_sub_vec3_u32(func_5(vec4<f32>(var_1, var_1, 171f, var_1), func_1(), Struct_3(vec3<bool>(false, false, var_0.a.x), -5822i), _wgslsmith_f_op_f32(step(var_1, var_1))), select(global0[_wgslsmith_index_u32(30503u, 13u)], global0[_wgslsmith_index_u32(func_4(var_0.a.xx, false, Struct_1(vec4<f32>(var_1, 599f, -1000f, 1438f), vec4<i32>(var_0.b, 0i, u_input.a.x, -2147483647i), 4294967295u, var_1, u_input.a.x)), 13u)], all(var_0.a))));
    global1 = array<vec2<i32>, 29>();
    var_2 = ~vec3<u32>(~var_2.x, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(var_2.x, 8690u), _wgslsmith_div_u32(85331u, var_2.x)), ~var_2.x);
    global0 = array<vec3<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(select(0u, var_2.x, var_0.a.x), func_1().c.c, abs(103682u)) >> (vec3<u32>(func_4(var_0.a.xx, false, Struct_1(vec4<f32>(-1862f, 1002f, 413f, -1413f), u_input.a, var_2.x, -1523f, -34149i)), firstLeadingBit(0u), var_2.x) % vec3<u32>(32u)), max(func_5(_wgslsmith_div_vec4_f32(vec4<f32>(-940f, var_1, var_1, var_1), vec4<f32>(193f, var_1, 2057f, -487f)), func_1(), var_0, _wgslsmith_f_op_f32(-600f - -830f)), ~global0[_wgslsmith_index_u32(var_2.x, 13u)])));
}

