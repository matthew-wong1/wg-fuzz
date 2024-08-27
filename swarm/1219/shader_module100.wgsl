struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1270f, -483f, -982f);

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<u32>(12601u, 1u), vec3<f32>(840f, 101f, 786f)), Struct_1(vec2<u32>(1u, 32405u), vec3<f32>(837f, -2155f, -1000f)), Struct_1(vec2<u32>(1u, 57251u), vec3<f32>(1458f, -216f, 1283f)), Struct_1(vec2<u32>(0u, 0u), vec3<f32>(-420f, -336f, 1914f)), Struct_1(vec2<u32>(3736u, 1u), vec3<f32>(-156f, 1493f, -949f)), Struct_1(vec2<u32>(107937u, 0u), vec3<f32>(695f, -471f, -308f)), Struct_1(vec2<u32>(1u, 8179u), vec3<f32>(-868f, -1060f, 1000f)), Struct_1(vec2<u32>(84429u, 88772u), vec3<f32>(257f, -781f, -184f)), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(1844f, 429f, 424f)), Struct_1(vec2<u32>(3450u, 0u), vec3<f32>(-1374f, -576f, -730f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<i32> {
    global2 = array<Struct_1, 10>();
    let var_0 = arg_1;
    var var_1 = 11523u;
    var var_2 = vec3<bool>(any(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, true), all(vec3<bool>(true, true, true)))), true, all(vec3<bool>(select(true, any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, false))), true, true)));
    var var_3 = ~(-_wgslsmith_add_vec2_i32(~(-vec2<i32>(0i, u_input.b)), countOneBits(vec2<i32>(u_input.c, 0i))));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(6221i, abs(2147483647i), -556i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, 0i, var_3.x, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -39660i, var_3.x, 2147483647i), vec4<i32>(14826i, 2655i, -12649i, 41178i)))), _wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, ~u_input.b, -29275i, -u_input.b), vec4<i32>(-2147483647i >> (0u % 32u), _wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(var_3.x, 1i, -17022i), _wgslsmith_mod_i32(28571i, 22349i)))), _wgslsmith_add_i32(0i, var_3.x) << (~0u % 32u), max(1i | u_input.b, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(60797i, 50192i, u_input.b), vec3<i32>(u_input.c, u_input.b, var_3.x))), min(max(vec3<i32>(-9214i, -16719i, var_3.x), vec3<i32>(u_input.c, var_3.x, var_3.x)), -vec3<i32>(u_input.c, var_3.x, -1799i)))), -20034i);
}

fn func_2() -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2471f, 404f)) + vec3<f32>(global0.x, 1905f, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1083f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), false))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, global0.x, 1520f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(368f, global0.x, global0.x), vec3<f32>(global0.x, global0.x, global0.x), true))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(1491f)), _wgslsmith_div_f32(230f, -940f), -433f))), vec3<bool>(!((-1i == u_input.b) | true), !all(vec2<bool>(true, false)), any(vec3<bool>(u_input.b > u_input.c, all(vec2<bool>(false, false)), true)))));
    let var_0 = vec2<u32>(~_wgslsmith_dot_vec2_u32(firstLeadingBit(~u_input.a.yx), min(vec2<u32>(3406u, u_input.a.x), ~vec2<u32>(u_input.a.x, 30819u))), _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(22410u, ~_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 0u)))));
    var var_1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.b), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -27590i)) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, var_0.x), vec4<u32>(39740u, var_0.x, 4294967295u, var_0.x))), u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.c, ~u_input.c, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-u_input.b, ~u_input.c), reverseBits(_wgslsmith_mult_i32(u_input.c, u_input.b)), u_input.c), _wgslsmith_dot_vec4_i32(func_3(global0.x, global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 10u)], global2[_wgslsmith_index_u32(~var_0.x, 10u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1570f) + vec3<f32>(297f, global0.x, -566f))), countOneBits(~vec4<i32>(u_input.c, -16937i, 2147483647i, u_input.b)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f + global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-471f, -2039f)), global0.x, 204f)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(global0.x + global0.x))) * -2242f), var_2.x, -634f);
    return false;
}

fn func_4(arg_0: bool) -> Struct_1 {
    global1 = ~10712u;
    global2 = array<Struct_1, 10>();
    var var_0 = global2[_wgslsmith_index_u32(52226u, 10u)];
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, _wgslsmith_f_op_f32(578f - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(abs(var_0.b.x)))), global0.x), _wgslsmith_f_op_vec3_f32(-var_0.b), !any(!vec4<bool>(true, arg_0, false, arg_0)) & false));
    var var_1 = !(!(_wgslsmith_clamp_i32(17511i, 0i, abs(u_input.b)) != firstTrailingBit(select(1i, -4313i, false))));
    return global2[_wgslsmith_index_u32(var_0.a.x, 10u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(reverseBits(~vec2<u32>(reverseBits(14104u), ~0u)), vec3<f32>(-1059f, arg_1.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-410f)) - arg_1.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.x * global0.x)))))));
    var var_1 = _wgslsmith_add_i32(~1i, abs(countOneBits(-38752i)));
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(30399u, 4294967295u, ~select(select(4294967295u, u_input.a.x, true), u_input.a.x, true)), 0u, 10810u);
    var var_3 = vec3<i32>(u_input.c, abs(-u_input.b), i32(-1i) * -abs(u_input.b));
    global2 = array<Struct_1, 10>();
    return func_4(true);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global2 = array<Struct_1, 10>();
    let var_0 = ~abs(vec2<u32>(arg_0.a.x, arg_0.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-677f, _wgslsmith_f_op_f32(ceil(-994f))));
    var var_2 = func_5(func_4(func_2()), arg_0);
    var var_3 = Struct_1(~vec2<u32>(var_2.a.x, ~(~var_0.x)), arg_0.b);
    return _wgslsmith_div_u32(~41841u, ~(~(7760u << (u_input.a.x % 32u)) | 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(abs(~_wgslsmith_dot_vec3_u32(u_input.a.wzx, u_input.a.yyz)) ^ (min(u_input.a.x, 4294967295u) << (_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(1u, u_input.a.x)) % 32u)), u_input.a.x >> (6481u % 32u), u_input.a.x);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1953f))))));
    global2 = array<Struct_1, 10>();
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(sign(-178f))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -687f, -1497f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(709f * -380f), _wgslsmith_f_op_f32(trunc(-612f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2933f, 695f, 850f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-215f, global0.x, global0.x), vec3<f32>(-1093f, -2605f, 1416f))))), false)), vec3<f32>(-276f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-964f - global0.x), _wgslsmith_f_op_f32(global0.x - 583f)))), _wgslsmith_f_op_f32(f32(-1f) * -357f)));
    let var_1 = ~(~reverseBits(~(~var_0.x)));
    global1 = firstTrailingBit(func_1(Struct_1(var_0.yz, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2644f, global0.x, global0.x) - vec3<f32>(global0.x, 1824f, global0.x)))) << (func_1(Struct_1(u_input.a.zw ^ var_0.yz, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2755f, 1477f, global0.x), vec3<f32>(global0.x, 149f, global0.x))))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_sub_u32(25675u, select(u_input.a.x << (u_input.a.x % 32u), firstTrailingBit(var_1), false)), _wgslsmith_sub_u32(~(27492u ^ var_1), ~(~82002u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(228f, -673f, global0.x, 1124f) * vec4<f32>(875f, 654f, global0.x, 187f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 1000f, -673f, -491f))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 628f), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1627f, -1000f, 277f, global0.x), vec4<f32>(global0.x, -1430f, global0.x, 1455f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, -485f, -183f), vec4<f32>(global0.x, -947f, 497f, global0.x))))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(56135i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(22475i, u_input.c)), _wgslsmith_mod_i32(u_input.c, 1i)), vec3<i32>(u_input.c, u_input.b >> (44970u % 32u), _wgslsmith_add_i32(55002i, -1i))), -(~_wgslsmith_div_vec3_i32(vec3<i32>(-26087i, -25226i, u_input.c), vec3<i32>(-45586i, u_input.c, 1i)))), var_0.x, ~_wgslsmith_div_u32(~var_1, func_4(true).a.x));
}

