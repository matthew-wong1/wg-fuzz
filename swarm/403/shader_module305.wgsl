struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(0u, 4294967295u, 0u, 71256u, 15340u, 1u, 0u, 1u, 0u, 13842u, 31074u, 1454u, 9544u, 69601u, 75278u, 1u, 1u, 60272u, 0u, 41310u);

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.d, 0u, global0[_wgslsmith_index_u32(u_input.d, 20u)], u_input.e) >> (vec4<u32>(u_input.d, arg_0.a, 4294967295u, 1u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_1.d, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)], u_input.d)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, arg_3.a, 72385u), vec4<u32>(0u, global0[_wgslsmith_index_u32(arg_0.a, 20u)], 4294967295u, 64659u)) % vec4<u32>(32u))) ^ vec4<u32>(~arg_0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(58780u, 8019u), ~vec2<u32>(0u, 1u)) ^ ~(~arg_1.a), 0u, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.d, u_input.d, global0[_wgslsmith_index_u32(arg_1.a, 20u)]), vec3<u32>(34591u, 46506u, 90594u) >> (vec3<u32>(arg_3.a, global0[_wgslsmith_index_u32(4294967295u, 20u)], 45543u) % vec3<u32>(32u)))));
    var var_1 = 4294967295u;
    var var_2 = arg_0;
    var_2 = Struct_1(20166u | _wgslsmith_div_u32(var_0.x, ~30148u), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1274f * _wgslsmith_f_op_f32(1505f - arg_1.c)) - _wgslsmith_div_f32(-130f, -473f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)) - _wgslsmith_f_op_f32(1437f * 289f))), _wgslsmith_dot_vec3_u32(var_0.zxw, select(vec3<u32>(abs(21146u), abs(u_input.d), 4294967295u), var_0.yyz ^ _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, 0u, 6474u), vec3<u32>(4294967295u, 4294967295u, 53818u)), true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1184f, 1083f))), arg_1.c)), _wgslsmith_f_op_f32(sign(arg_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1657f)));
    return !select(!global1.xw, vec2<bool>(all(!vec4<bool>(true, global1.x, true, global1.x)), true), global1.x);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(0u, arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3069f) - _wgslsmith_div_f32(arg_0.c, 114f))))), 46563u);
    var var_1 = u_input.e;
    let var_2 = select(func_3(arg_0, arg_0, u_input.b, Struct_1(~var_0.a, arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(-arg_0.c)), (28015u & u_input.e) | ~u_input.e)), vec2<bool>(!global1.x, select(true & (var_0.c <= 162f), any(vec4<bool>(true, global1.x, global1.x, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.d, var_0.d), vec3<u32>(19611u, 4294967295u, u_input.e)) < 34727u)), global1.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.c)))), 461f)));
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(min(4294967295u, 1u), countOneBits(arg_0.d), 1u, firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 20u)], 20u)])) | (~vec4<u32>(u_input.d, u_input.e, 32321u, 46701u) | vec4<u32>(global0[_wgslsmith_index_u32(2390u, 20u)], global0[_wgslsmith_index_u32(8201u, 20u)], u_input.d, 47611u)), vec4<u32>(_wgslsmith_mult_u32(u_input.e, 1u), ~arg_0.d, _wgslsmith_div_u32(var_0.d, 52079u), (4294967295u ^ var_0.d) | 1574u)), 0i, _wgslsmith_f_op_f32(var_0.c * var_0.c), firstLeadingBit(~select(~u_input.d, ~12966u, var_2.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(step(-360f, arg_0.c)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global1 = !vec4<bool>(!any(!vec3<bool>(global1.x, false, arg_1)), global1.x, true, func_3(Struct_1(global0[_wgslsmith_index_u32(0u, 20u)], -14747i, arg_0, 0u), arg_2, firstTrailingBit(1i), Struct_1(0u, 2147483647i, arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13695u, 20u)], 20u)], 20u)])).x && global1.x);
    var var_0 = arg_2;
    var var_1 = max(vec4<u32>(~_wgslsmith_add_u32(u_input.e, ~0u), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(global0[_wgslsmith_index_u32(arg_2.a, 20u)], 1u, arg_2.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(50148u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], var_0.a), vec3<u32>(u_input.e, global0[_wgslsmith_index_u32(u_input.e, 20u)], 13769u), vec3<u32>(22364u, 0u, arg_2.a)), global1.x), (vec3<u32>(1u, 0u, u_input.d) >> (vec3<u32>(global0[_wgslsmith_index_u32(16049u, 20u)], 1u, var_0.a) % vec3<u32>(32u))) & vec3<u32>(47856u, global0[_wgslsmith_index_u32(u_input.d, 20u)], var_0.d)), ~global0[_wgslsmith_index_u32(arg_2.d, 20u)], var_0.d), abs(~firstTrailingBit(vec4<u32>(3125u, var_0.a, 0u, 4294967295u))) ^ _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d, 54128u, u_input.e, u_input.d), vec4<u32>(21307u, u_input.d, 34145u, 102846u)), firstTrailingBit(vec4<u32>(4294967295u, 41457u, 4294967295u, 1u))));
    var var_2 = Struct_1(~_wgslsmith_dot_vec3_u32(var_1.wwz, min(vec3<u32>(4294967295u, var_0.d, global0[_wgslsmith_index_u32(arg_2.a, 20u)]), var_1.ywy)), -23991i << (var_0.a % 32u), _wgslsmith_f_op_f32(trunc(346f)), ~0u);
    let var_3 = Struct_1(var_1.x, _wgslsmith_sub_i32(~min(-58590i, 2147483647i) << (firstTrailingBit(~49002u) % 32u), min(var_0.b, 0i)), var_2.c, _wgslsmith_mod_u32(~(~(1u << (u_input.d % 32u))), 4294967295u));
    return Struct_1(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(130648u, arg_2.a, global0[_wgslsmith_index_u32(u_input.d, 20u)], 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.d, global0[_wgslsmith_index_u32(4294967295u, 20u)], var_1.x, 4294967295u), vec4<u32>(arg_2.a, var_3.d, 4294967295u, arg_2.a))), var_1.x)), -(u_input.b | u_input.c), _wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-405f, -1412f, true)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_1(18112u, var_3.b, arg_0, u_input.d))))))), 1u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 20>();
    var var_0 = arg_0;
    var var_1 = 220f;
    global0 = array<u32, 20>();
    var_0 = func_4(_wgslsmith_f_op_f32(func_2(arg_0)), true, Struct_1(max(max(59893u, arg_0.a), ~_wgslsmith_clamp_u32(33084u, 0u, 0u)), reverseBits(-u_input.a.x), arg_0.c, 0u));
    return Struct_1(~1u, abs(var_0.b), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))), global1.x, func_4(func_4(_wgslsmith_f_op_f32(-arg_0.c), any(vec4<bool>(true, global1.x, global1.x, global1.x)), arg_0).c, global1.x, func_4(_wgslsmith_f_op_f32(f32(-1f) * -104f), var_0.c >= 1000f, func_4(660f, global1.x, arg_0)))).c, arg_0.a);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = vec4<bool>(true, false, all(select(!global1.wz, global1.yz, vec2<bool>(true, true))) | !any(vec3<bool>(true, false, global1.x)), func_4(1000f, true, arg_0).d == _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 1u), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32733u, 20u)], 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_0.d), vec4<u32>(arg_0.a, arg_0.a, global0[_wgslsmith_index_u32(77448u, 20u)], 7112u))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c)) - _wgslsmith_div_f32(arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(821f)), 189f)));
    let var_1 = -202f;
    var var_2 = ~vec4<i32>(u_input.c, 9721i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.c), vec3<i32>(u_input.b, arg_0.b, 1816i)) << ((u_input.e ^ _wgslsmith_mult_u32(0u, 1u)) % 32u), -(~0i));
    global0 = array<u32, 20>();
    return func_1(arg_0);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    var var_0 = func_5(func_5(Struct_1(4294967295u, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, u_input.c), u_input.a.wy, vec2<bool>(global1.x, global1.x)), u_input.a.zz), 752f, global0[_wgslsmith_index_u32(0u, 20u)] & abs(0u))));
    let var_1 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(abs(19063u), arg_0.a, _wgslsmith_add_u32(0u, 22447u), arg_0.a), vec4<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, arg_1.a), global0[_wgslsmith_index_u32(~arg_1.d, 20u)]), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 37347u), var_0.a), global0[_wgslsmith_index_u32(arg_0.a, 20u)]));
    global1 = vec4<bool>(any(select(!(!vec4<bool>(global1.x, false, true, global1.x)), select(!vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, true, true, true), true), true)), true, false, true);
    return firstTrailingBit(arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 395f;
    global1 = !vec4<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, true)) || false, false || !(-2147483647i <= u_input.b), true, global1.x);
    var var_1 = func_6(func_5(func_1(Struct_1(0u, 2147483647i, var_0, reverseBits(72027u)))), func_4(495f, global1.x, func_1(func_5(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], u_input.b, 4034f, 1u)))));
    global0 = array<u32, 20>();
    var var_2 = abs(~_wgslsmith_mod_vec3_i32(-(u_input.a.wzy & u_input.a.zzx), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.c, u_input.a.x, u_input.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(27406i, u_input.b, -2147483647i), vec3<i32>(39479i, 1i, u_input.c), vec3<i32>(74147i, 21475i, u_input.a.x)))));
    let var_3 = vec3<u32>(~(~_wgslsmith_mult_u32(u_input.d, u_input.d)) & global0[_wgslsmith_index_u32(26880u, 20u)], 4294967295u, 22589u);
    var var_4 = var_3.x;
    let var_5 = Struct_1(global0[_wgslsmith_index_u32(~54945u, 20u)], _wgslsmith_sub_i32(func_5(func_4(var_0, true, func_5(Struct_1(var_3.x, var_2.x, var_0, u_input.d)))).b, select(~(-var_2.x), ~(~(-1i)), true)), func_1(func_1(Struct_1(1u, -8i, -342f, _wgslsmith_mult_u32(21356u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77547u, 20u)], 20u)], 20u)])))).c, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_0, -2080f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(-974f, global1.x, var_5).c))), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) << (0u % 32u), -var_5.b, abs(var_5.b) | _wgslsmith_add_i32(var_5.b, -11225i)) ^ ~vec3<i32>(func_6(Struct_1(var_3.x, var_2.x, var_5.c, 29559u), Struct_1(1u, u_input.a.x, var_5.c, u_input.d)), var_2.x, _wgslsmith_mod_i32(1499i, var_2.x)));
}

