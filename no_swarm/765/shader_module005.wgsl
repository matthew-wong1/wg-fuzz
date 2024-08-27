struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(606f)), _wgslsmith_f_op_f32(223f + 322f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-237f, 1265f)), -1215f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2043f - _wgslsmith_f_op_f32(f32(-1f) * -711f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(ceil(805f)))) + 445f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(421f)), _wgslsmith_f_op_f32(select(1000f, 860f, arg_1)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(352f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1157f)));
    global1 = global0.yxy;
    global1 = vec3<bool>(false, global1.x, arg_1);
    var var_1 = ~(max(_wgslsmith_mult_i32(u_input.b.x >> (arg_0 % 32u), abs(u_input.a.x)), u_input.b.x) << (_wgslsmith_mult_u32(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u) ^ vec2<u32>(arg_0, 37512u), vec2<u32>(1u, 1u))) % 32u));
    var var_2 = select(global0.xzx, !(!vec3<bool>(any(vec4<bool>(false, true, global0.x, true)), true, false)), any(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(global1.x, true, false, false), global0.x), select(!vec4<bool>(global1.x, arg_1, false, arg_1), vec4<bool>(false, true, true, arg_1), false), !vec4<bool>(true, global0.x, arg_1, true))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-719f - -1423f)))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> i32 {
    var var_0 = i32(-1i) * -_wgslsmith_add_i32(abs(_wgslsmith_mod_i32(0i, -2147483647i)), 81814i);
    var var_1 = _wgslsmith_add_i32(1i, i32(-1i) * -1i);
    var_0 = -19266i;
    global1 = global0.xwy;
    let var_2 = Struct_1(vec4<u32>(~1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(109718u, 60982u), vec2<u32>(828u, 1517u)) % 32u), _wgslsmith_div_u32(~countOneBits(1u), abs(4294967295u)), ~(_wgslsmith_mod_u32(41596u, 36104u) & _wgslsmith_dot_vec3_u32(vec3<u32>(49100u, 1u, 19076u), vec3<u32>(45534u, 4294967295u, 1414u))), _wgslsmith_div_u32(~(~0u), 58473u)), 63746u);
    return _wgslsmith_div_i32(-15440i, -2147483647i);
}

fn func_2() -> bool {
    var var_0 = abs(func_4(Struct_3(-vec2<i32>(-11212i, 1i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(52830u, true))), 1823f)), global1.x));
    let var_1 = Struct_1(select(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(789u, ~(~191u), firstTrailingBit(~1393u), 0u), select(select(select(vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, global1.x, global1.x, global0.x), vec4<bool>(global0.x, true, true, false)), !vec4<bool>(global1.x, global0.x, global0.x, false), all(vec2<bool>(false, true))), !select(vec4<bool>(global0.x, global0.x, false, global1.x), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(false, global1.x, false, global1.x)), select(select(vec4<bool>(global0.x, global1.x, false, false), vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(true, global0.x, global1.x, true)), select(vec4<bool>(true, false, global1.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), false), select(vec4<bool>(global1.x, true, global0.x, false), vec4<bool>(false, false, true, global0.x), false)))), 7481u);
    var var_2 = vec2<bool>(global0.x, false);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-135f, -845f, _wgslsmith_f_op_f32(846f + 979f)), vec3<f32>(_wgslsmith_f_op_f32(sign(1672f)), _wgslsmith_f_op_f32(f32(-1f) * -652f), 865f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(153f, 216f, -229f))), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, global1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1291f, -514f, -1015f) + vec3<f32>(201f, -1043f, -1717f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(189f, -886f, -2195f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-784f, 739f, 359f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1260f, 1532f, _wgslsmith_f_op_f32(1363f - -700f)))), global0.xzy));
    var var_4 = var_1;
    return !(-803f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-439f * _wgslsmith_f_op_f32(var_3.x * 429f)))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(vec4<u32>(1u, 1u, 1u, 1u), 1u);
    global1 = global0.yyw;
    var var_1 = vec2<u32>(var_0.b, var_0.a.x ^ ~var_0.b);
    global0 = !vec4<bool>(!func_2() & any(vec4<bool>(global0.x, global0.x, false, global1.x)), true, true, false);
    var_1 = vec2<u32>(~abs(1u), 52903u);
    return Struct_2(_wgslsmith_div_vec3_i32(u_input.b.yyw, u_input.b.wxx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = vec4<bool>(global1.x, !(!(!(!global0.x))), u_input.a.x < 1i, any(global0.yy));
    let var_1 = Struct_1(min(vec4<u32>(~abs(36263u), 1u, 25683u, select(1u, 4294967295u, true)), vec4<u32>(4294967295u, ~(~65277u), 1u, ~_wgslsmith_div_u32(62636u, 4294967295u))), firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 38141u), vec2<u32>(4294967295u, 57658u))) | countOneBits(~4294967295u));
    let var_2 = global0.zw;
    global0 = select(select(select(select(select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(global0.x, global1.x, false, false), true), !vec4<bool>(var_2.x, true, true, true), select(vec4<bool>(global1.x, global1.x, var_2.x, false), vec4<bool>(true, global1.x, false, true), vec4<bool>(global1.x, true, var_2.x, global1.x))), vec4<bool>(true, true, true, true), true), !(!(!vec4<bool>(false, true, var_2.x, var_2.x))), vec4<bool>(!(!global1.x), false, true, var_2.x)), vec4<bool>(any(vec4<bool>(select(false, global0.x, global0.x), true, !global1.x, true & global0.x)), all(select(select(vec4<bool>(true, global1.x, var_2.x, global1.x), vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(global1.x, true, global0.x, global1.x)), select(vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(false, false, global0.x, global1.x), vec4<bool>(var_2.x, false, true, true)), !vec4<bool>(false, global1.x, true, global1.x))), var_2.x, true), select(vec4<bool>(true, all(select(vec4<bool>(global1.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, global1.x, global1.x), var_2.x)), true, !var_2.x), select(!vec4<bool>(var_2.x, var_2.x, global0.x, true), select(select(vec4<bool>(var_2.x, global0.x, true, false), vec4<bool>(true, false, false, global0.x), true), select(vec4<bool>(global0.x, true, global1.x, global1.x), vec4<bool>(var_2.x, global0.x, false, global0.x), var_2.x), vec4<bool>(global1.x, var_2.x, global0.x, var_2.x)), vec4<bool>(select(global0.x, false, false), any(global0.zx), var_2.x & true, true)), !(!(!vec4<bool>(global1.x, global1.x, false, var_2.x)))));
    var var_3 = min(select(vec2<i32>(var_0.a.x, -31114i), u_input.a, !((global0.x && var_2.x) && all(vec4<bool>(false, global1.x, false, var_2.x)))), -var_0.a.yx);
    var var_4 = Struct_3(~vec2<i32>(2617i, -1504i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-436f, 221f, true))))), ~vec3<i32>(1i, _wgslsmith_mod_i32(-1i, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(25051i, 13788i, -36533i), vec3<i32>(1731i, var_3.x, u_input.a.x)) ^ firstLeadingBit(var_3.x)), ~4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2373f, -1194f, -117f, -2097f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(294f, -859f, -1233f, 1086f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-334f, -397f, 530f, 674f))))));
}

