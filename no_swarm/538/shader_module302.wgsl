struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = select(_wgslsmith_f_op_f32(-149f + -2695f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-817f)))))), arg_0.a.a.x, true);
    global1 = arg_2.a.a.x;
    global0 = array<vec2<bool>, 2>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -2130f), -1214f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(361f)) - 904f))));
    let var_2 = arg_1;
    return _wgslsmith_dot_vec4_u32(~(~(~firstTrailingBit(vec4<u32>(4294967295u, 85461u, var_2, var_2)))), ~(~vec4<u32>(var_2, ~4294967295u, ~80482u, var_2)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(arg_1);
    let var_1 = arg_3.a.a.x;
    var_0 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(35432u, arg_0) >> (_wgslsmith_mult_u32(arg_0, arg_0) % 32u)), 2u)], arg_1.b));
    global1 = true;
    let var_2 = -vec4<i32>(arg_1.b, (arg_1.b << (_wgslsmith_add_u32(arg_0, arg_2.x) % 32u)) ^ _wgslsmith_mod_i32(u_input.a.x, 52179i), -9131i, -firstLeadingBit(_wgslsmith_sub_i32(arg_1.b, arg_1.b)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(389f - 1480f))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(u_input.a.x, arg_1.x << (~func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(12983u, 2u)], arg_1.x)), 4294967295u, Struct_2(arg_0.a)) % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(38553u, Struct_1(arg_0.a.a, 1i), vec4<u32>(0u, 44716u, 4294967295u, 50914u), arg_0)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(802u, arg_0.a, vec4<u32>(12415u, 39339u, 1u, 65757u), Struct_2(Struct_1(arg_0.a.a, 2147483647i)))), _wgslsmith_f_op_f32(select(337f, -309f, false))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1110f, 1000f) + vec2<f32>(836f, -507f))))));
    global0 = array<vec2<bool>, 2>();
    global0 = array<vec2<bool>, 2>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, var_1.x, -914f, 1637f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 456f, -1000f, -648f))))));
    return Struct_2(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(Struct_1(global0[_wgslsmith_index_u32(2151u << (1u % 32u), 2u)], -firstTrailingBit(u_input.a.x))), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 6619i, u_input.a.x), u_input.a), abs(2147483647i), -u_input.a.x), ~(u_input.a ^ vec3<i32>(u_input.a.x, -1i, 14799i)), vec3<i32>(-2147483647i, -61011i, -25640i))));
    var var_1 = func_1(func_1(Struct_2(func_1(func_1(var_0, u_input.a), u_input.a).a), vec3<i32>(-1i) * -vec3<i32>(var_0.a.b, u_input.a.x, u_input.a.x)), u_input.a);
    let var_2 = func_1(Struct_2(func_1(var_0, select(-vec3<i32>(u_input.a.x, -15794i, u_input.a.x), -u_input.a, vec3<bool>(var_1.a.a.x, true, false))).a), ~firstLeadingBit(vec3<i32>(-45316i, -13155i, u_input.a.x) ^ u_input.a)).a;
    let var_3 = vec3<bool>(true, var_0.a.a.x, !(false & any(var_2.a)) || !any(vec4<bool>(true, var_1.a.a.x, var_1.a.a.x, true)));
    let var_4 = var_0.a.a.x;
    global0 = array<vec2<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_u32(abs(4294967295u), firstTrailingBit(4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1000f)))) + 1f), countOneBits(u_input.a.x >> (~(~1u) % 32u)), u_input.a ^ reverseBits(vec3<i32>(1i, ~58772i, -u_input.a.x)), 95618u);
}

