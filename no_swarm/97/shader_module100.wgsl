struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: i32 = -4578i;

var<private> global3: u32;

var<private> global4: array<u32, 9> = array<u32, 9>(116910u, 4294967295u, 15997u, 0u, 4294967295u, 4294967295u, 41786u, 55180u, 1u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<f32>) -> f32 {
    global3 = firstLeadingBit(13549u);
    let var_0 = Struct_1(true, true, 390i);
    let var_1 = Struct_1(arg_0, true, max(-_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.c, 2147483647i), 0i), ~(-16186i)));
    return arg_2.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f)), _wgslsmith_f_op_f32(func_3(arg_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1151f, -794f) + vec2<f32>(-675f, -1000f)), vec2<f32>(2203f, -2537f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1911f - -1000f) - _wgslsmith_f_op_f32(abs(-387f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    global3 = 4294967295u;
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(278f, _wgslsmith_f_op_f32(-1761f + _wgslsmith_f_op_f32(min(-1109f, -1256f))), -637f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f - 487f) - _wgslsmith_f_op_f32(-372f + 695f)), _wgslsmith_f_op_f32(func_2(arg_2.c, arg_0, arg_0, Struct_1(arg_0.b, global0.a, global0.c))), _wgslsmith_div_f32(-515f, -478f))), vec3<f32>(1999f, _wgslsmith_f_op_f32(1423f * -1048f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f * -1000f))))));
    var var_1 = var_0.x;
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~min(select(1u, global1.x, false), _wgslsmith_sub_u32(16268u, 1u)), arg_1), global1.yx);
    let var_1 = global0.a;
    let var_2 = true;
    let var_3 = vec4<i32>(~(-abs(33358i)), min(-2147483647i, global0.c) >> (7208u % 32u), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, 1i), vec2<i32>(arg_0, 27620i)), 40355i, ~2147483647i), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(global0.c, global0.c, -26435i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.c, global0.c), vec3<i32>(2147483647i, arg_0, 1i), vec3<i32>(arg_0, u_input.c, arg_0))))), abs(-31867i));
    global3 = _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(firstLeadingBit(36893u), ~_wgslsmith_div_u32(arg_1, global1.x), _wgslsmith_dot_vec4_u32(select(u_input.b, vec4<u32>(0u, 56428u, 16730u, global1.x), vec4<bool>(true, var_2, true, global0.a)), u_input.b | u_input.b))), global1.xzx);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1061f))))), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(trunc(arg_2.x)))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(abs(reverseBits(~countOneBits(vec4<i32>(global0.c, u_input.c, u_input.c, global0.c)))));
    global3 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~(-36220i), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, global4[_wgslsmith_index_u32(global1.x, 9u)]), global1.xw) << (select(u_input.a, 21295u, global0.a) % 32u)), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(51887i <= global0.c, true, global0.c), 1u, Struct_1(false, false, -global0.c))))));
    let var_2 = _wgslsmith_mod_u32(~global1.x << (_wgslsmith_div_u32(global4[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_dot_vec3_u32(select(u_input.b.zxw, vec3<u32>(global4[_wgslsmith_index_u32(0u, 9u)], 4294967295u, 55810u), vec3<bool>(false, false, false)), u_input.b.wzy)) % 32u), min(global4[_wgslsmith_index_u32(~16752u, 9u)], u_input.e) | 0u);
    var var_3 = select(!(!select(vec3<bool>(global0.b, global0.b, true), select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(global0.b, false, global0.b), vec3<bool>(global0.a, global0.a, global0.b)), false)), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, global0.a, global0.a), global0.b), select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(false, false, global0.b), global0.b), !vec3<bool>(global0.b, global0.a, false)), vec3<bool>(true, any(vec4<bool>(true, global0.a, false, false)), global0.a), select(!vec3<bool>(global0.a, false, true), select(vec3<bool>(false, true, global0.a), vec3<bool>(false, false, false), false), vec3<bool>(global0.b, false, global0.a))), !select(select(vec3<bool>(false, global0.b, false), vec3<bool>(false, global0.b, global0.a), true), select(vec3<bool>(global0.a, true, false), vec3<bool>(false, global0.b, true), true), select(vec3<bool>(global0.b, false, true), vec3<bool>(false, false, false), global0.a)), !((1i != global0.c) && (true & global0.b))), true);
    let var_4 = ~35420u;
    var var_5 = global1.wy;
    let var_6 = Struct_1(abs(~(-1i & var_0.x)) > global0.c, var_3.x, -_wgslsmith_mod_i32(~7768i, firstTrailingBit(_wgslsmith_mod_i32(global0.c, u_input.c))));
    var var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_7.c, var_0.x, u_input.c, -1i)), var_0) >> (_wgslsmith_div_vec4_u32(u_input.b ^ u_input.b, ~u_input.b) % vec4<u32>(32u))), 212f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1073f)))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-317f, -644f, var_1)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(1439f, 436f, false)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(683f))))), vec3<f32>(_wgslsmith_f_op_f32(func_3(any(vec4<bool>(true, false, global0.a, global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -418f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1)))), var_1, -614f)), ~(firstTrailingBit(1u) ^ ~abs(var_2)));
}

