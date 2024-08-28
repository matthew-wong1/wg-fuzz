struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: Struct_3 = Struct_3(Struct_2(-1165f), vec2<f32>(-1000f, -795f), vec4<i32>(i32(-2147483648), -86675i, 13309i, 2147483647i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> f32 {
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global1.a.a) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], -273f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, -307f))) * vec2<f32>(-1430f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(abs(4294967295u), 17u)], _wgslsmith_f_op_f32(abs(249f))))), global1.c);
    global1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(847f - global1.b.x)))), vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(select(u_input.c.x, 85314u, arg_0) >> (min(u_input.a.x, u_input.c.x) % 32u), 17u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47030u, u_input.c.x), min(vec2<u32>(u_input.a.x, 51442u), vec2<u32>(u_input.a.x, u_input.c.x))), 17u)]), 439f), global1.c);
    let var_0 = global1.b.x;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global1.b.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true)))))), global1.a.a);
    let var_1 = Struct_5(true, Struct_1(-1435f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, 1944f))), global1.c, !vec4<bool>((global1.b.x == -244f) || false, true, any(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(ceil(2386f)) <= _wgslsmith_f_op_f32(-1000f + global1.b.x)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), global1.c.x > arg_0.x), (0i == u_input.b) | true));
    var_0 = var_1.b;
    var var_2 = 0u;
    let var_3 = vec4<u32>(1u, _wgslsmith_add_u32(15513u, 12156u) | _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, arg_1), max(1u, u_input.a.x) << (abs(15483u) % 32u)), abs(4294967295u), u_input.c.x);
    return vec3<i32>(-(_wgslsmith_add_i32(2777i, global1.c.x) >> (u_input.a.x % 32u)), firstLeadingBit(-325i) & var_1.c.x, firstTrailingBit(var_1.c.x | var_1.c.x)) | _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-59782i), i32(-1i) * -2147483647i, min(-174i, -2147483647i)), var_1.c.wzz | vec3<i32>(0i, 65550i, -40407i), global1.c.yxw), -vec3<i32>(u_input.b, _wgslsmith_mult_i32(global1.c.x, global1.c.x), _wgslsmith_dot_vec3_i32(var_1.c.xzw, vec3<i32>(var_1.c.x, 2147483647i, -21781i))));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: i32) -> Struct_3 {
    var var_0 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -u_input.b) & _wgslsmith_sub_vec2_i32(abs(global1.c.wz), arg_1.yx), select(-_wgslsmith_add_vec2_i32(global1.c.yz, vec2<i32>(global1.c.x, 22978i)), firstTrailingBit(arg_1.yx), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_dot_vec4_i32(global1.c, ~vec4<i32>(-u_input.b, func_2(global1.c.zz, ~45807u).x, min(countOneBits(arg_1.x), ~u_input.b), u_input.b));
    var var_2 = global1.a;
    var var_3 = ~(~(~24200u));
    var var_4 = Struct_3(global1.a, vec2<f32>(arg_0, 1000f), global1.c);
    return Struct_3(global1.a, vec2<f32>(1000f, -1405f), -global1.c);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> Struct_5 {
    let var_0 = vec2<i32>(-2147483647i, u_input.b);
    let var_1 = vec2<i32>(_wgslsmith_add_i32(-u_input.b, _wgslsmith_add_i32(global1.c.x, -arg_3 | 0i)), ~1i);
    global0 = array<f32, 17>();
    global1 = func_4(1f, ~func_2(vec2<i32>(select(1i, arg_3, false), 1i), arg_1), ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), 1u), u_input.c.x), ~abs(func_2(vec2<i32>(var_1.x, var_0.x), ~arg_1).x));
    var var_2 = 14863u & u_input.c.x;
    return Struct_5(!(!any(vec4<bool>(false, true, true, false))), Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32((9995u | u_input.a.x) | arg_1, 17u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(223f, 1530f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_0.x))))), vec4<i32>(-1i, ~(~firstLeadingBit(arg_3)), -29203i, ~var_1.x), !vec4<bool>(!all(vec2<bool>(false, false)), false, false, !(u_input.c.x > arg_1)), select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, false, false), true, any(vec3<bool>(false, true, false)), false), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), false)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false)), vec4<bool>(true, true, true, true)));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: u32, arg_3: bool) -> vec3<f32> {
    let var_0 = arg_0;
    global0 = array<f32, 17>();
    global0 = array<f32, 17>();
    global0 = array<f32, 17>();
    var var_1 = arg_0.c.x;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-128f, global0[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 17u)], 757f)) + 1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_f_op_f32(-global1.b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(552f, -1146f, 394f) * vec3<f32>(var_0.b.b, -448f, global0[_wgslsmith_index_u32(arg_1.x, 17u)])))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], -380f, 1713f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(29494u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global1.a.a), vec3<f32>(arg_0.b.a, -754f, -1036f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, 2362f, var_0.b.a)))))));
}

fn func_6(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<f32, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1318f, -789f, global1.b.x, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(778f, -225f, global1.b.x, 955f) * vec4<f32>(global0[_wgslsmith_index_u32(64123u, 17u)], -1000f, -1320f, global1.a.a)), vec4<f32>(1f, 1f, 1f, 1f)))), vec4<bool>(-1458f <= _wgslsmith_f_op_f32(global1.b.x + global1.b.x), !all(vec2<bool>(false, true)), select(true, select(true, false, false), func_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)], -1850f, 179f), 0u, vec2<f32>(arg_0.x, 1000f), -2147483647i).a), true))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_5(Struct_5(true, Struct_1(arg_0.x, global1.a.a), vec4<i32>(global1.c.x, 0i, global1.c.x, 1i), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), abs(u_input.a), ~u_input.a.x, global1.c.x < -34573i)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(47527u, 17u)]) + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(37215u, 17u)] - arg_0.x)), 150f))), !(!vec4<bool>(false, true, any(vec3<bool>(false, false, false)), true))));
    var var_1 = vec4<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 0u, ~(~16886u)), firstLeadingBit(~(vec4<u32>(75344u, u_input.c.x, 6713u, u_input.c.x) >> (vec4<u32>(4294967295u, u_input.c.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))), ~29256u, 0u);
    var var_2 = any(!vec3<bool>(true, true, u_input.a.x <= var_1.x));
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 17u)])), global0[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(trunc(610f)), _wgslsmith_f_op_f32(step(189f, -123f)))), reverseBits(abs(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c.x, 1958u, var_1.x, 0u), vec4<u32>(72853u, u_input.a.x, 32531u, 143u)), vec4<u32>(var_1.x, 15833u, u_input.c.x, 12221u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1802f)))), -2147483647i).c.yxy;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f), 191f), _wgslsmith_f_op_f32(f32(-1f) * -1552f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1199f) - global1.a.a)) + _wgslsmith_f_op_vec3_f32(func_5(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.a.a, 925f, -739f) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global1.b.x, global1.b.x, global1.a.a)), _wgslsmith_clamp_u32(7545u, u_input.a.x, 0u), global1.b, u_input.b), vec2<u32>(u_input.a.x, ~u_input.c.x), u_input.a.x, true))));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(0u, u_input.a.x), 1u, u_input.c.x), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.a.x, u_input.a.x)) & max(vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x), u_input.c), _wgslsmith_mod_vec3_u32(u_input.c, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(0u, u_input.a.x), u_input.c.x))), _wgslsmith_mult_u32(16818u, ~u_input.c.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 141f, var_0.a)) - vec3<f32>(-1414f, 264f, var_0.a))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(func_3(false)), global0[_wgslsmith_index_u32(4294967295u >> (u_input.a.x % 32u), 17u)], -676f)))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec2_f32(global1.b - global1.b), abs(firstLeadingBit(_wgslsmith_div_vec4_i32(global1.c, vec4<i32>(u_input.b, global1.c.x, 1i, 2147483647i))) ^ global1.c));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1143f);
    var var_5 = Struct_3(func_6(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a, var_3.b.x, 170f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 350f, -775f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1746f, -1000f, -1000f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b.x, 130f, 941f), vec3<f32>(551f, global1.b.x, var_0.a), false)), vec3<bool>(true, false, false)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2340f - global0[_wgslsmith_index_u32(var_1.x, 17u)]) + var_2.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 17u)], -639f))))), _wgslsmith_f_op_f32(global1.a.a * -307f)), reverseBits(firstLeadingBit(global1.c)));
    let var_6 = global1.c.x;
    var_3 = func_4(934f, vec3<i32>(-16686i, func_2(vec2<i32>(50249i, 2147483647i), firstLeadingBit(var_1.x)).x, -1i), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 78466u, 45799u), vec3<u32>(u_input.c.x, u_input.a.x, 0u)), var_1.x), u_input.a), select(select(vec2<u32>(0u, var_1.x), ~u_input.a, true), select(vec2<u32>(u_input.a.x, 1u), var_1, false), vec2<bool>(all(vec3<bool>(false, false, false)), false))), reverseBits(var_3.c.x));
    var_3 = func_4(448f, global1.c.yyy, ~max(~var_1, (var_1 << (vec2<u32>(u_input.c.x, 37943u) % vec2<u32>(32u))) >> ((vec2<u32>(u_input.a.x, 1u) & vec2<u32>(18401u, u_input.c.x)) % vec2<u32>(32u))), i32(-1i) * -global1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(33821u);
}

