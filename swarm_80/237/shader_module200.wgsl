struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(24386u, 1u, 0u, 49132u, 20802u, 1u, 1u, 34797u, 1u, 18127u, 125974u, 863u, 0u, 4294967295u, 0u, 1u, 4294967295u, 24297u, 39378u, 30815u, 73718u, 1u, 1u, 1u, 47755u, 41266u, 0u, 0u, 27884u, 0u, 33070u);

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: array<bool, 26> = array<bool, 26>(true, true, true, false, true, true, false, true, true, false, true, true, true, true, true, false, true, false, false, false, true, false, true, false, false, false);

var<private> global4: array<u32, 11> = array<u32, 11>(1u, 1u, 26302u, 54738u, 1u, 4294967295u, 4294967295u, 4514u, 0u, 0u, 1u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = 1133f;
    var var_1 = _wgslsmith_mult_i32(1i, u_input.a.x);
    global0 = array<u32, 31>();
    let var_2 = arg_0;
    global2 = arg_1.x;
    return arg_0.a;
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-459f, 493f, -668f, -1437f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-477f, 1609f, 378f, 858f), vec4<f32>(-625f, -1615f, 387f, 734f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1794f, 411f), 920f, _wgslsmith_f_op_f32(trunc(619f)), _wgslsmith_f_op_f32(f32(-1f) * -190f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-753f, -1227f, -816f, 296f))))));
    let var_1 = -1i;
    let var_2 = Struct_3(func_1(Struct_3(func_1(Struct_3(Struct_1(var_0.xxx, var_1, vec2<u32>(7284u, 0u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, 503f, 554f))), Struct_2(Struct_1(var_0.xyw, u_input.a.x, vec2<u32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(22889u, 11u)], 31u)], 11u)], 31u)], 31u)], 31u)], 31u)], 11u)], 0u)), Struct_1(var_0.yxw, var_1, vec2<u32>(19950u, 1u)), global3[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 31u)], Struct_1(vec3<f32>(1942f, -1056f, var_0.x), u_input.a.x, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 0u))))), vec4<f32>(_wgslsmith_f_op_f32(select(-1250f, _wgslsmith_f_op_f32(833f * var_0.x), -1i < u_input.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1038f))), 1388f), Struct_2(Struct_1(vec3<f32>(166f, var_0.x, var_0.x), select(11773i, 27342i, global3[_wgslsmith_index_u32(82052u, 26u)]), reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63365u, 31u)], 31u)], 11u)], 11u)], 31u)], global0[_wgslsmith_index_u32(64124u, 31u)]))), func_1(Struct_3(Struct_1(vec3<f32>(var_0.x, 908f, 316f), u_input.a.x, vec2<u32>(global0[_wgslsmith_index_u32(15824u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(31401u, 11u)], 11u)], 31u)], 31u)]))), vec4<f32>(-109f, 242f, -638f, var_0.x), Struct_2(Struct_1(vec3<f32>(var_0.x, var_0.x, 583f), var_1, vec2<u32>(global4[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(22429u, 31u)])), Struct_1(var_0.xxw, 14707i, vec2<u32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 31u)], 0u)), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 11u)], 26u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 11u)], 11u)], Struct_1(var_0.yxz, var_1, vec2<u32>(1533u, global0[_wgslsmith_index_u32(0u, 31u)])))), any(!vec3<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(9017u, 11u)], 26u)], true, global3[_wgslsmith_index_u32(11566u, 26u)])), global4[_wgslsmith_index_u32(0u, 11u)], func_1(Struct_3(Struct_1(var_0.wyx, u_input.a.x, vec2<u32>(1u, 21716u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 567f, 518f)), Struct_2(Struct_1(var_0.wwz, 25595i, vec2<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 29933u)), Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), 0i, vec2<u32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12063u, 31u)], 11u)], global0[_wgslsmith_index_u32(1u, 31u)])), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 26u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(27760u, 11u)], 11u)], Struct_1(vec3<f32>(var_0.x, var_0.x, 1876f), var_1, vec2<u32>(4322u, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(60316u, 11u)], 31u)], 11u)], 31u)], 31u)], 31u)], 11u)])))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(var_2.a.a))))), -u_input.a.x, ~min((vec2<u32>(var_2.a.c.x, 78756u) & var_2.a.c) >> (abs(var_2.a.c) % vec2<u32>(32u)), abs(var_2.a.c)));
    global2 = var_0.x;
    return abs(vec4<i32>(var_2.a.b, firstLeadingBit(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), -2147483647i, var_2.a.b)) >> (vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u << (_wgslsmith_div_u32(var_3.c.x, 1u) % 32u), 1u), 31u)], max(var_3.c.x, 743u), var_2.a.c.x, 4294967295u) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(arg_0.x - arg_0.x);
    let var_0 = arg_0.x;
    let var_1 = ~_wgslsmith_clamp_vec4_i32(func_3(), vec4<i32>(74201i, u_input.a.x, -2147483647i, -3773i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(18471u, 20340u, global4[_wgslsmith_index_u32(40679u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]), vec4<u32>(0u, arg_1, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 11u)], 1u), vec4<u32>(arg_3, 46061u, arg_3, 15184u)) % vec4<u32>(32u)), min(vec4<i32>(arg_2, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11180u, 31u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16923u, 31u)], 31u)], global4[_wgslsmith_index_u32(1u, 11u)], 0u) % vec4<u32>(32u)), vec4<i32>(-47000i, u_input.a.x, arg_2, u_input.a.x))) << (~(~vec4<u32>(reverseBits(arg_1), 0u, ~0u, 1u)) % vec4<u32>(32u));
    var var_2 = any(vec3<bool>((-arg_2 << (firstTrailingBit(4294967295u) % 32u)) <= 2147483647i, all(vec4<bool>(-1i >= arg_2, any(vec2<bool>(global3[_wgslsmith_index_u32(41130u, 26u)], false)), false, global3[_wgslsmith_index_u32(max(0u, global0[_wgslsmith_index_u32(3739u, 31u)]), 26u)])), arg_0.x == _wgslsmith_f_op_f32(ceil(-2436f))));
    var_2 = true;
    return Struct_1(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))))), _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(-33834i, arg_2, 0i, -10793i) & vec4<i32>(-2147483647i, 6462i, var_1.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(var_1, vec4<i32>(u_input.a.x, var_1.x, -1i, var_1.x), var_1)), var_1, any(vec4<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36981u, 11u)], 26u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43079u, 11u)], 26u)], false, false)) && (arg_1 < arg_1)), -vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, var_1.x), _wgslsmith_dot_vec2_i32(var_1.wz, u_input.a.xy), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.x, -1i, var_1.x), vec4<i32>(u_input.a.x, var_1.x, var_1.x, 8883i)), arg_2)), vec2<u32>(30584u, 0u));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_1.c, any(vec4<bool>(false, arg_1.c, true, false)), select(false, true, true)), false), select(vec4<bool>(global3[_wgslsmith_index_u32(countOneBits(0u), 26u)], false, any(vec3<bool>(arg_1.c, global3[_wgslsmith_index_u32(arg_1.b.c.x, 26u)], false)), !arg_1.c), select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_3.x, 26u)], global3[_wgslsmith_index_u32(61109u, 26u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(68863u, 26u)], false, false), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0, 26u)], true, true)), select(vec4<bool>(true, arg_1.c, true, arg_1.c), vec4<bool>(global3[_wgslsmith_index_u32(11763u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 31u)], 31u)], 26u)], arg_1.c), vec4<bool>(true, false, global3[_wgslsmith_index_u32(1131u, 26u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7827u, 11u)], 26u)])), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_1.e.c.x, 26u)], false, arg_1.c, false), vec4<bool>(false, false, true, arg_1.c), vec4<bool>(arg_1.c, false, global3[_wgslsmith_index_u32(arg_3.x, 26u)], global3[_wgslsmith_index_u32(arg_1.d, 26u)]))), select(select(vec4<bool>(arg_1.c, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52692u, 31u)], 26u)], true, global3[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(arg_1.c, false, arg_1.c, arg_1.c), vec4<bool>(false, false, arg_1.c, true)), select(vec4<bool>(arg_1.c, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52157u, 31u)], 26u)], arg_1.c, false), vec4<bool>(false, global3[_wgslsmith_index_u32(28375u, 26u)], true, arg_1.c), true), !global3[_wgslsmith_index_u32(arg_3.x, 26u)])), !vec4<bool>(true, arg_1.c, true, any(vec3<bool>(false, arg_1.c, false))));
    let var_1 = func_1(Struct_3(arg_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(672f)) + _wgslsmith_div_f32(arg_1.a.a.x, arg_1.a.a.x)), arg_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-496f, 506f))), _wgslsmith_f_op_f32(-arg_1.a.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.e.a.x, arg_1.e.a.x, var_0.x)), _wgslsmith_div_f32(arg_1.e.a.x, -265f), _wgslsmith_f_op_f32(-arg_1.b.a.x), _wgslsmith_f_op_f32(sign(1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, arg_1.b.a.x, -1073f, 1000f) + vec4<f32>(829f, -1000f, arg_1.b.a.x, arg_1.e.a.x)))), arg_1);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, arg_2, -7790i, var_1.b)) & vec4<i32>(arg_2, 1i, -1i, u_input.a.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(-20153i, 28643i, 2147483647i, -2147483647i), vec4<i32>(var_1.b, -34992i, 2147483647i, arg_2))), arg_2, arg_2), vec3<i32>(0i, 2147483647i, -firstTrailingBit(1i) & abs(~var_1.b)));
    global0 = array<u32, 31>();
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.b.a.zx))), _wgslsmith_f_op_vec2_f32(-var_1.a.zx)));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> u32 {
    global3 = array<bool, 26>();
    var var_0 = global0[_wgslsmith_index_u32(~(~(~(~(global0[_wgslsmith_index_u32(29975u, 31u)] & arg_2.a.c.x)))), 31u)];
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(4294967295u), global4[_wgslsmith_index_u32(reverseBits(countOneBits(arg_0.c.x)), 11u)], ~(~87901u)), vec3<u32>(func_4(func_4(global0[_wgslsmith_index_u32(23840u, 31u)], Struct_2(arg_2.a, arg_0, arg_1, arg_0.c.x, arg_0), -1776i, vec4<u32>(104287u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 63149u, 1u)).c.x, Struct_2(arg_0, arg_2.a, global3[_wgslsmith_index_u32(4294967295u, 26u)], 16235u, Struct_1(arg_0.a, arg_0.b, vec2<u32>(3849u, 13150u))), min(-2147483647i, arg_2.a.b), vec4<u32>(0u, 72873u, 0u, 75209u)).c.x, max(72199u, arg_2.a.c.x) >> (arg_2.a.c.x % 32u), func_4(global4[_wgslsmith_index_u32(~4294967295u, 11u)], Struct_2(Struct_1(vec3<f32>(arg_0.a.x, arg_0.a.x, -575f), -33853i, vec2<u32>(arg_0.c.x, 1u)), Struct_1(arg_0.a, -513i, vec2<u32>(31505u, global4[_wgslsmith_index_u32(4294967295u, 11u)])), false, 4294967295u, Struct_1(vec3<f32>(arg_2.a.a.x, arg_0.a.x, -1294f), -11758i, arg_0.c)), 1i, vec4<u32>(24067u, 4294967295u, 10279u, arg_0.c.x) ^ vec4<u32>(5860u, 4294967295u, 0u, global0[_wgslsmith_index_u32(arg_2.a.c.x, 31u)])).c.x));
    let var_2 = !vec4<bool>(true, any(!select(vec3<bool>(true, true, false), vec3<bool>(arg_1, false, false), vec3<bool>(true, arg_1, true))), global3[_wgslsmith_index_u32(reverseBits(4294967295u), 26u)], (arg_1 && true) && arg_1);
    let var_3 = _wgslsmith_mult_vec3_u32(reverseBits(reverseBits(vec3<u32>(~arg_2.a.c.x, _wgslsmith_div_u32(1u, arg_2.a.c.x), func_1(Struct_3(arg_2.a), vec4<f32>(-1377f, arg_0.a.x, -2468f, 1250f), Struct_2(Struct_1(vec3<f32>(-1000f, arg_2.a.a.x, -1000f), u_input.a.x, vec2<u32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.a.c.x, 31u)], 31u)], 31u)], 11u)], 18169u)), Struct_1(arg_0.a, -1i, vec2<u32>(15061u, arg_2.a.c.x)), true, var_1, arg_2.a)).c.x))), reverseBits(reverseBits(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(arg_2.a.c.x, 31u)], 15534u, arg_0.c.x)))));
    return select(_wgslsmith_mod_u32(4294967295u & func_1(Struct_3(arg_2.a), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.a.x, -707f, arg_2.a.a.x, -367f), vec4<f32>(-779f, -670f, arg_2.a.a.x, -724f)), Struct_2(Struct_1(arg_2.a.a, 2147483647i, var_3.yy), arg_0, arg_1, var_1, Struct_1(arg_0.a, arg_0.b, var_3.xz))).c.x, var_1), ~4294967295u, !select(!(1i <= arg_2.a.b), any(var_2) == global3[_wgslsmith_index_u32(26972u, 26u)], all(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], false, true), vec3<bool>(arg_1, true, true), global3[_wgslsmith_index_u32(arg_0.c.x, 26u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 31u)];
    var_0 = ~func_5(func_4(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 31u)], Struct_2(func_1(Struct_3(Struct_1(vec3<f32>(-754f, -606f, 697f), u_input.a.x, vec2<u32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12843u, 11u)], 31u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33901u, 31u)], 31u)]))), vec4<f32>(-602f, 523f, -1410f, 267f), Struct_2(Struct_1(vec3<f32>(591f, 1329f, -792f), -2147483647i, vec2<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 17745u)), Struct_1(vec3<f32>(618f, -1608f, 1777f), u_input.a.x, vec2<u32>(14426u, global4[_wgslsmith_index_u32(0u, 11u)])), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11255u, 31u)], 11u)], 26u)], 1u, Struct_1(vec3<f32>(-596f, -1000f, 163f), u_input.a.x, vec2<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 1u)))), func_1(Struct_3(Struct_1(vec3<f32>(689f, 999f, 884f), 1i, vec2<u32>(1u, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50747u, 31u)], 11u)]))), vec4<f32>(1000f, -1000f, 1399f, -2477f), Struct_2(Struct_1(vec3<f32>(-1121f, 311f, -946f), 2147483647i, vec2<u32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16272u, 11u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23468u, 31u)], 31u)])), Struct_1(vec3<f32>(-357f, 311f, 993f), 22167i, vec2<u32>(51717u, 4294967295u)), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(28996u, 11u)], 26u)], 40351u, Struct_1(vec3<f32>(-1000f, 1312f, 649f), u_input.a.x, vec2<u32>(34620u, global0[_wgslsmith_index_u32(0u, 31u)])))), false, global0[_wgslsmith_index_u32(select(35766u, global0[_wgslsmith_index_u32(4294967295u, 31u)], false), 31u)], func_2(vec2<f32>(1047f, -2108f), 34474u, u_input.a.x, 73646u)), _wgslsmith_dot_vec2_i32(~u_input.a.zy, vec2<i32>(70872i, -4694i)), ~_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 36854u, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 11u)], 31u)], global4[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<u32>(0u, global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)], 17729u))), _wgslsmith_mult_i32(u_input.a.x, 81702i) > u_input.a.x, Struct_3(func_4(4294967295u, Struct_2(Struct_1(vec3<f32>(-498f, 744f, 646f), u_input.a.x, vec2<u32>(35234u, 88983u)), Struct_1(vec3<f32>(-681f, -249f, 374f), u_input.a.x, vec2<u32>(global4[_wgslsmith_index_u32(2382u, 11u)], 27475u)), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 11u)], 11u)], 26u)], 0u, Struct_1(vec3<f32>(1040f, -1906f, 598f), u_input.a.x, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global4[_wgslsmith_index_u32(26846u, 11u)]))), u_input.a.x, ~vec4<u32>(0u, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 11u)], 11u)], 31u)], 31u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21954u, 11u)], 11u)], 31u)], 31u)], 1u))));
    global0 = array<u32, 31>();
    global4 = array<u32, 11>();
    var var_1 = global4[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(-247f)), _wgslsmith_f_op_f32(select(-513f, 943f, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-165f, 217f) * vec2<f32>(3671f, 804f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f - -329f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-701f)))))), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 4294967295u), vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 31u)], 11u)], 220u) & vec3<u32>(5156u, global4[_wgslsmith_index_u32(0u, 11u)], 4294967295u)), firstLeadingBit(2230u) << (global0[_wgslsmith_index_u32(~4294967295u, 31u)] % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37601u, 11u)], 11u)]), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 11u)], 31u)], 0u)), _wgslsmith_clamp_vec2_u32(func_1(Struct_3(Struct_1(vec3<f32>(942f, -1092f, 1000f), 0i, vec2<u32>(52819u, 2383u))), vec4<f32>(-194f, -631f, -1291f, -944f), Struct_2(Struct_1(vec3<f32>(243f, -754f, 135f), u_input.a.x, vec2<u32>(48528u, global4[_wgslsmith_index_u32(20916u, 11u)])), Struct_1(vec3<f32>(-952f, -154f, -700f), u_input.a.x, vec2<u32>(1u, 4093u)), global3[_wgslsmith_index_u32(4294967295u, 26u)], global4[_wgslsmith_index_u32(1u, 11u)], Struct_1(vec3<f32>(1275f, 1610f, 411f), u_input.a.x, vec2<u32>(71330u, global0[_wgslsmith_index_u32(0u, 31u)])))).c, ~vec2<u32>(680u, global0[_wgslsmith_index_u32(24639u, 31u)]), max(vec2<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33876u, 11u)], 11u)], 11u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11766u, 31u)], 11u)], 11u)], 37889u))))), u_input.a.x, 4294967295u).c.x, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(0u, 31u)], func_1(Struct_3(func_2(vec2<f32>(-1940f, 654f), firstTrailingBit(34977u), u_input.a.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(525f, -283f, -418f, -885f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2380f, -165f, 1611f, 1589f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(809f, -1042f, 1822f, 370f) * vec4<f32>(-901f, -1009f, 249f, -975f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1425f, -998f, 1101f, -310f) - vec4<f32>(1000f, 676f, 573f, 1123f))))), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-908f, -1455f, 1084f), vec3<f32>(1221f, -1162f, -135f)), ~u_input.a.x, vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20385u, 11u)], 11u)], 0u) << (vec2<u32>(49508u, global0[_wgslsmith_index_u32(76206u, 31u)]) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(366f, -889f, 105f))), u_input.a.x, vec2<u32>(global4[_wgslsmith_index_u32(1u, 11u)], 1u) | vec2<u32>(global4[_wgslsmith_index_u32(51866u, 11u)], 0u)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(5019u, global4[_wgslsmith_index_u32(1u, 11u)]), 26u)], _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 11u)], 31u)], 11u)], 11u)], 26262u >> (global0[_wgslsmith_index_u32(19474u, 31u)] % 32u)), func_2(vec2<f32>(230f, 540f), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(23008u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 11u)], 11u)], 11u)]), 11u)], -17714i, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39775u, 31u)], 11u)], 11u)], 11u)], 11u)], 0u), 31u)], 11u)]))).a.x, func_5(Struct_1(func_1(Struct_3(Struct_1(vec3<f32>(-729f, 390f, 1160f), 35830i, vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20197u, 11u)], 11u)], 31u)], 31u)]))), vec4<f32>(-705f, -653f, -1484f, 126f), Struct_2(Struct_1(vec3<f32>(932f, 973f, 147f), u_input.a.x, vec2<u32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 11u)], 31u)], 4294967295u)), Struct_1(vec3<f32>(163f, -353f, -1606f), u_input.a.x, vec2<u32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 11u)], global0[_wgslsmith_index_u32(125860u, 31u)])), false, 15908u, Struct_1(vec3<f32>(-446f, 1442f, -1581f), u_input.a.x, vec2<u32>(0u, 1u)))).a, ~(2147483647i & u_input.a.x), reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 0u)) | ~vec2<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 4294967295u)), true, Struct_3(func_2(vec2<f32>(-202f, -672f), abs(global4[_wgslsmith_index_u32(4294967295u, 11u)]), i32(-1i) * -1i, firstLeadingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(45701u, 11u)], 11u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-185f, -1144f, -442f, -599f), vec4<f32>(236f, 1000f, -756f, 1685f))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, 531f, 319f, -561f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, 957f, -545f, -1000f) + vec4<f32>(-389f, -301f, -245f, -120f)))))), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)] | 4294967295u, 36272u));
}

