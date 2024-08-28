struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<f32>(519f, 1745f, 577f), false, vec4<i32>(0i, 89669i, i32(-2147483648), 2147483647i), vec2<u32>(42331u, 1u), vec2<i32>(2147483647i, -24241i)), Struct_1(vec3<f32>(420f, -624f, 122f), false, vec4<i32>(-1i, -12892i, 1i, 37709i), vec2<u32>(1033u, 872u), vec2<i32>(i32(-2147483648), 8477i)));

var<private> global2: array<f32, 29>;

var<private> global3: f32 = 1593f;

var<private> global4: Struct_3 = Struct_3(vec4<u32>(4294967295u, 6079u, 87720u, 17335u), vec3<u32>(4294967295u, 23849u, 0u), -14227i, 15648u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> u32 {
    var var_0 = -1000f;
    var var_1 = vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(global4.b), _wgslsmith_div_vec3_u32(global4.b, global4.b)), 29u)]) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(888f, -1185f))))), -167f, global2[_wgslsmith_index_u32(global4.b.x, 29u)]);
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1235f);
    let var_2 = 948f;
    global3 = var_1.x;
    return global4.d;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(arg_2.b.a, arg_2.b.b, arg_2.b.c & -max(firstLeadingBit(arg_2.b.c), _wgslsmith_div_vec4_i32(arg_2.b.c, vec4<i32>(2147483647i, arg_2.b.e.x, u_input.a.x, arg_2.b.c.x))), ~firstTrailingBit(arg_0.zx), select(arg_2.b.c.xz, arg_2.b.e, false));
    var var_1 = _wgslsmith_dot_vec3_i32(-min(~select(arg_2.b.c.wyx, arg_2.b.c.xwx, vec3<bool>(arg_2.b.b, var_0.b, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.e.x, arg_2.b.c.x, 1i), vec3<i32>(var_0.c.x, u_input.a.x, -2147483647i))), ~(-vec3<i32>(arg_1.c, 80229i, -31021i)) ^ ~arg_2.b.c.zxy);
    global2 = array<f32, 29>();
    let var_2 = 12659u;
    let var_3 = ~reverseBits(global4.a.x);
    return select(!select(!select(vec3<bool>(true, false, arg_2.b.b), vec3<bool>(true, var_0.b, false), true), select(!vec3<bool>(var_0.b, arg_2.b.b, var_0.b), vec3<bool>(false, false, arg_2.b.b), select(vec3<bool>(false, true, arg_2.b.b), vec3<bool>(arg_2.b.b, false, arg_2.b.b), true)), all(select(global0[_wgslsmith_index_u32(10242u, 20u)], global0[_wgslsmith_index_u32(arg_2.c.x, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]))), !vec3<bool>(false, all(vec3<bool>(arg_2.b.b, var_0.b, arg_2.b.b)), any(vec2<bool>(true, false)) || arg_2.b.b), arg_2.b.b || arg_2.b.b);
}

fn func_4(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, global2[_wgslsmith_index_u32(global4.b.x, 29u)], global2[_wgslsmith_index_u32(global4.a.x, 29u)])) - vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(40723u, 29u)]), global2[_wgslsmith_index_u32(4294967295u, 29u)], -1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-878f, global2[_wgslsmith_index_u32(global4.a.x, 29u)]), global2[_wgslsmith_index_u32(global4.a.x, 29u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4.a.x, 29u)] * -1202f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(957f, global2[_wgslsmith_index_u32(global4.d, 29u)], global2[_wgslsmith_index_u32(53810u, 29u)])) - vec3<f32>(2769f, -584f, global2[_wgslsmith_index_u32(global4.b.x, 29u)])))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.a.x, 29u)]) - _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global4.d, 29u)]))))) <= _wgslsmith_f_op_f32(-241f * global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(global4.d, global4.a.x), 29u)]), _wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, -1i, _wgslsmith_div_i32(u_input.a.x, global4.c), min(u_input.a.x, 0i)), min(vec4<i32>(-2769i, u_input.a.x, -44180i, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -74712i, -1i, 20718i), vec4<i32>(global4.c, 1i, u_input.a.x, -2147483647i))), vec4<bool>(arg_0.x, u_input.a.x < -2147483647i, global4.c > global4.c, !arg_0.x)), vec4<i32>(min(u_input.a.x, u_input.a.x) ^ 1i, 0i, min(44395i, -1i), -36860i & u_input.a.x)), global4.a.wy, abs(-vec2<i32>(~u_input.a.x, ~u_input.a.x)));
    var var_1 = firstTrailingBit(~max(global4.b.x, global4.d));
    let var_2 = -abs(-var_0.c.zww);
    let var_3 = !global0[_wgslsmith_index_u32(global4.a.x, 20u)];
    let var_4 = Struct_3(~(~global4.a), global4.a.zxy, abs(-global4.c), 1u);
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(~(~global4.a.x) | 76734u, 29u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4.b.x, 29u)] - 960f) * _wgslsmith_f_op_f32(972f + -1000f)), global2[_wgslsmith_index_u32(global4.b.x, 29u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(2321u, 29u)])), global2[_wgslsmith_index_u32(func_2(), 29u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global4.a.x, 29u)], global2[_wgslsmith_index_u32(54416u, 29u)], -963f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2[_wgslsmith_index_u32(global4.a.x, 29u)], global2[_wgslsmith_index_u32(81146u, 29u)], global2[_wgslsmith_index_u32(global4.b.x, 29u)])))), vec3<f32>(_wgslsmith_f_op_f32(429f + -381f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(43748u, 29u)] - -964f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(21490u, 29u)])))));
    let var_1 = ~(~(-(~(vec4<i32>(-5873i, 0i, u_input.a.x, global4.c) << (global4.a % vec4<u32>(32u))))));
    let var_2 = func_4(select(func_3(~_wgslsmith_mult_vec3_u32(global4.a.xwy, vec3<u32>(0u, global4.b.x, 32221u)), Struct_3(vec4<u32>(1u, global4.b.x, global4.a.x, global4.a.x), _wgslsmith_clamp_vec3_u32(global4.a.yyz, global4.b, global4.a.xxx), 1i, ~8547u), Struct_2(~global4.a.xyz, global1[_wgslsmith_index_u32(global4.a.x, 2u)], global4.a, 1u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(783f, -1000f, -764f, var_0.x)))))), func_3(global4.b >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.a.x, global4.d, global4.a.x), vec3<u32>(4294967295u, global4.d, 4294967295u), vec3<u32>(17613u, global4.b.x, global4.d)) % vec3<u32>(32u)), Struct_3(vec4<u32>(global4.a.x, 54909u, global4.d, global4.d), reverseBits(global4.a.yzx), -10935i | global4.c, ~1u), Struct_2(~vec3<u32>(6319u, 4294967295u, 4294967295u), global1[_wgslsmith_index_u32(firstTrailingBit(82202u), 2u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.a.x, global4.d, global4.b.x, 0u), global4.a, vec4<u32>(global4.b.x, global4.b.x, 4294967295u, global4.a.x)), 1u), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1000f + -543f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.a.x, 29u)]), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 29u)], 546f, true)))), func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.b.x, global4.a.x, global4.d) >> (global4.b % vec3<u32>(32u)), reverseBits(global4.a.yyx)), Struct_3(global4.a, vec3<u32>(31151u, global4.d, 0u) ^ vec3<u32>(33023u, 50171u, global4.b.x), countOneBits(u_input.a.x), global4.a.x), Struct_2(select(vec3<u32>(19055u, global4.d, global4.b.x), vec3<u32>(34763u, global4.b.x, global4.a.x), vec3<bool>(false, true, true)), global1[_wgslsmith_index_u32(max(global4.a.x, global4.b.x), 2u)], vec4<u32>(global4.d, 4294967295u, 65979u, global4.b.x) | global4.a, global4.a.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(64916u, 29u)], -226f, var_0.x, var_0.x), vec4<f32>(var_0.x, 1226f, 120f, -1141f))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-1128f, -654f, var_2.x)), _wgslsmith_f_op_f32(trunc(var_0.x)), 674f, -1736f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(global4.b.x, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], var_0.x), vec4<f32>(global2[_wgslsmith_index_u32(global4.a.x, 29u)], var_0.x, 259f, global2[_wgslsmith_index_u32(global4.d, 29u)]), vec4<bool>(false, false, var_2.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -1077f, -562f, var_0.x)))), vec4<bool>(true, true, true, true))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 29u)], -843f, global2[_wgslsmith_index_u32(4294967295u, 29u)], -1165f), vec4<f32>(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 29u)], 101f, 1001f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global2[_wgslsmith_index_u32(20008u, 29u)], global2[_wgslsmith_index_u32(global4.a.x, 29u)], var_0.x) * vec4<f32>(1122f, 1161f, global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(1954u, 29u)])))))));
    var var_4 = global4.d > (~(~_wgslsmith_sub_u32(22849u, global4.d)) ^ 0u);
    return global1[_wgslsmith_index_u32(global4.a.x, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global4 = Struct_3(~abs(~(global4.a << (global4.a % vec4<u32>(32u)))), vec3<u32>(var_0.d.x, ~select(abs(var_0.d.x), var_0.d.x, true), ~4294967295u), ~abs(countOneBits(50538i)), firstLeadingBit(global4.b.x));
    var var_1 = 1982f;
    let var_2 = 1606f;
    var var_3 = Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.b.x, global4.b.x, 9013u), global4.a.yyy) ^ ~vec3<u32>(1u, 55739u, var_0.d.x), global4.a.yyz), func_1(), countOneBits(~vec4<u32>(66393u, var_0.d.x >> (0u % 32u), firstLeadingBit(11298u), _wgslsmith_sub_u32(var_0.d.x, global4.b.x))), _wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 9464u), firstLeadingBit(var_0.d))), abs(~23410u) & global4.b.x));
    var var_4 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(78132u, ~1u, global4.b.x), ~min(25712u, 1u), firstTrailingBit(~global4.d), ~(~var_0.d.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(global4.a.yxx, vec3<u32>(4294967295u, var_3.c.x, 0u) << (vec3<u32>(1u, global4.a.x, var_3.d) % vec3<u32>(32u))), 24911u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.d.x, 4294967295u), ~0u), _wgslsmith_clamp_u32(var_0.d.x, var_3.b.d.x, 827u) & 34540u)), vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(~var_0.d.x), ~4294967295u, _wgslsmith_div_u32(~var_3.d, firstTrailingBit(var_0.d.x))), 49378u, global4.b.x | 19322u), global4.c, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.d.x ^ 33762u, 0u), 106157u));
    global2 = array<f32, 29>();
    var var_5 = Struct_2(var_4.a.wzz, func_1(), vec4<u32>(var_3.d, ~4294967295u, ~(~_wgslsmith_div_u32(var_0.d.x, global4.b.x)), var_4.b.x), 69306u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_3.b.a.yz, var_0.a.zz)) * _wgslsmith_f_op_vec2_f32(-var_0.a.zx)), _wgslsmith_f_op_vec2_f32(-var_3.b.a.zz)))), var_3.b.a.x, ~(~var_5.d), ~var_3.c.yzx, var_4.d);
}

