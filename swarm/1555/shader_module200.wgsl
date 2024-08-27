struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(1000f, -393f);

var<private> global2: u32 = 0u;

var<private> global3: Struct_4 = Struct_4(vec3<f32>(1564f, 1054f, 262f), false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = Struct_2(global0.a, ~(u_input.a.xxx & u_input.a.zxz));
    let var_0 = -(_wgslsmith_clamp_i32(-countOneBits(-2147483647i), firstTrailingBit(u_input.b >> (0u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-13918i, u_input.b) ^ vec2<i32>(36268i, -1i), ~vec2<i32>(u_input.b, u_input.b))) >> (_wgslsmith_mult_u32(firstTrailingBit(firstLeadingBit(u_input.a.x)), firstLeadingBit(firstTrailingBit(global0.b.x))) % 32u));
    var var_1 = global3.b;
    global1 = _wgslsmith_f_op_vec2_f32(-global3.a.yz);
    let var_2 = Struct_1(~select(~(~vec4<i32>(u_input.b, -1i, var_0, 19920i)), -vec4<i32>(-1i, -15640i, u_input.b, 1i), -9738i != _wgslsmith_mult_i32(u_input.b, 35862i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 508f) + global3.a.xx) - global3.a.zy) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -958f) * vec2<f32>(global3.a.x, -504f)), _wgslsmith_f_op_vec2_f32(global3.a.xy + global3.a.yy)))), var_0, u_input.a.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1451f))) * _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1129f)), var_2.b.x)))));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(363f))) - _wgslsmith_f_op_f32(-244f * global3.a.x)), -291f));
    var var_0 = _wgslsmith_f_op_f32(trunc(global3.a.x));
    var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(306f * global1.x), 570f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1198f)), arg_1.a.x)))), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-923f)) * 1098f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), false))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-363f)), -410f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(global3.a.x, -396f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x * global1.x) + _wgslsmith_f_op_f32(select(arg_0, global1.x, arg_1.b))) + 1f)));
    var var_2 = select(true, any(!vec4<bool>(!global3.b, global3.b | global3.b, arg_1.b, arg_1.b)), true);
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(arg_2.a, 0u, arg_2.a, u_input.a.x)), firstLeadingBit(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(16026u, 0u, global0.b.x, global0.b.x)))), arg_2.b.x) << (_wgslsmith_mult_u32(firstTrailingBit(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(arg_2.a), ~u_input.a.x, ~arg_2.b.x, _wgslsmith_mult_u32(u_input.a.x, 10170u)), u_input.a)) % 32u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_3 {
    global2 = 1u;
    let var_0 = Struct_3(arg_0.x, Struct_2(arg_0.x | firstTrailingBit(1u), arg_0), vec2<bool>(false, arg_1.b), true, vec2<bool>(select(true | !arg_1.b, false, all(vec2<bool>(true, true))), !any(vec3<bool>(false, global3.b, arg_1.b))));
    var var_1 = Struct_2(_wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a, arg_0.x, arg_0.x, 1u), u_input.a)), select(0u, firstLeadingBit(_wgslsmith_add_u32(arg_0.x, global0.a)), select(true, true, false))), u_input.a.yxx);
    var var_2 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~var_0.a >> (1u % 32u), ~(u_input.a.x | var_0.b.a), 1u), vec3<u32>(_wgslsmith_clamp_u32(countOneBits(34361u), _wgslsmith_add_u32(var_0.b.a, var_1.a), 1u), ~(var_0.b.b.x >> (52074u % 32u)), func_2(_wgslsmith_f_op_f32(-651f - global3.a.x), arg_1, Struct_2(var_0.a, vec3<u32>(var_1.a, arg_0.x, 91415u)))));
    var var_3 = Struct_4(_wgslsmith_div_vec3_f32(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(max(182f, global3.a.x)), -711f, 341f)), u_input.b != _wgslsmith_clamp_i32(~firstLeadingBit(u_input.b), -_wgslsmith_clamp_i32(u_input.b, 1i, 78840i), u_input.b));
    return var_0;
}

fn func_1() -> Struct_2 {
    var var_0 = ~vec3<u32>(~abs(firstTrailingBit(4294967295u)), 3590u, 4294967295u);
    global1 = global3.a.yx;
    var var_1 = func_4(~_wgslsmith_div_vec3_u32(vec3<u32>(func_2(global1.x, Struct_4(global3.a, global3.b), Struct_2(var_0.x, u_input.a.yxw)), 0u, 1u), ~vec3<u32>(var_0.x, u_input.a.x, 47547u)), Struct_4(global3.a, global3.b));
    var var_2 = ~1695u;
    let var_3 = select(4294967295u, select(~4294967295u, var_0.x, false) | min(countOneBits(u_input.a.x), countOneBits(u_input.a.x)), !var_1.c.x);
    return func_4(countOneBits(var_1.b.b), Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global3.a, global3.a)))), !all(select(vec3<bool>(false, false, global3.b), vec3<bool>(var_1.d, var_1.c.x, false), false)))).b;
}

fn func_5(arg_0: Struct_2) -> u32 {
    global0 = func_1();
    let var_0 = global3.b;
    global1 = global3.a.yy;
    global1 = global3.a.xy;
    return ~(~global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = min(_wgslsmith_add_u32(global0.b.x, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(58428u, 4294967295u), vec2<u32>(global0.a, global0.b.x))), ~(~(~u_input.a.x)));
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(func_5(func_1()) & _wgslsmith_div_u32(global0.b.x >> (0u % 32u), func_4(vec3<u32>(1u, 33272u, 1u), Struct_4(vec3<f32>(315f, global1.x, -2284f), false)).a), global0.a), ~_wgslsmith_mult_u32(abs(countOneBits(global0.a)), func_1().b.x));
    var var_1 = u_input.a.x;
    var var_2 = Struct_3(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(reverseBits(global0.a), global0.b.x), 0u, 55203u), Struct_2(1u ^ _wgslsmith_sub_u32(~u_input.a.x, select(20233u, 4294967295u, true)), vec3<u32>(88617u, u_input.a.x, u_input.a.x << (~u_input.a.x % 32u))), select(vec2<bool>(any(select(vec4<bool>(global3.b, true, global3.b, true), vec4<bool>(global3.b, false, true, false), global3.b)), global3.b), !vec2<bool>(true, true | global3.b), true || select(global3.b | global3.b, all(vec2<bool>(global3.b, global3.b)), true)), _wgslsmith_mod_i32(reverseBits(-43869i), select(u_input.b, u_input.b, true)) == (i32(-1i) * -1i), !vec2<bool>(_wgslsmith_mod_i32(u_input.b, -1i) > countOneBits(u_input.b), global3.b));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global3.a.yx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, -1282f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1025f, global3.a.x))))))));
    global0 = var_2.b;
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a, abs(min(_wgslsmith_div_i32(abs(u_input.b), u_input.b), 1i)));
}

