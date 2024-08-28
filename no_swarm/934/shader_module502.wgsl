struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(1000f, vec4<bool>(true, true, false, true)), Struct_1(-1507f, vec4<bool>(true, false, false, true)), Struct_1(753f, vec4<bool>(true, false, false, true)), Struct_1(420f, vec4<bool>(true, false, true, false)), Struct_1(442f, vec4<bool>(false, false, false, false)), Struct_1(-485f, vec4<bool>(true, true, true, true)), Struct_1(1134f, vec4<bool>(false, false, false, false)), Struct_1(-1065f, vec4<bool>(true, true, false, false)), Struct_1(127f, vec4<bool>(true, true, true, true)), Struct_1(-726f, vec4<bool>(false, true, false, false)), Struct_1(-224f, vec4<bool>(true, false, true, false)), Struct_1(-924f, vec4<bool>(false, false, true, true)), Struct_1(-572f, vec4<bool>(true, true, true, false)), Struct_1(228f, vec4<bool>(true, false, true, false)), Struct_1(1379f, vec4<bool>(true, false, true, false)), Struct_1(-1530f, vec4<bool>(true, false, true, false)), Struct_1(629f, vec4<bool>(false, true, false, false)), Struct_1(-500f, vec4<bool>(false, false, true, false)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = arg_1;
    global0 = array<Struct_1, 18>();
    let var_1 = arg_1.a;
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(abs(arg_3));
    return !all(vec4<bool>(!arg_2, var_2.b.x, select(any(var_2.b.wy), any(var_2.b.yxw), all(var_0.b.wzy)), ~u_input.c <= 1u));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(598f, vec4<bool>(all(vec2<bool>(true, all(vec3<bool>(true, false, true)))), all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(false, true)), any(vec4<bool>(any(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, true)), false, func_3(true, global0[_wgslsmith_index_u32(31007u, 18u)], true, 1000f)))));
    global0 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_add_vec2_i32(-(~vec2<i32>(reverseBits(-9670i), u_input.b)), -(max(vec2<i32>(u_input.b, 1i) ^ vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, 12466i)) & reverseBits(vec2<i32>(1i, arg_0))));
    let var_2 = vec3<bool>(any(vec3<bool>(false, true, all(var_0.b.xw))), true, true);
    global0 = array<Struct_1, 18>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.b);
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = ~(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.c, 1u, 66486u)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, u_input.a), ~vec3<u32>(u_input.c, u_input.a, u_input.c))));
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_1 = Struct_1(arg_0.a, select(!arg_0.b, !arg_0.b, any(arg_0.b.yz)));
    let var_2 = func_2(u_input.b, 33183u);
    return -2147483647i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.b.zx;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_1 = !vec2<bool>(false, arg_2.b.x);
    let var_2 = ~(countOneBits(abs(~vec2<u32>(4294967295u, 4294967295u))) ^ min(abs(~vec2<u32>(1u, u_input.a)), firstLeadingBit(vec2<u32>(u_input.c, 24846u))));
    return Struct_1(arg_2.a, !(!(!(!arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(countOneBits(func_1(Struct_1(_wgslsmith_f_op_f32(max(303f, 1777f)), vec4<bool>(true, true, true, true)))), 16084u >= u_input.a, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c, 4294967295u, u_input.a) & vec4<u32>(u_input.a, 117627u, u_input.c, u_input.a), vec4<u32>(45303u, 77066u, 13837u, u_input.c) | vec4<u32>(18956u, 4294967295u, 1u, u_input.c)), vec4<u32>(0u, ~25610u, u_input.c << (4294967295u % 32u), 30901u | u_input.a)), 18u)]);
    let var_1 = u_input.b;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_2 = var_0.b;
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(240f)), _wgslsmith_f_op_f32(trunc(-215f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.a, var_0.a, var_0.a), vec3<f32>(var_3.a, var_3.a, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_3.a, var_0.a) + vec3<f32>(314f, var_0.a, var_3.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_3.a, var_3.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(select(vec4<u32>(u_input.c, 14193u, u_input.c, 29873u), vec4<u32>(83670u, u_input.a, u_input.c, u_input.a) >> (vec4<u32>(0u, u_input.c, u_input.c, 1u) % vec4<u32>(32u)), vec4<bool>(true, false, var_0.b.x, var_2.x))), -1021f, ~(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, -1i), vec3<i32>(-25243i, u_input.b, var_1)), var_1 << (u_input.c % 32u), -1i ^ var_1)));
}

