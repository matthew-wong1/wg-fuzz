struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<Struct_2, 6>;

var<private> global3: array<vec2<i32>, 20>;

var<private> global4: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-576f, 726f), vec2<f32>(2034f, 502f), vec2<f32>(-1000f, -895f), vec2<f32>(-664f, 308f), vec2<f32>(284f, 217f), vec2<f32>(-1028f, 1568f), vec2<f32>(-167f, -1028f), vec2<f32>(-1836f, 1324f), vec2<f32>(-116f, 613f), vec2<f32>(561f, 1182f), vec2<f32>(1344f, -329f), vec2<f32>(-1382f, -1251f), vec2<f32>(1582f, -187f), vec2<f32>(-1006f, -403f), vec2<f32>(-1184f, -318f), vec2<f32>(-344f, 1827f), vec2<f32>(-1352f, 1583f), vec2<f32>(728f, 1009f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    global3 = array<vec2<i32>, 20>();
    var var_0 = _wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_add_u32(18546u, 1u));
    global4 = array<vec2<f32>, 18>();
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 6u)];
    let var_2 = firstLeadingBit(-8931i);
    return _wgslsmith_f_op_f32(429f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(125f, -968f), _wgslsmith_f_op_f32(712f * var_1.d.a), false == var_1.d.c)) - -548f) * 1000f));
}

fn func_3() -> f32 {
    global2 = array<Struct_2, 6>();
    global3 = array<vec2<i32>, 20>();
    let var_0 = _wgslsmith_div_f32(-261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1454f - 771f))))));
    let var_1 = _wgslsmith_add_vec3_i32(~abs(vec3<i32>(-1i, 1i, -2147483647i)), select(reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 16822i, 0i), vec4<i32>(50486i, 65974i, 45109i, -5572i)), -36202i, 78207i)), vec3<i32>(1i, 1i, 1i), vec3<bool>(false, true || (16993u != u_input.a.x), any(vec4<bool>(true, true, true, true)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(674f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1409f))) * _wgslsmith_f_op_f32(abs(var_0))))));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(0u, 7u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_3()), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(272f, -150f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f - 1f))), false);
    let var_2 = abs(u_input.a.x) << (~(~_wgslsmith_add_u32(~arg_0, 4294967295u)) % 32u);
    global0 = array<vec2<bool>, 7>();
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_2, u_input.a.x, _wgslsmith_clamp_u32(countOneBits(72500u), abs(arg_0), var_2)), select(vec4<u32>(max(firstLeadingBit(17537u), 59405u), arg_0, reverseBits(_wgslsmith_sub_u32(arg_0, 8079u)), 77740u), ~(~vec4<u32>(u_input.a.x, var_2, 4294967295u, var_2)), select(select(vec4<bool>(var_0.x, var_0.x, false, var_1.c), select(vec4<bool>(false, true, var_1.c, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), var_1.c), select(select(vec4<bool>(false, var_0.x, false, var_1.c), vec4<bool>(var_0.x, true, true, var_0.x), var_0.x), !vec4<bool>(var_1.c, true, false, var_0.x), var_1.c), !(true | var_1.c)))), 6u)];
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x) - -1000f)))), _wgslsmith_f_op_f32(-var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-893f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(-1764f, 1000f, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], false)), _wgslsmith_f_op_f32(round(-1118f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-263f, 1055f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(23410u))))));
}

