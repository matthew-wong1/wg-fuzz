struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32> = vec2<f32>(-317f, 193f);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<i32>(16353i, -28192i, -9278i), vec3<i32>(1i, 13746i, 7015i), true, 25029i), Struct_1(vec3<i32>(-15088i, 0i, -54225i), vec3<i32>(2147483647i, 2147483647i, -1i), true, 1i));

var<private> global3: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(156f, 1138f, 1000f), vec3<f32>(-2253f, 1000f, 378f), vec3<f32>(-578f, -273f, 935f), vec3<f32>(1939f, -458f, 836f), vec3<f32>(-708f, -1029f, -1302f), vec3<f32>(944f, -314f, -1987f), vec3<f32>(-263f, 249f, 551f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global2 = array<Struct_1, 2>();
    global0 = true;
    var var_0 = Struct_1(arg_2.zyy, ~(~_wgslsmith_add_vec3_i32(-u_input.c, arg_3.a)), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, arg_1.c), arg_3.c)), _wgslsmith_sub_i32(-8286i, _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_3.b), arg_2.wzx)));
    var var_1 = arg_3.b;
    global0 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    global3 = array<vec3<f32>, 7>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(-arg_1.x)))), -174f)));
    global1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, -1000f), arg_1, vec2<bool>(arg_2.c, false)));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -359f, arg_2.c)) * arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_3.x, arg_2, min(vec4<i32>(-680i, u_input.a, arg_3.x, arg_3.x), vec4<i32>(arg_2.a.x, -42617i, arg_2.d, 2147483647i)), Struct_1(u_input.c, vec3<i32>(arg_3.x, arg_3.x, arg_2.a.x), false, u_input.c.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.x, -1000f), -2155f)))))));
    let var_1 = arg_2.c;
    return _wgslsmith_mod_i32(u_input.b, -_wgslsmith_sub_i32(firstLeadingBit(~12197i), -1i));
}

fn func_1() -> bool {
    var var_0 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(u_input.c.x) | 1i, func_2(1u, _wgslsmith_div_vec2_f32(vec2<f32>(233f, -1000f), vec2<f32>(1684f, global1.x)), global2[_wgslsmith_index_u32(firstTrailingBit(110912u), 2u)], vec2<i32>(u_input.c.x, 11983i)), -(i32(-1i) * -29349i)), u_input.c), (select(u_input.c, _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(30170i, 1i, u_input.a)), true) << (vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(7496u, 4294967295u, 4294967295u)), 1u) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(29261u, 51621u, 19084u)), vec3<u32>(96177u, 0u, 4168u)), abs(vec3<u32>(4285u, 4294967295u, 65915u)), select(vec3<u32>(53822u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, false))) % vec3<u32>(32u)), true, _wgslsmith_add_i32(_wgslsmith_add_i32(reverseBits(u_input.b >> (4294967295u % 32u)), _wgslsmith_sub_i32(u_input.c.x, countOneBits(1i))), 3980i));
    let var_1 = abs(max(~select(~u_input.a, min(20003i, u_input.a), var_0.c), -_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(-25036i, var_0.a.x)) << (~_wgslsmith_clamp_u32(48827u, 4294967295u, 8281u) % 32u)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstLeadingBit(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(65152u, 0u, 66371u, 17829u), vec4<bool>(true, var_0.c, false, false))), ~(~vec4<u32>(1u, 1u, 1u, 1u))), 2u)];
    var_2 = global2[_wgslsmith_index_u32(~(~1u), 2u)];
    global3 = array<vec3<f32>, 7>();
    return !var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 7>();
    var var_0 = vec4<i32>(72806i, 0i, u_input.b, _wgslsmith_div_i32(~u_input.b, -29956i));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, 1000f))), global1.x)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(698f, 704f))) + vec2<f32>(global1.x, global1.x)), vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - global1.x)))))));
    var var_1 = -312f;
    let var_2 = vec3<f32>(global1.x, global1.x, 620f);
    var var_3 = any(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)) & true, func_1(), _wgslsmith_div_f32(var_2.x, -962f) <= 943f));
    let x = u_input.a;
    s_output = StorageBuffer(max(~firstTrailingBit(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, abs(1u)), firstLeadingBit(vec2<u32>(1u, 1u)))), global1.x);
}

