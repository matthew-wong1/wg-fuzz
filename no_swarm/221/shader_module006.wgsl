struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = arg_1.a;
    global0 = array<i32, 12>();
    var_0 = _wgslsmith_clamp_u32(19285u, ~var_1.c.a, _wgslsmith_mod_u32(36666u, abs(67887u)));
    global0 = array<i32, 12>();
    return ~_wgslsmith_div_i32(~(~34997i) & _wgslsmith_div_i32(83078i, _wgslsmith_mult_i32(arg_1.a.a, 0i)), ~arg_1.a.a);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool) -> bool {
    global0 = array<i32, 12>();
    let var_0 = arg_1.b.x;
    var var_1 = vec2<u32>(min(abs(_wgslsmith_mult_u32(arg_0.c.b.x, arg_0.b.c.a)), ~arg_1.a.c.a), 4294967295u) | vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(43833u, 0u, 33783u), 1u), _wgslsmith_add_u32(arg_1.c.a, 0u));
    let var_2 = arg_0;
    let var_3 = !all(!vec3<bool>(arg_1.d.x | arg_1.d.x, any(vec4<bool>(true, true, true, false)), -40772i > var_2.c.a));
    return any(vec4<bool>(arg_2, all(vec3<bool>(false, arg_1.d.x, var_3)), false, any(vec4<bool>(var_3 && arg_2, !arg_1.d.x, true, select(true, arg_1.d.x, false)))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<i32, 12>();
    var var_0 = _wgslsmith_div_i32(~_wgslsmith_mult_i32((i32(-1i) * -36938i) << (1u % 32u), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(u_input.a.yxy, vec3<i32>(-1i, arg_0.x, -2147483647i)))), u_input.b);
    var var_1 = _wgslsmith_clamp_i32(u_input.b, ~(~1i), -7155i);
    var_0 = u_input.a.x;
    var var_2 = Struct_1(select(max(1u, 77269u), _wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(4294967295u, 4294967295u)), countOneBits(1u)), func_3(Struct_4(vec3<u32>(36809u, 18314u, 14809u), Struct_2(2147483647i, vec4<u32>(3141u, 0u, 1u, 1u), Struct_1(4294967295u)), Struct_2(-40189i, vec4<u32>(11651u, 0u, 4294967295u, 29506u), Struct_1(4294967295u))), Struct_3(Struct_2(u_input.a.x, vec4<u32>(1u, 1u, 1u, 0u), Struct_1(4294967295u)), vec2<f32>(1250f, 1894f), Struct_1(1u), vec2<bool>(true, false)), false) == true));
    return Struct_2(12799i, ~abs(vec4<u32>(var_2.a, var_2.a, 0u, 86150u) | max(vec4<u32>(1u, var_2.a, var_2.a, 10941u), vec4<u32>(var_2.a, 81437u, 3788u, 4294967295u))), Struct_1(~(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 12>();
    var var_0 = true;
    var var_1 = abs(u_input.b);
    var var_2 = func_2(min(select(vec4<i32>(50903i, func_1(vec3<bool>(true, false, true), Struct_3(Struct_2(global0[_wgslsmith_index_u32(85869u, 12u)], vec4<u32>(4294967295u, 1u, 42841u, 28211u), Struct_1(14374u)), vec2<f32>(1030f, 753f), Struct_1(8335u), vec2<bool>(false, true)), Struct_3(Struct_2(23158i, vec4<u32>(1u, 48130u, 1u, 1u), Struct_1(3177u)), vec2<f32>(-189f, 1305f), Struct_1(0u), vec2<bool>(true, true))), -u_input.a.x, _wgslsmith_div_i32(32365i, -1i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, 1i, -39180i), u_input.a), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), false)), vec4<i32>(-2147483647i ^ u_input.b, 54483i, u_input.a.x, -global0[_wgslsmith_index_u32(~131096u, 12u)])));
    var_2 = func_2(vec4<i32>(1i, var_2.a ^ global0[_wgslsmith_index_u32(var_2.b.x, 12u)], func_1(vec3<bool>(true, true, true), Struct_3(func_2(vec4<i32>(1i, global0[_wgslsmith_index_u32(0u, 12u)], 17369i, u_input.b)), vec2<f32>(-1000f, 367f), func_2(vec4<i32>(global0[_wgslsmith_index_u32(63626u, 12u)], 2147483647i, var_2.a, -27019i)).c, vec2<bool>(true, false)), Struct_3(func_2(u_input.a), vec2<f32>(521f, -1437f), var_2.c, select(vec2<bool>(true, true), vec2<bool>(false, false), true))), max(~(-var_2.a), -891i)));
    var_0 = false;
    let var_3 = var_2.c;
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(-150f, _wgslsmith_div_f32(-150f, 866f))), _wgslsmith_div_f32(348f, _wgslsmith_f_op_f32(min(750f, 2467f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(601f)), _wgslsmith_f_op_f32(abs(185f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1379f, 2018f))))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -978f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f))), any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2.a ^ -17940i), min(0u, min(var_2.b.x, ~abs(var_2.c.a))), ~(max(select(vec4<u32>(var_2.b.x, var_2.c.a, var_2.c.a, 22149u), vec4<u32>(1u, var_2.b.x, 0u, 59040u), vec4<bool>(false, false, true, true)), vec4<u32>(71912u, var_2.c.a, var_3.a, var_2.c.a)) >> (var_2.b % vec4<u32>(32u))));
}

