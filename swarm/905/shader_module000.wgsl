struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1259f, 215f), 32874i, vec3<f32>(1266f, 501f, -615f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = !(!all(vec4<bool>(all(vec3<bool>(true, true, true)), true, false, true)));
    let var_1 = -1i;
    return ~(-8380i);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.c.x))))), reverseBits(_wgslsmith_clamp_i32(min(-u_input.b, ~1i), 15121i, -func_3(arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(658f, _wgslsmith_f_op_f32(465f + global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), _wgslsmith_f_op_f32(max(461f, arg_1.a.x)))))));
    let var_1 = var_0.c.x;
    let var_2 = min(u_input.c.xx, ~u_input.c.zx);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.c.xx), firstTrailingBit(-11581i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(739f, _wgslsmith_f_op_f32(min(arg_0, arg_1.c.x)), _wgslsmith_f_op_f32(615f + 202f))) + global1.c));
    let var_4 = vec2<i32>(_wgslsmith_add_i32(-(_wgslsmith_sub_i32(u_input.b, -2147483647i) << (1329u % 32u)), _wgslsmith_sub_i32(arg_2.x, arg_2.x)), u_input.b);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = arg_1.a.x;
    global1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c.x + global1.a.x))) + _wgslsmith_f_op_f32(min(arg_1.c.x, _wgslsmith_f_op_f32(-global1.c.x))))), arg_2, vec3<i32>(i32(-1i) * -9393i, _wgslsmith_mod_i32(arg_2.b, func_2(-1096f, arg_2, vec3<i32>(u_input.a.x, u_input.b, u_input.b)).b | max(global1.b, global1.b)), u_input.a.x));
    var var_1 = u_input.c.x;
    global0 = array<f32, 10>();
    var var_2 = ~(~u_input.c.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.zx) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1045f + -457f), _wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(arg_2.c.x * -278f)));
}

fn func_1() -> Struct_1 {
    let var_0 = -20391i;
    global0 = array<f32, 10>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f + 684f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(667f, global0[_wgslsmith_index_u32(78137u, 10u)]) + _wgslsmith_f_op_f32(sign(-804f)))), global1.a.x) + 1540f);
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1395f, -1622f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, -1000f) + global1.c.yy) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global1.a.x)), _wgslsmith_f_op_vec2_f32(global1.a - global1.c.yz))))), u_input.a.x, global1.c);
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(func_2(612f, Struct_1(vec2<f32>(var_2.c.x, 848f), 2147483647i << (u_input.c.x % 32u), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 10u)], global1.a.x, 961f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], 1822f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]))), ~vec3<i32>(u_input.a.x, var_2.b, 15614i)), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.x))), func_2(-1157f, func_2(var_2.c.x, Struct_1(var_2.c.zz, u_input.a.x, vec3<f32>(global1.c.x, global0[_wgslsmith_index_u32(15194u, 10u)], 1548f)), u_input.a), vec3<i32>(11184i, -1i, u_input.b)), u_input.a << (abs(u_input.c) % vec3<u32>(32u))), func_2(-1000f, func_2(1351f, func_2(-977f, Struct_1(vec2<f32>(267f, var_2.a.x), var_2.b, vec3<f32>(-662f, global1.c.x, -613f)), vec3<i32>(2147483647i, u_input.b, 38989i)), vec3<i32>(var_2.b, 0i, var_2.b)), -(u_input.a << (vec3<u32>(24099u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))))), ~27420i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.c, var_2.c))), vec3<f32>(_wgslsmith_f_op_f32(var_2.c.x * -1085f), -722f, _wgslsmith_f_op_f32(sign(304f))))) + vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.c, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 11100u), u_input.c)), 10u)], 389f, global1.c.x)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.yy + global1.c.zx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-700f, global1.c.x))))), vec2<f32>(var_2.a.x, -1637f))), 4851i, vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -1624f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 10u)]) * 682f), -951f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_2(_wgslsmith_f_op_f32(-global1.a.x), func_1(), u_input.a);
    var_1 = func_2(-965f, var_0, -(u_input.a << (~firstTrailingBit(u_input.c) % vec3<u32>(32u))));
    let var_2 = !any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))));
    global0 = array<f32, 10>();
    var var_3 = func_1();
    let var_4 = _wgslsmith_sub_u32(max((_wgslsmith_div_u32(u_input.c.x, 28056u) ^ firstTrailingBit(37382u)) | (1u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, 40986u, 4294967295u, u_input.c.x))), firstLeadingBit(~1u)), ~16147u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1636f, _wgslsmith_f_op_f32(773f * -275f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-893f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(46608u, 10u)])))), ~abs(vec4<u32>(_wgslsmith_div_u32(72881u, 1u), u_input.c.x, ~var_4, 1u)), -839f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(1284f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_4, 10u)] * global1.c.x), 1f))), ~firstTrailingBit(~abs(vec4<u32>(var_4, u_input.c.x, u_input.c.x, var_4))));
}

