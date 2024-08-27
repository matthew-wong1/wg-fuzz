struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(84411u, 2913u);

var<private> global1: vec4<u32>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(31403u, vec4<bool>(false, false, true, false), 33631u, true, true), Struct_3(4294967295u, vec4<bool>(true, true, false, false), 4294967295u, false, false), Struct_3(1u, vec4<bool>(true, true, true, true), 0u, true, true), Struct_3(13546u, vec4<bool>(false, true, true, false), 24106u, true, true), Struct_3(1u, vec4<bool>(true, true, false, false), 92858u, true, false), Struct_3(35347u, vec4<bool>(false, false, false, false), 4294967295u, true, false), Struct_3(1u, vec4<bool>(true, true, true, false), 4294967295u, true, false), Struct_3(27782u, vec4<bool>(true, false, false, true), 108263u, true, false), Struct_3(22472u, vec4<bool>(true, false, true, true), 0u, false, true), Struct_3(4294967295u, vec4<bool>(true, true, true, false), 74118u, true, true), Struct_3(18788u, vec4<bool>(false, false, false, true), 789u, false, false), Struct_3(51973u, vec4<bool>(true, true, true, true), 4294967295u, false, true), Struct_3(127948u, vec4<bool>(false, true, false, true), 25599u, true, false), Struct_3(4294967295u, vec4<bool>(true, true, true, false), 71129u, false, true), Struct_3(14386u, vec4<bool>(true, false, true, false), 61278u, true, true), Struct_3(31168u, vec4<bool>(true, false, true, false), 1u, false, false), Struct_3(101361u, vec4<bool>(false, false, false, true), 16482u, false, true), Struct_3(858u, vec4<bool>(false, true, true, false), 2771u, false, false), Struct_3(1u, vec4<bool>(false, true, true, true), 0u, true, false), Struct_3(0u, vec4<bool>(true, true, true, false), 1u, false, true), Struct_3(4294967295u, vec4<bool>(true, true, true, true), 1647u, false, true), Struct_3(42937u, vec4<bool>(true, true, true, false), 771u, true, false), Struct_3(4294967295u, vec4<bool>(true, false, false, true), 45709u, true, false), Struct_3(1u, vec4<bool>(true, false, true, false), 16234u, false, false), Struct_3(44905u, vec4<bool>(false, false, false, false), 0u, true, true));

var<private> global4: u32 = 24410u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    global2 = Struct_4(_wgslsmith_mult_i32(~abs(~global2.a), 0i), global2.b, global2.c);
    var var_0 = select(select(!vec4<bool>(global2.b.a.x || true, all(vec3<bool>(global2.b.a.x, true, false)), all(vec3<bool>(false, global2.b.a.x, arg_0.b.a.x)), true), vec4<bool>(-197f < _wgslsmith_f_op_f32(step(251f, 654f)), arg_0.b.a.x, any(!vec2<bool>(arg_0.b.a.x, arg_0.b.a.x)), global2.b.a.x), vec4<bool>(!(!arg_0.b.a.x), all(vec4<bool>(false, global2.b.a.x, arg_0.b.a.x, false)), select(true, any(vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, false)), false), any(select(vec2<bool>(true, true), vec2<bool>(false, false), arg_0.b.a.x)))), vec4<bool>(any(vec4<bool>(true, global2.b.a.x, !arg_0.b.a.x, all(vec4<bool>(false, false, global2.b.a.x, global2.b.a.x)))), arg_0.b.a.x, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1134f + 785f), _wgslsmith_f_op_f32(abs(113f)), any(vec3<bool>(arg_0.b.a.x, global2.b.a.x, arg_0.b.a.x)))) >= 126f), select(vec4<bool>(any(arg_0.b.a), any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, 30555u), vec2<u32>(0u, 11879u)) != 39041u, select(any(vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x)), global2.b.a.x, any(vec3<bool>(true, true, false)))), select(!(!vec4<bool>(true, global2.b.a.x, arg_0.b.a.x, global2.b.a.x)), !(!vec4<bool>(true, false, arg_0.b.a.x, arg_0.b.a.x)), (global2.b.a.x || global2.b.a.x) | !global2.b.a.x), all(!vec3<bool>(true, arg_0.b.a.x, false))));
    let var_1 = vec3<i32>(global2.a, -(arg_0.a ^ 46416i), i32(-1i) * -2147483647i);
    global3 = array<Struct_3, 25>();
    var var_2 = Struct_2(_wgslsmith_div_u32(1u, ~_wgslsmith_clamp_u32(1u >> (global1.x % 32u), 4294967295u, global2.c.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.c.xzx, global2.c.xyz) << (global2.c.yzy % vec3<u32>(32u)), vec3<u32>(~global1.x, global2.c.x, abs(1u))));
    return ~arg_0.a;
}

fn func_4(arg_0: i32, arg_1: f32) -> vec4<f32> {
    var var_0 = Struct_4(_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_dot_vec2_i32(-u_input.d.zx, vec2<i32>(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(0i, u_input.d.x, global2.a))))), global2.b, ~global2.c);
    let var_1 = global2.b.a;
    global3 = array<Struct_3, 25>();
    var_0 = Struct_4(~max(-901i, arg_0 << (_wgslsmith_div_u32(0u, 1u) % 32u)), Struct_1(vec2<bool>((26586i >= global2.a) & var_0.b.a.x, var_0.b.a.x)), ~global2.c);
    var var_2 = vec4<i32>(var_0.a, global2.a, 5221i & var_0.a, -2147483647i);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(493f))), -1577f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(394f, arg_1) - _wgslsmith_f_op_f32(exp2(arg_1))), -1006f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-171f + arg_1), 275f, arg_1, arg_1))), vec4<f32>(-430f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(237f + arg_1) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(arg_1))))), _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(func_3(Struct_4(max(1i, select(-2147483647i, 0i, false)), global2.b, global2.c)), 1953f));
    global1 = vec4<u32>(24118u, 38276u, countOneBits(~(~(1u >> (u_input.a % 32u)))), ~2905u);
    global4 = global1.x;
    let var_1 = global2.b.a;
    let var_2 = Struct_2(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, 16640u, 124861u), global2.c)), select(firstLeadingBit(vec3<u32>(81428u, global1.x, u_input.c)), vec3<u32>(~1113u, ~global1.x, min(global0.x, global0.x)), select(vec3<bool>(true, false, global2.b.a.x), vec3<bool>(var_1.x, global2.b.a.x, global2.b.a.x), false)) << (u_input.e % vec3<u32>(32u)));
    return _wgslsmith_sub_vec4_u32(firstLeadingBit(select(global2.c, global2.c, var_1.x)) & countOneBits(~global2.c), global2.c) & min(vec4<u32>(44004u, global1.x, 15975u, u_input.c), ~(vec4<u32>(1u, 1u, 19943u, arg_1.x) & global2.c));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_1 {
    global1 = _wgslsmith_div_vec4_u32(~min(~vec4<u32>(global0.x, global2.c.x, 1u, 4294967295u) >> (~global2.c % vec4<u32>(32u)), func_2(vec2<u32>(u_input.a, global2.c.x), vec2<u32>(global2.c.x, arg_0) & u_input.b.yy, _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -9183i, global2.a, arg_1.x), vec4<i32>(global2.a, arg_2.x, 0i, global2.a)), abs(vec4<i32>(arg_1.x, u_input.d.x, 9495i, global2.a)))), vec4<u32>(4294967295u, global1.x, ~(~(~1u)), 80923u));
    let var_0 = Struct_4(1i, Struct_1(select(vec2<bool>(true, false && arg_3.x), vec2<bool>(false, arg_1.x == -2237i), false)), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(global2.c, ~global2.c), ~abs(func_2(vec2<u32>(1u, global0.x), vec2<u32>(global0.x, global2.c.x), vec4<i32>(global2.a, arg_1.x, arg_2.x, arg_1.x), vec4<i32>(arg_2.x, -11435i, -1i, 42317i))), ~firstTrailingBit(abs(global2.c))));
    let var_1 = vec4<bool>(true, !any(select(select(arg_3, arg_3, arg_3.x), vec4<bool>(false, true, true, arg_3.x), vec4<bool>(global2.b.a.x, global2.b.a.x, true, false))), global2.b.a.x, ~global1.x >= (abs(~0u) << (func_2(global1.ww, global1.zz, firstLeadingBit(vec4<i32>(arg_1.x, 2147483647i, global2.a, 2147483647i)), firstLeadingBit(vec4<i32>(3621i, global2.a, arg_2.x, -15485i))).x % 32u)));
    global1 = vec4<u32>(~arg_0, 4294967295u, 0u, 25971u);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_4(~arg_1.x, 212f)).yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * -276f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1541f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(555f, -357f), vec2<f32>(-397f, 195f))) + vec2<f32>(-1000f, -748f))));
    return var_0.b;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: f32) -> vec4<u32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(-(~vec3<i32>(27434i, 37670i, global2.a)), -u_input.d)), vec3<i32>(_wgslsmith_sub_i32(-28787i ^ global2.a, _wgslsmith_div_i32(7389i, 1i)), ~(-1i), u_input.d.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, -1150f, arg_3))))));
    var var_3 = arg_0;
    var var_4 = vec4<i32>(arg_0.a, global2.a, u_input.d.x, ~(~arg_0.a));
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, global0.x), ~global1.x);
    let var_1 = global2.b;
    global1 = ~func_5(Struct_4(_wgslsmith_div_i32(global2.a ^ u_input.d.x, _wgslsmith_add_i32(-9579i, -3402i)), func_1(~u_input.e.x, _wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, global2.a), u_input.d), u_input.d.xz, select(vec4<bool>(var_1.a.x, false, true, false), vec4<bool>(var_1.a.x, true, true, var_1.a.x), vec4<bool>(var_1.a.x, global2.b.a.x, true, var_1.a.x))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, var_0, 1u, global1.x), vec4<u32>(1u, 139215u, 22358u, global0.x))), global3[_wgslsmith_index_u32(~global2.c.x, 25u)], var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(721f * -764f)) - -882f));
    global1 = global2.c;
    global3 = array<Struct_3, 25>();
    global2 = Struct_4(u_input.d.x, Struct_1(global2.b.a), vec4<u32>(0u, global0.x, abs(~global2.c.x), 59359u ^ global2.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(global2.c.x, 0u, global2.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1736f, -1965f) * vec2<f32>(901f, -1516f)))))), _wgslsmith_mod_i32(global2.a, u_input.d.x), countOneBits(global1.x), 1584f);
}

