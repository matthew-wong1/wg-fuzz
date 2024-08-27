struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<u32>(2774u, 13236u), vec4<u32>(2841u, 1u, 1u, 4294967295u)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<i32> {
    var var_0 = false;
    let var_1 = Struct_4(941f, ~global1.a.b.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 11u)] - global0[_wgslsmith_index_u32(1u, 11u)]), global0[_wgslsmith_index_u32(global1.a.b.x ^ global1.a.b.x, 11u)], 1778f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1145f, global0[_wgslsmith_index_u32(42247u, 11u)], global0[_wgslsmith_index_u32(~global1.a.a.x, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(28163u, 0u), 11u)]), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(33857u, global1.a.a.x), 11u)], global0[_wgslsmith_index_u32(~4294967295u, 11u)], _wgslsmith_f_op_f32(max(920f, global0[_wgslsmith_index_u32(4294967295u, 11u)])), 177f), false)))), Struct_2(-((vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) | vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, global1.a.b.x, 4294967295u), global1.a.b.wyw) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 11u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2584f, global0[_wgslsmith_index_u32(u_input.b, 11u)]), vec2<f32>(global0[_wgslsmith_index_u32(global1.a.b.x, 11u)], 847f)))), global1.a), ~(~global1.a.a) >> (global1.a.b.wx % vec2<u32>(32u)));
    var_0 = true;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.c.x) + _wgslsmith_f_op_f32(min(-1000f, -974f)))))));
    return var_1.d.a << (vec3<u32>(_wgslsmith_sub_u32(~global1.a.b.x, 24065u) ^ countOneBits(min(u_input.a.x, var_1.b)), _wgslsmith_dot_vec4_u32(var_1.d.d.b, _wgslsmith_div_vec4_u32(vec4<u32>(23306u, var_1.b, 10214u, u_input.a.x), ~vec4<u32>(var_1.e.x, 0u, var_1.d.d.b.x, 1u))), ~134585u) % vec3<u32>(32u));
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 11>();
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, 13456i))), vec3<i32>(u_input.c.x & -22628i, 1i, -31602i)), abs(abs(vec3<i32>(u_input.c.x, -22188i, 0i)) & func_3())), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, reverseBits(u_input.c.x)) & vec3<i32>(u_input.c.x, firstLeadingBit(u_input.c.x), 1i), max(-countOneBits(vec3<i32>(24837i, -42713i, u_input.c.x)), ~(-vec3<i32>(u_input.c.x, 0i, u_input.c.x)))), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.c.x, 2147483647i, -20619i), vec3<i32>(u_input.c.x & u_input.c.x, ~(-2147483647i), -32565i), firstLeadingBit(vec3<i32>(u_input.c.x, u_input.c.x, 1i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -71509i, -2147483647i), vec3<i32>(-1i, u_input.c.x, u_input.c.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -1168f, -330f, global0[_wgslsmith_index_u32(u_input.b, 11u)])), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 464f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.a.b.x, 11u)], 974f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(33974u, 11u)]))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(min(14029u, 97794u), 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 26970u, u_input.a.x), vec3<u32>(4294967295u, global1.a.a.x, global1.a.b.x)), 11u)], _wgslsmith_f_op_f32(max(1225f, global0[_wgslsmith_index_u32(18275u, 11u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(240f, global0[_wgslsmith_index_u32(4294967295u, 11u)], 933f, -1678f))))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -668f, -1076f, 1255f) + vec4<f32>(global0[_wgslsmith_index_u32(1u, 11u)], -820f, 174f, global0[_wgslsmith_index_u32(3317u, 11u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(355f, -322f, global0[_wgslsmith_index_u32(4294967295u, 11u)], 1126f) * vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 774f, -299f, global0[_wgslsmith_index_u32(77624u, 11u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(global1.a.b.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 627f, 1033f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-505f, -440f, global0[_wgslsmith_index_u32(57540u, 11u)], 243f), vec4<f32>(global0[_wgslsmith_index_u32(6293u, 11u)], -360f, -426f, global0[_wgslsmith_index_u32(67502u, 11u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-315f, 1696f, -1000f, global0[_wgslsmith_index_u32(global1.a.b.x, 11u)]) - vec4<f32>(-855f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -851f, -225f))))))));
    global1 = Struct_3(Struct_1(vec2<u32>(max(1u, u_input.a.x), 58156u ^ global1.a.b.x) >> (vec2<u32>(1u, ~global1.a.a.x) % vec2<u32>(32u)), global1.a.b));
    let var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 8249u) >> (18605u % 32u), 11u)] * var_1.x), global0[_wgslsmith_index_u32(~((u_input.a.x | 0u) & _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.a.x, global1.a.b.x), vec2<u32>(u_input.a.x, u_input.a.x))), 11u)], global0[_wgslsmith_index_u32(select(min(global1.a.b.x, 37495u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, u_input.b), 0u, _wgslsmith_sub_u32(0u, global1.a.b.x)), false & any(vec2<bool>(true, true))), 11u)]), global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(min(global1.a.b.x, global1.a.b.x), global1.a.a.x)), 11u)], var_0.x, Struct_2(vec3<i32>(13590i, _wgslsmith_clamp_i32(-13711i, ~0i, 35941i), abs(abs(u_input.c.x))), _wgslsmith_f_op_f32(-493f * 391f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.x)), _wgslsmith_f_op_vec2_f32(min(var_1.zz, var_1.yw))))), Struct_1(global1.a.b.xx, global1.a.b)));
    return Struct_2(~(vec3<i32>(-1i) * -vec3<i32>(-1i, -2025i, 19681i)), _wgslsmith_f_op_f32(f32(-1f) * -1398f), vec2<f32>(-1000f, var_2.a.x), Struct_1(min(var_2.d.d.a & ~vec2<u32>(1u, 0u), ~vec2<u32>(4294967295u, global1.a.b.x)), ~var_2.d.d.b));
}

fn func_4(arg_0: Struct_2) -> vec3<u32> {
    global0 = array<f32, 11>();
    let var_0 = global1.a;
    return reverseBits(var_0.b.wyy);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2252f, global0[_wgslsmith_index_u32(global1.a.b.x, 11u)], 495f, global0[_wgslsmith_index_u32(100520u, 11u)]) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(93736u, 11u)], -580f, 794f, 1716f), vec4<f32>(global0[_wgslsmith_index_u32(0u, 11u)], 245f, 787f, 560f), vec4<bool>(true, true, true, false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(4255u, 11u)], global0[_wgslsmith_index_u32(47576u, 11u)], 544f), vec4<f32>(-1238f, -248f, global0[_wgslsmith_index_u32(4294967295u, 11u)], 910f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(980u, 11u)], global0[_wgslsmith_index_u32(44239u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]) * vec4<f32>(-188f, -1100f, global0[_wgslsmith_index_u32(global1.a.b.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)])))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(global1.a.a.x, 11u)], global0[_wgslsmith_index_u32(global1.a.b.x, 11u)], global0[_wgslsmith_index_u32(global1.a.a.x, 11u)], global0[_wgslsmith_index_u32(55181u, 11u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1699f, -221f, global0[_wgslsmith_index_u32(99950u, 11u)], global0[_wgslsmith_index_u32(global1.a.b.x, 11u)]) * vec4<f32>(-313f, global0[_wgslsmith_index_u32(4294967295u, 11u)], -1018f, 601f)) - vec4<f32>(-417f, global0[_wgslsmith_index_u32(4294967295u, 11u)], -1612f, -380f)))));
    var var_1 = countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.a.a.x, ~u_input.a.x, countOneBits(4294967295u)), func_4(func_2())), ~_wgslsmith_mod_vec3_u32(global1.a.b.xzx, reverseBits(vec3<u32>(u_input.b, 4294967295u, global1.a.b.x)))));
    global1 = Struct_3(Struct_1(var_1.xz, ~(~vec4<u32>(var_1.x, 52827u, u_input.b, global1.a.b.x))));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~select(1827u, var_1.x, false), 11u)] + _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_1.x, 11u)], _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(92557u, 11u)])))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2().d.b.x, ~(~u_input.b)) & global1.a.b.x, 11u)], _wgslsmith_f_op_f32(f32(-1f) * -484f), var_0.x);
    global0 = array<f32, 11>();
    return Struct_3(global1.a);
}

fn func_5(arg_0: Struct_3) -> u32 {
    global0 = array<f32, 11>();
    var var_0 = global1.a.b.xxy;
    global1 = arg_0;
    var var_1 = ~vec4<u32>(~u_input.a.x, ~select(4294967295u, _wgslsmith_div_u32(arg_0.a.a.x, 76004u), false), ~0u, func_2().d.b.x);
    var var_2 = Struct_3(Struct_1(global1.a.a, (func_2().d.b >> (arg_0.a.b % vec4<u32>(32u))) & ~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 19573u, global1.a.a.x, global1.a.a.x), vec4<u32>(u_input.b, 4294967295u, 1u, 9388u))));
    return global1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 11u)]);
    global0 = array<f32, 11>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1578f + global0[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(58873u, 11u)] - -1576f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a.a.x, 11u)] - global0[_wgslsmith_index_u32(19705u, 11u)]), _wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(4294967295u, 11u)]))))), global0[_wgslsmith_index_u32(~func_5(func_1()), 11u)], _wgslsmith_f_op_f32(271f + -1315f));
    var var_2 = global1.a;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, global0[_wgslsmith_index_u32(20893u, 11u)])))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1120f * global0[_wgslsmith_index_u32(0u, 11u)]))), 1f, false)), -1035f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), global1.a.b.xzx), 11u)]))), -298f), 592f);
}

