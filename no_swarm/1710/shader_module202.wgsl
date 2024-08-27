struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<f32, 10> = array<f32, 10>(368f, 1511f, -136f, 2573f, -566f, 147f, -1000f, -1213f, -684f, 1571f);

var<private> global2: array<vec3<u32>, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_2, 23>();
    global2 = array<vec3<u32>, 19>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(arg_2.a << (1u % 32u), _wgslsmith_mult_u32(arg_2.a << (arg_0.c.a % 32u), abs(arg_2.a))), vec4<i32>(26094i, _wgslsmith_dot_vec4_i32(arg_2.b | vec4<i32>(-17448i, 1i, arg_0.c.b.x, -2147483647i), arg_1.b), ~(~30980i), arg_1.b.x)), abs(select(~arg_2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 46688u), vec2<u32>(52838u, 69908u)), !all(vec2<bool>(true, true)))), Struct_1(arg_1.a, -vec4<i32>(28797i, _wgslsmith_add_i32(67624i, -46776i), 1i, -arg_2.b.x)), Struct_1(arg_0.a.a << ((~arg_0.c.a << (~0u % 32u)) % 32u), vec4<i32>(countOneBits(u_input.a), _wgslsmith_mod_i32(-30329i, 1i), 6687i, ~_wgslsmith_dot_vec4_i32(arg_0.a.b, arg_2.b))), arg_1.b.wxw);
    let var_1 = arg_2.b.ww;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(86353u, 10u)]), global1[_wgslsmith_index_u32(arg_2.a | arg_2.a, 10u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.a, 10u)] * -2250f), -507f)), global1[_wgslsmith_index_u32(1u, 10u)])))));
    return (~_wgslsmith_clamp_u32(1u, 47068u, ~arg_1.a) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a, 28182u, arg_0.d.a), global2[_wgslsmith_index_u32(arg_0.d.a, 19u)]), global2[_wgslsmith_index_u32(arg_1.a, 19u)] << (vec3<u32>(61799u, arg_0.b, arg_0.a.a) % vec3<u32>(32u))), ~1u) % 32u)) << (25278u % 32u);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(max(1u, countOneBits(_wgslsmith_mod_u32(arg_0.x | 8143u, select(reverseBits(1u), 1u, true)))), 23u)];
    let var_1 = countOneBits(arg_1.e.x);
    let var_2 = ~(~(~vec4<u32>(30066u, 4294967295u, 0u, 46959u)));
    var var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0.d.a, 10u)]))) * global1[_wgslsmith_index_u32(func_3(arg_1, arg_1.c, arg_1.d) << (~arg_0.x % 32u), 10u)]);
    return arg_0.x;
}

fn func_1() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(8193u, 23u)];
    let var_1 = ~u_input.a & (max(1i, -firstTrailingBit(u_input.a)) ^ _wgslsmith_div_i32(-7795i, 14262i));
    var var_2 = 4294967295u;
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.c.a, ~func_2(global2[_wgslsmith_index_u32(63632u, 19u)], global0[_wgslsmith_index_u32(36362u, 23u)], var_1), var_0.a.a), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 26905u), vec2<u32>(var_0.a.a, var_0.c.a)), vec2<u32>(1u, 6438u))), _wgslsmith_div_u32(var_0.c.a, ~22440u));
    let var_4 = countOneBits(var_3.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~6083i;
    let var_1 = Struct_1(firstLeadingBit(~(~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(48763u, 19u)], global2[_wgslsmith_index_u32(99347u, 19u)]))), reverseBits(vec4<i32>(-13811i, ~countOneBits(-50638i), u_input.b, -1i)));
    var var_2 = var_1.b.xw;
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(var_1.a, func_1()), var_1.a);
    global1 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_dot_vec2_u32(min(min(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, 4294967295u), vec2<u32>(0u, 53386u)), ~vec2<u32>(var_3.x, var_1.a)), vec2<u32>(var_3.x, var_1.a) & abs(vec2<u32>(var_3.x, 1u))), ~(~vec2<u32>(var_1.a, var_3.x))), _wgslsmith_mod_i32(var_2.x, min(_wgslsmith_div_i32(_wgslsmith_div_i32(-45763i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 25804i, -63533i, var_0), var_1.b)), var_2.x)), var_1.b, vec2<u32>(~33494u, 49995u | var_1.a) | ~vec2<u32>(_wgslsmith_clamp_u32(29736u, 33708u, 4294967295u), reverseBits(var_1.a)));
}

