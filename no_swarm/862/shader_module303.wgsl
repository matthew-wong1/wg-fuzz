struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 20380u;

var<private> global1: array<u32, 4>;

var<private> global2: array<vec3<i32>, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> vec4<u32> {
    global0 = u_input.a.x;
    var var_0 = !select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, true)))), vec2<bool>(_wgslsmith_dot_vec2_i32(arg_0.xy, arg_0.xy) > -1i, !all(vec4<bool>(true, true, false, true))));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 577f, 1115f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(891f, 477f, -467f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + 644f), -1810f, -1668f))), global1[_wgslsmith_index_u32(min(10188u, ~4294967295u), 4u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1652f, 136f, 1822f, 1145f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, 153f, 960f, -561f))))))), select(select(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, select(var_0.x, false, var_0.x), any(vec2<bool>(var_0.x, var_0.x)))), select(vec3<bool>(!var_0.x, true, false), vec3<bool>(all(vec2<bool>(var_0.x, var_0.x)), true, true || var_0.x), var_0.x), all(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x))));
    global0 = ~var_1.b;
    return reverseBits(vec4<u32>(~93148u, (global1[_wgslsmith_index_u32(~0u, 4u)] ^ var_1.b) ^ max(_wgslsmith_mod_u32(24188u, u_input.a.x), 44405u), ~max(_wgslsmith_add_u32(96967u, 58806u), firstTrailingBit(var_1.b)), 19985u));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(func_3(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_2, -47889i, 19599i), vec4<i32>(arg_2, 1i, 1i, 2147483647i))), -2147483647i), _wgslsmith_add_vec4_u32(min(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, arg_0), reverseBits(0u), 0u, reverseBits(u_input.a.x)), ~abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), ~vec4<u32>(arg_3.b, arg_0, 57633u, 1u) << (~(vec4<u32>(44496u, 4307u, 27702u, arg_3.b) | vec4<u32>(arg_3.b, 1u, arg_3.b, 1u)) % vec4<u32>(32u))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.a.zx, countOneBits(vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(1u, 4u)]))), firstTrailingBit(0u)), arg_0, arg_3.b), 25u)];
    global1 = array<u32, 4>();
    var var_2 = arg_3;
    let var_3 = arg_3.a.zy;
    return ~arg_3.b;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = !arg_2.d;
    let var_1 = arg_0;
    global1 = array<u32, 4>();
    global2 = array<vec3<i32>, 25>();
    var var_2 = arg_0;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f - arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.x, arg_2.a.x) * arg_2.c.x))))));
    let var_1 = -vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(60388i, -41152i), firstLeadingBit(vec2<i32>(-1i, 12504i))), ~(~vec2<i32>(-12633i, 1i))), -18422i, -_wgslsmith_clamp_i32(1i, 1i, 10742i));
    let var_2 = Struct_1(arg_2.a, ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, arg_1.x), vec2<u32>(u_input.a.x, u_input.a.x)), arg_1.x), vec4<f32>(-854f, 473f, _wgslsmith_f_op_f32(-1205f - 1f), 1000f), !(!(!vec3<bool>(arg_0.d.x, arg_2.d.x, arg_2.d.x))));
    var var_3 = arg_0.d;
    global1 = array<u32, 4>();
    return arg_2.b;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(min(-1866f, -899f))), _wgslsmith_f_op_f32(-1659f - _wgslsmith_f_op_f32(-arg_0.c.x)), -1221f), global1[_wgslsmith_index_u32(func_5(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2076f, -2109f, arg_0.a.x)), func_2(4294967295u, arg_0.d.yy, 7359i, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, 762f, -454f, -1087f)), !arg_0.d), firstLeadingBit(0u) & arg_0.b, arg_0, _wgslsmith_sub_u32(81860u, 47450u)), ~(~u_input.a.zx), Struct_1(arg_0.c.yww, 23523u, vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.c.x)), _wgslsmith_div_f32(233f, arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1651f)), arg_0.d)), 4u)], arg_0.c, func_4(func_4(func_4(arg_0, 1u, arg_0, u_input.a.x), ~func_5(arg_0, u_input.a.xy, arg_0), func_4(func_4(arg_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], arg_0, 0u), arg_0.b, func_4(arg_0, 9177u, arg_0, global1[_wgslsmith_index_u32(11848u, 4u)]), ~global1[_wgslsmith_index_u32(arg_0.b, 4u)]), abs(4294967295u) ^ max(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)])), _wgslsmith_add_u32(func_4(Struct_1(arg_0.a, 4294967295u, vec4<f32>(arg_0.a.x, -1000f, -1946f, arg_0.a.x), arg_0.d), select(9756u, arg_0.b, arg_0.d.x), arg_0, u_input.a.x).b, ~37744u), func_4(arg_0, ~global1[_wgslsmith_index_u32(0u, 4u)] & ~u_input.a.x, arg_0, _wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.b, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b, 4u)], 4u)])), 10177u).d);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(arg_0.a, var_0.c.zwy));
    var var_2 = select(!select(!(!vec4<bool>(false, arg_0.d.x, false, arg_0.d.x)), vec4<bool>(true, true, true, true), !(!var_0.d.x)), vec4<bool>(var_0.d.x, any(vec3<bool>(true, !arg_0.d.x, all(vec2<bool>(false, false)))), !(arg_0.d.x & arg_0.d.x) || all(select(arg_0.d, var_0.d, arg_0.d.x)), var_0.d.x), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.c.yyx - var_0.a), 1u, vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a.x, 1551f)), _wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(f32(-1f) * -646f), var_0.a.x), var_0.d), _wgslsmith_mult_u32(14800u, ~(~1u)), var_0, 0u | _wgslsmith_dot_vec2_u32(u_input.a.xy, ~vec2<u32>(u_input.a.x, u_input.a.x))).d.x);
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(-var_3.c.x);
    return _wgslsmith_clamp_i32(~(-firstLeadingBit(1i)), -(-abs(-36077i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_3.b, 72700u) & u_input.a, u_input.a) % 32u)), ~2147483647i);
}

fn func_6(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    global1 = array<u32, 4>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, global1[_wgslsmith_index_u32(17392u, 4u)], u_input.a.x), 4u)];
    var var_1 = func_4(func_4(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, 985f, -1564f)), abs(arg_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1437f, 1080f, 176f, 397f), vec4<f32>(-1000f, 165f, 105f, -1000f), vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true)), reverseBits(~global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), func_4(Struct_1(vec3<f32>(198f, 307f, 1604f), 14369u, vec4<f32>(629f, -443f, 1407f, -1444f), vec3<bool>(true, true, true)), _wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(1u, 4u)]), Struct_1(vec3<f32>(627f, 986f, 1134f), arg_0, vec4<f32>(1364f, 1280f, -468f, 2024f), vec3<bool>(false, false, false)), 1u), 26208u), 27373u, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1262f, -630f, 823f), vec3<f32>(-366f, -506f, -252f), vec3<bool>(false, false, true))))), 4476u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, u_input.a.x), 4u)]), ~(~_wgslsmith_mult_u32(45812u, _wgslsmith_sub_u32(u_input.a.x, 29602u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(492f, 566f, -876f) + vec3<f32>(-396f, -405f, 104f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(229f, -714f, 1264f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(592f, -804f, 775f)))), 0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1111f, 132f, _wgslsmith_f_op_f32(min(375f, -275f)), _wgslsmith_f_op_f32(460f + 858f))), !func_4(Struct_1(vec3<f32>(-117f, 2454f, 1254f), 1u, vec4<f32>(430f, -1025f, 965f, 285f), vec3<bool>(true, false, false)), global1[_wgslsmith_index_u32(0u, 4u)], Struct_1(vec3<f32>(108f, -575f, -1764f), 0u, vec4<f32>(-2062f, -1053f, 1000f, 867f), vec3<bool>(true, false, true)), min(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)])).d), _wgslsmith_div_u32(1u ^ u_input.a.x, 65466u));
    let var_2 = u_input.a.xy;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 644f, var_1.a.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1465f, -440f, var_1.a.x)))), arg_0, var_1.c, select(select(var_1.d, select(func_4(Struct_1(vec3<f32>(var_1.a.x, -1935f, var_1.a.x), 27249u, var_1.c, vec3<bool>(true, var_1.d.x, false)), arg_0, Struct_1(vec3<f32>(var_1.a.x, 1334f, 814f), 1u, var_1.c, vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x)), 65903u).d, vec3<bool>(true, true, true), true), vec3<bool>(true | var_1.d.x, var_1.a.x <= 187f, true)), select(func_4(Struct_1(vec3<f32>(1391f, -1000f, var_1.a.x), 106003u, var_1.c, var_1.d), 75876u << (0u % 32u), Struct_1(var_1.c.zyw, arg_0, var_1.c, vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x)), 4442u).d, !vec3<bool>(var_1.d.x, false, false), var_1.d), !func_4(func_4(Struct_1(vec3<f32>(-1035f, 411f, var_1.c.x), 0u, vec4<f32>(-1521f, 1317f, var_1.a.x, 441f), var_1.d), var_1.b, Struct_1(var_1.c.xxw, global1[_wgslsmith_index_u32(var_1.b, 4u)], var_1.c, var_1.d), 38813u), 4294967295u, Struct_1(vec3<f32>(858f, var_1.a.x, var_1.c.x), var_1.b, var_1.c, var_1.d), abs(7782u)).d));
    return func_4(Struct_1(var_3.a, 42422u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.c.x, 109f, var_1.a.x) * var_3.c), var_3.c))), vec3<bool>(all(!vec3<bool>(false, false, var_3.d.x)), !(!var_1.d.x), false)), ~(~var_2.x), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_3.a, var_1.a, false)) * vec3<f32>(var_3.c.x, -1645f, 2678f)), ~(~54008u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.c * vec4<f32>(-1000f, var_3.a.x, var_1.c.x, var_1.c.x))), var_3.d), global1[_wgslsmith_index_u32(~(~(~1u)), 4u)], var_3, firstLeadingBit(~var_3.b) << (_wgslsmith_mult_u32(var_3.b, var_3.b << (arg_0 % 32u)) % 32u)), ~func_5(Struct_1(var_3.a, var_3.b, var_1.c, !var_1.d), var_2, Struct_1(vec3<f32>(var_3.a.x, 378f, var_1.a.x), ~28098u, var_3.c, vec3<bool>(var_3.d.x, var_3.d.x, var_3.d.x))));
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.c)));
    global1 = array<u32, 4>();
    var var_1 = !(!vec3<bool>(true, false & !arg_0.d.x, arg_2.d.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(arg_2.c.yww)), 78964u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0 + arg_0.c), _wgslsmith_f_op_vec4_f32(arg_2.c - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(arg_0.c, vec4<f32>(202f, -176f, 974f, arg_0.c.x)))))))), vec3<bool>(true, arg_2.d.x, arg_2.d.x));
    var_1 = arg_2.d;
    return arg_0;
}

fn func_8(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> vec2<u32> {
    var var_0 = !(global1[_wgslsmith_index_u32(func_3(vec4<i32>(-1i, _wgslsmith_add_i32(20494i, 1711i), ~38754i, i32(-1i) * -72319i), -2147483647i).x, 4u)] != (~_wgslsmith_sub_u32(25425u, 0u) & _wgslsmith_add_u32(u_input.a.x ^ global1[_wgslsmith_index_u32(10184u, 4u)], 4294967295u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(func_7(Struct_1(arg_1.a, 120893u, vec4<f32>(1223f, -194f, arg_1.a.x, 1242f), arg_1.d), ~54814u, arg_1).a.x, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_7(arg_1, ~arg_1.b, Struct_1(arg_1.c.xzx, 66810u, arg_1.c, arg_1.d)).c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), 469f)))));
    global2 = array<vec3<i32>, 25>();
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -866f, _wgslsmith_f_op_f32(-953f * _wgslsmith_div_f32(var_1.x, func_7(arg_1, 64138u, arg_1).c.x))), 16353u >> (func_5(Struct_1(_wgslsmith_f_op_vec3_f32(max(arg_1.c.zzz, arg_1.a)), ~global1[_wgslsmith_index_u32(16244u, 4u)], _wgslsmith_f_op_vec4_f32(step(arg_1.c, vec4<f32>(-954f, -575f, -1250f, 513f))), !arg_1.d), vec2<u32>(u_input.a.x, ~u_input.a.x), func_4(Struct_1(arg_1.a, arg_1.b, vec4<f32>(var_1.x, 344f, var_1.x, -557f), vec3<bool>(false, arg_0.x, arg_0.x)), 64327u, arg_1, 0u)) % 32u), _wgslsmith_f_op_vec4_f32(-arg_1.c), func_6(select(_wgslsmith_mult_u32(3539u, arg_2), ~0u, 0u < arg_2) << (~(~0u) % 32u), ~vec3<i32>(0i, firstTrailingBit(-4628i), 1i)).d);
    var var_3 = vec4<i32>(select(~_wgslsmith_dot_vec3_i32(vec3<i32>(-13798i, 44657i, -1i), vec3<i32>(-2147483647i, 2147483647i, 0i)), _wgslsmith_sub_i32(abs(~0i), max(~2147483647i, firstTrailingBit(-44358i))), arg_1.d.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(-10971i, 341i, -35643i, -17287i) << ((arg_3 >> (vec4<u32>(u_input.a.x, 0u, 0u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<i32>(1i, 1i, 1i, 1i)) << (58080u % 32u), select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, arg_3.x, 589u), u_input.a) % vec3<u32>(32u)), -(global2[_wgslsmith_index_u32(arg_3.x, 25u)] >> (vec3<u32>(global1[_wgslsmith_index_u32(1u, 4u)], 36860u, arg_1.b) % vec3<u32>(32u)))), 1i, true), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(14292i, 2147483647i)), vec2<i32>(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(arg_1.b, 25u)] ^ global2[_wgslsmith_index_u32(arg_3.x, 25u)], ~global2[_wgslsmith_index_u32(49597u, 25u)]), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-20853i, -1i, -1i, 2147483647i), vec4<i32>(11981i, -1i, -1i, 6691i)), ~(-37430i)))));
    return u_input.a.xy & select(_wgslsmith_sub_vec2_u32(~(~arg_3.ww), ~vec2<u32>(0u, arg_3.x)), ~vec2<u32>(~arg_2, max(global1[_wgslsmith_index_u32(4671u, 4u)], 4294967295u)), select(vec2<bool>(false, arg_0.x), vec2<bool>(false, false), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 7714u;
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    let var_1 = func_8(select(vec2<bool>(any(vec4<bool>(false, true, true, true)) | true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(true, true, true)), true), func_7(func_6(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], vec3<i32>(func_1(Struct_1(vec3<f32>(309f, -427f, 796f), 4294967295u, vec4<f32>(-679f, 859f, -296f, 1000f), vec3<bool>(true, false, true))), 0i, 1i)), reverseBits(abs(u_input.a.x)), Struct_1(vec3<f32>(_wgslsmith_div_f32(1509f, -325f), 1879f, _wgslsmith_f_op_f32(f32(-1f) * -789f)), firstLeadingBit(reverseBits(u_input.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-502f, -151f, 815f, -358f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1381f, -848f, 494f, 885f))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), _wgslsmith_sub_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46205u, 4u)], 4u)] << (_wgslsmith_mod_u32(43106u, 4294967295u) % 32u)), ~(~reverseBits(0u))), vec4<u32>(4294967295u << (u_input.a.x % 32u), global1[_wgslsmith_index_u32(~func_6(u_input.a.x, vec3<i32>(27684i, -10265i, -2147483647i)).b, 4u)], (global1[_wgslsmith_index_u32(~4294967295u, 4u)] | func_7(Struct_1(vec3<f32>(-192f, 906f, -1812f), u_input.a.x, vec4<f32>(1000f, -1081f, -1056f, 1569f), vec3<bool>(true, true, true)), 64661u, Struct_1(vec3<f32>(-2849f, 392f, -1000f), 4294967295u, vec4<f32>(-2162f, 1413f, -1000f, -131f), vec3<bool>(false, true, true))).b) | _wgslsmith_sub_u32(u_input.a.x, ~0u), abs(1u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, 473f, 334f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(761f, 437f, -1426f), vec3<f32>(194f, -2049f, 690f))))))), ~(func_5(Struct_1(vec3<f32>(-1178f, -674f, -228f), 1u, vec4<f32>(-1691f, 752f, 126f, -176f), vec3<bool>(false, false, false)), vec2<u32>(0u, 5522u), Struct_1(vec3<f32>(-354f, 948f, -1000f), 1u, vec4<f32>(1000f, -212f, 1001f, -913f), vec3<bool>(true, true, false))) << (~48491u % 32u)) ^ u_input.a.x, _wgslsmith_f_op_vec4_f32(-func_4(func_7(func_4(Struct_1(vec3<f32>(1370f, -1320f, 308f), 1u, vec4<f32>(-2346f, -228f, -623f, 777f), vec3<bool>(true, false, true)), 0u, Struct_1(vec3<f32>(-546f, 1142f, 1855f), 11103u, vec4<f32>(-1132f, -146f, -1881f, 283f), vec3<bool>(false, false, true)), u_input.a.x), ~83710u, Struct_1(vec3<f32>(-693f, 1000f, 227f), 0u, vec4<f32>(1857f, -931f, -511f, -1054f), vec3<bool>(false, false, false))), var_1.x, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-948f, 2141f, -1455f), vec3<f32>(-279f, 423f, -1414f), vec3<bool>(true, true, false))), abs(global1[_wgslsmith_index_u32(var_1.x, 4u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1505f, -714f, 1045f, -781f) - vec4<f32>(103f, 304f, -2122f, -1937f)), vec3<bool>(false, false, false)), 0u >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 4u)], 4u)] % 32u)).c), vec3<bool>(true | (all(vec4<bool>(false, false, true, true)) || select(true, false, true)), firstTrailingBit(24259i) == 1i, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~select(u_input.a, _wgslsmith_div_vec3_u32(u_input.a, u_input.a), vec3<bool>(var_2.d.x, var_2.d.x, var_2.d.x)), vec3<u32>(abs(~u_input.a.x), ~(41971u ^ var_2.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, var_1.x, var_1.x), vec4<u32>(var_2.b, 1u, 1u, global1[_wgslsmith_index_u32(42652u, 4u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(var_2.c, _wgslsmith_f_op_vec4_f32(-var_2.c))), var_2.c)) - vec4<f32>(_wgslsmith_f_op_f32(-func_7(Struct_1(var_2.a, 0u, vec4<f32>(var_2.a.x, 1419f, -346f, var_2.c.x), var_2.d), global1[_wgslsmith_index_u32(14882u, 4u)], Struct_1(var_2.c.zww, 37512u, var_2.c, var_2.d)).c.x), _wgslsmith_div_f32(602f, var_2.c.x), _wgslsmith_f_op_f32(1539f + 376f), var_2.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(select(var_2.a.x, 169f, var_2.d.x))) * _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x), 57244u, vec4<f32>(var_2.c.x, var_2.a.x, var_2.c.x, -1486f), var_2.d), 0u, Struct_1(var_2.c.zyz, u_input.a.x, var_2.c, vec3<bool>(false, true, var_2.d.x)), 24902u).a.xz - var_2.c.yz)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(var_2.c.x + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.x, -127f)))));
}

