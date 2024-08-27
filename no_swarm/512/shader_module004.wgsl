struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: array<u32, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> vec4<bool> {
    let var_0 = Struct_2(arg_0.b.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-154f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 7u)], 7u)], 7u)], 7u)], 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), arg_0.b.b.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 5u)])), _wgslsmith_f_op_f32(arg_0.b.b.e.b - 2661f), 2162f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.b.b)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b.a, 7u)], 7u)], 5u)]))) + arg_0.b.b.a.b), 1065f), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(78546u, 5u)])), arg_0.d);
    var var_1 = Struct_3(4294967295u, Struct_2(Struct_1(max(~arg_0.b.b.a.a, abs(u_input.b)), 1698f, !(!arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d.e)))), _wgslsmith_f_op_vec3_f32(-arg_0.b.b.b), _wgslsmith_f_op_vec2_f32(var_0.b.xz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(890f, var_0.a.d))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-912f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.b.a, 5u)], 1002f)))), var_0.a));
    global1 = array<u32, 7>();
    let var_2 = !(!vec2<bool>(arg_1, var_1.b.e.c));
    var var_3 = arg_1;
    return vec4<bool>(true, arg_0.d.c, select(any(vec4<bool>(true, false, true, var_1.b.e.c)), arg_0.b.b.e.c, _wgslsmith_div_f32(arg_0.d.d, -1338f) < global0[_wgslsmith_index_u32(49233u, 5u)]) != all(vec4<bool>(true, true, true, arg_0.b.b.a.a.x < -1i)), arg_0.d.c);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> Struct_1 {
    return Struct_1(select(u_input.b, _wgslsmith_mod_vec4_i32(~u_input.b >> (select(vec4<u32>(4294967295u, u_input.c, 1u, u_input.c), vec4<u32>(4294967295u, u_input.c, 0u, global1[_wgslsmith_index_u32(32525u, 7u)]), false) % vec4<u32>(32u)), vec4<i32>(1i, 42732i, 1i, u_input.a.x) ^ select(vec4<i32>(46123i, arg_0.x, u_input.a.x, arg_0.x), u_input.b, vec4<bool>(false, true, true, true))), select(func_3(Struct_5(vec2<u32>(u_input.c, u_input.c), Struct_3(u_input.c, Struct_2(Struct_1(u_input.b, -449f, true, 1300f, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<f32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(17474u, 5u)], global0[_wgslsmith_index_u32(54700u, 5u)]), vec2<f32>(-117f, global0[_wgslsmith_index_u32(4433u, 5u)]), global0[_wgslsmith_index_u32(4294967295u, 5u)], Struct_1(u_input.b, global0[_wgslsmith_index_u32(u_input.c, 5u)], true, global0[_wgslsmith_index_u32(40157u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]))), arg_0, Struct_1(vec4<i32>(2147483647i, -1i, arg_0.x, u_input.a.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5400u, 7u)], 5u)], false, 497f, -166f), u_input.b.xz), true), vec4<bool>(false, 42916u == u_input.c, true, arg_1), select(vec4<bool>(false, true, false, arg_1), select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, false, arg_1)), vec4<bool>(arg_1, false, false, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-389f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~6353u, 7u)], 5u)]), abs(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(35157u, 7u)], 7u)]) == (global1[_wgslsmith_index_u32(19007u, 7u)] << (reverseBits(1u) % 32u)))), ~abs(u_input.b.x) > -52564i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 5u)]))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 7u)] | _wgslsmith_add_u32(2822u, 51597u), 5u)]), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 5u)])))), _wgslsmith_f_op_f32(-1011f - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(147f, global0[_wgslsmith_index_u32(u_input.c, 5u)])))))));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: Struct_3) -> f32 {
    var var_0 = func_2(vec3<i32>(-2147483647i, countOneBits(_wgslsmith_add_i32(arg_1.c.x, i32(-1i) * -9080i)), u_input.b.x), true);
    var_0 = func_2(vec3<i32>(-var_0.a.x, -17557i, -7195i & select(firstTrailingBit(42603i), ~12716i, false)), 0i != u_input.b.x);
    let var_1 = -819f;
    var var_2 = Struct_5(select(vec2<u32>(~arg_1.b.a, global1[_wgslsmith_index_u32(0u, 7u)] >> (arg_1.b.a % 32u)) & max(arg_1.a ^ vec2<u32>(arg_1.a.x, arg_1.a.x), arg_1.a), arg_1.a << (vec2<u32>(~u_input.c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.a, arg_1.a), 7u)]) % vec2<u32>(32u)), func_3(arg_1, true).yy), Struct_3(u_input.c, Struct_2(arg_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.b.b.b.zz - arg_2.b.b.zz), _wgslsmith_f_op_vec2_f32(vec2<f32>(263f, -908f) * arg_2.b.b.xz), func_3(Struct_5(vec2<u32>(0u, u_input.c), Struct_3(1u, arg_1.b.b), u_input.b.wxx, Struct_1(vec4<i32>(arg_1.d.a.x, 22575i, arg_1.c.x, 1i), -175f, false, 271f, 280f), var_0.a.zy), arg_2.b.e.c).wy)), _wgslsmith_f_op_f32(select(684f, 431f, !arg_2.b.a.c)), Struct_1(firstLeadingBit(var_0.a), _wgslsmith_f_op_f32(max(var_0.e, 801f)), var_0.d <= -575f, _wgslsmith_f_op_f32(f32(-1f) * -1038f), arg_2.b.c.x))), -(~(~vec3<i32>(u_input.b.x, 65434i, 0i) << (max(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(4294967295u, arg_1.a.x, 0u)) % vec3<u32>(32u)))), func_2(arg_1.c, all(vec3<bool>(arg_2.a > arg_1.b.a, u_input.b.x < 0i, arg_2.b.a.c))), ~u_input.a);
    global1 = array<u32, 7>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-763f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-627f - global0[_wgslsmith_index_u32(arg_2.a, 5u)]), arg_1.b.b.c.x, any(vec3<bool>(var_0.c, arg_2.b.e.c, var_2.d.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.b.x)))), arg_2.b.e.c)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = vec4<u32>(countOneBits(countOneBits(~countOneBits(u_input.c))), _wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(min(45394u, 66305u), 8431u), 7u)], ~_wgslsmith_add_u32(min(36333u, 21201u), global1[_wgslsmith_index_u32(0u, 7u)] | global1[_wgslsmith_index_u32(10396u, 7u)])), _wgslsmith_add_u32(u_input.c, 4294967295u), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(min(u_input.c, abs(abs(u_input.c))), 7u)], ~_wgslsmith_div_u32(6827u, abs(u_input.c))));
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_1 = _wgslsmith_sub_u32(~abs(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(var_0.x, 7u)], var_0.x), ~69861u), 7u)]), var_0.x);
    let var_2 = vec3<f32>(-261f, 169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(359f - -1209f) * _wgslsmith_f_op_f32(636f + -464f)))));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(~(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 13096i, u_input.a.x, u_input.b.x), u_input.b) | u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] >> (1u % 32u), 5u)]) + global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c, u_input.c, global1[_wgslsmith_index_u32(1u, 7u)]), 5u)]), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(184f + _wgslsmith_f_op_f32(func_1(u_input.b.x, Struct_5(vec2<u32>(1u, 47244u), Struct_3(global1[_wgslsmith_index_u32(11675u, 7u)], Struct_2(Struct_1(u_input.b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 7u)], 5u)], true, global0[_wgslsmith_index_u32(4294967295u, 5u)], -1078f), vec3<f32>(-1034f, global0[_wgslsmith_index_u32(4294967295u, 5u)], -472f), vec2<f32>(1000f, -558f), global0[_wgslsmith_index_u32(0u, 5u)], Struct_1(vec4<i32>(16817i, 2147483647i, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(1u, 5u)], false, 475f, 841f))), vec3<i32>(1i, u_input.a.x, u_input.a.x), Struct_1(u_input.b, 634f, true, global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]), vec2<i32>(u_input.b.x, u_input.b.x)), Struct_3(global1[_wgslsmith_index_u32(20929u, 7u)], Struct_2(Struct_1(u_input.b, 554f, true, global0[_wgslsmith_index_u32(23333u, 5u)], -222f), vec3<f32>(global0[_wgslsmith_index_u32(15992u, 5u)], -755f, 128f), vec2<f32>(681f, -452f), -526f, Struct_1(u_input.b, global0[_wgslsmith_index_u32(69683u, 5u)], false, -664f, 734f)))))))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(13297u, 35008u, u_input.c), firstLeadingBit(vec3<u32>(u_input.c, 15700u, u_input.c))), 5u)]), func_3(Struct_5(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 16672u)), Struct_3(countOneBits(u_input.c), Struct_2(Struct_1(u_input.b, 1724f, false, -419f, 1364f), vec3<f32>(-904f, 1403f, global0[_wgslsmith_index_u32(68228u, 5u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), 561f, Struct_1(vec4<i32>(-2147483647i, 0i, u_input.b.x, -1i), 1000f, false, 1666f, 332f))), firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.b.wyw, u_input.b.wxw)), func_2(u_input.b.zyy, true), abs(u_input.a)), true).zw, Struct_4(Struct_2(func_2(-vec3<i32>(u_input.a.x, -14271i, -2147483647i), select(true, false, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 5u)], -880f, 775f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 5u)], 988f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19535u, 7u)], 5u)]) * vec3<f32>(581f, -558f, -577f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39948u, 7u)], 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 7u)], 5u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-428f, 312f) * vec2<f32>(-1002f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 7u)], 5u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1176f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 5u)])), func_2(-u_input.b.zxy, select(true, false, true)))), vec4<i32>(_wgslsmith_mult_i32(~abs(u_input.b.x), u_input.b.x), u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.b.zxy, u_input.b.wzy), -(~u_input.a.x)));
    global1 = array<u32, 7>();
    var var_1 = !(!(!select(!vec3<bool>(true, var_0.a.c, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    var_1 = func_3(Struct_5(min(_wgslsmith_mod_vec2_u32(vec2<u32>(64485u, 1u), vec2<u32>(u_input.c, u_input.c) & vec2<u32>(4294967295u, u_input.c)), vec2<u32>(61964u, 1u) & _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(50749u, 4294967295u))), Struct_3(0u, func_4(func_2(vec3<i32>(-1i, u_input.b.x, 51387i), false), var_1.xz, Struct_4(Struct_2(var_0.a, var_0.b, var_0.b.yx, -603f, Struct_1(vec4<i32>(0i, -18702i, -24131i, var_0.a.a.x), -1122f, var_1.x, var_0.e.b, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), _wgslsmith_div_vec4_i32(var_0.e.a, var_0.a.a))), vec3<i32>(var_0.e.a.x << ((global1[_wgslsmith_index_u32(1u, 7u)] ^ u_input.c) % 32u), ~716i, _wgslsmith_mult_i32(u_input.b.x, -12318i)), Struct_1(abs(vec4<i32>(u_input.a.x, -2147483647i, var_0.e.a.x, -20872i)) >> (~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], 11280u, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(20661u, 7u)]) % vec4<u32>(32u)), -1000f, func_3(Struct_5(vec2<u32>(65348u, 4294967295u), Struct_3(4294967295u, Struct_2(Struct_1(vec4<i32>(var_0.e.a.x, u_input.a.x, var_0.a.a.x, var_0.e.a.x), global0[_wgslsmith_index_u32(1u, 5u)], true, 1212f, global0[_wgslsmith_index_u32(4294967295u, 5u)]), var_0.b, vec2<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 5u)]), var_0.a.b, var_0.a)), vec3<i32>(-39047i, var_0.e.a.x, var_0.e.a.x), var_0.a, vec2<i32>(var_0.a.a.x, u_input.b.x)), var_1.x).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10121u, 5u)]))), _wgslsmith_f_op_f32(-func_4(Struct_1(u_input.b, -179f, var_0.a.c, 2435f, 1000f), vec2<bool>(var_1.x, true), Struct_4(Struct_2(Struct_1(var_0.e.a, var_0.d, var_0.a.c, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 7u)], 5u)], -306f), var_0.b, vec2<f32>(581f, global0[_wgslsmith_index_u32(u_input.c, 5u)]), global0[_wgslsmith_index_u32(28299u, 5u)], Struct_1(vec4<i32>(-2147483647i, 15986i, var_0.e.a.x, 2147483647i), -798f, var_0.a.c, -243f, var_0.d))), var_0.a.a).b.x)), firstTrailingBit(vec2<i32>(-75215i, min(5608i, 2147483647i)))), var_0.e.c).zwy;
    global1 = array<u32, 7>();
    var_1 = !select(!(!select(vec3<bool>(var_1.x, var_0.a.c, var_0.a.c), vec3<bool>(false, false, var_0.a.c), var_1.x)), !(!func_3(Struct_5(vec2<u32>(u_input.c, 19393u), Struct_3(u_input.c, Struct_2(Struct_1(vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, 2147483647i), -201f, var_0.e.c, 685f, -1988f), var_0.b, vec2<f32>(-1000f, 935f), global0[_wgslsmith_index_u32(40150u, 5u)], Struct_1(vec4<i32>(u_input.b.x, 1i, 49482i, 1i), 845f, var_0.e.c, var_0.c.x, var_0.b.x))), vec3<i32>(-1i, var_0.a.a.x, u_input.a.x), var_0.a, var_0.e.a.xx), var_1.x).yww), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(func_4(Struct_1(select(vec4<i32>(-2147483647i, 24341i, u_input.a.x, var_0.e.a.x), vec4<i32>(var_0.a.a.x, 0i, -2147483647i, -51444i), true), _wgslsmith_f_op_f32(204f * -1737f), var_0.e.c, _wgslsmith_f_op_f32(f32(-1f) * -619f), _wgslsmith_f_op_f32(-var_0.c.x)), !vec2<bool>(var_0.a.c, var_0.a.c), Struct_4(func_4(var_0.e, var_1.zx, Struct_4(Struct_2(Struct_1(vec4<i32>(var_0.a.a.x, 31821i, u_input.a.x, u_input.a.x), -593f, false, global0[_wgslsmith_index_u32(3796u, 5u)], -1000f), vec3<f32>(-545f, -462f, -1397f), vec2<f32>(616f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 7u)], 5u)]), var_0.b.x, var_0.e)), var_0.a.a)), vec4<i32>(_wgslsmith_add_i32(var_0.a.a.x, 2147483647i), ~u_input.b.x, i32(-1i) * -13833i, i32(-1i) * -1i)).e.e, 263f)), var_0.b.yz);
}

