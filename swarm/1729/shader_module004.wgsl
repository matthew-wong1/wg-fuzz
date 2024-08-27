struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: array<bool, 8>;

var<private> global2: array<Struct_4, 12>;

var<private> global3: vec3<f32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec3<u32>) -> vec4<bool> {
    global0 = array<Struct_4, 30>();
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -200f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, arg_0, global3.x, arg_1.a.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b, arg_1.a.b, 1018f, -1825f) + vec4<f32>(global3.x, -1082f, -646f, -252f)), arg_1.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 1000f, arg_1.a.b))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-422f, -105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(min(-177f, _wgslsmith_f_op_f32(arg_1.a.c.x + arg_1.a.c.x))))))));
    global1 = array<bool, 8>();
    let var_1 = countOneBits(vec4<i32>(_wgslsmith_mod_i32(~arg_1.a.a ^ 1i, -7431i ^ _wgslsmith_mod_i32(arg_1.c.a, arg_1.c.a)), 6545i, arg_1.a.a, _wgslsmith_add_i32(reverseBits(arg_1.c.a), -17476i)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(round(arg_1.a.b)), _wgslsmith_f_op_f32(select(arg_0, arg_1.a.c.x, -1574i > (arg_1.a.a >> (47076u % 32u)))), _wgslsmith_f_op_f32(round(-1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2286f, var_0.x, var_0.x, 1507f), vec4<f32>(-2121f, arg_0, global3.x, arg_0), true)), vec4<f32>(var_0.x, global3.x, arg_1.c.b, global3.x), true)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.a.b, arg_1.c.b)), _wgslsmith_f_op_f32(-arg_1.a.c.x), _wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(abs(global3.x))), vec4<f32>(-1787f, _wgslsmith_f_op_f32(select(global3.x, var_0.x, true)), arg_1.a.b, arg_1.c.b), !any(vec4<bool>(arg_2.x, global1[_wgslsmith_index_u32(25370u, 8u)], false, false))))));
    return select(!vec4<bool>(!any(vec4<bool>(arg_1.b.x, false, global1[_wgslsmith_index_u32(4294967295u, 8u)], arg_1.b.x)), !all(vec3<bool>(false, global1[_wgslsmith_index_u32(111309u, 8u)], arg_1.b.x)), arg_1.b.x, true), !vec4<bool>(all(vec3<bool>(arg_1.b.x, true, arg_1.b.x)), arg_1.b.x, _wgslsmith_f_op_f32(select(-1000f, 1000f, false)) != arg_1.c.b, true), any(vec4<bool>(any(select(vec4<bool>(arg_1.b.x, true, true, arg_2.x), vec4<bool>(arg_1.b.x, arg_2.x, false, false), arg_1.b.x)), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(18615u, arg_3.x), 8u)], all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(arg_3.x, 8u)], false), vec3<bool>(arg_1.b.x, false, arg_2.x), vec3<bool>(true, true, false))), false)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x)));
    var var_1 = _wgslsmith_clamp_u32(u_input.a | 4294967295u, u_input.a, 0u >> (~(~u_input.a) % 32u));
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(arg_2, _wgslsmith_div_i32(0i, arg_1), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_2, 11829i, arg_1), -vec4<i32>(arg_1, arg_1, arg_2, 15051i))), 1i, 26479i);
    global2 = array<Struct_4, 12>();
    let var_3 = Struct_2(-reverseBits(_wgslsmith_div_i32(-arg_2, arg_2)), 593f, vec3<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1363f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global3.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(global3.x * global3.x)))))));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-841f))), -1473f, global3.x)))));
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b, arg_0.a.c.x) - vec2<f32>(519f, 371f))), _wgslsmith_f_op_vec2_f32(-global3.zy)), vec2<f32>(-940f, _wgslsmith_f_op_f32(round(global3.x))), vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)], false, global1[_wgslsmith_index_u32(arg_1, 8u)])), any(select(vec4<bool>(global1[_wgslsmith_index_u32(41733u, 8u)], false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(arg_1, 8u)], true, global1[_wgslsmith_index_u32(arg_1, 8u)]), global1[_wgslsmith_index_u32(arg_1, 8u)])))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -646f), -319f);
    let var_2 = Struct_3(Struct_2(firstTrailingBit(-_wgslsmith_add_i32(arg_2.x, arg_0.a.a)), _wgslsmith_div_f32(-829f, arg_0.a.c.x), _wgslsmith_f_op_vec3_f32(func_4(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(59136u, 8u)], true), func_3(-300f, Struct_3(Struct_2(21229i, -1000f, vec3<f32>(2274f, 2091f, var_0.x)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), arg_0.a), vec2<bool>(global1[_wgslsmith_index_u32(1u, 8u)], false), vec3<u32>(u_input.a, 4294967295u, u_input.a)), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 8u)], global1[_wgslsmith_index_u32(66793u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], true), vec4<bool>(global1[_wgslsmith_index_u32(31472u, 8u)], global1[_wgslsmith_index_u32(arg_1, 8u)], false, global1[_wgslsmith_index_u32(arg_1, 8u)]), true)), _wgslsmith_dot_vec4_i32(vec4<i32>(59331i, 10945i, arg_0.a.a, arg_2.x), reverseBits(vec4<i32>(-1i, 14096i, arg_0.c.x, 2147483647i))), ~(~28903i)))), select(vec2<bool>(arg_1 <= firstTrailingBit(0u), any(!vec3<bool>(global1[_wgslsmith_index_u32(73164u, 8u)], false, true))), vec2<bool>(global1[_wgslsmith_index_u32(~u_input.a, 8u)], all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(38655u, 8u)], global1[_wgslsmith_index_u32(13674u, 8u)]))), vec2<bool>(true, true)), arg_0.a);
    let var_3 = vec4<bool>(false, !(u_input.a <= select(arg_1, ~4294967295u, false)), !any(!select(vec3<bool>(false, var_2.b.x, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_1, 8u)]), vec3<bool>(var_2.b.x, true, true))), true);
    var var_4 = arg_0.b;
    return select(vec2<bool>(false, var_3.x), vec2<bool>(any(var_3) | var_2.b.x, _wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(973f - var_1.x)))), (true || ((43842u | u_input.a) > ~arg_1)) && (all(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(0u, 8u)])) && ((arg_0.b.c.x > -112f) || true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> vec4<f32> {
    var var_0 = vec4<f32>(-515f, global3.x, global3.x, _wgslsmith_f_op_f32(263f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(-1879f - global3.x))))));
    let var_1 = select(select(!select(func_2(Struct_5(Struct_2(29487i, var_0.x, vec3<f32>(var_0.x, var_0.x, -1000f)), Struct_1(vec4<i32>(-1i, 8408i, -49624i, -2147483647i), -833f, global3.yz, vec4<f32>(global3.x, var_0.x, 1017f, var_0.x)), vec3<i32>(2147483647i, -33366i, 0i)), u_input.a, vec2<i32>(2147483647i, -34531i)), func_3(-1266f, Struct_3(Struct_2(0i, 869f, var_0.wwx), vec2<bool>(global1[_wgslsmith_index_u32(1602u, 8u)], arg_1), Struct_2(15419i, var_0.x, var_0.xyz)), vec2<bool>(true, true), arg_0).yx, vec2<bool>(arg_1, arg_1)), select(func_2(Struct_5(Struct_2(13151i, global3.x, vec3<f32>(var_0.x, global3.x, -429f)), Struct_1(vec4<i32>(7883i, -32411i, 1i, -40290i), var_0.x, vec2<f32>(var_0.x, global3.x), vec4<f32>(-1867f, 402f, global3.x, -808f)), vec3<i32>(2147483647i, 1i, 16436i)), 4294967295u, ~vec2<i32>(33446i, 60170i)), func_3(_wgslsmith_f_op_f32(var_0.x + 1000f), Struct_3(Struct_2(46704i, -1000f, var_0.zww), vec2<bool>(true, true), Struct_2(55535i, var_0.x, vec3<f32>(var_0.x, -1665f, global3.x))), vec2<bool>(true, true), ~vec3<u32>(arg_0.x, u_input.a, 71688u)).yy, vec2<bool>(true, true)), !func_3(-504f, Struct_3(Struct_2(2147483647i, -1050f, var_0.zyw), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 8u)]), Struct_2(1i, global3.x, vec3<f32>(122f, -1074f, 626f))), vec2<bool>(arg_1, global1[_wgslsmith_index_u32(40714u, 8u)]), abs(arg_0)).yy), func_3(_wgslsmith_f_op_f32(trunc(global3.x)), Struct_3(Struct_2(~0i, _wgslsmith_f_op_f32(min(global3.x, var_0.x)), vec3<f32>(var_0.x, global3.x, 380f)), !(!vec2<bool>(true, arg_1)), Struct_2(~(-1i), _wgslsmith_f_op_f32(-1189f * -813f), _wgslsmith_f_op_vec3_f32(-var_0.yyy))), vec2<bool>(false, !any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)], arg_1))), arg_0).xx, vec2<bool>(func_3(1000f, Struct_3(Struct_2(1i, 748f, var_0.zzy), func_3(-458f, Struct_3(Struct_2(0i, -799f, var_0.yxx), vec2<bool>(arg_1, false), Struct_2(30728i, -1510f, var_0.wzy)), vec2<bool>(false, true), arg_0).yx, Struct_2(-1i, 493f, vec3<f32>(-1126f, 1819f, global3.x))), vec2<bool>(arg_1, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(27137u, u_input.a), 8u)]), vec3<u32>(min(arg_0.x, 0u), u_input.a | 92390u, ~33260u)).x, false));
    var var_2 = Struct_2(_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), vec2<i32>(1i, 1i)), -43989i), -1257f, _wgslsmith_f_op_vec3_f32(var_0.zxw * var_0.xwz));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, 146f, var_0.x, _wgslsmith_f_op_f32(-1788f - 809f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1387f, global3.x, -840f, -740f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1958f, var_0.x, _wgslsmith_div_f32(523f, 1310f), _wgslsmith_f_op_f32(global3.x + global3.x)) * vec4<f32>(_wgslsmith_f_op_f32(abs(2310f)), _wgslsmith_f_op_f32(step(-1702f, var_2.b)), var_0.x, var_2.c.x))));
    var var_3 = Struct_5(Struct_2(_wgslsmith_mult_i32(22251i, _wgslsmith_mult_i32(var_2.a, var_2.a)), 1f, vec3<f32>(global3.x, var_2.c.x, 311f)), Struct_1(vec4<i32>(~(-17801i) & var_2.a, var_2.a, 1i, -35394i), _wgslsmith_f_op_f32(980f * _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-var_2.c.x))), vec2<f32>(_wgslsmith_f_op_f32(min(global3.x, var_0.x)), var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-1000f - var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)), vec3<i32>(var_2.a, 1i, abs(var_2.a)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_3.b.d.x, var_3.b.c.x, var_3.b.c.x))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_3.b.d - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-362f, -1171f, var_3.a.b, -1316f), var_3.b.d, false)), _wgslsmith_f_op_vec4_f32(-var_3.b.d)))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<i32> {
    global0 = array<Struct_4, 30>();
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global3.x, -536f), _wgslsmith_f_op_f32(min(-681f, arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_vec3_f32(func_4(select(vec4<bool>(true, false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(10108u, 8u)], global1[_wgslsmith_index_u32(21359u, 8u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(40403u, 8u)], true)), arg_1.a, ~0i)))) * arg_1.c);
    global1 = array<bool, 8>();
    let var_0 = 1u;
    global2 = array<Struct_4, 12>();
    return ~arg_0.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 8u)];
    global2 = array<Struct_4, 12>();
    global1 = array<bool, 8>();
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-(~38038i), _wgslsmith_mod_i32(~27342i, -9182i)), func_5(vec3<i32>(1i, -1i, 2147483647i), Struct_2(~(-2664i), global3.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) * vec3<f32>(-275f, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(func_1(~vec3<u32>(24130u, u_input.a, u_input.a), u_input.a < 5200u)))), vec2<i32>(-2147483647i, reverseBits(0i << (u_input.a % 32u))));
    let var_2 = vec3<u32>(u_input.a, u_input.a, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(107868u, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 0u))) << (u_input.a % 32u)));
    global2 = array<Struct_4, 12>();
    let var_3 = vec3<bool>(true, !global1[_wgslsmith_index_u32(var_2.x, 8u)], ((u_input.a > _wgslsmith_mult_u32(u_input.a, var_2.x)) || all(vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 8u)], global1[_wgslsmith_index_u32(39613u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(var_2.x, 8u)]))) && true);
    let var_4 = any(var_3.yz);
    var var_5 = Struct_5(Struct_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(58895i, -43262i, -24221i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-4507i, -42358i, 1i, 1i), vec4<i32>(0i, 19486i, 1i, -1095i), vec4<i32>(-1i, 12283i, 34181i, 0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global3.x)), global3.x)) - _wgslsmith_f_op_f32(-354f + _wgslsmith_f_op_f32(max(global3.x, global3.x)))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, var_2.x, 1u), min(var_2, var_2)), true)).zxx), Struct_1(firstTrailingBit(select(vec4<i32>(-1i, 1i, 0i, 0i), vec4<i32>(2147483647i, 97001i, 8733i, -27506i), global1[_wgslsmith_index_u32(u_input.a, 8u)])) << ((max(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(2455u, 0u, 4294967295u, 1u)) | max(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 4294967295u, u_input.a, 1u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, !var_4, true), min(_wgslsmith_mod_i32(2147483647i, -43060i), 1i), _wgslsmith_mod_i32(22355i, -10880i))).x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(832f, _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, -859f, 440f, global3.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1700f, 222f, -1402f, global3.x), vec4<f32>(global3.x, -427f, -603f, global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, -1607f, -529f, 172f))))))), reverseBits(vec3<i32>(-2147483647i, _wgslsmith_mult_i32(-2147483647i, countOneBits(0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, u_input.a), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(506f, -521f, 995f, var_5.a.c.x))))), 34210i);
}

