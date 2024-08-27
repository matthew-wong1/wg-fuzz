struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16>;

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = Struct_3(Struct_1(!arg_1.d.a, _wgslsmith_f_op_vec4_f32(-arg_1.d.b), 1u, _wgslsmith_f_op_vec2_f32(abs(arg_1.d.b.zy))), _wgslsmith_add_i32(arg_1.c, -1i), -21027i >> (_wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, arg_0, u_input.b, 30065u), u_input.a)), ~59763u) % 32u), select(arg_1.d.a.xxx, select(vec3<bool>(true, arg_1.d.a.x, arg_1.d.a.x), !select(arg_1.d.a.wxw, arg_1.d.a.wxz, vec3<bool>(arg_1.d.a.x, false, true)), all(!vec4<bool>(true, true, arg_1.d.a.x, arg_1.d.a.x))), -u_input.e.x > _wgslsmith_div_i32(u_input.e.x, u_input.e.x)), Struct_2(_wgslsmith_div_u32(1u, abs(_wgslsmith_add_u32(1u, arg_1.b.x))), select(~abs(vec4<u32>(0u, 30874u, 1u, arg_1.d.c)), _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(19013u, arg_0, 4294967295u, u_input.a.x)), arg_1.d.a), arg_1.c, global1[_wgslsmith_index_u32(4944u, 13u)], _wgslsmith_f_op_f32(f32(-1f) * -941f)));
    let var_1 = var_0.e;
    global0 = array<vec2<i32>, 16>();
    let var_2 = vec3<u32>(_wgslsmith_add_u32(~max(var_1.d.c, firstLeadingBit(81510u)), ~var_0.a.c), var_0.e.d.c, var_1.d.c);
    global0 = array<vec2<i32>, 16>();
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.d.b, _wgslsmith_f_op_vec4_f32(-var_0.e.d.b), !var_0.e.d.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1349f, arg_1.e, var_0.a.d.x, var_1.d.d.x), vec4<f32>(var_0.e.d.b.x, var_0.e.d.b.x, 893f, var_1.e)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, arg_1.d.d.x, arg_1.d.d.x, 1289f))))))));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = vec4<f32>(-164f, _wgslsmith_f_op_f32(-335f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1032f * -2133f))) + _wgslsmith_f_op_f32(floor(943f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(-1551f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -707f))))), _wgslsmith_f_op_f32(f32(-1f) * -132f));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-335f + var_0.x))), var_0.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(func_3(25076u, Struct_2(28656u, select(firstLeadingBit(vec4<u32>(6944u, u_input.b, u_input.a.x, 51922u) & vec4<u32>(4294967295u, 14056u, u_input.a.x, 26942u)), _wgslsmith_mod_vec4_u32(vec4<u32>(17412u, u_input.a.x, 72164u, u_input.a.x), u_input.a), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), abs(u_input.c.x), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(~4294967295u), u_input.b), 13u)], -915f)));
    let var_3 = Struct_2(reverseBits(5566u), firstTrailingBit(vec4<u32>(u_input.d & u_input.b, _wgslsmith_mod_u32(20116u, 4294967295u), _wgslsmith_mod_u32(4294967295u, 31038u), 4294967295u)), -u_input.e.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 13u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-var_2.x), arg_0.x | arg_0.x)))), -416f)));
    var var_4 = Struct_1(select(select(var_3.d.a, var_3.d.a, false), var_3.d.a, vec4<bool>(all(!arg_0), _wgslsmith_f_op_f32(-var_0.x) == _wgslsmith_f_op_f32(-var_3.d.b.x), !(arg_0.x || true), !all(var_3.d.a))), vec4<f32>(var_0.x, var_0.x, var_2.x, -587f), ~u_input.a.x, _wgslsmith_f_op_vec2_f32(-var_2.xz));
    return var_2.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_2.e;
    var var_1 = u_input.c.yw;
    let var_2 = Struct_2(32521u, vec4<u32>(41736u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(59752u, arg_2.e.b.x, arg_1.c), var_0.b.xzy), vec3<u32>(u_input.a.x, 13071u, arg_1.c)), arg_1.c, ~(arg_1.c >> (4294967295u % 32u))) >> (min(u_input.a, vec4<u32>(var_0.a, u_input.b, ~u_input.a.x, ~0u)) % vec4<u32>(32u)), min(~(~(-u_input.e.x)), ~firstLeadingBit(var_0.c)), Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(select(arg_1.b, arg_1.b, arg_2.e.d.a.x)), ~_wgslsmith_mod_u32(31341u & u_input.b, ~arg_2.e.d.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.a.d.x, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-1222f)), _wgslsmith_f_op_f32(-var_0.e)), true))), _wgslsmith_f_op_f32(select(arg_2.e.d.b.x, -1000f, all(select(arg_1.a, select(arg_1.a, arg_2.e.d.a, var_0.d.a.x), vec4<bool>(arg_2.e.d.a.x, var_0.d.a.x, arg_2.d.x, var_0.d.a.x))))));
    let var_3 = arg_2;
    let var_4 = Struct_3(Struct_1(select(!select(vec4<bool>(false, var_2.d.a.x, arg_1.a.x, var_3.d.x), vec4<bool>(arg_2.e.d.a.x, false, true, arg_1.a.x), true), arg_2.e.d.a, all(select(arg_2.e.d.a.xw, arg_1.a.zx, vec2<bool>(true, var_2.d.a.x)))), _wgslsmith_f_op_vec4_f32(var_2.d.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(411f, arg_0, -1659f, var_3.a.d.x) - _wgslsmith_f_op_vec4_f32(exp2(var_3.a.b)))), ~min(55797u, 0u), var_3.e.d.b.zy), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(max(vec3<i32>(2147483647i, var_1.x, var_1.x), vec3<i32>(-1i, 0i, 6073i)), ~u_input.e.zxx, var_3.d), -u_input.e.yzy), (u_input.c.wyx << (~u_input.a.xxx % vec3<u32>(32u))) ^ reverseBits(firstLeadingBit(vec3<i32>(46504i, var_2.c, 1i)))), var_2.c, select(!select(arg_2.d, var_2.d.a.xwz, !arg_1.a.zwz), var_2.d.a.xxy, arg_2.e.d.a.wyx), var_3.e);
    return var_4;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(290f - -852f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true))) - _wgslsmith_f_op_f32(f32(-1f) * -111f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(~arg_0, Struct_2(arg_2, vec4<u32>(482u, arg_2, 66543u, u_input.b), arg_1, Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(1301f, 1181f, -262f, -981f), 23715u, vec2<f32>(-675f, -1000f)), -2028f))).x)), global1[_wgslsmith_index_u32(~4294967295u, 13u)], Struct_3(global1[_wgslsmith_index_u32(4294967295u, 13u)], -arg_1, -u_input.e.x, vec3<bool>(true, true, true), Struct_2(arg_2, vec4<u32>(~1u, 27125u, countOneBits(4294967295u), firstLeadingBit(arg_0)), _wgslsmith_mult_i32(u_input.c.x, -10007i), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1156f, -1867f, -914f, -907f), vec4<f32>(-1344f, -1395f, -2199f, 550f))), arg_0, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(248f, 1313f), vec2<f32>(532f, 1915f)))), _wgslsmith_f_op_f32(2333f - _wgslsmith_f_op_f32(ceil(1836f))))));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 13u)];
    let var_2 = var_0.a.b.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.e.d.d.x, var_1.b.x)));
    global0 = array<vec2<i32>, 16>();
    return func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3, 807f)) - _wgslsmith_f_op_f32(-1380f - var_1.b.x)) - 1000f))), Struct_1(func_4(_wgslsmith_f_op_f32(round(var_3)), func_4(578f, func_4(var_3, global1[_wgslsmith_index_u32(4294967295u, 13u)], Struct_3(var_0.e.d, var_0.e.c, 22942i, vec3<bool>(false, false, var_0.d.x), var_0.e)).e.d, Struct_3(var_0.e.d, var_0.e.c, -52314i, var_1.a.yzy, var_0.e)).e.d, Struct_3(func_4(621f, global1[_wgslsmith_index_u32(var_0.a.c, 13u)], Struct_3(Struct_1(var_0.a.a, var_1.b, var_0.e.d.c, var_1.d), -2147483647i, 2147483647i, var_0.e.d.a.xzw, Struct_2(var_0.a.c, vec4<u32>(37757u, 15769u, arg_2, 5878u), -2147483647i, var_0.e.d, -574f))).a, arg_1, _wgslsmith_add_i32(17846i, u_input.c.x), var_0.a.a.xyy, var_0.e)).a.a, vec4<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))), -635f, -705f, var_3), (~var_1.c ^ func_4(486f, global1[_wgslsmith_index_u32(86939u, 13u)], Struct_3(Struct_1(vec4<bool>(var_1.a.x, false, var_0.a.a.x, false), var_1.b, var_1.c, vec2<f32>(var_0.a.b.x, var_3)), arg_1, var_0.c, vec3<bool>(true, var_1.a.x, var_0.a.a.x), var_0.e)).e.a) | arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.yy + vec2<f32>(947f, var_1.b.x)) + _wgslsmith_f_op_vec2_f32(step(var_1.b.xz, var_0.a.d))))), func_4(_wgslsmith_f_op_f32(step(var_0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(var_1.a.x, true)))))), Struct_1(!(!vec4<bool>(var_1.a.x, var_0.e.d.a.x, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.e.d.b, var_1.b)) * var_1.b), _wgslsmith_clamp_u32(var_1.c | arg_0, arg_0 >> (arg_2 % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, var_1.c), vec2<u32>(0u, var_0.e.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.x, var_1.d.x), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.e.e, 113f), vec2<f32>(var_0.a.b.x, 1264f)), var_1.a.x))), func_4(_wgslsmith_f_op_f32(func_2(func_4(var_3, global1[_wgslsmith_index_u32(17176u, 13u)], Struct_3(Struct_1(var_0.e.d.a, var_1.b, arg_2, vec2<f32>(412f, -587f)), 31579i, -2147483647i, var_0.e.d.a.zxz, Struct_2(var_0.a.c, vec4<u32>(u_input.a.x, arg_2, arg_2, var_1.c), var_0.e.c, Struct_1(vec4<bool>(false, var_1.a.x, true, var_0.e.d.a.x), var_1.b, var_0.a.c, var_0.a.d), var_3))).d.zz)), Struct_1(!vec4<bool>(var_1.a.x, var_1.a.x, var_0.d.x, var_1.a.x), var_1.b, 28818u | var_1.c, var_1.d), func_4(_wgslsmith_f_op_f32(f32(-1f) * -322f), global1[_wgslsmith_index_u32(~0u, 13u)], func_4(720f, global1[_wgslsmith_index_u32(11637u, 13u)], Struct_3(Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), var_0.e.d.b, u_input.a.x, vec2<f32>(-713f, var_1.b.x)), -7595i, 11950i, var_0.a.a.zwz, Struct_2(1u, var_0.e.b, -29269i, var_0.a, var_0.e.e))))))).e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~32471u), -38044i, ~1u);
    var var_1 = global1[_wgslsmith_index_u32(var_0.b.x, 13u)];
    let var_2 = select(false, !var_1.a.x, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(213f + var_1.d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 247f)))), func_1(~8500u, func_1(4294967295u, var_0.c, var_1.c).c, max(var_1.c, min(var_1.c, 88213u))).d, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.d.x, var_0.d.d.x))), Struct_1(vec4<bool>(var_0.d.a.x, false, true, var_1.a.x), _wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(var_0.e, 492f, var_1.b.x, -1000f)), 49568u, var_1.d), func_4(_wgslsmith_f_op_f32(-var_1.b.x), func_1(var_0.d.c, var_0.c, var_0.a).d, Struct_3(Struct_1(vec4<bool>(true, var_1.a.x, false, var_1.a.x), vec4<f32>(1794f, var_0.e, -1699f, var_0.e), 66799u, vec2<f32>(var_1.d.x, var_0.e)), u_input.c.x, 33095i, vec3<bool>(var_1.a.x, false, false), Struct_2(u_input.b, vec4<u32>(12684u, 35564u, var_1.c, 2161u), -1i, Struct_1(vec4<bool>(false, false, var_1.a.x, var_0.d.a.x), vec4<f32>(875f, -144f, -1413f, var_0.d.b.x), var_0.d.c, vec2<f32>(var_1.b.x, var_1.d.x)), var_0.e))))).d.x);
    let var_3 = Struct_2(~var_1.c, u_input.a, ~_wgslsmith_mult_i32(~(-var_0.c), ~(~var_0.c)), func_1(var_0.a, var_0.c, min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 7426u), u_input.a.ywx), 1u) | _wgslsmith_mod_u32(var_1.c, var_1.c)).d, _wgslsmith_f_op_f32(select(-235f, var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e * -1922f), _wgslsmith_f_op_f32(-var_0.e)) >= var_0.e)));
    global1 = array<Struct_1, 13>();
    let var_4 = Struct_3(Struct_1(var_0.d.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.d.b) * _wgslsmith_f_op_vec4_f32(-var_3.d.b)) * vec4<f32>(_wgslsmith_f_op_f32(select(var_1.d.x, -1181f, false)), _wgslsmith_f_op_f32(var_3.e * var_3.e), 268f, -613f)), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_3.d.d, vec2<f32>(var_3.e, -1374f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, var_1.d.x)))), 1i, _wgslsmith_add_i32(var_3.c, var_0.c >> (var_3.d.c % 32u)), vec3<bool>(false, var_2, true | (var_3.e < _wgslsmith_f_op_f32(step(var_3.d.d.x, 1233f)))), Struct_2(_wgslsmith_mult_u32(4294967295u, var_0.a), vec4<u32>(var_0.b.x, ~countOneBits(7297u), var_1.c, _wgslsmith_sub_u32(func_1(var_3.a, 1i, 1u).a, 59572u >> (var_1.c % 32u))), -17056i, var_3.d, 465f));
    var var_5 = var_0.d.a.x;
    var_0 = Struct_2(~(~var_0.a), var_3.b, 852i, var_4.a, _wgslsmith_f_op_f32(var_4.a.b.x - 1000f));
    var var_6 = func_4(var_3.e, Struct_1(!vec4<bool>(true, var_0.d.a.x, true, any(vec3<bool>(true, var_0.d.a.x, var_0.d.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, 761f, 2212f, var_1.d.x), vec4<f32>(-807f, -1339f, 593f, -695f), vec4<bool>(var_1.a.x, var_4.e.d.a.x, var_4.a.a.x, var_4.a.a.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_4.a.c, var_4.e)))), _wgslsmith_add_u32(72610u, _wgslsmith_div_u32(var_1.c, select(3182u, 1u, var_3.d.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true)))), var_1.d.x)), func_4(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f - var_3.e))), var_3.d, Struct_3(func_1(firstLeadingBit(4294967295u), -var_4.e.c, select(u_input.b, var_4.a.c, true)).d, var_0.c, 2147483647i, select(!var_3.d.a.wwx, !vec3<bool>(false, false, var_4.a.a.x), true), func_1(var_4.e.b.x, var_3.c, _wgslsmith_dot_vec3_u32(vec3<u32>(28877u, 14992u, var_0.b.x), vec3<u32>(var_3.d.c, var_1.c, var_1.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.b);
}

