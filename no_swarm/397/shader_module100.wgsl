struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648));

var<private> global1: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global2: array<u32, 10>;

var<private> global3: array<f32, 29> = array<f32, 29>(-866f, 626f, -446f, 1095f, 1141f, 1375f, 1604f, 996f, -1032f, 140f, 1709f, -1000f, 462f, -1943f, 138f, -442f, 196f, -399f, -1000f, 594f, 312f, -431f, 767f, 1188f, -216f, -1201f, 884f, -1329f, -921f);

var<private> global4: array<vec3<bool>, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> f32 {
    global4 = array<vec3<bool>, 17>();
    let var_0 = Struct_4(arg_2, Struct_2(~1u, !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))), -vec4<i32>(0i, global0.a, u_input.a, arg_2.a) | -abs(vec4<i32>(1i, global0.a, u_input.a, u_input.c))));
    var var_1 = vec2<bool>(!(!all(vec3<bool>(false, false, var_0.b.b.x))), true);
    global0 = var_0.a;
    let var_2 = var_0.b;
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_2() -> u32 {
    var var_0 = !select(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, false), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), vec4<bool>(_wgslsmith_f_op_f32(func_3(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 29u)], Struct_1(9791i))) == 684f, false, -2147483647i <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global0.a, 33383i, 1i), vec4<i32>(u_input.a, 0i, global0.a, global0.a)), true), any(global4[_wgslsmith_index_u32(89340u, 17u)]) && true);
    var var_1 = Struct_1(-60592i);
    var var_2 = firstLeadingBit(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, max(~global2[_wgslsmith_index_u32(u_input.b, 10u)], ~u_input.b)), 10u)]);
    var_0 = select(vec4<bool>(any(vec3<bool>(var_0.x || false, true, !var_0.x)), false, all(vec4<bool>(var_0.x, false, true, !var_0.x)), var_0.x), vec4<bool>(any(!var_0.xw), var_0.x, false, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, var_1.a, 11744i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, -2147483647i, var_1.a), vec3<i32>(17216i, global0.a, u_input.a))) != global0.a), all(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 31u)]));
    let var_3 = abs(_wgslsmith_mod_u32(abs(366u), global2[_wgslsmith_index_u32(0u, 10u)] ^ firstLeadingBit(~u_input.b)));
    return _wgslsmith_mult_u32(80437u, ~_wgslsmith_mult_u32(max(firstTrailingBit(global2[_wgslsmith_index_u32(var_3, 10u)]), ~var_3), 1u));
}

fn func_1(arg_0: u32) -> vec4<f32> {
    let var_0 = select(select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0 & u_input.b, countOneBits(u_input.b), ~0u) >> (min(~48797u, func_2()) % 32u), 31u)], !select(select(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25531u, 10u)], 31u)], vec3<bool>(false, false, false), global4[_wgslsmith_index_u32(u_input.b, 17u)]), vec3<bool>(false, false, false), true), global1[_wgslsmith_index_u32(60660u, 31u)]), vec3<bool>(true, any(global4[_wgslsmith_index_u32(~func_2(), 17u)]), any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true)))), global1[_wgslsmith_index_u32(78270u, 31u)]);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(28014u, 29u)])))))), Struct_2(~(~u_input.b), !(!(!vec4<bool>(true, true, true, var_0.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, -1i) << (vec2<u32>(0u, global2[_wgslsmith_index_u32(27465u, 10u)]) % vec2<u32>(32u)), reverseBits(vec2<i32>(u_input.a, u_input.c))), -53190i, 6980i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, u_input.c, global0.a, 7558i) ^ vec4<i32>(-2147483647i, 1i, 0i, u_input.a), -vec4<i32>(24242i, u_input.a, -34733i, 48151i)))), 4294967295u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, var_1.a, -1182f, 2105f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 289f, global3[_wgslsmith_index_u32(arg_0, 29u)], -709f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1023f, 1708f, 391f, 964f), vec4<f32>(global3[_wgslsmith_index_u32(var_1.c, 29u)], var_1.a, var_1.a, var_1.a))), _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_1.b.a, 29u)], 1177f, var_1.a, -1522f), vec4<f32>(global3[_wgslsmith_index_u32(arg_0, 29u)], -1253f, global3[_wgslsmith_index_u32(0u, 29u)], 723f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global2 = array<u32, 10>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, 242f, global3[_wgslsmith_index_u32(69884u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)])) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(779f, global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(23675u, 29u)], -1178f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(1u, 29u)], 403f, 1000f, global3[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<f32>(1142f, global3[_wgslsmith_index_u32(31143u, 29u)], global3[_wgslsmith_index_u32(13396u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)]), false)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1132f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51111u, 10u)], 29u)], -1367f, global3[_wgslsmith_index_u32(3039u, 29u)])))))) - _wgslsmith_f_op_vec4_f32(func_1(~global2[_wgslsmith_index_u32(u_input.b | u_input.b, 10u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3[_wgslsmith_index_u32(abs(u_input.b), 29u)], -1001f, -942f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)] << (global2[_wgslsmith_index_u32(28952u, 10u)] % 32u), 29u)])))));
    global3 = array<f32, 29>();
    let var_2 = Struct_2(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(2737u, u_input.b, u_input.b), vec3<u32>(44624u, 0u, u_input.b)), ~vec3<u32>(37554u, 27369u, global2[_wgslsmith_index_u32(10614u, 10u)]))), !select(vec4<bool>(true, any(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, false)), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false))), ~reverseBits(select(vec4<i32>(-18284i, global0.a, global0.a, global0.a) & vec4<i32>(-1i, global0.a, global0.a, u_input.c), ~vec4<i32>(global0.a, -1756i, global0.a, -39220i), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)))));
    let var_3 = max(max(var_2.a, 0u) ^ ~0u, 2243u ^ u_input.b);
    let var_4 = Struct_3(1383f, Struct_2(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_sub_u32(var_3, 43334u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, u_input.b, var_2.a), vec3<u32>(27433u, u_input.b, 0u)), 70074u), select(vec4<bool>(any(var_2.b.yx), var_2.b.x & var_2.b.x, false, all(vec4<bool>(false, false, true, false))), var_2.b, var_2.b.x), vec4<i32>(1i, firstLeadingBit(-var_2.c.x), u_input.c, -var_2.c.x >> (_wgslsmith_mod_u32(var_2.a, var_2.a) % 32u))), _wgslsmith_div_u32(~var_2.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, var_3, 0u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(52769u, 24822u, 1u, var_2.a), vec4<u32>(global2[_wgslsmith_index_u32(46340u, 10u)], 1u, 4294967295u, var_2.a)) % vec4<u32>(32u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 5835u, var_2.a), vec4<u32>(65279u, 50325u, 1768u, var_2.a)), firstTrailingBit(vec4<u32>(var_2.a, 41485u, var_2.a, 1u)), var_2.b.x || var_2.b.x))));
    global4 = array<vec3<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-(var_2.c.zz ^ (vec2<i32>(1i, var_4.b.c.x) << (vec2<u32>(2972u, 1u) % vec2<u32>(32u))))), ~var_2.c.yw);
}

