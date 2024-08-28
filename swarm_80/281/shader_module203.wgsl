struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: bool,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(1u, 85609u, true, true, 99825u), Struct_3(1u, 3856u, true, false, 26117u), Struct_3(34242u, 0u, false, true, 6796u), Struct_3(121124u, 4294967295u, false, false, 48640u), Struct_3(77591u, 4294967295u, false, false, 67458u));

var<private> global2: array<vec2<u32>, 17>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: bool) -> vec2<bool> {
    var var_0 = arg_0.a.x;
    var var_1 = ~(~abs(abs(~arg_2.yz)));
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(select(-vec3<i32>(u_input.a, 2147483647i, 29087i), firstLeadingBit(vec3<i32>(u_input.a, 2147483647i, 35853i)), (-1i & u_input.a) != ~7707i), vec3<i32>(_wgslsmith_mult_i32(~(-20786i), u_input.a), u_input.a & (u_input.a | -57016i), -firstLeadingBit(u_input.a))), 19691i, 2147483647i);
    global0 = arg_1.d;
    let var_3 = _wgslsmith_div_vec2_f32(arg_0.b.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.ww)), arg_0.a.yz)))));
    return vec2<bool>(arg_1.d, arg_1.c);
}

fn func_2() -> Struct_2 {
    global0 = true;
    global0 = any(select(!(!func_3(Struct_2(vec3<f32>(-644f, 105f, 648f), vec4<f32>(-1489f, -341f, -190f, -1000f)), global1[_wgslsmith_index_u32(4294967295u, 5u)], vec3<u32>(0u, 0u, u_input.c), false)), vec2<bool>(func_3(Struct_2(vec3<f32>(237f, -330f, 1923f), vec4<f32>(596f, -431f, -2716f, -1738f)), global1[_wgslsmith_index_u32(select(1u, 0u, true), 5u)], abs(vec3<u32>(u_input.d, 577u, 121920u)), any(vec3<bool>(false, true, false))).x, select(all(vec2<bool>(true, true)), true, true)), true));
    let var_0 = vec4<u32>(u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c & ~4294967295u, ~(~9857u), _wgslsmith_mult_u32(~u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d, 35841u, u_input.d), vec4<u32>(0u, u_input.b, 1u, u_input.e)))), abs(reverseBits(firstTrailingBit(vec3<u32>(u_input.c, u_input.e, 4294967295u))))), reverseBits(abs(~_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(0u, 17u)], vec2<u32>(u_input.d, 0u)))), ~u_input.c);
    let var_1 = Struct_2(vec3<f32>(-382f, 1511f, -1354f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, 1113f, 1000f, -473f)) + vec4<f32>(-258f, 1135f, 910f, 1029f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 547f, -1897f, 1464f))), vec4<f32>(845f, 121f, 1192f, -614f))), vec4<bool>(any(vec4<bool>(false, true, true, false)), false, true, all(vec2<bool>(true, true))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2179f, 1316f, 968f, -1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-128f, 1868f, 2269f, 1216f), vec4<f32>(1090f, 1714f, -107f, -311f))), _wgslsmith_div_vec4_f32(vec4<f32>(-366f, 1820f, 692f, -2341f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-368f, 819f, -203f, 275f))))));
    let var_2 = Struct_3(0u, u_input.e, var_1.b.x >= _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_f_op_f32(step(1589f, var_1.b.x))))), any(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), u_input.e);
    return Struct_2(vec3<f32>(168f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, -396f) - _wgslsmith_f_op_f32(f32(-1f) * -255f)), _wgslsmith_f_op_f32(587f * _wgslsmith_f_op_f32(-var_1.b.x))), 2660f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, _wgslsmith_f_op_f32(f32(-1f) * -369f), 1790f, -2094f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.a.x, false)), _wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_div_f32(1729f, -288f), -125f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    global0 = _wgslsmith_sub_u32(max(1u, ~37366u), u_input.e) == ~4294967295u;
    var var_1 = Struct_3(~(u_input.c >> ((_wgslsmith_add_u32(1u, 0u) >> (_wgslsmith_sub_u32(1u, 1u) % 32u)) % 32u)), _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(0u, 1u, 14143u, u_input.d), vec4<u32>(43083u, u_input.b, 47478u, 0u), arg_0)), ~((vec4<u32>(u_input.b, u_input.c, 4294967295u, 62529u) | vec4<u32>(u_input.d, u_input.b, 38410u, u_input.c)) & (vec4<u32>(u_input.b, 4294967295u, u_input.c, 1u) >> (vec4<u32>(87271u, u_input.c, 4294967295u, 0u) % vec4<u32>(32u))))), !all(!select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0)), false || !(false == !arg_0), 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_1.b.zx);
    let var_3 = select(_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.c, 1u, var_1.a, 0u) ^ vec4<u32>(var_1.e, u_input.e, 1u, u_input.b)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(26901u, u_input.c, 26441u, 1u), vec4<u32>(var_1.e, 8741u, var_1.a, var_1.a), vec4<u32>(1u, 12206u, 4294967295u, var_1.e) ^ vec4<u32>(1u, 38901u, 22214u, 1u))) << ((_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, 1u, var_1.e, u_input.e), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 17724u, 10480u, var_1.a), vec4<u32>(4294967295u, var_1.e, 4294967295u, u_input.d), vec4<u32>(44771u, var_1.b, 32036u, 22825u))) >> (vec4<u32>(~var_1.e, u_input.e, _wgslsmith_clamp_u32(var_1.a, 2061u, var_1.b), u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(23566u, 37935u, 79110u, u_input.e), vec4<u32>(1u, u_input.b, u_input.d, var_1.a)))), vec4<bool>(!arg_0, _wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, u_input.a), 0i) <= 0i, false, !(true != var_1.c)));
    return Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(max(var_3.x, var_1.a), abs(0u)), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(31050u, u_input.e), global2[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(var_1.a, 17u)], vec2<u32>(1u, u_input.c))))), !(func_3(Struct_2(vec3<f32>(arg_1.a.x, var_2.x, var_0.a.x), arg_1.b), Struct_3(32112u, var_1.a, true, var_1.d, 30484u), _wgslsmith_clamp_vec3_u32(var_3.xwz, vec3<u32>(25842u, var_1.b, var_1.b), var_3.wzw), any(vec4<bool>(arg_0, var_1.d, arg_0, arg_0))).x & true));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(-815f, -299f)), -1016f, 247f), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1303f * -615f), _wgslsmith_f_op_f32(259f + 792f)))), _wgslsmith_f_op_f32(round(-2622f)), _wgslsmith_f_op_f32(-258f - 1000f), 1f));
    return var_0;
}

fn func_6(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_1(54654u, all(vec4<bool>(!(3227i == u_input.a), true, all(vec4<bool>(true, true, true, true)), false)));
    let var_1 = _wgslsmith_clamp_u32(60456u, ~u_input.d, 1u);
    global1 = array<Struct_3, 5>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1961f, arg_0.b.x, _wgslsmith_f_op_f32(abs(arg_0.b.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(arg_0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(arg_0.b.wxw))))), vec3<f32>(func_5(func_4(var_0.b, Struct_2(vec3<f32>(-415f, arg_0.a.x, -522f), vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.a.x, arg_0.b.x)))).a.x, _wgslsmith_f_op_f32(1212f - arg_0.b.x), -1195f))));
    let var_3 = func_2().b.x;
    return _wgslsmith_mult_i32(u_input.a, u_input.a << (_wgslsmith_div_u32(abs(u_input.d), var_1 << (abs(var_0.a) % 32u)) % 32u));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a;
    let var_1 = u_input.a;
    var_0 = reverseBits(func_6(func_5(func_4(true, func_2()))));
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(214f)), -782f)), _wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(-368f - _wgslsmith_f_op_f32(step(-309f, _wgslsmith_f_op_f32(trunc(571f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1566f, -101f, 195f, 391f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, 1000f, -770f, 157f)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true))))) * vec4<f32>(func_2().b.x, _wgslsmith_f_op_f32(-func_5(Struct_1(4294967295u, false)).a.x), _wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(702f, -618f, true)), -932f)))));
    let var_3 = var_2.b;
    return func_5(Struct_1(~(~13221u >> (0u % 32u)), any(func_3(Struct_2(vec3<f32>(var_2.b.x, 568f, var_3.x), vec4<f32>(var_2.b.x, -176f, var_2.b.x, var_2.a.x)), Struct_3(24637u, 4294967295u, false, false, 1699u), vec3<u32>(u_input.b, u_input.b, u_input.d) << (vec3<u32>(u_input.c, 49005u, u_input.d) % vec3<u32>(32u)), true))));
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> f32 {
    global0 = all(select(vec3<bool>(func_3(func_1(), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(30175u, 17u)], global2[_wgslsmith_index_u32(75083u, 17u)]), 5u)], vec3<u32>(1u, 46777u, 42989u), false).x, true, any(select(vec4<bool>(arg_2, false, arg_3, false), vec4<bool>(arg_2, true, arg_2, arg_3), vec4<bool>(arg_3, arg_3, arg_3, true)))), !vec3<bool>(arg_2 != false, any(vec3<bool>(arg_2, false, arg_3)), arg_2), select(select(select(vec3<bool>(arg_3, arg_2, arg_3), vec3<bool>(false, true, false), vec3<bool>(arg_3, false, arg_2)), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, false, arg_3), vec3<bool>(arg_3, arg_2, arg_2)), arg_3), vec3<bool>(true, -1342f > arg_1.a.x, true), arg_2)));
    global2 = array<vec2<u32>, 17>();
    global1 = array<Struct_3, 5>();
    var var_0 = _wgslsmith_f_op_vec2_f32(round(arg_1.a.zx));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(arg_1.a.yx));
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1332f;
    global2 = array<vec2<u32>, 17>();
    let var_1 = global2[_wgslsmith_index_u32(56604u, 17u)];
    global1 = array<Struct_3, 5>();
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1017f - _wgslsmith_f_op_f32(func_7(vec4<i32>(u_input.a, -6020i, u_input.a, 2147483647i), func_1(), true, func_4(false, Struct_2(vec3<f32>(-1000f, var_0, var_0), vec4<f32>(var_0, var_0, var_0, -1059f))).b))), -699f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(518f)), _wgslsmith_div_f32(-917f, var_0), func_1().a.x, _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(var_0, 234f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0))))))));
    global1 = array<Struct_3, 5>();
    global2 = array<vec2<u32>, 17>();
    global1 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<u32>(_wgslsmith_mod_u32(var_1.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(30127u, 17u)]), 4294967295u)), 40708u, 106738u, 11166u), ~(~(~(~vec3<u32>(u_input.e, 6772u, 30749u)))), -vec2<i32>(65531i, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b + _wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, 992f, var_2.b.x), var_2.b)) + _wgslsmith_f_op_vec4_f32(-func_5(Struct_1(var_1.x, true)).b))));
}

