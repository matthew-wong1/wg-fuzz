struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<bool, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<f32> {
    let var_0 = 366f;
    var var_1 = _wgslsmith_mult_vec3_i32(select(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, u_input.b.x), vec3<i32>(1i, u_input.b.x, 5753i)) ^ select(-u_input.b.wyz, _wgslsmith_add_vec3_i32(vec3<i32>(33900i, u_input.b.x, u_input.b.x), vec3<i32>(2147483647i, 1i, u_input.a)), vec3<bool>(true, false, true)), vec3<i32>(abs(-43520i), i32(-1i) * -26009i, _wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 18u)] > 30894u, global1[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(31126u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24024u, 18u)], 18u)], 18u)], 18u)], 18u)]), 31u)], global1[_wgslsmith_index_u32(~4294967295u, 31u)], true))), firstLeadingBit(vec3<i32>(1i, u_input.b.x, -1i)));
    var var_2 = vec2<u32>(14220u, 4294967295u);
    var_1 = vec3<i32>(-2147483647i, u_input.b.x, -var_1.x | -_wgslsmith_sub_i32(~var_1.x, var_1.x));
    var var_3 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(firstTrailingBit(u_input.b.x), ~u_input.b.x), var_1.x, var_1.x) ^ u_input.a, -1i >> (1u % 32u));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - _wgslsmith_f_op_f32(-var_0))), 417f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = Struct_2(1u);
    let var_1 = Struct_5(select(select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_2.x, 31u)], true), vec4<bool>(true, false, all(vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 31u)], true, false)), false || global1[_wgslsmith_index_u32(20838u, 31u)]), select(vec4<bool>(true, true, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(18537u, 31u)], arg_1, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 31u)], arg_1), !global1[_wgslsmith_index_u32(4294967295u, 31u)])), select(select(!vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(40057u, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 31u)], false, global1[_wgslsmith_index_u32(28362u, 31u)], global1[_wgslsmith_index_u32(arg_0, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.a, 31u)], arg_1, true, true)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)], true, arg_1), !vec4<bool>(arg_1, true, arg_1, global1[_wgslsmith_index_u32(arg_0, 31u)]), any(vec4<bool>(arg_1, arg_1, global1[_wgslsmith_index_u32(var_0.a, 31u)], true))), !global1[_wgslsmith_index_u32(31259u, 31u)] & select(false, global1[_wgslsmith_index_u32(arg_2.x, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])), all(!vec4<bool>(arg_1, false, true, false))), Struct_3(29396u != countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, arg_2.x), 18u)]), abs(abs(~vec4<u32>(38042u, 7226u, arg_2.x, 41811u))), Struct_1(!vec4<bool>(true, arg_1, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 18u)], 31u)])), vec4<i32>(2147483647i, u_input.a << (~83331u % 32u), select(0i, u_input.a, global1[_wgslsmith_index_u32(0u, 31u)] && global1[_wgslsmith_index_u32(33755u, 31u)]), 0i | _wgslsmith_dot_vec4_i32(vec4<i32>(-20578i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 31134i, 2147483647i, -62644i))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_3.x)), _wgslsmith_f_op_f32(549f - _wgslsmith_f_op_f32(arg_3.x + -1358f)), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * _wgslsmith_f_op_vec4_f32(func_3()).x))));
    let var_2 = Struct_4(select(vec2<bool>(select(all(vec4<bool>(global1[_wgslsmith_index_u32(38890u, 31u)], true, false, false)), true, true), true), vec2<bool>(false, any(var_1.b.c.a.zw)), vec2<bool>(true, !global1[_wgslsmith_index_u32(abs(21864u), 31u)])));
    var var_3 = Struct_1(vec4<bool>(any(vec3<bool>(arg_1, true, global1[_wgslsmith_index_u32(arg_2.x & var_1.b.b.x, 31u)])), false, !(!(var_2.a.x || true)), firstTrailingBit(var_1.b.d.x) > -_wgslsmith_clamp_i32(u_input.a, -10559i, 0i)));
    var var_4 = Struct_4(var_2.a);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~abs(reverseBits(global0[_wgslsmith_index_u32(54226u, 18u)])), arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(var_1.b.b, vec4<u32>(1u, var_0.a, var_0.a, 48422u)), arg_2.x, 58518u), firstTrailingBit(var_1.b.b.zzz)), _wgslsmith_div_u32(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(0u, 18u)], var_1.b.b.x), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)])))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, 1u), ~arg_0, var_0.a, 57994u), var_1.b.b, ~max(var_1.b.b, vec4<u32>(2172u, global0[_wgslsmith_index_u32(32816u, 18u)], 4294967295u, var_1.b.b.x)))), 18u)];
}

fn func_2() -> bool {
    var var_0 = 33951u | (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(max(vec2<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 68343u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2754u, 18u)], 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)])), _wgslsmith_clamp_vec2_u32(vec2<u32>(39226u, 0u), vec2<u32>(79561u, 30507u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1221u, 18u)], 18u)], global0[_wgslsmith_index_u32(0u, 18u)]))), ~(~vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)]))) << (_wgslsmith_mod_u32(1u, func_4(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43849u, 18u)], 18u)], 18u)], any(vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6787u, 18u)], 18u)], 31u)])), ~vec3<u32>(43999u, global0[_wgslsmith_index_u32(98081u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_f_op_vec4_f32(func_3()))) % 32u));
    var var_1 = select(vec3<bool>(!all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44894u, 18u)], 31u)])), true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(19077u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(127167u, 18u)], 18u)], 18u)], 18u)], 18u)] % 32u)) | ~(~42769u), 18u)], 31u)]), !vec3<bool>(all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84829u, 18u)], 18u)], 18u)], 18u)], 31u)])), all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(64036u, 31u)], false)), all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68028u, 18u)], 31u)], global1[_wgslsmith_index_u32(84058u, 31u)]), vec3<bool>(false, false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(30498u, 31u)], false)))), any(select(select(vec3<bool>(true, true, false), !vec3<bool>(global1[_wgslsmith_index_u32(38749u, 31u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 31u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 31u)], global1[_wgslsmith_index_u32(0u, 31u)])), !select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65702u, 18u)], 31u)], global1[_wgslsmith_index_u32(0u, 31u)], true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76000u, 18u)], 31u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32094u, 18u)], 18u)], 31u)]), vec3<bool>(true, any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(38847u, 31u)], global1[_wgslsmith_index_u32(54685u, 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61868u, 18u)], 31u)])), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(112107u, 18u)], 18u)], 31u)]))));
    global0 = array<u32, 18>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))));
    let var_3 = ~u_input.b;
    return var_3.x > var_3.x;
}

fn func_1() -> Struct_2 {
    var var_0 = select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 18u)], 31u)], global1[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46058u, 18u)], 18u)], abs(0u)), 18u)], 18u)], ~countOneBits(1u), select(false, true, true)), 31u)], any(select(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 31u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13067u, 18u)], 31u)], false, false), true))), select(!select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 31u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56154u, 18u)], 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27653u, 18u)], 18u)], 18u)], 18u)], 31u)], false), vec3<bool>(global1[_wgslsmith_index_u32(55759u, 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 31u)], true), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 31u)], false, true)), vec3<bool>(false, true, false)), select(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75387u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 31u)], true)), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(112819u, 18u)], 31u)], func_2(), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24093u, 18u)], 31u)] || global1[_wgslsmith_index_u32(9258u, 31u)]), false), ~(-u_input.b.x) != ~_wgslsmith_clamp_i32(-2147483647i, -15456i, u_input.a)), false);
    var var_1 = Struct_1(vec4<bool>(select(global1[_wgslsmith_index_u32((43946u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)] % 32u)) ^ ~71828u, 31u)], global1[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(42313u, 18u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3319u, 18u)], 18u)] % 32u)), 31u)], true), !var_0.x, false, u_input.a != u_input.a));
    var_1 = Struct_1(var_1.a);
    let var_2 = Struct_3(false, vec4<u32>(~5402u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(43681u, global0[_wgslsmith_index_u32(4294967295u, 18u)]), ~global0[_wgslsmith_index_u32(124412u, 18u)]), 18u)], 18u)], 18u)]), 218u, 0u), Struct_1(vec4<bool>(u_input.a < 39854i, any(select(vec2<bool>(false, false), vec2<bool>(false, false), var_1.a.x)), global1[_wgslsmith_index_u32(countOneBits(0u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(109988u, 18u)], 18u)], 18u)], 18u)] % 32u)), 31u)], true)), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(~u_input.b.zz, -vec2<i32>(u_input.b.x, u_input.a) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 18u)], 1288u), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16780u, 18u)], 18u)], 18u)], 18u)], 18u)])) % vec2<u32>(32u))), ~u_input.b.x, ~(i32(-1i) * -u_input.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - vec4<f32>(152f, 243f, 852f, -273f)))))));
    var var_3 = vec4<i32>(firstLeadingBit(-min(-71869i, 0i) & var_2.d.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-var_2.d.yxw, vec3<i32>(var_2.d.x, 0i, var_2.d.x)) << (vec3<u32>(countOneBits(1u), _wgslsmith_dot_vec3_u32(var_2.b.yzy, var_2.b.zyx), _wgslsmith_clamp_u32(4294967295u, 4294967295u, var_2.b.x)) % vec3<u32>(32u)), -vec3<i32>(u_input.b.x, -86533i, select(var_2.d.x, var_2.d.x, var_1.a.x))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(max(23192i, -63741i), u_input.b.x, select(0i, 7241i, var_2.c.a.x)), var_2.d.zxw), 1i);
    return Struct_2(~_wgslsmith_mod_u32(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25956u, 18u)], 18u)], global0[_wgslsmith_index_u32(var_2.b.x, 18u)]), 18u)]), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(75461u, 18u)], 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 31>();
    var var_0 = func_1();
    let var_1 = true;
    var_0 = func_1();
    let var_2 = Struct_1(!vec4<bool>(all(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)])), any(!vec4<bool>(var_1, false, var_1, true)), any(vec4<bool>(global1[_wgslsmith_index_u32(78510u, 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 31u)], false, false)), (global0[_wgslsmith_index_u32(0u, 18u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70666u, 18u)], 18u)], 18u)]) != _wgslsmith_mod_u32(var_0.a, global0[_wgslsmith_index_u32(4294967295u, 18u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(-361f)), _wgslsmith_f_op_f32(-196f + 1000f), -391f, _wgslsmith_div_f32(2459f, -601f)), vec4<f32>(_wgslsmith_div_f32(1440f, 504f), -271f, -907f, _wgslsmith_f_op_f32(sign(-338f)))))), ~firstLeadingBit(select(select(var_0.a, 14712u, true), abs(global0[_wgslsmith_index_u32(var_0.a, 18u)]), true)));
}

