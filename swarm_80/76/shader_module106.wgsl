struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 18> = array<bool, 18>(true, false, false, true, false, false, false, true, true, false, false, false, true, false, true, false, true, true);

var<private> global2: Struct_3 = Struct_3(Struct_2(-1172f, vec3<i32>(16107i, 55342i, 96638i), vec2<f32>(1000f, -1000f), true, Struct_1(11175u, vec3<i32>(0i, -1i, 0i), vec3<bool>(false, false, true), true, 547f)), Struct_2(-1233f, vec3<i32>(2147483647i, 10286i, -46930i), vec2<f32>(-1747f, -867f), true, Struct_1(15338u, vec3<i32>(4038i, 0i, 11356i), vec3<bool>(true, false, false), false, -636f)), vec3<bool>(false, false, false), 59944i);

var<private> global3: Struct_3 = Struct_3(Struct_2(437f, vec3<i32>(i32(-2147483648), 21958i, i32(-2147483648)), vec2<f32>(128f, 225f), false, Struct_1(0u, vec3<i32>(-41083i, i32(-2147483648), -8277i), vec3<bool>(true, true, false), true, 260f)), Struct_2(-175f, vec3<i32>(2147483647i, 0i, -9585i), vec2<f32>(-183f, 1131f), false, Struct_1(4294967295u, vec3<i32>(43648i, i32(-2147483648), -1i), vec3<bool>(false, true, false), false, -986f)), vec3<bool>(false, true, false), 39077i);

var<private> global4: array<bool, 8>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.e, -1000f, global0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, global0.e, 939f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.e.e, global2.b.c.x, -366f) + vec3<f32>(global0.e, 401f, global2.a.c.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, global2.b.e.e, global0.e)))))));
    var var_1 = Struct_3(Struct_2(global0.e, ~select(_wgslsmith_clamp_vec3_i32(global2.a.e.b, vec3<i32>(24612i, -54345i, global0.b.x), vec3<i32>(global0.b.x, global2.a.b.x, -2147483647i)), -global2.b.e.b, global0.e <= global3.b.e.e), _wgslsmith_f_op_vec2_f32(select(global2.b.c, global2.a.c, !select(global3.a.e.c.xz, global0.c.xx, global3.a.e.c.x))), !all(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(45870u, 18u)])), global2.b.e), global3.b, global3.a.e.c, reverseBits(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1992i, 1i), vec3<i32>(global3.d, global3.a.b.x, global0.b.x))));
    global2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(421f)))) - 361f), vec3<i32>(-1i, 2147483647i, 19032i) << (vec3<u32>(global0.a, global2.a.e.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, var_1.b.e.a, global2.a.e.a, global0.a), vec4<u32>(33340u, 0u, 4294967295u, global0.a))) % vec3<u32>(32u)), global2.a.c, global1[_wgslsmith_index_u32(0u, 18u)], Struct_1(1u, -countOneBits(vec3<i32>(3024i, global0.b.x, -1i)), !select(global0.c, var_1.c, true), any(global3.c), global2.a.e.e)), Struct_2(var_0.x, ~(-(vec3<i32>(-14080i, global3.a.e.b.x, global3.d) | var_1.a.e.b)), _wgslsmith_f_op_vec2_f32(var_1.a.c - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, -1867f))))), !global4[_wgslsmith_index_u32(4294967295u, 8u)], global3.a.e), vec3<bool>(_wgslsmith_f_op_f32(-global2.a.c.x) >= -858f, true, all(vec3<bool>(select(false, false, var_1.b.e.c.x), global2.a.e.d || global1[_wgslsmith_index_u32(1u, 18u)], !global2.b.e.c.x))), 2147483647i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a.a + var_1.a.a), 2096f))))));
    global2 = Struct_3(global3.a, Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(1f)))), firstLeadingBit(vec3<i32>(global2.b.e.b.x ^ -1i, ~global0.b.x, ~var_1.a.e.b.x)), _wgslsmith_f_op_vec2_f32(max(global2.b.c, vec2<f32>(259f, _wgslsmith_f_op_f32(floor(379f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) - -214f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a.a))), global2.b.e), !select(vec3<bool>(!var_1.a.d, true || global2.a.d, any(global2.b.e.c.zz)), !global3.a.e.c, true), -1i);
    return select(global2.c, !vec3<bool>(true, var_1.c.x, true), select(vec3<bool>(select(true, var_1.b.d, global0.c.x) & true, false, false), !(!select(vec3<bool>(global3.c.x, global4[_wgslsmith_index_u32(7471u, 8u)], true), global2.a.e.c, false)), global3.a.e.c));
}

fn func_2() -> bool {
    var var_0 = -177f;
    var var_1 = Struct_3(global2.b, global3.a, global3.b.e.c, ~_wgslsmith_div_i32(global3.a.b.x, 28818i));
    global4 = array<bool, 8>();
    let var_2 = global2.a;
    let var_3 = all(vec4<bool>(all(!(!vec4<bool>(global1[_wgslsmith_index_u32(global2.b.e.a, 18u)], false, true, global4[_wgslsmith_index_u32(63107u, 8u)]))), any(select(global2.a.e.c, select(global0.c, vec3<bool>(var_1.b.e.d, global4[_wgslsmith_index_u32(u_input.a, 8u)], true), global2.a.e.c), select(vec3<bool>(true, true, true), var_1.c, global0.c))), !global0.d, var_1.b.e.a == _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u))));
    return !all(func_3());
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_1(global3.b.e.a, firstTrailingBit(arg_0.b.b), !global0.c, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(823f)) + _wgslsmith_f_op_f32(max(global2.b.e.e, _wgslsmith_f_op_f32(step(arg_1.b.e.e, -1517f)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(global2.b.a, _wgslsmith_f_op_f32(min(arg_0.b.e.e, _wgslsmith_div_f32(-766f, _wgslsmith_f_op_f32(exp2(global3.b.c.x))))))), countOneBits(var_0.b & countOneBits(-var_0.b)), _wgslsmith_div_vec2_f32(arg_0.b.c, _wgslsmith_f_op_vec2_f32(arg_1.b.c + global3.b.c)), !global0.c.x, Struct_1(abs(global2.a.e.a), _wgslsmith_mod_vec3_i32(~vec3<i32>(arg_1.a.b.x, arg_1.a.e.b.x, var_0.b.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 8221u, 39298u), vec3<u32>(1u, arg_0.b.e.a, global3.a.e.a)) % vec3<u32>(32u)), abs(reverseBits(vec3<i32>(2147483647i, -2147483647i, var_0.b.x)))), vec3<bool>(global4[_wgslsmith_index_u32(60920u, 8u)], func_2(), true), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e, global0.e) + _wgslsmith_div_f32(global0.e, var_0.e)))));
    var var_2 = arg_0.b.e;
    global3 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_2.zy)))));
    return arg_1;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.e.a, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(arg_0.a.e.a, 11049u)), 58754u), vec2<u32>(~78703u, ~26198u))), global3.a.e.a, 4294967295u);
    var var_1 = ~arg_0.b.e.b.zz & vec2<i32>(max(global3.a.e.b.x | arg_0.a.b.x, global0.b.x), -28988i);
    return global2.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_1(func_1(Struct_3(func_1(func_1(Struct_3(global2.a, global3.b, arg_1.e.c, arg_3.e.b.x), Struct_3(Struct_2(global3.b.c.x, global0.b, global2.b.c, true, arg_3.e), Struct_2(arg_3.e.e, global2.b.b, vec2<f32>(arg_1.e.e, 644f), true, global2.b.e), arg_1.e.c, 7330i), vec3<f32>(global0.e, -650f, arg_0.a), vec4<bool>(global3.b.d, global3.a.d, global3.a.e.c.x, global3.c.x)), Struct_3(Struct_2(global3.b.c.x, global0.b, vec2<f32>(-138f, 714f), false, arg_3.e), arg_0, global3.b.e.c, arg_0.b.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(856f, 196f, global2.b.a))), !vec4<bool>(arg_3.e.d, true, global4[_wgslsmith_index_u32(arg_0.e.a, 8u)], global1[_wgslsmith_index_u32(29053u, 18u)])).b, arg_1, !vec3<bool>(false, global3.a.d, arg_1.d), -1i | _wgslsmith_add_i32(arg_0.e.b.x, arg_1.b.x)), func_1(Struct_3(Struct_2(arg_0.e.e, arg_1.e.b, vec2<f32>(arg_0.a, 1665f), true, Struct_1(4294967295u, global2.a.b, vec3<bool>(false, global3.c.x, global1[_wgslsmith_index_u32(u_input.a, 18u)]), false, -455f)), Struct_2(global3.a.c.x, global0.b, vec2<f32>(global3.b.c.x, 913f), false, arg_3.e), func_4(Struct_3(Struct_2(global0.e, vec3<i32>(2147483647i, global2.a.e.b.x, 0i), global2.a.c, arg_1.e.d, arg_3.e), arg_0, arg_0.e.c, 0i)).e.c, global3.b.b.x), Struct_3(Struct_2(arg_1.c.x, vec3<i32>(-48803i, 1i, 19299i), vec2<f32>(1417f, arg_1.a), arg_0.d, arg_3.e), Struct_2(global3.a.e.e, global2.b.e.b, arg_0.c, arg_0.e.c.x, arg_3.e), select(vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 8u)], arg_3.d), vec3<bool>(global4[_wgslsmith_index_u32(51121u, 8u)], arg_2.x, arg_2.x), arg_2), 1i), vec3<f32>(arg_0.e.e, _wgslsmith_f_op_f32(floor(global0.e)), _wgslsmith_f_op_f32(-arg_0.c.x)), select(vec4<bool>(true, arg_2.x, false, false), select(vec4<bool>(arg_1.e.d, global1[_wgslsmith_index_u32(55383u, 18u)], global3.c.x, global2.c.x), vec4<bool>(true, global2.a.e.c.x, arg_2.x, global4[_wgslsmith_index_u32(global2.a.e.a, 8u)]), vec4<bool>(false, false, false, arg_1.e.c.x)), arg_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_1.c.x, -912f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e, arg_3.a, -247f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.a, 480f, global3.b.e.e))))), vec4<bool>(select(false, func_1(Struct_3(arg_0, global2.b, global0.c, global3.d), Struct_3(Struct_2(global2.b.a, vec3<i32>(global2.d, arg_1.e.b.x, global0.b.x), vec2<f32>(arg_0.c.x, global0.e), global4[_wgslsmith_index_u32(0u, 8u)], Struct_1(4294967295u, vec3<i32>(47957i, global0.b.x, -1i), arg_1.e.c, false, -2141f)), Struct_2(1000f, vec3<i32>(-1i, -2147483647i, 1i), vec2<f32>(-1000f, arg_1.e.e), global4[_wgslsmith_index_u32(0u, 8u)], Struct_1(1u, vec3<i32>(2147483647i, global3.d, 1i), arg_2, false, 536f)), vec3<bool>(global0.d, arg_0.d, global0.d), arg_0.b.x), vec3<f32>(global2.a.e.e, -568f, 647f), vec4<bool>(true, false, true, true)).c.x, false), all(!vec3<bool>(global0.c.x, global1[_wgslsmith_index_u32(16783u, 18u)], arg_3.d)), global3.a.e.d, false)), Struct_3(func_4(Struct_3(func_4(Struct_3(arg_3, arg_0, arg_0.e.c, global2.b.e.b.x)), func_4(Struct_3(arg_0, Struct_2(-114f, global2.b.b, vec2<f32>(global0.e, -273f), false, Struct_1(30882u, arg_1.e.b, vec3<bool>(global4[_wgslsmith_index_u32(global3.b.e.a, 8u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], true), true, 1050f)), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], true, false), -76358i)), !arg_3.e.c, arg_1.b.x)), Struct_2(-917f, _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(13584i, 0i, 21098i)), ~global2.b.b), global2.a.c, !(arg_3.e.c.x || true), func_4(Struct_3(Struct_2(global3.b.c.x, vec3<i32>(2147483647i, global3.b.e.b.x, global2.d), arg_3.c, true, Struct_1(arg_1.e.a, vec3<i32>(25977i, arg_0.b.x, arg_1.b.x), arg_1.e.c, true, 323f)), arg_3, global3.b.e.c, 1i)).e), func_4(func_1(func_1(Struct_3(Struct_2(arg_3.a, arg_0.e.b, arg_0.c, false, global3.b.e), global2.a, arg_2, 1i), Struct_3(Struct_2(-519f, vec3<i32>(-17371i, global3.d, -19076i), arg_3.c, global1[_wgslsmith_index_u32(28097u, 18u)], Struct_1(arg_3.e.a, arg_1.e.b, vec3<bool>(false, true, arg_3.d), true, -385f)), Struct_2(arg_1.a, vec3<i32>(arg_1.e.b.x, -1i, 43869i), global2.a.c, true, Struct_1(arg_3.e.a, vec3<i32>(global3.b.b.x, -77086i, global2.d), arg_1.e.c, arg_0.d, global3.a.c.x)), arg_1.e.c, 14806i), vec3<f32>(810f, arg_0.e.e, -412f), vec4<bool>(global2.c.x, false, true, false)), func_1(Struct_3(arg_1, arg_0, vec3<bool>(true, global1[_wgslsmith_index_u32(global3.a.e.a, 18u)], false), 35924i), Struct_3(Struct_2(global3.a.a, vec3<i32>(-15758i, global0.b.x, global0.b.x), vec2<f32>(arg_3.a, -408f), global4[_wgslsmith_index_u32(global2.b.e.a, 8u)], Struct_1(17630u, global0.b, global0.c, false, global0.e)), arg_0, vec3<bool>(arg_0.e.c.x, arg_2.x, false), arg_1.e.b.x), vec3<f32>(global3.a.e.e, global0.e, arg_1.a), vec4<bool>(true, true, false, true)), vec3<f32>(-1023f, 1816f, arg_1.e.e), vec4<bool>(false, global3.b.d, false, true))).e.c, 34202i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1664f, arg_0.c.x, 838f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2014f, global3.b.a, -1089f))))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, arg_0.e.c.x, false, global2.a.e.d), select(vec4<bool>(global4[_wgslsmith_index_u32(arg_1.e.a, 8u)], true, false, false), vec4<bool>(global3.a.e.d, global3.c.x, global2.b.d, global2.c.x), false))));
    global3 = Struct_3(Struct_2(-1000f, ~func_4(func_1(Struct_3(Struct_2(arg_0.a, global0.b, global2.a.c, true, Struct_1(global0.a, arg_1.e.b, vec3<bool>(false, false, arg_2.x), arg_3.e.d, 604f)), arg_1, vec3<bool>(arg_1.d, arg_0.e.d, global2.c.x), -1i), Struct_3(global2.b, arg_0, var_0.a.e.c, arg_1.b.x), vec3<f32>(908f, 789f, var_0.a.a), vec4<bool>(false, global0.c.x, false, true))).b, _wgslsmith_f_op_vec2_f32(-var_0.a.c), global0.e <= 1933f, func_1(var_0, var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.e.e, 1931f, var_0.b.e.e) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.e.e, global2.b.a, 102f), vec3<f32>(807f, 319f, arg_1.c.x))), vec4<bool>(true, false, true, true)).b.e), Struct_2(1000f, ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(13957i, -8563i, arg_3.b.x), vec3<i32>(global3.b.e.b.x, -2147483647i, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c * arg_0.c))), true, Struct_1(_wgslsmith_add_u32(abs(global3.a.e.a), countOneBits(global2.b.e.a)), ~arg_0.e.b, func_4(var_0).e.c, !(global2.a.e.a < 4294967295u), -1005f)), vec3<bool>(true, !select(any(vec4<bool>(true, global0.c.x, false, true)), global2.c.x, false), true), -10840i);
    global4 = array<bool, 8>();
    var var_1 = all(select(!vec4<bool>(true, arg_0.e.a >= arg_3.e.a, all(arg_2.yz), arg_3.e.c.x), vec4<bool>(1000f >= _wgslsmith_f_op_f32(-arg_1.a), true, !all(vec2<bool>(arg_1.d, arg_1.d)), -var_0.a.b.x > global0.b.x), true));
    global0 = var_0.a.e;
    return var_0.a.e;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> vec4<i32> {
    global2 = arg_1;
    return countOneBits(select(_wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_0.b.x, 1i, arg_1.d), vec4<i32>(-1560i, 0i, 2147483647i, global0.b.x)), vec4<i32>(2147483647i, global3.d, arg_1.a.b.x, 4940i) & vec4<i32>(2147483647i, global3.a.b.x, global0.b.x, arg_1.b.b.x)), vec4<i32>(-1i) * -countOneBits(vec4<i32>(36172i, global3.d, global0.b.x, global0.b.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, 25589u, 1u, global0.a), vec4<u32>(global0.a, 0u, global0.a, global0.a), vec4<u32>(1u, 77631u, global3.a.e.a, global0.a)) | vec4<u32>(0u, global3.a.e.a, _wgslsmith_div_u32(global2.a.e.a, 34239u), firstLeadingBit(4294967295u)), abs(vec4<u32>(countOneBits(33108u), global2.a.e.a, ~100461u, 0u))));
    global4 = array<bool, 8>();
    let var_1 = ~1u | (~0u >> (~firstTrailingBit(global3.b.e.a) % 32u));
    let var_2 = 0u;
    var var_3 = ~var_1 & 1u;
    let var_4 = func_6(func_5(func_4(func_1(Struct_3(global3.a, global3.b, vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 18u)], false), global3.d), Struct_3(Struct_2(global0.e, vec3<i32>(global2.b.e.b.x, -7356i, global2.b.b.x), global2.b.c, global3.b.e.d, global3.b.e), Struct_2(-182f, global0.b, vec2<f32>(global3.a.e.e, global2.a.c.x), global4[_wgslsmith_index_u32(var_2, 8u)], global3.b.e), global2.c, global3.b.e.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, global0.e, global0.e)), select(vec4<bool>(global3.b.d, true, false, global2.a.d), vec4<bool>(global3.c.x, true, global2.a.d, true), vec4<bool>(true, true, global0.d, false)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -702f), vec3<i32>(abs(4406i), global2.b.e.b.x, -global3.a.e.b.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1738f, -1000f)))), all(select(vec4<bool>(global2.b.d, global2.a.d, true, global1[_wgslsmith_index_u32(u_input.a, 18u)]), vec4<bool>(false, false, false, global0.d), vec4<bool>(global2.a.d, false, global0.c.x, false))), global3.a.e), vec3<bool>(!func_2(), false, func_2()), global2.b), func_1(func_1(func_1(Struct_3(global2.a, Struct_2(global3.a.a, vec3<i32>(global0.b.x, -25703i, -56090i), global3.a.c, global3.c.x, Struct_1(0u, global0.b, vec3<bool>(false, global1[_wgslsmith_index_u32(global3.b.e.a, 18u)], true), global4[_wgslsmith_index_u32(0u, 8u)], -1013f)), vec3<bool>(global4[_wgslsmith_index_u32(global0.a, 8u)], false, global3.a.d), global3.a.b.x), Struct_3(global3.a, Struct_2(global0.e, vec3<i32>(1i, global2.a.b.x, global0.b.x), vec2<f32>(-967f, global0.e), global4[_wgslsmith_index_u32(global3.a.e.a, 8u)], global2.b.e), global2.a.e.c, global2.d), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-271f, 1960f, -579f), vec3<f32>(global2.b.c.x, -983f, global3.a.c.x))), vec4<bool>(global4[_wgslsmith_index_u32(0u, 8u)], global0.d, false, false)), func_1(Struct_3(global3.b, global3.b, global0.c, 0i), Struct_3(global2.b, global3.b, global3.b.e.c, 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1042f, -892f, global2.b.a)), !vec4<bool>(true, global0.c.x, false, global2.b.e.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.e, global3.a.e.e, 149f), vec3<f32>(global2.b.e.e, global3.b.c.x, global2.b.a)), select(select(vec4<bool>(false, global0.c.x, global2.b.d, global3.b.e.d), vec4<bool>(global2.b.e.d, false, global4[_wgslsmith_index_u32(var_0.x, 8u)], global1[_wgslsmith_index_u32(var_1, 18u)]), vec4<bool>(true, true, true, false)), select(vec4<bool>(global0.d, global4[_wgslsmith_index_u32(u_input.a, 8u)], global4[_wgslsmith_index_u32(3462u, 8u)], false), vec4<bool>(global0.d, global0.c.x, global3.a.d, false), true), false)), Struct_3(Struct_2(612f, global0.b, _wgslsmith_f_op_vec2_f32(-global2.b.c), true, func_1(Struct_3(global3.a, global3.a, global0.c, global0.b.x), Struct_3(Struct_2(global3.b.e.e, global0.b, vec2<f32>(global2.a.e.e, global0.e), true, Struct_1(global0.a, vec3<i32>(global3.d, global2.a.b.x, -1i), global3.b.e.c, global3.a.e.d, 309f)), global2.a, vec3<bool>(false, global2.c.x, true), -104344i), vec3<f32>(global0.e, global0.e, 828f), vec4<bool>(global4[_wgslsmith_index_u32(global0.a, 8u)], global4[_wgslsmith_index_u32(6534u, 8u)], global2.c.x, global0.d)).a.e), Struct_2(global2.b.a, vec3<i32>(-1i, global2.d, global3.a.e.b.x), global3.a.c, select(true, global2.c.x, true), func_5(Struct_2(2021f, global0.b, global2.b.c, global3.b.e.c.x, Struct_1(0u, global2.b.b, vec3<bool>(global3.a.d, false, false), global2.a.e.d, global2.a.a)), global3.b, global3.c, global3.b)), global2.a.e.c, ~(-2147483647i)), vec3<f32>(-838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-253f, 1000f) * func_1(Struct_3(global3.a, global3.b, vec3<bool>(global3.a.e.d, true, false), -27811i), Struct_3(global2.a, Struct_2(global3.b.e.e, vec3<i32>(10735i, 79197i, global0.b.x), global3.a.c, true, global2.a.e), vec3<bool>(true, false, global0.c.x), global2.d), vec3<f32>(1030f, -1089f, -1807f), vec4<bool>(global3.c.x, true, global4[_wgslsmith_index_u32(global3.b.e.a, 8u)], false)).b.a)), vec4<bool>(true, global1[_wgslsmith_index_u32(~(4294967295u >> (var_0.x % 32u)), 18u)], global2.b.e.d, func_2() & !global3.a.e.c.x)), ~var_0.x < _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0.wyy, var_0.xzw) >> (~var_0.xxw % vec3<u32>(32u)), var_0.wwz));
    let var_5 = global0.e;
    var_3 = global0.a;
    let var_6 = select(select(!vec4<bool>(true, true, func_2(), global0.a <= u_input.a), vec4<bool>(all(global3.b.e.c), true, !(true & global3.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1), vec2<u32>(var_0.x, global0.a)) <= 1u), all(!vec4<bool>(false, global4[_wgslsmith_index_u32(global3.b.e.a, 8u)], global1[_wgslsmith_index_u32(35627u, 18u)], false)) && !global0.c.x), !vec4<bool>((50357u <= var_2) != true, true, true, !global2.c.x), 11365i <= _wgslsmith_mult_i32(~global0.b.x << (_wgslsmith_dot_vec4_u32(var_0, var_0) % 32u), global3.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1526f, -870f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1547f - _wgslsmith_div_f32(2790f, global0.e)) + _wgslsmith_f_op_f32(-global2.a.e.e)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-793f, global0.e))))))), global3.b.c, firstLeadingBit(var_2));
}

