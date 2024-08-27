struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec2<i32>, 1>;

var<private> global2: i32;

var<private> global3: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_div_i32(u_input.a, arg_0);
    global1 = array<vec2<i32>, 1>();
    let var_1 = Struct_5(_wgslsmith_mult_i32(u_input.b, -6495i & var_0), true);
    let var_2 = reverseBits(vec4<i32>(~firstLeadingBit(-4318i), -58153i, i32(-1i) * -29365i, ~48151i) & vec4<i32>(reverseBits(u_input.a), _wgslsmith_mult_i32(arg_0, 47995i) ^ -2147483647i, -abs(arg_0), i32(-1i) * -arg_0));
    var var_3 = select(var_2, var_2 & abs(countOneBits(var_2)), true);
    return ~_wgslsmith_div_i32(var_0, var_2.x);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    global3 = Struct_4(firstTrailingBit(_wgslsmith_mult_u32(min(arg_1, arg_2), 48200u)), arg_3);
    let var_0 = select(arg_0.c.xzy, vec3<i32>(func_3(max(-2147483647i, ~arg_0.b), vec3<bool>(true, true, arg_0.a & false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1246f, -462f, 735f, 885f))), 4294967295u), ~arg_0.c.x, i32(-1i) * -(~u_input.a)), any(vec3<bool>(true, true, false)));
    global0 = _wgslsmith_add_u32(~1u, 1u);
    var var_1 = !vec2<bool>(any(!select(vec4<bool>(true, arg_0.a, true, arg_0.a), vec4<bool>(true, arg_0.a, false, true), arg_0.a)), (all(vec4<bool>(arg_0.a, true, arg_0.a, true)) | arg_0.a) && ((arg_0.a && arg_0.a) & all(vec3<bool>(true, true, arg_0.a))));
    let var_2 = Struct_4(global3.a, arg_3 | (~vec4<u32>(0u, arg_1, arg_2, 55789u) | ~(~vec4<u32>(arg_2, arg_0.d, 6021u, 0u))));
    return Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(15257i, ~arg_0.b), ~(vec2<i32>(0i, u_input.b) << (vec2<u32>(var_2.b.x, 1u) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(2147483647i, -2147483647i), var_0.zy), vec2<i32>(18182i, u_input.b)), vec2<i32>(~37012i, ~var_0.x), vec2<i32>(firstLeadingBit(1i), i32(-1i) * -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-574f))), var_0, vec2<i32>(23934i >> (1u % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 0i), vec3<i32>(arg_0.c.x, u_input.b, -25008i)), u_input.a)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = func_2(Struct_2(true, -14957i, abs(abs(vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a)) & ~vec4<i32>(0i, 0i, u_input.b, -20395i)), ~abs(global3.b.x)), 45722u, global3.a, ~(~(~vec4<u32>(4294967295u, global3.b.x, 1u, 7030u))));
    global2 = -1i;
    var var_1 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a, -45972i, _wgslsmith_div_i32(1i, -13224i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(~(~u_input.a), var_0.c.x), (i32(-1i) * -48518i) & u_input.a));
    var var_2 = Struct_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a | 52776u, abs(global3.a), _wgslsmith_div_u32(global3.b.x, 4294967295u), 58797u), global3.b), firstLeadingBit(~(~firstLeadingBit(global3.b))));
    global1 = array<vec2<i32>, 1>();
    return func_2(Struct_2(arg_0.x, u_input.a, ~(vec4<i32>(-14650i, var_0.d.x, var_0.c.x, u_input.b) | vec4<i32>(0i, 31207i, var_0.d.x, -1i)) ^ ~_wgslsmith_sub_vec4_i32(vec4<i32>(-9991i, 6381i, -40231i, -1i), vec4<i32>(var_0.c.x, -1i, u_input.b, -2147483647i)), var_2.a), 56292u >> (firstTrailingBit(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(5116u, 1u, var_2.b.x), var_2.b.wyy))) % 32u), reverseBits(~1u), global3.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_3 {
    global2 = -arg_3.c.x;
    global1 = array<vec2<i32>, 1>();
    let var_0 = func_2(Struct_2(true, ~firstTrailingBit(arg_3.d.x | arg_2.x), vec4<i32>(-max(arg_3.c.x, -1i), -_wgslsmith_add_i32(-1i, -38836i), -u_input.a, firstTrailingBit(u_input.a)), 46022u), reverseBits(~abs(_wgslsmith_clamp_u32(34840u, global3.a, global3.a))), firstTrailingBit(global3.b.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global3.b.x, 22458u, global3.b.x, 4294967295u) & global3.b, _wgslsmith_sub_vec4_u32(vec4<u32>(global3.a, 4294967295u, 2811u, 57977u), global3.b)), global3.b, reverseBits(global3.b)));
    let var_1 = Struct_4(min(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.a, global3.a), vec2<u32>(global3.b.x, global3.a)), vec2<u32>(global3.b.x, global3.a)), firstTrailingBit(~vec2<u32>(49854u, global3.a)))), global3.b);
    global2 = 2147483647i;
    return Struct_3(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), true), select(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), arg_2.x == arg_0.x), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3.b, _wgslsmith_f_op_f32(-arg_3.b)))), Struct_2(any(vec3<bool>(true, 2147483647i != arg_1, true)), 0i, _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, min(arg_2.x, arg_2.x), -18287i, -arg_1), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, -13147i, 1i, 0i), vec4<i32>(arg_3.a.x, -2147483647i, arg_0.x, 48737i) << (var_1.b % vec4<u32>(32u)))), ~(~(~60769u))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_5 {
    var var_0 = Struct_5(firstLeadingBit(7372i), false);
    let var_1 = vec3<u32>(_wgslsmith_div_u32(~firstTrailingBit(global3.a), arg_1.c.d), _wgslsmith_clamp_u32(_wgslsmith_add_u32(42894u, ~(arg_1.c.d | arg_1.c.d)), global3.a, 25242u & global3.b.x), 17618u);
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_dot_vec4_i32(arg_1.c.c, vec4<i32>(0i, _wgslsmith_add_i32(~var_0.a, func_1(func_4(arg_0, 0i, arg_0.yx, Struct_1(vec2<i32>(0i, u_input.b), -1243f, arg_0, arg_1.c.c.ww)).a.zz).d.x), var_0.a, _wgslsmith_add_i32(i32(-1i) * -1i, -_wgslsmith_clamp_i32(var_0.a, -25579i, arg_0.x))));
    var_3 = u_input.a;
    return Struct_5(var_0.a, var_0.b);
}

fn func_6(arg_0: Struct_5) -> Struct_1 {
    global0 = ~global3.a;
    global0 = 4121u;
    global2 = u_input.a ^ u_input.b;
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global3.b.x), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-374f))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, -(i32(-1i) * -1i), abs(select(arg_0.a, -2147483647i, arg_0.b))), vec3<i32>(u_input.a, 0i, 2147483647i)), vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(arg_0.a, arg_0.a), u_input.b), abs(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, u_input.b), select(u_input.a, arg_0.a, arg_0.b)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -175f, var_0.b, var_0.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b, var_0.b, 1000f, var_0.b), vec4<f32>(var_0.b, -1905f, var_0.b, 1096f))))), !vec4<bool>(arg_0.b, arg_0.b, true, false)))))));
    return func_1(!func_4(~vec3<i32>(var_0.c.x, -2147483647i, 28655i), var_0.a.x, vec2<i32>(u_input.a, u_input.b), func_2(func_4(vec3<i32>(-2489i, arg_0.a, arg_0.a), 0i, vec2<i32>(-36i, 0i), Struct_1(global1[_wgslsmith_index_u32(92223u, 1u)], var_1.x, vec3<i32>(arg_0.a, var_0.c.x, u_input.a), vec2<i32>(var_0.a.x, u_input.b))).c, _wgslsmith_mult_u32(global3.a, global3.a), global3.b.x, global3.b)).a.zz);
}

fn func_7(arg_0: Struct_1) -> Struct_2 {
    var var_0 = select(arg_0.c, arg_0.c, func_5(func_6(func_5(vec3<i32>(u_input.a, 17519i, -2077i), Struct_3(vec4<bool>(true, true, true, false), vec2<f32>(-198f, arg_0.b), Struct_2(false, arg_0.d.x, vec4<i32>(u_input.a, 0i, arg_0.d.x, u_input.a), global3.a)), vec4<bool>(false, true, true, true))).c, Struct_3(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(400f, 1045f)), func_4(arg_0.c, 44938i, vec2<i32>(arg_0.a.x, arg_0.d.x), Struct_1(global1[_wgslsmith_index_u32(43436u, 1u)], 292f, vec3<i32>(1i, u_input.b, arg_0.c.x), vec2<i32>(arg_0.d.x, arg_0.a.x))).c), vec4<bool>(true, true, false, true)).b | false);
    let var_1 = arg_0.b;
    global1 = array<vec2<i32>, 1>();
    var var_2 = Struct_2(!all(vec4<bool>(true, true, true, true)) && true, _wgslsmith_mod_i32(~u_input.b, arg_0.c.x), ~abs(countOneBits(select(vec4<i32>(arg_0.a.x, u_input.a, u_input.a, var_0.x), vec4<i32>(u_input.a, var_0.x, -1i, u_input.a), false))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~global3.a, _wgslsmith_sub_u32(~4294967295u, global3.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global3.b.xw, global3.b.yw, global3.b.zy), _wgslsmith_sub_vec2_u32(global3.b.xx, vec2<u32>(global3.a, 51029u)))), global3.b));
    var var_3 = all(vec2<bool>(_wgslsmith_f_op_f32(trunc(arg_0.b)) == arg_0.b, true));
    return Struct_2(any(!vec3<bool>(true, any(vec2<bool>(false, true)), !var_2.a)), func_6(Struct_5(var_0.x, !(!var_2.a))).d.x, var_2.c, countOneBits(var_2.d) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.x, 110642u, var_2.d), global3.b.xxy), 65271u), 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 1>();
    let var_0 = abs(_wgslsmith_div_vec2_u32(global3.b.wy, global3.b.zz));
    let var_1 = func_7(func_6(func_5(vec3<i32>(-u_input.a, u_input.a, -1i), func_4(vec3<i32>(1i, 1i, 20376i) & vec3<i32>(u_input.a, u_input.b, 1i), i32(-1i) * -484i, _wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(59737u, 1u)], global1[_wgslsmith_index_u32(global3.b.x, 1u)]), func_1(vec2<bool>(true, true))), vec4<bool>(true, select(false, true, true), true, all(vec4<bool>(true, false, false, false))))));
    global3 = Struct_4(~var_0.x, ~(~(~global3.b) & vec4<u32>(109605u << (global3.a % 32u), ~4294967295u, abs(global3.a), func_4(vec3<i32>(var_1.b, var_1.b, -1i), -29734i, vec2<i32>(0i, 69910i), Struct_1(var_1.c.yw, -691f, vec3<i32>(u_input.a, 2147483647i, u_input.b), var_1.c.ww)).c.d)));
    global3 = Struct_4(4294967295u, global3.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_3(abs(_wgslsmith_clamp_i32(75562i, var_1.b, -1i)), vec3<bool>(var_1.a, false, var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), var_1.d)));
}

