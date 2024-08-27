struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: u32;

var<private> global2: vec4<u32> = vec4<u32>(115245u, 1u, 0u, 0u);

var<private> global3: array<u32, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global3 = array<u32, 19>();
    global0 = array<vec2<f32>, 30>();
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(~35496u >> ((global3[_wgslsmith_index_u32(u_input.d, 19u)] >> (1u % 32u)) % 32u), 1u) ^ 1u), 30u)];
    global2 = ~(vec4<u32>(u_input.d, 1u, 7308u, ~u_input.d) ^ select(~min(vec4<u32>(u_input.d, global2.x, 1u, 1u), vec4<u32>(0u, global2.x, global2.x, global2.x)), reverseBits(vec4<u32>(0u, global2.x, global2.x, u_input.d)) & vec4<u32>(global2.x, 0u, 1u, global2.x), select(!vec4<bool>(arg_1.c, false, arg_0, arg_1.c), select(vec4<bool>(arg_2.c, true, arg_0, arg_1.c), vec4<bool>(true, arg_2.c, arg_1.c, arg_0), vec4<bool>(false, arg_2.c, arg_1.c, false)), vec4<bool>(true, true, arg_1.c, arg_1.c))));
    var_0 = vec2<f32>(-553f, -531f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + 1025f), -1000f, arg_0 | false)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1387f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1801f) - _wgslsmith_f_op_f32(1000f - -1736f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-416f - 162f) * _wgslsmith_f_op_f32(round(768f)))))), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-296f * -274f), _wgslsmith_f_op_f32(252f - 1941f)) > _wgslsmith_f_op_f32(func_3(true, Struct_2(-976f, 1022f, false), Struct_2(-1815f, -515f, false)))));
    global3 = array<u32, 19>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(199f)), var_0.b);
    var var_2 = Struct_1(reverseBits(u_input.c), ~(~(~vec4<i32>(arg_0.x, 30761i, -1i, arg_0.x)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, global2.x, 90243u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], global2.x, 93105u, u_input.d)) % vec4<u32>(32u))), _wgslsmith_add_i32(~(~2147483647i), ~max(_wgslsmith_mult_i32(u_input.a, arg_0.x), -u_input.e.x)));
    var var_3 = global2.x;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-794f + -446f) - _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_0.b))) + var_1.x), 392f, any(select(select(!vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_0.c, var_0.c, var_0.c), var_0.c), vec3<bool>(var_0.c, var_0.c, true), true)));
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, _wgslsmith_add_i32(u_input.a, ~u_input.b) << (~(~global3[_wgslsmith_index_u32(u_input.d, 19u)]) % 32u), u_input.c, u_input.a), countOneBits(vec4<i32>(0i ^ u_input.b, max(-u_input.e.x, u_input.b << (u_input.d % 32u)), u_input.e.x, u_input.b)));
    var var_1 = vec4<u32>(max(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8076u, 36117u, 9296u), global2.zyx), ~8209u), global2.x), _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.d, 1u), u_input.d), _wgslsmith_mod_u32(65290u, abs(global3[_wgslsmith_index_u32(99294u, 19u)]) << (4294967295u % 32u)), _wgslsmith_div_u32(select(_wgslsmith_add_u32(global2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(67u, 19u)], 19u)]), min(global3[_wgslsmith_index_u32(global2.x, 19u)], 46409u), arg_0.c | arg_0.c), ~_wgslsmith_sub_u32(u_input.d, u_input.d))) ^ (abs(vec4<u32>(u_input.d, min(87880u, 19677u), ~global3[_wgslsmith_index_u32(30393u, 19u)], _wgslsmith_div_u32(38039u, u_input.d))) & ~(~vec4<u32>(global2.x, global3[_wgslsmith_index_u32(1u, 19u)], 79607u, 1u)));
    return ~firstLeadingBit(~select(~vec4<u32>(4294967295u, global2.x, 4294967295u, var_1.x), vec4<u32>(u_input.d, 63667u, 4294967295u, 0u) | vec4<u32>(29279u, 29214u, 4294967295u, var_1.x), any(vec3<bool>(arg_0.c, arg_0.c, arg_0.c))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    global2 = abs(select(_wgslsmith_clamp_vec4_u32(func_4(func_2(vec3<i32>(2147483647i, u_input.c, u_input.e.x))), abs(func_4(arg_3)), ~vec4<u32>(arg_2.x, 10449u, global3[_wgslsmith_index_u32(arg_2.x, 19u)], 5199u) | firstLeadingBit(vec4<u32>(global2.x, global3[_wgslsmith_index_u32(4294967295u, 19u)], global2.x, 38603u))), ~(firstLeadingBit(vec4<u32>(arg_1, arg_2.x, 38743u, arg_1)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, arg_2.x, 1u, global3[_wgslsmith_index_u32(0u, 19u)]), vec4<u32>(global2.x, 4294967295u, arg_2.x, global3[_wgslsmith_index_u32(55552u, 19u)])) % vec4<u32>(32u))), vec4<bool>((u_input.d | 9116u) == arg_1, false, arg_3.c, any(vec2<bool>(false, arg_0)) || true)));
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(func_4(Struct_2(1550f, arg_3.b, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global2.x, global3[_wgslsmith_index_u32(global2.x, 19u)], 0u), vec4<u32>(83077u, u_input.d, 67077u, u_input.d))), ~(vec4<u32>(0u, 27178u, 41568u, 0u) ^ vec4<u32>(arg_2.x, 29662u, 70743u, global2.x))) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(max(_wgslsmith_add_i32(u_input.a, u_input.a), ~u_input.a), ~(~0i)), reverseBits(vec2<i32>(20677i, 20341i))));
    let var_1 = Struct_1(var_0, vec4<i32>(-max(min(6410i, 60671i), 1i), abs(~var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(-6857i, firstTrailingBit(2147483647i), -1i), -(~u_input.e)), _wgslsmith_sub_i32(12209i, var_0)), 1i);
    global1 = 4294967295u;
    let var_2 = func_2(~u_input.e);
    return func_2(var_1.b.ywy);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.b;
    var var_1 = firstTrailingBit(~arg_0.yxz);
    var_1 = firstTrailingBit(_wgslsmith_add_vec3_u32(global2.ywy, vec3<u32>(arg_0.x, u_input.d ^ abs(global2.x), u_input.d)));
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    return Struct_1(-15759i, select(min(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, u_input.b, u_input.a, u_input.a)), ~vec4<i32>(u_input.a, 35182i, -66291i, u_input.a)), (vec4<i32>(u_input.b, u_input.c, u_input.b, 2147483647i) | vec4<i32>(u_input.e.x, 2147483647i, -1i, 37805i)) ^ vec4<i32>(u_input.a, u_input.b, 2147483647i, u_input.c)), vec4<i32>(max(-1i, _wgslsmith_sub_i32(-32201i, -32117i)), -abs(-1i), u_input.a, u_input.a), vec4<bool>(!(u_input.e.x < u_input.c), false, arg_1.c, true)), -1i);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    global2 = ~vec4<u32>(~global2.x, u_input.d, _wgslsmith_sub_u32(~global2.x, 4294967295u), 4294967295u) | (~(~(~vec4<u32>(1u, 4294967295u, u_input.d, 12793u))) >> (vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, 1u, u_input.d), 4294967295u, _wgslsmith_div_u32(62269u, 1u), ~u_input.d) % vec4<u32>(32u)));
    global3 = array<u32, 19>();
    let var_0 = func_5(vec4<u32>(~48629u << (global2.x % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 16817u, 38173u, global3[_wgslsmith_index_u32(u_input.d, 19u)]), select(select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 19u)], 19u)], u_input.d, global3[_wgslsmith_index_u32(global2.x, 19u)], 1u), vec4<u32>(1u, u_input.d, global3[_wgslsmith_index_u32(44021u, 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 19u)], 19u)]), true), firstLeadingBit(vec4<u32>(0u, 825u, u_input.d, 1u)), true)), 1u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global2.x, global2.x, 27350u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(global2.zxw), _wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global2.x, 19u)], 1u, global2.x), vec3<u32>(u_input.d, 70741u, global3[_wgslsmith_index_u32(u_input.d, 19u)]))))), func_1(true, 63413u, select(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(global2.zxy, global2.xwx), ~global2.yyx), ~(~global2.zzz), false), func_1(true, _wgslsmith_sub_u32(4294967295u & global3[_wgslsmith_index_u32(14044u, 19u)], firstLeadingBit(4294967295u)), ~vec3<u32>(global2.x, global2.x, 51802u), func_1(true, 9537u, vec3<u32>(u_input.d, global2.x, 6487u) | global2.wwz, func_2(u_input.e)))));
    var var_1 = func_1(all(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)))), 1u, vec3<u32>(_wgslsmith_add_u32(24948u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(global2.x, 19u)], global2.x, global2.x), vec4<u32>(global3[_wgslsmith_index_u32(global2.x, 19u)], global3[_wgslsmith_index_u32(0u, 19u)], 6887u, 4294967295u))) >> ((4294967295u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37320u, 19u)] | 45617u, 19u)]) % 32u), 51985u, _wgslsmith_div_u32(firstTrailingBit(u_input.d << (54224u % 32u)), 39076u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x)) - func_2(u_input.e).a), _wgslsmith_f_op_f32(ceil(1000f)), !(!any(vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<i32>(arg_0.a, arg_0.a, arg_2)).a - 530f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), 567f)), _wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(-811f, -1254f), var_1.c)))), vec4<f32>(-1055f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1706f - var_1.a)), -2081f), var_1.c));
    return Struct_1(arg_0.a, var_0.b, 88232i);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(-(1636i & arg_0.c), vec4<i32>(-5438i, ~(-reverseBits(20116i)), 32669i, select(arg_1.a, arg_2 >> (~0u % 32u), all(vec4<bool>(true, true, true, true)))), abs(u_input.e.x));
    var var_1 = func_1(select(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.c, var_0.a, 1i), select(vec3<i32>(19605i, 0i, 45072i), arg_1.b.wyw, true)) == arg_0.c, true, false || any(vec3<bool>(true, true, false))), min(_wgslsmith_mult_u32(~(global3[_wgslsmith_index_u32(4294967295u, 19u)] >> (1u % 32u)), global2.x), abs(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44496u, 19u)], 19u)] ^ u_input.d)), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 19u)], 1u, 20553u), ~vec3<u32>(global2.x, arg_3, 21031u), ~vec3<u32>(arg_3, 0u, u_input.d)), ~global2.xxy), func_4(func_2(arg_1.b.wwy)).x, arg_3), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-946f)) - 475f))), 951f, true));
    var var_2 = arg_0;
    global3 = array<u32, 19>();
    let var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global2.xw, global2.xw), vec2<u32>(21547u, 18653u) | vec2<u32>(36834u, u_input.d)), u_input.d), global2.zw), global2.wy);
    return func_6(arg_0, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -1000f, var_1.a)))))), -1i);
}

fn func_8(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-310f, -231f, 208f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1226f, -1312f, 265f) - vec3<f32>(-347f, -1000f, 678f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(true, _wgslsmith_mod_u32(arg_0.x, global3[_wgslsmith_index_u32(31874u, 19u)]), ~global2.wwy, Struct_2(-539f, -448f, arg_2)).b, _wgslsmith_f_op_f32(-1610f - -509f), _wgslsmith_f_op_f32(ceil(-926f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-351f, -519f, 1756f) * vec3<f32>(-266f, -1000f, -157f))))));
    var var_1 = ~vec3<i32>(10265i, func_6(Struct_1(arg_3.a, arg_3.b, u_input.c), vec3<f32>(var_0.x, 383f, var_0.x), ~(-1i)).b.x | (u_input.a >> ((4294967295u | global2.x) % 32u)), u_input.a);
    var var_2 = ~firstTrailingBit(_wgslsmith_mod_u32(3409u, ~firstLeadingBit(arg_0.x)));
    var var_3 = _wgslsmith_mult_vec4_i32(firstTrailingBit(arg_3.b), vec4<i32>(_wgslsmith_add_i32(1i, var_1.x), _wgslsmith_div_i32(-2147483647i, ~abs(-35564i)), (var_1.x & _wgslsmith_add_i32(arg_3.c, 2147483647i)) ^ 22803i, u_input.a));
    var var_4 = arg_3;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_0.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-907f, var_0.x) * global0[_wgslsmith_index_u32(arg_0.x, 30u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(23783u, 30u)] - var_0.yz)))), _wgslsmith_div_vec2_f32(var_0.zy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -1000f), var_0.xx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 528f) + vec2<f32>(var_0.x, -196f)))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) * vec2<f32>(-588f, 1387f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.d, 30u)]), _wgslsmith_f_op_vec2_f32(-var_0.zz))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.yy)) * global0[_wgslsmith_index_u32(1u, 30u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(1u, global3[_wgslsmith_index_u32(0u, 19u)]);
    global3 = array<u32, 19>();
    var var_1 = ~(~49339u);
    var var_2 = _wgslsmith_f_op_vec2_f32(func_8(_wgslsmith_div_vec4_u32(max(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 19u)], 22639u, var_0.x), vec4<u32>(4294967295u, 0u, global2.x, 4294967295u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 11419u), global2.ww), var_0.x, ~0u, abs(5244u))), max(firstLeadingBit(vec4<u32>(global2.x, var_0.x, u_input.d, 59472u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 35329u, global3[_wgslsmith_index_u32(62456u, 19u)], global2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(100819u, 41492u, 0u, u_input.d), vec4<u32>(9573u, 1u, 20682u, var_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global2.x, var_0.x, global3[_wgslsmith_index_u32(global2.x, 19u)]), vec4<u32>(61531u, 1u, 47266u, 53243u))))), true, false, func_7(func_6(func_5(vec4<u32>(var_0.x, u_input.d, u_input.d, global3[_wgslsmith_index_u32(0u, 19u)]), func_1(true, 76234u, global2.www, Struct_2(-537f, 699f, true))), vec3<f32>(_wgslsmith_div_f32(196f, 168f), 116f, _wgslsmith_f_op_f32(f32(-1f) * -1648f)), ~u_input.a), Struct_1(3272i, -(vec4<i32>(u_input.c, u_input.a, u_input.c, 1i) | vec4<i32>(u_input.e.x, 0i, -1i, u_input.e.x)), func_5(min(vec4<u32>(global2.x, 1u, 7367u, global3[_wgslsmith_index_u32(11501u, 19u)]), vec4<u32>(var_0.x, var_0.x, global3[_wgslsmith_index_u32(1086u, 19u)], 0u)), func_1(true, 1u, global2.zzw, Struct_2(1000f, -1243f, true))).b.x), 12418i, _wgslsmith_add_u32(func_4(func_1(false, var_0.x, vec3<u32>(global2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 19u)], 19u)], global2.x), Struct_2(512f, 830f, true))).x, ~10224u))));
    let var_3 = Struct_1(u_input.b, vec4<i32>(u_input.b, u_input.b, reverseBits(68391i), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_add_i32(-8298i, u_input.e.x))) ^ vec4<i32>(-16895i, abs(1i), ~(~(-1i)), u_input.a), func_5(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 29803u, 66025u, 37337u), vec4<u32>(u_input.d, 0u, 62059u, u_input.d))), Struct_2(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(360f, var_2.x)), false)).a);
    global1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~global2.x, _wgslsmith_dot_vec3_u32(~(global2.wyz ^ vec3<u32>(global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.d)), ~select(vec3<u32>(0u, 0u, 29738u), global2.xzy, vec3<bool>(false, true, true)))), _wgslsmith_mult_u32(~4294967295u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~reverseBits(0u), ~26513u, (var_0.x ^ global3[_wgslsmith_index_u32(33431u, 19u)]) & 1u, 0u), -399f, ~(~(~global3[_wgslsmith_index_u32(var_0.x ^ var_0.x, 19u)])));
}

