struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: vec4<i32>) -> f32 {
    global0 = array<i32, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(760f, 710f) - vec2<f32>(-194f, -1191f)), vec2<f32>(321f, 879f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2024f, -1698f), _wgslsmith_f_op_vec2_f32(vec2<f32>(404f, 1224f) * vec2<f32>(264f, -116f)))), _wgslsmith_mult_u32(u_input.c, 3965u) < (45817u ^ arg_2.a.x)))));
    var var_1 = countOneBits(_wgslsmith_mult_u32(abs(abs(20799u)), ~min(u_input.c, arg_2.a.x << (u_input.c % 32u))));
    global0 = array<i32, 11>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(794f - 1235f))) + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))) + -189f));
    return _wgslsmith_f_op_f32(trunc(1433f));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec3<bool> {
    global0 = array<i32, 11>();
    let var_0 = vec2<u32>(0u, ~u_input.c);
    global0 = array<i32, 11>();
    var var_1 = vec3<u32>(abs(~reverseBits(1u)), var_0.x, _wgslsmith_mod_u32(var_0.x, var_0.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(25669u, u_input.a.x, u_input.a.x, 66712u), vec4<u32>(var_0.x, var_0.x, 1u, 4294967295u))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-790f, _wgslsmith_f_op_f32(abs(1264f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(490f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.a.x, false, Struct_3(vec2<u32>(var_1.x, 4294967295u), arg_0.a.x), vec4<i32>(arg_1, u_input.b, 0i, -57090i)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(280f)), 2266f))), _wgslsmith_f_op_f32(min(361f, -654f))));
    return select(vec3<bool>(9331i < -global0[_wgslsmith_index_u32(~u_input.a.x, 11u)], true, true), !(!(!vec3<bool>(true, arg_0.a.x, true))), !select(vec3<bool>(any(vec4<bool>(false, false, false, arg_0.a.x)), arg_0.a.x, all(arg_0.a)), select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(true, true, arg_0.a.x), true), vec3<bool>(arg_0.a.x, false, arg_0.a.x), false), vec3<bool>(true, true, true)));
}

fn func_1() -> bool {
    var var_0 = Struct_1(select(vec2<bool>(select(any(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, true)), true), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), vec2<bool>(false, any(func_2(Struct_1(vec2<bool>(false, false), u_input.d, vec4<i32>(0i, -9763i, u_input.d, 0i)), -8561i))), true), -2147483647i, _wgslsmith_div_vec4_i32(min(vec4<i32>(reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), global0[_wgslsmith_index_u32(u_input.c, 11u)] & global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -1i, 1i), select(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], u_input.b, -24816i, u_input.b), firstLeadingBit(vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(16099u, 11u)], u_input.d)), vec4<bool>(true, true, true, true))), abs(_wgslsmith_add_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], u_input.b, u_input.d, global0[_wgslsmith_index_u32(17591u, 11u)]), vec4<i32>(u_input.d, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], u_input.d, u_input.b)))));
    var var_1 = Struct_3(vec2<u32>(u_input.a.x, 23261u), !all(vec2<bool>(var_0.a.x, !var_0.a.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(184f, 1499f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1126f, 1138f) + vec2<f32>(-973f, -1034f))), !var_0.a))), 935f);
    let var_3 = var_2;
    var var_4 = abs(~abs(u_input.a) << (select(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 40509u), ~var_1.a), vec2<bool>(var_0.a.x, !var_0.a.x)) % vec2<u32>(32u)));
    return var_0.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>) -> f32 {
    global0 = array<i32, 11>();
    var var_0 = u_input.c;
    var_0 = u_input.a.x;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1270f, _wgslsmith_f_op_f32(floor(449f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(f32(-1f) * -1378f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(806f)), _wgslsmith_f_op_f32(ceil(-919f)), false)))), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(398f + -395f), -122f))), 247f), func_2(Struct_1(arg_0, global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(0u, u_input.c), arg_1.x), 11u)], abs(~vec4<i32>(-38790i, global0[_wgslsmith_index_u32(u_input.c, 11u)], 15233i, global0[_wgslsmith_index_u32(67531u, 11u)]))), global0[_wgslsmith_index_u32(arg_1.x, 11u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1286f + 1001f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(819f * 360f), _wgslsmith_f_op_f32(round(-1989f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 406f, var_1.a.b)))))));
    return _wgslsmith_div_f32(-937f, _wgslsmith_f_op_f32(-var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(abs(876f))))))), _wgslsmith_f_op_f32(func_4(vec2<bool>(func_1(), any(vec2<bool>(false, true))), select(vec3<u32>(96252u, 8912u, 1u) << (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(74177u, 11354u, 1u), true) | (vec3<u32>(1u, 9784u, u_input.a.x) << ((vec3<u32>(4294967295u, 1u, 0u) ^ vec3<u32>(40008u, 1440u, u_input.c)) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(func_3(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), firstTrailingBit(abs(global0[_wgslsmith_index_u32(u_input.a.x, 11u)])) != -max(u_input.d, u_input.b), Struct_3(_wgslsmith_mult_vec2_u32(u_input.a | vec2<u32>(13070u, 1u), u_input.a), u_input.a.x < 0u), reverseBits(~(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 11u)], -2147483647i, 18049i, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))))));
    var var_1 = all(func_2(Struct_1(vec2<bool>(true, all(vec4<bool>(true, false, true, true))), u_input.b, (vec4<i32>(1i, global0[_wgslsmith_index_u32(1u, 11u)], 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 11u)]) & vec4<i32>(2147483647i, -29057i, 2147483647i, u_input.b)) & _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(2995u, 11u)], 34620i, 40306i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -4105i, 1i, -1i))), global0[_wgslsmith_index_u32(0u, 11u)]).yz);
    var var_2 = var_0.x;
    var_1 = any(select(vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), (u_input.b <= u_input.b) | true, u_input.b < -2147483647i, true), vec4<bool>(true, true, true, select(true, true, select(false, false, true))), vec4<bool>(true, true, select(any(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, true, true)), true), any(vec2<bool>(true, true)))));
    let var_3 = ~(~vec2<u32>(~4294967295u, u_input.a.x)) ^ ~min(abs(firstLeadingBit(u_input.a)), vec2<u32>(countOneBits(u_input.a.x), 4294967295u));
    var var_4 = !(!vec4<bool>(func_1(), !(global0[_wgslsmith_index_u32(u_input.c, 11u)] < u_input.d), true, true));
    global0 = array<i32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, ~u_input.a.x, u_input.a.x >> (var_3.x % 32u)), ~(vec4<u32>(u_input.a.x, u_input.c, 4294967295u, u_input.a.x) & vec4<u32>(4294967295u, u_input.c, 0u, 4294967295u)))), 11u)]);
}

