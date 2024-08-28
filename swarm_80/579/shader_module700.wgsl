struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> i32 {
    global1 = array<Struct_1, 27>();
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1835f, _wgslsmith_f_op_f32(floor(global0.x)), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), arg_1.e.d)));
    var var_0 = Struct_2(vec3<u32>(min(4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_1.d.a, arg_1.d.c.yz))), ~(abs(arg_1.a.x) | ~arg_1.d.a.x), arg_1.e.a.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.b + vec2<f32>(-330f, global0.x)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -920f))), _wgslsmith_f_op_f32(1453f + _wgslsmith_f_op_f32(arg_1.b.x - arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 188f) - _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(abs(-1000f)))), Struct_1(vec2<u32>(~_wgslsmith_dot_vec4_u32(arg_1.e.c, vec4<u32>(u_input.a, 1u, 1u, arg_1.d.c.x)), u_input.a), ~arg_1.a.yy, ~(vec4<u32>(5840u, arg_1.a.x, u_input.a, 19328u) << (vec4<u32>(4294967295u, 0u, arg_1.a.x, arg_1.a.x) % vec4<u32>(32u))), 2207f), global1[_wgslsmith_index_u32(38892u, 27u)]);
    global1 = array<Struct_1, 27>();
    let var_1 = vec3<bool>(_wgslsmith_add_i32(_wgslsmith_div_i32(-18977i, _wgslsmith_clamp_i32(27755i, arg_3, 0i)), -1i) != -20456i, !(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), all(vec2<bool>(true, true)));
    return countOneBits(reverseBits(arg_2));
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_mod_vec2_i32(select(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(66812i, 1i)), vec2<i32>(1i, 1i)), vec2<i32>(~0i, -30616i)), vec2<i32>(select(func_3(371f, Struct_2(vec3<u32>(7617u, 4294967295u, arg_1), global0.yz, 915f, global1[_wgslsmith_index_u32(48397u, 27u)], global1[_wgslsmith_index_u32(17239u, 27u)]), -31553i, -2147483647i), 1i, all(vec2<bool>(arg_0, false))), _wgslsmith_add_i32(reverseBits(0i), -4124i)), !(!select(vec2<bool>(true, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, arg_0)))), vec2<i32>(-2147483647i, reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(-21256i, 0i, 57109i, 1i), vec4<i32>(-13749i, -14585i, 1i, -5507i)))));
    let var_1 = Struct_2(~(vec3<u32>(u_input.a, 4294967295u, arg_1) << (vec3<u32>(24152u, u_input.a, arg_1) % vec3<u32>(32u))) & min(~(~vec3<u32>(arg_1, 37741u, arg_1)), vec3<u32>(18499u, ~arg_1, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-991f - _wgslsmith_f_op_f32(f32(-1f) * -334f)) * global0.x), -1004f), _wgslsmith_f_op_f32(global0.x - global0.x), Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4233u, 4331u), vec2<u32>(arg_1, u_input.a), vec2<u32>(78053u, arg_1)), ~vec2<u32>(arg_1, 1u)), max(vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(arg_1, u_input.a))), vec2<u32>(~20003u, 1092u)), firstLeadingBit(~(~vec2<u32>(arg_1, u_input.a))), reverseBits(vec4<u32>(466u, u_input.a, arg_1, 17598u) | ~vec4<u32>(72447u, 999u, 1u, 70855u)), 1000f), Struct_1(vec2<u32>(~u_input.a, 27945u), ~vec2<u32>(30867u, 36320u), ~(~vec4<u32>(arg_1, u_input.a, u_input.a, u_input.a) | (vec4<u32>(0u, arg_1, 1u, arg_1) >> (vec4<u32>(u_input.a, 1u, 27117u, arg_1) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-1618f - _wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(global0.x * 207f)))));
    let var_2 = select(vec2<bool>(!arg_0, true), select(select(!vec2<bool>(true, arg_0), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), false), !vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), arg_0)), !(!vec2<bool>(arg_0, true))), !select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), arg_0), !arg_0), select(select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), true), vec2<bool>(true, true), true)), arg_0);
    global1 = array<Struct_1, 27>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) * _wgslsmith_f_op_f32(189f + -279f)), var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(abs(-1627f))))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return 0i;
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_1(vec2<u32>(u_input.a, firstTrailingBit(abs(u_input.a))), vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 39425u, 33726u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 4294967295u, 9015u, 2433u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))));
    var var_1 = 26729u;
    var var_2 = vec3<i32>(-(i32(-1i) * -func_2(false, var_0.a.x)), -24743i, -1i);
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 27u)];
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1046f)))), global0.x) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, global0.x, -435f)) + _wgslsmith_f_op_vec3_f32(arg_0.yzx - vec3<f32>(arg_0.x, -241f, global0.x)))))));
    return 657f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~vec3<u32>(u_input.a, ~u_input.a, ~(~4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-712f, -226f) + vec2<f32>(global0.x, -1523f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))))))), _wgslsmith_f_op_f32(func_1(vec4<f32>(-1657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1351f + global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.x))))))), Struct_1(vec2<u32>(u_input.a, u_input.a), ~_wgslsmith_mod_vec2_u32(vec2<u32>(27944u, 1u) ^ vec2<u32>(u_input.a, u_input.a), reverseBits(vec2<u32>(0u, 14906u))), vec4<u32>(u_input.a << (4294967295u % 32u), u_input.a >> (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), firstLeadingBit(u_input.a) & u_input.a, 2995u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1454f))) - global0.x)), global1[_wgslsmith_index_u32(u_input.a, 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2167f + var_0.d.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(438f, -270f))), _wgslsmith_f_op_f32(sign(-1876f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, var_0.c))))));
}

