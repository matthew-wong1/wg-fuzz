struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(482f, -802f, -1468f), vec3<f32>(1746f, -1653f, -954f), vec3<f32>(641f, 314f, -348f), vec3<f32>(311f, 1686f, 702f), vec3<f32>(-855f, -1000f, 263f), vec3<f32>(-998f, -1466f, 462f), vec3<f32>(-359f, 459f, -483f), vec3<f32>(463f, -1673f, 1000f), vec3<f32>(-182f, -2077f, 1000f), vec3<f32>(-113f, -2315f, -242f), vec3<f32>(-268f, 351f, -1000f), vec3<f32>(-1442f, -186f, 444f), vec3<f32>(586f, 134f, 1507f), vec3<f32>(194f, -480f, 800f), vec3<f32>(-850f, -352f, 616f), vec3<f32>(-1000f, 373f, 1779f), vec3<f32>(-1181f, -204f, 1442f), vec3<f32>(-525f, -1238f, -861f), vec3<f32>(1000f, 1105f, 433f), vec3<f32>(-1000f, 801f, -755f), vec3<f32>(687f, -1177f, 1483f), vec3<f32>(-511f, -101f, -2187f), vec3<f32>(-271f, -441f, 339f), vec3<f32>(507f, -1001f, 1000f), vec3<f32>(378f, 1691f, -1135f), vec3<f32>(-1230f, 1142f, -1335f), vec3<f32>(738f, -995f, -179f), vec3<f32>(-438f, -2085f, 1000f));

var<private> global1: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> i32 {
    global1 = 69512u;
    var var_0 = !(!vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), (u_input.d.x <= -1i) & true, true | all(vec3<bool>(false, false, false)), true));
    let var_1 = u_input.a.zzx;
    global1 = arg_0.x;
    var var_2 = Struct_1(_wgslsmith_mod_u32(var_1.x, 57006u), vec4<u32>(1u, var_1.x, abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(77446u, arg_3, 14387u), vec3<u32>(0u, 1u, var_1.x), var_0.zww), vec3<u32>(0u, var_1.x, var_1.x))), _wgslsmith_mult_u32(arg_0.x, 8854u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(arg_2, arg_2)), _wgslsmith_f_op_f32(-arg_2), -1140f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_1.x, 28u)] + vec3<f32>(arg_2, -209f, -482f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(753f, arg_2, 1573f), global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec3<f32>(384f, arg_2, 145f), u_input.c == -2147483647i)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1320f, -1000f, arg_2))))), vec3<bool>(any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), var_0.x, !(arg_2 >= arg_2)))), var_0.zy, _wgslsmith_f_op_f32(step(-250f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))))))));
    return reverseBits(u_input.c);
}

fn func_2() -> vec3<bool> {
    global0 = array<vec3<f32>, 28>();
    global1 = u_input.b.x;
    global1 = _wgslsmith_sub_u32(~(~(~(~24091u))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, ~33660u, 39071u), 1u) << (_wgslsmith_div_u32(_wgslsmith_div_u32(1u, u_input.a.x), 1u) % 32u));
    let var_0 = vec4<i32>(-_wgslsmith_mod_i32(func_3(vec3<u32>(10624u, u_input.e, u_input.e), abs(u_input.a.wz), _wgslsmith_div_f32(861f, -432f), u_input.a.x), 1i), firstTrailingBit(~(~abs(-7285i))), 2147483647i, 22800i);
    global1 = 50857u;
    return !vec3<bool>(all(vec3<bool>(true, all(vec2<bool>(false, true)), true)), (any(vec4<bool>(false, false, true, false)) & true) || false, any(vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> bool {
    let var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~select(u_input.b, u_input.a.xw | u_input.b, true), _wgslsmith_mod_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.a.wy, u_input.a.wx)), countOneBits(vec2<u32>(1u, u_input.b.x)) | u_input.b)), vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(select(u_input.a.yx, vec2<u32>(u_input.e, 608u), true)), u_input.a.yy), ~u_input.b.x, 1u, _wgslsmith_div_u32(9341u, _wgslsmith_div_u32(u_input.b.x, 44980u))), _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(min(u_input.b.x << (1u % 32u), u_input.e), 28u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(abs(arg_0.x)), arg_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(305f, -819f, -1000f) * vec3<f32>(arg_0.x, arg_0.x, 614f))), !vec3<bool>(any(vec4<bool>(arg_1, var_0.x, arg_1, true)), true, var_0.x))), var_0.xy, 514f);
    var var_2 = u_input.d.yyx;
    let var_3 = var_1;
    global0 = array<vec3<f32>, 28>();
    return any(!var_0);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    global1 = 5113u;
    var var_0 = arg_0;
    global0 = array<vec3<f32>, 28>();
    let var_1 = arg_0;
    let var_2 = ~select(min(u_input.d, vec4<i32>(-u_input.c, -2147483647i, ~u_input.c, _wgslsmith_div_i32(0i, 21300i))), select(min(vec4<i32>(arg_2.x, 2147483647i, arg_2.x, 1i), arg_2), u_input.d, arg_0.d.x || all(vec2<bool>(var_0.d.x, var_0.d.x))), !((true && var_0.d.x) & (1i < arg_3)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b.x;
    let var_0 = func_4(Struct_1(abs(max(1u, u_input.b.x)), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1915f, -676f, 1127f))), vec2<bool>(any(vec3<bool>(true, true, true)), !func_1(vec2<f32>(655f, -1114f), false, 0i)), -339f), false, abs(u_input.d), i32(-1i) * -1i);
    var var_1 = func_4(Struct_1(firstTrailingBit(firstLeadingBit(var_0.a)), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(-var_0.c)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.e, var_0.c.x, -1124f)))), vec2<bool>(var_0.d.x, !var_0.d.x), _wgslsmith_f_op_f32(sign(-888f))), _wgslsmith_f_op_f32(-1f) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1341f * -409f))))), -max(select(u_input.d, u_input.d, vec4<bool>(var_0.d.x, false, var_0.d.x, true)), u_input.d), ~u_input.d.x ^ u_input.d.x).d.x;
    global1 = max(var_0.b.x, 14605u);
    let var_2 = func_1(var_0.c.zz, var_0.d.x, ~u_input.c | u_input.c);
    let var_3 = ~_wgslsmith_div_vec2_u32(firstTrailingBit(reverseBits(vec2<u32>(u_input.a.x, 3478u))) ^ vec2<u32>(1u, ~u_input.b.x), min(~vec2<u32>(4294967295u, 46248u) ^ ~vec2<u32>(var_0.a, var_0.b.x), var_0.b.yw));
    let x = u_input.a;
    s_output = StorageBuffer(6117u, _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(0i, u_input.c, 8694i)), vec3<i32>(reverseBits(-2147483647i), firstLeadingBit(-57349i), -2147483647i)));
}

