struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16>;

var<private> global1: array<vec3<bool>, 6>;

var<private> global2: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(16851u, 4116u), vec2<u32>(80290u, 1u), vec2<u32>(65202u, 24153u), vec2<u32>(0u, 104168u), vec2<u32>(83494u, 4294967295u), vec2<u32>(33346u, 1u), vec2<u32>(4294967295u, 3170u), vec2<u32>(4294967295u, 16754u), vec2<u32>(4294967295u, 0u), vec2<u32>(60473u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(19458u, 0u), vec2<u32>(81145u, 4294967295u), vec2<u32>(1u, 4444u), vec2<u32>(1u, 0u), vec2<u32>(1u, 27649u), vec2<u32>(29110u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 31096u), vec2<u32>(30521u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 51152u), vec2<u32>(84382u, 55723u), vec2<u32>(4294967295u, 31946u), vec2<u32>(0u, 21483u), vec2<u32>(31118u, 0u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32) -> f32 {
    global1 = array<vec3<bool>, 6>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(7344u, _wgslsmith_clamp_u32(u_input.b.x, ~select(u_input.b.x, u_input.b.x, false), ~0u), u_input.b.x), select(vec3<u32>(4294967295u, u_input.b.x, _wgslsmith_mod_u32(~u_input.b.x, ~u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(u_input.b.x), 4294967295u, 102260u), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(1u, u_input.b.x, 0u)), reverseBits(vec3<u32>(1u, u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_f32(select(-1229f, _wgslsmith_f_op_f32(-1000f + 1078f), false)) != _wgslsmith_f_op_f32(step(-374f, _wgslsmith_f_op_f32(-1000f * -569f))))), 16u)];
    var var_1 = Struct_3(true);
    global1 = array<vec3<bool>, 6>();
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(104f, 2129f, -1564f, -2582f) - vec4<f32>(1000f, 281f, 704f, 1329f)), vec4<f32>(1123f, -393f, -1000f, -231f)))))), vec3<bool>(true, select(any(!global1[_wgslsmith_index_u32(u_input.b.x, 6u)]), true, false), !(!any(vec4<bool>(var_1.a, false, var_1.a, true)))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(315f)))), 484f, -113f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1971f) * -1475f), 100f, true)), select(abs(u_input.b.x), ~u_input.b.x, true) << (u_input.b.x % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 843f)))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(37378i, -1i), vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -765i, -u_input.a), -8024i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, -2147483647i), ~vec2<i32>(~(-68944i), -26722i)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1333f, -1553f, 459f))))), vec3<f32>(_wgslsmith_f_op_f32(func_3(~1i)), _wgslsmith_f_op_f32(func_3(u_input.a)), _wgslsmith_f_op_f32(sign(1154f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-843f * _wgslsmith_f_op_f32(286f - _wgslsmith_f_op_f32(-835f - -841f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1237f))), firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 16033u) | vec3<u32>(4294967295u, 4294967295u, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    var var_2 = firstTrailingBit(-vec3<i32>(select(-1318i, -77716i, true), abs(15667i), firstTrailingBit(select(22697i, -2147483647i, true))));
    var_0 = vec2<i32>(var_2.x, select(firstTrailingBit(-22887i), min(var_0.x, ~u_input.a >> (u_input.b.x % 32u)), any(vec2<bool>(true, true))));
    global0 = array<vec4<i32>, 16>();
    return u_input.a | firstLeadingBit(_wgslsmith_mod_i32(12077i, 1i));
}

fn func_1() -> Struct_2 {
    var var_0 = -vec4<i32>(-36285i, (u_input.a & min(u_input.a, 2147483647i)) << (u_input.b.x % 32u), -_wgslsmith_mult_i32(func_2(), u_input.a), _wgslsmith_mod_i32(-(~u_input.a), min(firstTrailingBit(u_input.a), u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-135f, -819f));
    var var_2 = Struct_4(vec4<bool>(true, u_input.b.x < u_input.b.x, any(vec3<bool>(any(vec4<bool>(false, true, false, true)), false, true)), !select(false, true, false) && all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1979f, 236f, -883f)), vec3<f32>(1850f, -239f, 1540f))), vec3<f32>(-677f, _wgslsmith_f_op_f32(ceil(-337f)), 1940f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-161f, 386f, -199f)), _wgslsmith_div_vec3_f32(vec3<f32>(1335f, 1000f, -1874f), vec3<f32>(1207f, -1180f, 2568f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, 935f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-5926i)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1700f, 502f))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(func_3(-1i)), -709f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.x, var_2.c.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(677f, 421f, -1991f, var_2.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1451f, var_2.c.x, var_2.b.x, var_2.b.x))))));
    let var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(-var_3), var_2.a.yyy, Struct_2(var_3.xww, _wgslsmith_f_op_f32(-var_2.b.x), 4294967295u));
    return var_4.c;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_5 {
    global1 = array<vec3<bool>, 6>();
    global0 = array<vec4<i32>, 16>();
    var var_0 = arg_1;
    let var_1 = u_input.a;
    var var_2 = Struct_4(!(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) * arg_2.a), _wgslsmith_f_op_vec3_f32(min(func_1().a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(451f, arg_2.b, -1000f))))), true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.b, arg_0, -340f))) + vec3<f32>(_wgslsmith_f_op_f32(arg_0 + -861f), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(max(arg_0, 155f))))), _wgslsmith_f_op_vec2_f32(arg_2.a.zy + vec2<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(401f, -1000f)), _wgslsmith_f_op_f32(-arg_2.b)))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-346f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b))), -123f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.a.x + 1289f))))), !select(vec3<bool>(true, var_2.a.x, true), var_2.a.yzw, select(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, false), !vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x))), func_1());
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-func_1().a.x), arg_2.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.c.b, 1000f) - vec3<f32>(526f, arg_2.c.b, arg_2.a.x)) * vec3<f32>(283f, -102f, arg_2.c.a.x)), arg_2.c.a), global1[_wgslsmith_index_u32(reverseBits(15756u), 6u)])), arg_2.c.b, max(arg_2.c.c, 1u));
    var var_1 = arg_2.a;
    let var_2 = arg_2.b;
    return _wgslsmith_div_vec3_f32(var_0.a, var_1.zxw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(select(vec4<bool>(true, !all(vec2<bool>(false, true)), true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, select(false, true, false), all(vec3<bool>(true, true, true)))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(806f, 855f, -2576f), vec3<f32>(852f, 815f, -551f))), vec3<f32>(683f, -739f, 908f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(339f, 286f))), _wgslsmith_div_f32(-1346f, 235f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(3357f, 977f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-128f, 481f), vec2<f32>(-791f, -556f))))))));
    global2 = array<vec2<u32>, 26>();
    global2 = array<vec2<u32>, 26>();
    let var_1 = var_0.b;
    var_0 = Struct_4(!select(var_0.a, !vec4<bool>(true, var_0.a.x, false, true), var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(vec2<i32>(u_input.a, u_input.a), max(-vec3<i32>(1i, 26989i, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 8118i, -12418i), vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(12388i, u_input.a, 23057i))), func_4(_wgslsmith_f_op_f32(-1902f - 1000f), 1i, func_1(), _wgslsmith_div_vec3_u32(vec3<u32>(33416u, u_input.b.x, 22775u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x) ^ vec4<u32>(9826u, 4294967295u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x))))), var_0.b.yz);
    let var_2 = Struct_2(vec3<f32>(1236f, _wgslsmith_f_op_f32(-552f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1554f, 317f)) + _wgslsmith_f_op_f32(var_1.x - -397f))), _wgslsmith_f_op_f32(-1326f - _wgslsmith_f_op_f32(func_3(abs(u_input.a))))), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(283f)))))), abs(~firstTrailingBit(u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-17886i, -(i32(-1i) * -u_input.a)), var_2.c, countOneBits(select(-vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(22773i, 39718i)), var_0.a.zz) << ((~vec2<u32>(var_2.c, u_input.b.x) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

