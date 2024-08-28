struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 105045u;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec2<u32>(10030u, 1u));

var<private> global3: bool = true;

var<private> global4: array<Struct_1, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(vec3<bool>(arg_0.a.x, all(!select(vec4<bool>(arg_0.a.x, global2.a.x, false, true), vec4<bool>(arg_0.a.x, false, true, arg_0.a.x), false)), all(!(!arg_0.a.yz))), vec2<u32>(27830u, firstLeadingBit(1u)));
    var var_1 = var_0;
    global0 = global1.x & global2.b.x;
    var_1 = global4[_wgslsmith_index_u32(~firstLeadingBit(global1.x), 7u)];
    let var_2 = 1819f;
    return !(false & var_0.a.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> vec2<f32> {
    global0 = ~0u;
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-237f)) * -1554f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1249f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f * 1f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1106f, -911f), vec2<f32>(-475f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1486f, -1396f))), global2.a.xz)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global1 = select(vec2<u32>(0u, global1.x), vec2<u32>(~(~_wgslsmith_add_u32(4294967295u, 0u)), u_input.a), !any(!vec2<bool>(global2.a.x, true)) && true);
    global2 = global4[_wgslsmith_index_u32(global1.x, 7u)];
    let var_0 = ~select(_wgslsmith_div_vec2_i32(-vec2<i32>(11130i, u_input.e), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, u_input.c.x), vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(u_input.e, u_input.d.x))), vec2<i32>(_wgslsmith_mult_i32(u_input.e, firstTrailingBit(-68138i)), u_input.b.x), global2.a.yy);
    var var_1 = select(select(!select(vec4<bool>(global2.a.x, true, arg_1.a.x, false), vec4<bool>(true, arg_1.a.x, false, global2.a.x), select(vec4<bool>(arg_1.a.x, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(false, global2.a.x, global2.a.x, true), true)), vec4<bool>(false, ~u_input.a != _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.b.x), global2.b), true, arg_1.a.x), false), select(!vec4<bool>(any(vec4<bool>(global2.a.x, false, global2.a.x, false)), -17299i > var_0.x, global2.a.x, true), !select(vec4<bool>(true, global2.a.x, true, global2.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, true, global2.a.x, arg_1.a.x)), select(!vec4<bool>(true, false, true, global2.a.x), select(!vec4<bool>(arg_1.a.x, true, true, true), select(vec4<bool>(arg_1.a.x, true, false, true), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false), true), true), vec4<bool>(global2.a.x, all(vec2<bool>(global2.a.x, global2.a.x)), true, false))), !select(vec4<bool>(arg_1.a.x, false, any(global2.a.xy), false), vec4<bool>(true, any(vec4<bool>(false, global2.a.x, true, true)), global2.a.x & global2.a.x, arg_0.x <= 1000f), arg_1.a.x));
    global0 = _wgslsmith_mod_u32(u_input.a, ~(19634u >> (_wgslsmith_div_u32(4294967295u, ~u_input.a) % 32u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -777f);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_1 {
    global3 = true;
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(global2.a.x, global2.a.x, false, global2.a.x), Struct_1(vec3<bool>(global2.a.x, false, global2.a.x), global2.b), func_3(Struct_1(vec3<bool>(true, global2.a.x, false), global2.b)), vec4<u32>(global2.b.x, 4294967295u, 0u, 4294967295u))), global4[_wgslsmith_index_u32(~arg_0, 7u)])), _wgslsmith_f_op_f32(floor(1310f)))));
    let var_1 = global4[_wgslsmith_index_u32(arg_0, 7u)];
    var var_2 = global4[_wgslsmith_index_u32(5470u, 7u)];
    let var_3 = ~1029u;
    return Struct_1(!select(global2.a, var_1.a, vec3<bool>(true, !var_2.a.x, true)), ~(~var_2.b));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = 70265u;
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.b.x, ~global1.x), vec3<u32>(countOneBits(0u), ~30388u, ~15096u));
    global4 = array<Struct_1, 7>();
    global2 = func_2(791u >> (firstLeadingBit(31235u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1517f * -1000f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f + 665f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-293f * -1227f)))))), 1379f);
    global2 = Struct_1(select(func_2(_wgslsmith_mult_u32(~u_input.a, min(u_input.a, global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(624f)) * 1172f), 869f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-516f)))).a, select(vec3<bool>(true, u_input.a > 4294967295u, arg_0.a.x && true), !arg_0.a, select(select(global2.a, vec3<bool>(arg_0.a.x, false, arg_0.a.x), arg_0.a.x), vec3<bool>(true, true, true), vec3<bool>(global2.a.x, false, arg_0.a.x))), vec3<bool>(true, select(global2.a.x, true, arg_0.a.x == true), arg_0.a.x)), ~global2.b);
    return _wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.b.x, global2.b.x), _wgslsmith_mod_u32(~arg_0.b.x, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_add_vec3_u32((~vec3<u32>(4294967295u, 40948u, 1u) & ~vec3<u32>(global1.x, 0u, 1u)) ^ (select(vec3<u32>(0u, 9628u, 1u), vec3<u32>(31570u, global2.b.x, u_input.a), global2.a.x) ^ ~vec3<u32>(9933u, 11786u, 18953u)), vec3<u32>(firstLeadingBit(global2.b.x), _wgslsmith_add_u32(func_1(global4[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(35444u, 4294967295u, 26482u), vec3<u32>(global1.x, 0u, global1.x))), 66791u)));
    var var_1 = func_2(u_input.a, 1385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f - 594f) + -738f))) - -675f), 367f).a.x;
    let var_2 = func_2(~(global2.b.x | u_input.a), 1000f, _wgslsmith_f_op_f32(max(-797f, _wgslsmith_f_op_f32(184f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -488f), 1000f, all(vec4<bool>(global2.a.x, false, global2.a.x, false))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -460f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1088f, 636f, -1195f, -1528f) + vec4<f32>(233f, 674f, -159f, -1264f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1100f - -1973f), -187f, _wgslsmith_f_op_f32(step(1335f, -460f)), -1098f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    global2 = global4[_wgslsmith_index_u32(countOneBits(max(62794u, 55482u)), 7u)];
    global0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3.zz), u_input.c.yxz, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -2036f))), func_2((0u | countOneBits(var_2.b.x)) | func_1(var_2), var_3.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(733f - var_3.x))))).b.x);
}

