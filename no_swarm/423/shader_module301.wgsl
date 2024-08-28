struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: Struct_3 = Struct_3(86175i, Struct_1(vec3<i32>(-61546i, 0i, 38138i), 103279u, false, vec3<u32>(1u, 57815u, 6534u), 0i), -1538f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = min(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a, 37892i, arg_0.b.e) << (~vec3<u32>(global1.b.b, arg_1.a, 46497u) % vec3<u32>(32u)), vec3<i32>(~global1.b.a.x, -45652i, 62748i)), firstTrailingBit(_wgslsmith_div_vec3_i32(global1.b.a, vec3<i32>(-1i, arg_0.a, global1.b.e)) & vec3<i32>(1i, -67162i, global1.b.a.x))) << (global1.b.d % vec3<u32>(32u));
    global0 = array<Struct_3, 25>();
    global1 = Struct_3(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(41391i, 46558i, -1i), arg_0.b.a) & global1.b.a, select(vec3<i32>(arg_0.a, -5277i, var_0.x) ^ vec3<i32>(2147483647i, -2147483647i, 8799i), -global1.b.a, vec3<bool>(arg_0.b.c, true, true)))), global1.b, -1093f);
    let var_1 = max(firstLeadingBit(firstTrailingBit(~(-17480i))), arg_0.b.a.x);
    var_0 = arg_0.b.a;
    return !(!vec4<bool>(select(true, false | arg_0.b.c, arg_0.b.c), 3445i < var_0.x, global1.b.c, all(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = Struct_2(~(~u_input.b | global1.b.b) ^ select(~(~u_input.b), ~reverseBits(19787u), true), global1.b.c);
    global0 = array<Struct_3, 25>();
    var var_1 = false;
    let var_2 = _wgslsmith_clamp_u32(firstLeadingBit((0u | global1.b.b) ^ _wgslsmith_add_u32(u_input.b >> (0u % 32u), min(arg_1.b.b, 3441u))), arg_1.b.b, arg_2.x);
    var var_3 = _wgslsmith_dot_vec2_u32(countOneBits(arg_1.b.d.zy), _wgslsmith_sub_vec2_u32(select(_wgslsmith_mod_vec2_u32(arg_2, arg_2) & vec2<u32>(96016u, 4398u), vec2<u32>(4294967295u, var_2) | arg_2, true), ~global1.b.d.zx));
    return abs(~(~vec2<u32>(0u, var_0.a)) | _wgslsmith_mod_vec2_u32(~arg_1.b.d.zz, global1.b.d.yz >> (arg_1.b.d.yy % vec2<u32>(32u)))) & vec2<u32>(1u, arg_2.x);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1440f))) + 838f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_div_u32(u_input.b, global1.b.b) & (1u & global1.b.b)), 25u)];
    let var_1 = !vec2<bool>(any(select(!arg_0.yx, !arg_0.zy, vec2<bool>(arg_0.x, false))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-98031i, 36108i, global1.b.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1.b.e, -1i, global1.a), vec4<i32>(-2147483647i, -12487i, 0i, global1.b.a.x)), 0i) < _wgslsmith_dot_vec3_i32(-vec3<i32>(927i, global1.b.a.x, -2147483647i), vec3<i32>(-76447i, -60275i, global1.b.a.x)));
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, _wgslsmith_f_op_f32(-117f - global1.c), -1881f, -1075f))), Struct_3(_wgslsmith_div_i32(-2138i, global1.a), global1.b, -401f), vec2<u32>(~global1.b.b, 1u), !select(select(vec4<bool>(var_1.x, arg_0.x, var_1.x, true), func_3(Struct_3(-19772i, global1.b, global1.c), Struct_2(u_input.a, false)), vec4<bool>(false, true, false, true)), !vec4<bool>(arg_0.x, true, false, var_1.x), func_3(global0[_wgslsmith_index_u32(~u_input.a, 25u)], Struct_2(global1.b.d.x, true))));
    let var_3 = ~vec4<u32>(1u, ~24763u, select(1u, max(1u, var_2.x), false) & _wgslsmith_add_u32(var_2.x, ~16231u), ~_wgslsmith_mod_u32(abs(10733u), 1u));
    return global1.b;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global0 = array<Struct_3, 25>();
    var var_0 = Struct_4(Struct_1(~vec3<i32>(global1.a, arg_0.b.a.x, -2147483647i >> (0u % 32u)), global1.b.d.x, func_3(global0[_wgslsmith_index_u32(arg_0.b.b ^ u_input.a, 25u)], Struct_2(max(arg_0.b.b, global1.b.d.x), global1.b.c == arg_0.b.c)).x, firstTrailingBit(reverseBits(vec3<u32>(6260u, arg_0.b.b, 31428u))), (1i ^ (arg_0.a & global1.b.e)) >> (global1.b.b % 32u)), Struct_3(global1.b.e & _wgslsmith_add_i32(global1.b.e, global1.a), arg_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-113f * 555f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, 165f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, arg_0.c) * _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(step(arg_0.c, global1.c)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1.c)), _wgslsmith_div_f32(arg_0.c, arg_0.c))))), -1000f), Struct_1(vec3<i32>(firstLeadingBit(select(-18602i, 24409i, arg_0.b.c)), max(firstTrailingBit(global1.a), 32102i), -global1.b.e), 4294967295u, !(_wgslsmith_f_op_f32(global1.c - 1103f) == _wgslsmith_f_op_f32(-global1.c)), global1.b.d, -1i), ~((vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, arg_0.a, -16850i)) << (max(countOneBits(vec4<u32>(1u, 27993u, global1.b.d.x, u_input.b)), vec4<u32>(18744u, 1u, 8789u, 4294967295u)) % vec4<u32>(32u))));
    var var_1 = var_0.e;
    var_0 = Struct_4(Struct_1(vec3<i32>(var_0.a.e, arg_0.b.e, 4820i), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(48413u, u_input.a, 4294967295u, arg_0.b.b) << (vec4<u32>(var_0.d.b, var_0.b.b.d.x, global1.b.d.x, 15474u) % vec4<u32>(32u)), vec4<u32>(1u, 35098u, u_input.b, 1u)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(7649u, u_input.b, 47872u), var_0.d.d), arg_0.b.d)), !all(!vec2<bool>(var_0.a.c, var_0.a.c)), (vec3<u32>(1u, 24035u, 1u) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global1.b.d.x, 0u), vec3<u32>(23690u, 4294967295u, u_input.a))) >> (vec3<u32>(arg_0.b.b, ~0u, ~global1.b.b) % vec3<u32>(32u)), _wgslsmith_sub_i32(global1.b.e, i32(-1i) * -global1.a)), global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-734f - var_0.b.c), _wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(select(-947f, global1.c, true))) - _wgslsmith_f_op_vec3_f32(-var_0.c))), func_2(select(select(func_3(Struct_3(var_1.x, var_0.b.b, global1.c), Struct_2(0u, true)).wxw, !vec3<bool>(false, arg_0.b.c, global1.b.c), select(vec3<bool>(arg_0.b.c, false, var_0.a.c), vec3<bool>(true, true, arg_0.b.c), arg_0.b.c)), !select(vec3<bool>(false, var_0.a.c, true), vec3<bool>(false, var_0.b.b.c, false), vec3<bool>(true, var_0.d.c, false)), vec3<bool>(true, arg_0.b.c, select(false, true, false)))), vec4<i32>(-1761i, firstLeadingBit(max(var_1.x, _wgslsmith_mod_i32(-60295i, arg_0.b.e))), func_2(func_3(global0[_wgslsmith_index_u32(~4294967295u, 25u)], Struct_2(arg_0.b.b, arg_0.b.c)).wzz).a.x, abs(_wgslsmith_div_i32(-24030i, ~var_0.e.x))));
    var var_2 = var_0.d;
    return arg_0;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_3, 25>();
    let var_0 = _wgslsmith_f_op_f32(-global1.c);
    global1 = func_5(Struct_3(global1.b.a.x, func_2(select(!vec3<bool>(global1.b.c, false, global1.b.c), !vec3<bool>(global1.b.c, false, true), !global1.b.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1364f + _wgslsmith_f_op_f32(global1.c * var_0)) + _wgslsmith_f_op_f32(floor(-277f)))));
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    return func_5(Struct_3(-5927i, Struct_1(vec3<i32>(global1.b.a.x, -2147483647i, abs(global1.a)), global1.b.d.x, true, global1.b.d, global1.a), _wgslsmith_f_op_f32(-var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = select(vec4<bool>(func_1().b.c, !all(vec3<bool>(true, global1.b.c, global1.b.c)), global1.b.c, ~38261u <= min(firstTrailingBit(1u), global1.b.d.x)), vec4<bool>(max(36369u, u_input.b) < _wgslsmith_div_u32(~global1.b.d.x, 35467u), global1.b.c, any(func_3(func_5(Struct_3(-50757i, Struct_1(global1.b.a, 0u, false, global1.b.d, global1.b.a.x), global1.c)), Struct_2(75790u, false)).wx), true), !vec4<bool>(false, global1.b.c, global1.b.c, any(vec2<bool>(true, global1.b.c))));
    var var_1 = vec3<i32>(i32(-1i) * -9029i, select(50035i, 0i, all(func_3(Struct_3(global1.b.e, global1.b, 449f), Struct_2(global1.b.d.x, var_0.x)).ywx)), func_2(var_0.yzx).a.x);
    var var_2 = func_5(Struct_3(0i, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c))))).c;
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.d.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c, 223f), vec2<f32>(global1.c, 1107f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, 1363f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global1.c))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, global1.c) + vec2<f32>(-330f, 387f)), _wgslsmith_div_vec2_f32(vec2<f32>(global1.c, -1259f), vec2<f32>(global1.c, 783f)))))), vec4<i32>(var_1.x, -2147483647i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global1.b.a, vec3<i32>(-1i, -1i, global1.a)), -vec3<i32>(global1.a, global1.b.a.x, 0i)), ~(-1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1330f, 389f, 323f)))), -1028f);
}

