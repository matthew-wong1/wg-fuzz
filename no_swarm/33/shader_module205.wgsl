struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(51795u, 0u, 17588u, 18792u, 4294967295u, 15797u, 78929u, 53668u, 35909u, 59696u, 47658u, 157987u, 1u, 25793u, 64u, 100045u, 29929u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec2<bool>) -> i32 {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    let var_0 = _wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1179f, _wgslsmith_f_op_f32(f32(-1f) * -2379f), -1000f), arg_0, true && (-402f != arg_2.b.b.b.d.a.x))), all(arg_2.a.zz))));
    global0 = array<u32, 17>();
    let var_1 = vec3<i32>(-1i, ~(i32(-1i) * -42776i) >> (((global0[_wgslsmith_index_u32(arg_1.c.x, 17u)] ^ global0[_wgslsmith_index_u32(0u & arg_1.b.d, 17u)]) >> (u_input.b % 32u)) % 32u), -(~u_input.a >> (4294967295u % 32u)));
    return ~(-38571i);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_4(all(!vec2<bool>(any(vec4<bool>(false, true, false, true)), select(true, true, true))), Struct_3(select(vec4<bool>(false, all(vec3<bool>(false, true, true)), false, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true), false), Struct_2(4436u, 2147483647i, firstTrailingBit(vec3<u32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(1u, 17u)])), Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.zz + arg_0.xz), vec2<bool>(false, false), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 49233u, 47182u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(26840u, 17u)])), true, u_input.a)), u_input.a), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(16915u, global0[_wgslsmith_index_u32(49245u, 17u)], u_input.b), reverseBits(vec3<u32>(80180u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6589u, 17u)], 17u)], 9062u))), 17u)], ~firstTrailingBit(u_input.b)), 21938u), reverseBits(~0u), select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -9577i, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(u_input.a, arg_1, arg_1))), u_input.a >> (max(43669u, 102336u) % 32u), min(func_3(arg_0.yzz, Struct_5(vec3<bool>(true, false, false), Struct_4(true, Struct_3(vec4<bool>(true, false, false, true), Struct_2(0u, 2147483647i, vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], 1u, u_input.b), Struct_1(vec2<f32>(-1000f, arg_0.x), vec2<bool>(false, true), global0[_wgslsmith_index_u32(28673u, 17u)], false, arg_1)), -16270i), 30147u, 1962u, vec3<i32>(11802i, arg_1, arg_1)), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_5(vec3<bool>(true, true, true), Struct_4(true, Struct_3(vec4<bool>(true, true, true, true), Struct_2(global0[_wgslsmith_index_u32(1u, 17u)], arg_1, vec3<u32>(27935u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)]), Struct_1(arg_0.zy, vec2<bool>(false, true), 8575u, false, -1754i)), u_input.a), 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], 17u)], vec3<i32>(-9419i, arg_1, arg_1)), vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(18481u, 17u)], u_input.b, 9090u)), vec2<bool>(false, true)), _wgslsmith_clamp_i32(u_input.a, u_input.a, -2147483647i))), _wgslsmith_div_vec3_i32(firstLeadingBit(~vec3<i32>(3235i, arg_1, arg_1)), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(2147483647i, arg_1, -1i) & vec3<i32>(arg_1, arg_1, 10453i))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, any(vec2<bool>(true, false))), true)));
    var var_1 = vec3<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.b.b.c.xx) & select(_wgslsmith_clamp_u32(17349u, var_0.c, u_input.b), 1u, false)), reverseBits(var_0.c), u_input.b);
    var var_2 = var_0.b;
    let var_3 = Struct_2(~(~(~(~var_1.x))), _wgslsmith_dot_vec3_i32(var_0.e, vec3<i32>(18453i ^ arg_1, -1i, -func_3(vec3<f32>(var_0.b.b.d.a.x, var_2.b.d.a.x, var_0.b.b.d.a.x), Struct_5(vec3<bool>(var_0.a, true, var_2.b.d.d), Struct_4(false, Struct_3(var_2.a, var_0.b.b, var_2.b.d.e), 111614u, 29287u, var_0.e), vec4<u32>(var_2.b.c.x, 34459u, 60440u, var_0.b.b.c.x)), Struct_5(var_2.a.zxy, Struct_4(false, var_0.b, var_0.b.b.a, var_2.b.d.c, vec3<i32>(u_input.a, 16425i, 2147483647i)), vec4<u32>(21725u, 49401u, 0u, 39760u)), vec2<bool>(var_0.a, var_2.a.x)))), ~vec3<u32>(1u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)] & var_0.b.b.a), var_1.x), var_0.b.b.d);
    var_1 = max(~firstTrailingBit(abs(~vec3<u32>(0u, 15790u, var_0.c))), ~var_3.c);
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    var var_0 = vec4<u32>(~4294967295u, countOneBits(_wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_1.c, 26019u) >> (vec2<u32>(arg_3.c, u_input.b) % vec2<u32>(32u))), vec2<u32>(0u, _wgslsmith_add_u32(arg_2.b.b.c.x, u_input.b)))), ~abs(81287u), ~countOneBits(abs(74023u >> (global0[_wgslsmith_index_u32(82960u, 17u)] % 32u))));
    var_0 = vec4<u32>(19007u, 15063u, countOneBits(reverseBits(4294967295u)), 25384u);
    var var_1 = ~(~arg_3.c);
    return Struct_4(!(!arg_2.a), Struct_3(vec4<bool>(true, true, _wgslsmith_f_op_f32(arg_2.b.b.d.a.x * arg_2.b.b.d.a.x) == _wgslsmith_f_op_f32(round(arg_1.a.x)), true), arg_0, 0i), var_0.x, global0[_wgslsmith_index_u32(arg_2.d, 17u)], select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.e, u_input.a, arg_1.e), vec3<i32>(-30886i, 2147483647i, arg_1.e)), -51433i, 2147483647i), abs(abs(vec3<i32>(arg_2.e.x, arg_1.e, arg_0.b) ^ arg_2.e)), arg_2.b.a.zxx));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4) -> f32 {
    var var_0 = arg_2.b.a.wz;
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b.d.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b.d.a.x) + _wgslsmith_f_op_f32(ceil(arg_2.b.b.d.a.x)))))));
    let var_3 = _wgslsmith_mod_i32(-2147483647i << ((((global0[_wgslsmith_index_u32(arg_2.d, 17u)] ^ u_input.b) | 1u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, 62259u))) % 32u), -_wgslsmith_sub_i32(1i, 68805i));
    var var_4 = ~u_input.a;
    return arg_2.b.b.d.a.x;
}

fn func_1() -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_5(true, ~_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, -5768i, -2147483647i), countOneBits(vec3<i32>(50789i, 5131i, u_input.a))), func_4(func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1149f, 750f, 1049f, 585f), vec4<f32>(-217f, -961f, -268f, -313f))), ~32264i), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1028f, 1407f)), vec2<bool>(true, false), ~u_input.b, false, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -70643i, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))), Struct_4(true, Struct_3(vec4<bool>(true, true, true, true), Struct_2(93073u, u_input.a, vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], u_input.b, 1u), Struct_1(vec2<f32>(443f, 437f), vec2<bool>(true, false), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52175u, 17u)], 17u)], 17u)], 17u)], false, 2147483647i)), 45158i), ~54010u, u_input.b, -vec3<i32>(-15518i, 12444i, -6840i)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1419f, -134f) * vec2<f32>(563f, 1341f)), vec2<bool>(true, true), 4294967295u, any(vec3<bool>(false, true, true)), u_input.a)))), _wgslsmith_f_op_f32(254f + _wgslsmith_f_op_f32(642f + _wgslsmith_f_op_f32(step(func_4(Struct_2(4294967295u, u_input.a, vec3<u32>(35464u, 43640u, 4294967295u), Struct_1(vec2<f32>(-679f, 1000f), vec2<bool>(true, true), 0u, true, u_input.a)), Struct_1(vec2<f32>(-119f, 679f), vec2<bool>(true, true), 1u, true, u_input.a), Struct_4(true, Struct_3(vec4<bool>(false, true, false, true), Struct_2(1u, -1i, vec3<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(0u, 17u)]), Struct_1(vec2<f32>(397f, -778f), vec2<bool>(false, false), 0u, true, u_input.a)), -61995i), 38995u, 1u, vec3<i32>(-1i, -2466i, -33835i)), Struct_1(vec2<f32>(1000f, 1706f), vec2<bool>(true, true), 31162u, false, 0i)).b.b.d.a.x, -215f)))), _wgslsmith_div_f32(-280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-384f, -576f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(func_4(func_4(Struct_2(global0[_wgslsmith_index_u32(4920u, 17u)], -11495i, vec3<u32>(u_input.b, 4294967295u, 77198u), Struct_1(vec2<f32>(-1154f, 1264f), vec2<bool>(false, false), u_input.b, false, 13870i)), Struct_1(vec2<f32>(732f, -993f), vec2<bool>(true, false), 41759u, false, 2147483647i), Struct_4(true, Struct_3(vec4<bool>(true, false, false, true), Struct_2(u_input.b, 42847i, vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30721u, 17u)], 17u)], u_input.b), Struct_1(vec2<f32>(-760f, 1000f), vec2<bool>(false, false), u_input.b, false, -2147483647i)), u_input.a), 1u, 96042u, vec3<i32>(-2147483647i, u_input.a, 2147483647i)), Struct_1(vec2<f32>(539f, 642f), vec2<bool>(true, false), 25227u, true, u_input.a)).b.b, Struct_1(vec2<f32>(109f, -618f), vec2<bool>(false, false), 1u, false, -13387i), Struct_4(false, Struct_3(vec4<bool>(true, true, true, true), Struct_2(0u, 2147483647i, vec3<u32>(global0[_wgslsmith_index_u32(73167u, 17u)], 64105u, 37341u), Struct_1(vec2<f32>(682f, -1114f), vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.b, 17u)], false, 0i)), 0i), 4294967295u, 4294967295u, vec3<i32>(u_input.a, u_input.a, -32964i)), Struct_1(vec2<f32>(936f, -1441f), vec2<bool>(false, true), u_input.b, true, u_input.a)).b.b.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) * _wgslsmith_f_op_f32(select(-2061f, -225f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f) * _wgslsmith_f_op_f32(f32(-1f) * -409f))));
    let var_1 = countOneBits(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 67763u, 5552u), vec3<u32>(u_input.b, u_input.b, u_input.b), abs(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.b, 17u)]))) & vec3<u32>(~global0[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24293u, 17u)], 17u)], 0u, global0[_wgslsmith_index_u32(u_input.b, 17u)])), 1u)));
    let var_2 = ~(~abs(~vec4<u32>(var_1.x, 0u, u_input.b, var_1.x) ^ vec4<u32>(var_1.x, 4294967295u, 57311u, var_1.x)));
    var var_3 = _wgslsmith_f_op_f32(1f * var_0.x);
    let var_4 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-54408i, u_input.a, 2147483647i)) & select(abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), countOneBits(vec3<i32>(48777i, u_input.a, u_input.a)), true), select(vec3<i32>(abs(2147483647i), u_input.a, -u_input.a), vec3<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, -2147483647i)), abs(u_input.a)), false)), _wgslsmith_add_i32(u_input.a, i32(-1i) * -2147483647i) >> (~(~(~global0[_wgslsmith_index_u32(1u, 17u)])) % 32u));
    return ~firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(min(17575u, u_input.b), 17u)] ^ var_2.x, ~global0[_wgslsmith_index_u32(countOneBits(33496u), 17u)], _wgslsmith_mult_u32(19628u, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(u_input.b), _wgslsmith_mod_u32(abs(1446u), (u_input.b | u_input.b) << ((global0[_wgslsmith_index_u32(47242u, 17u)] | 4294967295u) % 32u)), ~(~4294967295u)), select(vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(22912u, 61242u), 17u)], _wgslsmith_clamp_u32(1u, 94014u, 0u), 1u), ~(vec3<u32>(826u, 1u, global0[_wgslsmith_index_u32(u_input.b, 17u)]) & vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], u_input.b)), any(vec3<bool>(true, true, true))) & ((_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 17u)]), vec3<u32>(global0[_wgslsmith_index_u32(0u, 17u)], u_input.b, global0[_wgslsmith_index_u32(10569u, 17u)])) | func_1()) >> (~func_2(vec4<f32>(1629f, 139f, 849f, -1337f), u_input.a).c % vec3<u32>(32u))));
    var_0 = ~firstTrailingBit(func_1());
    var var_1 = abs(abs(~_wgslsmith_div_vec4_u32(~vec4<u32>(15951u, 37870u, var_0.x, 37999u), firstLeadingBit(vec4<u32>(58320u, 0u, 62915u, var_0.x)))));
    var_0 = var_1.zzw;
    let var_2 = 1i << (u_input.b % 32u);
    var var_3 = vec4<bool>(false, !(false && !all(vec2<bool>(true, false))), false & all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, all(vec3<bool>(true, false, false)), true), select(func_4(Struct_2(var_1.x, u_input.a, vec3<u32>(1u, 89443u, 10275u), Struct_1(vec2<f32>(2327f, 999f), vec2<bool>(false, false), var_1.x, true, 0i)), Struct_1(vec2<f32>(1541f, 1536f), vec2<bool>(true, false), 30396u, true, 1i), Struct_4(true, Struct_3(vec4<bool>(true, false, false, true), Struct_2(var_0.x, var_2, vec3<u32>(36888u, 60939u, global0[_wgslsmith_index_u32(40150u, 17u)]), Struct_1(vec2<f32>(-1000f, 1000f), vec2<bool>(false, true), u_input.b, true, 17497i)), 77335i), 0u, 4294967295u, vec3<i32>(-2147483647i, -15274i, var_2)), Struct_1(vec2<f32>(1000f, -452f), vec2<bool>(true, false), 104564u, true, 16782i)).b.a.zzy, select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), false), vec3<bool>(false, true, true))));
    var var_4 = func_4(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, _wgslsmith_f_op_f32(-2161f + -1000f), _wgslsmith_f_op_f32(func_5(var_3.x, vec3<i32>(2147483647i, var_2, var_2), Struct_4(false, Struct_3(vec4<bool>(false, var_3.x, var_3.x, var_3.x), Struct_2(global0[_wgslsmith_index_u32(var_1.x, 17u)], 1i, var_1.wwx, Struct_1(vec2<f32>(-176f, 1000f), var_3.wz, u_input.b, var_3.x, var_2)), u_input.a), global0[_wgslsmith_index_u32(16502u, 17u)], 0u, vec3<i32>(var_2, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(2290f - -381f)))), -var_2), func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, -399f, -1762f, -450f))), u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-847f, 870f), vec2<f32>(118f, 845f))), func_4(func_4(Struct_2(u_input.b, var_2, var_1.xwx, Struct_1(vec2<f32>(-2381f, -1251f), vec2<bool>(false, var_3.x), 110999u, var_3.x, -2147483647i)), Struct_1(vec2<f32>(-200f, 1000f), var_3.zz, 30456u, true, var_2), Struct_4(var_3.x, Struct_3(vec4<bool>(true, var_3.x, true, var_3.x), Struct_2(22182u, -90292i, vec3<u32>(4294967295u, var_0.x, 40134u), Struct_1(vec2<f32>(173f, 1303f), var_3.xx, u_input.b, var_3.x, var_2)), var_2), u_input.b, var_0.x, vec3<i32>(-2147483647i, 1i, 31470i)), Struct_1(vec2<f32>(-131f, 777f), vec2<bool>(var_3.x, false), 99939u, var_3.x, u_input.a)).b.b, Struct_1(vec2<f32>(-1000f, -1000f), var_3.yx, var_1.x, var_3.x, var_2), Struct_4(var_3.x, Struct_3(vec4<bool>(true, true, var_3.x, var_3.x), Struct_2(u_input.b, -1i, vec3<u32>(107986u, 0u, var_0.x), Struct_1(vec2<f32>(1622f, 1791f), var_3.wz, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 17u)], 17u)], false, u_input.a)), 1i), 45128u, global0[_wgslsmith_index_u32(var_1.x, 17u)], vec3<i32>(-70725i, 1i, var_2)), func_2(vec4<f32>(494f, 416f, 575f, 1468f), var_2).d).b.a.yw, 19723u << (var_0.x % 32u), true, (u_input.a >> (4294967295u % 32u)) ^ _wgslsmith_mult_i32(var_2, u_input.a)), Struct_4(all(!vec3<bool>(var_3.x, false, false)), func_4(func_4(Struct_2(var_0.x, u_input.a, var_1.xzz, Struct_1(vec2<f32>(-384f, -775f), var_3.yw, var_1.x, false, var_2)), Struct_1(vec2<f32>(-356f, -751f), var_3.xy, 41617u, true, var_2), Struct_4(var_3.x, Struct_3(vec4<bool>(true, var_3.x, var_3.x, false), Struct_2(4294967295u, var_2, var_1.yzw, Struct_1(vec2<f32>(-1781f, -1648f), var_3.xx, var_0.x, var_3.x, u_input.a)), u_input.a), global0[_wgslsmith_index_u32(var_0.x, 17u)], 4294967295u, vec3<i32>(u_input.a, -1i, u_input.a)), Struct_1(vec2<f32>(124f, -1514f), var_3.zy, 48251u, true, u_input.a)).b.b, func_2(vec4<f32>(-452f, 1706f, 1000f, -737f), 29049i).d, Struct_4(var_3.x, Struct_3(vec4<bool>(false, var_3.x, true, var_3.x), Struct_2(var_1.x, u_input.a, var_1.zxz, Struct_1(vec2<f32>(1000f, -346f), vec2<bool>(var_3.x, false), 1u, var_3.x, var_2)), u_input.a), var_1.x, 1u, vec3<i32>(-7109i, -2147483647i, var_2)), Struct_1(vec2<f32>(1792f, -462f), vec2<bool>(var_3.x, true), 92731u, var_3.x, u_input.a)).b, u_input.b, _wgslsmith_sub_u32(u_input.b << (var_1.x % 32u), _wgslsmith_mult_u32(var_1.x, 0u)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, -8461i, var_2)), func_4(Struct_2(114990u, -2147483647i, var_1.xxz, Struct_1(vec2<f32>(-1000f, 179f), vec2<bool>(false, var_3.x), 0u, true, var_2)), Struct_1(vec2<f32>(-445f, -103f), vec2<bool>(var_3.x, false), global0[_wgslsmith_index_u32(u_input.b, 17u)], var_3.x, 2147483647i), Struct_4(var_3.x, Struct_3(vec4<bool>(true, false, true, false), Struct_2(4002u, -1i, var_1.zwx, Struct_1(vec2<f32>(1293f, -429f), vec2<bool>(false, var_3.x), global0[_wgslsmith_index_u32(1u, 17u)], var_3.x, 0i)), u_input.a), var_0.x, 4294967295u, vec3<i32>(-2316i, var_2, -31484i)), Struct_1(vec2<f32>(-996f, -150f), vec2<bool>(true, var_3.x), var_1.x, var_3.x, var_2)).e)), func_4(Struct_2(0u, ~u_input.a, var_1.ywx, func_2(vec4<f32>(-526f, -849f, 700f, 1158f), 2147483647i).d), Struct_1(vec2<f32>(-606f, -127f), !vec2<bool>(var_3.x, false), global0[_wgslsmith_index_u32(0u, 17u)], all(vec3<bool>(false, var_3.x, true)), _wgslsmith_mod_i32(-1i, u_input.a)), Struct_4(true, func_4(Struct_2(4294967295u, -38973i, var_1.wzy, Struct_1(vec2<f32>(-1182f, 531f), var_3.wx, u_input.b, true, 1i)), Struct_1(vec2<f32>(939f, -1000f), var_3.yz, 4294967295u, var_3.x, 0i), Struct_4(false, Struct_3(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), Struct_2(34020u, var_2, vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(4294967295u, 17u)]), Struct_1(vec2<f32>(1167f, 529f), vec2<bool>(true, var_3.x), u_input.b, var_3.x, u_input.a)), u_input.a), 34078u, var_1.x, vec3<i32>(var_2, 1i, var_2)), Struct_1(vec2<f32>(1000f, -291f), var_3.xy, 2891u, var_3.x, var_2)).b, 4294967295u, ~var_0.x, vec3<i32>(-2932i, u_input.a, -2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-457f, -1064f)), var_3.ww, ~u_input.b, func_4(Struct_2(1u, var_2, var_1.yyw, Struct_1(vec2<f32>(387f, 745f), vec2<bool>(false, var_3.x), 4294967295u, true, 2147483647i)), Struct_1(vec2<f32>(830f, 1766f), vec2<bool>(false, var_3.x), u_input.b, var_3.x, u_input.a), Struct_4(true, Struct_3(vec4<bool>(var_3.x, false, true, true), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 17u)], -11996i, var_1.wxy, Struct_1(vec2<f32>(1000f, 1199f), var_3.zx, global0[_wgslsmith_index_u32(10468u, 17u)], var_3.x, -123005i)), var_2), var_0.x, var_1.x, vec3<i32>(-37994i, 0i, u_input.a)), Struct_1(vec2<f32>(-130f, 1112f), vec2<bool>(var_3.x, var_3.x), var_0.x, var_3.x, u_input.a)).b.a.x, i32(-1i) * -1i)).b.b.d).b.b.d, Struct_4(true, Struct_3(vec4<bool>(false, true, !var_3.x, !var_3.x), Struct_2(45420u, 36182i, func_4(Struct_2(var_1.x, u_input.a, vec3<u32>(1u, 1u, var_0.x), Struct_1(vec2<f32>(506f, 566f), var_3.yx, u_input.b, false, 41553i)), Struct_1(vec2<f32>(-574f, -122f), var_3.yx, 4294967295u, var_3.x, -65035i), Struct_4(var_3.x, Struct_3(vec4<bool>(true, false, var_3.x, true), Struct_2(var_0.x, 36154i, vec3<u32>(99395u, var_1.x, 4294967295u), Struct_1(vec2<f32>(2039f, -508f), vec2<bool>(var_3.x, var_3.x), 10299u, var_3.x, var_2)), 14322i), global0[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u, vec3<i32>(var_2, var_2, u_input.a)), Struct_1(vec2<f32>(-2259f, 1408f), vec2<bool>(true, var_3.x), global0[_wgslsmith_index_u32(u_input.b, 17u)], var_3.x, -27465i)).b.b.c, func_4(Struct_2(var_1.x, 0i, vec3<u32>(var_1.x, 1u, 0u), Struct_1(vec2<f32>(1202f, -557f), vec2<bool>(var_3.x, false), u_input.b, var_3.x, u_input.a)), Struct_1(vec2<f32>(-1000f, -680f), var_3.xz, 49980u, true, 0i), Struct_4(false, Struct_3(vec4<bool>(var_3.x, true, var_3.x, var_3.x), Struct_2(u_input.b, u_input.a, var_1.wyz, Struct_1(vec2<f32>(754f, 366f), var_3.yz, 0u, false, u_input.a)), u_input.a), 4294967295u, 50859u, vec3<i32>(-18924i, var_2, u_input.a)), Struct_1(vec2<f32>(-1374f, -1074f), vec2<bool>(var_3.x, false), var_0.x, true, var_2)).b.b.d), firstLeadingBit(select(u_input.a, 23367i, var_3.x))), 3086u, global0[_wgslsmith_index_u32(4294967295u, 17u)], abs(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_2, u_input.a, -11491i)), -vec3<i32>(var_2, 2147483647i, var_2), select(vec3<i32>(u_input.a, 0i, 1i), vec3<i32>(0i, var_2, u_input.a), false)))), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1760f, -1762f), vec2<f32>(1000f, 1601f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(253f, 1000f), vec2<f32>(-351f, 290f))) + _wgslsmith_div_vec2_f32(vec2<f32>(564f, 658f), vec2<f32>(828f, -670f))))), var_3.zw, u_input.b, (var_3.x & true) && true, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, -1000f, -576f)), Struct_5(var_3.zwz, Struct_4(false, Struct_3(vec4<bool>(var_3.x, var_3.x, false, var_3.x), Struct_2(var_0.x, 0i, vec3<u32>(33959u, var_1.x, 12913u), Struct_1(vec2<f32>(-1035f, 356f), var_3.zw, global0[_wgslsmith_index_u32(var_1.x, 17u)], var_3.x, -2147483647i)), -7022i), 0u, 0u, vec3<i32>(u_input.a, u_input.a, var_2)), vec4<u32>(31437u, u_input.b, 1u, 1u)), Struct_5(vec3<bool>(true, false, var_3.x), Struct_4(true, Struct_3(vec4<bool>(false, true, var_3.x, var_3.x), Struct_2(1918u, -16231i, var_1.wzz, Struct_1(vec2<f32>(-278f, 2634f), vec2<bool>(var_3.x, var_3.x), 1u, var_3.x, 5100i)), u_input.a), var_0.x, 28299u, vec3<i32>(u_input.a, 2147483647i, 4225i)), vec4<u32>(var_0.x, 73939u, global0[_wgslsmith_index_u32(29740u, 17u)], 72958u)), func_4(Struct_2(var_1.x, u_input.a, vec3<u32>(var_0.x, 1u, 1u), Struct_1(vec2<f32>(671f, 946f), var_3.xw, 36740u, false, -1i)), Struct_1(vec2<f32>(1427f, -2382f), vec2<bool>(false, true), var_0.x, var_3.x, -1i), Struct_4(var_3.x, Struct_3(vec4<bool>(var_3.x, var_3.x, false, var_3.x), Struct_2(11568u, var_2, vec3<u32>(0u, 0u, 14721u), Struct_1(vec2<f32>(-369f, 361f), var_3.ww, var_0.x, var_3.x, 16221i)), u_input.a), var_1.x, 0u, vec3<i32>(var_2, -1i, var_2)), Struct_1(vec2<f32>(929f, 713f), vec2<bool>(var_3.x, var_3.x), 0u, true, var_2)).b.a.xx) & max(_wgslsmith_div_i32(var_2, u_input.a), u_input.a & 4127i)));
    let var_5 = _wgslsmith_div_f32(879f, var_4.b.b.d.a.x);
    var_4 = func_4(Struct_2(var_4.c ^ _wgslsmith_add_u32(_wgslsmith_mod_u32(var_4.d, 1575u), 0u), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.b.d.a.x, -1899f, var_5, var_4.b.b.d.a.x))), ~var_2).d.e, ~(~vec3<u32>(55509u, 4294967295u, 2318u)), var_4.b.b.d), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-515f, -1232f, var_4.b.b.d.a.x, -579f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-635f, -1212f, var_4.b.b.d.a.x, 1765f) * vec4<f32>(474f, -436f, var_5, -818f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_5, -1396f, var_4.b.b.d.a.x, var_5)))), -_wgslsmith_clamp_i32(firstTrailingBit(u_input.a), 26013i, u_input.a)).d, func_4(var_4.b.b, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_4.b.b.d.a))), !(!var_3.wx), countOneBits(var_4.c) & ~var_4.d, true, ~(-var_4.e.x)), Struct_4(!select(false, var_4.b.b.d.d, false), Struct_3(!var_4.b.a, func_4(Struct_2(var_1.x, -31757i, var_4.b.b.c, Struct_1(vec2<f32>(var_5, var_4.b.b.d.a.x), vec2<bool>(false, var_4.a), 9222u, false, 0i)), var_4.b.b.d, Struct_4(false, var_4.b, 1u, global0[_wgslsmith_index_u32(34725u, 17u)], var_4.e), Struct_1(vec2<f32>(-576f, -1581f), vec2<bool>(var_4.b.a.x, false), 36964u, false, -2147483647i)).b.b, var_4.b.c), ~func_1().x, ~firstTrailingBit(var_1.x), -(~vec3<i32>(u_input.a, var_2, var_4.e.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_4.b.b.d.a, vec2<f32>(1090f, 917f))), !(!vec2<bool>(var_3.x, false)), 4294967295u | var_1.x, true, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.b.d.a.x, var_4.b.b.d.a.x, 724f)), Struct_5(var_3.wzz, Struct_4(true, var_4.b, global0[_wgslsmith_index_u32(var_0.x, 17u)], 4294967295u, var_4.e), vec4<u32>(74127u, var_1.x, u_input.b, 1u)), Struct_5(vec3<bool>(true, false, false), Struct_4(false, var_4.b, 4294967295u, var_0.x, vec3<i32>(var_2, var_2, var_2)), vec4<u32>(global0[_wgslsmith_index_u32(1u, 17u)], var_4.c, 4294967295u, 75233u)), select(vec2<bool>(false, true), var_4.b.b.d.b, false)))), func_2(vec4<f32>(-797f, var_4.b.b.d.a.x, var_4.b.b.d.a.x, var_4.b.b.d.a.x), var_4.b.b.b ^ _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, u_input.a), 5436i)).d);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(970f, var_5, var_4.b.b.d.a.x, var_4.b.b.d.a.x) * vec4<f32>(var_4.b.b.d.a.x, -1783f, var_5, var_4.b.b.d.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_5, -1011f, -1000f))), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2, u_input.a, -2147483647i, -2147483647i), vec4<i32>(0i, 2147483647i, u_input.a, -2147483647i))).d.e, vec2<u32>(~var_4.d, ~50597u));
}

