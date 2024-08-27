struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(17736u, 70275u, 4294967295u, 4294967295u, 0u, 1u, 77740u, 4294967295u, 28375u, 40984u, 6541u, 1u, 137356u, 117271u, 25942u, 6372u, 1u, 1u, 9760u, 1u, 15911u, 68078u, 0u);

var<private> global1: array<f32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> vec2<f32> {
    let var_0 = true && all(vec4<bool>(!any(vec2<bool>(true, false)), !(0i <= u_input.a), firstLeadingBit(u_input.a) <= 8351i, any(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-778f)), -374f), arg_0.wx, vec2<bool>(var_0, false)))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(round(-323f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 580f), vec2<f32>(-234f, arg_0)), _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(arg_0, -1064f, -1266f, 1957f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 691f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1670f, -218f) * vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 23u)], 23u)], 10u)], -377f))))))), -u_input.b.x, Struct_2(Struct_1(1i, vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(~arg_1.x, 23u)])));
    var var_1 = abs(55752u);
    var var_2 = var_0.c.a;
    let var_3 = Struct_3(var_0.a, firstLeadingBit(~firstLeadingBit(_wgslsmith_div_i32(1i, var_2.a))), Struct_2(var_0.c.a));
    let var_4 = ~(arg_1.yy | ~(~select(vec2<u32>(72539u, var_2.c), arg_1.xw, var_3.c.a.b.xw)));
    return var_0.c.a;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = !arg_2.a.b.x;
    let var_1 = _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_2.a.c, 10u)]));
    global1 = array<f32, 10>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(226f * -1300f), _wgslsmith_f_op_f32(f32(-1f) * -1371f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_2.a.c, 10u)], -994f))), !var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1344f, global1[_wgslsmith_index_u32(4294967295u, 10u)]) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, global1[_wgslsmith_index_u32(9533u, 10u)])))), !arg_3.xz)), arg_2.a.a >> (_wgslsmith_dot_vec3_u32(countOneBits(abs(vec3<u32>(34468u, 28478u, 25852u))), max(select(vec3<u32>(1u, arg_0, 1u), vec3<u32>(56759u, global0[_wgslsmith_index_u32(1u, 23u)], 0u), arg_2.a.b.x), ~vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_0, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)]))) % 32u), arg_2);
    global0 = array<u32, 23>();
    return var_2.a;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    global1 = array<f32, 10>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(~(~0u), -vec4<i32>(51694i, u_input.a, -2147483647i, 2147483647i), Struct_2(func_2(750f, vec4<u32>(4294967295u, 1u, 63014u, 4294967295u))), vec3<bool>(true, true, false))))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_add_i32(max(-1647i, u_input.b.x), abs(u_input.a)), _wgslsmith_sub_i32(-23568i, _wgslsmith_div_i32(0i, u_input.b.x))), _wgslsmith_div_vec3_i32(firstTrailingBit(u_input.b.yzx), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.xzx, vec3<i32>(u_input.a, -20975i, u_input.b.x), vec3<i32>(77572i, u_input.b.x, u_input.a)), vec3<i32>(-63279i, u_input.a, 48645i)))), Struct_2(Struct_1(~u_input.b.x, func_2(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(3246u, 10u)])), vec4<u32>(global0[_wgslsmith_index_u32(580u, 23u)], global0[_wgslsmith_index_u32(arg_1.x, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global0[_wgslsmith_index_u32(46091u, 23u)])).b, global0[_wgslsmith_index_u32(4294967295u, 23u)])));
    let var_1 = select(vec2<i32>(0i, -abs(max(u_input.b.x, -23947i))), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-reverseBits(vec2<i32>(-1i, var_0.b)), firstTrailingBit(-u_input.b.wz)), vec2<i32>(abs(-26585i), ~u_input.a) ^ (_wgslsmith_mult_vec2_i32(u_input.b.wy, vec2<i32>(-2147483647i, u_input.a)) >> ((vec2<u32>(62916u, 62424u) >> (arg_1 % vec2<u32>(32u))) % vec2<u32>(32u)))), vec2<bool>(var_0.c.a.b.x, !(any(var_0.c.a.b.wy) & var_0.c.a.b.x)));
    global0 = array<u32, 23>();
    return reverseBits(~global0[_wgslsmith_index_u32(~firstLeadingBit(1u), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((u_input.a | ~(~8369i)) ^ _wgslsmith_sub_i32(min(u_input.b.x ^ 131067i, -929i), u_input.a), !vec4<bool>(false, (2147483647i >> (global0[_wgslsmith_index_u32(1u, 23u)] % 32u)) < 0i, true, false), _wgslsmith_mult_u32(func_1(_wgslsmith_f_op_f32(min(1686f, -881f)), ~vec2<u32>(global0[_wgslsmith_index_u32(65090u, 23u)], 48351u)), 41482u) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(31303u | ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)] % 32u));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, global1[_wgslsmith_index_u32(60095u, 10u)]))) * _wgslsmith_div_vec2_f32(vec2<f32>(-653f, global1[_wgslsmith_index_u32(1u, 10u)]), vec2<f32>(global1[_wgslsmith_index_u32(7622u, 10u)], global1[_wgslsmith_index_u32(var_0.c, 10u)]))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(659f, -621f) * vec2<f32>(global1[_wgslsmith_index_u32(4528u, 10u)], global1[_wgslsmith_index_u32(var_0.c, 10u)]))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(72231u, 10u)])), 1806f)))), min(-15518i, countOneBits(_wgslsmith_add_i32(var_0.a << (79137u % 32u), 1i))), Struct_2(Struct_1(-3891i, vec4<bool>(var_0.b.x, select(var_0.b.x, false, var_0.b.x), true, var_0.b.x), global0[_wgslsmith_index_u32(85983u << (global0[_wgslsmith_index_u32(0u, 23u)] % 32u), 23u)] >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)] % 32u))));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.a.c, 0u, 47791u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c, var_1.c.a.c, var_1.c.a.c), vec3<u32>(0u, 0u, var_0.c), vec3<u32>(18467u, var_0.c, 27082u)))), ~(~var_0.c & min(var_1.c.a.c, global0[_wgslsmith_index_u32(0u, 23u)])), ~_wgslsmith_clamp_u32(59433u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90299u, 23u)], 23u)], var_1.c.a.c, _wgslsmith_mult_u32(var_1.c.a.c, 4294967295u)), var_1.c.a.c), abs(~(~vec4<u32>(var_1.c.a.c, var_0.c, var_1.c.a.c, 1u))) << (firstTrailingBit(abs(vec4<u32>(4294967295u, 22929u, 0u, 76418u))) % vec4<u32>(32u)));
    let var_3 = var_0.b.x;
    var var_4 = var_1.c;
    var var_5 = vec2<u32>(var_4.a.c, _wgslsmith_sub_u32(select(_wgslsmith_div_u32(var_0.c, min(13140u, var_2.x)), _wgslsmith_mod_u32(func_1(var_1.a.x, vec2<u32>(var_4.a.c, 0u)), var_2.x >> (1u % 32u)), !all(vec2<bool>(true, false))), _wgslsmith_mod_u32(var_2.x, ~_wgslsmith_mod_u32(var_2.x, 46101u))));
    global0 = array<u32, 23>();
    global1 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~0i, reverseBits(1083i), u_input.b.x), var_4.a.a), _wgslsmith_clamp_i32(~(-1i), var_1.b & func_2(-479f, vec4<u32>(48158u, 0u, var_1.c.a.c, var_1.c.a.c)).a, countOneBits(_wgslsmith_div_i32(1i, var_4.a.a))), select(abs(var_0.c) <= select(22296u, var_4.a.c, true), true | (false | var_1.c.a.b.x), !any(var_1.c.a.b.ww))), -2147483647i, countOneBits(abs(abs(u_input.b))));
}

