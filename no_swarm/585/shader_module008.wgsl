struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(49312u, 26291u, 27438u, 4294967295u, 4294967295u, 0u, 1u, 38805u, 41952u, 1u, 37183u, 31634u, 1u, 21931u, 129u, 20582u, 1u, 0u, 35706u, 0u, 11668u, 38572u, 1u, 1u, 0u, 4294967295u, 18040u, 0u, 1u, 51251u, 75876u);

var<private> global1: Struct_1;

var<private> global2: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = -717f;
    var var_1 = _wgslsmith_f_op_f32(154f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-667f * -2815f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1790f)))));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)));
    var var_2 = Struct_1(!(!arg_0.a), arg_1.b, global1.c);
    global0 = array<u32, 31>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1344f * _wgslsmith_f_op_f32(f32(-1f) * -882f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1045f, _wgslsmith_f_op_f32(f32(-1f) * -359f))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(true, any(select(vec2<bool>(all(vec4<bool>(global1.a, false, false, arg_2.a)), !arg_2.a), select(!vec2<bool>(true, arg_0.a), select(vec2<bool>(false, arg_2.a), vec2<bool>(arg_0.a, false), arg_2.a), all(vec3<bool>(global1.a, global1.a, global1.a))), false)), arg_0.a, false);
    var var_1 = u_input.c.x;
    var var_2 = arg_2;
    var var_3 = arg_2;
    let var_4 = Struct_1(true, ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, global1.b.x, global1.b.x, var_2.b.x) | vec4<i32>(1i, u_input.c.x, -1i, arg_0.b.x), var_2.b)), firstLeadingBit(~global1.c));
    return Struct_1(false, var_3.b, min(u_input.d, var_4.c));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    return arg_3.x;
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-136f + 259f), _wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_div_f32(1000f, -1352f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(662f + 235f), 839f, _wgslsmith_f_op_f32(sign(-1228f))))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(all(vec4<bool>(false, global1.a, true, false)) || true, -_wgslsmith_sub_vec4_i32(u_input.b, u_input.b), u_input.d & 4294967295u), global1.a, func_3(Struct_1(u_input.b.x <= global1.b.x, vec4<i32>(0i, -2147483647i, -20402i, -2147483647i), _wgslsmith_sub_u32(u_input.d, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(true, global1.b, u_input.d), Struct_1(global1.a, vec4<i32>(-32699i, -2147483647i, u_input.c.x, 49424i), 30018u), vec4<bool>(false, global1.a, false, true)))), Struct_1(false, global1.b, 75u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1505f, var_0.x, var_0.x), var_0)), var_0)))))));
    var var_1 = select(select(!vec3<bool>(global1.a, true, global1.a), select(vec3<bool>(true, all(vec3<bool>(global1.a, false, false)), true), select(select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(false, false, false), global1.a), vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, global1.a, global1.a)), true & (-935f > var_0.x)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, global1.a), vec3<bool>(true, false, global1.a), false), !vec3<bool>(global1.a, true, global1.a)))), vec3<bool>(true, true, true), !select(vec3<bool>(global1.a, !global1.a, global1.a), select(vec3<bool>(global1.a, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false & global1.a, u_input.b.x < global1.b.x, global1.a)));
    var_1 = vec3<bool>(_wgslsmith_sub_i32(global1.b.x, -31060i >> (func_3(Struct_1(false, vec4<i32>(25349i, u_input.b.x, u_input.b.x, u_input.c.x), global1.c), -157f, Struct_1(var_1.x, vec4<i32>(0i, 2147483647i, u_input.b.x, -57910i), u_input.d)).c % 32u)) < abs(global1.b.x), global0[_wgslsmith_index_u32(u_input.d, 31u)] >= ~(~19736u), all(!(!(!vec3<bool>(false, var_1.x, true)))));
    global0 = array<u32, 31>();
    return -min(global1.b, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -33275i, 0i, global1.b.x), u_input.b, vec4<i32>(-2147483647i, global1.b.x, u_input.c.x, u_input.b.x)), vec4<i32>(u_input.c.x, u_input.b.x, 25833i, u_input.c.x)) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c, global1.c, 17639u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37541u, 31u)], 31u)]), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global1.c, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global1.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global1.c, u_input.a, 80357u), vec4<u32>(global1.c, 19904u, 0u, u_input.a)), vec4<u32>(85296u, 0u, 65922u, global0[_wgslsmith_index_u32(global1.c, 31u)]) | vec4<u32>(4294967295u, global1.c, global0[_wgslsmith_index_u32(14648u, 31u)], global0[_wgslsmith_index_u32(global1.c, 31u)])) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = select(any(vec4<bool>(global1.a, true, ~4294967295u <= _wgslsmith_dot_vec4_u32(vec4<u32>(50457u, global1.c, arg_0.c, 0u), vec4<u32>(u_input.d, 107542u, 4294967295u, 1u)), true)), false, global1.a);
    var var_1 = arg_0;
    var_1 = func_3(Struct_1(false, var_1.b, ~arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -480f), Struct_1(any(select(select(vec2<bool>(var_0, global1.a), vec2<bool>(var_1.a, true), vec2<bool>(global1.a, false)), !vec2<bool>(arg_0.a, var_1.a), global1.c >= 4294967295u)), firstTrailingBit(~u_input.b), 0u));
    var_1 = Struct_1(func_3(Struct_1(!(!var_1.a), _wgslsmith_sub_vec4_i32(arg_0.b, min(var_1.b, vec4<i32>(36622i, -12663i, -8978i, -2147483647i))), 1u), -1089f, func_3(arg_0, 1540f, arg_0)).a, u_input.b, ~_wgslsmith_add_u32((global1.c >> (4294967295u % 32u)) >> (~6761u % 32u), abs(4294967295u)));
    let var_2 = global1.b.x;
    return 7805i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(!global1.a, _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global1.b, vec4<i32>(u_input.c.x, global1.b.x, 48140i, u_input.b.x)), abs(global1.b))), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, global1.b >> (vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], 1u, u_input.d, 0u) % vec4<u32>(32u))), 1i, u_input.b.x, -min(1i, 1i)), -countOneBits(~u_input.b)), global1.c);
    var var_0 = !vec4<bool>(min(~u_input.b.x, 3240i) <= ~2104i, any(vec4<bool>(global1.a | false, u_input.b.x < -11433i, u_input.c.x == u_input.c.x, true)), 1u > ~_wgslsmith_sub_u32(global1.c, 4294967295u), false);
    var var_1 = func_5(Struct_1(global1.a, func_1() << (~(~vec4<u32>(global1.c, global1.c, global1.c, global1.c)) % vec4<u32>(32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~44083u, global0[_wgslsmith_index_u32(~26624u, 31u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16757u, 31u)], 31u)], 4294967295u)), ~vec3<u32>(40689u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]))));
    let var_2 = _wgslsmith_f_op_f32(-794f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-137f, _wgslsmith_f_op_f32(ceil(513f)), any(vec4<bool>(global1.a, global1.a, var_0.x, global1.a)))))), -1531f));
    var var_3 = Struct_1(~(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, u_input.d), vec2<u32>(18799u, global1.c)) | (global0[_wgslsmith_index_u32(60352u, 31u)] | 4294967295u)) <= ~u_input.d, ~vec4<i32>(-func_1().x, -1i, -2147483647i, global1.b.x), _wgslsmith_clamp_u32(0u, 50600u >> (u_input.a % 32u), 15166u));
    let x = u_input.a;
    s_output = StorageBuffer(65756u, -vec2<i32>(-21383i, 14041i), _wgslsmith_clamp_u32(select(1u & u_input.a, 0u, var_2 < 1298f) ^ min(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 31u)]), global0[_wgslsmith_index_u32(abs(0u), 31u)]), ~1u, global0[_wgslsmith_index_u32(abs(1u), 31u)] | ~0u));
}

