struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32> = vec2<i32>(-40176i, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    return arg_1;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = vec2<u32>(~(~arg_0.x), _wgslsmith_mod_u32(u_input.e.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 11401u, 55589u), vec4<u32>(u_input.a, u_input.e.x, 0u, arg_0.x)))));
    var var_1 = global1.x;
    var_1 = -firstTrailingBit(u_input.d);
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(-global1.x, 0i), (_wgslsmith_sub_i32(global1.x, -73613i) >> ((~u_input.e.x & ~4294967295u) % 32u)) ^ global1.x, _wgslsmith_clamp_i32(reverseBits(2147483647i), countOneBits(global1.x), global1.x | _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -20751i), vec2<i32>(u_input.b, global1.x))) >> (arg_0.x % 32u));
    let var_3 = -1i;
    return (firstTrailingBit(vec4<i32>(17495i | u_input.b, 1i, -1i, ~(-38335i))) >> (vec4<u32>(~firstLeadingBit(var_0.x), 8721u, arg_0.x, abs(61603u)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_div_u32(1u, var_0.x), 0u, 1u, 29193u) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global0 = func_2(-firstTrailingBit(_wgslsmith_div_vec4_i32(abs(vec4<i32>(global1.x, 13863i, u_input.b, -2147483647i)), -vec4<i32>(u_input.d, u_input.d, 40130i, 27999i))), arg_0);
    var var_0 = vec2<i32>(-3794i, abs(_wgslsmith_dot_vec4_i32(~(vec4<i32>(-2147483647i, 47855i, u_input.b, u_input.b) ^ vec4<i32>(u_input.d, u_input.b, global1.x, u_input.b)), func_3(vec4<u32>(1473u, 0u, u_input.c, u_input.e.x) & vec4<u32>(5236u, u_input.a, u_input.a, u_input.c), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-140f, 996f, 175f, -2326f), vec4<f32>(-262f, 129f, -1530f, 3338f))), !vec4<bool>(false, true, true, global0.a), arg_0))));
    var var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f + 1225f) * _wgslsmith_f_op_f32(716f + -556f)))))));
    global0 = func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, firstTrailingBit(~u_input.b), u_input.d, ~select(-2147483647i, 2147483647i, true)), select(-_wgslsmith_mod_vec4_i32(vec4<i32>(56388i, var_0.x, -1i, global1.x), vec4<i32>(var_0.x, -5563i, -27018i, 2147483647i)), vec4<i32>(-31033i, u_input.b, -10679i, _wgslsmith_dot_vec3_i32(vec3<i32>(-21284i, 0i, global1.x), vec3<i32>(-2147483647i, u_input.d, u_input.b))), !all(vec2<bool>(false, global0.a)))), Struct_1(!any(select(vec3<bool>(global0.a, arg_0.a, true), vec3<bool>(false, true, true), global0.a))));
    var_0 = ~vec2<i32>(func_3(_wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.e.x, 0u, u_input.c, 4294967295u), vec4<u32>(4294967295u, 63457u, 1u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(30516u, 47256u, 37867u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 2113f, -1000f, 911f)))), !(!vec4<bool>(arg_0.a, true, true, global0.a)), arg_0).x, u_input.d);
    return select(select(!select(vec3<bool>(true, global0.a, false), !vec3<bool>(arg_0.a, false, false), select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, true, global0.a), true)), vec3<bool>(global0.a, true || select(true, false, global0.a), true), vec3<bool>(true, true, true)), select(!(!select(vec3<bool>(false, arg_0.a, true), vec3<bool>(false, true, global0.a), global0.a)), select(select(!vec3<bool>(true, global0.a, true), vec3<bool>(true, true, true), select(vec3<bool>(arg_0.a, global0.a, arg_0.a), vec3<bool>(global0.a, false, true), vec3<bool>(false, false, arg_0.a))), !select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(true, true, true), vec3<bool>(false, global0.a, global0.a)), vec3<bool>(all(vec4<bool>(false, false, arg_0.a, arg_0.a)), all(vec2<bool>(true, true)), global0.a && global0.a)), true), !all(vec2<bool>(false, true)));
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(func_2(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, global1.x, -1i, 2147483647i), vec4<i32>(-27740i, u_input.d, -40220i, global1.x)), vec4<i32>(2147483647i, u_input.d, global1.x, 2147483647i) << (vec4<u32>(u_input.e.x, u_input.e.x, 25979u, u_input.c) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(39030i, 1i, 35272i, -1i), vec4<i32>(global1.x, global1.x, -1i, -1i), min(vec4<i32>(-2147483647i, -1i, global1.x, global1.x), vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d)))), Struct_1(global0.a)).a);
    var var_1 = ~_wgslsmith_dot_vec2_u32(abs(firstTrailingBit(u_input.e.zy)), u_input.e.zx);
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, ~(-1i), 58832i) >> ((~vec3<u32>(3818u, u_input.e.x, 13210u) | (vec3<u32>(u_input.c, u_input.a, 4294967295u) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.a), u_input.e) % vec3<u32>(32u)))) % vec3<u32>(32u)), func_3(~reverseBits(abs(vec4<u32>(63907u, 17713u, 67061u, 28376u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(462f, 900f, 1000f, 1000f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2828f, -1239f, 558f, -1432f))))), select(!select(vec4<bool>(arg_0, arg_0, global0.a, false), vec4<bool>(false, arg_0, false, false), vec4<bool>(false, arg_0, true, true)), !vec4<bool>(true, false, true, global0.a), select(select(vec4<bool>(var_0.a, global0.a, false, global0.a), vec4<bool>(false, var_0.a, true, false), vec4<bool>(true, true, arg_0, true)), !vec4<bool>(var_0.a, arg_0, arg_0, arg_0), select(vec4<bool>(true, true, true, var_0.a), vec4<bool>(arg_0, arg_0, false, arg_0), false))), Struct_1(abs(global1.x) == _wgslsmith_sub_i32(-26503i, 0i))).xwy);
    global1 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(var_2.zx, vec2<i32>(_wgslsmith_mod_i32(var_2.x, global1.x), -u_input.b) << (~u_input.e.zx % vec2<u32>(32u)), var_2.yx));
    global1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 13431i, -33329i, var_2.x), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -4911i, 12037i, -12056i)), -vec4<i32>(global1.x, -8434i, var_2.x, -2147483647i))), firstTrailingBit(abs(vec4<i32>(-2147483647i, -2147483647i, 0i, 2147483647i)))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(min(_wgslsmith_mod_i32(-69878i, -1i), 1i), select(21979i, var_2.x, arg_0)), max(var_2.x, global1.x) | u_input.d, firstTrailingBit(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(52882u, 18683u, u_input.e.x, 0u), vec4<u32>(u_input.a, 3059u, u_input.a, u_input.a), vec4<u32>(1u, u_input.e.x, u_input.e.x, u_input.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, -1221f, 820f, -1631f)), select(vec4<bool>(arg_0, global0.a, var_0.a, false), vec4<bool>(global0.a, false, var_0.a, arg_0), vec4<bool>(true, var_0.a, arg_0, true)), Struct_1(true)).x)));
    return func_2(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(var_2.x, 1i, u_input.d, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.d, 1i), vec4<i32>(29941i, global1.x, u_input.d, 0i))), abs(vec4<i32>(var_2.x, u_input.b, global1.x, var_2.x))) >> (~vec4<u32>(firstTrailingBit(u_input.c), 4294967295u ^ u_input.c, 1u, ~u_input.a) % vec4<u32>(32u)), func_2(vec4<i32>(_wgslsmith_sub_i32(global1.x, var_2.x), ~_wgslsmith_add_i32(global1.x, -1i), _wgslsmith_add_i32(_wgslsmith_div_i32(var_2.x, -28297i), var_2.x), ~u_input.d), Struct_1(func_1(var_0).x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(all(!(!vec3<bool>(true, global0.a, global0.a))));
    global0 = func_4((u_input.c >= firstTrailingBit(u_input.e.x >> (17117u % 32u))) && (all(func_1(Struct_1(global0.a))) && all(select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(true, global0.a, global0.a), vec3<bool>(true, false, global0.a)))));
    let var_0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(210f * _wgslsmith_div_f32(-483f, -456f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1170f), -1409f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, -980f, 1457f, -1548f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(770f, -546f, 194f, -233f) - vec4<f32>(-1999f, 1175f, -253f, 978f))))));
    global1 = max(vec2<i32>(select(global1.x, -u_input.d, true), -(~_wgslsmith_div_i32(global1.x, 16933i))), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i, -65409i), vec2<i32>(38165i, global1.x)), vec2<i32>(global1.x, 42596i)), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, select(_wgslsmith_sub_u32(~u_input.e.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 84704u, var_0), vec4<u32>(42737u, var_0, 8184u, u_input.c)), 1u)), ~((var_0 ^ 1u) ^ 33708u), func_1(Struct_1(func_2(vec4<i32>(global1.x, global1.x, global1.x, global1.x), Struct_1(false)).a)).x), vec3<f32>(var_1.x, 1114f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(425f))), var_1.x, !select(false, true, global0.a)))), 1i | (0i >> (((u_input.e.x << (4294967295u % 32u)) | u_input.c) % 32u)));
}

