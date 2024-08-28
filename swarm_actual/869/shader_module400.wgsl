struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_mod_u32(1u, 48555u);
    return -countOneBits(global1.a);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = -28359i;
    var_0 = -(i32(-1i) * -2147483647i);
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(countOneBits(_wgslsmith_sub_u32(4294967295u, 68751u))), ~_wgslsmith_add_u32(1u, 0u)), 13u)];
    var var_2 = vec4<i32>(global0.a ^ ~global0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-12914i, -47720i, ~(-25716i), -global0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -1i, arg_0, global1.a), countOneBits(vec4<i32>(14747i, u_input.a, 1i, global0.a)))), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, var_1.b.x, -12102i, u_input.a), -(vec4<i32>(9623i, 9599i, var_1.b.x, 660i) | vec4<i32>(45393i, global0.a, 2147483647i, u_input.a)))), 1581i, ~(-firstLeadingBit(var_1.b.x)));
    var var_3 = -1218f;
    return -1i;
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_clamp_i32(0i, abs(func_3(-7148i)), -global0.a));
    global1 = Struct_2(firstLeadingBit(u_input.a));
    let var_0 = Struct_2(-2266i);
    let var_1 = true;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global3 = array<vec2<bool>, 20>();
    let var_0 = Struct_2(arg_3.b.x);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)));
    var var_2 = func_2();
    let var_3 = -760f;
    return Struct_2(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(56988i, 3214i), 1i, reverseBits(var_0.a)), -select(vec4<i32>(arg_2.a, u_input.a, 0i, arg_2.a), vec4<i32>(1i, 2147483647i, 2147483647i, global0.a), true)), 32702i, true));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = Struct_1(arg_2, -vec3<i32>(1i, func_2().a, -2147483647i), arg_0.zwx);
    var var_2 = 0u;
    global1 = func_2();
    global1 = func_4(func_4(Struct_2(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), var_1.b.yx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(269f, -412f, 1000f), vec3<f32>(1951f, -156f, -1201f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1024f, 1064f, -347f))))), func_2(), Struct_1(arg_2, vec3<i32>(-12289i << (var_1.a.x % 32u), _wgslsmith_dot_vec2_i32(var_1.b.xx, var_1.b.yy), func_2().a), vec3<bool>(true, all(arg_0), any(arg_0)))), vec3<f32>(1f, 1f, 1f), Struct_2(var_1.b.x), global2[_wgslsmith_index_u32(var_1.a.x, 13u)]);
    return func_4(Struct_2(_wgslsmith_sub_i32(1i, reverseBits(~(-2147483647i)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-478f, -1746f, 434f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1216f, 455f, 1287f), vec3<f32>(1171f, 1000f, -967f), var_1.c))) - vec3<f32>(_wgslsmith_f_op_f32(abs(499f)), _wgslsmith_f_op_f32(f32(-1f) * -585f), -322f)))), func_4(Struct_2(arg_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-366f, -1847f), -1385f, _wgslsmith_f_op_f32(sign(-766f)))), Struct_2(firstTrailingBit(var_1.b.x)), global2[_wgslsmith_index_u32(max(var_1.a.x, 2344u), 13u)]), global2[_wgslsmith_index_u32(0u, 13u)]);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global2 = array<Struct_1, 13>();
    var var_0 = vec2<bool>(true, all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))) || (8708i <= arg_0.x));
    global1 = arg_1;
    var var_1 = ~(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, 57621u, 0u, 0u)), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), vec4<u32>(abs(31661u), ~0u, 4294967295u, ~4294967295u)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(62435u, 4294967295u, 39396u, 34278u)), _wgslsmith_mod_vec4_u32(vec4<u32>(65444u, 4294967295u, 38074u, 1u), vec4<u32>(4294967295u, 1u, 1600u, 96267u)), vec4<u32>(5315u, 1u, 29383u, 4294967295u)), ~vec4<u32>(26977u, 14363u, 33982u, 1u)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-139f, 419f))), 354f, 358f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1370f + 1000f)), _wgslsmith_div_f32(-764f, _wgslsmith_f_op_f32(step(377f, -225f))), -961f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(106f, 1710f, 494f) - vec3<f32>(965f, -1148f, 142f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-739f, -1012f, 252f)))), vec3<f32>(_wgslsmith_f_op_f32(-1063f + 1015f), _wgslsmith_div_f32(424f, 674f), 1f)))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(vec3<i32>(-(u_input.a << (65359u % 32u)), 39831i, func_1(vec4<bool>(false, true, true, true)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global0.a, 2147483647i, -11196i), vec4<i32>(-5427i, global0.a, u_input.a, -1i))) | ~max(-vec3<i32>(1i, -2147483647i, 2147483647i), vec3<i32>(0i, u_input.a, 0i)), Struct_2(firstTrailingBit(u_input.a)), func_5(vec4<bool>(true, true, true, true), Struct_2(-global1.a), vec4<u32>(1u, 1u, 1u, 1u), func_4(Struct_2(0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-258f, 693f, -2477f) + vec3<f32>(-1430f, -895f, -403f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1870f, 1500f, -1033f))), func_2(), global2[_wgslsmith_index_u32(22776u, 13u)])));
    global2 = array<Struct_1, 13>();
    global0 = Struct_2(firstTrailingBit(abs(global1.a)));
    var var_0 = vec2<bool>(!(!all(vec2<bool>(true, false))), true);
    var var_1 = _wgslsmith_mod_u32(0u, 28285u);
    global2 = array<Struct_1, 13>();
    let var_2 = Struct_1(~(firstTrailingBit(~vec4<u32>(1204u, 0u, 4294967295u, 28312u)) >> (max(vec4<u32>(48307u, 1u, 1u, 40809u), select(vec4<u32>(1u, 0u, 4294967295u, 26952u), vec4<u32>(10983u, 0u, 43017u, 7354u), vec4<bool>(false, var_0.x, false, var_0.x))) % vec4<u32>(32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(global0.a, u_input.a, global0.a), vec3<i32>(u_input.a, 1i, -21602i) ^ vec3<i32>(2147483647i, global1.a, 1i)), ~(-vec3<i32>(global0.a, u_input.a, global1.a)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-10656i, 50461i, 2147483647i), vec3<i32>(0i, global1.a, 2147483647i)))), vec3<i32>(i32(-1i) * -2147483647i, firstTrailingBit(_wgslsmith_div_i32(-29469i, -30994i)), 19991i)), !vec3<bool>(var_0.x, var_0.x, any(vec3<bool>(var_0.x, var_0.x, true))));
    global1 = Struct_2(_wgslsmith_div_i32(48994i, global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(max(4294967295u, 26681u), ~52207u), 1496f, var_2.a.x);
}

