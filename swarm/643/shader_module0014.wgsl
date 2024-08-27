struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_5 = Struct_5(true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_5 {
    return Struct_5(true);
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = -countOneBits(u_input.d) & ~abs(global0.yx);
    global1 = Struct_5(select(false, false, true));
    var var_1 = vec2<bool>(all(!(!vec2<bool>(arg_0.x, arg_0.x))), global1.a);
    let var_2 = 1u;
    var var_3 = max(select(select(vec2<u32>(~var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 21354u), vec2<u32>(var_2, var_2))), reverseBits(~vec2<u32>(var_2, var_2)), false), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 12250u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_2), vec2<u32>(68594u, var_2), vec2<u32>(var_2, var_2)), vec2<u32>(var_2, var_2) >> (vec2<u32>(0u, 110942u) % vec2<u32>(32u))), global1.a == false), vec2<u32>(var_2, countOneBits(1u)));
    return !vec3<bool>(!all(select(vec3<bool>(false, global1.a, false), vec3<bool>(var_1.x, arg_0.x, false), vec3<bool>(true, false, false))), false, !var_1.x);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = !(!vec4<bool>(global1.a, global1.a, false, true));
    var_0 = arg_2.b;
    global1 = Struct_5(func_1().a);
    var_0 = !arg_2.b;
    var var_1 = 6319i >= _wgslsmith_div_i32(global0.x, ~(-1i));
    return Struct_2(select(select(select(vec3<bool>(arg_2.c, false, arg_2.b.x), vec3<bool>(false, false, false), select(arg_2.b.yzx, arg_2.b.xzz, vec3<bool>(arg_2.e.x, true, false))), select(select(arg_2.b.wwz, arg_2.b.wxw, arg_2.b.yyy), !var_0.wyz, !arg_2.b.xyx), true), func_3(vec2<bool>(false, all(var_0.ww))), vec3<bool>(!(arg_1.x > 25617i), func_1().a, !var_0.x & true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    var var_0 = i32(-1i) * -28380i;
    global1 = func_1();
    var_0 = 1i;
    var var_1 = 1023f;
    global1 = Struct_5(arg_2.b.a >= arg_2.b.b.x);
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)), true && arg_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1019f), 293f)))), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1421i, 2147483647i, 2147483647i)), vec3<i32>(u_input.d.x, 0i, -2147483647i) >> (vec3<u32>(5675u, 4294967295u, 1u) % vec3<u32>(32u))) << (1u % 32u), u_input.d.x, -2147483647i, -2337i), Struct_4(194f, !vec4<bool>(arg_1.x, !arg_1.x, arg_3, !arg_3), !func_2(arg_2.b.b.x, -u_input.b, Struct_4(arg_2.b.b.x, vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), false, Struct_1(-1000f, vec3<f32>(arg_2.b.a, 878f, arg_2.a)), vec2<bool>(arg_3, true))).a.x, Struct_1(_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(f32(-1f) * -619f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -101f, -2406f) - arg_2.b.b))), func_2(arg_2.b.b.x, u_input.b, Struct_4(_wgslsmith_f_op_f32(arg_2.a * -877f), select(vec4<bool>(true, global1.a, true, true), vec4<bool>(arg_0.a.x, false, arg_3, arg_3), true), true, arg_2.b, !vec2<bool>(global1.a, arg_3))).a.zy));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = -469f;
    var var_1 = _wgslsmith_mult_vec3_u32(min(vec3<u32>(~0u, ~(arg_1 >> (0u % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 73187u, arg_1), ~vec3<u32>(20509u, 1693u, 0u))), _wgslsmith_mult_vec3_u32(~(vec3<u32>(93318u, arg_1, 0u) | vec3<u32>(0u, arg_1, arg_1)), ~firstTrailingBit(vec3<u32>(arg_1, 1u, 39122u)))), vec3<u32>(~(_wgslsmith_mult_u32(arg_1, arg_1) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4348u, 1u, arg_1), vec3<u32>(37722u, 4294967295u, 9910u)) % 32u)), 43679u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 32691u), vec3<u32>(9560u, arg_1, arg_1)) << (0u % 32u))));
    global0 = vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xww, arg_0.yyy), -abs(countOneBits(abs(u_input.c.x))), countOneBits(countOneBits(abs(22186i))));
    var_1 = ~vec3<u32>(var_1.x, arg_1, 4294967295u);
    global1 = func_1();
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a | -9561i, 2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), global0.zx), 1i), firstTrailingBit(u_input.b), u_input.b), (~_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(135i, global0.x, u_input.a, 1i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 0u, 4294967295u, 51642u)) % vec4<u32>(32u))) & select(firstTrailingBit(u_input.b | vec4<i32>(u_input.a, 2147483647i, 71034i, u_input.e.x)), u_input.b, all(!vec2<bool>(global1.a, true))), vec4<i32>(-select(_wgslsmith_div_i32(u_input.e.x, u_input.a), _wgslsmith_mod_i32(u_input.c.x, global0.x), true), global0.x, select(u_input.b.x, ~(-1i), all(!vec2<bool>(global1.a, global1.a))), u_input.b.x));
    global1 = func_1();
    var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(select(global0.x, var_0.x, global1.a), _wgslsmith_mult_i32(-38737i, 1i), var_0.x, -38817i)), u_input.b), ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 44611i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global0.x), var_0.yx)), _wgslsmith_mod_i32(1i, ~6361i)), -29593i, ~func_5(_wgslsmith_mod_vec4_i32(select(vec4<i32>(global0.x, 0i, 85724i, 1i), u_input.b, global1.a), vec4<i32>(u_input.b.x, var_0.x, global0.x, -9560i)), 4294967295u, func_4(func_2(789f, vec4<i32>(-22759i, global0.x, 50727i, var_0.x), Struct_4(457f, vec4<bool>(true, global1.a, global1.a, true), global1.a, Struct_1(741f, vec3<f32>(2247f, 144f, 799f)), vec2<bool>(global1.a, true))), select(vec3<bool>(false, false, global1.a), vec3<bool>(true, false, global1.a), vec3<bool>(global1.a, global1.a, false)), Struct_3(-120f, Struct_1(-437f, vec3<f32>(694f, -891f, 376f))), global1.a), Struct_2(func_2(-1000f, vec4<i32>(u_input.d.x, -7407i, global0.x, global0.x), Struct_4(1276f, vec4<bool>(false, false, false, global1.a), false, Struct_1(217f, vec3<f32>(-1596f, 854f, 722f)), vec2<bool>(global1.a, true))).a)));
    var_0 = vec4<i32>(var_0.x << (26762u % 32u), select(global0.x, ~(-1i), (-var_0.x > (global0.x ^ var_0.x)) & !global1.a), ~((i32(-1i) * -global0.x) << (4294967295u % 32u)), -2147483647i);
    global1 = Struct_5(_wgslsmith_dot_vec2_u32(vec2<u32>(2513u, 25697u << (0u % 32u)), vec2<u32>(1u, 1u)) >= _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 0u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(25441u, 4674u), ~vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u))));
    var var_1 = min(~u_input.b, vec4<i32>(u_input.d.x, ~(_wgslsmith_mult_i32(-1i, global0.x) >> (~38138u % 32u)), 510i, var_0.x >> (1u % 32u)));
    let var_2 = _wgslsmith_add_vec4_i32(-abs(vec4<i32>(var_1.x, func_5(vec4<i32>(var_0.x, u_input.b.x, u_input.d.x, var_0.x), 74492u, Struct_2(vec3<bool>(true, false, global1.a)), Struct_2(vec3<bool>(global1.a, global1.a, true))), -32293i, var_1.x)), reverseBits(~u_input.b));
    var_1 = min(vec4<i32>(_wgslsmith_mod_i32(countOneBits(global0.x), func_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, var_0.x, -2147483647i, var_0.x), vec4<i32>(16008i, var_1.x, 0i, global0.x), vec4<i32>(1i, -1i, var_2.x, -7691i)), ~14450u, func_4(Struct_2(vec3<bool>(global1.a, false, global1.a)), vec3<bool>(global1.a, true, true), Struct_3(-1352f, Struct_1(-807f, vec3<f32>(323f, 563f, 1285f))), false), Struct_2(vec3<bool>(true, global1.a, true)))), reverseBits(~(-u_input.b.x)), abs(_wgslsmith_add_i32(global0.x, 0i)), -2147483647i), (~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.e.x, u_input.b.x), var_2) & var_2) & (~select(vec4<i32>(u_input.c.x, -1i, 29405i, -2147483647i), vec4<i32>(u_input.c.x, var_0.x, var_1.x, -23301i), global1.a) | var_2));
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(~(-51440i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(962f, 1049f, -296f, 2658f) + vec4<f32>(-1000f, -628f, -421f, -743f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(407f, 454f, -897f, 1000f) - vec4<f32>(-868f, -759f, -178f, -1019f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1508f, 1710f, -401f, -676f))))), var_2, vec4<u32>(27779u, ~firstLeadingBit(~4294967295u), 71819u, 6440u), _wgslsmith_f_op_f32(-1f));
}

