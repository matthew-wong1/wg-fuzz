struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(2160f, 232f), vec2<bool>(true, false), Struct_1(510f, vec2<bool>(true, true)));

var<private> global2: array<f32, 15> = array<f32, 15>(246f, -593f, -1000f, -1124f, -1290f, -553f, 512f, -2640f, 970f, 1513f, 189f, -960f, 483f, -237f, -958f);

var<private> global3: array<bool, 31> = array<bool, 31>(false, true, false, true, false, false, false, true, false, true, false, false, true, true, true, false, true, true, true, false, false, true, false, false, false, false, false, true, false, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(min(global1.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -952f), global1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-904f + 1027f), _wgslsmith_f_op_f32(f32(-1f) * -101f), true))))), vec2<bool>(!global1.b.x, true != global3[_wgslsmith_index_u32(1u, 31u)]), Struct_1(global1.c.a, !select(global1.c.b, global1.b, select(vec2<bool>(true, true), global1.b, global3[_wgslsmith_index_u32(56713u, 31u)]))));
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(reverseBits(i32(-1i) * -12619i), abs(0i)), 32812i, 3981i), ~reverseBits(_wgslsmith_mod_i32(-27548i, u_input.a)));
    global3 = array<bool, 31>();
    var var_2 = select(!select(vec4<bool>(!global3[_wgslsmith_index_u32(80340u, 31u)], var_1.x == u_input.a, var_0.c.b.x, false == global1.b.x), vec4<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 31u)], true, 81796u <= u_input.b.x, all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 31u)], false, var_0.c.b.x, false))), vec4<bool>(true, global1.c.b.x, any(var_0.b), all(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], true)))), select(vec4<bool>(all(vec3<bool>(true, true, true)), all(global1.c.b), !global1.b.x | true, true), !(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], global1.b.x, true, global1.b.x)), true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)] & (var_0.c.b.x || true), true, var_0.b.x, all(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], true, global1.c.b.x, global1.c.b.x), vec4<bool>(var_0.b.x, false, var_0.b.x, true), vec4<bool>(false, var_0.c.b.x, true, global3[_wgslsmith_index_u32(1u, 31u)])))));
    var_2 = select(select(select(!(!vec4<bool>(false, false, true, global1.b.x)), vec4<bool>(true, 4294967295u != u_input.b.x, true, false), any(vec4<bool>(false, true, false, false))), !(!(!vec4<bool>(global1.c.b.x, false, true, false))), vec4<bool>(global3[_wgslsmith_index_u32(~(~u_input.c.x), 31u)], _wgslsmith_sub_u32(u_input.b.x, 1u) != select(4294967295u, 35127u, var_2.x), all(!vec4<bool>(var_2.x, false, true, true)), true)), select(vec4<bool>(true, -61870i != u_input.a, (global3[_wgslsmith_index_u32(u_input.c.x, 31u)] && global3[_wgslsmith_index_u32(u_input.d, 31u)]) == var_0.c.b.x, all(vec4<bool>(true, false, false, true))), select(select(!vec4<bool>(var_0.c.b.x, var_2.x, var_2.x, true), !vec4<bool>(global1.b.x, false, var_0.c.b.x, global1.b.x), true), vec4<bool>(!global1.c.b.x, select(var_2.x, var_0.c.b.x, global3[_wgslsmith_index_u32(1u, 31u)]), 1429f == global2[_wgslsmith_index_u32(0u, 15u)], !var_0.b.x), vec4<bool>(true, any(vec3<bool>(false, true, false)), var_2.x, var_0.b.x)), vec4<bool>(true, true, false, all(vec3<bool>(true, true, var_2.x)))), select(vec4<bool>(select(u_input.a, arg_0, global3[_wgslsmith_index_u32(4294967295u, 31u)]) <= -40918i, global3[_wgslsmith_index_u32(1u, 31u)], true, global1.b.x), !(!vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.d, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)])), var_2.x | global3[_wgslsmith_index_u32(~u_input.b.x, 31u)]));
    return global1.a;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.a))))), !(!(!select(arg_0, arg_0, global1.b))), global1.c);
    let var_1 = !global1.c.b.x;
    let var_2 = global2[_wgslsmith_index_u32(1u, 15u)];
    let var_3 = Struct_1(1278f, var_0.b);
    global0 = firstTrailingBit(u_input.c.x);
    return countOneBits(firstTrailingBit(55453u));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = -u_input.a >= (u_input.a >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c.x << (u_input.b.x % 32u), reverseBits(1u)), u_input.d >> (func_2(global1.b) % 32u)) % 32u));
    var var_1 = _wgslsmith_dot_vec3_u32(~(~((vec3<u32>(40234u, 74023u, 26600u) | vec3<u32>(u_input.c.x, 1u, u_input.b.x)) << (select(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.d), global1.b.x) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(7512u ^ u_input.c.x), ~select(u_input.d, 1u, false), u_input.d), abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 28741u) >> (vec3<u32>(u_input.b.x, u_input.c.x, 98114u) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, u_input.c.x, 3534u)))));
    let var_2 = min(_wgslsmith_clamp_vec2_i32(vec2<i32>(18877i, 19631i), -(~abs(vec2<i32>(u_input.a, 2147483647i))), vec2<i32>(abs(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-14880i, 2147483647i, u_input.a, -574i), vec4<i32>(u_input.a, 0i, 23560i, -10906i))) ^ _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-30485i, u_input.a)), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), ~vec2<i32>(0i, u_input.a)) | -(vec2<i32>(19344i, -1i) | vec2<i32>(u_input.a, -1i)), ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(1i, -1i)), select(vec2<i32>(-1i, 43921i), vec2<i32>(1i, -45682i), vec2<bool>(global3[_wgslsmith_index_u32(1u, 31u)], global1.c.b.x))), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -52798i)), -1i)));
    let var_3 = global1.c;
    var var_4 = Struct_2(global1.a, select(vec2<bool>(any(!vec2<bool>(var_3.b.x, global1.c.b.x)), true || global1.b.x), vec2<bool>(global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(u_input.b.x, 0u), u_input.b.x), 31u)]), false), global1.c);
    return ~func_2(global1.b);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: i32) -> vec3<bool> {
    let var_0 = true;
    global3 = array<bool, 31>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1778f, -267f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1172f, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec2_f32(arg_2.yz - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1442f, -113f)))), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 31u)], false), select(global1.c.b, global1.c.b, vec2<bool>(global3[_wgslsmith_index_u32(arg_1.x, 31u)], false)), !vec2<bool>(global1.c.b.x, true)))), vec2<bool>(global1.b.x, true))), vec2<bool>(global1.c.b.x, any(select(vec4<bool>(false, var_0, true, global3[_wgslsmith_index_u32(25597u, 31u)]), select(vec4<bool>(false, false, var_0, global3[_wgslsmith_index_u32(arg_1.x, 31u)]), vec4<bool>(global3[_wgslsmith_index_u32(0u, 31u)], global1.c.b.x, global3[_wgslsmith_index_u32(u_input.d, 31u)], false), global3[_wgslsmith_index_u32(arg_1.x, 31u)]), true))), global1.c);
    global2 = array<f32, 15>();
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1280f)))), 1030f), vec2<bool>(all(select(vec3<bool>(false, var_0, var_1.b.x), select(vec3<bool>(var_0, false, global1.c.b.x), vec3<bool>(var_1.b.x, var_1.b.x, false), var_0), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], var_1.c.b.x, false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], true, false), var_0))), !var_1.b.x), var_1.c);
    return !(!select(select(vec3<bool>(global1.c.b.x, var_0, true), vec3<bool>(var_1.b.x, false, false), var_2.c.b.x), !select(vec3<bool>(var_1.c.b.x, var_0, global1.c.b.x), vec3<bool>(global3[_wgslsmith_index_u32(1u, 31u)], var_1.c.b.x, true), vec3<bool>(var_2.b.x, false, var_0)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 15>();
    global3 = array<bool, 31>();
    global3 = array<bool, 31>();
    let var_0 = func_4(32645i, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.c.x), vec3<u32>(u_input.d, 4294967295u, u_input.b.x)) >> (vec3<u32>(~u_input.c.x, func_1(global1.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(u_input.c.x, u_input.b.x, u_input.d))) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_div_f32(-1856f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.c.x, 15u)])), 1022f))), global1.c.a, global1.a.x), abs(firstLeadingBit(_wgslsmith_add_i32(~u_input.a, u_input.a))));
    var var_1 = any(select(select(vec4<bool>(var_0.x, all(vec4<bool>(false, global1.b.x, false, global3[_wgslsmith_index_u32(u_input.c.x, 31u)])), all(vec4<bool>(global1.c.b.x, false, false, global3[_wgslsmith_index_u32(1u, 31u)])), false || global1.b.x), select(select(vec4<bool>(var_0.x, global3[_wgslsmith_index_u32(1u, 31u)], var_0.x, var_0.x), vec4<bool>(global1.b.x, false, true, global3[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec4<bool>(false, global1.c.b.x, global3[_wgslsmith_index_u32(u_input.c.x, 31u)], true)), !vec4<bool>(true, var_0.x, false, false), false), true), select(select(select(vec4<bool>(false, true, true, global1.c.b.x), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 31u)], var_0.x, global1.b.x), true), vec4<bool>(true, global1.b.x, true, false), any(vec4<bool>(true, false, global3[_wgslsmith_index_u32(14009u, 31u)], global3[_wgslsmith_index_u32(u_input.d, 31u)]))), !(!vec4<bool>(false, global3[_wgslsmith_index_u32(1302u, 31u)], true, false)), !(40958i >= u_input.a)), global3[_wgslsmith_index_u32(min(~u_input.c.x, ~(~u_input.c.x)), 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(1u, u_input.b.x, _wgslsmith_sub_u32(func_1(global2[_wgslsmith_index_u32(u_input.d, 15u)]), ~82368u))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2217f + -968f) * -230f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(70042u, u_input.b.x), 15u)] * global1.a.x), !var_0.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d ^ u_input.b.x), 15u)])), firstLeadingBit(~reverseBits(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)) << (~(~vec4<u32>(u_input.d, 49576u, u_input.d, u_input.d)) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~abs(u_input.b.x), 18833u), 15u)]);
}

