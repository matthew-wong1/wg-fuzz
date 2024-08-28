struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, true, true, true, true, false, false, true, true, true, true, true, false, true, false, false, true, true, false, true, false, true, true, true, true, true, true, false, false);

var<private> global1: array<Struct_3, 21>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    let var_0 = select(select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 45583u), u_input.c.zww), 30u)] == true, _wgslsmith_f_op_f32(arg_2.a - arg_2.a) < _wgslsmith_f_op_f32(round(arg_0.a))), vec2<bool>(true, false), true), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.x), arg_1.yy), u_input.a.x), arg_1.x, 3166u), 30u)], any(!select(vec3<bool>(global0[_wgslsmith_index_u32(5542u, 30u)], true, global0[_wgslsmith_index_u32(55144u, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], false, global0[_wgslsmith_index_u32(arg_1.x, 30u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 30u)])))), vec2<bool>(arg_1.x > u_input.b.x, all(vec4<bool>(true, !global0[_wgslsmith_index_u32(4294967295u, 30u)], true | global0[_wgslsmith_index_u32(u_input.a.x, 30u)], true))));
    let var_1 = vec4<i32>(-2147483647i, _wgslsmith_div_i32(2147483647i, -49442i), _wgslsmith_clamp_i32(~(-52633i), _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 30914i), vec3<i32>(11432i, 8026i, 9012i)), 0i), -1334i), -2147483647i);
    global0 = array<bool, 30>();
    global1 = array<Struct_3, 21>();
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.b.xz & ~firstTrailingBit(countOneBits(u_input.a)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(83085u, arg_1.x), reverseBits(arg_1.ww), vec2<u32>(0u, 51186u) | u_input.c.wy), ~firstLeadingBit(u_input.b.xy)));
    return _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(firstLeadingBit(-25991i), abs(firstLeadingBit(-1i)), (var_1.x ^ -11108i) | _wgslsmith_add_i32(-2147483647i, var_1.x), i32(-1i) * -var_1.x)), _wgslsmith_add_vec4_i32(var_1, var_1) & abs(firstLeadingBit(var_1 << (u_input.c % vec4<u32>(32u)))));
}

fn func_2() -> f32 {
    var var_0 = !(func_3(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], firstTrailingBit(~u_input.c), Struct_3(_wgslsmith_f_op_f32(762f * -183f))) != -2147483647i);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f), -449f)))), 1f, false));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>) -> Struct_3 {
    global1 = array<Struct_3, 21>();
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), -589f)), arg_1.xy));
    let var_1 = global0[_wgslsmith_index_u32(arg_0.x, 30u)];
    let var_2 = global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(u_input.c ^ u_input.c, u_input.c), 121866u), 21u)];
    global0 = array<bool, 30>();
    return Struct_3(arg_1.x);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(~(~_wgslsmith_div_u32(abs(1u), 43910u)), _wgslsmith_add_u32(u_input.b.x, ~u_input.a.x));
    global1 = array<Struct_3, 21>();
    let var_1 = 481f;
    let var_2 = false;
    global0 = array<bool, 30>();
    return Struct_2(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.x)))), Struct_1(!vec3<bool>(arg_3.x < 1369f, u_input.a.x == u_input.a.x, !global0[_wgslsmith_index_u32(u_input.b.x, 30u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, abs(u_input.c)), firstTrailingBit(u_input.c.x), u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 37984u, u_input.b.x), abs(vec4<u32>(u_input.a.x, u_input.c.x, 40360u, 9778u)))), u_input.c), _wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(1i, -1i, arg_0, arg_0)), ~vec4<i32>(5210i, arg_0, arg_0, 9361i)) & 0i);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-707f)))), arg_1.a);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_2.b;
    var_0 = func_4(~(-arg_2.d) | 45689i, func_1(arg_1.yx, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a, _wgslsmith_div_f32(arg_2.a, arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -1213f))))), func_1(u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - -224f), -1055f, _wgslsmith_f_op_f32(arg_2.a - arg_0.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_0.x, -166f) + vec3<f32>(674f, 129f, 457f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, 1556f) * vec3<f32>(215f, arg_2.a, arg_2.a)), !arg_3.a)))).a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_0.x, 1120f, arg_0.x) - vec4<f32>(arg_2.a, 1860f, arg_2.a, arg_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -425f, -916f)), select(vec4<bool>(arg_3.a.x, var_0.a.x, global0[_wgslsmith_index_u32(arg_1.x, 30u)], var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, arg_3.a.x), vec4<bool>(arg_3.a.x, arg_3.a.x, var_0.a.x, arg_2.b.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_2.a, 650f, 1596f) * vec4<f32>(arg_2.a, -793f, -990f, 1598f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -846f, -503f, 241f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a, 831f, -1149f, arg_0.x))))), vec4<bool>(arg_2.b.a.x, true, true, any(select(vec4<bool>(arg_3.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(49605u, 30u)], true), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], true, arg_2.b.a.x, arg_3.a.x), vec4<bool>(false, true, arg_3.a.x, var_0.a.x))))))).b;
    var var_1 = func_4(~arg_2.d, Struct_3(arg_2.a), _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(-func_1(select(u_input.a, vec2<u32>(u_input.a.x, arg_1.x), global0[_wgslsmith_index_u32(18432u, 30u)]), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, arg_2.a, -789f), vec3<f32>(-842f, arg_2.a, -159f)))).a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, 242f, 573f, arg_2.a) - vec4<f32>(-794f, 872f, 1184f, arg_2.a)), vec4<f32>(1152f, _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(arg_0.x * 551f), arg_2.a), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, 445f, 381f, 607f)) - vec4<f32>(arg_2.a, arg_2.a, 1000f, arg_0.x))))).b;
    var var_2 = arg_2.a;
    var_2 = 1527f;
    return func_4(1i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f))), arg_0.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_2.a, -1418f, -404f))) - vec4<f32>(-264f, arg_2.a, _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_div_f32(1306f, -763f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1000f, -216f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_2.a, -667f, -1367f) - vec4<f32>(arg_2.a, arg_2.a, arg_0.x, arg_2.a))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(112f, arg_2.a, 608f, -1907f), vec4<f32>(arg_2.a, arg_0.x, arg_2.a, arg_0.x)), vec4<f32>(1225f, 1756f, arg_2.a, arg_2.a), select(vec4<bool>(true, var_1.a.x, true, false), vec4<bool>(arg_3.a.x, false, var_1.a.x, arg_2.b.a.x), vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_1.x, 30u)], var_0.a.x)))))));
}

fn func_7(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, 2095f, arg_2.a, arg_2.a)))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-388f, 1f, _wgslsmith_f_op_f32(1272f - arg_2.a), arg_1), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1615f, arg_1, -1000f, 245f) + vec4<f32>(683f, -968f, arg_0, 489f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a), -406f, _wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(round(837f)), _wgslsmith_f_op_f32(-arg_2.a), arg_2.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_2.a, 433f), vec4<f32>(arg_1, -809f, arg_1, arg_0)))))));
    let var_1 = func_1(select(vec2<u32>(_wgslsmith_sub_u32(~20455u, _wgslsmith_clamp_u32(38712u, u_input.a.x, 1u)), 0u), select(firstLeadingBit(u_input.c.yy), firstTrailingBit(u_input.b.zy ^ vec2<u32>(61336u, 0u)), vec2<bool>(true, true)), func_4(-2147483647i, func_1(u_input.c.xw, var_0.wzw), _wgslsmith_f_op_f32(138f * arg_1), var_0).b.a.xy), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(var_0.yyx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1296f, arg_2.a, arg_2.a))))))));
    var var_2 = _wgslsmith_add_vec3_i32(~(~(~vec3<i32>(arg_2.d, arg_2.d, 1i))), vec3<i32>(arg_2.d << (0u % 32u), arg_2.d, func_3(func_1(~u_input.a, _wgslsmith_div_vec3_f32(vec3<f32>(-2017f, 1081f, arg_2.a), vec3<f32>(arg_2.a, 1000f, var_1.a))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c)), global1[_wgslsmith_index_u32(41847u, 21u)])));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.ww, var_0.yw, arg_2.b.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_2.a), vec2<f32>(-649f, arg_1), vec2<bool>(arg_2.b.a.x, true))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.zy + _wgslsmith_f_op_vec2_f32(-var_0.zx))))));
    global0 = array<bool, 30>();
    return func_6(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, 1f))), u_input.c, arg_2, Struct_1(arg_2.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_f32(-1f), -492f, func_6(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(380f, 2554f) - _wgslsmith_f_op_f32(f32(-1f) * -1047f)), func_4(~(-38095i), func_1(u_input.b.zy, vec3<f32>(-719f, -1350f, -705f)), _wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_vec4_f32(vec4<f32>(491f, 683f, -824f, 1148f) * vec4<f32>(-995f, 1625f, -935f, 522f))), select(-30243i, 0i, true))), u_input.c, Struct_2(_wgslsmith_f_op_vec2_f32(func_5(-913f, func_4(1i, Struct_3(-672f), 1162f, vec4<f32>(-1714f, 1523f, -578f, 732f)), max(-1i, 36083i))).x, func_4(20922i, Struct_3(-297f), _wgslsmith_f_op_f32(225f * 742f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(784f, 1182f, -1211f, -422f)))).b, 1u, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, -25462i, -2147483647i), ~vec4<i32>(256i, -57917i, -34067i, -30161i))), func_4(~8385i, func_1(vec2<u32>(u_input.b.x, 0u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(333f, -927f, 547f), vec3<f32>(-960f, 1796f, -2779f), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1652f, -978f, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))), vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -427f, global0[_wgslsmith_index_u32(49418u, 30u)])), _wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(493f + -1442f), 1368f)).b));
    global0 = array<bool, 30>();
    var var_1 = -firstTrailingBit(-select(vec3<i32>(-1i, 2147483647i, var_0.d), vec3<i32>(var_0.d, var_0.d, 2147483647i), var_0.b.a) >> (vec3<u32>(1878u, 36591u, ~var_0.c) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(788f, 2836f, var_0.a, var_0.a) - vec4<f32>(782f, var_0.a, var_0.a, var_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1541f, var_0.a, var_0.a, 2169f) + vec4<f32>(731f, 169f, 183f, var_0.a)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(func_2())))), 3144f, var_0.a, -1236f));
    let var_3 = _wgslsmith_mult_i32(-12841i, func_3(Struct_3(func_1(vec2<u32>(0u, 6887u), vec3<f32>(var_0.a, 135f, var_2.x)).a), vec4<u32>(~(~53741u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 31766u), reverseBits(vec3<u32>(var_0.c, 1u, 4294967295u))), ~35245u, func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1350f, 420f)), min(u_input.c, vec4<u32>(var_0.c, var_0.c, var_0.c, var_0.c)), Struct_2(var_2.x, var_0.b, u_input.c.x, var_0.d), Struct_1(var_0.b.a)).c), func_1(~vec2<u32>(1u, u_input.a.x), var_2.yzz)));
    let var_4 = !vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.c >> (u_input.a.x % 32u), 30u)]);
    var var_5 = global1[_wgslsmith_index_u32(~func_4(-(i32(-1i) * -2147483647i), func_1(vec2<u32>(var_0.c, u_input.a.x) >> ((vec2<u32>(var_0.c, var_0.c) ^ u_input.b.yx) % vec2<u32>(32u)), vec3<f32>(var_0.a, var_2.x, _wgslsmith_f_op_f32(-var_2.x))), 216f, vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, 759f, var_4.x))), -205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))).c, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

