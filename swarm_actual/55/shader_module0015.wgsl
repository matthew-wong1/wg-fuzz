struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: array<Struct_2, 32>;

var<private> global3: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-6392i, -1i), vec2<i32>(18418i, -38872i), vec2<i32>(-52898i, 1i), vec2<i32>(-25994i, 7775i), vec2<i32>(57773i, i32(-2147483648)));

var<private> global4: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    global0 = array<u32, 4>();
    var var_1 = 2078f;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - -1000f) + _wgslsmith_div_f32(162f, 553f))), -713f))));
    let var_3 = ~var_0.e;
    return 0u;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    global0 = array<u32, 4>();
    let var_0 = arg_1.d;
    global2 = array<Struct_2, 32>();
    let var_1 = Struct_2(_wgslsmith_div_vec4_i32(abs(~u_input.a), countOneBits(u_input.a)), Struct_1(arg_0, !(true || arg_1.b), global3[_wgslsmith_index_u32(~64527u, 6u)], var_0, arg_1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(433f)), arg_1.a.x, _wgslsmith_f_op_f32(-1845f - arg_0.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, arg_0.x, arg_0.x), vec3<f32>(var_0, var_0, 1000f))))))) * arg_0));
    var var_2 = arg_1.b;
    return min(~(~_wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(u_input.d, 4u)], _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.e.x, global0[_wgslsmith_index_u32(0u, 4u)]), arg_1.e.xw))), 15143u);
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: u32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))), 1208f, arg_2.x)), Struct_1(arg_2.zzx, ~(~arg_0) == _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(37966u, 4u)]), ~vec3<u32>(4294967295u, u_input.b, 7244u)), ~global3[_wgslsmith_index_u32(~func_2(Struct_1(arg_2.xww, false, vec2<i32>(u_input.a.x, u_input.a.x), arg_2.x, vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 4u)], 4u)], u_input.d, 59158u))), 6u)], arg_2.x, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 10786u, 4294967295u, 4294967295u), vec4<u32>(arg_0, global0[_wgslsmith_index_u32(25296u, 4u)], 17117u, u_input.b), vec4<u32>(26435u, arg_0, global0[_wgslsmith_index_u32(58238u, 4u)], arg_3)), ~vec4<u32>(arg_0, arg_3, 27052u, 11914u)) & vec4<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(61070u, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)]), vec3<u32>(u_input.d, 1u, 19465u)), _wgslsmith_dot_vec2_u32(vec2<u32>(28605u, arg_3), vec2<u32>(68691u, u_input.d)), ~u_input.b))), 32u)];
    let var_1 = true;
    var var_2 = var_0.b.b;
    var var_3 = var_0.b;
    global2 = array<Struct_2, 32>();
    return _wgslsmith_div_u32(firstLeadingBit(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -1107f, var_0.b.d) * var_0.b.a), _wgslsmith_f_op_vec3_f32(select(var_0.b.a, var_3.a, vec3<bool>(false, var_1, var_3.b)))), var_0.b)), abs(4294967295u));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = !select(select(vec2<bool>(arg_0.c.x >= 3693f, arg_0.b.a.x >= arg_0.c.x), !vec2<bool>(arg_0.b.b, arg_0.b.b), false), !(!select(vec2<bool>(true, arg_0.b.b), vec2<bool>(false, true), vec2<bool>(false, arg_0.b.b))), true);
    var var_1 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52004u, 4u)], 25u)];
    global3 = array<vec2<i32>, 6>();
    var_1 = arg_0.b.e.zxx;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.e, func_4(global2[_wgslsmith_index_u32(func_1(u_input.d, vec3<i32>(2147483647i, u_input.a.x, u_input.e.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(19138u, 1133u, 30799u), global1[_wgslsmith_index_u32(1u, 25u)]) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(453f + 1572f), -156f, _wgslsmith_f_op_f32(floor(-448f)), _wgslsmith_f_op_f32(ceil(-816f))), global0[_wgslsmith_index_u32(abs(u_input.b), 4u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)] % 32u)), 32u)]), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(488f + 1335f), _wgslsmith_f_op_f32(f32(-1f) * -328f), _wgslsmith_f_op_f32(1636f - -800f))))));
    let var_1 = all(!select(!select(vec2<bool>(var_0.b.b, false), vec2<bool>(false, var_0.b.b), var_0.b.b), vec2<bool>(var_0.b.d != var_0.b.a.x, any(vec3<bool>(true, true, true))), vec2<bool>(true, false)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1010f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(-1f)))));
    let var_3 = var_0;
    let var_4 = !vec3<bool>(var_0.b.b, false, var_3.b.b);
    var var_5 = abs(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.d, 4294967295u)), firstTrailingBit(_wgslsmith_div_u32(var_0.b.e.x, 1u))), 4u)], var_3.b.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, var_0.a.x);
}

