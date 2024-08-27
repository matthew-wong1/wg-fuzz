struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: Struct_3,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = array<bool, 29>();
    let var_0 = Struct_3(Struct_2(Struct_1(-465f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-671f, -1204f)), _wgslsmith_div_f32(591f, 1407f))));
    var var_1 = select(vec4<u32>(countOneBits(reverseBits(1725u)), u_input.a, u_input.a, u_input.a) & _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a, 0u), 4294967295u, u_input.a, ~1u), select(vec4<u32>(31623u, 2480u, 1u, u_input.a), vec4<u32>(7726u, 4294967295u, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 29u)]) & vec4<u32>(1u, 1u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(1u), 4294967295u, u_input.a, 69203u), ~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a), select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false))), select(select(vec4<bool>(!global0[_wgslsmith_index_u32(0u, 29u)], u_input.b.x == 0i, all(vec3<bool>(global0[_wgslsmith_index_u32(35921u, 29u)], false, false)), global0[_wgslsmith_index_u32(u_input.a, 29u)] & global0[_wgslsmith_index_u32(u_input.a, 29u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(16970u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], true), vec4<bool>(global0[_wgslsmith_index_u32(35976u, 29u)], false, global0[_wgslsmith_index_u32(21554u, 29u)], global0[_wgslsmith_index_u32(85698u, 29u)]), global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(any(global1[_wgslsmith_index_u32(u_input.a, 10u)]), any(global1[_wgslsmith_index_u32(u_input.a, 10u)]), true, any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], false)))), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 29u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(5446u, 29u)], true, global0[_wgslsmith_index_u32(u_input.a, 29u)], true), any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]))), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(8045u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a, 29u)]), global0[_wgslsmith_index_u32(12100u, 29u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 29u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(82528u, 29u)], true), global0[_wgslsmith_index_u32(0u, 29u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], true, global0[_wgslsmith_index_u32(4294967295u, 29u)])), vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(~u_input.a, 29u)], true)), vec4<bool>(false, global0[_wgslsmith_index_u32(firstTrailingBit(59839u), 29u)], 4294967295u == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), true)));
    let var_2 = -12223i;
    let var_3 = vec4<bool>(global0[_wgslsmith_index_u32(min(reverseBits(~(48895u & u_input.a)), var_1.x), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 4294967295u, 0u, u_input.a), vec4<u32>(6347u, var_1.x, 4294967295u, 1u) ^ vec4<u32>(u_input.a, 0u, 4294967295u, 0u))), 29u)] || !(u_input.b.x >= _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), true || (((var_0.a.a.a != var_0.a.a.a) | !global0[_wgslsmith_index_u32(1u, 29u)]) != any(vec3<bool>(false, global0[_wgslsmith_index_u32(21811u, 29u)], false))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f - _wgslsmith_f_op_f32(-577f - -913f)) + _wgslsmith_f_op_f32(step(var_0.a.a.b, _wgslsmith_f_op_f32(min(var_0.a.a.c, 1000f))))));
}

fn func_2() -> f32 {
    let var_0 = u_input.a;
    let var_1 = u_input.b;
    global1 = array<vec2<bool>, 10>();
    global0 = array<bool, 29>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2187f - _wgslsmith_f_op_f32(round(-925f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-363f, -809f)) * _wgslsmith_f_op_f32(max(1882f, -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-531f, 1000f, global0[_wgslsmith_index_u32(1u, 29u)])) + _wgslsmith_f_op_f32(max(-636f, -292f))))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(max(147f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-445f, 1f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)), 29u)])), -2239f)))));
    return _wgslsmith_div_f32(-1673f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - -1027f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(397f, var_2.x)))));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(60383u, 4294967295u) >> (u_input.a % 32u), 29u)];
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1373f, _wgslsmith_f_op_f32(1492f * -1023f), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-184f - 1f))), vec4<f32>(_wgslsmith_f_op_f32(268f * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1822f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1269f + -866f) + _wgslsmith_f_op_f32(func_2()))), 1223f, _wgslsmith_f_op_f32(abs(149f))));
    var_0 = global0[_wgslsmith_index_u32(u_input.a >> (abs(abs(21395u)) % 32u), 29u)];
    var var_3 = ~_wgslsmith_add_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -10382i, u_input.b.x), u_input.b), u_input.b), u_input.b) << (~(~arg_0.wxz) % vec3<u32>(32u));
    return firstTrailingBit(select(reverseBits(_wgslsmith_div_u32(min(0u, 0u), countOneBits(arg_0.x))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a, u_input.a), ~66549u), !global0[_wgslsmith_index_u32(0u, 29u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(~4294967295u, u_input.a);
    let var_1 = _wgslsmith_add_u32(~func_1(vec4<u32>(u_input.a, 1u, 22553u, 84981u) | ~vec4<u32>(42195u, u_input.a, var_0.x, var_0.x)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(32239u, u_input.a, u_input.a, 1u) >> (vec4<u32>(24224u, 28682u, 20284u, 1u) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, 0u, var_0.x, 36219u)) & (10072u | select(4294967295u, u_input.a, global0[_wgslsmith_index_u32(0u, 29u)]))));
    let var_2 = u_input.b.x;
    let var_3 = vec4<u32>(0u, 93398u, min(var_1, ~var_0.x), _wgslsmith_sub_u32(select(10945u, 48381u, false), var_0.x) >> (148347u % 32u)) & vec4<u32>(var_0.x | _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.x, 45362u, 44104u, var_1)), ~vec4<u32>(4294967295u, 4294967295u, u_input.a, var_1)), ~var_1, u_input.a, _wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, 0u)) >> (66328u % 32u));
    let var_4 = func_1(countOneBits(vec4<u32>(_wgslsmith_div_u32(var_1 & 62216u, _wgslsmith_add_u32(var_1, var_1)), ~var_1, 59697u, ~var_3.x)));
    global1 = array<vec2<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(330f, 389f, 1850f, 1048f) - vec4<f32>(-716f, -359f, -1355f, 486f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, 258f, -811f, 497f) + vec4<f32>(-1123f, -144f, -115f, -2598f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(select(-279f, _wgslsmith_f_op_f32(127f - -1000f), !global0[_wgslsmith_index_u32(1u, 29u)])), -519f))), var_3.ywx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f)) + 630f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
}

