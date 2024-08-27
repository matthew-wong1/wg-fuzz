struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global2: array<vec3<i32>, 10>;

var<private> global3: array<vec3<u32>, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(28797u, 28760u, u_input.a, 4294967295u), vec4<u32>(u_input.b, u_input.b, 2775u, u_input.c.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, 47466u, u_input.c.x) % vec4<u32>(32u))), firstTrailingBit(~vec4<u32>(u_input.c.x, 64368u, 17988u, u_input.b))), all(select(vec3<bool>(global0.x, true, false), !vec3<bool>(true, true, global0.x), global0.yxy)), !(!select(vec4<bool>(true, true, global0.x, true), vec4<bool>(true, false, global0.x, false), global0.x))), u_input.a, select(vec4<bool>(!(global0.x & global0.x), true, true, true), !select(!vec4<bool>(global0.x, false, global0.x, true), !vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !(select(global0.x, global0.x, true) && true)));
    var var_1 = _wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(~(~u_input.c.yy), u_input.c.yy)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.a.a.zy, firstLeadingBit(~u_input.c.xz)), ~firstTrailingBit(~u_input.c.zz)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2706f, _wgslsmith_div_f32(-963f, -443f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1562f, 1092f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1740f, 2020f), vec2<f32>(-1624f, 894f), vec2<bool>(global0.x, true)))), vec2<bool>(true, false))) * vec2<f32>(484f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1915f)))) - vec2<f32>(1433f, -888f));
    var var_3 = global0.x;
    var var_4 = var_0.a;
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global0 = select(vec4<bool>(all(!global0.xw), all(select(select(arg_2.c.yzx, vec3<bool>(false, false, true), arg_0.c.xww), vec3<bool>(false, true, true), any(vec2<bool>(arg_1.c.x, false)))), (4294967295u & max(4294967295u, arg_0.a.x)) > ~_wgslsmith_dot_vec3_u32(arg_0.a.zyx, global3[_wgslsmith_index_u32(1u, 20u)]), arg_2.c.x), !vec4<bool>(any(vec3<bool>(arg_1.c.x, arg_0.c.x, true)), false, any(arg_2.c.xzx), arg_0.c.x), arg_2.c.x);
    global3 = array<vec3<u32>, 20>();
    var var_0 = Struct_1(vec4<u32>(~(~87295u), ~(arg_0.a.x & arg_0.a.x) | u_input.b, 1u, ~54621u), true, arg_1.c);
    global3 = array<vec3<u32>, 20>();
    global1 = array<vec3<bool>, 23>();
    return vec3<u32>(abs(~_wgslsmith_mod_u32(~var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(16921u, 53438u, u_input.c.x), arg_1.a.zzy))), _wgslsmith_clamp_u32(arg_1.a.x, ~arg_0.a.x, _wgslsmith_sub_u32(5150u, ~(~u_input.b))), 0u ^ arg_1.a.x);
}

fn func_2() -> vec4<bool> {
    var var_0 = ~func_4(Struct_1(vec4<u32>(0u | u_input.a, 4294967295u, u_input.c.x, reverseBits(u_input.c.x)), func_3() < -1i, !vec4<bool>(true, global0.x, global0.x, true)), Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 21070u, u_input.a, 96652u), vec4<u32>(u_input.c.x, 1u, u_input.b, u_input.a)), false, select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, true, true, global0.x), !global0.x)), Struct_1(vec4<u32>(countOneBits(4294967295u), 1u, 4294967295u, min(u_input.a, u_input.c.x)), any(!vec4<bool>(true, false, false, global0.x)), vec4<bool>(true, any(global0.zw), global0.x, !global0.x)));
    var var_1 = all(!global0.zy);
    global1 = array<vec3<bool>, 23>();
    let var_2 = ~vec2<u32>(~_wgslsmith_div_u32(~u_input.a, firstLeadingBit(16914u)), 0u);
    var_1 = !(!global0.x & true);
    return vec4<bool>(!all(global0.wy), global0.x, global0.x & select(false, -12989i != func_3(), !all(vec4<bool>(false, false, global0.x, false))), global0.x);
}

fn func_1() -> i32 {
    let var_0 = abs(~0u);
    global0 = select(!vec4<bool>(select(all(global0.wyx), any(global1[_wgslsmith_index_u32(13966u, 23u)]), true), !all(vec4<bool>(false, global0.x, true, global0.x)), true, any(func_2())), vec4<bool>(global0.x, true, any(vec3<bool>(all(vec4<bool>(true, true, global0.x, true)), !global0.x, false)), any(!vec4<bool>(true, true, global0.x, true))), all(global0.zx));
    global3 = array<vec3<u32>, 20>();
    global0 = select(vec4<bool>(!(!all(vec4<bool>(false, false, false, global0.x))), u_input.d.x <= -u_input.d.x, all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), !global0.zx)), any(!(!vec4<bool>(global0.x, false, true, true)))), select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, global0.x, true), true), func_2(), (true == !global0.x) | all(!global0.yzx)), all(global1[_wgslsmith_index_u32(~(u_input.a | ~28808u), 23u)]));
    var var_1 = Struct_1(~(vec4<u32>(abs(37171u), 69697u & var_0, _wgslsmith_sub_u32(u_input.a, 4294967295u), u_input.c.x | 1u) ^ vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.zx), ~43488u, u_input.a | var_0)), global0.x, !(!select(!vec4<bool>(global0.x, global0.x, true, false), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, false, global0.x)), !vec4<bool>(global0.x, true, false, true))));
    return 0i;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = max(min(~max(~vec4<i32>(-20456i, 1i, -283i, -69785i), vec4<i32>(14039i, -10477i, u_input.d.x, 2147483647i) | vec4<i32>(35256i, u_input.d.x, 16571i, -69616i)), vec4<i32>(2147483647i, 83115i, -2147483647i, -firstTrailingBit(103237i))), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, arg_1, -2147483647i, -1i), vec4<i32>(-37837i, u_input.d.x, arg_1, 2147483647i))));
    let var_1 = ~abs(~u_input.c) ^ max(~vec3<u32>(_wgslsmith_sub_u32(9965u, arg_3.a.x), arg_2.a.x, ~124878u), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 2349u), global3[_wgslsmith_index_u32(arg_2.a.x, 20u)]), vec3<u32>(87909u, 4294967295u, 24160u)), arg_3.a.xxx));
    var var_2 = Struct_1(arg_2.a, false, arg_2.c);
    var var_3 = u_input.d.x < ~_wgslsmith_mod_i32(-67452i, -arg_1);
    var_0 = min(-vec4<i32>(_wgslsmith_mult_i32(46380i, 1i), abs(var_0.x), select(-arg_1, _wgslsmith_dot_vec3_i32(var_0.yxw, global2[_wgslsmith_index_u32(46618u, 10u)]), !var_2.b), _wgslsmith_clamp_i32(1i, 2147483647i, -8196i)), ~_wgslsmith_mult_vec4_i32(-(~vec4<i32>(-5469i, 1171i, 1i, 0i)), vec4<i32>(2147483647i, -22994i, arg_1, -18917i)));
    return StorageBuffer(-global2[_wgslsmith_index_u32(var_2.a.x, 10u)], _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -681f, -937f) * vec3<f32>(1656f, 291f, -773f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1624f, 498f, arg_0), vec3<f32>(arg_0, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, 456f, -1645f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1112f, arg_0, 1053f) - vec3<f32>(arg_0, -1000f, -1711f)))))), _wgslsmith_sub_vec4_i32(vec4<i32>(max(_wgslsmith_mult_i32(0i, 0i), arg_1), 1i, i32(-1i) * -24456i, i32(-1i) * -1i), _wgslsmith_div_vec4_i32(countOneBits(select(vec4<i32>(2147483647i, arg_1, u_input.d.x, 19678i), vec4<i32>(-18308i, arg_1, -38994i, var_0.x), vec4<bool>(arg_2.b, false, true, false))), abs(vec4<i32>(-1i, arg_1, u_input.d.x, 14143i)))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1451f, 799f, -881f), vec3<f32>(425f, -550f, 1641f), global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, -1979f, 962f)))))));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-var_0.x), (func_1() | -(~1i)) & ~abs(-2147483647i), Struct_1(vec4<u32>(func_4(Struct_1(vec4<u32>(u_input.a, 1u, 0u, 56823u), global0.x, vec4<bool>(true, global0.x, true, false)), Struct_1(vec4<u32>(u_input.c.x, u_input.b, 4294967295u, 43067u), false, vec4<bool>(false, true, global0.x, false)), Struct_1(vec4<u32>(u_input.c.x, 0u, 9397u, 13814u), global0.x, vec4<bool>(true, global0.x, global0.x, false))).x, abs(8528u), ~1u, ~1u) | (vec4<u32>(30895u, u_input.c.x, u_input.b, u_input.c.x) & select(vec4<u32>(u_input.a, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.a, 38706u, 4294967295u, u_input.a), global0.x)), any(global0.yy), vec4<bool>(global0.x, all(vec4<bool>(true, true, true, true)), true, false)), Struct_1(~countOneBits(~vec4<u32>(u_input.b, u_input.c.x, 31405u, 12515u)), global0.x, func_2()));
}

