struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_5, 32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>) -> vec3<f32> {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~_wgslsmith_sub_u32(u_input.c, u_input.c), 45756u, 1u), ~(~(~(~vec3<u32>(4294967295u, u_input.c, 1u))))), 32u)];
    let var_0 = firstLeadingBit(_wgslsmith_sub_i32(-62429i, -18035i | select(-2147483647i, -1i, false)) << ((u_input.c >> (((0u ^ u_input.c) ^ ~u_input.c) % 32u)) % 32u));
    let var_1 = Struct_1(!vec2<bool>(!any(vec4<bool>(false, true, arg_2.x, true)), global0.b.a.x));
    var var_2 = vec4<u32>(u_input.c, reverseBits(1u), _wgslsmith_mult_u32(1069u, 0u), u_input.c);
    var_2 = abs(~abs((vec4<u32>(var_2.x, u_input.c, var_2.x, u_input.c) ^ vec4<u32>(u_input.c, var_2.x, 4294967295u, u_input.c)) | max(vec4<u32>(var_2.x, 0u, 0u, var_2.x), vec4<u32>(23217u, 1u, 0u, var_2.x))));
    return arg_1;
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<Struct_5, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(245f, -1325f)))), -1321f, -1690f), vec3<bool>(true, !global0.b.a.x, global0.b.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(u_input.c >= 18516u, _wgslsmith_f_op_vec3_f32(vec3<f32>(2910f, -1077f, -1064f) + vec3<f32>(302f, -1000f, -1836f)), vec3<bool>(global0.b.a.x, global0.b.a.x, false))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-405f, 225f, 1000f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(657f, 408f, -926f), vec3<f32>(112f, 895f, 1642f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -857f), -1266f, -1000f), vec3<bool>(false, arg_0.a.x, true)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) - vec3<f32>(_wgslsmith_div_f32(-1499f, _wgslsmith_f_op_f32(-var_0.x)), var_0.x, -2139f)), Struct_2(var_0, u_input.a, Struct_1(arg_0.a), global0.b), Struct_1(!vec2<bool>(-1555f > var_0.x, true)), Struct_1(select(!arg_0.a, select(global0.b.a, vec2<bool>(arg_0.a.x, true), vec2<bool>(arg_0.a.x, false)), arg_0.a.x)));
    let var_2 = _wgslsmith_clamp_vec3_i32(var_1.b.b.zyz, vec3<i32>(-2147483647i, -2147483647i, countOneBits(min(global0.a, -14403i))) | vec3<i32>(var_1.b.b.x << (~u_input.c % 32u), -34375i, u_input.b.x), -(~vec3<i32>(u_input.b.x, global0.a, -2612i) << ((vec3<u32>(1u, 0u, u_input.c) ^ vec3<u32>(u_input.c, u_input.c, 4294967295u)) % vec3<u32>(32u))) << (~select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, u_input.c, 4294967295u)), vec3<u32>(26610u, 58654u, u_input.c), !arg_0.a.x) % vec3<u32>(32u)));
    let var_3 = 34817u >= ~abs(u_input.c);
    return true;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    global0 = Struct_5(u_input.b.x, Struct_1(vec2<bool>(func_2(arg_2.c), -2147483647i > u_input.a.x)));
    var var_0 = true;
    let var_1 = arg_2.b.a.x;
    let var_2 = ~52058i;
    let var_3 = select(vec3<bool>(true, global0.b.a.x, all(!(!vec4<bool>(true, false, arg_2.c.a.x, true)))), vec3<bool>(any(arg_2.d.a), !arg_2.d.a.x, true), vec3<bool>(true, all(select(vec4<bool>(global0.b.a.x, arg_2.c.a.x, global0.b.a.x, arg_2.c.a.x), select(vec4<bool>(true, false, true, true), vec4<bool>(false, global0.b.a.x, true, arg_2.d.a.x), vec4<bool>(true, arg_2.c.a.x, global0.b.a.x, arg_2.d.a.x)), vec4<bool>(false, global0.b.a.x, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) == -1115f));
    return _wgslsmith_f_op_f32(abs(-243f));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_5 {
    let var_0 = vec3<u32>(4294967295u, ~u_input.c, 1u);
    global0 = global1[_wgslsmith_index_u32(25933u, 32u)];
    let var_1 = _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-1i, u_input.b.x, 34525i)), u_input.a.yxz)), min(u_input.a.zzy, abs(_wgslsmith_mod_vec3_i32(u_input.a.xzz, u_input.a.xzw)))) & firstTrailingBit(~max(~u_input.a.xxy, u_input.a.wyw));
    let var_2 = global1[_wgslsmith_index_u32(u_input.c, 32u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_0.zx * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * 686f))), _wgslsmith_f_op_f32(arg_0.x - -1115f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-699f, arg_0.x)))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(countOneBits(vec3<u32>(~var_0.x, ~u_input.c, 53288u)), countOneBits(~(vec3<u32>(23310u, 20351u, 4930u) << (var_0 % vec3<u32>(32u)))), 1u < (~var_0.x << (~19767u % 32u))), abs(vec3<u32>(4294967295u, _wgslsmith_sub_u32(19963u, ~var_0.x), max(_wgslsmith_sub_u32(var_0.x, var_0.x), ~u_input.c)))), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-733f, -755f, 818f) + vec3<f32>(970f, 781f, 360f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1647f, -1000f, -1000f), vec3<f32>(-395f, -922f, 707f), global0.b.a.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(559f, -148f, -707f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(199f, -1346f, -1413f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-410f, -512f, 1058f)))))), vec3<bool>(_wgslsmith_f_op_f32(-1239f - _wgslsmith_f_op_f32(func_1(vec4<u32>(4294967295u, 0u, u_input.c, u_input.c), vec2<u32>(u_input.c, 31327u), Struct_3(vec3<f32>(-495f, -374f, -1221f), Struct_2(vec3<f32>(599f, 566f, 237f), vec4<i32>(global0.a, 47064i, global0.a, global0.a), global0.b, Struct_1(vec2<bool>(true, global0.b.a.x))), global0.b, global0.b)))) >= -749f, all(select(global0.b.a, select(global0.b.a, vec2<bool>(global0.b.a.x, global0.b.a.x), global0.b.a.x), !global0.b.a)), global0.b.a.x));
    let var_1 = vec3<i32>(48243i, min(_wgslsmith_dot_vec2_i32(-select(vec2<i32>(1i, var_0.a), u_input.a.zy, global0.b.a.x), abs(_wgslsmith_sub_vec2_i32(u_input.a.zy, u_input.a.wx))), 0i), i32(-1i) * -global0.a);
    var var_2 = Struct_1(var_0.b.a);
    var var_3 = 27666u;
    var_2 = global0.b;
    var var_4 = _wgslsmith_mult_i32(var_1.x, -15874i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(548f + 259f) + _wgslsmith_f_op_f32(f32(-1f) * -2369f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(-344f - _wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.c, u_input.c, u_input.c, 26291u), vec2<u32>(u_input.c, 4294967295u), Struct_3(vec3<f32>(1188f, 202f, -1229f), Struct_2(vec3<f32>(-567f, 107f, 425f), u_input.a, global0.b, Struct_1(global0.b.a)), Struct_1(var_2.a), global0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) - -133f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(287f, -2615f)))))), ~select(1u, 16837u, true | !var_0.b.a.x));
}

