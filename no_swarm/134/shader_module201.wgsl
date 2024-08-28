struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<f32> = vec3<f32>(-2106f, -1000f, 664f);

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(318f, -1252f), vec2<f32>(-1385f, -1375f), vec2<f32>(774f, 267f), vec2<f32>(-750f, 1000f), vec2<f32>(129f, 812f), vec2<f32>(1984f, 1342f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), -990f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -842f))))));
    global2 = array<vec2<f32>, 6>();
    var var_0 = Struct_1(min(_wgslsmith_add_vec2_i32(min(u_input.a.yw, -u_input.a.yw), -(~vec2<i32>(1i, u_input.c))), vec2<i32>(countOneBits(select(-790i, 0i, true)), _wgslsmith_div_i32(-1i, global0.x) >> (u_input.d % 32u))), _wgslsmith_div_f32(1495f, global1.x), _wgslsmith_clamp_u32(abs(0u), max(u_input.d, abs(u_input.d << (120397u % 32u))), 7369u));
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global0.x, 2147483647i), u_input.a.wzx), u_input.a.wyz | u_input.a.xxx), u_input.a.zyw | u_input.a.yxy), u_input.a.wwz) | select(2147483647i, firstLeadingBit(_wgslsmith_clamp_i32(-6017i, ~var_0.a.x, _wgslsmith_sub_i32(u_input.a.x, 2147483647i))), true);
    let var_2 = _wgslsmith_div_f32(502f, _wgslsmith_f_op_f32(-global1.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-150f)))), 141f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(var_0.b - 1000f))), -435f, true))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool) -> f32 {
    global2 = array<vec2<f32>, 6>();
    var var_0 = min(reverseBits(vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d) << (~arg_1 % 32u), 0u, 72670u, _wgslsmith_div_u32(~arg_1, min(u_input.d, 45549u)))), ~vec4<u32>(u_input.b, ~2175u, arg_1, reverseBits(u_input.b)) ^ ~(max(vec4<u32>(arg_1, u_input.b, u_input.d, 1u), vec4<u32>(u_input.b, arg_1, u_input.d, 43397u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(66076u, arg_1, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 4294967295u, arg_1)) % vec4<u32>(32u))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, -1108f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1000f, global1.x) - vec3<f32>(global1.x, 985f, 1005f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1008f, global1.x, global1.x), vec3<f32>(global1.x, -1000f, global1.x))) - vec3<f32>(global1.x, -1165f, -191f))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), 426f, _wgslsmith_f_op_f32(func_3()))));
    global2 = array<vec2<f32>, 6>();
    var var_1 = abs((u_input.a.x >> (var_0.x % 32u)) & _wgslsmith_div_i32(_wgslsmith_mod_i32(17371i, 1i), arg_0)) << (~30442u % 32u);
    return -421f;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.x, u_input.d, false)))), -237f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1481f, _wgslsmith_div_f32(597f, arg_0.x))) + _wgslsmith_f_op_f32(f32(-1f) * -959f))));
    let var_0 = Struct_1(countOneBits(reverseBits(u_input.a.wz)), _wgslsmith_f_op_f32(trunc(global1.x)), abs(~abs(u_input.d)));
    let var_1 = _wgslsmith_f_op_f32(select(var_0.b, global1.x, !(!(!any(vec4<bool>(false, true, false, false))))));
    var var_2 = Struct_1(-u_input.a.zz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, var_1) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + -121f)))), var_0.c >> (u_input.d % 32u));
    let var_3 = -(select(~vec3<i32>(global0.x, var_2.a.x, u_input.c), -_wgslsmith_sub_vec3_i32(vec3<i32>(-43938i, var_0.a.x, var_2.a.x), vec3<i32>(-52582i, 0i, var_0.a.x)), vec3<bool>(true, all(vec2<bool>(true, true)), select(true, false, true))) | vec3<i32>(u_input.a.x, firstLeadingBit(max(-19620i, var_2.a.x)), var_2.a.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<i32>(max(1i, global0.x << (1039u % 32u)), firstTrailingBit(u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -359f), reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(32161u, 57781u, 4294967295u), vec3<u32>(u_input.d, u_input.b, 0u)), ~vec3<u32>(0u, 59026u, 65052u)), countOneBits(u_input.b))));
    let var_1 = func_1(global1.zz);
    var var_2 = select(true, true, true);
    var_0 = func_1(global2[_wgslsmith_index_u32(~(~4731u), 6u)]);
    let var_3 = _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(ceil(1645f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~108304u, 1694u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1081f, global1.x, -1033f) + vec3<f32>(global1.x, 492f, -515f)))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -1327f), _wgslsmith_f_op_f32(f32(-1f) * -526f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(273f, var_0.b, var_0.b) * vec3<f32>(global1.x, var_1.b, var_1.b)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_0.b, 763f))))))), _wgslsmith_f_op_f32(-var_0.b));
}

