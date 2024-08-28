struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
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

var<private> global0: array<vec2<f32>, 1>;

var<private> global1: array<vec3<u32>, 32>;

var<private> global2: array<bool, 17>;

var<private> global3: vec3<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_div_i32(1i, u_input.b);
    global2 = array<bool, 17>();
    let var_1 = any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 17u)] != true, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c, 1u), arg_2), _wgslsmith_clamp_u32(~u_input.a, u_input.c, max(1u, u_input.a))), 17u)], global2[_wgslsmith_index_u32(~1u, 17u)], abs(~1u) < (arg_2 >> (reverseBits(u_input.c) % 32u))));
    global3 = select(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(select(global1[_wgslsmith_index_u32(1u, 32u)] << (global1[_wgslsmith_index_u32(2031u, 32u)] % vec3<u32>(32u)), ~vec3<u32>(arg_2, 17332u, arg_2), true), ~vec3<u32>(global3.x, 1u, 18370u)), vec3<u32>(~47135u, 4294967295u, global3.x)), global1[_wgslsmith_index_u32(min(~global3.x, ~108775u), 32u)], !var_1 & (28781i == u_input.b));
    let var_2 = select(!(!select(!vec4<bool>(var_1, true, var_1, true), select(vec4<bool>(var_1, var_1, false, false), vec4<bool>(var_1, false, true, var_1), vec4<bool>(false, false, global2[_wgslsmith_index_u32(94777u, 17u)], var_1)), false)), select(!select(!vec4<bool>(var_1, global2[_wgslsmith_index_u32(34940u, 17u)], true, true), select(vec4<bool>(false, true, false, var_1), vec4<bool>(false, true, global2[_wgslsmith_index_u32(global3.x, 17u)], false), vec4<bool>(var_1, true, false, var_1)), any(vec2<bool>(var_1, true))), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(global3.x, 17u)], global2[_wgslsmith_index_u32(26845u, 17u)], false, var_1))), select(!select(vec4<bool>(var_1, global2[_wgslsmith_index_u32(1u, 17u)], true, false), vec4<bool>(true, var_1, global2[_wgslsmith_index_u32(arg_2, 17u)], global2[_wgslsmith_index_u32(u_input.c, 17u)]), false), !select(vec4<bool>(false, global2[_wgslsmith_index_u32(global3.x, 17u)], var_1, var_1), vec4<bool>(global2[_wgslsmith_index_u32(global3.x, 17u)], var_1, global2[_wgslsmith_index_u32(arg_2, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]), global2[_wgslsmith_index_u32(32736u, 17u)]), global2[_wgslsmith_index_u32(~arg_2, 17u)])), any(!select(vec4<bool>(true, var_1, true, var_1), !vec4<bool>(var_1, var_1, global2[_wgslsmith_index_u32(20641u, 17u)], true), global2[_wgslsmith_index_u32(reverseBits(global3.x), 17u)])));
    return abs(arg_2);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = arg_1;
    let var_1 = select(~arg_1.d.yzx, reverseBits(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.a, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, 1i), arg_1.d.xwz)), 32363i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, arg_1.a, -59623i), max(arg_1.d.wwz, arg_1.d.zzw)))), global2[_wgslsmith_index_u32(13522u, 17u)]);
    var var_2 = arg_1.d;
    let var_3 = global1[_wgslsmith_index_u32(~arg_1.e, 32u)];
    global2 = array<bool, 17>();
    return Struct_4(Struct_3(4294967295u, global3.xy, firstLeadingBit(firstTrailingBit(var_3.x)) | ~func_3(var_0.b.x, arg_1.b.x, 4294967295u), var_2.x & -var_2.x, vec4<u32>(_wgslsmith_div_u32(arg_1.e ^ arg_1.e, arg_1.e & global3.x), max(u_input.c, var_3.x) | (21884u | arg_1.e), ~1u, _wgslsmith_div_u32(~1u, u_input.a))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(var_0.b.x))), Struct_3(~_wgslsmith_clamp_u32(countOneBits(var_3.x), u_input.c, var_3.x), vec2<u32>(u_input.a, select(var_0.e << (u_input.c % 32u), arg_0, global2[_wgslsmith_index_u32(global3.x, 17u)] || global2[_wgslsmith_index_u32(5623u, 17u)])), global3.x, -1i, ~(max(vec4<u32>(42764u, 4294967295u, 82530u, arg_1.e), vec4<u32>(1u, global3.x, arg_1.e, 20758u)) << (~vec4<u32>(6994u, 4294967295u, 30280u, 11336u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: f32, arg_3: vec4<i32>) -> Struct_2 {
    global2 = array<bool, 17>();
    global1 = array<vec3<u32>, 32>();
    let var_0 = arg_3.x;
    let var_1 = select(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], true, global2[_wgslsmith_index_u32(u_input.c, 17u)], false))), vec4<bool>(false, all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], true, false), !vec4<bool>(true, global2[_wgslsmith_index_u32(global3.x, 17u)], global2[_wgslsmith_index_u32(27808u, 17u)], global2[_wgslsmith_index_u32(global3.x, 17u)]), true)), global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(abs(-1889f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.b)), _wgslsmith_f_op_f32(-arg_0.b)), arg_0.c.e.x), 17u)], global2[_wgslsmith_index_u32(max(~(~u_input.a), ~arg_0.a.c), 17u)]), !vec4<bool>(_wgslsmith_add_i32(0i, arg_3.x) > max(arg_3.x, var_0), any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(global3.x, 17u)]), vec3<bool>(global2[_wgslsmith_index_u32(4784u, 17u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(arg_0.c.c, 17u)], global2[_wgslsmith_index_u32(49811u, 17u)]))), !(!global2[_wgslsmith_index_u32(66962u, 17u)]), true));
    global1 = array<vec3<u32>, 32>();
    return Struct_2(Struct_1(~firstTrailingBit(1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-714f, arg_1, arg_1, -868f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, -1061f, arg_2, -444f), vec4<f32>(arg_1, -816f, 1397f, -120f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, -368f, -2433f, arg_2))))), -(~(-1805i)), max(arg_3, arg_3), _wgslsmith_sub_u32(arg_0.c.b.x, _wgslsmith_sub_u32(abs(1u), u_input.c))));
}

fn func_5(arg_0: Struct_2) -> u32 {
    global0 = array<vec2<f32>, 1>();
    var var_0 = func_4(Struct_4(func_2(~4694u, Struct_1(countOneBits(u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, 388f, arg_0.a.b.x, arg_0.a.b.x)), 0i, reverseBits(vec4<i32>(2147483647i, arg_0.a.a, -12842i, arg_0.a.a)), _wgslsmith_div_u32(arg_0.a.e, global3.x))).c, arg_0.a.b.x, func_2(4294967295u, Struct_1(_wgslsmith_add_i32(u_input.b, arg_0.a.d.x), _wgslsmith_f_op_vec4_f32(arg_0.a.b + vec4<f32>(1424f, -832f, arg_0.a.b.x, 2707f)), u_input.b | u_input.b, vec4<i32>(u_input.d.x, arg_0.a.c, arg_0.a.a, arg_0.a.d.x) | vec4<i32>(arg_0.a.d.x, arg_0.a.c, u_input.b, 29584i), arg_0.a.e)).a), arg_0.a.b.x, -1315f, arg_0.a.d);
    var var_1 = func_2(var_0.a.e, Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(-var_0.a.b), arg_0.a.d.x, ~arg_0.a.d, 0u)).a;
    var var_2 = _wgslsmith_div_i32(u_input.b, firstTrailingBit(_wgslsmith_mult_i32(func_4(func_2(13932u, arg_0.a), _wgslsmith_f_op_f32(1270f * 1217f), -655f, vec4<i32>(arg_0.a.a, 30366i, u_input.b, 1i) >> (vec4<u32>(var_0.a.e, u_input.a, 17170u, 1u) % vec4<u32>(32u))).a.d.x, 46140i)));
    let var_3 = all(select(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(94286u, 17u)], global2[_wgslsmith_index_u32(50992u, 17u)], false), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 17u)], true, false, global2[_wgslsmith_index_u32(global3.x, 17u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], true, global2[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(arg_0.a.e, 17u)], true, global2[_wgslsmith_index_u32(var_1.b.x, 17u)]), false)), vec4<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 14673u), 17u)], true, global2[_wgslsmith_index_u32(50944u, 17u)], any(vec4<bool>(global2[_wgslsmith_index_u32(20676u, 17u)], global2[_wgslsmith_index_u32(global3.x, 17u)], true, global2[_wgslsmith_index_u32(0u, 17u)]))), !select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(31462u, 17u)], true, global2[_wgslsmith_index_u32(u_input.c, 17u)]), !vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.e, 17u)], false, global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(46564u, 17u)]), !vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(1u, 17u)]))));
    return _wgslsmith_div_u32(select(~(~var_1.c), ~reverseBits(arg_0.a.e), any(vec2<bool>(false, true))), global3.x << (reverseBits(3768u) % 32u)) << (~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(arg_0.a.e, u_input.a)), func_2(1u, Struct_1(var_0.a.d.x, var_0.a.b, arg_0.a.d.x, arg_0.a.d, 0u)).a.e.zw) % 32u);
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<u32> {
    global3 = ~countOneBits(global1[_wgslsmith_index_u32(countOneBits(global3.x), 32u)]);
    let var_0 = func_5(func_4(func_2(72326u, Struct_1(u_input.b >> (u_input.a % 32u), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-603f, 1000f, 621f, 333f))), i32(-1i) * -32984i, vec4<i32>(-18434i, -1i, u_input.b, u_input.d.x) << (vec4<u32>(global3.x, u_input.c, 39048u, global3.x) % vec4<u32>(32u)), ~2468u)), _wgslsmith_f_op_f32(1311f * 203f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-961f - _wgslsmith_f_op_f32(round(-647f))))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -12950i, u_input.d.x, -34202i), ~vec4<i32>(u_input.d.x, arg_0, u_input.d.x, u_input.d.x)))));
    global1 = array<vec3<u32>, 32>();
    global2 = array<bool, 17>();
    global2 = array<bool, 17>();
    return global3.zx;
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    global0 = array<vec2<f32>, 1>();
    global3 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.e.zzx, vec3<u32>(arg_2.b.x, 1u, global3.x)), vec3<u32>(arg_2.e.x ^ 8221u, func_3(arg_1, -3046f, 29627u), 27730u)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_2.e, arg_2.e), arg_2.e), ~u_input.c, ~global3.x));
    var var_0 = arg_2;
    let var_1 = Struct_1(arg_2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -885f), arg_1, -937f, 320f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, 1485f, arg_1, -1000f)))))))), var_0.d >> (var_0.e.x % 32u), _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, -4360i | var_0.d, 43294i, _wgslsmith_sub_i32(-6338i, -1i)), -(~func_4(Struct_4(arg_2, -1348f, arg_2), arg_1, arg_1, vec4<i32>(8745i, -1015i, -2147483647i, arg_0)).a.d)), _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(var_0.a, 32u)], firstLeadingBit(var_0.e.xwx)) & 0u);
    global2 = array<bool, 17>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 17>();
    global3 = ~abs(~(~global1[_wgslsmith_index_u32(23162u, 32u)]));
    global0 = array<vec2<f32>, 1>();
    global2 = array<bool, 17>();
    global0 = array<vec2<f32>, 1>();
    let var_0 = func_6(u_input.d.x & (38248i | u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-161f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2602f, -913f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -529f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(659f, -192f)))), Struct_3(~(~(~59759u)), func_1(~0i, global2[_wgslsmith_index_u32(reverseBits(~u_input.a), 17u)]), 1u, -(~(-u_input.b)), ~vec4<u32>(_wgslsmith_div_u32(global3.x, global3.x), ~global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 38204u, u_input.a, 96599u), vec4<u32>(108180u, 40818u, 0u, 38292u)), ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(firstLeadingBit(u_input.a) | ~var_0.e)));
}

