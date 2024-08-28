struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(118043u, 0u, 0u), vec3<u32>(49055u, 0u, 35421u), vec3<u32>(1u, 1u, 8313u), vec3<u32>(51822u, 4294967295u, 69808u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(22434u, 1u, 1u), vec3<u32>(9520u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 76958u), vec3<u32>(15356u, 9832u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(39600u, 0u, 21341u), vec3<u32>(0u, 9210u, 4814u), vec3<u32>(40586u, 41741u, 0u), vec3<u32>(29416u, 7327u, 0u), vec3<u32>(37598u, 1u, 4294967295u), vec3<u32>(0u, 0u, 2840u), vec3<u32>(4294967295u, 37781u, 0u), vec3<u32>(1u, 1u, 57196u), vec3<u32>(15035u, 0u, 52391u), vec3<u32>(4294967295u, 48793u, 1951u), vec3<u32>(2211u, 52101u, 1u), vec3<u32>(0u, 1809u, 6675u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec2<i32> {
    global0 = array<vec3<u32>, 23>();
    global0 = array<vec3<u32>, 23>();
    global0 = array<vec3<u32>, 23>();
    let var_0 = arg_0;
    global0 = array<vec3<u32>, 23>();
    return _wgslsmith_clamp_vec2_i32(arg_0.a, -_wgslsmith_add_vec2_i32(min(-u_input.c.zy, _wgslsmith_add_vec2_i32(u_input.a, arg_0.a)), firstLeadingBit(min(vec2<i32>(14494i, arg_0.a.x), vec2<i32>(2147483647i, u_input.a.x)))), _wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(11652i, 1i), u_input.c.wx & vec2<i32>(arg_1, var_0.a.x)), _wgslsmith_add_vec2_i32(arg_0.a, vec2<i32>(1i, 2147483647i))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-131f, -327f), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.d.x - _wgslsmith_f_op_f32(-arg_1.b.d.x)), arg_2.b.d.x, 10038i >= arg_2.b.a.x))));
    var var_1 = all(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), any(vec2<bool>(true, false)))), vec3<bool>(true, true, true), !vec3<bool>(arg_1.b.d.x < -1382f, all(vec2<bool>(true, true)), all(vec4<bool>(true, false, true, false)))));
    var var_2 = arg_1.b;
    let var_3 = func_2(arg_2.b, _wgslsmith_clamp_i32(-(~var_2.a.x), _wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(30721i, 53934i)), u_input.b), ~select(arg_2.b.a.x, 1i, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x - arg_2.b.d.x)))) + _wgslsmith_f_op_f32(-arg_1.b.d.x)));
    var var_4 = arg_2;
    return _wgslsmith_dot_vec4_u32(select(~arg_2.a, select(arg_1.a, vec4<u32>(~2079u, var_4.b.c, 1u, 5079u), any(vec4<bool>(false, false, true, false))), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), any(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), true)), vec4<u32>(4294967295u, arg_1.a.x, arg_1.a.x | arg_1.a.x, arg_2.b.c));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> bool {
    global0 = array<vec3<u32>, 23>();
    global0 = array<vec3<u32>, 23>();
    var var_0 = Struct_1(~_wgslsmith_clamp_vec2_i32(func_2(Struct_1(u_input.b, 1u, 119823u, vec4<f32>(-2613f, arg_0, arg_0, arg_0)), _wgslsmith_clamp_i32(1i, u_input.a.x, -29354i), _wgslsmith_f_op_f32(-arg_0)), vec2<i32>(-u_input.c.x, u_input.a.x << (2364u % 32u)), ~firstLeadingBit(vec2<i32>(1i, u_input.c.x))), func_3(u_input.d, Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(36472u, 1u, 99455u, 48502u), vec4<u32>(1u, 11508u, 41821u, 49922u)), Struct_1(countOneBits(u_input.a), _wgslsmith_add_u32(0u, 59437u), 42948u, vec4<f32>(arg_0, arg_0, arg_0, arg_0))), Struct_2(abs(vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x) ^ u_input.b, countOneBits(1u), _wgslsmith_mod_u32(4294967295u, 41457u), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -820f, -1883f) + vec4<f32>(arg_0, -855f, arg_0, arg_0))))), _wgslsmith_add_u32(1u, 17200u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(571f, arg_0, arg_0, 1500f), vec4<f32>(294f, 508f, arg_0, arg_0))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-127f, arg_0, arg_0, -663f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))));
    var_0 = Struct_1(~(-u_input.c.zw), var_0.c, ~(~var_0.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.d.x)), var_0.d.x)) - arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2005f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(751f, arg_0) - arg_0)), var_0.d.x, 1000f));
    let var_1 = arg_1.zwy;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 23>();
    var var_0 = vec3<bool>(true, true, !all(vec4<bool>(true, true, true, true)) && func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(607f, 263f)), 191f), vec4<bool>(true, true, true, true), false));
    var var_1 = true;
    var var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(1680f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1377f)), _wgslsmith_f_op_f32(sign(-1161f))))))), 615f, ~(~0u));
}

