struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 22152i;

var<private> global1: vec4<u32> = vec4<u32>(27976u, 11754u, 4294967295u, 56804u);

var<private> global2: array<u32, 12>;

var<private> global3: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global2 = array<u32, 12>();
    var var_0 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), false), true && any(vec3<bool>(true, false, true))), select(vec4<bool>(true, true, true, u_input.a == u_input.a), vec4<bool>(true, true, false, any(vec2<bool>(false, false))), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(926f + -569f), _wgslsmith_div_f32(-1007f, 513f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(146f)), _wgslsmith_f_op_f32(718f * -254f)));
    var var_1 = vec3<i32>(-firstTrailingBit(_wgslsmith_div_i32(abs(18451i), 9872i)), 42369i, reverseBits(u_input.a));
    global0 = var_1.x;
    var var_2 = Struct_2(Struct_1(true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-627f, -112f, all(vec4<bool>(true, false, var_0.x, var_0.x))))))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: f32) -> u32 {
    global3 = arg_0.a.a;
    var var_0 = select(select(global1.zy, max(global1.wx, vec2<u32>(min(30087u, arg_0.d), firstLeadingBit(4294967295u))), arg_0.a.a), abs(global1.wy), vec2<bool>(!arg_0.c.a, arg_2 == _wgslsmith_add_i32(u_input.a, u_input.a)));
    var var_1 = ~reverseBits(reverseBits(vec4<u32>(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 54505u, global2[_wgslsmith_index_u32(arg_0.d, 12u)], arg_0.b), vec4<u32>(100741u, 1u, 15408u, 25870u)), var_0.x, global2[_wgslsmith_index_u32(13591u << (global1.x % 32u), 12u)])));
    var var_2 = global1.wwx;
    return 23070u;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> Struct_4 {
    var var_0 = countOneBits((~_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(4294967295u, 12u)]) ^ 0u) ^ firstTrailingBit(global1.x));
    let var_1 = Struct_3(arg_0.a, global2[_wgslsmith_index_u32(global1.x ^ ~countOneBits(reverseBits(4294967295u)), 12u)], arg_0.a, func_4(Struct_3(Struct_1(true), firstLeadingBit(~global2[_wgslsmith_index_u32(14452u, 12u)]), arg_0.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f))), -197f, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))));
    global2 = array<u32, 12>();
    let var_2 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-5682i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(1u, var_1.d) % vec2<u32>(32u)))), 1i, _wgslsmith_add_i32(u_input.a, u_input.a), -select(_wgslsmith_dot_vec2_i32(vec2<i32>(-48298i, u_input.a), vec2<i32>(u_input.a, u_input.a)), u_input.a ^ -70056i, true));
    var var_3 = var_1;
    return Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1622f, 439f, -1044f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(436f, -747f, var_1.e))))))), !(2147483647i > _wgslsmith_add_i32(firstLeadingBit(19534i), u_input.a << (global2[_wgslsmith_index_u32(4294967295u, 12u)] % 32u))), any(vec2<bool>((var_1.c.a & var_1.c.a) || true, global1.x <= (18920u >> (0u % 32u)))), Struct_3(Struct_1(true), 12044u, var_3.a, var_3.b, -236f), arg_0);
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: f32) -> Struct_4 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-(~(i32(-1i) * -2147483647i)), u_input.a, u_input.a), vec3<i32>(-u_input.a, u_input.a, u_input.a));
    var var_1 = arg_0.e;
    global1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 13701u, ~arg_0.d.b, 0u), max(~(~vec4<u32>(0u, global2[_wgslsmith_index_u32(37669u, 12u)], 23757u, global2[_wgslsmith_index_u32(20028u, 12u)])), max(vec4<u32>(arg_0.d.b, 1u, 40334u, global2[_wgslsmith_index_u32(95642u, 12u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d.b, 43974u, global2[_wgslsmith_index_u32(global1.x, 12u)], arg_0.d.b), vec4<u32>(global1.x, 4294967295u, arg_0.d.b, global1.x), vec4<u32>(0u, arg_0.d.b, global2[_wgslsmith_index_u32(17606u, 12u)], global1.x)))));
    let var_2 = global1.x;
    return func_2(arg_0.e, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
}

fn func_6(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    global2 = array<u32, 12>();
    global1 = ~abs(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(17374u, 12u)], 4294967295u, global1.x, global1.x), ~vec4<u32>(4294967295u, 95424u, 61886u, arg_0.d.b), vec4<u32>(40181u, arg_0.d.b, arg_0.d.b, global2[_wgslsmith_index_u32(0u, 12u)]) << (vec4<u32>(global2[_wgslsmith_index_u32(17493u, 12u)], 62732u, 4294967295u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.d.b, 26565u), vec4<u32>(0u, 4294967295u, 9599u, global1.x))));
    var var_0 = arg_0.e.a;
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(2147483647i, -1i >> (min(_wgslsmith_add_u32(0u, 8841u), arg_0.d.b) % 32u)), -2147483647i);
    global0 = -15768i;
    return arg_0.d;
}

fn func_7(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-func_5(Struct_4(vec3<f32>(-791f, -1000f, -888f), arg_0.a.a, arg_0.a.a, Struct_3(Struct_1(arg_0.a.a), 4294967295u, Struct_1(false), 14531u, 188f), Struct_2(Struct_1(arg_0.c.a))), _wgslsmith_f_op_f32(arg_1 - -1250f), _wgslsmith_f_op_f32(-arg_2)).a.x), _wgslsmith_f_op_f32(arg_2 - -2060f)));
    return Struct_2(func_5(func_2(func_5(func_5(Struct_4(var_0, false, true, arg_0, Struct_2(arg_0.a)), -1863f, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -947f), 1671f).e, arg_0.a.a | !arg_0.a.a, _wgslsmith_div_f32(arg_0.e, -1211f)), 326f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 + var_0.x)))))).d.c);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = func_7(func_6(func_5(func_2(Struct_2(Struct_1(true)), any(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -822f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1077f, 492f)) * 566f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f) - 937f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1574f, -982f)) - 688f)), func_2(func_2(Struct_2(func_2(Struct_2(Struct_1(true)), true, -176f).e.a), true & any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-2292f - -1000f)).e, all(vec3<bool>(true, true, func_2(Struct_2(Struct_1(false)), true, -1953f).b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(497f)) + _wgslsmith_f_op_f32(abs(-1773f))), 1000f))).a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<u32>(1u, 0u));
    var var_1 = global1.ww;
    return Struct_1(true);
}

fn func_8(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_3(func_5(func_2(arg_2, func_1(u_input.a & -2147483647i, vec3<u32>(global1.x, global1.x, global1.x)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1571f) * 939f)), _wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(min(1174f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1753f - -145f)))))).d.c, _wgslsmith_add_u32(select(~global2[_wgslsmith_index_u32(~4224u, 12u)], _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), ~global1.xz), true), 70475u), arg_3, countOneBits(~_wgslsmith_dot_vec3_u32(global1.xzz, vec3<u32>(1u, 1u, 0u))), func_6(func_5(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1605f, -307f, 386f)), arg_2.a.a, true, func_5(Struct_4(vec3<f32>(489f, -2181f, 1000f), arg_2.a.a, true, Struct_3(arg_2.a, 30854u, arg_2.a, 0u, 955f), Struct_2(arg_3)), -744f, 457f).d, func_5(Struct_4(vec3<f32>(-369f, -838f, 1407f), false, arg_0.x, Struct_3(Struct_1(true), 0u, arg_3, global1.x, -1000f), arg_2), 203f, -742f).e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(439f + -683f) - _wgslsmith_div_f32(1000f, -924f)), 1329f), -1532f).e);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(func_5(func_5(Struct_4(vec3<f32>(-656f, -1024f, 1310f), arg_2.a.a, arg_0.x, Struct_3(arg_3, 41066u, arg_3, 53530u, 339f), Struct_2(var_0.c)), var_0.e, -1201f), _wgslsmith_f_op_f32(step(var_0.e, var_0.e)), -768f).a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, -755f, var_0.e), vec3<f32>(var_0.e, var_0.e, var_0.e), vec3<bool>(false, var_0.c.a, arg_0.x))) - vec3<f32>(-134f, 782f, var_0.e))))), all(select(vec3<bool>(arg_1.x, func_7(var_0, var_0.e, -752f, vec2<u32>(4294967295u, 0u)).a.a, !arg_2.a.a), !arg_1, select(vec3<bool>(arg_0.x, arg_3.a, var_0.a.a), arg_1, true))), all(select(!vec4<bool>(true, false, true, arg_1.x), select(vec4<bool>(arg_1.x, true, false, true), vec4<bool>(arg_0.x, true, true, false), var_0.a.a), vec4<bool>(arg_1.x, false, false, arg_3.a))) & false, Struct_3(Struct_1(true), 63730u, Struct_1(arg_1.x), firstLeadingBit(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)] << (1u % 32u), 1u)), var_0.e), arg_2);
    let var_2 = vec4<bool>(-1i != _wgslsmith_dot_vec2_i32(max(countOneBits(vec2<i32>(u_input.a, 19142i)), firstLeadingBit(vec2<i32>(0i, -13321i))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 53075i), -vec2<i32>(-50757i, u_input.a))), !func_5(Struct_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(430f, var_0.e, 1353f))), var_1.e.a.a, true, Struct_3(var_1.d.c, 8548u, arg_3, 16892u, var_0.e), Struct_2(var_1.d.c)), _wgslsmith_f_op_f32(-1591f + 1000f), _wgslsmith_f_op_f32(-297f - var_0.e)).b, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_0.e)) <= _wgslsmith_f_op_f32(f32(-1f) * -368f)) && true, func_7(func_6(Struct_4(_wgslsmith_f_op_vec3_f32(abs(var_1.a)), any(arg_1.xx), func_2(Struct_2(Struct_1(true)), arg_3.a, 349f).c, Struct_3(arg_3, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28605u, 12u)], 12u)], 12u)], arg_3, var_1.d.b, var_0.e), var_1.e), var_1.d.e), -1000f, -1427f, ~vec2<u32>(~global1.x, var_1.d.b)).a.a);
    global0 = 22932i;
    var var_3 = select(vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(9096i, -2147483647i), vec2<i32>(u_input.a, -1i)), ~u_input.a), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.a, abs(u_input.a)), vec2<i32>(-1i) * -vec2<i32>(u_input.a, 0i)), select(var_2.yx, !vec2<bool>(true, var_0.b >= 38557u), select(vec2<bool>(!var_0.c.a, true), var_2.yy, select(all(var_2), true, !arg_2.a.a))));
    return reverseBits(firstLeadingBit(max(abs(-vec2<i32>(2147483647i, 2147483647i)), ~vec2<i32>(-12026i, 1i) | ~vec2<i32>(var_3.x, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(func_8(vec2<bool>(true, true), vec3<bool>(true, true, true), Struct_2(func_1(_wgslsmith_add_i32(u_input.a, -68065i), _wgslsmith_add_vec3_u32(global1.ywx, global1.xwz))), func_1(4850i, vec3<u32>(1u, ~17060u, global2[_wgslsmith_index_u32(1u, 12u)]))), abs(-(_wgslsmith_sub_vec2_i32(vec2<i32>(-14801i, u_input.a), vec2<i32>(u_input.a, u_input.a)) << (global1.xx % vec2<u32>(32u)))));
    global2 = array<u32, 12>();
    var var_1 = func_7(func_5(func_5(Struct_4(vec3<f32>(255f, 1068f, -1561f), false, false, func_5(Struct_4(vec3<f32>(-819f, -215f, -1053f), true, true, Struct_3(Struct_1(true), 37047u, Struct_1(false), 1u, 1506f), Struct_2(Struct_1(false))), 943f, -583f).d, Struct_2(Struct_1(true))), _wgslsmith_f_op_f32(1f - -1033f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -632f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-614f + -1280f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(531f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(706f * -1114f), func_5(Struct_4(vec3<f32>(313f, -1099f, -366f), false, false, Struct_3(Struct_1(true), 11548u, Struct_1(false), global1.x, 1000f), Struct_2(Struct_1(false))), -1327f, 1090f).d.e))).d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-933f + _wgslsmith_div_f32(-2599f, 1204f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(929f + 1795f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-230f, -141f)), _wgslsmith_f_op_f32(f32(-1f) * -146f)))), vec2<u32>(global2[_wgslsmith_index_u32(28416u, 12u)], 11196u));
    var var_2 = func_2(Struct_2(var_1.a), func_5(Struct_4(vec3<f32>(-1060f, _wgslsmith_div_f32(120f, 424f), _wgslsmith_f_op_f32(f32(-1f) * -880f)), ~global1.x <= _wgslsmith_mod_u32(4294967295u, global1.x), false, Struct_3(Struct_1(true), 1u, Struct_1(false), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1129f)), func_5(func_5(Struct_4(vec3<f32>(-2087f, 1076f, 1587f), var_1.a.a, var_1.a.a, Struct_3(var_1.a, 1u, var_1.a, global1.x, 2915f), Struct_2(var_1.a)), -825f, 1161f), -1049f, _wgslsmith_f_op_f32(291f - -1787f)).e), func_5(func_2(Struct_2(var_1.a), true, _wgslsmith_f_op_f32(trunc(1090f))), 252f, func_5(Struct_4(vec3<f32>(1000f, -220f, 517f), false, var_1.a.a, Struct_3(Struct_1(var_1.a.a), 4294967295u, var_1.a, 0u, 1262f), Struct_2(Struct_1(var_1.a.a))), _wgslsmith_f_op_f32(-1089f * -1157f), _wgslsmith_f_op_f32(f32(-1f) * -354f)).a.x).d.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1012f + 759f) + 529f))).d.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-879f - -230f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-498f - _wgslsmith_div_f32(935f, -702f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -896f), 4257f, var_1.a.a)))));
    var var_3 = Struct_2(func_6(Struct_4(var_2.a, true, all(vec3<bool>(var_1.a.a, var_1.a.a, true)), func_6(func_5(Struct_4(var_2.a, var_2.e.a.a, var_1.a.a, var_2.d, var_2.e), 1373f, var_2.d.e), 134f), func_5(Struct_4(vec3<f32>(var_2.a.x, var_2.d.e, -368f), true, false, Struct_3(var_2.e.a, 0u, Struct_1(var_1.a.a), 0u, 1000f), Struct_2(Struct_1(true))), -288f, var_2.d.e).e), 847f).a);
    let var_4 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x) * vec3<f32>(-219f, var_2.d.e, -115f))), vec3<f32>(-614f, _wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, true)), -603f), var_3.a.a)), _wgslsmith_f_op_vec3_f32(-var_2.a)), true, var_2.b, func_2(Struct_2(var_1.a), !(!var_1.a.a), var_2.a.x).d, Struct_2(var_2.d.a));
    var_2 = func_5(func_5(func_5(func_5(Struct_4(vec3<f32>(302f, var_4.a.x, var_2.a.x), var_4.e.a.a, true, var_2.d, Struct_2(var_1.a)), _wgslsmith_f_op_f32(-1209f * -537f), _wgslsmith_div_f32(861f, var_2.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.d.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.e))), _wgslsmith_f_op_f32(sign(-331f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -474f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -305f) * -163f) * _wgslsmith_f_op_f32(-416f + _wgslsmith_f_op_f32(select(-458f, var_2.a.x, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.d.e * _wgslsmith_f_op_f32(abs(var_2.d.e))))), -850f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_5(func_2(Struct_2(var_3.a), true, _wgslsmith_f_op_f32(step(-183f, -215f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-936f + 719f) - _wgslsmith_f_op_f32(ceil(var_2.d.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1453f - -841f))).d.b, abs(803u)), -(~38590i), _wgslsmith_f_op_f32(400f + _wgslsmith_f_op_f32(-2210f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f * 1140f)))), vec4<i32>(var_0.x, firstLeadingBit(select(u_input.a, u_input.a, var_4.e.a.a & true)), firstTrailingBit(func_8(vec2<bool>(true, var_2.e.a.a), select(vec3<bool>(true, true, var_3.a.a), vec3<bool>(var_2.e.a.a, var_1.a.a, false), false), Struct_2(Struct_1(var_2.c)), Struct_1(true)).x), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, var_0.x), vec2<i32>(-2147483647i, var_0.x)) | vec2<i32>(var_0.x, u_input.a), vec2<i32>(-1i) * -vec2<i32>(12832i, -1665i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)));
}

