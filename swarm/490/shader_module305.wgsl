struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(33600u, 0i, vec4<i32>(2147483647i, 45420i, -36446i, 0i), true, vec4<u32>(1u, 1u, 39398u, 4294967295u));

var<private> global1: Struct_1;

var<private> global2: vec2<u32> = vec2<u32>(6030u, 5583u);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_1(~firstTrailingBit(~countOneBits(global0.e.x)), 0i, min(vec4<i32>(-31174i, _wgslsmith_add_i32(-57953i, arg_0.c.x), max(firstLeadingBit(0i), global3.b), ~1i), -(~reverseBits(vec4<i32>(global0.b, 1i, global1.b, 1i)))), select(global1.d, firstTrailingBit(_wgslsmith_mod_u32(26570u, 12726u)) >= _wgslsmith_dot_vec3_u32(vec3<u32>(global1.e.x, global3.e.x, global3.e.x), select(global3.e.zxx, global0.e.zyz, false)), !select(!global1.d, arg_1.x, global0.d)), arg_0.e);
    var var_1 = reverseBits(vec2<u32>(~1u, max(0u, ~(~var_0.e.x))));
    var var_2 = all(!(!vec3<bool>(arg_1.x, true, global3.d))) != ((_wgslsmith_mod_u32(22208u, global3.a) >> (2603u % 32u)) > ~arg_0.a);
    var var_3 = reverseBits(_wgslsmith_div_i32(~firstTrailingBit(-2147483647i), _wgslsmith_div_i32(global1.b, arg_0.b)) & ~global1.c.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(707f * _wgslsmith_f_op_f32(ceil(1f))));
    return var_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = arg_2;
    let var_3 = Struct_1(0u, var_1.b, ~countOneBits(-(~arg_0.c)), any(vec3<bool>(0u < _wgslsmith_div_u32(var_0.e.x, 0u), !global1.d, global3.d)), select(vec4<u32>(~93023u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global3.a, global3.a, arg_1.a), func_3(arg_0, vec2<bool>(true, true))), arg_1.a, global3.a), ~_wgslsmith_mult_vec4_u32(~global1.e, var_0.e), !var_1.d));
    var_1 = var_3;
    return global3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    global3 = arg_1;
    global2 = ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.e.x, global3.a), countOneBits(vec2<u32>(1u, 58952u))));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(625f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1161f * 202f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-410f)))))) + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1f)))), 545f));
    global2 = _wgslsmith_clamp_vec2_u32(~abs(firstLeadingBit(~arg_0.e.yx)), vec2<u32>(0u, global0.e.x), arg_1.e.zx);
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(global3.e.x << (1u % 32u)), _wgslsmith_add_u32(1u, arg_3.x | (arg_0.a | 1u)), 1u, global3.e.x), vec4<u32>(min(25045u, global3.e.x) & firstTrailingBit(arg_2.e.x), firstTrailingBit(4294967295u), func_3(arg_0, vec2<bool>(false, arg_0.d)), _wgslsmith_mod_u32(global1.a, 68354u) >> (func_2(Struct_1(60069u, -2147483647i, global0.c, global0.d, vec4<u32>(45284u, 4294967295u, 29550u, 0u)), arg_1, var_0.x) % 32u)) << ((firstLeadingBit(_wgslsmith_sub_vec4_u32(arg_0.e, global0.e)) | ~(vec4<u32>(arg_3.x, 78080u, arg_2.e.x, global1.e.x) | vec4<u32>(arg_0.a, global3.e.x, 4294967295u, 0u))) % vec4<u32>(32u)));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = ~(~arg_3.e.x);
    var var_1 = _wgslsmith_clamp_i32(-(~17213i), -countOneBits(~_wgslsmith_add_i32(u_input.b.x, 20186i)), 20320i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-696f - _wgslsmith_f_op_f32(-221f + _wgslsmith_f_op_f32(-1581f + _wgslsmith_div_f32(-599f, -1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(522f, 626f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f + 859f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1116f, 497f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(728f)))));
    var var_3 = Struct_1(10919u, -2147483647i, vec4<i32>(-abs(global0.c.x), _wgslsmith_div_i32(~abs(global0.b), -u_input.a), -1i, abs(-2147483647i)), arg_0.d, countOneBits(_wgslsmith_sub_vec4_u32(func_4(func_4(Struct_1(arg_0.a, 1i, arg_0.c, arg_2, vec4<u32>(1u, 42662u, arg_3.a, 11046u)), arg_3, Struct_1(arg_1.e.x, u_input.a, global0.c, true, global3.e), arg_0.e.yy), arg_3, arg_1, vec2<u32>(global1.e.x, global1.e.x)).e, arg_0.e)));
    global3 = arg_0;
    return select(select(select(select(vec3<bool>(false, global0.d, true), vec3<bool>(true, true, arg_2), select(arg_3.d, true, arg_0.d)), vec3<bool>(true, all(vec4<bool>(arg_3.d, true, arg_0.d, var_3.d)), false), true), vec3<bool>(arg_2, all(!vec4<bool>(global1.d, false, false, true)), global3.d), all(vec4<bool>(true, true, true, true)) == global3.d), vec3<bool>(true, var_3.a != 45741u, !(!all(vec2<bool>(true, global1.d)))), global1.d);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec4_i32(~u_input.b, global1.c) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(0u ^ global1.a, global2.x), ~0u) % 32u);
    var var_1 = func_5(func_4(Struct_1(~_wgslsmith_dot_vec3_u32(global1.e.xyw, vec3<u32>(4294967295u, global3.e.x, 1u)), 2147483647i, global0.c, false, vec4<u32>(global1.e.x, func_2(Struct_1(global3.e.x, global0.b, vec4<i32>(global1.b, -2147483647i, global1.b, 0i), true, vec4<u32>(global1.a, 26052u, global2.x, 0u)), Struct_1(global1.e.x, arg_0.x, vec4<i32>(37441i, -1i, var_0, -43760i), false, vec4<u32>(25382u, 15866u, global3.e.x, 73045u)), -1533f), ~global2.x, _wgslsmith_clamp_u32(20543u, 4159u, 4294967295u))), Struct_1(global0.e.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -29815i, var_0), global0.c.yxz)), vec4<i32>(arg_0.x & 27059i, ~global1.c.x, global0.b, -1i << (global1.e.x % 32u)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(global0.d, global1.d))), vec4<u32>(_wgslsmith_dot_vec2_u32(global3.e.wx, global0.e.yy), 2228u, global1.e.x, abs(global3.e.x))), Struct_1(38369u, i32(-1i) * -17712i, -vec4<i32>(-6143i, global0.c.x, var_0, u_input.a), global0.d, vec4<u32>(~1u, global2.x ^ global1.a, global2.x, global2.x)), select(vec2<u32>(0u, 1u) << (vec2<u32>(global1.e.x, global3.e.x) % vec2<u32>(32u)), vec2<u32>(func_2(Struct_1(2482u, 1653i, global0.c, false, vec4<u32>(global1.a, 1u, 55952u, global3.a)), Struct_1(62845u, 1i, vec4<i32>(0i, -2147483647i, -10671i, global1.b), global3.d, vec4<u32>(42903u, global0.e.x, 4294967295u, global3.a)), 165f), 102150u), global3.d)), func_4(func_4(func_4(Struct_1(global1.e.x, global3.b, vec4<i32>(1i, u_input.a, arg_0.x, global3.b), false, vec4<u32>(1u, 0u, global2.x, global1.a)), func_4(Struct_1(27452u, u_input.a, vec4<i32>(global0.c.x, global0.c.x, u_input.a, u_input.b.x), true, global0.e), Struct_1(49844u, global1.b, u_input.b, true, vec4<u32>(global3.e.x, 4294967295u, global0.e.x, global3.e.x)), Struct_1(1u, global0.c.x, global3.c, global0.d, global0.e), vec2<u32>(global1.a, global0.e.x)), func_4(Struct_1(82371u, 0i, vec4<i32>(u_input.b.x, global1.c.x, 13127i, var_0), false, vec4<u32>(19478u, 73887u, global2.x, 6139u)), Struct_1(11658u, global0.c.x, vec4<i32>(2147483647i, global0.b, 68001i, global0.c.x), true, vec4<u32>(0u, global0.e.x, 34585u, global2.x)), Struct_1(global3.e.x, global3.c.x, vec4<i32>(global0.b, global0.c.x, var_0, global1.c.x), global0.d, global3.e), global0.e.yw), firstLeadingBit(global1.e.xw)), Struct_1(1u, -42140i, vec4<i32>(arg_0.x, global3.b, u_input.a, arg_0.x), true, ~global3.e), func_4(func_4(Struct_1(global0.e.x, global3.b, global3.c, global3.d, global0.e), Struct_1(10437u, u_input.b.x, vec4<i32>(global1.c.x, -2420i, 1i, arg_0.x), false, global1.e), Struct_1(4294967295u, global3.b, u_input.b, true, global1.e), vec2<u32>(global1.a, global1.e.x)), func_4(Struct_1(72100u, global1.c.x, vec4<i32>(-22259i, 26869i, 0i, global0.c.x), false, vec4<u32>(4294967295u, 85934u, 0u, 0u)), Struct_1(4294967295u, global3.c.x, vec4<i32>(1i, global0.b, u_input.b.x, var_0), global3.d, global0.e), Struct_1(global0.a, -2147483647i, u_input.b, false, global0.e), vec2<u32>(15074u, 25817u)), func_4(Struct_1(4294967295u, global0.b, vec4<i32>(8161i, -1i, global1.c.x, arg_0.x), false, global1.e), Struct_1(global3.e.x, global0.c.x, vec4<i32>(u_input.a, -1i, -18952i, 0i), global3.d, global3.e), Struct_1(global0.e.x, -2147483647i, global0.c, global3.d, global0.e), global1.e.wx), vec2<u32>(5922u, global2.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(47241u, 1u), select(vec2<u32>(1u, 0u), vec2<u32>(global2.x, 22629u), vec2<bool>(true, global0.d)))), Struct_1(abs(global0.e.x) | global2.x, global3.c.x, global1.c, !all(vec4<bool>(global1.d, global1.d, global3.d, false)), ~select(global1.e, vec4<u32>(59221u, 54329u, 4294967295u, 1u), vec4<bool>(global1.d, global0.d, global1.d, global1.d))), Struct_1(~_wgslsmith_mult_u32(global0.e.x, global2.x), -39781i, -global1.c & _wgslsmith_clamp_vec4_i32(global3.c, vec4<i32>(global3.c.x, u_input.a, global1.b, u_input.b.x), global1.c), global0.d, ~global1.e), _wgslsmith_div_vec2_u32(~(~vec2<u32>(39231u, global3.e.x)), vec2<u32>(global1.e.x, ~16136u))), false && (~(global0.a | global0.a) < ~(19242u ^ global1.a)), func_4(func_4(func_4(func_4(Struct_1(1u, u_input.b.x, global3.c, global0.d, vec4<u32>(42263u, global3.a, 56650u, global0.e.x)), Struct_1(1u, 2147483647i, vec4<i32>(15986i, var_0, arg_0.x, -28388i), global0.d, vec4<u32>(global2.x, global3.e.x, 17203u, 4294967295u)), Struct_1(global3.e.x, -29244i, global0.c, true, vec4<u32>(global0.a, global0.a, global0.a, 4294967295u)), global3.e.xx), Struct_1(4637u, arg_0.x, global1.c, global3.d, global3.e), Struct_1(0u, -1i, global3.c, global3.d, vec4<u32>(global3.e.x, global0.e.x, global3.a, 53814u)), vec2<u32>(global2.x, 95205u) >> (vec2<u32>(global3.e.x, 17348u) % vec2<u32>(32u))), func_4(Struct_1(1960u, var_0, vec4<i32>(-30750i, 2147483647i, 69149i, u_input.a), global1.d, global1.e), Struct_1(global2.x, 0i, global3.c, global1.d, vec4<u32>(global0.a, 1u, 0u, 5578u)), Struct_1(global1.a, 2147483647i, vec4<i32>(u_input.a, 2147483647i, var_0, global1.b), global1.d, global1.e), _wgslsmith_sub_vec2_u32(global0.e.xz, vec2<u32>(43020u, 91451u))), func_4(func_4(Struct_1(global2.x, 50445i, vec4<i32>(global1.b, -2147483647i, global0.b, var_0), false, global3.e), Struct_1(2730u, 1i, vec4<i32>(u_input.a, 0i, -20142i, var_0), global0.d, global0.e), Struct_1(global2.x, global0.c.x, global0.c, false, global3.e), vec2<u32>(global1.e.x, global2.x)), Struct_1(global1.e.x, arg_0.x, global3.c, global0.d, vec4<u32>(global0.e.x, 0u, 6337u, global3.a)), Struct_1(0u, -2147483647i, u_input.b, true, vec4<u32>(global2.x, 4294967295u, global2.x, global0.a)), global3.e.xz), ~(~global0.e.wx)), func_4(func_4(func_4(Struct_1(global0.a, 16382i, vec4<i32>(13951i, 0i, 1i, -13824i), global0.d, vec4<u32>(global2.x, global1.a, global3.e.x, 38874u)), Struct_1(global1.a, global0.b, global3.c, global1.d, global3.e), Struct_1(532u, -20i, global0.c, true, global1.e), global0.e.wx), Struct_1(15686u, u_input.b.x, vec4<i32>(u_input.a, u_input.a, -2147483647i, 1i), global1.d, global1.e), Struct_1(0u, -2147483647i, global1.c, global3.d, global0.e), global3.e.zw), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(38564u, global0.e.x, 53212u), vec3<u32>(1u, 0u, 0u)), -global1.b, max(global1.c, vec4<i32>(arg_0.x, global3.c.x, arg_0.x, 27690i)), true, ~global3.e), func_4(func_4(Struct_1(1u, var_0, global1.c, global3.d, vec4<u32>(61754u, 4294967295u, global3.a, 68924u)), Struct_1(32245u, -25406i, global1.c, false, vec4<u32>(80198u, global1.a, 4026u, 23082u)), Struct_1(global3.a, global1.b, vec4<i32>(global3.c.x, global0.c.x, -35421i, var_0), true, vec4<u32>(global2.x, global3.e.x, 24741u, 1u)), global1.e.wy), func_4(Struct_1(25100u, -59813i, u_input.b, global1.d, vec4<u32>(35304u, global2.x, global0.a, global3.a)), Struct_1(global0.a, 2147483647i, global0.c, false, vec4<u32>(global2.x, 4294967295u, 56397u, global0.a)), Struct_1(global1.a, 1i, global1.c, global3.d, global0.e), global0.e.ww), Struct_1(global2.x, global3.b, u_input.b, true, global0.e), global1.e.zy), ~_wgslsmith_clamp_vec2_u32(global0.e.zx, global3.e.wx, global3.e.xz)), func_4(Struct_1(global1.a & 1u, -47808i, u_input.b, !global3.d, ~vec4<u32>(global1.e.x, 45411u, global0.e.x, 4294967295u)), Struct_1(4294967295u, i32(-1i) * -1i, vec4<i32>(-2147483647i, 13967i, -41928i, -2147483647i) | global0.c, all(vec3<bool>(false, global0.d, global0.d)), _wgslsmith_sub_vec4_u32(global3.e, vec4<u32>(global3.a, 77531u, global0.e.x, global3.e.x))), Struct_1(_wgslsmith_div_u32(global0.a, 62834u), _wgslsmith_sub_i32(-1i, global3.c.x), global0.c >> (vec4<u32>(global1.e.x, 4752u, global3.a, 4294967295u) % vec4<u32>(32u)), true, global1.e | vec4<u32>(global0.a, global1.a, global1.e.x, global2.x)), ~(global0.e.xz >> (vec2<u32>(global3.a, 1u) % vec2<u32>(32u)))), ~vec2<u32>(62238u, global0.e.x)));
    let var_2 = func_4(Struct_1(1u, select(global3.c.x ^ reverseBits(arg_0.x), ~1i, all(var_1.zz) && true), vec4<i32>(0i, global1.b, global3.c.x, i32(-1i) * -13172i), true, max(global1.e << (firstTrailingBit(global0.e) % vec4<u32>(32u)), global1.e)), func_4(Struct_1(4294967295u, var_0, min(_wgslsmith_mult_vec4_i32(global1.c, global1.c), _wgslsmith_mult_vec4_i32(u_input.b, global1.c)), all(!vec3<bool>(var_1.x, true, false)), vec4<u32>(~65915u, _wgslsmith_dot_vec4_u32(global0.e, vec4<u32>(1u, 1u, global1.a, 18101u)), 1u, global0.a)), func_4(Struct_1(~global1.e.x, global3.c.x, select(vec4<i32>(2147483647i, -2147483647i, var_0, arg_0.x), global0.c, vec4<bool>(global0.d, true, global3.d, global3.d)), !var_1.x, global0.e ^ global0.e), Struct_1(~global3.e.x, 38461i, vec4<i32>(global3.c.x, global1.b, var_0, 0i), true, _wgslsmith_sub_vec4_u32(global1.e, vec4<u32>(31037u, 4294967295u, 12561u, global2.x))), func_4(func_4(Struct_1(25442u, global1.b, vec4<i32>(1i, 10174i, 33462i, 1i), global1.d, vec4<u32>(global1.a, global3.e.x, global0.a, global1.e.x)), Struct_1(global2.x, global1.b, global1.c, global0.d, vec4<u32>(global0.e.x, 0u, 43461u, global0.e.x)), Struct_1(global1.a, -15090i, vec4<i32>(-2147483647i, global0.c.x, global3.b, arg_0.x), false, global1.e), global1.e.yz), Struct_1(global1.e.x, global3.c.x, vec4<i32>(1430i, global3.b, global3.c.x, global1.c.x), true, global1.e), Struct_1(71248u, 0i, vec4<i32>(global1.b, 1i, arg_0.x, -34546i), false, global3.e), vec2<u32>(global3.e.x, 21186u) << (vec2<u32>(global0.e.x, 74818u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~global0.e.ww, global0.e.yw)), Struct_1(67527u, abs(~var_0), global3.c, true, _wgslsmith_sub_vec4_u32(firstLeadingBit(global3.e), global0.e)), _wgslsmith_clamp_vec2_u32(abs(global1.e.wy), vec2<u32>(global3.e.x, ~4294967295u), vec2<u32>(4294967295u, firstTrailingBit(global1.e.x)))), func_4(func_4(func_4(Struct_1(global0.e.x, u_input.a, vec4<i32>(var_0, u_input.a, 17732i, 0i), true, vec4<u32>(1u, 37877u, 32536u, global1.e.x)), func_4(Struct_1(global0.e.x, arg_0.x, u_input.b, var_1.x, global0.e), Struct_1(global2.x, -4420i, vec4<i32>(1i, global0.c.x, var_0, var_0), global3.d, global0.e), Struct_1(global1.e.x, 2147483647i, global1.c, true, vec4<u32>(global2.x, 4294967295u, global3.a, 4294967295u)), vec2<u32>(4294967295u, 0u)), Struct_1(11852u, arg_0.x, global0.c, true, global1.e), select(global3.e.zx, global0.e.yz, global1.d)), func_4(Struct_1(0u, u_input.a, vec4<i32>(global1.c.x, global3.b, global0.c.x, u_input.b.x), global0.d, global3.e), func_4(Struct_1(global0.a, u_input.b.x, vec4<i32>(arg_0.x, var_0, global1.c.x, 9250i), false, vec4<u32>(global2.x, 0u, 0u, 104717u)), Struct_1(global1.e.x, global3.c.x, vec4<i32>(2147483647i, arg_0.x, global3.c.x, 19988i), global1.d, global0.e), Struct_1(0u, u_input.b.x, vec4<i32>(u_input.a, global0.c.x, global1.c.x, 0i), true, vec4<u32>(global1.e.x, global3.e.x, global2.x, global0.a)), vec2<u32>(global2.x, global0.e.x)), func_4(Struct_1(4294967295u, global1.b, u_input.b, false, global1.e), Struct_1(global3.a, var_0, vec4<i32>(global1.b, var_0, -2147483647i, u_input.b.x), true, global3.e), Struct_1(0u, global1.b, u_input.b, global0.d, vec4<u32>(global2.x, global1.e.x, global0.e.x, global2.x)), vec2<u32>(1u, 1u)), select(vec2<u32>(0u, 29817u), vec2<u32>(1u, global1.a), true)), func_4(Struct_1(global0.e.x, -8732i, vec4<i32>(var_0, arg_0.x, 1i, 1i), global3.d, vec4<u32>(global2.x, global3.a, global2.x, global1.e.x)), Struct_1(29876u, -1i, vec4<i32>(global0.b, var_0, 18126i, global3.b), var_1.x, vec4<u32>(global3.a, 0u, global1.a, global1.e.x)), func_4(Struct_1(global1.e.x, 1i, vec4<i32>(-18077i, 30439i, var_0, global0.b), true, vec4<u32>(global2.x, 6808u, 16638u, global1.a)), Struct_1(4294967295u, global3.c.x, global1.c, false, global0.e), Struct_1(global3.e.x, 23048i, u_input.b, false, vec4<u32>(0u, 29110u, global2.x, 1u)), vec2<u32>(global1.e.x, global2.x)), vec2<u32>(global3.a, global2.x)), vec2<u32>(global1.e.x, 69829u)), func_4(func_4(func_4(Struct_1(global0.e.x, 24916i, vec4<i32>(global0.c.x, 9340i, -1i, global0.b), true, vec4<u32>(4294967295u, 1u, 4294967295u, global2.x)), Struct_1(global1.a, -2147483647i, vec4<i32>(53235i, global0.c.x, 6875i, -35050i), global3.d, vec4<u32>(global3.e.x, global0.a, global2.x, 0u)), Struct_1(global2.x, 0i, vec4<i32>(0i, global1.b, 2856i, global0.b), global3.d, vec4<u32>(global0.a, global2.x, global0.e.x, global2.x)), global1.e.yy), Struct_1(4294967295u, 2147483647i, global1.c, var_1.x, vec4<u32>(global2.x, global2.x, global0.a, global1.e.x)), func_4(Struct_1(4294967295u, global1.c.x, vec4<i32>(global3.c.x, arg_0.x, global3.c.x, global0.b), true, global1.e), Struct_1(1u, global1.b, vec4<i32>(global3.c.x, -34951i, -22070i, global3.c.x), var_1.x, vec4<u32>(global1.a, global3.a, 55299u, 19661u)), Struct_1(21779u, global1.c.x, global1.c, var_1.x, vec4<u32>(global3.a, global3.e.x, 36730u, 39468u)), global0.e.zz), global3.e.xy), Struct_1(_wgslsmith_div_u32(4294967295u, 35569u), -62899i, ~vec4<i32>(-2147483647i, -1i, -2147483647i, arg_0.x), true, vec4<u32>(0u, 4294967295u, global3.a, global3.e.x)), func_4(Struct_1(global1.a, 1i, vec4<i32>(0i, 36647i, 16701i, -38182i), global0.d, global3.e), func_4(Struct_1(4294967295u, -1i, vec4<i32>(-58156i, global1.b, global3.c.x, 7343i), false, global1.e), Struct_1(1u, -1i, vec4<i32>(global1.b, 1i, -2147483647i, global0.b), var_1.x, vec4<u32>(global3.a, 8416u, 16691u, 0u)), Struct_1(1u, -11234i, global0.c, true, vec4<u32>(global0.a, 0u, global0.e.x, 20983u)), vec2<u32>(global0.e.x, 34507u)), func_4(Struct_1(9220u, var_0, global0.c, false, vec4<u32>(global0.e.x, global2.x, 4294967295u, 0u)), Struct_1(57251u, var_0, global1.c, global1.d, global0.e), Struct_1(global2.x, 20875i, global1.c, global1.d, vec4<u32>(global3.e.x, 18678u, 36769u, 0u)), vec2<u32>(global2.x, global1.e.x)), global3.e.yy ^ global1.e.yy), global3.e.xz), Struct_1(max(17150u, global3.a), i32(-1i) * -var_0, vec4<i32>(arg_0.x, reverseBits(var_0), ~7133i, select(arg_0.x, u_input.a, true)), all(vec2<bool>(var_1.x, true)), global0.e), global1.e.ww), ~countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(global3.e.wxx, global0.e.wyw), ~0u)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, global1.b, _wgslsmith_dot_vec4_i32(global1.c, ~vec4<i32>(u_input.b.x, -78759i, u_input.b.x, 3759i))), ~(-select(u_input.b.x, 0i, false))));
    let var_1 = Struct_1(~33671u, ~(-1i), global1.c, global3.d, global3.e);
    let var_2 = ~var_0.e.yw;
    var var_3 = global1.c.x;
    var var_4 = Struct_1(~_wgslsmith_sub_u32(global1.a, 0u), _wgslsmith_div_i32(0i, select(~func_4(var_0, var_0, Struct_1(global2.x, -16364i, global3.c, true, var_0.e), global1.e.zy).c.x, ~abs(2147483647i), var_1.d)), reverseBits(firstTrailingBit(u_input.b) >> (select(vec4<u32>(4294967295u, global3.a, var_1.a, 13035u), _wgslsmith_clamp_vec4_u32(global0.e, vec4<u32>(4294967295u, 0u, var_1.e.x, var_1.a), var_1.e), func_4(Struct_1(global0.a, 42777i, var_0.c, true, vec4<u32>(global0.e.x, global0.a, var_2.x, 9297u)), Struct_1(1u, var_0.c.x, vec4<i32>(4949i, var_1.b, global3.c.x, 2147483647i), var_0.d, var_0.e), Struct_1(var_2.x, -37582i, var_0.c, var_0.d, global0.e), vec2<u32>(4294967295u, 50556u)).d) % vec4<u32>(32u))), !(!var_0.d), abs(vec4<u32>(_wgslsmith_clamp_u32(~var_0.a, global2.x << (138938u % 32u), _wgslsmith_dot_vec2_u32(global1.e.xz, vec2<u32>(global2.x, global3.e.x))), ~10613u, ~max(46888u, 126998u), ~(~global1.a))));
    var var_5 = vec4<i32>(36026i, -1i, 2147483647i, global1.c.x);
    global0 = func_1(vec2<i32>(_wgslsmith_dot_vec2_i32(-(~global3.c.ww), vec2<i32>(-2147483647i, -1i ^ var_1.c.x)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-28529i, u_input.a, var_1.b), 12890i)));
    let var_6 = Struct_1(4294967295u, ~(-_wgslsmith_dot_vec3_i32(countOneBits(var_1.c.yzy), vec3<i32>(var_4.c.x, 2147483647i, 2147483647i))), vec4<i32>(-min(1i, u_input.a >> (var_1.e.x % 32u)), 2147483647i, func_1(countOneBits(vec2<i32>(-2147483647i, var_0.b) & var_5.zy)).c.x, -1i), false, var_4.e);
    let var_7 = func_4(Struct_1(33847u, countOneBits(1i), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(35590i, var_5.x, -24574i, 6267i), vec4<i32>(var_1.c.x, -2147483647i, var_4.b, global3.b), abs(vec4<i32>(-1i, global1.b, -1i, 7978i))), vec4<i32>(countOneBits(0i), ~global0.b, global0.b, global0.b)), !all(select(vec2<bool>(false, true), vec2<bool>(var_6.d, global0.d), vec2<bool>(false, false))), ~reverseBits(~global3.e)), var_0, func_4(func_4(func_4(Struct_1(27034u, global0.c.x, vec4<i32>(var_0.c.x, var_6.b, global3.b, -23323i), var_1.d, global0.e), Struct_1(0u, var_6.b, vec4<i32>(var_5.x, var_4.c.x, -43723i, var_4.b), true, var_1.e), var_0, abs(vec2<u32>(29939u, var_1.a))), var_0, func_1(vec2<i32>(var_4.c.x, global3.b)), func_4(var_6, Struct_1(global0.e.x, global0.c.x, vec4<i32>(-2706i, 2147483647i, global1.c.x, -1i), false, global1.e), var_0, vec2<u32>(var_1.e.x, global3.a)).e.xy), var_6, func_1(max(global1.c.xz | vec2<i32>(var_0.c.x, -1i), var_0.c.zy)), vec2<u32>(~(~global0.a), 1u)), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1059f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1291f + -2062f) * 380f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(387f, 1050f, -1286f, -1278f), vec4<f32>(-2723f, 742f, -291f, 2957f))))));
}

