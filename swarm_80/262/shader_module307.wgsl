struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: f32 = -360f;

var<private> global2: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> vec3<u32> {
    var var_0 = 785f != _wgslsmith_f_op_f32(-440f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global2.x, global2.x, arg_1))))));
    var var_1 = min(vec2<u32>(~4294967295u, u_input.c.x), u_input.c.wy) ^ vec2<u32>(1u, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.x, u_input.a, global0.x), vec4<u32>(5943u, 29141u, arg_0.x, arg_0.x))));
    let var_2 = -vec3<i32>(-11533i, u_input.b.x, -2147483647i);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2.x)))) * global2.x), global2.x))));
    var var_4 = vec2<u32>(arg_0.x, 1u);
    return ~firstLeadingBit(~_wgslsmith_sub_vec3_u32(arg_0 | u_input.c.zzy, vec3<u32>(26365u, var_1.x, 7926u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1067f, arg_3, _wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(580f * arg_3), true)))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, 1721f, arg_3, 138f), vec4<f32>(208f, arg_2, -833f, arg_3)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), arg_2, _wgslsmith_f_op_f32(min(arg_3, global2.x)), _wgslsmith_f_op_f32(round(1168f))), vec4<bool>(any(vec2<bool>(arg_0.x, true)), arg_3 > -1000f, arg_0.x, true))), -18971i < _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.b.zyw, u_input.b.xyw), arg_1, -1i), any(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), arg_0.zz, global2.x), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, arg_2, global2.x, global2.x) - vec4<f32>(arg_2, 460f, arg_2, global2.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, -1879f, arg_3, -126f), vec4<f32>(-199f, -392f, arg_3, 653f), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)))), -252f != _wgslsmith_f_op_f32(-arg_2), !arg_0.x, arg_0.zz, -261f), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 419f, arg_2, -1324f) - vec4<f32>(-823f, arg_2, 383f, 590f)) + vec4<f32>(arg_3, 919f, arg_2, global2.x)), true, !any(arg_0), arg_0.xz, _wgslsmith_div_f32(-117f, _wgslsmith_f_op_f32(arg_2 - -471f))), firstTrailingBit(vec4<i32>(arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, -1i), vec3<i32>(arg_1, 1i, -1i)), arg_1, _wgslsmith_sub_i32(u_input.b.x, -1i)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(142f, global2.x), vec2<f32>(-606f, arg_3), arg_0.yy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(991f, 1628f))), vec2<f32>(arg_3, -1007f), true)) * vec2<f32>(-955f, _wgslsmith_f_op_f32(floor(global2.x))))));
    let var_1 = min(~(~u_input.c.xxz), func_3(_wgslsmith_sub_vec3_u32(u_input.c.xzz, vec3<u32>(global0.x, 19983u, u_input.c.x) & vec3<u32>(global0.x, 4294967295u, 0u)), any(arg_0))) & (~u_input.c.yzx & u_input.c.xzz);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-819f)));
    let var_3 = !arg_0;
    var var_4 = var_0.c;
    return var_4.a;
}

fn func_1() -> vec2<f32> {
    let var_0 = func_2(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1396f, -1335f)), global2.x))))));
    let var_1 = 5592u;
    var var_2 = func_2(select(select(!vec3<bool>(var_0.c, var_0.d.x, var_0.c), vec3<bool>(func_2(vec3<bool>(false, false, true), -1446i, -973f, global2.x).b, var_0.c, all(var_0.d)), var_0.d.x), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, var_0.b), select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.d.x, var_0.b, var_0.d.x), var_0.b)), select(vec3<bool>(true, true, true), select(!vec3<bool>(true, var_0.d.x, var_0.d.x), !vec3<bool>(false, false, var_0.c), var_0.b), select(vec3<bool>(var_0.b, var_0.b, var_0.d.x), select(vec3<bool>(true, var_0.d.x, var_0.d.x), vec3<bool>(false, false, true), var_0.b), select(var_0.c, var_0.d.x, var_0.c)))), -_wgslsmith_add_i32(u_input.b.x, 0i), _wgslsmith_f_op_f32(abs(724f)), _wgslsmith_f_op_f32(step(var_0.a.x, 1782f)));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, global2.x) - vec2<f32>(var_2.e, var_2.e)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.yz))))));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -793f));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_2.a.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, 1000f))))), _wgslsmith_f_op_vec2_f32(-var_2.a.wx)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, -780f), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))))));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x * -962f))), global2.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global2.x, global2.x), global2.x) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-769f, global2.x) + vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + vec2<f32>(global2.x, global2.x)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, -347f), false)) * _wgslsmith_div_vec2_f32(vec2<f32>(1265f, -1025f), vec2<f32>(global2.x, -393f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, 1121f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(435f, -1427f) - vec2<f32>(global2.x, 219f)))) * _wgslsmith_f_op_vec2_f32(func_1()))));
    global1 = _wgslsmith_f_op_f32(-825f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-766f + global2.x))));
    var var_0 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f + global2.x)) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global2.x, 1089f)))), -619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)) + _wgslsmith_f_op_f32(100f + _wgslsmith_f_op_f32(sign(-2191f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f), -347f) - -193f)));
    global1 = _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(144f)) * global2.x)));
    let var_1 = func_2(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(false, true, false, false)), true)), vec3<bool>(func_2(vec3<bool>(true, true, true), u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1432f), _wgslsmith_f_op_f32(-248f + 1043f)).b, true, true), true | any(vec3<bool>(true, true, true))), abs(_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(countOneBits(u_input.b.x), max(u_input.b.x, -52395i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2116f + 1836f)), -786f)), -580f);
    var var_2 = Struct_2(var_1, Struct_1(var_1.a, any(select(select(vec3<bool>(var_1.b, false, var_1.d.x), vec3<bool>(var_1.c, var_1.d.x, false), vec3<bool>(false, var_1.d.x, var_1.c)), vec3<bool>(false, var_1.b, false), select(vec3<bool>(var_1.c, var_1.c, true), vec3<bool>(var_1.c, true, true), vec3<bool>(var_1.d.x, true, true)))), (global0.x < (1u << (global0.x % 32u))) & false, !(!vec2<bool>(var_1.c, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - var_0.x))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wwy, vec4<u32>(global0.x, ~1u, u_input.a, ~firstTrailingBit(u_input.a)), -reverseBits(_wgslsmith_mod_i32(var_2.c.x ^ u_input.b.x, -var_2.c.x)));
}

