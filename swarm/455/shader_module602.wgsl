struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32) -> i32 {
    global0 = Struct_3(!vec4<bool>(global0.c, global0.c, false, !global0.c), global0.b, global0.c, !global0.a.xx);
    let var_0 = Struct_3(select(vec4<bool>(all(select(vec4<bool>(global0.c, global0.a.x, true, global0.a.x), global0.a, false)), true, all(global0.a.xwy), all(!global0.a)), global0.a, global0.c | !global0.a.x), vec4<i32>(reverseBits(u_input.b), 1i, -(i32(-1i) * -1i), u_input.b), all(select(global0.a, vec4<bool>(all(vec3<bool>(true, false, global0.d.x)), global0.a.x, all(global0.a.wwy), global0.a.x), global0.a)), vec2<bool>(global1.x > (-arg_0 >> (firstTrailingBit(4294967295u) % 32u)), any(!vec3<bool>(global0.d.x, true, false)) || any(!vec4<bool>(global0.a.x, global0.a.x, global0.c, global0.a.x))));
    global0 = var_0;
    var var_1 = ~arg_1;
    let var_2 = Struct_3(select(var_0.a, vec4<bool>(var_0.c, all(vec4<bool>(var_0.c, false, var_0.c, var_0.c)), true, all(!vec3<bool>(global0.d.x, global0.a.x, global0.a.x))), global0.d.x), var_0.b, !(false & (global1.x != 1i)), var_0.a.zy);
    return -var_2.b.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    global1 = min(vec4<i32>(countOneBits(~(global0.b.x ^ global1.x)), 1i, 2940i, _wgslsmith_mult_i32(1i & abs(arg_1.x), firstLeadingBit(select(global0.b.x, -2147483647i, arg_3.a.x)))), vec4<i32>(global1.x, func_3(~1i, _wgslsmith_dot_vec4_u32(vec4<u32>(21207u, 58371u, 17911u, 1u), countOneBits(vec4<u32>(4294967295u, 4294967295u, 4675u, 1013u)))), countOneBits(u_input.a.x), 14350i));
    var var_0 = !select(global0.d, vec2<bool>(global0.d.x, true), arg_3.a.x);
    var var_1 = _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 3221i, arg_1.x, -46838i), ~global0.b), vec4<i32>(arg_1.x << (firstTrailingBit(9006u) % 32u), -36861i, -_wgslsmith_clamp_i32(-40613i, ~u_input.a.x, ~global0.b.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.x, 1i, 9871i), select(vec4<i32>(arg_1.x, 2147483647i, global0.b.x, -4844i), arg_1, global0.a))));
    var var_2 = vec4<bool>(1u > _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(21525u, 44960u, 7908u), vec3<u32>(6448u, 92869u, 53243u)), ~min(vec3<u32>(10986u, 4294967295u, 101236u), vec3<u32>(4294967295u, 83982u, 42060u))), !all(!arg_3.a.wz), global0.a.x, arg_3.a.x);
    var_1 = (1i ^ min(_wgslsmith_mod_i32(-7002i, -arg_1.x), arg_1.x)) ^ arg_1.x;
    return ~(~35331u);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1135f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1380f)) - vec2<f32>(arg_0, arg_0)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2335f, 537f), vec2<f32>(arg_0, 161f)) * vec2<f32>(arg_0, 2014f)))));
    global1 = vec4<i32>(_wgslsmith_mod_i32(-20410i, 48847i), -23821i, global1.x, -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-global0.b.x, firstTrailingBit(0i), _wgslsmith_div_i32(-2147483647i, global1.x)), _wgslsmith_mult_i32(-1i, ~global1.x)));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, var_0.x, -278f)), ~vec4<i32>(-2147483647i, 36659i, 0i, global1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1272f, arg_0)), Struct_2(global0.a)) << (_wgslsmith_sub_u32(85281u, 52519u) % 32u), firstLeadingBit(func_2(vec4<f32>(1282f, var_0.x, -582f, -1000f), vec4<i32>(-2147483647i, 2147483647i, 27757i, -2147483647i), vec2<f32>(-741f, -196f), Struct_2(arg_1))) ^ ~_wgslsmith_mult_u32(1u, 0u)), 1u);
    var_1 = ~(~68914u);
    global1 = vec4<i32>(~global1.x | firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec4_i32(global0.b, global0.b), (firstLeadingBit(~u_input.b) ^ 1i) >> (10513u % 32u), _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(global0.b.zx, reverseBits(vec2<i32>(global0.b.x, u_input.b))), global0.b.yx & min(vec2<i32>(-2147483647i, global1.x), u_input.a >> (vec2<u32>(4294967295u, 19692u) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1144f, 1542f, var_0.x) + vec3<f32>(-220f, arg_0, 1794f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(199f, 1000f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-952f, var_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(var_0, vec4<bool>(global0.c, global0.d.x, false, false))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 591f, -294f))), global0.a.yxz)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -761f)))))));
    let var_3 = Struct_1(vec4<f32>(-343f, _wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_f_op_f32(f32(-1f) * -1119f), 2029f), var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(~17977u, _wgslsmith_div_u32(4294967295u, 150267u)) & firstLeadingBit(firstTrailingBit(vec2<u32>(1u, 4294967295u))), vec2<u32>(~1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32306u, 4294967295u, 1u), vec3<u32>(61521u, 1u, 0u)), 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(func_3(-1i, max(493u, 0u) ^ (var_3.c << (var_3.c % 32u))), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(firstTrailingBit(u_input.b), _wgslsmith_dot_vec2_i32(global1.wy, u_input.a))), 1i), vec4<u32>(46470u, var_3.c, ~(~reverseBits(39237u)), countOneBits(firstTrailingBit(~var_3.c))), var_2.yy, select(~(vec2<u32>(0u, var_3.c) << (vec2<u32>(var_3.c, var_3.c) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.c, var_3.c) << (vec2<u32>(var_3.c, 4294967295u) % vec2<u32>(32u)), vec2<u32>(16576u, var_3.c)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(global0.d.x, true))) << (firstLeadingBit(select(~vec2<u32>(var_3.c, 4294967295u), vec2<u32>(var_3.c, 4294967295u), vec2<bool>(global0.c, true))) % vec2<u32>(32u)));
}

