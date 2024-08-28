struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<i32>(1i, -6260i), -233f, vec4<f32>(1359f, 637f, -1004f, 1000f)), Struct_1(vec2<i32>(-1i, 51592i), -867f, vec4<f32>(446f, 1189f, -573f, -1046f)), Struct_1(vec2<i32>(2147483647i, 19799i), -1574f, vec4<f32>(-178f, 320f, -377f, -975f)), Struct_1(vec2<i32>(48921i, 0i), -1241f, vec4<f32>(-519f, -1145f, -694f, 2184f)), Struct_1(vec2<i32>(60801i, 27474i), 1000f, vec4<f32>(1530f, -1411f, 504f, -464f)));

var<private> global1: array<u32, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = array<Struct_1, 5>();
    var var_0 = vec2<i32>(u_input.b, -1i);
    var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-_wgslsmith_mult_i32(-2642i, u_input.a), -2147483647i), -(~vec2<i32>(var_0.x, u_input.a))), vec2<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_add_i32(var_0.x, firstLeadingBit(u_input.b)), min(-3772i, u_input.b & -2147483647i)), -var_0.x));
    var_0 = vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(-16176i, -27373i, 2147483647i), 16635i) | _wgslsmith_dot_vec3_i32(vec3<i32>(12394i, firstLeadingBit(8953i), var_0.x), ~vec3<i32>(4250i, u_input.b, var_0.x)), -48324i);
    return 24021u > u_input.c.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    let var_0 = func_3();
    let var_1 = select(select(select(vec2<bool>(true, true), select(!vec2<bool>(var_0, true), !vec2<bool>(false, var_0), var_0), !vec2<bool>(true, var_0)), !vec2<bool>(any(vec2<bool>(var_0, true)), var_0), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 4294967295u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 40101u), 19u)], 19u)]) < (_wgslsmith_dot_vec3_u32(u_input.c.wzx, u_input.c.zwy) ^ (u_input.c.x >> (arg_0 % 32u)))), !select(select(vec2<bool>(true, var_0), select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), true), !vec2<bool>(false, var_0)), select(!vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(true, var_0)), vec2<bool>(!var_0, true)), !(!var_0) & var_0);
    global1 = array<u32, 19>();
    let var_2 = min(-vec2<i32>(~20088i, u_input.b << (arg_0 % 32u)) & vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, 2147483647i), abs(vec3<i32>(2147483647i, -1i, u_input.b))), min(u_input.a, u_input.a)), -_wgslsmith_sub_vec2_i32(-(vec2<i32>(27456i, -2147483647i) & vec2<i32>(0i, u_input.a)), vec2<i32>(1i, 1i)));
    return Struct_1(~(~firstTrailingBit(-vec2<i32>(var_2.x, 70i))), -728f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -847f, 887f, 1146f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1023f, -117f, -640f, 1597f), vec4<f32>(-1797f, -762f, 559f, 715f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<u32, 19>();
    let var_0 = _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~13152u, ~global1[_wgslsmith_index_u32(u_input.c.x, 19u)], _wgslsmith_mod_u32(4294967295u, 4294967295u), 1u)), firstLeadingBit(u_input.c)) & (_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(~1u, 19u)], ~4294967295u) ^ 4294967295u);
    var var_1 = Struct_1(max(~vec2<i32>(2147483647i, arg_2.a.x), firstLeadingBit(~vec2<i32>(u_input.a, 20839i))), 740f, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.b, arg_1.b))))))));
    var_1 = global0[_wgslsmith_index_u32(~var_0, 5u)];
    var_1 = func_2(var_0);
    return vec4<bool>(all(vec2<bool>(false, any(vec2<bool>(true, true)))), !select(_wgslsmith_f_op_f32(f32(-1f) * -418f) != _wgslsmith_f_op_f32(773f + arg_2.b), u_input.a >= reverseBits(0i), false), select(firstLeadingBit(~(-1i)), var_1.a.x, all(vec3<bool>(false, false, true))) <= ~_wgslsmith_mod_i32(-2147483647i, u_input.a ^ arg_1.a.x), true);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    var var_0 = arg_0.a.x;
    let var_1 = false;
    var var_2 = _wgslsmith_div_i32((-_wgslsmith_div_i32(1i, arg_0.a.x) & _wgslsmith_mod_i32(u_input.a, -35507i)) << (10644u % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.b, 1i), 25986i, -u_input.a, -56747i), abs(vec4<i32>(-29414i, arg_0.a.x, 1i, -1i) >> (u_input.c % vec4<u32>(32u)))));
    let var_3 = Struct_1(~firstTrailingBit(_wgslsmith_add_vec2_i32(~vec2<i32>(0i, u_input.b), -vec2<i32>(-2147483647i, u_input.a))), -1000f, vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.x)) * -707f)), 1694f, 960f));
    var var_4 = var_3.c.x;
    return !func_4(arg_0, var_3, func_2(0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    global1 = array<u32, 19>();
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(-107041i, u_input.a << (u_input.c.x % 32u)), abs(vec2<i32>(2147483647i, u_input.a) >> (abs(u_input.c.zw) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2263f * 667f), _wgslsmith_f_op_f32(f32(-1f) * -612f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-932f)) * _wgslsmith_f_op_f32(ceil(695f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -780f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(753f, -1796f) + 725f))), vec4<f32>(1f, 1f, 1f, 1f));
    global1 = array<u32, 19>();
    let var_1 = func_1(Struct_1(var_0.a, -129f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.x)) * _wgslsmith_f_op_f32(105f * 1942f)), 2065f, -2101f, _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(ceil(-1000f)), true)))), _wgslsmith_sub_u32(73000u, ~u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, -20829i), vec2<i32>(var_0.a.x, 2147483647i))), var_0.c);
}

