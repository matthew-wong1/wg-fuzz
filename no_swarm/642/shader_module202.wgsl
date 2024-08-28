struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), false, true, vec3<f32>(-439f, 984f, -1000f), vec4<i32>(0i, 2147483647i, 2147483647i, 2147483647i));

var<private> global1: Struct_5 = Struct_5(vec3<i32>(2147483647i, 66548i, -38209i), Struct_4(vec4<i32>(-4665i, 19453i, -1i, -1i), 1u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32) -> vec4<u32> {
    var var_0 = Struct_1(select(global0.a, global0.a, any(!(!vec4<bool>(false, global0.b, global0.a.x, global0.a.x)))), true | ((global0.c | global0.c) != (global0.a.x & (true | global0.a.x))), global0.a.x, _wgslsmith_f_op_vec3_f32(abs(global0.d)), abs(~(~_wgslsmith_mod_vec4_i32(arg_0.b.a, vec4<i32>(1i, global1.a.x, -1i, -1i)))));
    let var_1 = vec4<u32>(global1.b.b, ~_wgslsmith_sub_u32(global1.b.b, _wgslsmith_add_u32(global1.b.b, 1u)) | _wgslsmith_dot_vec3_u32(~(vec3<u32>(16653u, arg_1.b.b, 1u) | vec3<u32>(92891u, 43550u, global1.b.b)), vec3<u32>(~0u, global1.b.b ^ 41408u, ~16087u)), reverseBits(4294967295u), _wgslsmith_mult_u32(abs(global1.b.b), 17479u) << (~(~4294967295u) % 32u));
    var var_2 = Struct_3(select(global0.a.zz, !vec2<bool>(all(vec4<bool>(var_0.b, true, true, false)), false), var_0.a.yy), vec2<u32>(select(max(71711u, global1.b.b) | var_1.x, 80920u, !any(vec3<bool>(false, true, var_0.b))), 0u), abs(~(-21807i)) >> (0u % 32u));
    var var_3 = Struct_1(select(!vec3<bool>(all(vec2<bool>(false, global0.a.x)), !var_2.a.x, !var_0.a.x), !vec3<bool>(true, 4294967295u != var_2.b.x, false), true), global0.b, select(any(select(vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(true, false, global0.c, true), global0.c)) & !(var_2.c == global0.e.x), true, global0.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-1241f * global0.d.x))) * var_0.d.x), 1773f, _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_mod_vec4_i32(-min(vec4<i32>(arg_2, -2147483647i, global1.b.a.x, 0i), vec4<i32>(arg_2, 9948i, 11849i, 2147483647i)), ~vec4<i32>(global0.e.x, 7244i, arg_2, arg_1.b.a.x)) << (vec4<u32>(~(var_2.b.x >> (arg_0.b.b % 32u)), 1u, 17035u, 4294967295u) % vec4<u32>(32u)));
    let var_4 = Struct_3(var_2.a, _wgslsmith_div_vec2_u32(vec2<u32>(var_2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.b, 82230u, arg_1.b.b), var_1.wyy)), vec2<u32>(~var_1.x >> (41488u % 32u), firstLeadingBit(global1.b.b & arg_0.b.b))), 2147483647i);
    return _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b.x, arg_1.b.b, _wgslsmith_mod_u32(39698u, var_4.b.x), reverseBits(arg_0.b.b)), ~(~(~var_1)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_2.b, 98465u, global1.b.b), func_3(Struct_5(vec3<i32>(17702i, arg_3.x, -1i), arg_2), Struct_5(vec3<i32>(arg_1.a, 0i, arg_3.x), arg_2), global0.e.x)), reverseBits(firstTrailingBit(vec4<u32>(0u, global1.b.b, 10248u, arg_2.b)))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(67450u, global1.b.b, arg_1.c.x, 24586u) | vec4<u32>(0u, 75615u, global1.b.b, arg_1.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c.x, arg_2.b, 29892u, 13872u), vec4<u32>(global1.b.b, arg_1.c.x, 26195u, 0u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.b.b, arg_1.c.x, 8988u, arg_2.b), min(vec4<u32>(arg_1.c.x, arg_2.b, arg_2.b, global1.b.b), vec4<u32>(arg_2.b, global1.b.b, 70960u, arg_2.b)))));
    var var_1 = firstLeadingBit(global1.b.b) ^ var_0.x;
    var var_2 = Struct_2(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-2147483647i, arg_1.a & -2147483647i)), arg_1.b, ~(~vec2<u32>(0u, arg_2.b)) & (~(~vec2<u32>(arg_1.c.x, global1.b.b)) | vec2<u32>(global1.b.b, ~0u)), ((arg_1.c.x >> (4294967295u % 32u)) >> (arg_2.b % 32u)) > global1.b.b);
    let var_3 = Struct_3(!(!global0.a.zx), _wgslsmith_mod_vec2_u32(~reverseBits(~vec2<u32>(52609u, var_2.c.x)), var_2.c), _wgslsmith_div_i32(max(1i, arg_1.a ^ var_2.a) ^ 1i, -1i));
    global1 = Struct_5(vec3<i32>(var_3.c, _wgslsmith_div_i32(2434i, -13365i) ^ reverseBits(_wgslsmith_add_i32(u_input.b, arg_1.b.e.x)), _wgslsmith_add_i32(i32(-1i) * -var_2.a, ~var_3.c)), Struct_4(-_wgslsmith_clamp_vec4_i32(arg_2.a, -vec4<i32>(0i, arg_1.a, arg_2.a.x, arg_3.x), ~arg_1.b.e), ~(var_3.b.x << (max(arg_1.c.x, arg_1.c.x) % 32u))));
    return !(!select(vec4<bool>(arg_0 < 261f, true, select(false, false, var_2.b.a.x), !var_3.a.x), select(vec4<bool>(var_2.b.a.x, global0.a.x, false, var_2.b.b), vec4<bool>(var_3.a.x, true, var_2.b.c, global0.a.x), true), !vec4<bool>(var_3.a.x, false, global0.c, false)));
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: Struct_5) -> Struct_1 {
    global1 = arg_2;
    let var_0 = select(select(!vec4<bool>(global0.a.x, global0.b, u_input.b != -43644i, true), vec4<bool>(global0.a.x, global0.d.x >= _wgslsmith_f_op_f32(arg_1 - 488f), true, !global0.c), vec4<bool>(true, global0.b || true, true, false)), select(select(!func_2(global0.d.x, Struct_2(-2147483647i, Struct_1(global0.a, false, global0.c, vec3<f32>(-1159f, global0.d.x, -2699f), vec4<i32>(arg_0.b.a.x, arg_0.a.x, global1.a.x, arg_0.b.a.x)), vec2<u32>(global1.b.b, 1u), false), Struct_4(arg_2.b.a, 19558u), vec3<i32>(global0.e.x, -9041i, arg_2.b.a.x)), !(!vec4<bool>(false, false, false, global0.a.x)), vec4<bool>(true, -782f >= global0.d.x, global0.c, global0.a.x)), select(!(!vec4<bool>(global0.c, true, false, global0.c)), vec4<bool>(func_2(arg_1, Struct_2(-16576i, Struct_1(vec3<bool>(true, global0.a.x, global0.c), false, global0.c, vec3<f32>(arg_1, -1447f, global0.d.x), vec4<i32>(global1.a.x, u_input.a.x, global0.e.x, u_input.a.x)), vec2<u32>(28347u, global1.b.b), false), arg_0.b, global0.e.xyw).x, !global0.b, func_2(global0.d.x, Struct_2(11197i, Struct_1(vec3<bool>(true, global0.b, false), false, true, global0.d, arg_2.b.a), vec2<u32>(global1.b.b, 37680u), true), global1.b, arg_2.b.a.wxz).x, global0.a.x), func_2(global0.d.x, Struct_2(global1.b.a.x, Struct_1(vec3<bool>(global0.b, global0.c, false), true, global0.b, global0.d, arg_2.b.a), vec2<u32>(arg_0.b.b, 3761u), global0.b), Struct_4(arg_2.b.a, 1u), -vec3<i32>(arg_2.b.a.x, arg_2.b.a.x, -20401i))), select(all(vec4<bool>(true, false, true, global0.c)), all(!vec4<bool>(false, true, true, global0.b)), true)), select(!vec4<bool>(global0.b, global0.b, global0.c, true), select(select(vec4<bool>(false, true, global0.b, global0.b), vec4<bool>(false, global0.a.x, global0.a.x, global0.c), !vec4<bool>(global0.c, global0.c, global0.c, true)), vec4<bool>(true, false || global0.a.x, global0.c, global1.b.b == 4294967295u), any(global0.a)), select(select(!vec4<bool>(global0.b, true, false, global0.a.x), !vec4<bool>(global0.a.x, true, false, false), vec4<bool>(global0.b, false, global0.c, global0.a.x)), vec4<bool>(global0.b, false, true, any(vec2<bool>(false, true))), vec4<bool>(true, all(global0.a.xy), false, false))));
    global1 = Struct_5(arg_2.b.a.yyy, arg_0.b);
    var var_1 = Struct_3(vec2<bool>(true, any(!(!var_0))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(global1.b.b, 4294967295u), countOneBits(vec2<u32>(arg_0.b.b, arg_2.b.b)) | (vec2<u32>(77225u, arg_0.b.b) << (vec2<u32>(1u, 7896u) % vec2<u32>(32u)))), global0.e.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(select(arg_1, 790f, true))), _wgslsmith_f_op_f32(f32(-1f) * -708f))), _wgslsmith_div_f32(global0.d.x, 437f), _wgslsmith_f_op_f32(f32(-1f) * -1913f)));
    return Struct_1(!vec3<bool>(var_0.x, !(var_0.x && false), true), true, _wgslsmith_f_op_f32(var_2.x * global0.d.x) < _wgslsmith_f_op_f32(abs(739f)), global0.d, vec4<i32>(_wgslsmith_sub_i32(~firstTrailingBit(-2147483647i), abs(min(global1.b.a.x, -2147483647i))), max(0i, firstLeadingBit(1i)), abs(_wgslsmith_dot_vec2_i32(arg_0.b.a.wy, min(global0.e.zx, global0.e.wx))), 12242i ^ firstTrailingBit(~0i)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_5, arg_3: f32) -> Struct_1 {
    let var_0 = ((_wgslsmith_f_op_f32(sign(global0.d.x)) > _wgslsmith_f_op_f32(trunc(-912f))) || (-38296i > (arg_2.b.a.x ^ arg_0.a))) | all(arg_0.b.a.yx);
    let var_1 = vec4<i32>(~func_1(Struct_5(reverseBits(vec3<i32>(-7904i, -2147483647i, 1i)), arg_2.b), 2033f, arg_2).e.x, arg_1 << ((~arg_0.c.x | global1.b.b) % 32u), -2701i, _wgslsmith_dot_vec3_i32(-(~abs(global1.a)), vec3<i32>(min(33357i, arg_2.b.a.x), -1i, firstTrailingBit(u_input.a.x)) >> (select(_wgslsmith_mult_vec3_u32(vec3<u32>(29400u, 27300u, arg_0.c.x), vec3<u32>(global1.b.b, arg_2.b.b, global1.b.b)), ~vec3<u32>(arg_2.b.b, 33803u, 30291u), global0.a) % vec3<u32>(32u))));
    let var_2 = -(~select(max(vec2<i32>(36096i, -1i), global1.b.a.xy) | (vec2<i32>(-1i, global1.b.a.x) << (arg_0.c % vec2<u32>(32u))), firstLeadingBit(u_input.a), vec2<bool>(true, true)));
    var var_3 = global1.b.b;
    var var_4 = var_1;
    return Struct_1(vec3<bool>(true, !((i32(-1i) * -1i) <= firstTrailingBit(55690i)), arg_0.d), false, false, _wgslsmith_f_op_vec3_f32(round(arg_0.b.d)), var_1);
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    let var_0 = vec2<i32>(~(-25079i >> (_wgslsmith_mod_u32(~global1.b.b, 4294967295u) % 32u)), _wgslsmith_clamp_i32(2147483647i >> (select(1u, reverseBits(1u), true) % 32u), u_input.b, func_1(Struct_5(-vec3<i32>(24410i, -25350i, 27690i), global1.b), _wgslsmith_f_op_f32(arg_0.d.x + 1f), Struct_5(global1.b.a.zzy, global1.b)).e.x));
    var var_1 = 52830u;
    global1 = Struct_5(global0.e.xxx, Struct_4(_wgslsmith_mod_vec4_i32(global0.e, reverseBits(global1.b.a)), global1.b.b));
    global0 = arg_0;
    let var_2 = 4294967295u;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_5(~(-abs(vec3<i32>(global0.e.x, 0i, 1i))), func_5(func_4(Struct_2(2147483647i, func_1(Struct_5(global1.b.a.xwy, Struct_4(vec4<i32>(-35333i, 0i, u_input.b, 0i), 50689u)), -1000f, Struct_5(global0.e.wxz, Struct_4(global0.e, 1u))), vec2<u32>(global1.b.b, 0u), true), 1i, Struct_5(reverseBits(vec3<i32>(u_input.b, 2147483647i, global1.a.x)), Struct_4(vec4<i32>(global0.e.x, global0.e.x, u_input.a.x, global1.a.x), global1.b.b)), 1000f)));
    let var_0 = Struct_5(vec3<i32>(countOneBits(-select(-15343i, u_input.a.x, global0.c)), -2147483647i, u_input.a.x), global1.b);
    global0 = Struct_1(!func_1(var_0, 262f, Struct_5(abs(vec3<i32>(u_input.a.x, var_0.b.a.x, u_input.b)), global1.b)).a, true, !any(!global0.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x * 945f))), 892f, global0.d.x), ~(-abs(~vec4<i32>(30871i, 10308i, 21117i, u_input.b))));
    global1 = var_0;
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(20u, global1.b.b), vec2<u32>(15570u, var_0.b.b)) | (vec2<u32>(75195u, global1.b.b) | vec2<u32>(var_0.b.b, 1u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.b, 4294967295u), vec2<u32>(var_0.b.b, 15791u))), ~(~31392u) << (global1.b.b % 32u), max(func_5(Struct_1(global0.a, global0.c, global0.a.x, global0.d, vec4<i32>(global0.e.x, 1i, var_0.b.a.x, global1.b.a.x))).b, _wgslsmith_mod_u32(46011u, ~global1.b.b)), ~(~(~16483u))), firstTrailingBit(_wgslsmith_sub_vec4_u32(func_3(var_0, Struct_5(vec3<i32>(u_input.a.x, -2147483647i, global0.e.x), global1.b), 16489i), vec4<u32>(2590u, var_0.b.b, 1u, 34917u) | vec4<u32>(21063u, 27357u, 4294967295u, global1.b.b)) | reverseBits(vec4<u32>(4294967295u, var_0.b.b, global1.b.b, global1.b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.a);
}

