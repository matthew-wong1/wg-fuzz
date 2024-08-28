struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = global0.b.wy;
    var var_1 = vec4<u32>(~(arg_0 >> (arg_0 % 32u)), 62855u, _wgslsmith_div_u32(arg_0, _wgslsmith_mod_u32(abs(arg_0), 4359u)), ~0u) ^ select(countOneBits(vec4<u32>(5273u, 16106u, ~66777u, firstLeadingBit(arg_0))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, 4294967295u), vec3<u32>(arg_0, 1u, arg_0)), arg_0, arg_0 >> (7166u % 32u), arg_0), !(!(var_0.x && true)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2730f))))))));
    let var_3 = true;
    var var_4 = Struct_2(1863f, -1537f, -571f, 1487f);
    return var_0.x;
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(-min(firstLeadingBit(arg_1), u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, arg_3.a, 9661i) >> (~vec3<u32>(0u, 1358u, 12715u) % vec3<u32>(32u)), -(vec3<i32>(arg_1.x, -28191i, arg_2.a) << (vec3<u32>(33657u, 1u, 0u) % vec3<u32>(32u))))), arg_3.b);
    global0 = Struct_1(arg_1.x, vec4<bool>(true != any(select(vec3<bool>(arg_3.b.x, arg_3.b.x, true), vec3<bool>(arg_0, false, false), arg_0)), arg_3.b.x, !(!global0.b.x) != arg_0, true));
    global0 = Struct_1(_wgslsmith_sub_i32(0i, reverseBits(select(-arg_3.a, -2147483647i, select(true, true, arg_0)))), arg_3.b);
    var var_0 = Struct_1(u_input.a.x, !(!select(!vec4<bool>(true, arg_0, arg_2.b.x, true), select(vec4<bool>(true, arg_2.b.x, false, false), arg_3.b, false), global0.b)));
    global0 = Struct_1(~(-1i), vec4<bool>(!(select(arg_0, arg_0, false) & !arg_0), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1313f, -1037f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -1774f), true));
    return 570f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 10296i), ~global0.a, reverseBits(u_input.a.x), -u_input.a.x), countOneBits(~(-vec4<i32>(global0.a, global0.a, 25746i, global0.a)))), !vec4<bool>(!(!arg_3.x), false, true & any(arg_3.zw), global0.b.x));
    var var_0 = !arg_3.ywx;
    var_0 = select(arg_3.wwx, vec3<bool>(true, !(_wgslsmith_f_op_f32(arg_2.x - -438f) > -113f), !all(!arg_3)), var_0.x);
    let var_1 = global0.a >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(43240u, _wgslsmith_clamp_u32(7327u, 4746u, firstTrailingBit(0u))), 1u) % 32u);
    var var_2 = Struct_2(696f, 550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(873f, arg_2.x, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1970f))) + arg_1), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_0 + -1201f))))));
    return Struct_1(-reverseBits(-2147483647i | var_1), arg_3);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f * 146f), _wgslsmith_f_op_f32(523f + _wgslsmith_f_op_f32(abs(1341f))), -155f, _wgslsmith_f_op_f32(f32(-1f) * -111f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1865f, -127f, _wgslsmith_f_op_f32(abs(-349f)), 1000f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1961f, 2315f, -1134f, -519f))))))));
    let var_1 = global0.b;
    var var_2 = Struct_1(u_input.a.x, vec4<bool>(var_1.x, (_wgslsmith_div_i32(u_input.a.x, 3581i) & 1i) < 80230i, true, false));
    global0 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(560f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -132f))))), var_0.x, var_0.zy, select(vec4<bool>(select(true, func_2(arg_1.x), true), _wgslsmith_f_op_f32(exp2(var_0.x)) >= _wgslsmith_f_op_f32(func_3(global0.b.x, vec3<i32>(-4764i, global0.a, global0.a), Struct_1(11469i, global0.b), Struct_1(global0.a, global0.b))), !(!var_2.b.x), arg_2.x < firstTrailingBit(6244u)), select(!global0.b, vec4<bool>(select(true, global0.b.x, global0.b.x), true, !arg_0.x, var_2.b.x), var_2.b.x | true), all(vec3<bool>(true, var_2.b.x, true))));
    let var_3 = func_4(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), 1675f, var_0.yx, vec4<bool>((~arg_2.x | _wgslsmith_mod_u32(arg_2.x, 0u)) >= _wgslsmith_mult_u32(1u, ~1u), any(global0.b.wzy), !var_2.b.x, all(!vec4<bool>(true, false, var_2.b.x, true)))).b;
    return Struct_1(var_2.a, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.b.zy, vec4<u32>(reverseBits(abs(firstTrailingBit(34606u))), ~65793u, 1u, 9418u), _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(4294967295u, 34743u, 14099u)), vec3<u32>(2162u, _wgslsmith_mult_u32(0u, 54399u), firstTrailingBit(669u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 1u)))) & vec3<u32>(~_wgslsmith_clamp_u32(1u, 45731u, 0u), ~1u, 0u));
    global0 = Struct_1(firstTrailingBit(abs(max(2147483647i, -14409i))), vec4<bool>(!global0.b.x, !(global0.b.x | !global0.b.x), false, 1u == ~_wgslsmith_dot_vec3_u32(vec3<u32>(55705u, 5217u, 0u), vec3<u32>(3756u, 8176u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(u_input.a.x, -u_input.a.x), max(max(global0.a, u_input.a.x) << (0u % 32u), reverseBits(47328i))));
}

