struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(1i, 1i, -1i, -1i)), Struct_1(vec4<i32>(1i, -23905i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(8389i, 2147483647i, 19235i, i32(-2147483648))), Struct_1(vec4<i32>(-61612i, 0i, -1i, 1i)), Struct_1(vec4<i32>(-20335i, -93i, -1455i, 0i)), Struct_1(vec4<i32>(0i, 11083i, 0i, 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), -1i, -31558i, -1i)), Struct_1(vec4<i32>(2147483647i, -57116i, 0i, 1i)), Struct_1(vec4<i32>(-1i, 12737i, 0i, 0i)), Struct_1(vec4<i32>(1i, 7896i, 0i, 81958i)), Struct_1(vec4<i32>(1i, -57532i, 9625i, -42633i)), Struct_1(vec4<i32>(-1i, -1i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(24925i, -77633i, 0i, 2544i)), Struct_1(vec4<i32>(1i, 11132i, 47215i, -1i)), Struct_1(vec4<i32>(0i, 2973i, 2147483647i, -59150i)), Struct_1(vec4<i32>(-21404i, i32(-2147483648), 1972i, 10838i)), Struct_1(vec4<i32>(-32535i, -75948i, -1i, 14343i)), Struct_1(vec4<i32>(21145i, 21774i, -1202i, 18952i)), Struct_1(vec4<i32>(-15448i, i32(-2147483648), 1i, 1i)), Struct_1(vec4<i32>(1i, -1i, -1i, -83616i)), Struct_1(vec4<i32>(1i, -5383i, -45126i, -10813i)), Struct_1(vec4<i32>(-68802i, -47111i, -1i, 1i)), Struct_1(vec4<i32>(42511i, 47313i, -52223i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -52709i)), Struct_1(vec4<i32>(-10656i, 0i, 1i, 2147483647i)), Struct_1(vec4<i32>(48666i, 38110i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(49075i, 0i, -30452i, 1i)));

var<private> global1: f32;

var<private> global2: array<i32, 8>;

var<private> global3: array<u32, 3> = array<u32, 3>(41916u, 4294967295u, 13405u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global2 = array<i32, 8>();
    var var_0 = ~(~(~vec3<u32>(u_input.a.x, max(u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)]), abs(66143u))));
    let var_1 = Struct_5(global3[_wgslsmith_index_u32(~firstTrailingBit(41244u), 3u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1308f, -1547f, _wgslsmith_f_op_f32(f32(-1f) * -654f)))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, var_0.x), 27u)], Struct_3(select(!vec4<bool>(true, false, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, true, false, true), select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(false, arg_0.x, false, arg_0.x), arg_0.x), vec4<bool>(false, arg_0.x, false, arg_0.x)), arg_0.x), _wgslsmith_clamp_i32(countOneBits(-12243i | u_input.b), -2147483647i >> (max(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], u_input.a.x) % 32u), _wgslsmith_clamp_i32(16012i, 5814i << (u_input.a.x % 32u), u_input.b)), global0[_wgslsmith_index_u32(19125u, 27u)], vec3<i32>(u_input.b, 0i, ~(i32(-1i) * -8987i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1958f, -308f, -329f))) * vec3<f32>(_wgslsmith_div_f32(707f, -1870f), _wgslsmith_f_op_f32(step(-1000f, -750f)), 204f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-334f, -127f, -317f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1749f, 991f, 177f) * vec3<f32>(-692f, 640f, -778f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(502f, 840f, -834f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-561f, 156f, 1344f))))));
    let var_2 = Struct_4(u_input.a, var_0.x, -firstLeadingBit(~var_1.c.a.xx << (~vec2<u32>(38220u, 1u) % vec2<u32>(32u))));
    var var_3 = Struct_1(var_1.d.c.a);
    return ~4294967295u;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1218f, 125f)))) - 742f);
    global3 = array<u32, 3>();
    global2 = array<i32, 8>();
    return Struct_1(vec4<i32>(-1i, countOneBits(select(~arg_0, ~u_input.b, !arg_2.x)), global2[_wgslsmith_index_u32(func_3(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), 8u)], -2147483647i));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    global3 = array<u32, 3>();
    var var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-360f + 887f) * _wgslsmith_div_f32(291f, 810f))) - -586f));
    let var_2 = Struct_5(reverseBits(~abs(24884u) | _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1, 3u)], 3u)], 16173u)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) - _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1230f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(683f - -148f)))))), Struct_1(vec4<i32>(-1i, global2[_wgslsmith_index_u32(1u & ~arg_1, 8u)], select(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(47740u, 8u)], u_input.b), -1i, any(vec4<bool>(true, false, false, false))), u_input.b)), Struct_3(!vec4<bool>(all(vec3<bool>(false, false, false)), true, all(vec2<bool>(false, false)), true), u_input.b, Struct_1(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_3.x, -2147483647i, u_input.b, global2[_wgslsmith_index_u32(62877u, 8u)])), ~vec4<i32>(arg_2.a.x, 0i, global2[_wgslsmith_index_u32(4294967295u, 8u)], 2147483647i))), ~vec3<i32>(arg_3.x >> (22985u % 32u), 562i, reverseBits(arg_0.a.x))), vec3<f32>(_wgslsmith_f_op_f32(select(var_1, -724f, true)), -356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + -616f)));
    let var_3 = Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(arg_2.a, vec4<i32>(arg_0.a.x, u_input.b, -35066i, -36947i)), firstLeadingBit(var_2.c.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 0i, var_2.c.a.x, 0i), ~arg_2.a)), _wgslsmith_add_i32(12666i, -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, -17923i, arg_3.x, 9905i), func_2(arg_0.a.x, 0u, vec2<bool>(true, var_2.d.a.x)).a), ~abs(u_input.b), min(firstTrailingBit(1i), func_2(-33387i, u_input.a.x, vec2<bool>(false, var_2.d.a.x)).a.x))));
    return _wgslsmith_f_op_f32(ceil(-1617f));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(func_2(max(global2[_wgslsmith_index_u32(1677u, 8u)], arg_2.c.a.x), ~50784u, select(arg_2.a.yz, vec2<bool>(arg_1.x, true), arg_2.a.x)).a.zxy, vec3<i32>(_wgslsmith_div_i32(arg_2.c.a.x, u_input.b), ~1i, arg_2.c.a.x), vec3<i32>(-3679i, arg_2.d.x, -u_input.b)), -_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-3937i, u_input.b, u_input.b), arg_2.d), vec3<i32>(arg_2.b, 26396i, u_input.b), vec3<i32>(u_input.b, -1i, u_input.b))));
    global0 = array<Struct_1, 27>();
    var var_1 = Struct_5(~((u_input.a.x | func_3(arg_2.a.zww)) & u_input.a.x), arg_0, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(select(23559u, ~global3[_wgslsmith_index_u32(max(firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), 3u)], arg_1.x), 3u)], 27u)], Struct_3(vec4<bool>(all(arg_2.a.zzx), true, _wgslsmith_f_op_f32(select(452f, 574f, true)) < -1000f, arg_2.a.x), ~global2[_wgslsmith_index_u32(~(~u_input.a.x), 8u)], Struct_1(vec4<i32>(arg_2.b, ~(-18192i), firstLeadingBit(-37709i), 3551i)), _wgslsmith_clamp_vec3_i32(var_0.a, vec3<i32>(-1i) * -vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], -7671i), firstLeadingBit(~vec3<i32>(arg_2.c.a.x, arg_2.c.a.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 8u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -1854f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))))));
    let var_2 = u_input.a.x;
    var var_3 = Struct_5(max(0u, ~39186u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_div_f32(arg_3, 1158f), _wgslsmith_f_op_f32(-arg_3)), arg_0))), func_2(-(~(~1i)), ~global3[_wgslsmith_index_u32(~(0u >> (1u % 32u)), 3u)], select(arg_1, arg_1, !select(vec2<bool>(true, arg_2.a.x), arg_1, true))), var_1.d, arg_0);
    return Struct_3(!(!var_1.d.a), _wgslsmith_dot_vec4_i32(var_1.c.a, firstLeadingBit(-min(var_1.d.c.a, var_3.c.a))), global0[_wgslsmith_index_u32(var_3.a, 27u)], firstTrailingBit(-vec3<i32>(abs(-1i), firstTrailingBit(26735i), global2[_wgslsmith_index_u32(~var_2, 8u)])));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    var var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(1831f * arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(arg_0.a), global3[_wgslsmith_index_u32(16243u, 3u)] ^ 54024u, func_2(arg_0.a.x, 4294967295u, vec2<bool>(true, false)), _wgslsmith_clamp_vec2_i32(arg_0.a.zx, vec2<i32>(arg_0.a.x, arg_0.a.x), arg_0.a.zx))) - -2257f), 597f), vec2<bool>(!all(vec2<bool>(true, true)), true), Struct_3(vec4<bool>(true, any(vec3<bool>(false, false, false)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), false), 31169i, func_2(arg_0.a.x, countOneBits(4294967295u << (u_input.a.x % 32u)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), reverseBits(-(arg_0.a & arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 637f) - -761f)) + _wgslsmith_f_op_f32(max(-146f, _wgslsmith_f_op_f32(f32(-1f) * -670f)))));
    let var_1 = Struct_5(1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 + -858f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) * arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(953f)) * _wgslsmith_f_op_f32(arg_1 - 356f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1433f, -955f, arg_1) + vec3<f32>(-1170f, arg_1, -473f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, -327f, arg_1)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1307f, arg_1, arg_1)), vec3<bool>(var_0.a.x, var_0.a.x, true)))))), var_0.c, Struct_3(select(!var_0.a, vec4<bool>(true, true, true, true), all(vec4<bool>(true, var_0.a.x, false, false))), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(4294967295u, global3[_wgslsmith_index_u32(u_input.a.x, 3u)], 4294967295u)), 8u)], _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(~24288u, 8u)], ~u_input.b, global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.a.x, 3u)], 8u)]), countOneBits(var_0.b) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26001u, 3u)], 3u)], 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 52360u, 6218u, 65556u)) % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(u_input.a.x, 3u)], u_input.a.x) & ~1u, 27u)], arg_0.a << ((~u_input.a >> (vec3<u32>(78050u, u_input.a.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(arg_1, arg_1, 308f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, 341f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), 615f, 644f), ~arg_0.a.x > 1i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.e.yy * vec2<f32>(-228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-657f, 444f)) - -613f))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1012f))))));
    var var_4 = reverseBits(u_input.a);
    return Struct_3(vec4<bool>(false, true & any(var_0.a), true, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(~1u, 3u)], var_4.x >> (26056u % 32u)) != 4294967295u), 1i, var_1.c, arg_0.a);
}

fn func_6(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(vec3<i32>(16835i, _wgslsmith_div_i32(arg_2.b, -1i), firstTrailingBit(select(-u_input.b, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(104259u, 32663u), 8u)], false))));
    var var_1 = _wgslsmith_f_op_f32(floor(-382f));
    var var_2 = Struct_1(abs(reverseBits(vec4<i32>(abs(arg_2.d.x), _wgslsmith_dot_vec3_i32(arg_2.d, arg_2.c.a.zzz), -arg_2.c.a.x, 41985i >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)] % 32u)))));
    var var_3 = !func_5(_wgslsmith_f_op_vec3_f32(arg_1.yzy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, arg_0, 247f)))), vec2<bool>(true, arg_2.a.x), arg_2, arg_0).a.yww;
    var var_4 = Struct_2(countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -1i), -arg_2.d.xy), _wgslsmith_sub_i32(arg_2.b, var_2.a.x), 44199i)));
    return Struct_3(!(!(!func_1(Struct_2(vec3<i32>(-44753i, -2147483647i, 22513i)), -110f).a)), u_input.b, arg_2.c, select(abs(reverseBits(func_2(arg_2.d.x, 4294967295u, vec2<bool>(true, false)).a.xyx)), vec3<i32>(-1i, -_wgslsmith_div_i32(1i, var_4.a.x), _wgslsmith_mult_i32(1i >> (u_input.a.x % 32u), countOneBits(var_4.a.x))), func_1(Struct_2(var_4.a), arg_0).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_div_f32(-565f, -569f), vec4<f32>(-171f, 1000f, -568f, _wgslsmith_f_op_f32(966f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1295f)) * _wgslsmith_f_op_f32(f32(-1f) * -266f)))), func_1(Struct_2(-countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(1426u, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)]))), 1f));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.b), vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.d.yz, vec2<i32>(-28731i, var_0.d.x)), _wgslsmith_mult_i32(-2147483647i, var_0.d.x))) & 20905i;
    global3 = array<u32, 3>();
    global2 = array<i32, 8>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1170f, 646f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-563f, 165f, var_0.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(222f)), _wgslsmith_f_op_f32(f32(-1f) * -354f))))));
    var_1 = var_0.c.a.x;
    var var_2 = ~(~(~(select(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(22871u, 1u, 4294967295u, 0u), var_0.a.x) >> (select(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], u_input.a.x, u_input.a.x), vec4<u32>(global3[_wgslsmith_index_u32(1u, 3u)], 4294967295u, 39858u, u_input.a.x), false) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-func_2(_wgslsmith_add_i32(~83749i, -global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), 1u, vec2<bool>(true, var_2.x < 58711u)).a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1424f)))))), var_2.wy);
}

