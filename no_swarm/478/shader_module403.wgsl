struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 55940u;

var<private> global1: array<bool, 15>;

var<private> global2: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(-8670i, i32(-2147483648), 1i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(17253i, 1i, 1855i), vec3<i32>(28507i, -40006i, -20016i), vec3<i32>(-39360i, 27711i, 16070i), vec3<i32>(i32(-2147483648), -3478i, -1i), vec3<i32>(i32(-2147483648), 78575i, 2147483647i), vec3<i32>(-23610i, 0i, 72247i), vec3<i32>(-16384i, 0i, 101860i), vec3<i32>(-1i, 0i, 8426i), vec3<i32>(i32(-2147483648), 40981i, 2147483647i), vec3<i32>(-12487i, -1i, 2147483647i), vec3<i32>(-24155i, 21621i, 17614i), vec3<i32>(-40538i, -1835i, -26298i), vec3<i32>(-86422i, i32(-2147483648), -33249i), vec3<i32>(5985i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 29162i), vec3<i32>(6571i, -36741i, 24736i), vec3<i32>(0i, -24795i, 53058i));

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = ~0u;
    let var_1 = Struct_1(-2147483647i >> (~(var_0 << (~u_input.c % 32u)) % 32u), 1110f);
    global2 = array<vec3<i32>, 19>();
    global1 = array<bool, 15>();
    var var_2 = select(vec3<bool>(~arg_0 <= _wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_sub_i32(54i, 13092i)), all(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 15u)], false)), !(-12461i > (arg_0 & u_input.a.x))), !(!(!select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_0, 15u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c, 15u)]), true))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(4294967295u, ~var_0), 15u)]);
    return Struct_2(vec4<bool>(!(!var_2.x), !global1[_wgslsmith_index_u32(var_0, 15u)], true, select(true, true, all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 15u)], var_2.x, global1[_wgslsmith_index_u32(1u, 15u)])))), var_1.b, _wgslsmith_add_vec3_u32(vec3<u32>(~(~u_input.c), ~(u_input.c & var_0), var_0), ~(~(~vec3<u32>(1u, 2545u, var_0)))), vec4<f32>(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-975f)) - -389f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b)))))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(559f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(arg_2.d.x - -219f)))))));
    var var_1 = ~748i;
    global2 = array<vec3<i32>, 19>();
    let var_2 = ~(~1u);
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-270f)));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(-(~countOneBits(-1i) ^ u_input.b.x), u_input.d.x, func_2(1573i)));
    let var_1 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(5070u, u_input.d.x, u_input.c), select(u_input.d.x, u_input.c, false)) & u_input.d, select(~min(u_input.d, vec2<u32>(1u, 55776u)), vec2<u32>(countOneBits(9016u), _wgslsmith_mod_u32(u_input.c, u_input.c)), func_2(~u_input.a.x).a.xy))), 18u)];
    var var_2 = vec4<i32>(_wgslsmith_add_i32(~var_1.a | u_input.a.x, var_1.a), ~var_1.a, u_input.a.x, -(_wgslsmith_sub_i32(~var_1.a, -var_1.a) | (i32(-1i) * -2147483647i)));
    var_0 = _wgslsmith_f_op_f32(-var_1.b);
    global2 = array<vec3<i32>, 19>();
    return _wgslsmith_f_op_f32(arg_0 * var_1.b);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = ~(~u_input.d.x);
    var_0 = ~6742u;
    global3 = array<Struct_1, 18>();
    var var_1 = abs((u_input.b.x >> (u_input.c % 32u)) >> (~_wgslsmith_mod_u32(min(0u, u_input.c), u_input.c) % 32u));
    let var_2 = Struct_2(!(!vec4<bool>(select(true, global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), true, 34050u != u_input.d.x, !global1[_wgslsmith_index_u32(u_input.d.x, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_1.b)), firstTrailingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(8046u, 32701u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 9243u, u_input.c), vec3<u32>(1u, u_input.d.x, 3483u), vec3<u32>(1u, u_input.d.x, 8876u)))), arg_2);
    return func_2(arg_1.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!func_4(1i, Struct_1(-30124i, 212f), vec4<f32>(_wgslsmith_f_op_f32(func_1(1000f)), -506f, -1000f, _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -296f), vec3<u32>(~16427u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 0u, 1u), abs(vec3<u32>(2890u, u_input.d.x, 0u))), min(min(select(36518u, 77575u, global1[_wgslsmith_index_u32(4294967295u, 15u)]), 24353u), _wgslsmith_mod_u32(u_input.d.x, u_input.d.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, 97640u, Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(10572u, 15u)], true, true, true), -119f, vec3<u32>(u_input.c, u_input.d.x, u_input.c), vec4<f32>(-1000f, 1000f, 1054f, -221f)))) - _wgslsmith_f_op_f32(-415f - -197f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f + 281f) + _wgslsmith_f_op_f32(max(-1093f, 775f)))), func_2(1i).b, func_2(-2147483647i).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-194f, _wgslsmith_f_op_f32(abs(-1000f)), any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 15u)])))))));
    var var_1 = !var_0.a.x;
    var var_2 = Struct_1(_wgslsmith_div_i32(35894i << (var_0.c.x % 32u), -abs(_wgslsmith_mod_i32(u_input.b.x, -2147483647i))), -1000f);
    let var_3 = var_0.d;
    global0 = ~min(~3546u, 1u);
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-162f)), _wgslsmith_f_op_f32(var_2.b + var_3.x)) * -653f) + -1936f), vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.c, var_0.c.x), 1u & ~u_input.d.x), ~(~(~0u)), _wgslsmith_div_u32(countOneBits(117174u & var_0.c.x), 1u), var_0.c.x), -(~8550i));
}

