struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: bool = false;

var<private> global3: array<u32, 10>;

var<private> global4: u32 = 31091u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_3) -> u32 {
    global0 = array<vec2<u32>, 16>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0.c.b.b), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.x, arg_0.a.x, -1000f, arg_2.b.x), arg_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(162f, 342f, -1314f, arg_2.c.x), vec4<f32>(arg_1.a.x, arg_0.a.x, arg_2.c.x, 304f))), true))));
    let var_1 = abs(reverseBits(u_input.e));
    var var_2 = _wgslsmith_f_op_f32(131f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_1.d, -1371f))))));
    var var_3 = countOneBits(u_input.c.zzy) << ((~vec3<u32>(1u, 34524u & arg_2.a.b, arg_2.a.b) ^ select(~vec3<u32>(u_input.a, u_input.a, u_input.a) << (_wgslsmith_mult_vec3_u32(vec3<u32>(15090u, 55778u, 25385u), vec3<u32>(global3[_wgslsmith_index_u32(37937u, 10u)], arg_0.c.b.a.b, global3[_wgslsmith_index_u32(4294967295u, 10u)])) % vec3<u32>(32u)), vec3<u32>(arg_0.c.b.a.b | arg_2.a.b, global3[_wgslsmith_index_u32(32074u, 10u)], global3[_wgslsmith_index_u32(0u & global3[_wgslsmith_index_u32(arg_2.a.b, 10u)], 10u)]), all(!arg_1.b.zyx))) % vec3<u32>(32u));
    return 1u;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, -113f, arg_0, -471f) + vec4<f32>(arg_1, -348f, arg_1, -237f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1019f, arg_1, 1320f, 1078f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0, 120f, arg_1) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-986f, arg_0, -1160f, 251f) * vec4<f32>(-332f, -439f, arg_0, -1138f))))), !vec4<bool>(true, !any(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true)), true), Struct_4(func_3(Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, arg_0, arg_1, 1000f)), vec4<bool>(false, false, true, false), Struct_4(global3[_wgslsmith_index_u32(u_input.a, 10u)], Struct_3(global1[_wgslsmith_index_u32(1845u, 13u)], vec4<f32>(-1831f, arg_0, arg_0, arg_1), vec3<f32>(854f, arg_1, -544f), vec2<f32>(-330f, arg_1)), vec3<bool>(false, true, true), vec2<f32>(527f, 998f)), _wgslsmith_f_op_f32(-arg_1)), Struct_5(vec4<f32>(1871f, arg_1, -119f, -518f), vec4<bool>(true, true, true, true), Struct_4(4294967295u, Struct_3(global1[_wgslsmith_index_u32(u_input.a, 13u)], vec4<f32>(-1156f, arg_1, 475f, arg_0), vec3<f32>(arg_1, 947f, 842f), vec2<f32>(arg_0, arg_1)), vec3<bool>(false, false, true), vec2<f32>(arg_1, 877f)), _wgslsmith_f_op_f32(-arg_0)), Struct_3(global1[_wgslsmith_index_u32(32594u, 13u)], vec4<f32>(arg_0, arg_0, 122f, 1302f), vec3<f32>(arg_0, arg_0, arg_0), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, 969f), vec2<f32>(546f, 269f))))), Struct_3(global1[_wgslsmith_index_u32(reverseBits(u_input.a) ^ ~u_input.a, 13u)], _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 687f, -525f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, arg_0, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -338f)) - vec2<f32>(192f, 1036f))), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(true, false, true)), _wgslsmith_f_op_f32(-arg_1) >= -1600f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1908f, 590f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1)), -883f)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x)))), 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0, var_0.d, -594f) - vec4<f32>(arg_0, -564f, arg_1, 171f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -141f, -1000f, 769f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2176f, -104f, -328f), vec3<f32>(var_0.a.x, 1009f, arg_1), vec3<bool>(false, true, var_0.c.c.x))))), var_0.c.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.yyw) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2318f, 1593f, -443f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1437f, arg_0, var_0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, -1426f)), var_0.b.x))))) * vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_1 - -678f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1463f, -136f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0)), -1446f)))));
    global2 = max(_wgslsmith_clamp_i32(~(-u_input.d), ~u_input.b.x, u_input.b.x), u_input.e >> ((15089u << (func_3(var_0, var_0, var_1) % 32u)) % 32u)) < _wgslsmith_mod_i32(_wgslsmith_div_i32(reverseBits(u_input.d) & ~u_input.c.x, 0i), ~(-7042i));
    let var_3 = var_0.c.b.d;
    return Struct_1(true, u_input.c.x, select(!(!select(var_0.b, var_0.b, vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x))), vec4<bool>(select(var_0.b.x, true, var_0.c.c.x && true), !var_0.c.c.x, !(!var_0.c.c.x), true), false || all(select(var_0.c.c, var_0.b.wzz, var_0.b.yxx))), 4294967295u, _wgslsmith_f_op_vec3_f32(var_2 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_2.x, var_3.x) - var_2) * var_2)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_5 {
    let var_0 = arg_2;
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-737f)), _wgslsmith_f_op_f32(var_0.e.x - arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_2.e.x), _wgslsmith_f_op_f32(-197f + -1853f)))), vec4<bool>(!(u_input.d == _wgslsmith_mod_i32(var_0.b, 2147483647i)), var_0.c.x, false, !var_0.a), Struct_4(countOneBits(~(arg_2.d & arg_2.d)), Struct_3(global1[_wgslsmith_index_u32(4294967295u, 13u)], vec4<f32>(-447f, var_0.e.x, arg_0.x, _wgslsmith_f_op_f32(824f * -530f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(909f, arg_2.e.x, -1414f), vec3<f32>(arg_0.x, arg_0.x, arg_2.e.x), vec3<bool>(true, arg_2.c.x, false))))), vec2<f32>(211f, _wgslsmith_f_op_f32(arg_1.x + -1195f))), var_0.c.xwx, _wgslsmith_f_op_vec2_f32(arg_1.zx * _wgslsmith_f_op_vec2_f32(select(arg_2.e.zx, arg_1.wx, arg_2.c.xz)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(286f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-948f, arg_0.x)))) - 1675f));
    let var_2 = var_1.c.b.a;
    var var_3 = _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.a, var_0.d << ((0u & global3[_wgslsmith_index_u32(16630u, 10u)]) % 32u), 19891u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.d, firstTrailingBit(arg_2.d ^ 74334u), 1u), _wgslsmith_sub_vec3_u32(firstLeadingBit(arg_3.wwz), _wgslsmith_mult_vec3_u32(vec3<u32>(4126u, var_0.d, arg_3.x), arg_3.xxx))));
    let var_4 = arg_3;
    return Struct_5(_wgslsmith_f_op_vec4_f32(-arg_1), func_2(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 627f) + _wgslsmith_div_f32(var_0.e.x, 1273f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.e.x))))).c, Struct_4(~var_0.d, Struct_3(global1[_wgslsmith_index_u32(1u, 13u)], vec4<f32>(_wgslsmith_f_op_f32(774f - 223f), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1527f)), arg_2.e, arg_2.e.yz), !(!var_0.c.wxz), func_2(arg_2.e.x, -1000f).e.xy), var_1.c.d.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_3 {
    global2 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.d, 294f)) * _wgslsmith_f_op_f32(sign(-171f))) > -224f));
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(8393u >> (1u % 32u), 13u)];
    var var_2 = arg_1.c;
    let var_3 = _wgslsmith_mult_vec3_i32(u_input.b.xyx, vec3<i32>(abs(12262i) | u_input.c.x, _wgslsmith_add_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -1i, 10200i, u_input.e), -vec4<i32>(u_input.b.x, u_input.d, -14556i, -2571i))), u_input.b.x));
    return Struct_3(var_2.b.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(arg_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_div_f32(var_1.a, var_2.b.a.a), arg_1.c.b.a.a, arg_1.a.x) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, arg_1.c.d.x, var_1.a, -518f))))), !any(func_2(arg_1.d, var_1.a).c))), var_2.b.b.wwz, vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(floor(-1044f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(707f)))));
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(select(true, ~1u <= (arg_1.a.b & 4294967295u), true), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(-28579i, -39261i), 14516i), select(!vec4<bool>(true, false, false, select(true, false, true)), vec4<bool>((i32(-1i) * -15925i) >= -u_input.b.x, _wgslsmith_sub_u32(u_input.a, 46552u) <= _wgslsmith_sub_u32(1u, 1u), func_4(vec3<f32>(-505f, arg_0, arg_0), arg_1.b, Struct_1(true, -31699i, vec4<bool>(false, true, true, true), arg_1.a.b, arg_1.b.wwy), _wgslsmith_sub_vec4_u32(vec4<u32>(21497u, 62614u, 0u, u_input.a), vec4<u32>(1u, arg_1.a.b, arg_1.a.b, u_input.a))).c.c.x, abs(u_input.d) < 9137i), !(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d, -2147483647i, u_input.d), u_input.c) > 0i)), func_2(-214f, _wgslsmith_f_op_f32(select(-1000f, arg_0, true))).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b.wxz + vec3<f32>(arg_0, -337f, 3381f))) + arg_1.c));
    var var_1 = var_0.c.x;
    var var_2 = true;
    var var_3 = vec4<bool>(func_4(vec3<f32>(173f, _wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(arg_1.c.x * -1851f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(507f, arg_0, arg_1.c.x, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, -1000f, var_0.e.x, -934f) * arg_1.b)))), var_0, max(select(~vec4<u32>(global3[_wgslsmith_index_u32(arg_1.a.b, 10u)], arg_1.a.b, 40751u, 145701u), firstTrailingBit(vec4<u32>(var_0.d, 118992u, 1u, 0u)), var_0.c), abs(min(vec4<u32>(arg_1.a.b, 31522u, var_0.d, var_0.d), vec4<u32>(var_0.d, u_input.a, arg_1.a.b, u_input.a))))).b.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-761f, _wgslsmith_f_op_f32(-arg_0)) + var_0.e.x), arg_1.b.x).c.x, false, select(any(var_0.c.wx), !(!(!var_0.a)), !var_0.c.x));
    let var_4 = func_4(arg_1.b.wyz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.a, -935f, 705f, arg_1.d.x))))))), func_2(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(776f, arg_1.b.x, -1005f))), _wgslsmith_f_op_vec4_f32(-arg_1.b), Struct_1(var_3.x, -1i, var_0.c, 36783u, vec3<f32>(1000f, -836f, -689f)), vec4<u32>(5706u, 11136u, 0u, var_0.d)).c.d.x + arg_0), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1700f, arg_1.c.x) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(471f, arg_1.a.a)) - _wgslsmith_div_f32(arg_1.b.x, 1476f))).e.x), reverseBits(vec4<u32>(~(4294967295u ^ var_0.d), 4294967295u, ~4294967295u, 20936u))).c.b.a;
    return func_2(var_4.a, -2521f);
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.d.x))) - arg_0.a.a) * _wgslsmith_f_op_f32(-arg_0.b.x)), func_5(vec3<bool>(any(vec2<bool>(true, true)), true, false), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_0.b.x, 1000f), arg_0.b.wwy), arg_0.b.xyy), _wgslsmith_div_vec4_f32(arg_0.b, arg_0.b), func_2(arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.a.a)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.b, arg_0.a.b, 0u, global3[_wgslsmith_index_u32(1u, 10u)]), vec4<u32>(1u, 81597u, 0u, 0u)), vec4<u32>(global3[_wgslsmith_index_u32(arg_0.a.b, 10u)], 53336u, arg_0.a.b, u_input.a) ^ vec4<u32>(1u, global3[_wgslsmith_index_u32(50067u, 10u)], arg_0.a.b, arg_0.a.b)))));
    var var_1 = firstTrailingBit(1u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1744f, 1583f) + _wgslsmith_f_op_vec2_f32(-arg_0.d))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.e.zz, var_0.e.xz, false))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(func_6(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(671f - var_2.x))), arg_0).e.x, _wgslsmith_f_op_f32(ceil(-1000f)))), func_6(-556f, func_5(!vec3<bool>(var_0.c.x, true, var_0.c.x), Struct_5(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.e.x, 718f, -169f, 451f), arg_0.b)), var_0.c, func_4(vec3<f32>(-225f, 1962f, 381f), vec4<f32>(1000f, var_0.e.x, var_2.x, var_0.e.x), var_0, vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(67080u, 10u)], 10u)], u_input.a, 0u)).c, -825f))).e.x);
    global3 = array<u32, 10>();
    return func_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x))))), -591f).e.x;
}

fn func_7(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_div_vec3_f32(func_6(1016f, func_5(vec3<bool>(true, true, true), func_4(vec3<f32>(-1130f, -686f, -128f), vec4<f32>(arg_2.x, arg_0.a, arg_0.a, -514f), Struct_1(true, -2402i, vec4<bool>(false, true, false, true), 22724u, vec3<f32>(arg_0.a, 320f, -708f)), vec4<u32>(4294967295u, 0u, 4294967295u, 55957u)))).e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-304f, arg_0.a, arg_2.x))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.x, 1431f, -473f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1468f - func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(735f, 1624f, 111f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(624f, 172f, arg_0.a, arg_2.x) - vec4<f32>(arg_2.x, arg_0.a, 192f, -728f)), func_6(arg_0.a, Struct_3(Struct_2(-584f, 4294967295u), vec4<f32>(arg_2.x, -2511f, 1187f, arg_2.x), vec3<f32>(1311f, arg_2.x, arg_0.a), arg_2)), select(vec4<u32>(global3[_wgslsmith_index_u32(arg_0.b, 10u)], 1u, global3[_wgslsmith_index_u32(4294967295u, 10u)], 52245u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], 1u, 4294967295u, 22469u), true)).a.x), _wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-851f)), _wgslsmith_f_op_f32(525f + 762f)))), Struct_1(false, -(~(-72851i)) >> (_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 10u)], 16u)] | vec2<u32>(arg_0.b, arg_0.b), global0[_wgslsmith_index_u32(arg_0.b, 16u)]) % 32u), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(489f * 356f) * arg_2.x)).c, ~_wgslsmith_sub_u32(reverseBits(arg_0.b), 22461u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-209f, -1912f, arg_0.a)))))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, ~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 10u)], 60027u), func_2(-2242f, -374f).d, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~arg_0.b, 10u)], 4294967295u), 10u)]), vec4<u32>(u_input.a, ~(~24374u), 0u, arg_0.b))).c;
    let var_1 = Struct_4(_wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(abs(vec4<u32>(919u, 1017u, var_0.a, global3[_wgslsmith_index_u32(8934u, 10u)])), countOneBits(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(12221u, 10u)], 24698u, 50720u))), vec4<u32>(global3[_wgslsmith_index_u32(6463u, 10u)] ^ 12484u, _wgslsmith_mult_u32(arg_0.b, var_0.a), 13467u, ~arg_0.b), !(!vec4<bool>(true, false, var_0.c.x, var_0.c.x))), vec4<u32>(_wgslsmith_clamp_u32(min(u_input.a, arg_0.b), func_6(arg_2.x, var_0.b).d, ~u_input.a), var_0.a, var_0.b.a.b, var_0.b.a.b)), func_5(!func_2(_wgslsmith_div_f32(-572f, arg_0.a), _wgslsmith_f_op_f32(select(var_0.d.x, arg_2.x, var_0.c.x))).c.wxw, Struct_5(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a * 731f), _wgslsmith_f_op_f32(func_1(var_0.b)), -1048f, _wgslsmith_f_op_f32(-arg_2.x)), func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, -385f, var_0.d.x), var_0.b.c, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 131f, arg_0.a, -1003f)), Struct_1(false, u_input.e, vec4<bool>(false, true, false, false), global3[_wgslsmith_index_u32(0u, 10u)], var_0.b.b.yzx), ~vec4<u32>(arg_0.b, u_input.a, 4294967295u, u_input.a)).b, Struct_4(var_0.a, func_4(var_0.b.b.yzz, var_0.b.b, Struct_1(var_0.c.x, 40379i, vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), global3[_wgslsmith_index_u32(56284u, 10u)], vec3<f32>(arg_2.x, 570f, var_0.d.x)), vec4<u32>(var_0.b.a.b, arg_0.b, 1u, global3[_wgslsmith_index_u32(arg_0.b, 10u)])).c.b, vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-var_0.b.d)), var_0.d.x)), vec3<bool>(true, 0i > u_input.c.x, !(var_0.c.x || true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2))));
    global0 = array<vec2<u32>, 16>();
    global1 = array<Struct_2, 13>();
    var var_2 = select(select(!(!vec2<bool>(var_1.c.x, var_0.c.x)), vec2<bool>((arg_0.b ^ var_0.b.a.b) < abs(47441u), var_1.c.x), var_1.c.x), func_2(-509f, _wgslsmith_f_op_f32(sign(-1530f))).c.wy, vec2<bool>(1u > (global3[_wgslsmith_index_u32(~4294967295u, 10u)] ^ ~var_1.a), true & (!var_0.c.x & true)));
    return func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.b.c + _wgslsmith_f_op_vec3_f32(-var_0.b.b.zyz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1096f, arg_2.x, 767f), var_1.b.b.xww))))), vec4<f32>(var_0.b.c.x, arg_2.x, arg_2.x, arg_2.x), func_2(var_0.b.d.x, _wgslsmith_div_f32(-1049f, _wgslsmith_f_op_f32(f32(-1f) * -662f))), vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(func_3(Struct_5(vec4<f32>(var_0.b.d.x, arg_0.a, -1000f, arg_2.x), vec4<bool>(true, true, true, var_0.c.x), var_1, var_1.d.x), Struct_5(vec4<f32>(arg_0.a, 729f, var_1.d.x, -830f), vec4<bool>(var_1.c.x, var_0.c.x, var_0.c.x, var_2.x), Struct_4(0u, var_1.b, var_1.c, var_0.b.d), -357f), var_0.b), 1u), ~func_5(vec3<bool>(false, false, true), Struct_5(vec4<f32>(var_1.b.d.x, 659f, 338f, arg_0.a), vec4<bool>(var_1.c.x, var_0.c.x, var_1.c.x, true), Struct_4(4294967295u, Struct_3(var_1.b.a, vec4<f32>(arg_2.x, -395f, var_1.b.d.x, var_1.d.x), var_1.b.c, var_0.b.b.zw), var_0.c, vec2<f32>(arg_2.x, 403f)), var_1.d.x)).a.b), countOneBits(_wgslsmith_mult_u32(func_2(arg_2.x, arg_0.a).d, max(1469u, global3[_wgslsmith_index_u32(4294967295u, 10u)]))), 7221u)).c.b;
}

fn func_8(arg_0: u32, arg_1: Struct_3, arg_2: Struct_5) -> Struct_4 {
    global3 = array<u32, 10>();
    let var_0 = func_2(298f, _wgslsmith_f_op_f32(-1392f * _wgslsmith_f_op_f32(func_2(arg_2.a.x, -1876f).e.x * -1032f))).c;
    global3 = array<u32, 10>();
    global3 = array<u32, 10>();
    var var_1 = Struct_4(0u, Struct_3(func_5(var_0.wyz, Struct_5(arg_1.b, !vec4<bool>(arg_2.b.x, true, var_0.x, false), Struct_4(global3[_wgslsmith_index_u32(1u, 10u)], arg_1, var_0.yxw, arg_2.a.zx), _wgslsmith_f_op_f32(f32(-1f) * -1822f))).a, _wgslsmith_f_op_vec4_f32(arg_1.b - arg_2.c.b.b), _wgslsmith_div_vec3_f32(arg_1.c, vec3<f32>(959f, _wgslsmith_f_op_f32(arg_2.d * 1552f), 391f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_6(arg_1.c.x, arg_2.c.b).e.yz))), var_0.yyy, vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + arg_1.c.x)))));
    return func_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + _wgslsmith_div_f32(arg_1.b.x, -1561f)), var_1.b.a.a, _wgslsmith_f_op_f32(func_1(func_5(vec3<bool>(false, var_0.x, true), Struct_5(vec4<f32>(arg_2.a.x, 418f, 1521f, arg_1.d.x), vec4<bool>(arg_2.c.c.x, true, var_1.c.x, var_1.c.x), Struct_4(arg_0, arg_1, arg_2.c.c, var_1.b.d), 2255f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(arg_2.d, 845f)), -1000f, _wgslsmith_f_op_f32(abs(-494f)), arg_2.c.d.x), vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(arg_2.d + -1000f), _wgslsmith_div_f32(290f, var_1.b.d.x), -1392f), all(var_0) && (var_1.b.b.x < -573f))) - var_1.b.b), Struct_1(true, -u_input.b.x, func_2(_wgslsmith_f_op_f32(-529f - -1707f), _wgslsmith_f_op_f32(max(-1107f, arg_1.d.x))).c, arg_1.a.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-383f, -124f, var_1.c.x)), 1030f)), _wgslsmith_f_op_f32(1098f + _wgslsmith_f_op_f32(arg_1.a.a - 602f)))), ~select(reverseBits(abs(vec4<u32>(32176u, arg_1.a.b, arg_1.a.b, arg_2.c.a))), ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.a, 10u)], 10u)], 18964u, 123551u, 30327u), !(arg_2.b.x | arg_2.c.c.x))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = func_8(abs(~_wgslsmith_div_u32(reverseBits(0u), u_input.a)), func_7(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_3(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11100u, 10u)], 13u)], vec4<f32>(-262f, -1600f, 393f, -907f), vec3<f32>(1065f, -504f, 336f), vec2<f32>(-1000f, -1001f)))), -1028f, true)), 4766u), ~u_input.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-151f, -463f), _wgslsmith_f_op_f32(1000f - 116f)))), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -550f, 985f, 382f))), vec4<bool>(true, true, true, true), Struct_4(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), 10u)] & 7659u, Struct_3(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 1u), vec4<u32>(4294967295u, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], u_input.a)), 10u)], 13u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(337f, 1618f, -1029f, -199f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1180f, -425f, 559f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(377f, 191f)))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1126f, 1000f), vec2<f32>(755f, -1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 554f) + vec2<f32>(-687f, 949f)))), _wgslsmith_f_op_f32(-2068f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-558f, -250f)), -918f)))));
    global0 = array<vec2<u32>, 16>();
    let var_2 = u_input.e >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(max(global0[_wgslsmith_index_u32(u_input.a, 16u)], vec2<u32>(var_1.a, var_1.b.a.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 10u)], 10u)]), vec2<u32>(global3[_wgslsmith_index_u32(1u, 10u)], 4294967295u)), var_1.c.yz), select(vec2<u32>(u_input.a, var_1.b.a.b), global0[_wgslsmith_index_u32(u_input.a, 16u)], vec2<bool>(var_1.c.x, false))), vec2<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 10u)])) % 32u);
    global4 = ~func_5(vec3<bool>(all(vec3<bool>(var_1.c.x, false, false)) || var_1.c.x, !(!var_1.c.x), all(func_4(vec3<f32>(var_1.b.a.a, var_1.b.c.x, 1236f), var_1.b.b, Struct_1(var_1.c.x, 0i, vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x), 4294967295u, vec3<f32>(var_1.b.d.x, -2172f, 1453f)), vec4<u32>(var_1.b.a.b, 1u, 8u, 0u)).b)), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.c.x, var_1.b.a.a, var_1.b.d.x, -159f)))), !func_2(var_1.b.d.x, var_1.b.c.x).c, Struct_4(~u_input.a, var_1.b, var_1.c, vec2<f32>(var_1.b.b.x, var_1.d.x)), _wgslsmith_f_op_f32(-var_1.d.x))).a.b;
    global2 = func_7(global1[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-25429i, var_2, -2147483647i), vec3<i32>(-5913i, -5474i, var_2)), reverseBits(-2147483647i)) >> (var_1.a % 32u), var_1.b.c.xy).b.x > -372f;
    let var_3 = _wgslsmith_f_op_f32(-var_1.d.x);
    let var_4 = func_2(var_1.d.x, var_3).e.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(var_1.a, _wgslsmith_add_u32(u_input.a, reverseBits(1u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.c.xy + vec2<f32>(var_3, 1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1254f, 263f), var_1.d, vec2<bool>(false, var_1.c.x)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_4, -813f)))))), var_1.b.b.wx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, 1012f, var_4, var_3)) - _wgslsmith_f_op_vec4_f32(var_1.b.b * var_1.b.b)), _wgslsmith_f_op_vec4_f32(-var_1.b.b), vec4<bool>(false, var_1.c.x, var_1.c.x, all(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)))))), ~global3[_wgslsmith_index_u32(34578u, 10u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~select(var_1.a & global3[_wgslsmith_index_u32(47785u, 10u)], ~var_1.b.a.b, !var_1.c.x), 10u)], 10u)], firstTrailingBit(max((vec4<i32>(19491i, 1i, u_input.e, var_2) & vec4<i32>(u_input.e, var_2, 0i, u_input.e)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 142519u, 0u), vec4<u32>(122517u, 35417u, 48743u, u_input.a)) % vec4<u32>(32u)), u_input.b >> (select(vec4<u32>(99745u, 26056u, u_input.a, u_input.a), vec4<u32>(global3[_wgslsmith_index_u32(107838u, 10u)], 5536u, 13050u, u_input.a), var_1.c.x) % vec4<u32>(32u)))));
}

