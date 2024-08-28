struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(748f, -742f, -903f), vec3<f32>(1282f, 463f, -134f), vec3<f32>(647f, 327f, 244f), vec3<f32>(-1000f, -965f, 553f), vec3<f32>(1243f, 520f, -335f), vec3<f32>(228f, -446f, -583f), vec3<f32>(1000f, -669f, 1000f), vec3<f32>(-1367f, -661f, 891f), vec3<f32>(1000f, 1129f, -1433f), vec3<f32>(-114f, 184f, -1158f), vec3<f32>(-1046f, -329f, 984f), vec3<f32>(773f, -619f, 577f), vec3<f32>(1130f, 518f, 593f), vec3<f32>(384f, -311f, -230f), vec3<f32>(-418f, -1000f, 527f), vec3<f32>(2921f, 647f, 1395f), vec3<f32>(280f, -474f, 1000f), vec3<f32>(2231f, 2198f, 1358f), vec3<f32>(259f, -410f, -1158f), vec3<f32>(688f, 457f, -315f), vec3<f32>(399f, -502f, 326f), vec3<f32>(956f, 1000f, 855f), vec3<f32>(-919f, 1000f, 613f), vec3<f32>(1000f, 1643f, 1289f), vec3<f32>(416f, 998f, 231f), vec3<f32>(409f, 131f, -1292f), vec3<f32>(1685f, 1810f, -1000f), vec3<f32>(-593f, 1374f, -1752f), vec3<f32>(609f, -141f, 2334f));

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 30>;

var<private> global3: array<vec3<f32>, 16>;

var<private> global4: array<vec2<bool>, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    global2 = array<vec3<f32>, 30>();
    global1 = Struct_1(firstTrailingBit(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 24185i), global1.a)), global1.b);
    let var_0 = Struct_1(vec2<i32>(1i, -u_input.a), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(global1.b, global1.b), _wgslsmith_div_vec2_u32(vec2<u32>(50744u, global1.b), vec2<u32>(0u, global1.b)), true), select(vec2<u32>(0u, 0u) << (vec2<u32>(global1.b, 4294967295u) % vec2<u32>(32u)), abs(vec2<u32>(6536u, global1.b)), vec2<bool>(true, true)) | abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.b, global1.b), vec2<u32>(global1.b, 0u)))));
    global3 = array<vec3<f32>, 16>();
    var var_1 = !select(true, true, true);
    return !vec3<bool>(!(_wgslsmith_f_op_f32(step(-952f, -635f)) < _wgslsmith_div_f32(-932f, 1610f)), all(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.b, global1.b), 31u)]) && true, true);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~reverseBits(~(u_input.b & vec2<i32>(u_input.a, u_input.b.x))), ~1u);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(858f - _wgslsmith_f_op_f32(-150f + 100f))), -1119f), -1197f);
    var var_2 = select(!func_3(), select(vec3<bool>(true, 1u <= reverseBits(global1.b), any(!global4[_wgslsmith_index_u32(20149u, 31u)])), vec3<bool>(global1.a.x >= reverseBits(26149i), true, true), all(vec3<bool>(any(vec3<bool>(false, true, false)), select(false, false, false), true))), !vec3<bool>(var_0.a.x <= u_input.b.x, func_3().x, false));
    var var_3 = Struct_1(vec2<i32>(39936i, 692i), _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(var_0.b, var_0.b, 0u) | vec3<u32>(global1.b, global1.b, var_0.b))), reverseBits(vec3<u32>(7697u, _wgslsmith_clamp_u32(1u, 4150u, global1.b), 40759u))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) * -323f))));
    return Struct_1(vec2<i32>(~min(10289i, _wgslsmith_sub_i32(19302i, var_3.a.x)), var_0.a.x), var_3.b);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(~countOneBits(vec2<i32>(firstLeadingBit(61079i), countOneBits(-2147483647i))), ~_wgslsmith_sub_u32(func_2().b | _wgslsmith_mult_u32(arg_0.b, 1u), func_2().b));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1720f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(362f))))), arg_1, 565f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global3[_wgslsmith_index_u32(77400u, 16u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2[_wgslsmith_index_u32(global1.b, 30u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-242f, -1362f, arg_1)), global3[_wgslsmith_index_u32(firstTrailingBit(global1.b), 16u)])))));
    var var_2 = func_2();
    global3 = array<vec3<f32>, 16>();
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -1279f, false)))))))));
    return Struct_1(-vec2<i32>(u_input.a, _wgslsmith_clamp_i32(17996i, select(2147483647i, arg_2, true), 1i << (arg_0.b % 32u))), 4294967295u);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(global1.b, 0u, 53256u)), vec3<u32>(global1.b ^ global1.b, _wgslsmith_clamp_u32(global1.b, 4294967295u, 55179u), ~global1.b)) ^ ~vec3<u32>(global1.b, global1.b, global1.b);
    let var_1 = -u_input.b;
    var_0 = vec3<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), ~_wgslsmith_mult_u32(var_0.x, 4294967295u), ~(0u >> (_wgslsmith_sub_u32(var_0.x, ~global1.b) % 32u)));
    var var_2 = vec2<f32>(arg_1, arg_1);
    global4 = array<vec2<bool>, 31>();
    return func_4(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.x, var_2.x))), _wgslsmith_f_op_f32(min(498f, var_2.x))))), -(arg_0.x | (i32(-1i) * -9682i)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = all(vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    global2 = array<vec3<f32>, 30>();
    global2 = array<vec3<f32>, 30>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -361f))))) >= 1215f;
    var var_2 = ~(~arg_0.b) >= min(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(25299u, global1.b, arg_2, arg_1.b), vec4<u32>(arg_0.b, arg_1.b, arg_1.b, 0u))), ~countOneBits(global1.b));
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(func_4(func_1(vec4<i32>(arg_1.a.x, u_input.b.x, -55373i, -23303i), 588f), _wgslsmith_f_op_f32(f32(-1f) * -839f), _wgslsmith_mult_i32(arg_0.a.x, -1i)).a.x & 15485i, arg_1.a.x), _wgslsmith_div_i32(49829i, _wgslsmith_mult_i32(~(~u_input.a), -(~arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(func_5(func_1(vec4<i32>(-44520i, global1.a.x, -2147483647i, -24585i), _wgslsmith_f_op_f32(627f + 468f)), func_2(), ~_wgslsmith_add_u32(global1.b, global1.b)), _wgslsmith_clamp_i32(~global1.a.x >> (countOneBits(4294967295u) % 32u), 0i, 10174i)), global1.b);
    var_0 = Struct_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(var_0.a >> (firstLeadingBit(vec2<u32>(5327u, global1.b)) % vec2<u32>(32u))), ~(countOneBits(vec2<i32>(var_0.a.x, global1.a.x)) & u_input.b)), countOneBits(4294967295u));
    var_0 = Struct_1(~vec2<i32>(2147483647i, 16337i), global1.b);
    let var_1 = func_1(vec4<i32>(global1.a.x, _wgslsmith_add_i32(-1819i, -(~1i)), -15434i, select(min(51166i, ~(-80009i)), var_0.a.x, true)), -906f);
    let var_2 = func_4(var_1, _wgslsmith_f_op_f32(1534f * -348f), -47466i);
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec2<u32>(1u, _wgslsmith_mod_u32(~0u, ~(~var_2.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1302f * 256f), func_3().x))))), 11410i);
}

