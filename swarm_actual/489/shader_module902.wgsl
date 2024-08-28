struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: u32) -> vec2<bool> {
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    global1 = !select(vec2<bool>(_wgslsmith_mod_i32(-42009i, u_input.c.x) < u_input.a, !(!global1.x)), select(vec2<bool>(any(vec2<bool>(global1.x, global1.x)), global0[_wgslsmith_index_u32(countOneBits(124870u), 2u)]), !vec2<bool>(true, global1.x), global0[_wgslsmith_index_u32(38855u >> (_wgslsmith_div_u32(arg_1.x, 1u) % 32u), 2u)]), vec2<bool>(global1.x, false));
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    return select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(~0u, 2u)]), !vec2<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 2u)])), true), select(vec2<bool>(!global1.x, u_input.b > 1u), vec2<bool>(true, global0[_wgslsmith_index_u32(~1u, 2u)]), vec2<bool>(any(vec4<bool>(global1.x, false, false, true)), u_input.b >= 0u))), select(vec2<bool>(any(select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(false, global1.x, global1.x, global1.x), false)), true), select(vec2<bool>(global1.x, global0[_wgslsmith_index_u32(0u, 2u)]), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 2u)])), !vec2<bool>(global0[_wgslsmith_index_u32(69327u, 2u)], true)), any(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], false, global0[_wgslsmith_index_u32(u_input.b, 2u)])))), true);
}

fn func_2() -> bool {
    var var_0 = Struct_2(-190f, u_input.a, select(func_3(~(-vec4<i32>(12675i, -1i, u_input.c.x, 0i)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 59753u), vec3<u32>(u_input.b, 8364u, 0u)), vec3<u32>(9254u, 1u, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b)) >> (u_input.b % 32u)), !vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false, global1.x, true)), true), func_3(vec4<i32>(u_input.c.x, firstLeadingBit(50178i), 1i, u_input.c.x), vec3<u32>(u_input.b, u_input.b, abs(0u)), abs(_wgslsmith_mult_u32(u_input.b, 0u)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1126f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a + var_0.a)))))), 21432i, vec2<bool>(!(var_0.c.x & var_0.c.x), all(vec3<bool>(var_0.c.x, true, global0[_wgslsmith_index_u32(40561u, 2u)])) && true));
    let var_1 = Struct_2(541f, 1i, var_0.c);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, var_1.a)))))));
    var var_3 = Struct_1(1100f);
    return any(vec3<bool>(var_1.c.x, !(var_1.c.x && true) && true, global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(21457u, u_input.b) >> (27525u % 32u)), 2u)]));
}

fn func_1() -> i32 {
    global0 = array<bool, 2>();
    global1 = select(!(!select(vec2<bool>(global1.x, false), !vec2<bool>(global1.x, true), !vec2<bool>(true, global1.x))), vec2<bool>(global0[_wgslsmith_index_u32(21038u, 2u)], func_2()), !(u_input.a != ~u_input.c.x));
    var var_0 = select(vec4<bool>(false, func_3(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c.x, 0i, u_input.a, 1i), max(vec4<i32>(-16994i, u_input.c.x, u_input.a, 2147483647i), vec4<i32>(0i, -1i, 34854i, -11891i))), countOneBits(vec3<u32>(u_input.b, u_input.b, u_input.b)), u_input.b).x, !global0[_wgslsmith_index_u32(86387u, 2u)], countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, u_input.b), vec4<u32>(1u, 41165u, 75584u, u_input.b))) >= 0u), select(!vec4<bool>(global0[_wgslsmith_index_u32(abs(4294967295u), 2u)], true, global1.x, !global0[_wgslsmith_index_u32(u_input.b, 2u)]), select(vec4<bool>(false && global1.x, false, true | global1.x, global1.x != true), vec4<bool>(global1.x, true, true, global1.x), !global1.x), select(select(select(vec4<bool>(global1.x, false, global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(12523u, 2u)]), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.b, 2u)])), !vec4<bool>(false, global1.x, global1.x, global0[_wgslsmith_index_u32(46617u, 2u)]), !global1.x), vec4<bool>(global0[_wgslsmith_index_u32(200u, 2u)], global0[_wgslsmith_index_u32(~u_input.b, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], !global0[_wgslsmith_index_u32(30099u, 2u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(93899u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], true, global0[_wgslsmith_index_u32(u_input.b, 2u)]), global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(global1.x, global1.x, false, global0[_wgslsmith_index_u32(4294967295u, 2u)]), select(false, false, true)))), vec4<bool>(true, !global1.x, any(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global1.x, global1.x, global1.x), vec4<bool>(true, true, true, true), vec4<bool>(false, false, global1.x, global1.x))), true));
    var_0 = vec4<bool>(true, !any(vec2<bool>(true, !var_0.x)), false, global0[_wgslsmith_index_u32(1u, 2u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-511f - -1399f));
    return -20000i;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> StorageBuffer {
    var var_0 = abs(countOneBits(94862u));
    var_0 = 19134u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(981f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(770f * _wgslsmith_f_op_f32(f32(-1f) * -439f)), _wgslsmith_f_op_f32(-1f)))));
    global0 = array<bool, 2>();
    return StorageBuffer(_wgslsmith_f_op_f32(floor(-1516f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, !all(vec2<bool>(any(vec3<bool>(global1.x, global0[_wgslsmith_index_u32(0u, 2u)], global1.x)), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 2u)], true, global0[_wgslsmith_index_u32(u_input.b, 2u)])))));
    var var_1 = -2147483647i;
    global0 = array<bool, 2>();
    var_1 = 7937i;
    let var_2 = _wgslsmith_add_i32(~(~u_input.a >> (reverseBits(49990u) % 32u)) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b), u_input.b) % 32u), -(_wgslsmith_clamp_i32(-u_input.c.x, ~u_input.c.x, -u_input.a) & _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, u_input.c.x), u_input.a)));
    let x = u_input.a;
    s_output = func_4(vec3<i32>(_wgslsmith_clamp_i32(var_2, func_1(), 0i), var_2, ~(var_2 ^ firstLeadingBit(var_2))), var_0.x);
}

